// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `The best dishes`
  String get dashboard_header_title_part_one {
    return Intl.message(
      'The best dishes',
      name: 'dashboard_header_title_part_one',
      desc: '',
      args: [],
    );
  }

  /// `in your city`
  String get dashboard_header_title_part_two {
    return Intl.message(
      'in your city',
      name: 'dashboard_header_title_part_two',
      desc: '',
      args: [],
    );
  }

  /// `What do you want to eat?`
  String get dashboard_search_bar_hint {
    return Intl.message(
      'What do you want to eat?',
      name: 'dashboard_search_bar_hint',
      desc: '',
      args: [],
    );
  }

  /// `Our Popular sets`
  String get dashboard_popular_sets_title {
    return Intl.message(
      'Our Popular sets',
      name: 'dashboard_popular_sets_title',
      desc: '',
      args: [],
    );
  }

  /// `See all`
  String get dashboard_popular_sets_see_all_button {
    return Intl.message(
      'See all',
      name: 'dashboard_popular_sets_see_all_button',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}