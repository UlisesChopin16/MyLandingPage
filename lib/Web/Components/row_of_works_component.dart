import 'package:flutter/material.dart';
import 'package:landing_page/Components/image_asset_component.dart';
import 'package:landing_page/Web/Components/animated_card_web_component.dart';

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
            height: 450,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Spacer(),
                AnimatedCardWebComponent(imagePath: 'assets/images/webL.png', text: 'Web development',),
                Spacer(),
                AnimatedCardWebComponent(imagePath: 'assets/images/app.png', text: 'App development', reverse: true,),
                Spacer(),
                AnimatedCardWebComponent(
                  imagePath: '', 
                  text: 'Back-end development',
                  child: SizedBox(
                    height: 250,
                    width: 250,                           
                    child: Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runSpacing: 10,
                      children: [
                        ImageAssetComponent(pathImage: 'assets/images/mariaDB.png', width: 120,),
                        ImageAssetComponent(pathImage: 'assets/images/mysql.png', width: 120,),
                        ImageAssetComponent(pathImage: 'assets/images/firebase.png', width: 120,),
                      ],
                    ),
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