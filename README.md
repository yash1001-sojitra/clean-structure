# Flutter Bloc Clean Architecture Boilerplate

A production-ready Flutter project boilerplate adhering to the principles of **Clean Architecture**. It is designed to help you jumpstart enterprise-grade Flutter projects by providing a structured, scalable, testable, and maintainable architecture.

This boilerplate utilizes the **BLoC & Cubit** state management patterns, **GetIt** & **Injectable** for automated dependency injection, **Freezed** for immutable state and code generation, **Dio** with logging interceptors for networking, and **GoRouter** for declarative routing.

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

- 🏗️ **Clean Architecture Pattern**: Strict separation of concerns across Presentation, Domain, and Data layers.
- ⚡ **BLoC & Cubit State Management**: Predictable, testable, and reactive state management using `flutter_bloc`.
- 💉 **Automated Dependency Injection**: Compile-time DI with `get_it` and `injectable`.
- 🌐 **Centralized Network Client**: Configured `Dio` client with custom timeouts, standard headers, and `LogInterceptor`.
- 💾 **Separated Data Sources**: Distinct Remote (API) and Local (`SharedPrefHelper` / Cache) data sources.
- 🎯 **Generic Base UseCase Abstraction**: Standardized `UseCase<Type, Params>` and `NoParams` contracts.
- 🧊 **Immutable Models & States**: Union types, pattern matching, and copy methods generated with `freezed`.
- 🗺️ **Declarative Routing**: Dynamic deep-linkable navigation with `go_router`.
- 🌍 **Localization & Internationalization (i18n / l10n)**: Multi-language support (English, Hindi, etc.) out-of-the-box.
- 🎨 **Dynamic Theming**: Instant light and dark mode switching.
- 📡 **Live Connectivity Monitoring**: Real-time network connection monitoring BLoC.
- 🔔 **Push Notifications Ready**: Integrated Firebase Messaging & FCM token update cubit.
- 🧩 **Reusable UI Components**: Standardized buttons, form fields, and dialogs.

---

## Clean Architecture Layers

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
│   (Remote/Local Data Sources, Models/DTOs, Repos Impls) │
└─────────────────────────────────────────────────────────┘
```

---

## Step-by-Step Deep Directory Breakdown

```
lib/
├── app/                        # Cross-cutting concerns and shared configurations
│   └── common/                 # Common utilities (colors, themes, constants, endpoints)
│       ├── api.dart            # API base URLs and endpoint paths
│       ├── colors.dart         # Global color palette and styling constants
│       ├── constant.dart       # App constants (App Name, storage keys, spacing)
│       ├── enum.dart           # Common enums (e.g. RequestState: empty, loading, loaded, error)
│       ├── exception.dart      # Custom exception classes for data failures (ServerException, etc.)
│       ├── failure.dart        # Failure abstractions mapped to UI-friendly messages (ServerFailure, etc.)
│       ├── screens.dart        # Screen size and responsive layout helper utilities
│       ├── themes.dart         # Light and Dark ThemeData definitions
│       ├── toast.dart          # Helper methods for showing toast alerts / snackbars
│       └── usecase.dart        # Generic UseCase<Type, Params> and NoParams contracts
│
├── injections/                 # Dependency injection setup
│   ├── injection.dart          # GetIt locator declaration and configureDependencies() trigger
│   ├── injection.config.dart   # Auto-generated dependency registrations (via injectable)
│   └── network_module.dart     # Injectable module providing configured Dio client with interceptors
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
│   ├── domain/                 # DOMAIN LAYER (Pure Business Logic - Zero Framework)
│   │   ├── entities/           # Business entities representing the core domain models
│   │   │   ├── user.dart       # User entity
│   │   │   └── auth_token.dart # AuthToken entity
│   │   ├── repositories/       # Abstract repository interfaces (contracts)
│   │   │   └── authentication_repository.dart # Interface defining auth operations
│   │   └── usecase/            # Granular, single-responsibility use cases
│   │       ├── login.dart            # SignIn use case (implements UseCase<User, LoginParams>)
│   │       ├── check_auth_status.dart# CheckAuthStatus use case
│   │       └── logout.dart           # Logout use case
│   │
│   ├── data/                   # DATA LAYER (Data retrieval, transformation & persistence)
│   │   ├── model/              # Data models / DTOs with JSON serialization (fromJson/toJson)
│   │   │   └── user_model.dart # UserModel extending User entity
│   │   ├── datasource/         # Separated remote and local data access
│   │   │   ├── authentication_remote_data_source.dart # Direct API calls via injected Dio
│   │   │   └── authentication_local_data_source.dart  # Token & local preference persistence
│   │   └── repository/         # Implements domain repository interfaces
│   │       └── authentication_repository_impl.dart    # Coordinates remote and local data sources
│   │
│   └── presentation/           # PRESENTATION LAYER (UI & State)
│       ├── bloc/               # State management using BLoC pattern (Event -> State)
│       │   ├── authenticator_watcher/ # Watches user authentication lifecycle via UseCases
│       │   ├── language/       # Handles app language selection & locale state
│       │   ├── network/        # Tracks device network/internet connectivity
│       │   └── sign_in_form/   # Manages sign-in form inputs, validation, and submission
│       ├── cubit/              # Lightweight state management using Cubit pattern
│       │   ├── theme/          # Toggles between Light and Dark themes
│       │   └── update_fcm_token/# Updates and synchronizes Firebase push notification tokens
│       ├── page/               # App screens / views
│       │   ├── Error/          # Route error / 404 fallback page
│       │   ├── auth/           # Fully implemented authentication screens (SignInScreen, SignUpScreen)
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

