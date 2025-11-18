# SpaceZ - Coupon Dashboard

A Flutter application showcasing a modern coupon dashboard interface for SpaceZ, a booking platform. This project demonstrates clean architecture principles, custom UI components, and a polished user experience.

## 📱 Screenshot

![Coupon Dashboard Screen](screenshot.png)

##  Features

- **Modern UI Design**: Clean and intuitive interface with custom Material Design 3 theme
- **Coupon Display**: Beautiful ticket-style cards for featured coupons and payment offers
- **Booking Summary**: Fixed bottom navigation bar showing booking details with pricing
- **Custom App Bar**: Branded header with SpaceZ logo and menu functionality
- **Responsive Layout**: Optimized for various screen sizes with proper spacing and padding
- **Color System**: Carefully crafted color palette matching SpaceZ brand identity

## Project Structure

```
lib/
├── app/
│   ├── app.dart              # Main app widget
│   └── theme.dart            # App theme and color definitions
├── features/
│   └── coupons/
│       ├── domain/
│       │   └── entities/
│       │       └── coupon.dart    # Coupon entity model
│       └── presentation/
│           ├── pages/
│           │   └── coupon_dashboard_page.dart    # Main dashboard screen
│           └── widgets/
│               ├── coupon_ticket_card.dart       # Reusable coupon card widget
│               ├── spacez_app_bar.dart           # Custom app bar
│               └── widgets.dart                  # Widget exports
└── main.dart                 # Application entry point
```

##  Tech Stack

- **Flutter** - Cross-platform UI framework
- **Dart** - Programming language
- **Material Design 3** - Design system
- **Google Fonts** - Typography

##  Getting Started

### Prerequisites

- Flutter SDK (3.8.1 or higher)
- Dart SDK
- Android Studio / VS Code with Flutter extensions
- iOS Simulator / Android Emulator or physical device

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd spacez
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the application:
```bash
flutter run
```

## 🎨 Design Highlights

- **Color Palette**: Warm earth tones with primary color `#9A5632` creating a cohesive brand experience
- **Typography**: Custom text theme with carefully defined font weights and sizes
- **Components**: Reusable widgets following Flutter best practices
- **Layout**: Clean separation between featured coupons and payment offers sections

## Dependencies

- `flutter` - Core Flutter framework
- `google_fonts: ^6.3.2` - Custom typography support
- `cupertino_icons: ^1.0.8` - iOS-style icons

##  Running the App

The app launches directly to the Coupon Dashboard page, displaying:
- Featured coupons section with multiple offers
- Payment offers section
- Booking summary with pricing and reservation button

##  Notes

- This is a UI-focused implementation showcasing the coupon dashboard interface
- Navigation actions currently display snackbar messages as placeholders
- The app uses a clean architecture approach with separation of concerns

## 👨 Development

Built with Flutter following best practices:
- Feature-based folder structure
- Domain-driven design principles
- Reusable widget components
- Custom theme configuration

---

**Built for SpaceZ** 🚀
