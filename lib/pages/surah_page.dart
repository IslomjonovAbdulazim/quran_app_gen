import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/surah_controller.dart';
import '../models/surah_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SurahController controller = SurahController();

  @override
  void initState() {
    controller.loadData().then(
      (_) {
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: ListView.builder(
          itemCount: controller.surah.length,
          itemBuilder: (_, int index) {
            SurahModel surah = controller.surah[index];
            return Text(surah.translation);
          },
        ),
      ),
    );
  }
}
