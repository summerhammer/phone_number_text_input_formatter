// This file is a part of the phone_number_text_input_formatter Flutter package
// that provides a text input formatter for phone numbers in different national
// formats.
// ignore_for_file: constant_identifier_names, non_constant_identifier_names

part of phone_number_text_input_formatter;

abstract class NationalPhoneNumberCountryCode {
  static const US = '1';
  static const CA = '1';
  static const KZ = '7';
  static const EG = '20';
  static const ZA = '27';
  static const GR = '30';
  static const NL = '31';
  static const BE = '32';
  static const FR = '33';
  static const ES = '34';
  static const HU = '36';
  static const IT = '39';
  static const RO = '40';
  static const CH = '41';
  static const AT = '43';
  static const GB = '44';
  static const DK = '45';
  static const SE = '46';
  static const NO = '47';
  static const PL = '48';
  static const DE = '49';
  static const PE = '51';
  static const MX = '52';
  static const CU = '53';
  static const AR = '54';
  static const BR = '55';
  static const CL = '56';
  static const CO = '57';
  static const VE = '58';
  static const MY = '60';
  static const AU = '61';
  static const ID = '62';
  static const PH = '63';
  static const NZ = '64';
  static const SG = '65';
  static const TH = '66';
  static const JP = '81';
  static const KR = '82';
  static const VN = '84';
  static const CN = '86';
  static const TR = '90';
  static const IN = '91';
  static const PK = '92';
  static const AF = '93';
  static const LK = '94';
  static const MM = '95';
  static const IR = '98';
  static const SS = '211';
  static const MA = '212';
  static const DZ = '213';
  static const TN = '216';
  static const LY = '218';
  static const GM = '220';
  static const SN = '221';
  static const MR = '222';
  static const ML = '223';
  static const GN = '224';
  static const CI = '225';
  static const BF = '226';
  static const NE = '227';
  static const TG = '228';
  static const BJ = '229';
  static const MU = '230';
  static const LR = '231';
  static const SL = '232';
  static const GH = '233';
  static const NG = '234';
  static const TD = '235';
  static const CF = '236';
  static const CM = '237';
  static const CV = '238';
  static const ST = '239';
  static const GQ = '240';
  static const GA = '241';
  static const CG = '242';
  static const CD = '243';
  static const AO = '244';
  static const GW = '245';
  static const IO = '246';
  static const AC = '247';
  static const SC = '248';
  static const SD = '249';
  static const RW = '250';
  static const ET = '251';
  static const SO = '252';
  static const DJ = '253';
  static const KE = '254';
  static const TZ = '255';
  static const UG = '256';
  static const BI = '257';
  static const MZ = '258';
  static const ZM = '260';
  static const MG = '261';
  static const RE = '262';
  static const ZW = '263';
  static const NA = '264';
  static const MW = '265';
  static const LS = '266';
  static const BW = '267';
  static const SZ = '268';
  static const KM = '269';
  static const SH = '290';
  static const ER = '291';
  static const AW = '297';
  static const FO = '298';
  static const GL = '299';
  static const GI = '350';
  static const PT = '351';
  static const LU = '352';
  static const IE = '353';
  static const IS = '354';
  static const AL = '355';
  static const MT = '356';
  static const CY = '357';
  static const FI = '358';
  static const BG = '359';
  static const LT = '370';
  static const LV = '371';
  static const EE = '372';
  static const MD = '373';
  static const AM = '374';
  static const BY = '375';
  static const AD = '376';
  static const MC = '377';
  static const SM = '378';
  static const VA = '379';
  static const UA = '380';
  static const RS = '381';
  static const ME = '382';
  static const XK = '383';
  static const HR = '385';
  static const SI = '386';
  static const BA = '387';
  static const MK = '389';
  static const CZ = '420';
  static const SK = '421';
  static const LI = '423';
  static const FK = '500';
  static const BZ = '501';
  static const GT = '502';
  static const SV = '503';
  static const HN = '504';
  static const NI = '505';
  static const CR = '506';
  static const PA = '507';
  static const PM = '508';
  static const HT = '509';
  static const GP = '590';
  static const BO = '591';
  static const GY = '592';
  static const EC = '593';
  static const GF = '594';
  static const PY = '595';
  static const MQ = '596';
  static const SR = '597';
  static const UY = '598';
  static const CW = '599';
  static const TL = '670';
  static const NF = '672';
  static const BN = '673';
  static const NR = '674';
  static const PG = '675';
  static const TO = '676';
  static const SB = '677';
  static const VU = '678';
  static const FJ = '679';
  static const PW = '680';
  static const WF = '681';
  static const CK = '682';
  static const NU = '683';
  static const WS = '685';
  static const KI = '686';
  static const NC = '687';
  static const TV = '688';
  static const PF = '689';
  static const TK = '690';
  static const FM = '691';
  static const MH = '692';
  static const KP = '850';
  static const HK = '852';
  static const MO = '853';
  static const KH = '855';
  static const LA = '856';
  static const PN = '870';
  static const BD = '880';
  static const TW = '886';
  static const MV = '960';
  static const LB = '961';
  static const JO = '962';
  static const SY = '963';
  static const IQ = '964';
  static const KW = '965';
  static const SA = '966';
  static const YE = '967';
  static const OM = '968';
  static const PS = '970';
  static const AE = '971';
  static const IL = '972';
  static const BH = '973';
  static const QA = '974';
  static const BT = '975';
  static const MN = '976';
  static const NP = '977';
  static const TJ = '992';
  static const TM = '993';
  static const AZ = '994';
  static const GE = '995';
  static const KG = '996';
  static const UZ = '998';
}