// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DailyNewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetDailyNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetDailyNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetDailyNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetDailyNews value) onGetDailyNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetDailyNews value)? onGetDailyNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetDailyNews value)? onGetDailyNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyNewsEventCopyWith<$Res> {
  factory $DailyNewsEventCopyWith(
          DailyNewsEvent value, $Res Function(DailyNewsEvent) then) =
      _$DailyNewsEventCopyWithImpl<$Res, DailyNewsEvent>;
}

/// @nodoc
class _$DailyNewsEventCopyWithImpl<$Res, $Val extends DailyNewsEvent>
    implements $DailyNewsEventCopyWith<$Res> {
  _$DailyNewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnGetDailyNewsCopyWith<$Res> {
  factory _$$OnGetDailyNewsCopyWith(
          _$OnGetDailyNews value, $Res Function(_$OnGetDailyNews) then) =
      __$$OnGetDailyNewsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnGetDailyNewsCopyWithImpl<$Res>
    extends _$DailyNewsEventCopyWithImpl<$Res, _$OnGetDailyNews>
    implements _$$OnGetDailyNewsCopyWith<$Res> {
  __$$OnGetDailyNewsCopyWithImpl(
      _$OnGetDailyNews _value, $Res Function(_$OnGetDailyNews) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnGetDailyNews implements OnGetDailyNews {
  const _$OnGetDailyNews();

  @override
  String toString() {
    return 'DailyNewsEvent.onGetDailyNews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnGetDailyNews);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetDailyNews,
  }) {
    return onGetDailyNews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetDailyNews,
  }) {
    return onGetDailyNews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetDailyNews,
    required TResult orElse(),
  }) {
    if (onGetDailyNews != null) {
      return onGetDailyNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetDailyNews value) onGetDailyNews,
  }) {
    return onGetDailyNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetDailyNews value)? onGetDailyNews,
  }) {
    return onGetDailyNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetDailyNews value)? onGetDailyNews,
    required TResult orElse(),
  }) {
    if (onGetDailyNews != null) {
      return onGetDailyNews(this);
    }
    return orElse();
  }
}

abstract class OnGetDailyNews implements DailyNewsEvent {
  const factory OnGetDailyNews() = _$OnGetDailyNews;
}

/// @nodoc
mixin _$DailyNewsState {
  ApiRequestStatus<dynamic> get apiRequestStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DailyNewsStateCopyWith<DailyNewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyNewsStateCopyWith<$Res> {
  factory $DailyNewsStateCopyWith(
          DailyNewsState value, $Res Function(DailyNewsState) then) =
      _$DailyNewsStateCopyWithImpl<$Res, DailyNewsState>;
  @useResult
  $Res call({ApiRequestStatus<dynamic> apiRequestStatus});
}

/// @nodoc
class _$DailyNewsStateCopyWithImpl<$Res, $Val extends DailyNewsState>
    implements $DailyNewsStateCopyWith<$Res> {
  _$DailyNewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiRequestStatus = null,
  }) {
    return _then(_value.copyWith(
      apiRequestStatus: null == apiRequestStatus
          ? _value.apiRequestStatus
          : apiRequestStatus // ignore: cast_nullable_to_non_nullable
              as ApiRequestStatus<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DailyNewsStateCopyWith<$Res>
    implements $DailyNewsStateCopyWith<$Res> {
  factory _$$_DailyNewsStateCopyWith(
          _$_DailyNewsState value, $Res Function(_$_DailyNewsState) then) =
      __$$_DailyNewsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiRequestStatus<dynamic> apiRequestStatus});
}

/// @nodoc
class __$$_DailyNewsStateCopyWithImpl<$Res>
    extends _$DailyNewsStateCopyWithImpl<$Res, _$_DailyNewsState>
    implements _$$_DailyNewsStateCopyWith<$Res> {
  __$$_DailyNewsStateCopyWithImpl(
      _$_DailyNewsState _value, $Res Function(_$_DailyNewsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiRequestStatus = null,
  }) {
    return _then(_$_DailyNewsState(
      apiRequestStatus: null == apiRequestStatus
          ? _value.apiRequestStatus
          : apiRequestStatus // ignore: cast_nullable_to_non_nullable
              as ApiRequestStatus<dynamic>,
    ));
  }
}

/// @nodoc

class _$_DailyNewsState implements _DailyNewsState {
  const _$_DailyNewsState(
      {this.apiRequestStatus = const InitialApiRequestStatus()});

  @override
  @JsonKey()
  final ApiRequestStatus<dynamic> apiRequestStatus;

  @override
  String toString() {
    return 'DailyNewsState(apiRequestStatus: $apiRequestStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DailyNewsState &&
            (identical(other.apiRequestStatus, apiRequestStatus) ||
                other.apiRequestStatus == apiRequestStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiRequestStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DailyNewsStateCopyWith<_$_DailyNewsState> get copyWith =>
      __$$_DailyNewsStateCopyWithImpl<_$_DailyNewsState>(this, _$identity);
}

abstract class _DailyNewsState implements DailyNewsState {
  const factory _DailyNewsState(
      {final ApiRequestStatus<dynamic> apiRequestStatus}) = _$_DailyNewsState;

  @override
  ApiRequestStatus<dynamic> get apiRequestStatus;
  @override
  @JsonKey(ignore: true)
  _$$_DailyNewsStateCopyWith<_$_DailyNewsState> get copyWith =>
      throw _privateConstructorUsedError;
}
