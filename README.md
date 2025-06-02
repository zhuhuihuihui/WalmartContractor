# Walmart iOS Programming Exercise

## Overview
This project is a solution to the Walmart iOS programming exercise. It demonstrates clean, robust UIKit architecture and best practices for fetching, displaying, and searching a list of countries from a remote JSON API.

## Features
- Fetches a list of countries from a remote JSON endpoint
- Displays countries in a `UITableView` in the order received
- Custom table view cell layout matching the provided format (name, region, code, capital)
- Live search/filtering by country name or capital using `UISearchController`
- Robust error handling and loading states
- Supports Dynamic Type, iPhone/iPad, and device rotation
- Clean MVVM architecture and separation of concerns

## Architecture
- **MVVM Pattern**: The app uses Model-View-ViewModel for clear separation of data, business logic, and UI.
- **Combine**: Used for reactive updates between the ViewModel and ViewController.
- **Networking**: A simple `NetworkService` handles fetching and decoding JSON data.
- **Dependency Injection**: The ViewModel receives its dependencies via initializer for testability and flexibility.

## File Structure
```
WalmartContractor/
├── Models/
│   └── Country.swift
├── ViewModels/
│   └── CountriesViewModel.swift
├── Views/
│   ├── CountryTableViewCell.swift
│   └── CountriesViewController.swift
├── Services/
│   └── NetworkService.swift
├── SceneDelegate.swift
├── AppDelegate.swift
└── ...
```

## How It Works
1. **Startup**: The app launches into `CountriesViewController` embedded in a navigation controller.
2. **Fetching Data**: `CountriesViewModel` fetches the country list asynchronously using `NetworkService`.
3. **Displaying Data**: The table view displays each country using a custom cell, showing name, region, code, and capital.
4. **Searching**: The search bar filters countries by name or capital in real time.
5. **Error Handling**: Errors and loading states are shown with user-friendly UI feedback.

## Notable Implementation Details
- **Dynamic Type**: All labels use preferred fonts and support content size changes.
- **Null Handling**: The model safely handles optional values (e.g., currency symbol).
- **Thread Safety**: UI updates are always performed on the main thread.
- **No Storyboards**: The UI is built programmatically for clarity and flexibility.

## How to Run
1. Open the project in Xcode.
2. Build and run on any iPhone or iPad simulator or device.
3. The app will fetch and display the list of countries automatically.

## Demo

A short demo video is included in this project.  
**To view:** Open `Demo.mp4` in your favorite video player.

---

**Thank you for reviewing this project!** 