import 'dart:io';

import 'package:flutter/material.dart';
import 'package:og_file_uploading/syamuploadpdf.dart';
import 'package:og_file_uploading/viewpdf.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter_document_picker/flutter_document_picker.dart';
import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';


class LinuxArticlefiles1  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
          ),
          MaterialButton(
              color: Colors.green,
              child: Text(
                  'Upload PDFs'
              ),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> UploadPdfLinuxArticlefiles1()));
              }),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
              color: Colors.blue,
              child: Text(
                  'View PDFs'
              ),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdfLinuxArticlefiles1()));
              }),
        ],
      ),
    );
  }

}


class UploadPdfLinuxArticlefiles1 extends StatelessWidget {
  Future<firebase_storage.UploadTask?> uploadFile(File file) async {

    if (file == null) {
      print("No File WAs Picked");
      return null;
    }

    firebase_storage.UploadTask uploadTask;

    // Create a Reference to the file
    firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
        .ref()
        .child('embedded')
        .child('c-language-Basics')
        .child('c-programming-tutorial')
        .child('/article1-file.pdf');

    final metadata = firebase_storage.SettableMetadata(
        contentType: 'file/pdf',
        customMetadata: {'picked-file-path': file.path});
    print("Uploading..!");

    uploadTask = ref.putData(await file.readAsBytes(), metadata);

    print("done..!");
    return Future.value(uploadTask);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: MaterialButton(
          child: Text(
              "Select File"
          ),
          onPressed: ()async {
            final path = await FlutterDocumentPicker.openDocument();
            print(path);
            File file = File(path!);
            firebase_storage.UploadTask? task = await uploadFile(file);
            Navigator.pop(context);
          },
        ),
      ),

    );
  }
}



class loadPdfLinuxArticlefiles1 extends StatefulWidget{
  @override

  _loadPdfLinuxArticlefiles1State createState() =>_loadPdfLinuxArticlefiles1State();
}

class _loadPdfLinuxArticlefiles1State extends State<loadPdfLinuxArticlefiles1> {
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
        .ref('embedded/c-language-Basics/c-programming-tutorial/article1-file.pdf')
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
      body:CircularProgressIndicator(
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
