/// The Phone Number Text Input Formatter library
///
/// This library provides a text input formatter to format phone numbers.
library phone_number_text_input_formatter;

import 'package:flutter/services.dart';

part 'national_phone_number_country_code.dart';
part 'national_phone_number_text_input_formatter.dart';

/// Class to format text input for phone numbers
///
/// PhoneNumberTextInputFormatter can be configured with a set of formatters.
/// If formatters aren't provided, it will use formatters for various national
/// phone number formats.
///
/// Additionally, a prefix can be defined that is prepended to the phone number.
class PhoneNumberTextInputFormatter extends TextInputFormatter {
  /// An optional prefix to prepend to the phone number
  final String? prefix;

  /// An optional set of formatters to apply on the phone number text input
  final Set<TextInputFormatter>? formatters;

  /// Creates a new PhoneNumberTextInputFormatter
  ///
  const PhoneNumberTextInputFormatter({
    this.prefix,
    this.formatters,
  });

  /// Formats the phone number text input
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // Retrieves the set of formatters, or defaults to a selection of national phone number formats.
    final formatters = this.formatters ?? availableNationalFormatters(prefix: prefix);
    // Apply each formatter until a change in value is detected.
    for (final formatter in formatters) {
      final value = formatter.formatEditUpdate(oldValue, newValue);
      if (value != oldValue) {
        return value;
      }
    }
    // Return original value if no changes in value by the formatters.
    return oldValue;
  }

  /// Returns the set of all available phone number text input formatters
  /// with a defined prefix.
  Set<NationalPhoneNumberTextInputFormatter> availableNationalFormatters({
    String? prefix
  }) => {
    NationalPhoneNumberTextInputFormatter.US(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.CA(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.KZ(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.EG(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.ZA(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.GR(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.NL(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.BE(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.FR(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.ES(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.HU(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.IT(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.RO(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.CH(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.AT(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.GB(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.DK(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.SE(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.NO(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.PL(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.DE(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.PE(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.MX(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.CU(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.AR(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.BR(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.CL(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.CO(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.VE(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.MY(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.AU(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.ID(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.PH(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.NZ(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.SG(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.TH(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.JP(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.KR(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.VN(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.CN(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.TR(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.IN(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.PK(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.AF(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.LK(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.MM(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.IR(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.SS(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.MA(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.DZ(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.TN(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.LY(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.GM(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.SN(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.MR(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.ML(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.GN(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.CI(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.BF(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.NE(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.TG(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.BJ(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.MU(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.LR(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.SL(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.GH(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.NG(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.TD(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.CF(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.CM(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.CV(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.ST(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.GQ(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.GA(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.CG(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.CD(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.AO(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.GW(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.IO(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.AC(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.SC(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.SD(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.RW(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.ET(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.SO(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.DJ(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.KE(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.TZ(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.UG(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.BI(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.MZ(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.ZM(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.MG(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.RE(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.ZW(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.NA(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.MW(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.LS(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.BW(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.SZ(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.KM(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.SH(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.ER(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.AW(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.FO(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.GL(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.GI(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.PT(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.LU(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.IE(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.IS(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.AL(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.MT(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.CY(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.FI(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.BG(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.LT(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.LV(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.EE(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.MD(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.AM(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.BY(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.AD(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.MC(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.SM(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.VA(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.UA(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.RS(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.ME(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.XK(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.HR(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.SI(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.BA(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.MK(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.CZ(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.SK(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.LI(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.FK(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.BZ(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.GT(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.SV(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.HN(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.NI(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.CR(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.PA(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.PM(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.HT(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.GP(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.BO(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.GY(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.EC(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.GF(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.PY(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.MQ(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.SR(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.UY(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.CW(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.TL(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.NF(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.BN(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.NR(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.PG(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.TO(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.SB(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.VU(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.FJ(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.PW(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.WF(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.CK(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.NU(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.WS(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.KI(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.NC(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.TV(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.PF(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.TK(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.FM(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.MH(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.KP(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.HK(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.MO(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.KH(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.LA(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.PN(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.BD(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.TW(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.MV(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.LB(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.JO(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.SY(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.IQ(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.KW(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.SA(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.YE(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.OM(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.PS(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.AE(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.IL(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.BH(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.QA(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.BT(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.MN(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.NP(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.TJ(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.TM(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.AZ(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.GE(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.KG(prefix: prefix),
    NationalPhoneNumberTextInputFormatter.UZ(prefix: prefix),
  };

}