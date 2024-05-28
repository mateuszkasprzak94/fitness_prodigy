// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../muscle_anatomy_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MuscleAnatomyState {
  List<ExerciseExamplesModel> get exercisesData =>
      throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MuscleAnatomyStateCopyWith<MuscleAnatomyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MuscleAnatomyStateCopyWith<$Res> {
  factory $MuscleAnatomyStateCopyWith(
          MuscleAnatomyState value, $Res Function(MuscleAnatomyState) then) =
      _$MuscleAnatomyStateCopyWithImpl<$Res, MuscleAnatomyState>;
  @useResult
  $Res call(
      {List<ExerciseExamplesModel> exercisesData,
      Status status,
      String? errorMessage});
}

/// @nodoc
class _$MuscleAnatomyStateCopyWithImpl<$Res, $Val extends MuscleAnatomyState>
    implements $MuscleAnatomyStateCopyWith<$Res> {
  _$MuscleAnatomyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercisesData = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      exercisesData: null == exercisesData
          ? _value.exercisesData
          : exercisesData // ignore: cast_nullable_to_non_nullable
              as List<ExerciseExamplesModel>,
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
abstract class _$$MuscleAnatomyStateImplCopyWith<$Res>
    implements $MuscleAnatomyStateCopyWith<$Res> {
  factory _$$MuscleAnatomyStateImplCopyWith(_$MuscleAnatomyStateImpl value,
          $Res Function(_$MuscleAnatomyStateImpl) then) =
      __$$MuscleAnatomyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ExerciseExamplesModel> exercisesData,
      Status status,
      String? errorMessage});
}

/// @nodoc
class __$$MuscleAnatomyStateImplCopyWithImpl<$Res>
    extends _$MuscleAnatomyStateCopyWithImpl<$Res, _$MuscleAnatomyStateImpl>
    implements _$$MuscleAnatomyStateImplCopyWith<$Res> {
  __$$MuscleAnatomyStateImplCopyWithImpl(_$MuscleAnatomyStateImpl _value,
      $Res Function(_$MuscleAnatomyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercisesData = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$MuscleAnatomyStateImpl(
      exercisesData: null == exercisesData
          ? _value._exercisesData
          : exercisesData // ignore: cast_nullable_to_non_nullable
              as List<ExerciseExamplesModel>,
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

class _$MuscleAnatomyStateImpl implements _MuscleAnatomyState {
  _$MuscleAnatomyStateImpl(
      {final List<ExerciseExamplesModel> exercisesData = const [],
      this.status = Status.initial,
      this.errorMessage})
      : _exercisesData = exercisesData;

  final List<ExerciseExamplesModel> _exercisesData;
  @override
  @JsonKey()
  List<ExerciseExamplesModel> get exercisesData {
    if (_exercisesData is EqualUnmodifiableListView) return _exercisesData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercisesData);
  }

  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'MuscleAnatomyState(exercisesData: $exercisesData, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MuscleAnatomyStateImpl &&
            const DeepCollectionEquality()
                .equals(other._exercisesData, _exercisesData) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_exercisesData),
      status,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MuscleAnatomyStateImplCopyWith<_$MuscleAnatomyStateImpl> get copyWith =>
      __$$MuscleAnatomyStateImplCopyWithImpl<_$MuscleAnatomyStateImpl>(
          this, _$identity);
}

abstract class _MuscleAnatomyState implements MuscleAnatomyState {
  factory _MuscleAnatomyState(
      {final List<ExerciseExamplesModel> exercisesData,
      final Status status,
      final String? errorMessage}) = _$MuscleAnatomyStateImpl;

  @override
  List<ExerciseExamplesModel> get exercisesData;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$MuscleAnatomyStateImplCopyWith<_$MuscleAnatomyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
