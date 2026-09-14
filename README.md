# Flutter Bloc Clean Architecture Boilerplate

A production-ready Flutter project boilerplate adhering to the principles of **Clean Architecture**. It is designed to help you jumpstart your Flutter projects by providing a structured, scalable, and highly maintainable architecture.

This boilerplate utilizes the **BLoC** state management pattern, **GetIt** & **Injectable** for dependency injection, **Freezed** for immutable state and code generation, and **GoRouter** for declarative routing.

---

## Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/ishitgami/flutter-bloc-clean-architecture-boilerplate
```

### 2. Navigate to the project directory
```bash
cd flutter-bloc-clean-architecture-boilerplate
```

### 3. Install dependencies
```bash
flutter pub get
```

### 4. Run code generation (Freezed & Injectable)
```bash
dart run build_runner build --delete-conflicting-outputs
```

### 5. Run the application
```bash
flutter run
```

---

## Features

- 🏗️ **Clean Architecture Pattern**: Strict separation of concerns (Presentation, Domain, Data).
- ⚡ **BLoC & Cubit State Management**: Predictable, testable, and reactive state management using `flutter_bloc`.
- 💉 **Dependency Injection**: Automated compile-time DI with `get_it` and `injectable`.
- 🧊 **Immutable Models & States**: Union types, pattern matching, and copy methods generated with `freezed`.
- 🗺️ **Declarative Routing**: Dynamic deep-linkable routing with `go_router`.
- 🌐 **Localization & Internationalization (i18n / l10n)**: Multi-language support (English, Hindi, etc.) out-of-the-box.
- 🎨 **Dynamic Theming**: Light and dark mode support with instant switching.
- 📡 **Network Connectivity Tracking**: Live internet connection monitoring bloc.
- 🔔 **Push Notifications Ready**: Integrated Firebase Messaging & FCM token update cubit.
- 🧩 **Reusable UI Components**: Standardized buttons, text fields, and dialogs.

---

## Clean Architecture Overview

Clean Architecture separates software into concentric layers with a strict dependency rule: **inner layers have no knowledge of outer layers**.

```
┌─────────────────────────────────────────────────────────┐
│                   Presentation Layer                    │
│   (Pages, Widgets, BLoCs, Cubits, Theme, Routing)       │
└───────────────────────────┬─────────────────────────────┘
                            │ depends on
┌───────────────────────────▼─────────────────────────────┐
│                      Domain Layer                       │
│    (Business Entities, Use Cases, Repository Contracts) │
│                * Pure Dart - Zero Framework *           │
└───────────────────────────▲─────────────────────────────┘
                            │ implements
┌───────────────────────────┴─────────────────────────────┐
│                       Data Layer                        │
│   (Data Sources, Models / DTOs, Repository Impls)       │
└─────────────────────────────────────────────────────────┘
```

---

## Step-by-Step Deep Directory Breakdown

Here is a comprehensive breakdown of the project layout and what each folder and file is responsible for:

```
lib/
├── app/                        # App-level configurations and shared resources
│   └── comman/                 # Common utilities (colors, themes, constants, endpoints)
│       ├── api.dart            # API base URLs and endpoint paths
│       ├── colors.dart         # Global color palette and styling constants
│       ├── constant.dart       # App constants (App Name, storage keys, timeouts)
│       ├── enum.dart           # Common enums (e.g. RequestState: initial, loading, loaded, error)
│       ├── exception.dart      # Custom exception classes for data failures
│       ├── failure.dart        # Failure abstractions mapped to UI-friendly messages
│       ├── screens.dart        # Screen size and responsive layout helper utilities
│       ├── themes.dart         # Light and Dark ThemeData definitions
│       └── toast.dart          # Helper methods for showing toast alerts / snackbars
│
├── injections/                 # Dependency injection setup
│   ├── injection.dart          # GetIt locator declaration and configureDependencies() trigger
│   └── injection.config.dart   # Auto-generated dependency registrations (via injectable)
│
├── l10n/                       # Localization & Internationalization
│   ├── app_en.arb              # English translation key-values
│   ├── app_hi.arb              # Hindi translation key-values
│   └── l10n.dart               # Supported Locales definition (L10n.all)
│
├── routes/                     # Application navigation
│   ├── routes.dart             # Static constants for route names and path strings
│   └── go_routes.dart          # GoRouter instance configuration, routes, redirects, and error pages
│
├── src/                        # Core codebase containing architectural layers
│   ├── Exports/                # Barrel and aggregation files
│   │   ├── bloc_expert.dart    # Central export file for all BLoC and Cubit classes
│   │   └── bloc_list.dart      # Master list of BlocProviders injected into MultiBlocProvider
│   │
│   ├── Utilities/              # Utility helpers
│   │   └── shared_pref_helper.dart # SharedPreferences wrapper for persistent key-value storage
│   │
│   ├── data/                   # DATA LAYER (Data retrieval & storage)
│   │   ├── datasource/         # Connects to remote servers (APIs) or local storage (DB/Cache)
│   │   │   └── authentication_remote_data_source.dart # Direct network calls (HTTP/Dio)
│   │   ├── model/              # Data models / DTOs with JSON serialization (fromJson/toJson)
│   │   └── repository/         # Implements the domain repository interfaces
│   │       └── authentication_repository_impl.dart # Translates data sources into domain results
│   │
│   ├── domain/                 # DOMAIN LAYER (Core Business Logic - Pure Dart)
│   │   ├── entities/           # Business entities representing the domain model
│   │   ├── repositories/       # Abstract repository interfaces (contracts)
│   │   │   └── autentication_repository.dart # Interface defining methods required by business logic
│   │   └── usecase/            # Granular, single-responsibility use cases
│   │       └── login.dart      # Encapsulates the specific SignIn business action
│   │
│   └── presentation/           # PRESENTATION LAYER (UI & State)
│       ├── bloc/               # Complex state management using BLoC pattern (Event -> State)
│       │   ├── authenticator_watcher/ # Watches user authentication lifecycle
│       │   ├── language/       # Handles app language selection & locale state
│       │   ├── network/        # Tracks device network/internet connectivity
│       │   └── sign_in_form/   # Manages sign-in form inputs, validation, and submission
│       ├── cubit/              # Lightweight state management using Cubit pattern
│       │   ├── theme/          # Toggles between Light and Dark themes
│       │   └── upate_fcm_token/# Updates and synchronizes Firebase push notification tokens
│       ├── page/               # App screens / views
│       │   ├── Error/          # Route error / 404 fallback page
│       │   ├── auth/           # Authentication screens (SignInScreen, SignUpScreen)
│       │   └── splash/         # SplashScreen with initialization and authentication check
│       └── widget/             # Reusable UI widgets
│           ├── custom_dialog.dart
│           ├── custom_elevated_button.dart
│           ├── custom_outlined_button.dart
│           ├── custom_text_button.dart
│           └── custom_text_form_field.dart
│
├── firebase_options.dart       # Firebase platform options (generated via FlutterFire CLI)
└── main.dart                   # Application entry point: initializes bindings, DI, and root widget
```

---

## Architectural Data Flow: Step-by-Step

To see how everything works together, follow the complete lifecycle of a user action (e.g., signing in):

```
┌──────────────┐     1. Dispatches Event     ┌────────────────┐
│  UI (Screen) │ ──────────────────────────> │ SignInFormBloc │
└──────────────┘                             └───────┬────────┘
       ▲                                             │
       │ 6. Rebuilds with new state                  │ 2. Calls UseCase
       │                                             ▼
