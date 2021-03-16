import 'package:conversator/conversator.dart';

void main(List<String> arguments) {
  conversator.listen('onMsg', ((String data) => print(data)));

  conversator.speak('msg', 'Hello Bro');
}
