// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Flutter Integration Test', () {
    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('switch list and grid layout', () async {
      // First, define the Finders and use them to locate widgets from the
      // test suite. Note: the Strings provided to the `byValueKey` method must
      // be the same as the Strings we used for the Keys in step 1.
      final listGridSwitcher = find.byValueKey('list_grid_switcher');

      await Future.delayed(Duration(seconds: 5));

      // First, tap the button.
      await driver.tap(listGridSwitcher);

      await Future.delayed(Duration(seconds: 5));

      await driver.tap(listGridSwitcher);

      await Future.delayed(Duration(seconds: 5));
    });

    test('verifies the list contains a specific item', () async {
      await Future.delayed(Duration(seconds: 5));

      final listFinder = find.byValueKey('category_list');
      final itemFinder = find.byValueKey('Hospital');

      await driver.scrollUntilVisible(
        // Scroll through the list
        listFinder,
        // Until finding this item
        itemFinder,
        // To scroll down the list, provide a negative value to dyScroll.
        // Ensure that this value is a small enough increment to
        // scroll the item into view without potentially scrolling past it.
        //
        // To scroll through horizontal lists, provide a dxScroll
        // property instead.
        dyScroll: -300.0,
      );

      await Future.delayed(Duration(seconds: 5));

      // Verify that the item contains the correct text.
      expect(
        await driver.getText(itemFinder),
        'Hospital',
      );

      await Future.delayed(Duration(seconds: 5));

      await driver.tap(itemFinder);

      await Future.delayed(Duration(seconds: 5));
    });
  });
}
