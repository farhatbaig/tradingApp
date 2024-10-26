// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symbol_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SymbolDataDto _$SymbolDataDtoFromJson(Map<String, dynamic> json) {
  return _SymbolDataDto.fromJson(json);
}

/// @nodoc
mixin _$SymbolDataDto {
  String get symbol => throw _privateConstructorUsedError;

  /// Serializes this SymbolDataDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SymbolDataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SymbolDataDtoCopyWith<SymbolDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymbolDataDtoCopyWith<$Res> {
  factory $SymbolDataDtoCopyWith(
          SymbolDataDto value, $Res Function(SymbolDataDto) then) =
      _$SymbolDataDtoCopyWithImpl<$Res, SymbolDataDto>;
  @useResult
  $Res call({String symbol});
}

/// @nodoc
class _$SymbolDataDtoCopyWithImpl<$Res, $Val extends SymbolDataDto>
    implements $SymbolDataDtoCopyWith<$Res> {
  _$SymbolDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SymbolDataDto
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
abstract class _$$SymbolDataDtoImplCopyWith<$Res>
    implements $SymbolDataDtoCopyWith<$Res> {
  factory _$$SymbolDataDtoImplCopyWith(
          _$SymbolDataDtoImpl value, $Res Function(_$SymbolDataDtoImpl) then) =
      __$$SymbolDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String symbol});
}

/// @nodoc
class __$$SymbolDataDtoImplCopyWithImpl<$Res>
    extends _$SymbolDataDtoCopyWithImpl<$Res, _$SymbolDataDtoImpl>
    implements _$$SymbolDataDtoImplCopyWith<$Res> {
  __$$SymbolDataDtoImplCopyWithImpl(
      _$SymbolDataDtoImpl _value, $Res Function(_$SymbolDataDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SymbolDataDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
  }) {
    return _then(_$SymbolDataDtoImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SymbolDataDtoImpl extends _SymbolDataDto {
  const _$SymbolDataDtoImpl({required this.symbol}) : super._();

  factory _$SymbolDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymbolDataDtoImplFromJson(json);

  @override
  final String symbol;

  @override
  String toString() {
    return 'SymbolDataDto(symbol: $symbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymbolDataDtoImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol);

  /// Create a copy of SymbolDataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SymbolDataDtoImplCopyWith<_$SymbolDataDtoImpl> get copyWith =>
      __$$SymbolDataDtoImplCopyWithImpl<_$SymbolDataDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SymbolDataDtoImplToJson(
      this,
    );
  }
}

abstract class _SymbolDataDto extends SymbolDataDto {
  const factory _SymbolDataDto({required final String symbol}) =
      _$SymbolDataDtoImpl;
  const _SymbolDataDto._() : super._();

  factory _SymbolDataDto.fromJson(Map<String, dynamic> json) =
      _$SymbolDataDtoImpl.fromJson;

  @override
  String get symbol;

  /// Create a copy of SymbolDataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SymbolDataDtoImplCopyWith<_$SymbolDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
