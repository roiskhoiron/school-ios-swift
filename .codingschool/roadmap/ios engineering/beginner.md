# Roadmap: iOS Engineering (Swift) — Expert + Ecosystem

## Phase 1 – Swift Fundamentals 🚀
- [x] **Swift Variables & Constants** – `var` vs `let`, type inference, explicit types, mutability
- [x] **Data Types** – Strings, Numbers, Booleans, Collections (Array, Set, Dictionary), type safety
- [x] **Optionals** – `?`, `!`, optional binding, nil coalescing, optional chaining
- [x] **Control Flow** – `if`, `switch`, loops (`for`, `while`), `guard`, `defer`
- [x] **Functions** – parameters, return values, default values, variadic, labeled arguments, closures
- [x] **Enums & Associated Values** – basic enums, raw values, associated values, pattern matching
- [x] **Structs vs Classes** – value vs reference semantics, inheritance, initializers, deinit
- [x] **Protocols & Delegation** – defining protocols, conforming, using `delegate` pattern
- [x] **Extensions & Generics** – adding functionality, generic constraints, `where` clauses
- [x] **Error Handling** – `throw`, `try`, `catch`, `Result` type, custom errors

## Phase 2 – Xcode & SwiftUI Basics 🎨
- [x] **Xcode Installation & Project Setup** – creating a new project, workspace, scheme, debugging
- [x] **SwiftUI Introduction** – declarative UI paradigm, preview canvas, live preview
- [ ] **SwiftUI Views** – `Text`, `Image`, `Button`, `VStack`, `HStack`, `ZStack`, `Spacer`
- [ ] **State Management Basics** – `@State`, `@Binding`, local vs passed state
- [ ] **Navigation** – `NavigationView`, `NavigationLink`, `NavigationStack` (iOS 16+)
- [ ] **Lists & Collections** – `List`, `ForEach`, `Section`, dynamic data rendering
- [ ] **User Input** – `TextField`, `SecureField`, `Picker`, `Toggle`, form validation
- [ ] **Styling & Modifiers** – fonts, colors, shadows, custom modifiers, `ViewModifier`
- [ ] **SFSSafeSymbols** – type-safe SF Symbols, autocomplete aman, migrasi dari string literal

## Phase 3 – UIKit Foundations & Interoperability 🔗
- [ ] **UIKit Basics** – `UIView`, `UIViewController`, view hierarchy, lifecycle
- [ ] **UIView Subclassing** – creating custom views, `layoutSubviews`, frame vs bounds
- [ ] **UIViewController Lifecycle** – `viewDidLoad`, `viewWillAppear`, `viewDidDisappear`
- [ ] **SwiftUI ↔ UIKit Bridge** – `UIViewRepresentable`, wrapping UIView in SwiftUI
- [ ] **UIViewControllerRepresentable** – wrapping UIViewController in SwiftUI
- [ ] **UIHostingController** – embedding SwiftUI views inside UIKit
- [ ] **Interop Patterns** – when to use UIKit vs SwiftUI, hybrid apps, migration strategies
- [ ] **Common UIKit Components in SwiftUI** – using legacy components seamlessly

## Phase 4 – Advanced State & View Architecture 📐
- [ ] **@ObservedObject & @EnvironmentObject** – sharing state across views, ObservableObject protocol
- [ ] **@StateObject vs @ObservedObject** – ownership semantics, when to use each
- [ ] **@Environment** – accessing system environment values, custom environment keys
- [ ] **Property Wrappers Deep Dive** – creating custom property wrappers for state
- [ ] **ViewModel Pattern** – separating presentation logic from views, MVVM in SwiftUI
- [ ] **Combine Basics** – `Publisher`, `Subscriber`, `sink`, connecting to UI
- [ ] **View Composition** – building reusable, composable UI components
- [ ] **Performance** – View caching, onReceive, mencegah redraw tidak perlu

