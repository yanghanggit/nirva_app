import 'package:flutter/material.dart';
import 'package:nirva_app/app_runtime_context.dart';
//import 'package:nirva_app/hive_object.dart';
import 'package:nirva_app/main_app.dart';
import 'package:nirva_app/test_data.dart';
//import 'package:nirva_app/test_chat_app.dart';
//import 'package:nirva_app/test_graph_view_app.dart';
//import 'package:nirva_app/test_calendar_app.dart';
//import 'package:nirva_app/hive_data.dart';
//import 'package:nirva_app/test_file_access_app.dart'; // 添加这一行
//import 'package:nirva_app/test_sliding_chart_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // 确保初始化完成

  // 这里必须一起调用。
  await initializeApp(); // 执行异步操作，例如加载配置文件
  runApp(const MainApp()); // 运行核心应用

  //如果需要测试应用，可以取消下面的注释，下面会进入测试应用，隔离主应用进行专项测试
  //runApp(TestChatApp());
  //如果需要测试图形视图，可以取消下面的注释，下面会进入测试应用，隔离主应用进行专项测试
  //runApp(TestGraphViewApp());
  //如果需要测试日历视图，可以取消下面的注释，下面会进入测试应用，隔离主应用进行专项测试
  //runApp(const TestCalendarApp());
  //如果需要测试iOS文件应用访问，可以取消下面的注释
  //runApp(const TestFileAccessApp());
  //如果需要测试图表，可以取消下面的注释
  //runApp(const TestSlidingChartApp());
}

Future<void> initializeApp() async {
  // 这句是测试的，清空之前的数据
  await AppRuntimeContext().storage.deleteFromDisk();

  // 正式步骤：初始化 Hive, 这个是必须调用的，因为本app会使用 Hive 来存储数据。
  await AppRuntimeContext().storage.initializeAdapters();

  // 填充测试数据。
  await TestData.initializeTestData();

  // 正式步骤：初始初始化 Hive 存储。
  await setupHiveStorage();
}

Future<void> setupHiveStorage() async {
  // 喜爱的日记数据
  AppRuntimeContext().data.favorites.value =
      AppRuntimeContext().storage.getFavoritesIds();

  // 对话列表
  final storageChatHistory = AppRuntimeContext().storage.getChatHistory();
  AppRuntimeContext().chat.chatHistory.value = storageChatHistory; // 清空之前的聊天记录

  // 任务列表
  final retrievedTasks = AppRuntimeContext().storage.getAllTasks();
  AppRuntimeContext().data.tasks.value = retrievedTasks;

  //notes
  final retrievedNotes = AppRuntimeContext().storage.getAllNotes();
  AppRuntimeContext().data.notes.value = retrievedNotes;

  //journal files
  AppRuntimeContext().initializeJournalFiles(
    AppRuntimeContext().storage.retrieveJournalFiles(),
  );
}
