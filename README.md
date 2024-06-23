<<<<<<< HEAD
=======
# Internshala  Flutter App

This Flutter application replicates the internship search page of our Android App. The app starts with a splash screen and then transitions to a search page that displays a list of internships fetched from the provided API.

## Table of Contents
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Dependencies](#dependencies)
- [Code Flow](#code-flow)
- [Folder Structure](#folder-structure)
- [API Integration](#api-integration)
- [UI Design](#ui-design)
- [Conclusion](#conclusion)

## Project Structure
## Getting Started

To get a local copy up and running, follow these steps:

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- An editor of your choice (e.g., VSCode, Android Studio)

### Installation

1. Clone the repository
   ```sh
   git clone https://github.com/your-username/internship-search-flutter.git

   # Code Flow Overview

## Main Entry Point
The application starts from `main.dart` file which initializes the app and sets up the necessary providers.

## Splash Screen
- **File:** `lib/presentation/screens/splashScreen.dart`
- **Description:** Displays a splash screen while initializing and then navigates to the main search screen.

## Main Home Screen
- **File:** `lib/presentation/screens/MainHomeScreen.dart`
- **Description:** The main screen containing the search functionality and the list of internships.

## Internship Screen
- **File:** `lib/presentation/screens/internship_screen.dart`
- **Description:** Displays a detailed list of internships fetched from the API.

## Providers
- **File:** `lib/data/providers/internshipProvider.dart`
- **Description:** Manages the state and data for internships.
- **File:** `lib/data/providers/MainHomeProvider.dart`
- **Description:** Manages the state for the main home screen.

## Services
- **File:** `lib/core/services/internship_services.dart`
- **Description:** Contains the functions to fetch internship data from the API.

## Models
- **Folder:** `lib/core/models/`
- **Description:** Data models for representing internships, labels, locations, and stipends.

## Folder Structure
- **core:** Contains the core functionalities of the app such as models and services.
- **models:** Data models.
- **services:** API service functions.
- **data:** Contains the state management logic.
- **providers:** State management using Provider.
- **presentation:** Contains the UI code.
- **routes:** Navigation routes.
- **screens:** Different screens of the app.
- **themes:** Theme and color definitions.
- **widgets:** Reusable UI components.
- **utils:** Utility and helper functions.
>>>>>>> e54a4fa595aca6751fc008f405c405002d78cbfc
