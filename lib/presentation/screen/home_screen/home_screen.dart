import 'package:flutter/material.dart';

import 'package:puebliando/presentation/screen/home_screen/constants/index.dart' 
  show HomeScreenStrings;
import 'package:puebliando/presentation/screen/index.dart';




class HomeScreen extends StatelessWidget {

const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(HomeScreenStrings.appbarTitle),
      ),
      body: const _HomeScreenBody(),
      floatingActionButton: const _FloatingActionButton(),
   );
  }
}


class _HomeScreenBody extends StatelessWidget {
  const _HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: const SingleChildScrollView(
        child: PlacesListWidget(),
      ),
    );
  }
}

class _FloatingActionButton extends StatelessWidget {
  const _FloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: () {
      
    },);
  }
}