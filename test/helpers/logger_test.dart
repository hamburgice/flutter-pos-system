import 'package:flutter_test/flutter_test.dart';
import 'package:possystem/helpers/logger.dart';

void main() {
  group('Logger', () {
    test('Should keep errors local', () {
      final before = Log.errorCount;
      Log.err(Exception('hi'), 'there', null, true);

      expect(Log.errorCount, equals(before + 1));
      expect(Log.current, isNull);
    });

    test('Should keep analytics local', () {
      Log.ger('app_clear_data', {'test': '1', 'key': 2}, true);

      expect(Log.current, isNull);
    });
  });
}
