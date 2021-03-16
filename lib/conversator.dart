library conversator;

import 'types/actions.dart';
import 'types/listener.dart';

/// To create a new conversator class for youself, you can use [Conversator].
///
/// If you need only one conversator, you can always use [conversator] alone.
class Conversator {
  final _listeners = <Listener>{};

  /// To speak to all the listeners who are listening the same event, you can
  /// use [speak] function.
  ///```dart
  /// speak('eventName', 'variableToSend');
  /// ```
  void speak<T>(String event, T message) {
    for (var listener in _listeners) {
      if ((listener.event).toLowerCase() == event.toLowerCase() ||
          'on$event'.toLowerCase() == listener.event.toLowerCase()) {
        listener.callback(message);
      }
    }
  }

  /// [listen] function, as its name refers,
  ///  listens for all the speakers' events.
  /// ```dart
  /// // You can do add types by writing listen<String>  or
  /// //  (String variableReceived) for a string.
  ///  listen('eventName', (variableReceived) {
  ///       print(variableReceived);
  ///   });
  /// ```
  void listen<T>(String event, voidCallback<T> callback) {
    var listener = Listener(event, callback as void Function(dynamic));
    _listeners.add(listener);
  }
}

/// The conversator has 2 methods by itself, to call them you can use
/// the examples below.
///```dart
/// conversator.listen(/*code here*/);
/// conversator.speak(/*code here*/);
/// ```
Conversator conversator = Conversator();
