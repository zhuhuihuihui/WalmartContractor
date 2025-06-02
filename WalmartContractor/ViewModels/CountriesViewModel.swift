import Foundation
import Combine

class CountriesViewModel: ObservableObject {
    @Published var countries: [Country] = []
    @Published var filteredCountries: [Country] = []
    @Published var isLoading = false
    @Published var errorMessage: String?
    private let networkService: NetworkService
    
    init(networkService: NetworkService = .shared) {
        self.networkService = networkService
    }
    
    func fetchCountries() {
        isLoading = true
        errorMessage = nil
        Task {
            defer { isLoading = false }
            
            do {
                countries = try await networkService.fetchCountries()
            } catch {
                errorMessage = error.localizedDescription
            }
        }
    }
    
    func filterCountries(for searchText: String?) {
        guard let searchText = searchText, !searchText.isEmpty else {
            filteredCountries = []
            return
        }
        let lowercased = searchText.lowercased()
        filteredCountries = countries.filter {
            $0.name.lowercased().contains(lowercased) || $0.capital.lowercased().contains(lowercased)
        }
    }
}
