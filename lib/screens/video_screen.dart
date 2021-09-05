import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:modul_accurate_accounting_v5/screens/pdf_screen.dart';
import 'package:modul_accurate_accounting_v5/screens/youtube_screen.dart';

class VideoScreen extends StatefulWidget{
  static const String id ="video_screen";
  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen>{
  final List video = [
    ["Tutorial dan pembahasan soal", "Accurate Accounting 5", "https://youtu.be/2pvs7wYuNe0"],
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView.builder(
            itemCount: video.length,
            itemBuilder: (BuildContext context, int index){
              return Container(
                margin: EdgeInsets.only(bottom: 15),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new YoutubeScreen(video[index][2]),
                        ));
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: index%2==0?Colors.black:Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Image.asset(
                            'assets/menu/video.png',
                            width: 30,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              video[index][0],
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              video[index][1],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}