┌──────────────┐                             ┌────────────────┐
│ BlocBuilder  │ <────────────────────────── │  SignIn (UC)   │
└──────────────┘     5. Emits State          └───────┬────────┘
                                                     │
                                                     │ 3. Executes contract
                                                     ▼
                                             ┌───────────────────────────┐
                                             │ AuthenticationRepository  │
                                             └──────────────┬────────────┘
                                                            │
                                                            │ 4. Fetches remote data
                                                            ▼
                                             ┌───────────────────────────┐
                                             │ RemoteDataSource (API)    │
                                             └───────────────────────────┘
```

1. **User Interaction**: The user enters their email and password on [`SignInScreen`](file:///Users/yash/our/clean-structure/clean-structure/lib/src/presentation/page/auth/sign_in_screen.dart) and taps "Sign In".
2. **Dispatch Event**: The UI fires an event to the BLoC:
   ```dart
   context.read<SignInFormBloc>().add(const SignInFormEvent.signInWithEmailAndPasswordPressed());
   ```
3. **Execute Use Case**: [`SignInFormBloc`](file:///Users/yash/our/clean-structure/clean-structure/lib/src/presentation/bloc/sign_in_form/sign_in_form_bloc.dart) emits a loading state and calls the domain usecase [`SignIn`](file:///Users/yash/our/clean-structure/clean-structure/lib/src/domain/usecase/login.dart).
4. **Repository & Data Source**:
   - The usecase invokes [`AuthenticationRepository`](file:///Users/yash/our/clean-structure/clean-structure/lib/src/domain/repositories/autentication_repository.dart).
   - Its implementation, [`AuthenticationRepositoryImpl`](file:///Users/yash/our/clean-structure/clean-structure/lib/src/data/repository/authentication_repository_impl.dart), calls [`AuthenticationRemoteDataSource`](file:///Users/yash/our/clean-structure/clean-structure/lib/src/data/datasource/authentication_remote_data_source.dart) to perform the HTTP request.
5. **Handling Results**: The data source returns either raw data or throws an exception. The repository maps this into an `Either<Failure, Success>` and passes it back to the usecase.
6. **State Emission & UI Reaction**: The BLoC emits either a success state or an error state. The UI updates automatically via `BlocConsumer` or `BlocListener`.

---

## Dependency Injection & Initialization

Dependencies are managed using **GetIt** and **Injectable**. 

1. Classes are annotated with `@singleton`, `@lazySingleton`, or `@injectable`:
   ```dart
   @singleton
   class AuthenticatorWatcherBloc extends Bloc<...> { ... }
   ```
2. When you run `dart run build_runner build`, Injectable generates [`lib/injections/injection.config.dart`](file:///Users/yash/our/clean-structure/clean-structure/lib/injections/injection.config.dart).
3. In [`lib/main.dart`](file:///Users/yash/our/clean-structure/clean-structure/lib/main.dart), `configureDependencies()` registers all classes into `locator` before the widget tree mounts.
4. Global BLoCs and Cubits are provided to the entire app in [`lib/src/Exports/bloc_list.dart`](file:///Users/yash/our/clean-structure/clean-structure/lib/src/Exports/bloc_list.dart) via `MultiBlocProvider`.

---

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

Happy coding! 🚀
