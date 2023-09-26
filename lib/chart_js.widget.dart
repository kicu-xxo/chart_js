import 'package:chart_js_test/chart_js_with_js.dart';
import 'dart:html';

import 'package:flutter/material.dart';

getChartJs() {
  // HTML 요소에 접근하고 조작하는 코드
  final canvas = CanvasElement(width: 400, height: 400)
    ..style.border = '1px solid black';
  // canvas.context2D.fillRect(0, 0, 400, 400);
  document.body!.append(canvas);

  final chartOptions = ChartOptions(
    responsive: false,
  );

  final chartData = ChartData(
    labels: ['A', 'B', 'C'],
    datasets: [
      ChartDataset(
        label: 'test',
        data: [1, 2, 3],
        backgroundColor: ['#FF5733', '#33FF57', '#5733FF'],
      ),
    ],
  );

  // Chart.js 그래프 생성
  final chart = ChartJs(
      canvas.getContext('2d'),
      ChartConfiguration(
        type: 'bar', // 또는 다른 차트 유형 선택
        data: chartData,
        options: chartOptions,
      ));

  // 그래프 업데이트 예시
  chart.update();
}

class ChartData {
  final List<String> labels;
  final List<ChartDataset> datasets;

  ChartData({
    required this.labels,
    required this.datasets,
  });
}

class ChartDataset {
  final List<num> data;
  final String label;
  final List<String> backgroundColor;

  ChartDataset({
    required this.data,
    required this.label,
    required this.backgroundColor,
  });
}

class ChartOptions {
  final bool responsive;

  ChartOptions({
    required this.responsive,
  });
}

class ChartConfiguration {
  final String type;
  final ChartData data;
  final ChartOptions options;

  ChartConfiguration({
    required this.type,
    required this.data,
    required this.options,
  });
}
