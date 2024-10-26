// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trading_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TradingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSymbols,
    required TResult Function(String symbol, double price) updatePrice,
    required TResult Function(List<SymbolData> symbols) connectWebSocket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchSymbols,
    TResult? Function(String symbol, double price)? updatePrice,
    TResult? Function(List<SymbolData> symbols)? connectWebSocket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSymbols,
    TResult Function(String symbol, double price)? updatePrice,
    TResult Function(List<SymbolData> symbols)? connectWebSocket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchSymbols value) fetchSymbols,
    required TResult Function(UpdatePrice value) updatePrice,
    required TResult Function(ConnectWebSocket value) connectWebSocket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchSymbols value)? fetchSymbols,
    TResult? Function(UpdatePrice value)? updatePrice,
    TResult? Function(ConnectWebSocket value)? connectWebSocket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchSymbols value)? fetchSymbols,
    TResult Function(UpdatePrice value)? updatePrice,
    TResult Function(ConnectWebSocket value)? connectWebSocket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradingEventCopyWith<$Res> {
  factory $TradingEventCopyWith(
          TradingEvent value, $Res Function(TradingEvent) then) =
      _$TradingEventCopyWithImpl<$Res, TradingEvent>;
}

/// @nodoc
class _$TradingEventCopyWithImpl<$Res, $Val extends TradingEvent>
    implements $TradingEventCopyWith<$Res> {
  _$TradingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchSymbolsImplCopyWith<$Res> {
  factory _$$FetchSymbolsImplCopyWith(
          _$FetchSymbolsImpl value, $Res Function(_$FetchSymbolsImpl) then) =
      __$$FetchSymbolsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchSymbolsImplCopyWithImpl<$Res>
    extends _$TradingEventCopyWithImpl<$Res, _$FetchSymbolsImpl>
    implements _$$FetchSymbolsImplCopyWith<$Res> {
  __$$FetchSymbolsImplCopyWithImpl(
      _$FetchSymbolsImpl _value, $Res Function(_$FetchSymbolsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchSymbolsImpl implements FetchSymbols {
  const _$FetchSymbolsImpl();

  @override
  String toString() {
    return 'TradingEvent.fetchSymbols()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchSymbolsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSymbols,
    required TResult Function(String symbol, double price) updatePrice,
    required TResult Function(List<SymbolData> symbols) connectWebSocket,
  }) {
    return fetchSymbols();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchSymbols,
    TResult? Function(String symbol, double price)? updatePrice,
    TResult? Function(List<SymbolData> symbols)? connectWebSocket,
  }) {
    return fetchSymbols?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSymbols,
    TResult Function(String symbol, double price)? updatePrice,
    TResult Function(List<SymbolData> symbols)? connectWebSocket,
    required TResult orElse(),
  }) {
    if (fetchSymbols != null) {
      return fetchSymbols();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchSymbols value) fetchSymbols,
    required TResult Function(UpdatePrice value) updatePrice,
    required TResult Function(ConnectWebSocket value) connectWebSocket,
  }) {
    return fetchSymbols(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchSymbols value)? fetchSymbols,
    TResult? Function(UpdatePrice value)? updatePrice,
    TResult? Function(ConnectWebSocket value)? connectWebSocket,
  }) {
    return fetchSymbols?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchSymbols value)? fetchSymbols,
    TResult Function(UpdatePrice value)? updatePrice,
    TResult Function(ConnectWebSocket value)? connectWebSocket,
    required TResult orElse(),
  }) {
    if (fetchSymbols != null) {
      return fetchSymbols(this);
    }
    return orElse();
  }
}

abstract class FetchSymbols implements TradingEvent {
  const factory FetchSymbols() = _$FetchSymbolsImpl;
}

/// @nodoc
abstract class _$$UpdatePriceImplCopyWith<$Res> {
  factory _$$UpdatePriceImplCopyWith(
          _$UpdatePriceImpl value, $Res Function(_$UpdatePriceImpl) then) =
      __$$UpdatePriceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String symbol, double price});
}

