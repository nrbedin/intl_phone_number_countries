import 'package:flutter_test/flutter_test.dart';
import 'package:intl_phone_number_countries/intl_phone_number_countries.dart';
import 'package:intl_phone_number_countries/src/utils/formatter/as_you_type_formatter.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group("AsYouTypeFormatter Test", () {
    test("Assert Test AsYouTypeFormatter", () {
      expect(() {
        AsYouTypeFormatter(
          isoCode: "",
          dialCode: "",
          onInputFormatted: (_) {},
        );
      }, throwsAssertionError);
      expect(() {
        AsYouTypeFormatter(
          isoCode: "",
          dialCode: "",
          onInputFormatted: (_) {},
        );
      }, throwsAssertionError);
    });
  });

  group("Phone Number Object Test", () {
    test("Assert Test getRegionInfoFromPhoneNumber", () {
      expect(
        PhoneNumber.getRegionInfoFromPhoneNumber('', ""),
        throwsAssertionError,
      );
    });
  });
}
