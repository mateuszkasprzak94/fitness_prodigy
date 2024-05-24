// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../vitamins_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VitaminsState {
  List<VitaminsTypeModel> get vitaminsData =>
      throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VitaminsStateCopyWith<VitaminsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VitaminsStateCopyWith<$Res> {
  factory $VitaminsStateCopyWith(
          VitaminsState value, $Res Function(VitaminsState) then) =
      _$VitaminsStateCopyWithImpl<$Res, VitaminsState>;
  @useResult
  $Res call(
      {List<VitaminsTypeModel> vitaminsData,
      Status status,
      String? errorMessage});
}

/// @nodoc
class _$VitaminsStateCopyWithImpl<$Res, $Val extends VitaminsState>
    implements $VitaminsStateCopyWith<$Res> {
  _$VitaminsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vitaminsData = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      vitaminsData: null == vitaminsData
          ? _value.vitaminsData
          : vitaminsData // ignore: cast_nullable_to_non_nullable
              as List<VitaminsTypeModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VitaminsStateImplCopyWith<$Res>
    implements $VitaminsStateCopyWith<$Res> {
  factory _$$VitaminsStateImplCopyWith(
          _$VitaminsStateImpl value, $Res Function(_$VitaminsStateImpl) then) =
      __$$VitaminsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<VitaminsTypeModel> vitaminsData,
      Status status,
      String? errorMessage});
}

/// @nodoc
class __$$VitaminsStateImplCopyWithImpl<$Res>
    extends _$VitaminsStateCopyWithImpl<$Res, _$VitaminsStateImpl>
    implements _$$VitaminsStateImplCopyWith<$Res> {
  __$$VitaminsStateImplCopyWithImpl(
      _$VitaminsStateImpl _value, $Res Function(_$VitaminsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vitaminsData = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$VitaminsStateImpl(
      vitaminsData: null == vitaminsData
          ? _value._vitaminsData
          : vitaminsData // ignore: cast_nullable_to_non_nullable
              as List<VitaminsTypeModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VitaminsStateImpl implements _VitaminsState {
  _$VitaminsStateImpl(
      {final List<VitaminsTypeModel> vitaminsData = const [],
      this.status = Status.initial,
      this.errorMessage})
      : _vitaminsData = vitaminsData;

  final List<VitaminsTypeModel> _vitaminsData;
  @override
  @JsonKey()
  List<VitaminsTypeModel> get vitaminsData {
    if (_vitaminsData is EqualUnmodifiableListView) return _vitaminsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vitaminsData);
  }

  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'VitaminsState(vitaminsData: $vitaminsData, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitaminsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._vitaminsData, _vitaminsData) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_vitaminsData), status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VitaminsStateImplCopyWith<_$VitaminsStateImpl> get copyWith =>
      __$$VitaminsStateImplCopyWithImpl<_$VitaminsStateImpl>(this, _$identity);
}

abstract class _VitaminsState implements VitaminsState {
  factory _VitaminsState(
      {final List<VitaminsTypeModel> vitaminsData,
      final Status status,
      final String? errorMessage}) = _$VitaminsStateImpl;

  @override
  List<VitaminsTypeModel> get vitaminsData;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$VitaminsStateImplCopyWith<_$VitaminsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
