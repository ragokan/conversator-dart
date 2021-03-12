library conversator;

import 'types/actions.dart';
import 'types/listener.dart';

class Conversation {
  final _listeners = <Listener>{};

  void speak<T>(String event, T message) {
    _listeners.forEach((listener) => {
          if ((listener.event).toLowerCase() == event.toLowerCase() ||
              'on$event'.toLowerCase() == listener.event.toLowerCase())
            {listener.callback(message)}
        });
  }

  void listen<T>(String event, voidCallback<T> callback) {
    var listener = Listener(event, callback as void Function(dynamic));
    _listeners.add(listener);
  }
}

var conversation = Conversation();
