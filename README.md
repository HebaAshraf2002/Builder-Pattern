# Builder-Pattern
# User Screen - Flutter Application

## Overview

This Flutter project demonstrates the implementation of the **Builder Design Pattern** to dynamically create `User` objects. The `UserScreen` displays a list of users using `ListView.builder`, ensuring efficient rendering of items. The app follows a structured approach by separating concerns into different files: `user.dart` and `userBuilder.dart`.

## What the Code Does

- Implements the **Builder Pattern** to construct `User` objects with optional attributes.
- Uses `ListView.builder` to dynamically generate a list of users.
- Displays user information (`firstName`, `lastName`, `age`, `phone`) in a Card-based UI.
- Enhances UI with an icon beside each user's name.
- Ensures a clean and maintainable architecture by separating the `User` class, `UserBuilder` class, and UI components.

## How the Code Works

### 1. User & UserBuilder Implementation

- The `User` class has required attributes (`firstName`, `lastName`) and optional attributes (`age`, `phone`).
- The `UserBuilder` class allows step-by-step construction of a `User` object.

### 2. UserScreen (UI Component)

- Initializes a list of `User` objects using `UserBuilder`.
- Uses `ListView.builder` to efficiently display user details.
- Wraps each user item inside a `Card` with a `ListTile` for a structured UI.

### 3. Displaying Users

- The app bar displays the title **"User Screen"**.
- Each user is displayed with:
  - An icon (`Icons.person`) next to their name.
  - Their age and phone number (if provided).
  - Uses `'N/A'` to prevent null values from appearing in the UI.

## Running the Project

To run this Flutter project, use the following command:

```bash
flutter run
