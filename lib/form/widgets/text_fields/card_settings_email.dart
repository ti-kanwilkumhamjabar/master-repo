// Copyright (c) 2018, codegrue. All rights reserved. Use of this source code
// is governed by the MIT license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../card_settings.dart';

/// This is a password field. It obscures the entered text.
class CardSettingsEmail extends CardSettingsText {
  CardSettingsEmail({
    Key key,
    String label: 'Email',
    bool contentOnNewLine: false,
    TextAlign labelAlign,
    TextAlign contentAlign,
    String initialValue,
    Icon icon,
    Widget requiredIndicator,
    int maxLength: 30,
    bool visible: true,
    bool enabled: true,
    bool autofocus: false,
    bool obscureText: false,
    bool autocorrect: false,
    bool autovalidate: false,
    FormFieldValidator<String> validator,
    FormFieldSetter<String> onSaved,
    ValueChanged<String> onChanged,
    TextEditingController controller,
    FocusNode focusNode,
    TextInputType keyboardType = TextInputType.emailAddress,
    TextStyle style,
    bool maxLengthEnforced: true,
    ValueChanged<String> onFieldSubmitted,
    List<TextInputFormatter> inputFormatters,
    bool showMaterialIOS: false,

    ///Shows a [red] [Border] around the [CupertinoTextField] since the [validator] does not exist
    bool showErrorIOS: false,
  }) : super(
          key: key,
          label: label,
          labelAlign: labelAlign,
          showMaterialIOS: showMaterialIOS,
          contentAlign: contentAlign,
          contentOnNewLine: contentOnNewLine,
          initialValue: initialValue,
          maxLength: maxLength,
          icon: icon,
          requiredIndicator: requiredIndicator,
          visible: visible,
          enabled: enabled,
          autofocus: autofocus,
          obscureText: obscureText,
          autocorrect: autocorrect,
          autovalidate: autovalidate,
          validator: validator,
          onSaved: onSaved,
          showErrorIOS: showErrorIOS,
          onChanged: onChanged,
          controller: controller,
          focusNode: focusNode,
          keyboardType: keyboardType,
          style: style,
          maxLengthEnforced: maxLengthEnforced,
          onFieldSubmitted: onFieldSubmitted,
          inputFormatters: inputFormatters,
        );
}