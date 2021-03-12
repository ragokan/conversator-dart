import 'types/actions.dart';
import 'types/listener.dart';

class _Conversation {
  final listeners = <Listener>{};

  void speak<T>(String event, T message) {
    listeners.forEach((listener) => {
          if ((listener.event).toLowerCase() == event.toLowerCase() ||
              'on$event'.toLowerCase() == listener.event.toLowerCase())
            {listener.callback(message)}
        });
  }

  void listen<T>(String event, voidCallback<T> callback) {
    var listener = Listener(event, callback);
    listeners.add(listener);
  }
}

var conversation = _Conversation();
