// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../supplements_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SupplementsState {
  List<SupplementsTypeModel> get supplementsData =>
      throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupplementsStateCopyWith<SupplementsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplementsStateCopyWith<$Res> {
  factory $SupplementsStateCopyWith(
          SupplementsState value, $Res Function(SupplementsState) then) =
      _$SupplementsStateCopyWithImpl<$Res, SupplementsState>;
  @useResult
  $Res call(
      {List<SupplementsTypeModel> supplementsData,
      Status status,
      String? errorMessage});
}

/// @nodoc
class _$SupplementsStateCopyWithImpl<$Res, $Val extends SupplementsState>
    implements $SupplementsStateCopyWith<$Res> {
  _$SupplementsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supplementsData = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      supplementsData: null == supplementsData
          ? _value.supplementsData
          : supplementsData // ignore: cast_nullable_to_non_nullable
              as List<SupplementsTypeModel>,
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
abstract class _$$SupplementsStateImplCopyWith<$Res>
    implements $SupplementsStateCopyWith<$Res> {
  factory _$$SupplementsStateImplCopyWith(_$SupplementsStateImpl value,
          $Res Function(_$SupplementsStateImpl) then) =
      __$$SupplementsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SupplementsTypeModel> supplementsData,
      Status status,
      String? errorMessage});
}

/// @nodoc
class __$$SupplementsStateImplCopyWithImpl<$Res>
    extends _$SupplementsStateCopyWithImpl<$Res, _$SupplementsStateImpl>
    implements _$$SupplementsStateImplCopyWith<$Res> {
  __$$SupplementsStateImplCopyWithImpl(_$SupplementsStateImpl _value,
      $Res Function(_$SupplementsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supplementsData = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SupplementsStateImpl(
      supplementsData: null == supplementsData
          ? _value._supplementsData
          : supplementsData // ignore: cast_nullable_to_non_nullable
              as List<SupplementsTypeModel>,
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

class _$SupplementsStateImpl implements _SupplementsState {
  _$SupplementsStateImpl(
      {final List<SupplementsTypeModel> supplementsData = const [],
      this.status = Status.initial,
      this.errorMessage})
      : _supplementsData = supplementsData;

  final List<SupplementsTypeModel> _supplementsData;
  @override
  @JsonKey()
  List<SupplementsTypeModel> get supplementsData {
    if (_supplementsData is EqualUnmodifiableListView) return _supplementsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supplementsData);
  }

  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SupplementsState(supplementsData: $supplementsData, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplementsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._supplementsData, _supplementsData) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_supplementsData),
      status,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupplementsStateImplCopyWith<_$SupplementsStateImpl> get copyWith =>
      __$$SupplementsStateImplCopyWithImpl<_$SupplementsStateImpl>(
          this, _$identity);
}

abstract class _SupplementsState implements SupplementsState {
  factory _SupplementsState(
      {final List<SupplementsTypeModel> supplementsData,
      final Status status,
      final String? errorMessage}) = _$SupplementsStateImpl;

  @override
  List<SupplementsTypeModel> get supplementsData;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SupplementsStateImplCopyWith<_$SupplementsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
