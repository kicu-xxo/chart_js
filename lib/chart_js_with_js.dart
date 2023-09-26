@JS()
library chartjs;

import 'package:js/js.dart';

@JS('Chart') // Chart.js의 JavaScript 클래스명
class ChartJs {
  external ChartJs(dynamic context, dynamic options);
  external dynamic update();
}
