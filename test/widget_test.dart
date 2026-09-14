import 'package:clean_architecture/injections/injection.dart';
import 'package:clean_architecture/main.dart';
import 'package:clean_architecture/src/utilities/shared_pref_helper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    await SharedPrefHelper().init();
    locator.reset();
    configureDependencies();
  });

  testWidgets('App initializes successfully smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pump(const Duration(seconds: 2));
    await tester.pump(const Duration(milliseconds: 500));
    expect(find.byType(MyApp), findsOneWidget);
  });
}