Follow the complete lifecycle of a user action (e.g. signing in):

```
┌──────────────┐     1. Dispatches Event      ┌────────────────┐
│  UI (Screen) │ ───────────────────────────> │ SignInFormBloc │
└──────────────┘                              └───────┬────────┘
       ▲                                              │
       │ 6. Rebuilds with new state                   │ 2. Invokes UseCase
       │                                              ▼
┌──────────────┐                              ┌────────────────┐
│ BlocBuilder  │ <─────────────────────────── │  SignIn (UC)   │
└──────────────┘     5. Emits State           └───────┬────────┘
                                                      │
                                                      │ 3. Executes contract
                                                      ▼
                                              ┌───────────────────────────┐
                                              │ AuthenticationRepository  │
                                              └──────┬─────────────┬──────┘
                                                     │             │
                                    4a. Fetches API  │             │ 4b. Caches Token
                                                     ▼             ▼
                                              ┌─────────────┐ ┌─────────────┐
                                              │ Remote DS   │ │ Local DS    │
                                              │ (Dio API)   │ │ (SharedPref)│
                                              └─────────────┘ └─────────────┘
```

1. **User Interaction**: The user enters their email and password on [`SignInScreen`](file:///Users/yash/our/clean-structure/clean-structure/lib/src/presentation/page/auth/sign_in_screen.dart) and taps "Sign In".
2. **Dispatch Event**: The UI fires an event to the BLoC:
   ```dart
   context.read<SignInFormBloc>().add(const SignInFormEvent.signInWithEmail());
   ```
3. **Execute Use Case**: [`SignInFormBloc`](file:///Users/yash/our/clean-structure/clean-structure/lib/src/presentation/bloc/sign_in_form/sign_in_form_bloc.dart) emits a loading state and calls the domain usecase [`SignIn`](file:///Users/yash/our/clean-structure/clean-structure/lib/src/domain/usecase/login.dart).
4. **Repository Orchestration**:
   - The use case invokes [`AuthenticationRepository`](file:///Users/yash/our/clean-structure/clean-structure/lib/src/domain/repositories/authentication_repository.dart).
   - Its implementation, [`AuthenticationRepositoryImpl`](file:///Users/yash/our/clean-structure/clean-structure/lib/src/data/repository/authentication_repository_impl.dart):
     - Calls [`AuthenticationRemoteDataSource`](file:///Users/yash/our/clean-structure/clean-structure/lib/src/data/datasource/authentication_remote_data_source.dart) via the configured `Dio` client to execute the HTTP call.
     - On success, persists the access token using [`AuthenticationLocalDataSource`](file:///Users/yash/our/clean-structure/clean-structure/lib/src/data/datasource/authentication_local_data_source.dart).
     - Converts `UserModel` to domain `User` entity.
5. **Handling Results**: The repository returns `Either<Failure, User>` back up to the use case and BLoC.
6. **State Emission & UI Reaction**: The BLoC emits either a success (`loaded`) or error state. The UI updates automatically via `BlocConsumer` or `BlocListener`.

---

## Dependency Injection & Initialization

Dependencies are managed using **GetIt** and **Injectable**:

1. **Modules & Services**: 
   - `NetworkModule` provides a singleton `Dio` instance.
   - Data sources are annotated with `@LazySingleton(as: Interface)`.
   - Repositories are annotated with `@LazySingleton(as: Interface)`.
   - Use cases are annotated with `@injectable`.
   - BLoCs & Cubits are annotated with `@singleton`.
2. **Initialization**:
   - In [`lib/main.dart`](file:///Users/yash/our/clean-structure/clean-structure/lib/main.dart), `configureDependencies()` registers all classes into `locator` before the widget tree mounts.
   - Root BLoCs and Cubits are provided to the entire application in [`lib/src/Exports/bloc_list.dart`](file:///Users/yash/our/clean-structure/clean-structure/lib/src/Exports/bloc_list.dart) via `MultiBlocProvider`.

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
