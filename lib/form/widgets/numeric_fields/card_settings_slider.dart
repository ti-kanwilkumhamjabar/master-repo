// Copyright (c) 2018, codegrue. All rights reserved. Use of this source code
// is governed by the MIT license that can be found in the LICENSE file.

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_settings/flutter_cupertino_settings.dart';
import 'package:master_repo/form/card_settings.dart';


/// This is a field that allows a boolean to be set via a switch widget.
class CardSettingsSlider extends FormField<double> {
  CardSettingsSlider({
    Key key,
    bool autovalidate: false,
    FormFieldSetter<double> onSaved,
    FormFieldValidator<double> validator,
    double initialValue = 0.0,
    this.trueLabel = "Yes",
    this.falseLabel = "No",
    this.visible = true,
    this.label = 'Label',
    this.requiredIndicator,
    this.labelAlign,
    this.icon,
    this.contentAlign,
    this.onChanged,
    this.onChangedStart,
    this.onChangedEnd,
    this.min,
    this.max,
    this.divisions,
    this.showMaterialIOS = false,
  }) : super(
            key: key,
            initialValue: initialValue,
            onSaved: onSaved,
            validator: validator,
            autovalidate: autovalidate,
            builder: (FormFieldState<double> field) =>
                _CardSettingsSliderState().widget);

  final String label;

  final TextAlign labelAlign;

  final TextAlign contentAlign;

  final Icon icon;

  final Widget requiredIndicator;

  final String trueLabel;

  final String falseLabel;

  final ValueChanged<double> onChanged, onChangedEnd, onChangedStart;

  final bool visible;

  final bool showMaterialIOS;

  final int divisions;

  final double min, max;

  @override
  _CardSettingsSliderState createState() => _CardSettingsSliderState();
}

class _CardSettingsSliderState extends FormFieldState<double> {
  @override
  CardSettingsSlider get widget => super.widget as CardSettingsSlider;

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS && !widget.showMaterialIOS) {
      return Container(
        child: widget?.visible == false
            ? null
            : CSControl(
                widget?.requiredIndicator != null
                    ? (widget?.label ?? "") + ' *'
                    : widget?.label,
                CupertinoSlider(
                  value: value,
                  divisions: widget?.divisions,
                  min: widget?.min ?? 0,
                  max: widget?.max ?? 1,
                  onChangeEnd: widget?.onChangedEnd,
                  onChangeStart: widget?.onChangedStart,
                  onChanged: (value) {
                    didChange(value);
                    if (widget?.onChanged != null) widget?.onChanged(value);
                  },
                ),
                style: CSWidgetStyle(icon: widget?.icon),
              ),
      );
    }
    return CardSettingsField(
      label: widget?.label,
      labelAlign: widget?.labelAlign,
      visible: widget?.visible,
      icon: widget?.icon,
      requiredIndicator: widget?.requiredIndicator,
      errorText: errorText,
      content: Row(children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.all(0.0),
            child: Container(
              height: 20.0,
              child: Slider(
                activeColor: Theme.of(context).primaryColor,
                value: value,
                divisions: widget?.divisions,
                min: widget?.min ?? 0,
                max: widget?.max ?? 1,
                onChangeEnd: widget?.onChangedEnd,
                onChangeStart: widget?.onChangedStart,
                onChanged: (value) {
                  didChange(value);
                  if (widget?.onChanged != null) widget?.onChanged(value);
                },
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
