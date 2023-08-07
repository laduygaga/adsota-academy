import 'package:flutter/material.dart';

import 'molecules/appbar.dart';
import 'main_content.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return _buildWideLayout();
          // if (constraints.maxWidth > 1200) {
          //   return _buildWideLayout();
          // } else if (constraints.maxWidth > 600 &&
          //     constraints.maxWidth <= 1200) {
          //   return _buildNarrowLayout();
          // } else {
          //   return _buildSmallLayout();
          // }
        },
      ),
    );
  }

  Widget _buildWideLayout() {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            forceElevated: true,
            shadowColor: Colors.black,
            collapsedHeight: 78,
            expandedHeight: 78,
            pinned: true,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              background: MyAppBar(
                logo: "assets/images/logo.svg",
                widthLogo: 29.73,
                heightLogo: 46,
                backgroundColor: "0xFF0353CC",
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            sliver: MainContent(),
          ),
        ],
      ),
    );
  }
}
