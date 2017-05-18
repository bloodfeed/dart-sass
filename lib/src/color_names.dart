// Copyright 2016 Google Inc. Use of this source code is governed by an
// MIT-style license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:collection/collection.dart';

import 'utils.dart';
import 'value.dart';

/// A map from (lowercase) color names to their color values.
final colorsByName = normalizedMap({
  'aliceblue': new SassColor.rgb(0xF0, 0xF8, 0xFF),
  'antiquewhite': new SassColor.rgb(0xFA, 0xEB, 0xD7),
  'aquamarine': new SassColor.rgb(0x7F, 0xFF, 0xD4),
  'azure': new SassColor.rgb(0xF0, 0xFF, 0xFF),
  'beige': new SassColor.rgb(0xF5, 0xF5, 0xDC),
  'bisque': new SassColor.rgb(0xFF, 0xE4, 0xC4),
  'black': new SassColor.rgb(0x00, 0x00, 0x00),
  'blanchedalmond': new SassColor.rgb(0xFF, 0xEB, 0xCD),
  'blue': new SassColor.rgb(0x00, 0x00, 0xFF),
  'blueviolet': new SassColor.rgb(0x8A, 0x2B, 0xE2),
  'brown': new SassColor.rgb(0xA5, 0x2A, 0x2A),
  'burlywood': new SassColor.rgb(0xDE, 0xB8, 0x87),
  'cadetblue': new SassColor.rgb(0x5F, 0x9E, 0xA0),
  'chartreuse': new SassColor.rgb(0x7F, 0xFF, 0x00),
  'chocolate': new SassColor.rgb(0xD2, 0x69, 0x1E),
  'coral': new SassColor.rgb(0xFF, 0x7F, 0x50),
  'cornflowerblue': new SassColor.rgb(0x64, 0x95, 0xED),
  'cornsilk': new SassColor.rgb(0xFF, 0xF8, 0xDC),
  'crimson': new SassColor.rgb(0xDC, 0x14, 0x3C),
  'cyan': new SassColor.rgb(0x00, 0xFF, 0xFF),
  'aqua': new SassColor.rgb(0x00, 0xFF, 0xFF),
  'darkblue': new SassColor.rgb(0x00, 0x00, 0x8B),
  'darkcyan': new SassColor.rgb(0x00, 0x8B, 0x8B),
  'darkgoldenrod': new SassColor.rgb(0xB8, 0x86, 0x0B),
  'darkgray': new SassColor.rgb(0xA9, 0xA9, 0xA9),
  'darkgrey': new SassColor.rgb(0xA9, 0xA9, 0xA9),
  'darkgreen': new SassColor.rgb(0x00, 0x64, 0x00),
  'darkkhaki': new SassColor.rgb(0xBD, 0xB7, 0x6B),
  'darkmagenta': new SassColor.rgb(0x8B, 0x00, 0x8B),
  'darkolivegreen': new SassColor.rgb(0x55, 0x6B, 0x2F),
  'darkorange': new SassColor.rgb(0xFF, 0x8C, 0x00),
  'darkorchid': new SassColor.rgb(0x99, 0x32, 0xCC),
  'darkred': new SassColor.rgb(0x8B, 0x00, 0x00),
  'darksalmon': new SassColor.rgb(0xE9, 0x96, 0x7A),
  'darkseagreen': new SassColor.rgb(0x8F, 0xBC, 0x8F),
  'darkslateblue': new SassColor.rgb(0x48, 0x3D, 0x8B),
  'darkslategray': new SassColor.rgb(0x2F, 0x4F, 0x4F),
  'darkslategrey': new SassColor.rgb(0x2F, 0x4F, 0x4F),
  'darkturquoise': new SassColor.rgb(0x00, 0xCE, 0xD1),
  'darkviolet': new SassColor.rgb(0x94, 0x00, 0xD3),
  'deeppink': new SassColor.rgb(0xFF, 0x14, 0x93),
  'deepskyblue': new SassColor.rgb(0x00, 0xBF, 0xFF),
  'dimgray': new SassColor.rgb(0x69, 0x69, 0x69),
  'dimgrey': new SassColor.rgb(0x69, 0x69, 0x69),
  'dodgerblue': new SassColor.rgb(0x1E, 0x90, 0xFF),
  'firebrick': new SassColor.rgb(0xB2, 0x22, 0x22),
  'floralwhite': new SassColor.rgb(0xFF, 0xFA, 0xF0),
  'forestgreen': new SassColor.rgb(0x22, 0x8B, 0x22),
  'gainsboro': new SassColor.rgb(0xDC, 0xDC, 0xDC),
  'ghostwhite': new SassColor.rgb(0xF8, 0xF8, 0xFF),
  'gold': new SassColor.rgb(0xFF, 0xD7, 0x00),
  'goldenrod': new SassColor.rgb(0xDA, 0xA5, 0x20),
  'gray': new SassColor.rgb(0x80, 0x80, 0x80),
  'grey': new SassColor.rgb(0x80, 0x80, 0x80),
  'green': new SassColor.rgb(0x00, 0x80, 0x00),
  'greenyellow': new SassColor.rgb(0xAD, 0xFF, 0x2F),
  'honeydew': new SassColor.rgb(0xF0, 0xFF, 0xF0),
  'hotpink': new SassColor.rgb(0xFF, 0x69, 0xB4),
  'indianred': new SassColor.rgb(0xCD, 0x5C, 0x5C),
  'indigo': new SassColor.rgb(0x4B, 0x00, 0x82),
  'ivory': new SassColor.rgb(0xFF, 0xFF, 0xF0),
  'khaki': new SassColor.rgb(0xF0, 0xE6, 0x8C),
  'lavender': new SassColor.rgb(0xE6, 0xE6, 0xFA),
  'lavenderblush': new SassColor.rgb(0xFF, 0xF0, 0xF5),
  'lawngreen': new SassColor.rgb(0x7C, 0xFC, 0x00),
  'lemonchiffon': new SassColor.rgb(0xFF, 0xFA, 0xCD),
  'lightblue': new SassColor.rgb(0xAD, 0xD8, 0xE6),
  'lightcoral': new SassColor.rgb(0xF0, 0x80, 0x80),
  'lightcyan': new SassColor.rgb(0xE0, 0xFF, 0xFF),
  'lightgoldenrodyellow': new SassColor.rgb(0xFA, 0xFA, 0xD2),
  'lightgreen': new SassColor.rgb(0x90, 0xEE, 0x90),
  'lightgray': new SassColor.rgb(0xD3, 0xD3, 0xD3),
  'lightgrey': new SassColor.rgb(0xD3, 0xD3, 0xD3),
  'lightpink': new SassColor.rgb(0xFF, 0xB6, 0xC1),
  'lightsalmon': new SassColor.rgb(0xFF, 0xA0, 0x7A),
  'lightseagreen': new SassColor.rgb(0x20, 0xB2, 0xAA),
  'lightskyblue': new SassColor.rgb(0x87, 0xCE, 0xFA),
  'lightslategray': new SassColor.rgb(0x77, 0x88, 0x99),
  'lightslategrey': new SassColor.rgb(0x77, 0x88, 0x99),
  'lightsteelblue': new SassColor.rgb(0xB0, 0xC4, 0xDE),
  'lightyellow': new SassColor.rgb(0xFF, 0xFF, 0xE0),
  'lime': new SassColor.rgb(0x00, 0xFF, 0x00),
  'limegreen': new SassColor.rgb(0x32, 0xCD, 0x32),
  'linen': new SassColor.rgb(0xFA, 0xF0, 0xE6),
  'magenta': new SassColor.rgb(0xFF, 0x00, 0xFF),
  'fuchsia': new SassColor.rgb(0xFF, 0x00, 0xFF),
  'maroon': new SassColor.rgb(0x80, 0x00, 0x00),
  'mediumaquamarine': new SassColor.rgb(0x66, 0xCD, 0xAA),
  'mediumblue': new SassColor.rgb(0x00, 0x00, 0xCD),
  'mediumorchid': new SassColor.rgb(0xBA, 0x55, 0xD3),
  'mediumpurple': new SassColor.rgb(0x93, 0x70, 0xDB),
  'mediumseagreen': new SassColor.rgb(0x3C, 0xB3, 0x71),
  'mediumslateblue': new SassColor.rgb(0x7B, 0x68, 0xEE),
  'mediumspringgreen': new SassColor.rgb(0x00, 0xFA, 0x9A),
  'mediumturquoise': new SassColor.rgb(0x48, 0xD1, 0xCC),
  'mediumvioletred': new SassColor.rgb(0xC7, 0x15, 0x85),
  'midnightblue': new SassColor.rgb(0x19, 0x19, 0x70),
  'mintcream': new SassColor.rgb(0xF5, 0xFF, 0xFA),
  'mistyrose': new SassColor.rgb(0xFF, 0xE4, 0xE1),
  'moccasin': new SassColor.rgb(0xFF, 0xE4, 0xB5),
  'navajowhite': new SassColor.rgb(0xFF, 0xDE, 0xAD),
  'navy': new SassColor.rgb(0x00, 0x00, 0x80),
  'oldlace': new SassColor.rgb(0xFD, 0xF5, 0xE6),
  'olive': new SassColor.rgb(0x80, 0x80, 0x00),
  'olivedrab': new SassColor.rgb(0x6B, 0x8E, 0x23),
  'orange': new SassColor.rgb(0xFF, 0xA5, 0x00),
  'orangered': new SassColor.rgb(0xFF, 0x45, 0x00),
  'orchid': new SassColor.rgb(0xDA, 0x70, 0xD6),
  'palegoldenrod': new SassColor.rgb(0xEE, 0xE8, 0xAA),
  'palegreen': new SassColor.rgb(0x98, 0xFB, 0x98),
  'paleturquoise': new SassColor.rgb(0xAF, 0xEE, 0xEE),
  'palevioletred': new SassColor.rgb(0xDB, 0x70, 0x93),
  'papayawhip': new SassColor.rgb(0xFF, 0xEF, 0xD5),
  'peachpuff': new SassColor.rgb(0xFF, 0xDA, 0xB9),
  'peru': new SassColor.rgb(0xCD, 0x85, 0x3F),
  'pink': new SassColor.rgb(0xFF, 0xC0, 0xCB),
  'plum': new SassColor.rgb(0xDD, 0xA0, 0xDD),
  'powderblue': new SassColor.rgb(0xB0, 0xE0, 0xE6),
  'purple': new SassColor.rgb(0x80, 0x00, 0x80),
  'red': new SassColor.rgb(0xFF, 0x00, 0x00),
  'rebeccapurple': new SassColor.rgb(0x66, 0x33, 0x99),
  'rosybrown': new SassColor.rgb(0xBC, 0x8F, 0x8F),
  'royalblue': new SassColor.rgb(0x41, 0x69, 0xE1),
  'saddlebrown': new SassColor.rgb(0x8B, 0x45, 0x13),
  'salmon': new SassColor.rgb(0xFA, 0x80, 0x72),
  'sandybrown': new SassColor.rgb(0xF4, 0xA4, 0x60),
  'seagreen': new SassColor.rgb(0x2E, 0x8B, 0x57),
  'seashell': new SassColor.rgb(0xFF, 0xF5, 0xEE),
  'sienna': new SassColor.rgb(0xA0, 0x52, 0x2D),
  'silver': new SassColor.rgb(0xC0, 0xC0, 0xC0),
  'skyblue': new SassColor.rgb(0x87, 0xCE, 0xEB),
  'slateblue': new SassColor.rgb(0x6A, 0x5A, 0xCD),
  'slategray': new SassColor.rgb(0x70, 0x80, 0x90),
  'slategrey': new SassColor.rgb(0x70, 0x80, 0x90),
  'snow': new SassColor.rgb(0xFF, 0xFA, 0xFA),
  'springgreen': new SassColor.rgb(0x00, 0xFF, 0x7F),
  'steelblue': new SassColor.rgb(0x46, 0x82, 0xB4),
  'tan': new SassColor.rgb(0xD2, 0xB4, 0x8C),
  'teal': new SassColor.rgb(0x00, 0x80, 0x80),
  'thistle': new SassColor.rgb(0xD8, 0xBF, 0xD8),
  'tomato': new SassColor.rgb(0xFF, 0x63, 0x47),
  'transparent': new SassColor.rgb(0, 0, 0, 0),
  'turquoise': new SassColor.rgb(0x40, 0xE0, 0xD0),
  'violet': new SassColor.rgb(0xEE, 0x82, 0xEE),
  'wheat': new SassColor.rgb(0xF5, 0xDE, 0xB3),
  'white': new SassColor.rgb(0xFF, 0xFF, 0xFF),
  'whitesmoke': new SassColor.rgb(0xF5, 0xF5, 0xF5),
  'yellow': new SassColor.rgb(0xFF, 0xFF, 0x00),
  'yellowgreen': new SassColor.rgb(0x9A, 0xCD, 0x32),
});

/// A map from Sass colors to (lowercase) color names.
final namesByColor = mapMap<String, SassColor, SassColor, String>(colorsByName,
    key: (_, color) => color, value: (name, _) => name);
