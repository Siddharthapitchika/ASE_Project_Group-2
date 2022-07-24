import 'package:ase_project1/BackEnd_Firebase/V1.0/registerPage.dart';
import 'package:ase_project1/Pages/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ase_project1/main.dart';
import 'package:ase_project1/Pages/loginpage.dart';
import 'package:ase_project1/Pages/registerPage.dart' as app;

void main() {
  group('App test', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    //Firebase.initializeApp();
    testWidgets("Full app test", (tester) async {
      app.RegisterScreen();
      await tester.pumpAndSettle();
      await tester.pumpWidget(const RegisterScreen());
      final nameField = find.byType(TextFormField).first;
      final numberField = find.byType(TextFormField).first;
      final emailField = find.byType(TextFormField).first;
      final passwordField = find.byType(TextFormField).last;
      final confirmpasswordField = find.byType(TextFormField).last;
      final SignUpButton = find.byType(ElevatedButton).first;

      await tester.enterText(nameField, "sid");
      await tester.enterText(numberField, "1234567890");
      await tester.enterText(emailField, "sid234@gmail.com");
      await tester.enterText(passwordField, "0987654321");
      await tester.enterText(confirmpasswordField, "0987654321");

      await tester.pumpAndSettle();

      await tester.tap(SignUpButton);
      await tester.pumpAndSettle();

      /* expect(find.text("Don't Have a Account?"), findsOneWidget);
      final titleFinder = find.text("Previous Test");
      expect(find.text("Previous Test"), findsOneWidget);
      await tester.pumpWidget(const HomeApp()); */
    });
  });
}
