// This file is a part of the phone_number_text_input_formatter Flutter package
// that provides a text input formatter for phone numbers in different national
// formats.
// ignore_for_file: non_constant_identifier_names

part of phone_number_text_input_formatter;

/// Enum for differentiating the types of phone number formats.
///
/// It currently supports two types:
/// - `international`: for international phone numbers.
/// - `domestic`: for domestic (national) phone numbers.
enum NationalPhoneNumberFormatType {
  international,
  domestic,
}

/// Typedef for NationalPhoneNumberGroup tuple.
///
/// It represents a group in a phone number format and has the following properties:
/// - `length`: number of digits in the group.
/// - `leading`:  string to put at the beginning of the group.
/// - `trailing`: string to put at the end of the group.
typedef NationalPhoneNumberGroup = ({int length, String leading, String trailing});

/// A core class that implements a text input formatter for phone numbers in
/// different national formats.
///
/// The class utilizes Dart Text Input Formatter API and is particularly
/// aimed at providing an interface for formatting phone numbers entered
/// by a user.
///
/// It has following properties:
/// * `prefix`: a string prefix to add to the phone number
/// * `countryCode`: the country's dialing code
/// * `groups`: the format of the phone number (split into groups)
///
/// This formatter also has specific implementations for different country's
/// phone number formats.
class NationalPhoneNumberTextInputFormatter extends TextInputFormatter {
  final String? prefix;
  final String? countryCode;
  final List<NationalPhoneNumberGroup> groups;

  const NationalPhoneNumberTextInputFormatter({
    this.prefix,
    this.countryCode,
    this.groups = const [],
  });

  const factory NationalPhoneNumberTextInputFormatter.UA({String? prefix, NationalPhoneNumberFormatType formatType}) = _UAPhoneNumberInputFormatter;
  const factory NationalPhoneNumberTextInputFormatter.US({String? prefix, NationalPhoneNumberFormatType formatType}) = _USPhoneNumberInputFormatter;

