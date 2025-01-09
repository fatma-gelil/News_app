import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/category_list_view.dart';
import 'package:news_app_ui_setup/widgets/news_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            title: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'News',
                  style: TextStyle(
                      color: Colors.black,
                      backgroundColor: Colors.transparent,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  ' Cloud',
                  style: TextStyle(
                      color: Colors.orange,
                      backgroundColor: Colors.transparent,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              //slivers is a replacement for word children
              //slivers accepts widgets of type sliver only
              // SliverToBoxAdapter turns any widget into a sliver
              SliverToBoxAdapter(child: CategoryListView()),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              NewsListView(),
            ],
          ),
          // Column(children: [
          //    CategoryListView(),
          //    SizedBox(height: 32,),
          //    Expanded(child: NewsListView()),
          // ],),
        ));
  }
}
