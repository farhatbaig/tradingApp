// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symbol.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SymbolData _$SymbolDataFromJson(Map<String, dynamic> json) {
  return _SymbolData.fromJson(json);
}

/// @nodoc
mixin _$SymbolData {
  String get symbol => throw _privateConstructorUsedError;

  /// Serializes this SymbolData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SymbolData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SymbolDataCopyWith<SymbolData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymbolDataCopyWith<$Res> {
  factory $SymbolDataCopyWith(
          SymbolData value, $Res Function(SymbolData) then) =
      _$SymbolDataCopyWithImpl<$Res, SymbolData>;
  @useResult
  $Res call({String symbol});
}

/// @nodoc
class _$SymbolDataCopyWithImpl<$Res, $Val extends SymbolData>
    implements $SymbolDataCopyWith<$Res> {
  _$SymbolDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SymbolData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SymbolDataImplCopyWith<$Res>
    implements $SymbolDataCopyWith<$Res> {
  factory _$$SymbolDataImplCopyWith(
          _$SymbolDataImpl value, $Res Function(_$SymbolDataImpl) then) =
      __$$SymbolDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String symbol});
}

/// @nodoc
class __$$SymbolDataImplCopyWithImpl<$Res>
    extends _$SymbolDataCopyWithImpl<$Res, _$SymbolDataImpl>
    implements _$$SymbolDataImplCopyWith<$Res> {
  __$$SymbolDataImplCopyWithImpl(
      _$SymbolDataImpl _value, $Res Function(_$SymbolDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SymbolData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
  }) {
    return _then(_$SymbolDataImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SymbolDataImpl extends _SymbolData {
  const _$SymbolDataImpl({required this.symbol}) : super._();

  factory _$SymbolDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymbolDataImplFromJson(json);

  @override
  final String symbol;

  @override
  String toString() {
    return 'SymbolData(symbol: $symbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymbolDataImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol);

  /// Create a copy of SymbolData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SymbolDataImplCopyWith<_$SymbolDataImpl> get copyWith =>
      __$$SymbolDataImplCopyWithImpl<_$SymbolDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SymbolDataImplToJson(
      this,
    );
  }
}

abstract class _SymbolData extends SymbolData {
  const factory _SymbolData({required final String symbol}) = _$SymbolDataImpl;
  const _SymbolData._() : super._();

  factory _SymbolData.fromJson(Map<String, dynamic> json) =
      _$SymbolDataImpl.fromJson;

  @override
  String get symbol;

  /// Create a copy of SymbolData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SymbolDataImplCopyWith<_$SymbolDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
