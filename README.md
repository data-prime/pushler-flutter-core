# Pushler core

Working with push notifications using the Pushler API and firebase messaging.

## Getting Started

To get started with a package, import the package and call the initialization method. All methods in this package belong to the PushlerCore singleton class.

```dart
import 'package:pushler_core/pushler_core.dart';
// ...
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PushlerCore().initialize();
  runApp(MyApp());
}
// ...
```

Then we call and wait for the authentication method.

```dart
// ...
class MyApp extends StatelessWidget {
  // ...
  @override
  Widget build(BuildContext context) {
    // ...
    FutureBuilder(
      future: PushlerCore().auth(),
      builder: (context, snapshot) {
        // ...
      },
    );
    // ...
  }
}
// ...
```

## Basic methods

Get data of subscribers, notifications and uuid.
```dart
Future<FetchData> getData();
```

Subscribe channel. Returns true on success and false on failure.
* [tag] - subscriber tag.
* [channel] - channel id to subscribe.
```dart
Future<bool> subscribe(String tag, String channel);
```

Unsubscribe channel. Returns true on success and false on failure.
* [tag] - subscriber tag.
* [channel] - channel id to unsubscribe.
```dart
Future<bool> unsubscribe(String tag, String channel);
```

Update mark as read/unread for notification. Returns true on success and false on failure.
* [notificationId] - notification id to update.
* [viewed] - read/unread notification.
```dart
Future<bool> updateNotification(String notificationId, bool viewed);
```

Delete notification. Returns true on success and false on failure.
* [notificationId] - notification id to delete.
```dart
Future<bool> deleteNotification(String notificationId);
```

Get initial message. Returns the initial message with the NewNotification cast or null.
```dart
Future<NewNotification?> getInitialMessage();
```

Watch new invite push notification. Returns stream of [Invite].
```dart
Stream<Invite> watchInvite();
```

Watch new push notification without invite. Returns stream of [NewNotification].
```dart
Stream<NewNotification> watchNewNotification();
```

Watch opened app from notification. Returns stream of [NewNotification].
```dart
Stream<NewNotification> watchOpenedAppFromNotification();
```

## Options methods

Set default base url and delete token.
```dart
Future<void> reset();
```

Watch current base url.
```dart
Stream<String> watchBaseUrl();
```

Set base url and delete auth token.
* [url] - string of base url.
```dart
Future<void> setBaseUrl(String url);
```

Call this method to dispose instance.
```dart
void dispose();
```

## Firebase messaging

Add handler Firebase messaging onMessage.
```dart
void setOnMessage(void Function(RemoteMessage)? onData, {Function? onError,void Function()? onDone,bool? cancelOnError});
```

Add handler Firebase messaging onMessageOpenedApp.
```dart
void setOnMessageOpenedApp(void Function(RemoteMessage)? onData, {Function? onError,void Function()? onDone,bool? cancelOnError});
```

Add handler Firebase messaging onBackgroundMessage.
```dart
void setOnBackgroundMessage({required Future<void> Function(RemoteMessage) handler});
```
