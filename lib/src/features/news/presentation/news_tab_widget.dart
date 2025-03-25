import 'package:flutter/material.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/widgets/tab_bar/custom_tab_selector.dart';
import 'package:oyan/src/features/news/presentation/first_news_widget.dart';
import 'package:oyan/src/features/news/presentation/second_news_widget.dart';

class NewsTabWidget extends StatefulWidget {
  final GlobalKey<FirstNewsWidgetState> firstNewsKey;
  final GlobalKey<SecondNewsWidgetState> secondNewsKey;
  const NewsTabWidget({super.key, required this.firstNewsKey, required this.secondNewsKey});

  @override
  _NewsTabViewState createState() => _NewsTabViewState();
}

class _NewsTabViewState extends State<NewsTabWidget> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomTabSelector(
          selectedIndex: _selectedIndex,
          onTabSelected: _onTabSelected,
          title1: context.loc.yourClass,
          title2: context.loc.school,
          showIndicator: false,
          indicatorColors: Colors.transparent,
        ),
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            children: [FirstNewsWidget(key: widget.firstNewsKey), SecondNewsWidget(key: widget.secondNewsKey)],
          ),
        ),
      ],
    );
  }
}
