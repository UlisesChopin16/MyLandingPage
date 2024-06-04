import 'package:cloud_firestore/cloud_firestore.dart';
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
  final ScrollController _scrollController = ScrollController();

  void article() async {
    await FirebaseFirestore.instance.collection('articles').get().then((value) {
      for (var element in value.docs.reversed) {
        print(element.data()['title']);
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // article();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height - AppBar().preferredSize.height;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const DrawerForMobileComponent(),
      body: Scrollbar(
        controller: _scrollController,
        child: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
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
            ];
          },
          body: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('articles').snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView(
                  children: [
                    ...List.generate(
                      snapshot.data!.docs.length,
                      (index) {
                        final DocumentSnapshot document = snapshot.data!.docs[index];
                        final String title = document['title'] as String;
                        final String body = document['body'] as String;
                        return BlogPostComponent(
                          title: title,
                          body: body,
                        );
                      },
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
