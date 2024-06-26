// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../event_planner_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventPlannerPageState {
  List<ItemModel> get items => throw _privateConstructorUsedError;
  bool get loadingErrorOccured => throw _privateConstructorUsedError;
  bool get removingErrorOccured => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventPlannerPageStateCopyWith<EventPlannerPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventPlannerPageStateCopyWith<$Res> {
  factory $EventPlannerPageStateCopyWith(EventPlannerPageState value,
          $Res Function(EventPlannerPageState) then) =
      _$EventPlannerPageStateCopyWithImpl<$Res, EventPlannerPageState>;
  @useResult
  $Res call(
      {List<ItemModel> items,
      bool loadingErrorOccured,
      bool removingErrorOccured});
}

/// @nodoc
class _$EventPlannerPageStateCopyWithImpl<$Res,
        $Val extends EventPlannerPageState>
    implements $EventPlannerPageStateCopyWith<$Res> {
  _$EventPlannerPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? loadingErrorOccured = null,
    Object? removingErrorOccured = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
      loadingErrorOccured: null == loadingErrorOccured
          ? _value.loadingErrorOccured
          : loadingErrorOccured // ignore: cast_nullable_to_non_nullable
              as bool,
      removingErrorOccured: null == removingErrorOccured
          ? _value.removingErrorOccured
          : removingErrorOccured // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventPlannerPageStateImplCopyWith<$Res>
    implements $EventPlannerPageStateCopyWith<$Res> {
  factory _$$EventPlannerPageStateImplCopyWith(
          _$EventPlannerPageStateImpl value,
          $Res Function(_$EventPlannerPageStateImpl) then) =
      __$$EventPlannerPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ItemModel> items,
      bool loadingErrorOccured,
      bool removingErrorOccured});
}

/// @nodoc
class __$$EventPlannerPageStateImplCopyWithImpl<$Res>
    extends _$EventPlannerPageStateCopyWithImpl<$Res,
        _$EventPlannerPageStateImpl>
    implements _$$EventPlannerPageStateImplCopyWith<$Res> {
  __$$EventPlannerPageStateImplCopyWithImpl(_$EventPlannerPageStateImpl _value,
      $Res Function(_$EventPlannerPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? loadingErrorOccured = null,
    Object? removingErrorOccured = null,
  }) {
    return _then(_$EventPlannerPageStateImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
      loadingErrorOccured: null == loadingErrorOccured
          ? _value.loadingErrorOccured
          : loadingErrorOccured // ignore: cast_nullable_to_non_nullable
              as bool,
      removingErrorOccured: null == removingErrorOccured
          ? _value.removingErrorOccured
          : removingErrorOccured // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EventPlannerPageStateImpl implements _EventPlannerPageState {
  _$EventPlannerPageStateImpl(
      {final List<ItemModel> items = const [],
      this.loadingErrorOccured = false,
      this.removingErrorOccured = false})
      : _items = items;

  final List<ItemModel> _items;
  @override
  @JsonKey()
  List<ItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final bool loadingErrorOccured;
  @override
  @JsonKey()
  final bool removingErrorOccured;

  @override
  String toString() {
    return 'EventPlannerPageState(items: $items, loadingErrorOccured: $loadingErrorOccured, removingErrorOccured: $removingErrorOccured)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventPlannerPageStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.loadingErrorOccured, loadingErrorOccured) ||
                other.loadingErrorOccured == loadingErrorOccured) &&
            (identical(other.removingErrorOccured, removingErrorOccured) ||
                other.removingErrorOccured == removingErrorOccured));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      loadingErrorOccured,
      removingErrorOccured);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventPlannerPageStateImplCopyWith<_$EventPlannerPageStateImpl>
      get copyWith => __$$EventPlannerPageStateImplCopyWithImpl<
          _$EventPlannerPageStateImpl>(this, _$identity);
}

abstract class _EventPlannerPageState implements EventPlannerPageState {
  factory _EventPlannerPageState(
      {final List<ItemModel> items,
      final bool loadingErrorOccured,
      final bool removingErrorOccured}) = _$EventPlannerPageStateImpl;

  @override
  List<ItemModel> get items;
  @override
  bool get loadingErrorOccured;
  @override
  bool get removingErrorOccured;
  @override
  @JsonKey(ignore: true)
  _$$EventPlannerPageStateImplCopyWith<_$EventPlannerPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
