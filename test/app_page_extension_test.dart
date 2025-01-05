import 'package:flutter_test/flutter_test.dart';
import 'package:nature_0f_code/routes/route_utils.dart'; // Adjust import path

void main() {
  group('AppPage enum tests', () {
    test('All AppPages have valid paths', () {
      for (final page in AppPage.values) {
        expect(
          page.path,
          isNotEmpty,
          reason: '${page.name} has an empty path!',
        );
        expect(
          page.path.startsWith('/'),
          isTrue,
          reason: '${page.name} path must start with a "/".',
        );
      }
    });

    test('All AppPages have valid names', () {
      for (final page in AppPage.values) {
        expect(
          page.name,
          isNotEmpty,
          reason: '${page.path} has an empty name!',
        );
      }
    });

    test('All AppPages have valid titles', () {
      for (final page in AppPage.values) {
        expect(
          page.title,
          isNotEmpty,
          reason: '${page.name} has an empty title!',
        );
      }
    });

    test('Paths are unique', () {
      final paths = AppPage.values.map((page) => page.path).toSet();
      expect(
        paths.length,
        AppPage.values.length,
        reason: 'Duplicate paths found in AppPage.',
      );
    });

    test('Names are unique', () {
      final names = AppPage.values.map((page) => page.name).toSet();
      expect(
        names.length,
        AppPage.values.length,
        reason: 'Duplicate names found in AppPage.',
      );
    });
  });
}
