import 'package:flutter_test/flutter_test.dart';
import 'package:phone_number_text_input_formatter/phone_number_text_input_formatter.dart';

import 'suits.dart';

void main() {
  group('PhoneNumberTextInputFormatter', () {
    
    group('National phone numbers', () {
      for (var testSuit in suits) {
        group('Phone numbers for country with code +${testSuit.countryCode}', () {
          group('International phone number', () {
            const formatter = PhoneNumberTextInputFormatter();
            for (var testCase in testSuit.international) {
              final formatted = formatter.formatEditUpdate(
                TextEditingValue.empty,
                TextEditingValue(text: testCase.input),
              );
              test('${formatted.text}, ${testCase.formatted}', () {
                expect(formatted.text, testCase.formatted);
              });
            }
          });
          group('International phone number with "+" prefix', () {
            const formatter = PhoneNumberTextInputFormatter(prefix: '+');
            for (var testCase in testSuit.plus) {
              final formatted = formatter.formatEditUpdate(
                TextEditingValue.empty,
                TextEditingValue(text: testCase.input),
              );
              test('${formatted.text}, ${testCase.formatted}', () {
                expect(formatted.text, testCase.formatted);
              });
            }
          });
        });
      }
    });
    
  });
}

