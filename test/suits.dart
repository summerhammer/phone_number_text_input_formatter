import 'package:phone_number_text_input_formatter/phone_number_text_input_formatter.dart';

final class TestSuit {
  final String countryCode;
  final List<TestCase> international;
  final List<TestCase> domestic;
  final List<TestCase> plus;
  const TestSuit({
    required this.countryCode,
    required this.international,
    required this.domestic,
    required this.plus,
  });
}

final class TestCase {
  final String input;
  final String formatted;

  const TestCase({required this.input, required this.formatted});
}

const suits = [
  TestSuit(
    countryCode: NationalPhoneNumberCountryCode.AF,
    international: [
      TestCase(input: '93701234567', formatted: '93 70 123 4567'),
      // Add more test cases as needed
    ],
    domestic: [
      TestCase(input: '701234567', formatted: '(701) 234 567'),
      // Add more test cases as needed
    ],
    plus: [
      TestCase(input: '+93701234567', formatted: '+93 70 123 4567'),
      // Add more test cases as needed
    ],
  ),
  TestSuit(
    countryCode: NationalPhoneNumberCountryCode.US,
    international: [
      TestCase(input: '1234567890123', formatted: '1 (234) 567-8901 23'),
    ],
    domestic: [
      TestCase(input: '1234567890123', formatted: '1 (234) 567-8901 23'),
    ],
    plus: [
      TestCase(input: '+1234567890123', formatted: '+1 (234) 567-8901 23'),
      TestCase(input: '1234567890123', formatted: '+1 (234) 567-8901 23'),
    ]
  ),
  TestSuit(
    countryCode: NationalPhoneNumberCountryCode.UA,
    international: [
      TestCase(input: '38012345678901', formatted: '380 (12) 345-67-89 01'),
    ],
    domestic: [
      TestCase(input: '380123456789', formatted: '(380) 123-45-67 89'),
    ],
    plus: [
      TestCase(input: '380123456789', formatted: '+380 (12) 345-67-89'),
      TestCase(input: '+380123456789', formatted: '+380 (12) 345-67-89'),
    ]
  ),
];
