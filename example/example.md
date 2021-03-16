### How to use ?

```dart
void main(List<String> arguments) {
  conversator.listen('onMsg', ((String data) => print(data)));
  conversator.listen<String>('msg', ((data) => print(data)));

  conversator.speak('msg', 'Hello Bro');
  conversator.speak<String>('msg', 'Hey Bro');
}
```