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
          padding: EdgeInsets.symmetric(horizontal: 10),
          itemCount: controller.surah.length,
          itemBuilder: (_, int index) {
            SurahModel surah = controller.surah[index];
            return Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Text(
                    surah.id.toString(),
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      color: Color(0xff240F4F),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        surah.transliteration,
                        style: GoogleFonts.poppins(
                          color: Color(0xff240F4F),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "${surah.totalVerses} VERSES",
                        style: GoogleFonts.poppins(
                          color: Color(0xff8789A3),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    surah.name,
                    style: GoogleFonts.amiri(
                      color: Color(0xff240F4F),
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
