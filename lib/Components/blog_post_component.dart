import 'package:flutter/material.dart';
import 'package:landing_page/Components/sans_font_component.dart';

class BlogPostComponent extends StatefulWidget {
  final String title;
  final String body;
  const BlogPostComponent({
    super.key,
    required this.title,
    required this.body,
  });

  @override
  State<BlogPostComponent> createState() => _BlogPostComponentState();
}

class _BlogPostComponentState extends State<BlogPostComponent> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 30,
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Sans(
                    text: widget.title,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_drop_down_circle_outlined,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Sans(
              text: widget.body,
              maxLines: isExpanded ? null : 3,
              overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
