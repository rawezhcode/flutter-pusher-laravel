# flutter pusher laravel

v1.0.1

An unofficial Flutter plugin that wraps [pusher-websocket-java](https://github.com/pusher/pusher-websocket-java) on Android and [pusher-websocket-swift](https://github.com/pusher/pusher-websocket-swift) on iOS.


*Note*: This plugin is still under development, and some APIs might not be available yet. [Feedback](https://github.com/heywhy/flutter-pusher-client/issues) and [Pull Requests](https://github.com/heywhy/flutter-pusher-client/pulls) are most welcome!

This client works with official pusher servers and laravel self hosted pusher websocket server (laravel-websockets).

# How to install
* Add to your pubspec.yaml
```
dependencies:
  flutter_pusher_laravel: 
    path: ...\flutter_pusher_laravel
```

## Getting Started

```dart
import 'package:flutter_pusher_laravel/flutter_pusher_laravel.dart';


void main() {

    FlutterPusher pusher;
    var options = PusherOptions(host: '10.0.2.2', port: 6001, encrypted: false);
    try {
        pusher = FlutterPusher('myKey', options, enableLogging: true);
    } catch (e) {
        print("socket exception zaid");
        print(e);
    }


    Binding To Events #


    Channel channel = pusher.subscribe("notification");
        channel.bind("App\\Events\\Notify", (event) {
        print(event['notification']);
    });


    or

    // Create echo instance
    echo = Echo(
      broadcaster: EchoBroadcasterType.Pusher,
      client: pusher,
    );
    
    // Listening public channel
    echo.channel('notification').listen('Notify', (event) {
      print(event['notification']);
    });


}
```

### Lazy Connect

Connection to the server can be delayed, so set the **lazyConnect** prop on the client constructor.

