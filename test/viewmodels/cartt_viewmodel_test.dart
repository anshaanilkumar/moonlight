import 'package:flutter_test/flutter_test.dart';
import 'package:moonlightstack/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('CarttViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
