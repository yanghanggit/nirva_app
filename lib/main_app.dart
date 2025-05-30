import 'package:flutter/material.dart';
import 'package:nirva_app/splash_screen.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this); // 添加生命周期观察者
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this); // 移除观察者
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      // 应用从后台切换到前台时执行的操作
      debugPrint('App resumed');
    } else if (state == AppLifecycleState.paused) {
      // 应用切换到后台时执行的操作
      debugPrint('App paused');
    } else if (state == AppLifecycleState.inactive) {
      // 应用处于非活动状态（可能是切换任务或锁屏）
      debugPrint('App inactive');
    } else if (state == AppLifecycleState.detached) {
      // 应用完全退出或分离
      debugPrint('App detached');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nirva App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      home: const SplashScreen(), // 设置 SplashScreen 为初始页面
    );
  }
}
