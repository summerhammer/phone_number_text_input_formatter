# Phone Number Text Input Formatter

This is a Flutter package built to provide phone number formatting functionality 
during text input. It's a key helper in creating phone number input fields that 
need to restrict and validate user input in a formatted manner.

## Features

- Zero dependency
- Efficiently formats the phone numbers on-the-fly, with better performance than regular expression-based solutions.
- You can customize the format according to your needs, giving you more flexibility and control.
- Comes with pre-implemented popular international and national phone number formats.

## Usage

Format the phone number using all available international formats:

```dart
TextField(
  keyboardType: TextInputType.phone,
  inputFormatters: [
    FilteringTextInputFormatter.allow(RegExp(r'[0-9,+]')),
    const PhoneNumberTextInputFormatter(prefix: '+'),
  ],
)
```

Format the US phone number in international format:
```dart
TextField(
  keyboardType: TextInputType.phone,
  inputFormatters: [
    FilteringTextInputFormatter.allow(RegExp(r'[0-9,+]')),
    const PhoneNumberTextInputFormatter(
      prefix: '+',
      format: PhoneNumberFormat.international,
    ),
  ],
)
```