import Foundation

struct Country: Codable {
    let name: String
    let region: String
    let code: String
    let capital: String
    let currency: Currency
    let flag: String
    let language: Language
}

struct Currency: Codable {
    let code: String
    let name: String
    let symbol: String?
}

struct Language: Codable {
    let code: String?
    let name: String
} 