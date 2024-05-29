import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:landing_page/Components/elevation_card_component.dart';
import 'package:landing_page/Components/image_asset_component.dart';
import 'package:landing_page/Components/sans_bold_component.dart';

class RowOfWorksComponent extends StatefulWidget {
  const RowOfWorksComponent({super.key});

  @override
  State<RowOfWorksComponent> createState() => _RowOfWorksComponentState();
}

class _RowOfWorksComponentState extends State<RowOfWorksComponent> {

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Scrollbar(
        controller: _scrollController,
        child: SingleChildScrollView(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            width: width < 1000 ? 1000 : width,
            height: 400,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Spacer(),
                ElevationCardComponent(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ImageAssetComponent(pathImage: 'assets/images/webL.png', width: 250,),
                      SizedBox(height: 10,),
                      SansBoldComponent(text: 'Web development',),
                    ],
                  ),
                ),
                Spacer(),
                ElevationCardComponent(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ImageAssetComponent(pathImage: 'assets/images/app.png', width: 250,),
                      SizedBox(height: 10,),
                      SansBoldComponent(text: 'App development',),
                    ],
                  ),
                ),
                Spacer(),
                ElevationCardComponent(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 250,
                        width: 250,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ImageAssetComponent(pathImage: 'assets/images/mariaDB.png', width: 105,),
                            ImageAssetComponent(pathImage: 'assets/images/mysql.png', width: 105,),
                            ImageAssetComponent(pathImage: 'assets/images/firebase.png', width: 105,),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      SansBoldComponent(text: 'Back-end development',),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}