## Phase 5 – Data & Networking 📡
- [ ] **JSON & Decodable** – `Codable`, custom decoding, date formatting, nested structures
- [ ] **URLSession Basics** – GET/POST requests, async/await, data tasks, error handling
- [ ] **Networking Architecture** – service protocols, request builders, interceptors
- [ ] **Combine for Networking** – `URLSession.DataTaskPublisher`, combining multiple requests
- [ ] **GZIP** – kompresi/dekompresi data untuk networking & storage, mengurangi payload
- [ ] **Error Handling in Networking** – custom error types, retry logic, timeout handling
- [ ] **Authentication** – managing tokens, refresh token flow
- [ ] **KeychainAccess** – wrapper aman untuk iOS Keychain, simpan token/password terenkripsi
- [ ] **API Mocking & Testing** – mock servers, dependency injection for testing

## Phase 6 – Persistence & Local Storage 💾
- [ ] **UserDefaults** – simple key‑value storage, property wrappers (`@AppStorage`)
- [ ] **File System** – reading/writing files, app sandbox, Documents/Temp directories
- [ ] **KZFileWatchers** – memantau perubahan file/directory secara reaktif
- [ ] **LRUCache** – cache dengan strategi Least Recently Used, in-memory caching
- [ ] **Codable & Persistence** – saving/loading custom types dengan JSONEncoder/Decoder + GZIP
- [ ] **Core Data Fundamentals** – entities, attributes, relationships, NSManagedObject
- [ ] **Core Data with SwiftUI** – `@FetchRequest`, `NSManagedObjectContext`, `@Environment`
- [ ] **Core Data Advanced** – predicates, sorting, batching, performance optimization
- [ ] **SQLite (Optional)** – direct SQLite usage, wrappers seperti GRDB

## Phase 7 – Dependency Injection & Service Architecture 🏗️
- [ ] **Dependency Injection Patterns** – constructor injection, property injection, method injection
- [ ] **Service Locator Pattern** – registry-based injection, factory patterns
- [ ] **Property Wrappers for DI** – custom `@Injected` wrapper, container management
- [ ] **Swinject & Needle** – popular Swift DI frameworks, setup & configuration
- [ ] **Utility Class Management** – organizing services, repositories, managers
- [ ] **Factory Pattern** – creating complex objects, configurable factories
- [ ] **Testing with DI** – mocking dependencies, test doubles, isolation

## Phase 8 – Swift Collections & Algorithms 📚
- [ ] **swift-collections** – Deque, OrderedSet, OrderedDictionary, Heap dari Swift.org
- [ ] **swift-algorithms** – combinations, permutations, chunking, compacted, batched
- [ ] **swift-numerics** – Complex numbers, ShapedArray, operasi matematika presisi tinggi
- [ ] **Praktik: Kapan pakai apa** – Array vs Deque vs OrderedSet, benchmark performa

## Phase 9 – Advanced Concurrency & Performance ⚡
- [ ] **async/await** – async functions, awaiting results, cancellation
- [ ] **Task & TaskGroup** – structured concurrency, task hierarchies
- [ ] **swift-async-algorithms** – AsyncSequence: debounce, throttle, merge, zip, chunk
- [ ] **swift-atomics** – operasi atomic/thread-safe untuk concurrency tingkat rendah, ManagedAtomic
- [ ] **Actors** – thread-safe mutable state, actor isolation
- [ ] **MainActor** – updating UI safely dari background tasks
- [ ] **Memory Management** – strong/weak/unowned references, capture lists, retain cycles
- [ ] **Performance Optimization** – profiling dengan Instruments, reducing allocations

## Phase 10 – Testing, Debugging & Tooling 🧪
- [ ] **Unit Testing Basics** – XCTest framework, test structure, assertions
- [ ] **swift-custom-dump** – debugging object/struct dengan output dump yang readable, diff
- [ ] **Testing with Combine** – testing Publishers, expectation, sink
- [ ] **Testing Async Code** – async/await di tests, XCTestExpectation, swift-async-algorithms testing
- [ ] **Mocking & Stubbing** – mock objects, DI untuk tests
- [ ] **UI Testing** – XCUITest, interacting dengan elements, accessibility IDs
- [ ] **swift-syntax** – membaca/manipulasi Swift source sebagai syntax tree, macro & code generation
- [ ] **swift-docc** – dokumentasi Swift dengan DocC, hosting docs
- [ ] **Integration Testing** – testing multiple layers bersama

