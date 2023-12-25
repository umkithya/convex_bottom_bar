/*
 *  Copyright 2020 Chaobin Wu <chaobinwu89@gmail.com>
 *  
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *  
 *      http://www.apache.org/licenses/LICENSE-2.0
 *  
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

import 'package:flutter/cupertino.dart';

import '../bar.dart';
import '../interface.dart';
import '../item.dart';
import 'fixed_circle_tab_style.dart';
import 'fixed_tab_style.dart';
import 'flip_tab_style.dart';
import 'react_circle_tab_style.dart';
import 'react_tab_style.dart';
import 'textin_tab_style.dart';
import 'titled_tab_style.dart';

/// Factory method to return the [DelegateBuilder] for each [TabStyle].
DelegateBuilder supportedStyle(
  TabStyle style, {
  required List<TabItem> items,
  required Color color,
  required Color activeColor,
  required Color backgroundColor,
  required Curve curve,
}) {
  assert(items.isNotEmpty, 'items should not be empty');
  assert(
      ((style == TabStyle.fixed || style == TabStyle.fixedCircle) &&
              items.length.isOdd) ||
          (style != TabStyle.fixed && style != TabStyle.fixedCircle),
      'item count should be an odd number when using fixed/fixedCircle');
  DelegateBuilder builder;

  builder = FixedCircleTabStyle(
    items: items,
    color: color,
    activeColor: activeColor,
    backgroundColor: backgroundColor,
    convexIndex: items.length ~/ 2,
  );

  return builder;
}
