# Conversator

### Why ?

With conversator, you can send data/message across files. It works like web socket but it runs locally.

### How to use ?

```dart
void main(List<String> arguments) {
  conversation.listen('onMsg', ((String data) => print(data)));
  conversation.listen<String>('msg', ((data) => print(data)));

  conversation.speak('msg', 'Hello Bro');
  conversation.speak<String>('msg', 'Hey Bro');
}
```

### You can also use these in different files (speak in file 1, listen in file 2). 