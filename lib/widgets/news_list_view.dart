import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/news_container.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 22),
            child: NewsTile(),
          );
        },
      ),
    );
    // ListView.builder(
    //   //affect the app performance
    //   // shrinkWrap: true,
    //   // physics: const NeverScrollableScrollPhysics(),
    //   itemCount: 6,
    //   itemBuilder: (context, index) {
    //     return const Padding(
    //       padding: EdgeInsets.only(bottom: 22),
    //       child: NewsTile(),
    //     );
    //   },
    // );
  }
}
