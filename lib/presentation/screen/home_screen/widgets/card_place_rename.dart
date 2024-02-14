import 'package:flutter/material.dart';

import 'package:puebliando/core/style/index.dart';
import 'package:puebliando/core/utils/enums/index.dart';

class CardPlaceWidget extends StatelessWidget {
  const CardPlaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.all(AppLayout.mainRaidus),
      height: size.height * 0.3,
      width: double.infinity,
      decoration: _customDecoration(),
      child: Column(
        children: [const _CustomImagePlace()],
      ),
    );
  }

  BoxDecoration _customDecoration() => BoxDecoration(
      // color: Colors.green,
      borderRadius: BorderRadius.all(Radius.circular(AppLayout.mainRaidus)),
      border: Border.all(color: AppColors.borderColor));
}

class _CustomImagePlace extends StatelessWidget {
  const _CustomImagePlace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppLayout.mainRaidus),
              topRight: Radius.circular(AppLayout.mainRaidus)),
          child: ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color.fromARGB(255, 239, 208, 205), Colors.black26]).createShader(bounds);
            },
            child: Container(
              color: Colors.yellow,
              height: 140,
              alignment: Alignment.center,
              width: double.infinity,
              child: const Image(
                width: double.infinity,
                fit: BoxFit.fitWidth,
                image: AssetImage("assets/no-img.jpg"),
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                color: Colors.red,
                size: 30,
              )),
        ),
        Positioned(
            left: 0,
            bottom: 0,
            child: Text(
              "name place",
              style: AppFonts.getFontStyle(
                  FontSizeEnum.h2, AppColors.blackMainColorColor),
            ))
      ],
    );
  }
}
