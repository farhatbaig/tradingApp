# Trading App

This Trading App provides a platform to view real-time trading data, market trends, and price changes using Flutter and the BLoC pattern. The app displays aggregated market trends in real-time with dynamic charts.

## Project Structure

- **application**: Contains `Bloc` classes for managing business logic and state.
- **domain**: Defines core entities and abstractions for data handling.
- **infrastructure**: Manages data sources and repositories for API calls.
- **presentation**: Holds UI components such as screens and widgets.

## Libraries and Patterns Used

### flutter_bloc
- Manages state using the BLoC (Business Logic Component) pattern, providing a clear separation of concerns and predictable state management.

### freezed and json_serializable
- `freezed`: Generates immutable data classes to ensure data integrity.
- `json_serializable`: Automatically handles JSON serialization and deserialization.

### dartz
- Brings functional programming constructs like `Either` and `Option` for better error handling and functional operations.

### fl_chart
- Renders beautiful, interactive charts to display trading data and market trends dynamically.

## Project Setup and Running Instructions

1. **Install Dependencies**:
    ```bash
    flutter pub get
    ```

2. **Generate Freezed Classes**:
    ```bash
    flutter pub run build_runner build
    ```

3. **Run the App**:
    ```bash
    flutter run
    ```

4. **Run Tests**:
    ```bash
    flutter test
    ```

## Key Code Patterns

### Bloc Pattern
The Bloc pattern is used for managing business logic and state changes in response to UI events. Each bloc:
- Takes in events dispatched from the UI.
- Processes business logic.
- Emits states back to the UI.

### Repository Pattern
Repositories abstract data access logic. This app uses a `SymbolRepository` to handle API interactions, separating data sources (such as APIs) from the app's business logic.

### Freezed Classes
Freezed classes define immutable data structures. This enables predictable data flow and ensures data integrity across different parts of the app.

## Example Code Usage

Below is an example of how BLoC and repository patterns are used:

```dart
// In the BLoC
class TradingBloc extends Bloc<TradingEvent, TradingState> {
    final SymbolRepository symbolRepository;

    TradingBloc({required this.symbolRepository}) : super(TradingState.initial()) {
        on<FetchSymbols>(_onFetchSymbols);
    }

    Future<void> _onFetchSymbols(FetchSymbols event, Emitter<TradingState> emit) async {
        final symbols = await symbolRepository.getSymbolData();
        emit(TradingState.loaded(symbols: symbols, prices: {}));
    }
}


### Usage
- Place this content in a file named `README.md` in the root directory of your project.
- This document provides detailed information on the project’s structure, setup instructions, and key code patterns.

Let me know if you need any more details or additions!