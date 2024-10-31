# Shoes Shop App

Welcome to the **Shoes Shop App**, a Flutter-based mobile application designed to provide a modern shopping experience for shoe enthusiasts. With multiple beautifully designed pages and real-time updates, this app makes shopping for shoes easier and more enjoyable.

## Features

- **Intro Page:** A visually engaging introduction to the app.
- **Home Page:** 
  - **Bottom Navigation Bar:** Switch seamlessly between the Shop and Cart pages using the `google_nav_bar` package.
  
- **Shop Page:**
  - Displays a list of shoe items using `ListView.builder`.
  - Each item includes:
    - **Product Image**
    - **Name**
    - **Description**
    - **Price**
    - **Add to Cart** button

- **Cart Page:**
  - Lists products added to the cart using `ListView.builder`.
  - Each cart item component includes:
    - **Name**
    - **Image**
    - **Price**
    - **Delete** button

- **Drawer Navigation:** 
  - Accessible from anywhere in the app.
  - Contains:
    - Logo in the header
    - Home button
    - About button
    - Logout button

## Data Models

- **Shoe Model:** Represents each shoe with the following attributes:
  - `name`: String
  - `imagePath`: String (path to the product image)
  - `description`: String
  - `price`: double

- **Cart Model:** Manages a list of products, providing methods to:
  - **Add** items to the cart
  - **Remove** items from the cart
  - **Display** cart items

## State Management

The app uses the **Provider** package for state management, enabling real-time updates to the cart and ensuring the UI reflects any changes made to the cart items.
## Demo Video
https://github.com/user-attachments/assets/3ee387df-dbf3-4fd3-9ffd-ff9cc16a58d0


## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Alimortada22/shoes-shop-app.git
   ```

2. Navigate to the project directory:
   ```bash
   cd shoes-shop-app
   ```

3. Install dependencies:
   ```bash
   flutter pub get
   ```

4. Run the app:
   ```bash
   flutter run
   ```

## Usage

- **Intro Page:** Start your journey here!
- **Home Page:** Use the bottom navigation bar to switch between the Shop and Cart.
- **Shop Page:** Browse and add your favorite shoes to the cart.
- **Cart Page:** Review and manage your selected items.
- **Drawer Navigation:** Access additional features from anywhere in the app.

## Technologies Used

- Flutter
- Dart
- Google Nav Bar Package
- Provider for State Management

## Contributing

We welcome contributions! Please fork the repository and submit a pull request with your improvements or bug fixes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

## Contact

For questions or feedback, feel free to reach out via [your email](mailto:youremail@example.com).

---

Happy shopping! Enjoy exploring our wide range of shoes and a smooth shopping experience!

--- 

Feel free to modify the repository URL and email address to match your details! If you need any additional sections or specific content, just let me know!
