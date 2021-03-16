import 'package:conversator/conversator.dart' show Conversator;

void main(List<String> args) {
  var myConversator = Conversator();

/* 
  They are same
  myConversator.listen('message', (payload) {
    print(payload);
  });
*/
  myConversator.listen('message', print);

  myConversator.speak('message', 'Hello from conversator!');
}
