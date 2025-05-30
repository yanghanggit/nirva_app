import 'package:flutter/material.dart';
//import 'package:nirva_app/data_manager.dart';
import 'package:nirva_app/data.dart';

class QuoteCarousel extends StatefulWidget {
  final List<Quote> quotes;

  const QuoteCarousel({super.key, required this.quotes});

  @override
  State<QuoteCarousel> createState() => _QuoteCarouselState();
}

class _QuoteCarouselState extends State<QuoteCarousel> {
  int _currentPage = 0;
  final Map<int, LinearGradient> gradientMap = {};

  LinearGradient _randomGradient(Quote quote) {
    if (!gradientMap.containsKey(quote.text.hashCode)) {
      final colors = [
        Colors.red,
        Colors.green,
        Colors.blue,
        Colors.yellow,
        Colors.purple,
        Colors.orange,
      ];
      gradientMap[quote.text.hashCode] = LinearGradient(
        colors: [
          colors[quote.text.hashCode % colors.length],
          colors[(quote.text.hashCode ~/ 2) % colors.length],
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      );
    }

    return gradientMap[quote.text.hashCode]!;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150, // 设置卡片高度
          child: PageView.builder(
            itemCount: widget.quotes.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              final quote = widget.quotes[index];
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: _randomGradient(quote),
                ),
                child: Center(
                  child: Text(
                    quote.text,
                    style: const TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.quotes.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              width: _currentPage == index ? 12.0 : 8.0,
              height: 8.0,
              decoration: BoxDecoration(
                color: _currentPage == index ? Colors.purple : Colors.grey,
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
