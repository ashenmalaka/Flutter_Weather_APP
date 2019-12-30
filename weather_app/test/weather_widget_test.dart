import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/ui/Weather.dart';
import 'package:flutter/material.dart';

void main(){

  testWidgets('Weather Widgets Test', (WidgetTester tester) async{
    await tester.pumpWidget(Weather());

    expect(find.byType(RichText), findsWidgets);
  });
}