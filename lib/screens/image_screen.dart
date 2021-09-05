import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageScreen extends StatefulWidget{
  static const String id ="image_screen";

  final title;
  final asset;

  ImageScreen(this.title, this.asset);

  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen>{
  bool _isLoading = true;
  PhotoView document;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  @override
  void dispose() {
    super.dispose();
  }

  loadDocument() async {
    document = await PhotoView(
      imageProvider: AssetImage(widget.asset),
      minScale: PhotoViewComputedScale.contained,
      backgroundDecoration: BoxDecoration(color: Colors.white),
    );

    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: _isLoading
              ? Center(child: CircularProgressIndicator(),)
              : Container(color: Colors.white, child: document)
      ),
    );
  }
}