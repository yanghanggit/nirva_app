import 'package:flutter/material.dart';
import 'package:nirva_app/data.dart';
import 'package:nirva_app/stress_level_details_page.dart'; // 导入新页面

class StressLevelCard extends StatelessWidget {
  final StressLevel data;

  const StressLevelCard({super.key, required this.data});

  // 根据变化值获取颜色
  Color _getChangeColor(double change) {
    return change >= 0 ? Colors.green : Colors.red;
  }

  // 根据变化值返回格式化字符串
  String _formatChange(double change) {
    return change >= 0
        ? '+${change.toStringAsFixed(1)}'
        : change.toStringAsFixed(1);
  }

  @override
  Widget build(BuildContext context) {
    final Color changeColor = _getChangeColor(data.change);
    return Expanded(
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // 两端对齐
                children: [
                  Text('Stress Level', style: const TextStyle(fontSize: 16)),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StressLevelDetailsPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                data.value.toStringAsFixed(1),
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(
                    changeColor == Colors.green
                        ? Icons.arrow_upward
                        : Icons.arrow_downward,
                    color: changeColor,
                    size: 16,
                  ),
                  Text(
                    _formatChange(data.change),
                    style: TextStyle(color: changeColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
