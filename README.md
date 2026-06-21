# SwiftUI Feature-Based Navigation 🧭

A production-grade demonstration of how to decouple SwiftUI navigation using the Coordinator and Router patterns.

This repository was built to accompany the Medium article: **[Insert Link to your Medium Article here]**.

## 🛑 The Problem
In standard SwiftUI apps, developers often place `NavigationLink` or `.navigationDestination` directly inside UI views, or they build a single, massive `AppCoordinator` that knows about every screen in the app (A God Object). This leads to:
* Tightly coupled UI and navigation logic.
* Massive Git merge conflicts.
* Broken navigation states across TabViews.

## ✅ The Solution
This architecture breaks the app into isolated **Feature Modules** (Auth, Shop, Profile). Each feature owns its own:
1. **Route (Enum):** The available destinations.
2. **Router (State):** An `@Observable` class holding the `NavigationPath`.
3. **Coordinator (Factory):** A view that owns the `NavigationStack` and builds the destination screens.

### 🏗️ Architecture Highlights
* **Isolated Tabs:** Each tab (`ShopCoordinator`, `ProfileCoordinator`) maintains its own isolated `NavigationStack`, ensuring deep navigation states are preserved when switching tabs.
* **True Decoupling:** `ShopHomeView` does not know how `ProductDetailView` is built. It simply asks the injected `ShopRouter` to push a route.
* **Global Traffic Cop:** The root `AppCoordinator` acts only as a domain switcher (Logged Out vs. Logged In) based on `@AppStorage`, rather than managing deep paths.

## 🚀 How to Run
1. Clone the repository.
2. Open `Navigation.xcodeproj` in Xcode 15+.
3. Build and run on the iOS Simulator.
4. Tap "Log In" to see the root coordinator switch domains and present the TabBar.

## 📸 Demo
*(Add your GIF link here)*
