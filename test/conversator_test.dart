import 'package:test/test.dart';
import 'package:conversator/conversator.dart';

void main() {
  test('First Conversation', () {
    conversation.listen('message1', (dynamic payload) {
      expect(payload, equals('First Message'));
    });

    conversation.speak('message1', 'First Message');
  });

  test("Conversation With 'on'", () {
    conversation.listen('onMessage2', (dynamic payload) {
      expect(payload, equals('Second Message'));
    });

    conversation.listen('message2', (dynamic payload) {
      expect(payload, equals('Second Message'));
    });

    conversation.speak('message2', 'Second Message');
  });
}
