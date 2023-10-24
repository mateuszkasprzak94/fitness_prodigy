// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'motivation_quotes_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MotivationQuotesState {
  QuoteModel? get model => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  List<QuoteModel> get favoriteQuotes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MotivationQuotesStateCopyWith<MotivationQuotesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotivationQuotesStateCopyWith<$Res> {
  factory $MotivationQuotesStateCopyWith(MotivationQuotesState value,
          $Res Function(MotivationQuotesState) then) =
      _$MotivationQuotesStateCopyWithImpl<$Res, MotivationQuotesState>;
  @useResult
  $Res call(
      {QuoteModel? model,
      Status status,
      String? errorMessage,
      List<QuoteModel> favoriteQuotes});

  $QuoteModelCopyWith<$Res>? get model;
}

/// @nodoc
class _$MotivationQuotesStateCopyWithImpl<$Res,
        $Val extends MotivationQuotesState>
    implements $MotivationQuotesStateCopyWith<$Res> {
  _$MotivationQuotesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? favoriteQuotes = null,
  }) {
    return _then(_value.copyWith(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as QuoteModel?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      favoriteQuotes: null == favoriteQuotes
          ? _value.favoriteQuotes
          : favoriteQuotes // ignore: cast_nullable_to_non_nullable
              as List<QuoteModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuoteModelCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $QuoteModelCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MotivationQuotesStateImplCopyWith<$Res>
    implements $MotivationQuotesStateCopyWith<$Res> {
  factory _$$MotivationQuotesStateImplCopyWith(
          _$MotivationQuotesStateImpl value,
          $Res Function(_$MotivationQuotesStateImpl) then) =
      __$$MotivationQuotesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {QuoteModel? model,
      Status status,
      String? errorMessage,
      List<QuoteModel> favoriteQuotes});

  @override
  $QuoteModelCopyWith<$Res>? get model;
}

/// @nodoc
class __$$MotivationQuotesStateImplCopyWithImpl<$Res>
    extends _$MotivationQuotesStateCopyWithImpl<$Res,
        _$MotivationQuotesStateImpl>
    implements _$$MotivationQuotesStateImplCopyWith<$Res> {
  __$$MotivationQuotesStateImplCopyWithImpl(_$MotivationQuotesStateImpl _value,
      $Res Function(_$MotivationQuotesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? favoriteQuotes = null,
  }) {
    return _then(_$MotivationQuotesStateImpl(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as QuoteModel?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      favoriteQuotes: null == favoriteQuotes
          ? _value._favoriteQuotes
          : favoriteQuotes // ignore: cast_nullable_to_non_nullable
              as List<QuoteModel>,
    ));
  }
}

/// @nodoc

class _$MotivationQuotesStateImpl implements _MotivationQuotesState {
  _$MotivationQuotesStateImpl(
      {this.model,
      this.status = Status.initial,
      this.errorMessage,
      final List<QuoteModel> favoriteQuotes = const []})
      : _favoriteQuotes = favoriteQuotes;

  @override
  final QuoteModel? model;
  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;
  final List<QuoteModel> _favoriteQuotes;
  @override
  @JsonKey()
  List<QuoteModel> get favoriteQuotes {
    if (_favoriteQuotes is EqualUnmodifiableListView) return _favoriteQuotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteQuotes);
  }

  @override
  String toString() {
    return 'MotivationQuotesState(model: $model, status: $status, errorMessage: $errorMessage, favoriteQuotes: $favoriteQuotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MotivationQuotesStateImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._favoriteQuotes, _favoriteQuotes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model, status, errorMessage,
      const DeepCollectionEquality().hash(_favoriteQuotes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MotivationQuotesStateImplCopyWith<_$MotivationQuotesStateImpl>
      get copyWith => __$$MotivationQuotesStateImplCopyWithImpl<
          _$MotivationQuotesStateImpl>(this, _$identity);
}

abstract class _MotivationQuotesState implements MotivationQuotesState {
  factory _MotivationQuotesState(
      {final QuoteModel? model,
      final Status status,
      final String? errorMessage,
      final List<QuoteModel> favoriteQuotes}) = _$MotivationQuotesStateImpl;

  @override
  QuoteModel? get model;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  List<QuoteModel> get favoriteQuotes;
  @override
  @JsonKey(ignore: true)
  _$$MotivationQuotesStateImplCopyWith<_$MotivationQuotesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
