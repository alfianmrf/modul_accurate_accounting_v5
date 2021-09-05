import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:modul_accurate_accounting_v5/screens/home_screen.dart';
import 'package:modul_accurate_accounting_v5/screens/pdf_screen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeScreen extends StatefulWidget{
  static const String id ="youtube_screen";

  final url;

  YoutubeScreen(this.url);

  @override
  _YoutubeScreenState createState() => _YoutubeScreenState();
}

class _YoutubeScreenState extends State<YoutubeScreen>{

  YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.url),
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
    _controller.toggleFullScreenMode();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: YoutubePlayerBuilder(
          player: YoutubePlayer(
          controller: _controller,
          bottomActions: [
            CurrentPosition(),
            ProgressBar(isExpanded: true),
            RemainingDuration(),
          ],
      ),
      builder: (context, player) {
        return Column(
          children: [
            // some widgets
            player,
            //some other widgets
          ],
        );
      }),
    );
  }

  Future<bool> _onBackPressed() {
    _controller.toggleFullScreenMode();
    Navigator.of(context).popUntil((route) => route.isFirst);
    return Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }
}