## Phase 11 – Clean Architecture & App Lifecycle 🌐
- [ ] **Clean Architecture Layers** – Presentation, Domain, Data (MVVM/VIPER/MVI)
- [ ] **Repositories & UseCases** – abstracting data sources, business logic organization
- [ ] **AppDelegate & SceneDelegate** – app lifecycle, deep linking, scene management
- [ ] **SwiftUI @main** – new app initialization pattern, environment setup
- [ ] **Initialization Sequence** – app launch, dependency setup, first screen
- [ ] **Background Tasks & Notifications** – handling notifications, background fetch
- [ ] **URL Schemes & Universal Links** – deep linking, app routing

## Phase 12 – Analytics, Monitoring & Security 📊🔒
- [ ] **sentry-cocoa** – error/crash monitoring, breadcrumbs, release tracking
- [ ] **posthog** – analytics/event tracking, feature flags, user tracking
- [ ] **KeychainAccess Deep Dive** – biometric protection, access control, keychain sharing
- [ ] **Crash Reporting Flow** – simbolikasi, dSYM, triase crash
- [ ] **Privacy & Security Best Practices** – App Tracking Transparency, data protection

## Phase 13 – Build & Deployment 🚀
- [ ] **Build Configuration** – build settings, schemes, configurations (Debug/Release)
- [ ] **Code Signing & Provisioning** – certificates, identifiers, provisioning profiles
- [ ] **App Store Submission** – App Store Connect, metadata, screenshots, review guidelines
- [ ] **TestFlight & Beta Distribution** – internal testing, external testers
- [ ] **Versioning & Updates** – semantic versioning, mengelola app versions
- [ ] **CI/CD Pipeline** – GitHub Actions, fastlane, automated builds & deployment

## Phase 14 – Capstone Project 🎯
- [ ] **Full-Featured iOS App** (Personal Task Manager / Social Feed):
  - [ ] SwiftUI UI dengan NavigationStack + SFSSafeSymbols
  - [ ] Hybrid UIKit + SwiftUI (custom UIView via UIViewRepresentable)
  - [ ] Collections: OrderedSet untuk task list, Deque untuk undo stack
  - [ ] Algorithms: chunked sync, combinations untuk fitur terkait
  - [ ] Networking + GZIP compression + KeychainAccess untuk auth
  - [ ] Persistence: Core Data + LRUCache + KZFileWatchers untuk file sync
  - [ ] Concurrency: async-algorithms (debounce search, merge streams) + Atomics untuk counter
  - [ ] DI: Swinject + custom @Injected property wrapper
  - [ ] Debugging: swift-custom-dump untuk state diff, swift-docc docs
  - [ ] Monitoring: sentry-cocoa + posthog integrated
  - [ ] Testing: unit + UI tests dengan mocking
  - [ ] Syntax: swift-syntax macro untuk boilerplate

### Milestones (Auto-Tracked)
- [ ] **Proyek 1: Swift Fundamentals** – Mini-quiz + CLI tool 🚀
- [ ] **Proyek 2: SwiftUI Todo App** – Basic UI + SFSSafeSymbols 🚀
- [ ] **Proyek 3: Hybrid UIKit-SwiftUI** – Wrapping UIKit + LRUCache 🚀
- [ ] **Proyek 4: Networked App** – GZIP + KeychainAccess + Core Data 🚀
- [ ] **Proyek 5: Collections & Algorithms Lab** – Deque, OrderedSet, chunked 🚀
- [ ] **Proyek 6: Concurrency Lab** – async-algorithms + Atomics 🚀
- [ ] **Proyek 7: DI & Architecture** – Swinject + swift-syntax macro 🚀
- [ ] **Capstone: Full Task Manager** – Semua ekosistem terintegrasi 🚀

---
**Catatan:**
- [ ] Phase 8 khusus untuk swift.org official packages: collections, algorithms, numerics
- [ ] Phase 9 concurrency low-level: atomics + async-algorithms
- [ ] Phase 10 tooling: syntax, docc, custom-dump
- [ ] Phase 5-6 storage: GZIP, KeychainAccess, LRUCache, KZFileWatchers
- [ ] Phase 12 monitoring: sentry-cocoa + posthog
- [ ] Semua code di `ios-learning-journey/` dengan git checkpoints
