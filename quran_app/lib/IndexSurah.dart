import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;

class IndexSurah extends StatefulWidget {
  const IndexSurah({super.key});

  @override
  State<IndexSurah> createState() => _IndexSurahState();
}

class _IndexSurahState extends State<IndexSurah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Holy Quran", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.brown,
      ),

       body: ListView.builder(
          itemCount:114,
          itemBuilder: (context, index) {
         return
         ListTile(
          title: Text(quran.getSurahNameArabic(index+1)),
          subtitle: Text(quran.getSurahNameEnglish(index+1)),
          leading: Text("$(index+1)" , style: TextStyle(Colors.white),
          backgroundColor: const Color.fromARGB(255, 153, 111, 96)),
          trailing: ({quran.getSurahVerse$(index+1)}),
         );
          }
          ),
      );
  }
}
