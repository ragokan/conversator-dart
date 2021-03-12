


```dart
void main(List<String> arguments) {
  conversation.listen('onMsg', ((String data) => print(data)));
  conversation.listen<String>('msg', ((data) => print(data)));

  conversation.speak('msg', 'Hello Bro');
  conversation.speak<String>('msg', 'Hey Bro');
}
```