<div align="center" id="top"> 
  <img src="./.github/app.gif" alt="Intl_phone_number_countries" />

&#xa0;

  <!-- <a href="https://intl_phone_number_countries.netlify.app">Demo</a> -->
</div>

<h1 align="center">Intl_phone_number_countries</h1>

<br>

## :checkered_flag: Starting

```dart
    String phoneNumber =  '+234 500 500 5005';
    PhoneNumber number = await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber);
    String parsableNumber = number.parseNumber();
    `controller reference`.text = parsableNumber
```

### Note

```dart
    PhoneNumber.getRegionInfoFromPhoneNumber(String phoneNumber, [String isoCode])
```

## :memo: License

This project is under license from MIT. For more details, see the [LICENSE](LICENSE.md) file.

&#xa0;

<a href="#top">Back to top</a>
