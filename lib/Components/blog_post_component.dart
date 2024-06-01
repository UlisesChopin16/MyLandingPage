import 'package:flutter/material.dart';

class BlogPostComponent extends StatefulWidget {
  const BlogPostComponent({super.key});

  @override
  State<BlogPostComponent> createState() => _BlogPostComponentState();
}

class _BlogPostComponentState extends State<BlogPostComponent> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
        ),
        child: Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
