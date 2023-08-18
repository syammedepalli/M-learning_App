import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';

class syamloadPdf extends StatefulWidget{
  @override
  _syamloadPdfState createState() =>_syamloadPdfState();
}

class _syamloadPdfState extends State<syamloadPdf> {
  late PDFDocument doc;
  firebase_storage.FirebaseStorage storage = firebase_storage.FirebaseStorage.instance;

  Future<void> listExample() async {
    firebase_storage.ListResult result =
    await firebase_storage.FirebaseStorage.instance.ref().child('files').listAll();

    result.items.forEach((firebase_storage.Reference ref) {
      print('Found file: $ref');
    });

    result.prefixes.forEach((firebase_storage.Reference ref) {
      print('Found directory: $ref');
    });
  }

  Future<void> downloadURLExample() async {
    String downloadURL = await firebase_storage.FirebaseStorage.instance
        .ref('files1/some1-file.pdf')
        .getDownloadURL();
    print(downloadURL);
    doc = await PDFDocument.fromURL(downloadURL);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPDF(doc)));  //Notice the Push Route once this is done.
  }
  @override
  void initState(){
    super.initState();
    listExample();
    downloadURLExample();
    print('All done');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
    ),
      ),
    );
  }
}

class ViewPDF extends StatelessWidget {

  PDFDocument document;
  ViewPDF(this.document);

  @override
  Widget build(BuildContext context) {
    return PDFViewer(document: document);
  }
}
