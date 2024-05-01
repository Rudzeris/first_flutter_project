// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "author": "( o_o)/",
  "invite_button": "Приведи друга - получи bream",
  "my_bonus": "My bonuses",
  "more_detail": "More details",
  "invite_text": "Show the barcode to the cashier to add bonuses when paying",
  "my_order": "My orders",
  "my_address": "My addresses",
  "menu": "Menu",
  "profile": "Profile",
  "contact": "Contacts",
  "cart": "Cart"
};
static const Map<String,dynamic> ru = {
  "author": "\\(o_o )",
  "invite_button": "Приведи друга - получи леща",
  "my_bonus": "Мои бонусы",
  "more_detail": "Подробнее",
  "invite_text": "Покажи штрихкод кассиру для начисления бонусов при оплате",
  "my_order": "Мои заказы",
  "my_address": "Мои адреса",
  "menu": "Меню",
  "profile": "Профиль",
  "contact": "Контакты",
  "cart": "Корзина"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "ru": ru};
}
