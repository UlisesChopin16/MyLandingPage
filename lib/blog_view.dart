import 'package:flutter/material.dart';
import 'package:landing_page/Components/blog_post_component.dart';
import 'package:landing_page/Components/image_asset_component.dart';
import 'package:landing_page/Components/sans_font_component.dart';
import 'package:landing_page/Constants/constant_strings.dart';
import 'package:landing_page/Mobile/Components/drawer_for_mobile_component.dart';

class BlogView extends StatefulWidget {
  const BlogView({super.key});

  @override
  State<BlogView> createState() => _BlogViewState();
}

class _BlogViewState extends State<BlogView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height - AppBar().preferredSize.height;
    return Scaffold(
      drawer: const DrawerForMobileComponent(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            toolbarHeight: 55,
            backgroundColor: Colors.white,
            expandedHeight: height > 800 ? 600 : 400,
            flexibleSpace: FlexibleSpaceBar(
              background: const ImageAssetComponent(
                pathImage: ConstantStrings.blogImage,
                fit: BoxFit.cover,
              ),
              centerTitle: width > 800 ? null : true,
              title: Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: const SansBold(
                  text: 'Welcome to my blog!',
                  size: 30,
                ),
              ),
            ),
          ),
          const BlogPostComponent(),
          const BlogPostComponent(),
          const BlogPostComponent(),
          const BlogPostComponent(),
        ],
      ),
    );
  }
}