  factory NationalPhoneNumberTextInputFormatter.CA({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.CA, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.KZ({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.KZ, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.EG({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.EG, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.ZA({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.ZA, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.GR({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.GR, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.NL({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.NL, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.BE({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.BE, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.FR({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.FR, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.ES({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.ES, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.HU({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.HU, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.IT({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.IT, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.RO({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.RO, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.CH({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.CH, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.AT({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.AT, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.GB({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.GB, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.DK({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.DK, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.SE({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.SE, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.NO({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.NO, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.PL({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.PL, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.DE({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.DE, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.PE({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.PE, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.MX({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.MX, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.CU({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.CU, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.AR({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.AR, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.BR({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.BR, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.CL({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.CL, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.CO({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.CO, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.VE({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.VE, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.MY({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.MY, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.AU({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.AU, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.ID({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.ID, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.PH({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.PH, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.NZ({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.NZ, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.SG({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.SG, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.TH({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.TH, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.JP({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.JP, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.KR({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.KR, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.VN({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.VN, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.CN({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.CN, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.TR({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.TR, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.IN({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.IN, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.PK({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.PK, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.AF({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.AF, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.LK({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.LK, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.MM({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.MM, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.IR({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.IR, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.SS({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.SS, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.MA({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.MA, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.DZ({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.DZ, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.TN({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.TN, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.LY({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.LY, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.GM({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.GM, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.SN({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.SN, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.MR({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.MR, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.ML({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.ML, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.GN({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.GN, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.CI({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.CI, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.BF({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.BF, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.NE({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.NE, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.TG({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.TG, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.BJ({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.BJ, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.MU({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.MU, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.LR({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.LR, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.SL({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.SL, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.GH({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.GH, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.NG({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.NG, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.TD({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.TD, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.CF({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.CF, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.CM({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.CM, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.CV({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.CV, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.ST({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.ST, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.GQ({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.GQ, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.GA({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.GA, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.CG({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.CG, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.CD({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.CD, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.AO({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.AO, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.GW({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.GW, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.IO({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.IO, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.AC({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.AC, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.SC({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.SC, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.SD({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.SD, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.RW({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.RW, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.ET({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.ET, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.SO({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.SO, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.DJ({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.DJ, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.KE({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.KE, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.TZ({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.TZ, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.UG({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.UG, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.BI({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.BI, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.MZ({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.MZ, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.ZM({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.ZM, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.MG({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.MG, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.RE({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.RE, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.ZW({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.ZW, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.NA({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.NA, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.MW({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.MW, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.LS({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.LS, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.BW({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.BW, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.SZ({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.SZ, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.KM({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.KM, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.SH({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.SH, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.ER({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.ER, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.AW({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.AW, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.FO({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.FO, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.GL({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.GL, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.GI({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.GI, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.PT({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.PT, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.LU({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.LU, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.IE({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.IE, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.IS({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.IS, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.AL({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.AL, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.MT({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.MT, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.CY({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.CY, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.FI({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.FI, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.BG({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.BG, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.LT({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.LT, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.LV({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.LV, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.EE({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.EE, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.MD({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.MD, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.AM({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.AM, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.BY({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.BY, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.AD({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.AD, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.MC({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.MC, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.SM({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.SM, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.VA({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.VA, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.RS({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.RS, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.ME({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.ME, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.XK({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.XK, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.HR({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.HR, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.SI({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.SI, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.BA({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.BA, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.MK({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.MK, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.CZ({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.CZ, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.SK({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.SK, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.LI({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.LI, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.FK({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.FK, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.BZ({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.BZ, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.GT({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.GT, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.SV({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.SV, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.HN({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.HN, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.NI({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.NI, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.CR({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.CR, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.PA({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.PA, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.PM({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.PM, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.HT({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.HT, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.GP({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.GP, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.BO({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.BO, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.GY({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.GY, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.EC({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.EC, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.GF({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.GF, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.PY({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.PY, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.MQ({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.MQ, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.SR({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.SR, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.UY({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.UY, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.CW({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.CW, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.TL({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.TL, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.NF({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.NF, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.BN({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.BN, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.NR({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.NR, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.PG({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.PG, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.TO({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.TO, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.SB({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.SB, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.VU({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.VU, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.FJ({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.FJ, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.PW({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.PW, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.WF({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.WF, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.CK({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.CK, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.NU({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.NU, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.WS({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.WS, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.KI({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.KI, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.NC({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.NC, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.TV({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.TV, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.PF({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.PF, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.TK({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.TK, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.FM({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.FM, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.MH({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.MH, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.KP({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.KP, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.HK({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.HK, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.MO({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.MO, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.KH({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.KH, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.LA({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.LA, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.PN({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.PN, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.BD({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.BD, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.TW({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.TW, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.MV({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.MV, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.LB({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.LB, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.JO({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.JO, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.SY({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.SY, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.IQ({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.IQ, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.KW({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.KW, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.SA({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.SA, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.YE({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.YE, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.OM({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.OM, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.PS({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.PS, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.AE({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.AE, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.IL({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.IL, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.BH({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.BH, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.QA({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.QA, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.BT({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.BT, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.MN({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.MN, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.NP({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.NP, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.TJ({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.TJ, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.TM({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.TM, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.AZ({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.AZ, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.GE({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.GE, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.KG({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.KG, prefix: prefix, formatType: formatType);
  factory NationalPhoneNumberTextInputFormatter.UZ({String? prefix, NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international}) => _FallbackPhoneNumberInputFormatter(NationalPhoneNumberCountryCode.UZ, prefix: prefix, formatType: formatType);

  NationalPhoneNumberFormatType get formatType => countryCode != null
    ? NationalPhoneNumberFormatType.international
    : NationalPhoneNumberFormatType.domestic;

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
  ) {

    if (newValue.text.isEmpty) {
      return newValue;
    }

    final newValueLength = newValue.text.length;
    final newText = StringBuffer();

    final countryCode = this.countryCode ?? '';
    var usedSubstringIndex = 0;
    var index = 0;

    if (prefix != null) {
      if (newValue.text.startsWith(prefix!)) {
        index = prefix!.length;
      }
      newText.write(prefix);
      usedSubstringIndex = index;
    }

    for (var i = 0; i < countryCode.length; i++) {
      if (newValueLength > index + i) {
        if (newValue.text.substring(index, index + i + 1) != countryCode.substring(0, i + 1)) {
          return oldValue;
        }
      }
    }

    for (var i = 0; i < countryCode.length; i++) {
      if (newValueLength > index + i + 1) {
        newText.write(countryCode.substring(i, i + 1));
        usedSubstringIndex = index + i + 1;
      }
    }

    int offset = countryCode.length;

    for (var group in groups) {
      if (group.leading.isNotEmpty) {
        if (newValueLength >= (offset + index + 1)) {
          newText.write('${group.leading}${newValue.text.substring(usedSubstringIndex, usedSubstringIndex = (offset + index))}');
        }
      }
      offset += group.length;
      if (group.trailing.isNotEmpty) {
        if (newValueLength >= (offset + index + 1)) {
          newText.write('${newValue.text.substring(usedSubstringIndex, usedSubstringIndex = (offset + index))}${group.trailing}');
        }
      }
    }

    // Dump the rest.
    if (newValueLength >= usedSubstringIndex) {
      newText.write(newValue.text.substring(usedSubstringIndex));
    }

    final text = newText.toString();

    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}

// MARK - Default implementation of the nation phone number format

class _FallbackPhoneNumberInputFormatter extends NationalPhoneNumberTextInputFormatter {

  const _FallbackPhoneNumberInputFormatter(String countryCode, {
    super.prefix,
    NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international,
  }) : super(
    countryCode: formatType == NationalPhoneNumberFormatType.international
      ? countryCode
      : null,
    groups: formatType == NationalPhoneNumberFormatType.international
      ? const [
        (length: 2, leading: ' ', trailing: ' '),
        (length: 3, leading: '', trailing: ' '),
        (length: 4, leading: '', trailing: ' '),
      ]
      : const [
        (length: 3, leading: '(', trailing: ') '),
        (length: 3, leading: '', trailing: ' '),
        (length: 4, leading: '', trailing: ' '),
      ],
  );

}

// MARK: - Concrete implementations of the nation phone number formats

/// International: 1 (231) 231-2312 3123, domestic: (123) 456-7890 12
class _USPhoneNumberInputFormatter extends NationalPhoneNumberTextInputFormatter {

  const _USPhoneNumberInputFormatter({
    super.prefix,
    NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international,
  }) : super(
    countryCode: formatType == NationalPhoneNumberFormatType.international
      ? NationalPhoneNumberCountryCode.US
      : null,
    groups: formatType == NationalPhoneNumberFormatType.international
      ? const [
        (length: 3, leading: ' (', trailing: ') '),
        (length: 3, leading: '', trailing: '-'),
        (length: 4, leading: '', trailing: ' '),
      ]
      : const [
        (length: 3, leading: '(', trailing: ') '),
        (length: 3, leading: '', trailing: '-'),
        (length: 4, leading: '', trailing: ' '),
      ],
  );

}

/// International: 380 (12) 345-67-89 123, domestic: (123) 123-45-67 89
class _UAPhoneNumberInputFormatter extends NationalPhoneNumberTextInputFormatter {

  const _UAPhoneNumberInputFormatter({
    super.prefix,
    NationalPhoneNumberFormatType formatType = NationalPhoneNumberFormatType.international,
  }) : super(
    countryCode: formatType == NationalPhoneNumberFormatType.international
      ? NationalPhoneNumberCountryCode.UA
      : null,
    groups: formatType == NationalPhoneNumberFormatType.international
      ? const [
        (length: 2, leading: ' (', trailing: ') '),
        (length: 3, leading: '', trailing: '-'),
        (length: 2, leading: '', trailing: '-'),
        (length: 2, leading: '', trailing: ' '),
      ]
      : const [
        (length: 3, leading: '(', trailing: ') '),
        (length: 3, leading: '', trailing: '-'),
        (length: 2, leading: '', trailing: '-'),
        (length: 2, leading: '', trailing: ' '),
      ],
  );

}
