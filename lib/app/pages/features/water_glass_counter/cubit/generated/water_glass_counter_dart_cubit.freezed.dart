// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../water_glass_counter_dart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WaterGlassCounterState {
  List<WaterModel?> get model => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WaterGlassCounterStateCopyWith<WaterGlassCounterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaterGlassCounterStateCopyWith<$Res> {
  factory $WaterGlassCounterStateCopyWith(WaterGlassCounterState value,
          $Res Function(WaterGlassCounterState) then) =
      _$WaterGlassCounterStateCopyWithImpl<$Res, WaterGlassCounterState>;
  @useResult
  $Res call({List<WaterModel?> model, Status status, String? errorMessage});
}

/// @nodoc
class _$WaterGlassCounterStateCopyWithImpl<$Res,
        $Val extends WaterGlassCounterState>
    implements $WaterGlassCounterStateCopyWith<$Res> {
  _$WaterGlassCounterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as List<WaterModel?>,
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
abstract class _$$WaterGlassCounterStateImplCopyWith<$Res>
    implements $WaterGlassCounterStateCopyWith<$Res> {
  factory _$$WaterGlassCounterStateImplCopyWith(
          _$WaterGlassCounterStateImpl value,
          $Res Function(_$WaterGlassCounterStateImpl) then) =
      __$$WaterGlassCounterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WaterModel?> model, Status status, String? errorMessage});
}

/// @nodoc
class __$$WaterGlassCounterStateImplCopyWithImpl<$Res>
    extends _$WaterGlassCounterStateCopyWithImpl<$Res,
        _$WaterGlassCounterStateImpl>
    implements _$$WaterGlassCounterStateImplCopyWith<$Res> {
  __$$WaterGlassCounterStateImplCopyWithImpl(
      _$WaterGlassCounterStateImpl _value,
      $Res Function(_$WaterGlassCounterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$WaterGlassCounterStateImpl(
      model: null == model
          ? _value._model
          : model // ignore: cast_nullable_to_non_nullable
              as List<WaterModel?>,
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

class _$WaterGlassCounterStateImpl implements _WaterGlassCounterState {
  _$WaterGlassCounterStateImpl(
      {final List<WaterModel?> model = const [],
      this.status = Status.initial,
      this.errorMessage})
      : _model = model;

  final List<WaterModel?> _model;
  @override
  @JsonKey()
  List<WaterModel?> get model {
    if (_model is EqualUnmodifiableListView) return _model;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_model);
  }

  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'WaterGlassCounterState(model: $model, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaterGlassCounterStateImpl &&
            const DeepCollectionEquality().equals(other._model, _model) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_model), status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WaterGlassCounterStateImplCopyWith<_$WaterGlassCounterStateImpl>
      get copyWith => __$$WaterGlassCounterStateImplCopyWithImpl<
          _$WaterGlassCounterStateImpl>(this, _$identity);
}

abstract class _WaterGlassCounterState implements WaterGlassCounterState {
  factory _WaterGlassCounterState(
      {final List<WaterModel?> model,
      final Status status,
      final String? errorMessage}) = _$WaterGlassCounterStateImpl;

  @override
  List<WaterModel?> get model;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$WaterGlassCounterStateImplCopyWith<_$WaterGlassCounterStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
