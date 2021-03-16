import 'package:conversator/conversator.dart';

void main(List<String> arguments) {
  // They are totally same
  // conversator.listen('onMsg', ((String data) => print(data)));
  conversator.listen('onMsg', (print));

  conversator.speak('msg', 'Hello Bro');
}
