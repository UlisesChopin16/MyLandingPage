import 'package:flutter/material.dart';
import 'package:landing_page/Components/image_asset_component.dart';
import 'package:landing_page/Components/sans_font_component.dart';
import 'package:landing_page/Constants/constant_strings.dart';
import 'package:landing_page/Mobile/Components/drawer_for_mobile_component.dart';
import 'package:landing_page/Mobile/Components/works_mobile_component.dart';
import 'package:landing_page/Web/Components/drawer_for_web_component.dart';
import 'package:landing_page/Web/Components/list_of_tab_bars_component.dart';
import 'package:landing_page/Web/Components/works_web_component.dart';

class WorksView extends StatefulWidget {
  const WorksView({super.key});

  @override
  State<WorksView> createState() => _WorksViewState();
}

class _WorksViewState extends State<WorksView> {

  final ScrollController _scrollController = ScrollController();

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
                    pathImage: ConstantStrings.worksImage,
                    fit: BoxFit.cover,
                  ),
                  centerTitle: true,
                  title: width < 800
                      ? Container(
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: const SansBold(
                            text: ConstantStrings.works,
                            size: 38,
                          ),
                      )
                      : null,
                ),
              ),
            ];
          },
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                child: width < 800 ? const WorksMobileComponent() : const WorksWebComponent(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
