import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';

class PDFScreen extends StatefulWidget{
  static const String id ="pdf_screen";

  final title;
  final asset;

  PDFScreen(this.title, this.asset);

  @override
  _PDFScreenState createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PDFScreen>{
  bool _isLoading = true;
  PDFDocument document;

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
    document = await PDFDocument.fromAsset(widget.asset);

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
            : PDFViewer(document: document, zoomSteps: 1,),
      ),
    );
  }
}