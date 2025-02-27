import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': 'Doctor is in App',
      'welcome': 'Welcome',
      'loading': 'Loading...',
      'change_to_spanish': 'Change to Spanish',
      'change_to_english': 'Change to English',
      'already_have_account': 'Already have an account?',
      'choose_subscription': 'Choose Your Subscription Package',
      'bronze_package': 'Bronze Package',
      'silver_package': 'Silver Package',
      'gold_package': 'Gold Package',
      'months_access': 'Months Access',
      'year_access': 'Year Access',
      'change_language': 'Change Language',
    },
    'es': {
      'title': 'El doctor está en la aplicación',
      'welcome': 'Bienvenido',
      'loading': 'Cargando...',
      'change_to_spanish': 'Cambiar a español',
      'change_to_english': 'Cambiar a inglés',
      'already_have_account': '¿Ya tienes una cuenta?',
      'choose_subscription': 'Elige tu paquete de suscripción',
      'bronze_package': 'Paquete de Bronce',
      'silver_package': 'Paquete de Plata',
      'gold_package': 'Paquete de Oro',
      'months_access': 'Meses de acceso',
      'year_access': 'Año de acceso',
      'change_language': 'Cambiar idioma',
    },
  };

  String get title {
    return _localizedValues[locale.languageCode]!['title']!;
  }

  String get welcome {
    return _localizedValues[locale.languageCode]!['welcome']!;
  }

  String get loading {
    return _localizedValues[locale.languageCode]!['loading']!;
  }

  String get changeToSpanish {
    return _localizedValues[locale.languageCode]!['change_to_spanish']!;
  }

  String get changeToEnglish {
    return _localizedValues[locale.languageCode]!['change_to_english']!;
  }

  String get alreadyHaveAccount {
    return _localizedValues[locale.languageCode]!['already_have_account']!;
  }

  String get chooseSubscription {
    return _localizedValues[locale.languageCode]!['choose_subscription']!;
  }

  String get bronzePackage {
    return _localizedValues[locale.languageCode]!['bronze_package']!;
  }

  String get silverPackage {
    return _localizedValues[locale.languageCode]!['silver_package']!;
  }

  String get goldPackage {
    return _localizedValues[locale.languageCode]!['gold_package']!;
  }

  String get monthsAccess {
    return _localizedValues[locale.languageCode]!['months_access']!;
  }

  String get yearAccess {
    return _localizedValues[locale.languageCode]!['year_access']!;
  }

  String get changeLanguage {
    return _localizedValues[locale.languageCode]!['change_language']!;
  }
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'es'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
