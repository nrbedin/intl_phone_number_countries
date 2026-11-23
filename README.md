# intl_phone_number_countries

[![pub package](https://img.shields.io/pub/v/intl_phone_number_countries.svg)](https://pub.dev/packages/intl_phone_number_countries)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

A Flutter widget for international phone number input: country selector with flags, as-you-type formatting, validation and parsing, for every country.

This package is a fork of [`intl_phone_number_input`](https://pub.dev/packages/intl_phone_number_input) by Ogunye Nathaniel Oluwatobiloba (MIT). It keeps the original API and adds what was needed for a production app.

## What is different from the original

| | `intl_phone_number_input` | `intl_phone_number_countries` |
| --- | :-: | :-: |
| Country selector, flags and search | ✅ | ✅ |
| As-you-type formatting and validation | ✅ | ✅ |
| **Read-only field** (`readOnly`) | ❌ | ✅ |

`readOnly: true` shows the number with its mask and country, but the user cannot edit it. Useful when the number was already confirmed and should only be displayed.

## Installation

```yaml
dependencies:
  intl_phone_number_countries: ^1.0.0
```

```dart
import 'package:intl_phone_number_countries/intl_phone_number_countries.dart';
```

## Usage

### Phone number field

```dart
final controller = TextEditingController();

InternationalPhoneNumberInput(
  initialValue: PhoneNumber(isoCode: 'BR'),
  textFieldController: controller,
  selectorConfig: const SelectorConfig(
    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
  ),
  onInputChanged: (PhoneNumber number) {
    debugPrint(number.phoneNumber); // e.g. +5516999999999
  },
  onInputValidated: (bool isValid) {
    debugPrint('valid: $isValid');
  },
);
```

### Read-only field

```dart
InternationalPhoneNumberInput(
  initialValue: PhoneNumber(phoneNumber: '+5516999999999', isoCode: 'BR'),
  readOnly: true,
  onInputChanged: (_) {},
);
```

### Parsing a number

```dart
final number = await PhoneNumber.getRegionInfoFromPhoneNumber('+234 500 500 5005');
print(number.isoCode);       // NG
print(number.parseNumber()); // number without the dial code
```

`getRegionInfoFromPhoneNumber(String phoneNumber, [String isoCode])` also accepts an optional ISO code for numbers without a country prefix.

## Example

A runnable app is available in [`example/`](example/), showing the dropdown, dialog and bottom sheet selectors.

## Resumo em português

Campo de telefone internacional para Flutter, com seletor de país, máscara enquanto digita, validação e parsing. É um fork do `intl_phone_number_input` (MIT) que mantém a mesma API e acrescenta o parâmetro **`readOnly`**, para exibir o número com máscara e país sem permitir edição.

## Credits and license

Based on [`intl_phone_number_input`](https://github.com/natintosh/intl_phone_number_input) by Ogunye Nathaniel Oluwatobiloba. Modifications by [Naiara Bedin](https://nrbedin.github.io).

MIT, see [LICENSE](LICENSE).
