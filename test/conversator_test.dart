import 'package:test/test.dart';
import 'package:conversator/conversator.dart';

void main() {
  test('First conversator', () {
    conversator.listen('message1', (dynamic payload) {
      expect(payload, equals('First Message'));
    });

    conversator.speak('message1', 'First Message');
  });

  test("conversator With 'on'", () {
    conversator.listen('onMessage2', (dynamic payload) {
      expect(payload, equals('Second Message'));
    });

    conversator.listen('message2', (dynamic payload) {
      expect(payload, equals('Second Message'));
    });

    conversator.speak('message2', 'Second Message');
  });
}
