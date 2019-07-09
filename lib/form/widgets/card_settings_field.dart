// Copyright (c) 2018, codegrue. All rights reserved. Use of this source code
// is governed by the MIT license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:master_repo/form/widgets/card_settings_panel.dart';

/// This is the basic layout of a field in a CardSettings view. Typcially, it
/// will not be used directly.
class CardSettingsField extends StatelessWidget {
  CardSettingsField({
    this.label: 'Label',
    this.content,
    this.icon,
    this.pickerIcon,
    this.labelWidth = 120.0,
    this.contentOnNewLine = false,
    this.unitLabel,
    this.errorText,
    this.visible: true,
    this.labelAlign,
    this.requiredIndicator,
  });

  final String label;
  final String unitLabel;
  final Widget content;
  final IconData pickerIcon;
  final double labelWidth;
  final bool contentOnNewLine;
  final String errorText;
  final bool visible;
  final TextAlign labelAlign;
  final Icon icon;
  final Widget requiredIndicator;

  @override
  Widget build(BuildContext context) {
    if (visible) {
      return Container(
        decoration: BoxDecoration(
          border: Border(
            bottom:
                BorderSide(width: 1.0, color: Theme.of(context).dividerColor),
          ),
        ),
        padding: EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: _buildLabelRow(context),
                ),
                _buildInlineContent(context),
                _buildRightDecoration()
              ],
            ),
            _buildNewRowContent(context)
          ],
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _buildInlineContent(BuildContext context) {
    return Expanded(
        child: contentOnNewLine ? Text('') : _buildDecoratedContent(context));
  }

  Widget _buildNewRowContent(BuildContext context) {
    if (contentOnNewLine) {
      return Container(
        padding: EdgeInsets.only(top: 10.0),
        child: _buildDecoratedContent(context),
      );
    } else {
      return Container();
    }
  }

  Widget _buildDecoratedContent(BuildContext context) {
    var decoratedContent = content;
    if (content is TextField || content is TextFormField) {
      // do nothing, these already have built in InputDecorations
    } else {
      // wrap in a decorator to show validation errors
      final InputDecoration decoration = const InputDecoration()
          .applyDefaults(Theme.of(context).inputDecorationTheme)
          .copyWith(
              errorText: errorText,
              contentPadding: EdgeInsets.all(0.0),
              border: InputBorder.none);

      decoratedContent = InputDecorator(decoration: decoration, child: content);
    }

    return decoratedContent;
  }

  Widget _buildLabelRow(BuildContext context) {
    return Container(
      width: (contentOnNewLine) ? null : labelWidth,
      padding:
          EdgeInsets.only(right: CardSettings.of(context).labelPadding ?? 6.0),
      child: Row(
        children: <Widget>[
          _buildLeftIcon(context),
          _buildLabelSpacer(context),
           _buildRequiredIndicator(context),
          Expanded(
            child: _buildLabel(context),
          ),
         
          _buildLabelSuffix(context),
        ],
      ),
    );
  }

  Widget _buildLabel(BuildContext context) {
    return AutoSizeText(
      label,
      style: _buildLabelStyle(context),
    );
  }

  Widget _buildLabelSpacer(BuildContext context) {
    return ((labelAlign ??
                CardSettings.of(context).labelAlign ??
                TextAlign.left) ==
            TextAlign.right)
        ? Expanded(child: Container())
        : Container();
  }

  Widget _buildLabelSuffix(BuildContext context) {
    return Text(
      (CardSettings.of(context).labelSuffix == null)
          ? ''
          : CardSettings.of(context).labelSuffix,
      style: _buildLabelStyle(context),
    );
  }

  Widget _buildRequiredIndicator(BuildContext context) {
    if (requiredIndicator == null) return Container();

    if (requiredIndicator is Text) {
      var indicatorStyle = (requiredIndicator as Text).style;
      var style = _buildLabelStyle(context).merge(indicatorStyle);

      return Text(
        (requiredIndicator as Text).data,
        style: style,
      );
    }

    return requiredIndicator;
  }

  TextStyle _buildLabelStyle(BuildContext context) {
    TextStyle labelStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
    );

    return labelStyle.merge(Theme.of(context).inputDecorationTheme.labelStyle);
  }

  Widget _buildLeftIcon(BuildContext context) {
    TextStyle labelStyle = Theme.of(context).inputDecorationTheme.labelStyle;

    return (icon == null)
        ? Container()
        : Container(
            margin: EdgeInsets.all(0.0),
            padding: EdgeInsets.only(right: 4.0),
            child: Icon(
              icon.icon,
              color: (labelStyle == null) ? null : labelStyle.color,
            ),
          );
  }

  Widget _buildRightDecoration() {
    return (pickerIcon != null || unitLabel != null)
        ? Container(
            alignment: Alignment.centerRight,
            child: (pickerIcon != null)
                ? Icon(pickerIcon)
                : Text(
                    unitLabel,
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
          )
        : Container();
  }
}
