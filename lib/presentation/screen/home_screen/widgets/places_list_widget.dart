import 'package:flutter/material.dart';
import 'package:puebliando/presentation/screen/home_screen/index.dart' 
  show CardPlaceWidget;

class PlacesListWidget extends StatelessWidget {
  const PlacesListWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount:30,
        itemBuilder: (BuildContext context, int index) {
          return CardPlaceWidget();
        },
      ),
    );
  }
}