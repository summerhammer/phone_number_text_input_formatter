import 'package:flutter_test/flutter_test.dart';
import 'package:phone_number_text_input_formatter/phone_number_text_input_formatter.dart';

import 'data.dart';

main() {
  group('NationalPhoneNumberTextInputFormatter', () {

    group('UA Phone number', () {

      group('UA international with plus phone numbers', () {
        const formatter = NationalPhoneNumberTextInputFormatter.UA(prefix: '+');
        for (var number in data.UA.plus) {
          final formatted = formatter.formatEditUpdate(
            TextEditingValue.empty,
            TextEditingValue(text: number.input),
          );
          test('${formatted.text}, ${number.formatted}', () {
            expect(formatted.text, number.formatted);
          });
        }
      });

      group('UA international phone numbers', () {
        const formatter = NationalPhoneNumberTextInputFormatter.UA();
        for (var number in data.UA.international) {
          final formatted = formatter.formatEditUpdate(
            TextEditingValue.empty,
            TextEditingValue(text: number.input),
          );
          test('${formatted.text}, ${number.formatted}', () {
            expect(formatted.text, number.formatted);
          });
        }
      });

      group('UA domestic phone numbers', () {
        const formatter = NationalPhoneNumberTextInputFormatter.UA(
          formatType: NationalPhoneNumberFormatType.domestic
        );
        for (var number in data.UA.domestic) {
          final formatted = formatter.formatEditUpdate(
            TextEditingValue.empty,
            TextEditingValue(text: number.input),
          );
          test('${formatted.text}, ${number.formatted}', () {
            expect(formatted.text, number.formatted);
          });
        }
      });

    });

  });
}