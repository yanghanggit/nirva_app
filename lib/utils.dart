import 'dart:convert';
import 'dart:io'; // 用于文件操作
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class Utils {
  // 计算对应的月份标签
  static const List<String> shortMonthNames = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];

  static const List<String> fullMonthNames = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  static const List<String> weekDayNames = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun',
  ];

  // 静态方法：加载 JSON 文件并解析为 Map
  static Future<Map<String, dynamic>> loadJsonAsset(String path) async {
    // 加载 JSON 文件内容
    final String jsonString = await rootBundle.loadString(path);
    // 将 JSON 字符串解析为 Map
    return json.decode(jsonString) as Map<String, dynamic>;
  }

  // 将 JSON 数据写入文件的方法
  static Future<void> writeJsonToFile(
    String fileName,
    Map<String, dynamic> jsonData,
  ) async {
    try {
      // 获取应用程序的文档目录
      final directory = await getApplicationDocumentsDirectory();
      final filePath = '${directory.path}/$fileName';

      // 将 JSON 数据写入文件
      final file = File(filePath);
      await file.writeAsString(jsonData.toString());

      debugPrint('JSON 数据已写入文件: $filePath');
    } catch (e) {
      debugPrint('写入 JSON 文件时出错: $e');
    }
  }

  static String fullDiaryDateTime(DateTime dateTime) {
    return '${fullMonthNames[dateTime.month - 1]} ${dateTime.day}, ${dateTime.year}';
  }

  /// 格式化月份标题
  static String formatMonthTitleForDashboardChart(
    int widgetIndexValue,
    int currentMonth,
    int monthsCount,
  ) {
    int startMonth = (currentMonth - monthsCount) % 12;
    if (startMonth < 0) startMonth += 12;
    int targetMonth = (startMonth + widgetIndexValue) % 12;
    return Utils.shortMonthNames[targetMonth];
  }

  // 格式化每天的标题 formatDayTitleForDashboardChart
  static String formatDayTitleForDashboardChart(
    int widgetIndexValue,
    int currentWeekDay,
    int dayCount,
  ) {
    // 计算从当前月份开始的正序排列
    int startWeekDay = (currentWeekDay - dayCount) % 7;
    if (startWeekDay < 0) startWeekDay += 7;
    int targetWeekDay = (startWeekDay + widgetIndexValue) % 7;
    return Utils.weekDayNames[targetWeekDay];
  }

  /// 先写死，就显示最近的4个周 formateWeekTitleForDashboardChart
  static String formateWeekTitleForDashboardChart(int widgetIndexValue) {
    List<String> weekNames = ['Week 1', 'Week 2', 'Week 3', 'Week 4'];
    return weekNames[widgetIndexValue];
  }
}
