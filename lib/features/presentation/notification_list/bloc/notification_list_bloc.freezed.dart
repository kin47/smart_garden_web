// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getNotifications,
    required TResult Function(int notificationId) readNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? getNotifications,
    TResult? Function(int notificationId)? readNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getNotifications,
    TResult Function(int notificationId)? readNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNotifications value) getNotifications,
    required TResult Function(_ReadNotification value) readNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNotifications value)? getNotifications,
    TResult? Function(_ReadNotification value)? readNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNotifications value)? getNotifications,
    TResult Function(_ReadNotification value)? readNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationListEventCopyWith<$Res> {
  factory $NotificationListEventCopyWith(NotificationListEvent value,
          $Res Function(NotificationListEvent) then) =
      _$NotificationListEventCopyWithImpl<$Res, NotificationListEvent>;
}

/// @nodoc
class _$NotificationListEventCopyWithImpl<$Res,
        $Val extends NotificationListEvent>
    implements $NotificationListEventCopyWith<$Res> {
  _$NotificationListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetNotificationsImplCopyWith<$Res> {
  factory _$$GetNotificationsImplCopyWith(_$GetNotificationsImpl value,
          $Res Function(_$GetNotificationsImpl) then) =
      __$$GetNotificationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$GetNotificationsImplCopyWithImpl<$Res>
    extends _$NotificationListEventCopyWithImpl<$Res, _$GetNotificationsImpl>
    implements _$$GetNotificationsImplCopyWith<$Res> {
  __$$GetNotificationsImplCopyWithImpl(_$GetNotificationsImpl _value,
      $Res Function(_$GetNotificationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$GetNotificationsImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetNotificationsImpl implements _GetNotifications {
  const _$GetNotificationsImpl({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'NotificationListEvent.getNotifications(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationsImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotificationsImplCopyWith<_$GetNotificationsImpl> get copyWith =>
      __$$GetNotificationsImplCopyWithImpl<_$GetNotificationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getNotifications,
    required TResult Function(int notificationId) readNotification,
  }) {
    return getNotifications(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? getNotifications,
    TResult? Function(int notificationId)? readNotification,
  }) {
    return getNotifications?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getNotifications,
    TResult Function(int notificationId)? readNotification,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNotifications value) getNotifications,
    required TResult Function(_ReadNotification value) readNotification,
  }) {
    return getNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNotifications value)? getNotifications,
    TResult? Function(_ReadNotification value)? readNotification,
  }) {
    return getNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNotifications value)? getNotifications,
    TResult Function(_ReadNotification value)? readNotification,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications(this);
    }
    return orElse();
  }
}

abstract class _GetNotifications implements NotificationListEvent {
  const factory _GetNotifications({required final int page}) =
      _$GetNotificationsImpl;

  int get page;
  @JsonKey(ignore: true)
  _$$GetNotificationsImplCopyWith<_$GetNotificationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReadNotificationImplCopyWith<$Res> {
  factory _$$ReadNotificationImplCopyWith(_$ReadNotificationImpl value,
          $Res Function(_$ReadNotificationImpl) then) =
      __$$ReadNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int notificationId});
}

/// @nodoc
class __$$ReadNotificationImplCopyWithImpl<$Res>
    extends _$NotificationListEventCopyWithImpl<$Res, _$ReadNotificationImpl>
    implements _$$ReadNotificationImplCopyWith<$Res> {
  __$$ReadNotificationImplCopyWithImpl(_$ReadNotificationImpl _value,
      $Res Function(_$ReadNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = null,
  }) {
    return _then(_$ReadNotificationImpl(
      notificationId: null == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReadNotificationImpl implements _ReadNotification {
  const _$ReadNotificationImpl({required this.notificationId});

  @override
  final int notificationId;

  @override
  String toString() {
    return 'NotificationListEvent.readNotification(notificationId: $notificationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadNotificationImpl &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notificationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadNotificationImplCopyWith<_$ReadNotificationImpl> get copyWith =>
      __$$ReadNotificationImplCopyWithImpl<_$ReadNotificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getNotifications,
    required TResult Function(int notificationId) readNotification,
  }) {
    return readNotification(notificationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? getNotifications,
    TResult? Function(int notificationId)? readNotification,
  }) {
    return readNotification?.call(notificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getNotifications,
    TResult Function(int notificationId)? readNotification,
    required TResult orElse(),
  }) {
    if (readNotification != null) {
      return readNotification(notificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNotifications value) getNotifications,
    required TResult Function(_ReadNotification value) readNotification,
  }) {
    return readNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNotifications value)? getNotifications,
    TResult? Function(_ReadNotification value)? readNotification,
  }) {
    return readNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNotifications value)? getNotifications,
    TResult Function(_ReadNotification value)? readNotification,
    required TResult orElse(),
  }) {
    if (readNotification != null) {
      return readNotification(this);
    }
    return orElse();
  }
}

abstract class _ReadNotification implements NotificationListEvent {
  const factory _ReadNotification({required final int notificationId}) =
      _$ReadNotificationImpl;

  int get notificationId;
  @JsonKey(ignore: true)
  _$$ReadNotificationImplCopyWith<_$ReadNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