/// @nodoc
class __$$UpdatePriceImplCopyWithImpl<$Res>
    extends _$TradingEventCopyWithImpl<$Res, _$UpdatePriceImpl>
    implements _$$UpdatePriceImplCopyWith<$Res> {
  __$$UpdatePriceImplCopyWithImpl(
      _$UpdatePriceImpl _value, $Res Function(_$UpdatePriceImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? price = null,
  }) {
    return _then(_$UpdatePriceImpl(
      null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$UpdatePriceImpl implements UpdatePrice {
  const _$UpdatePriceImpl(this.symbol, this.price);

  @override
  final String symbol;
  @override
  final double price;

  @override
  String toString() {
    return 'TradingEvent.updatePrice(symbol: $symbol, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePriceImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, symbol, price);

  /// Create a copy of TradingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePriceImplCopyWith<_$UpdatePriceImpl> get copyWith =>
      __$$UpdatePriceImplCopyWithImpl<_$UpdatePriceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSymbols,
    required TResult Function(String symbol, double price) updatePrice,
    required TResult Function(List<SymbolData> symbols) connectWebSocket,
  }) {
    return updatePrice(symbol, price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchSymbols,
    TResult? Function(String symbol, double price)? updatePrice,
    TResult? Function(List<SymbolData> symbols)? connectWebSocket,
  }) {
    return updatePrice?.call(symbol, price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSymbols,
    TResult Function(String symbol, double price)? updatePrice,
    TResult Function(List<SymbolData> symbols)? connectWebSocket,
    required TResult orElse(),
  }) {
    if (updatePrice != null) {
      return updatePrice(symbol, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchSymbols value) fetchSymbols,
    required TResult Function(UpdatePrice value) updatePrice,
    required TResult Function(ConnectWebSocket value) connectWebSocket,
  }) {
    return updatePrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchSymbols value)? fetchSymbols,
    TResult? Function(UpdatePrice value)? updatePrice,
    TResult? Function(ConnectWebSocket value)? connectWebSocket,
  }) {
    return updatePrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchSymbols value)? fetchSymbols,
    TResult Function(UpdatePrice value)? updatePrice,
    TResult Function(ConnectWebSocket value)? connectWebSocket,
    required TResult orElse(),
  }) {
    if (updatePrice != null) {
      return updatePrice(this);
    }
    return orElse();
  }
}

abstract class UpdatePrice implements TradingEvent {
  const factory UpdatePrice(final String symbol, final double price) =
      _$UpdatePriceImpl;

  String get symbol;
  double get price;

  /// Create a copy of TradingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePriceImplCopyWith<_$UpdatePriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectWebSocketImplCopyWith<$Res> {
  factory _$$ConnectWebSocketImplCopyWith(_$ConnectWebSocketImpl value,
          $Res Function(_$ConnectWebSocketImpl) then) =
      __$$ConnectWebSocketImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SymbolData> symbols});
}

/// @nodoc
class __$$ConnectWebSocketImplCopyWithImpl<$Res>
    extends _$TradingEventCopyWithImpl<$Res, _$ConnectWebSocketImpl>
    implements _$$ConnectWebSocketImplCopyWith<$Res> {
  __$$ConnectWebSocketImplCopyWithImpl(_$ConnectWebSocketImpl _value,
      $Res Function(_$ConnectWebSocketImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbols = null,
  }) {
    return _then(_$ConnectWebSocketImpl(
      null == symbols
          ? _value._symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<SymbolData>,
    ));
  }
}

/// @nodoc

class _$ConnectWebSocketImpl implements ConnectWebSocket {
  const _$ConnectWebSocketImpl(final List<SymbolData> symbols)
      : _symbols = symbols;

  final List<SymbolData> _symbols;
  @override
  List<SymbolData> get symbols {
    if (_symbols is EqualUnmodifiableListView) return _symbols;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symbols);
  }

  @override
  String toString() {
    return 'TradingEvent.connectWebSocket(symbols: $symbols)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectWebSocketImpl &&
            const DeepCollectionEquality().equals(other._symbols, _symbols));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_symbols));

  /// Create a copy of TradingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectWebSocketImplCopyWith<_$ConnectWebSocketImpl> get copyWith =>
      __$$ConnectWebSocketImplCopyWithImpl<_$ConnectWebSocketImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSymbols,
    required TResult Function(String symbol, double price) updatePrice,
    required TResult Function(List<SymbolData> symbols) connectWebSocket,
  }) {
    return connectWebSocket(symbols);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchSymbols,
    TResult? Function(String symbol, double price)? updatePrice,
    TResult? Function(List<SymbolData> symbols)? connectWebSocket,
  }) {
    return connectWebSocket?.call(symbols);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSymbols,
    TResult Function(String symbol, double price)? updatePrice,
    TResult Function(List<SymbolData> symbols)? connectWebSocket,
    required TResult orElse(),
  }) {
    if (connectWebSocket != null) {
      return connectWebSocket(symbols);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchSymbols value) fetchSymbols,
    required TResult Function(UpdatePrice value) updatePrice,
    required TResult Function(ConnectWebSocket value) connectWebSocket,
  }) {
    return connectWebSocket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchSymbols value)? fetchSymbols,
    TResult? Function(UpdatePrice value)? updatePrice,
    TResult? Function(ConnectWebSocket value)? connectWebSocket,
  }) {
    return connectWebSocket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchSymbols value)? fetchSymbols,
    TResult Function(UpdatePrice value)? updatePrice,
    TResult Function(ConnectWebSocket value)? connectWebSocket,
    required TResult orElse(),
  }) {
    if (connectWebSocket != null) {
      return connectWebSocket(this);
    }
    return orElse();
  }
}

abstract class ConnectWebSocket implements TradingEvent {
  const factory ConnectWebSocket(final List<SymbolData> symbols) =
      _$ConnectWebSocketImpl;

  List<SymbolData> get symbols;

  /// Create a copy of TradingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectWebSocketImplCopyWith<_$ConnectWebSocketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
