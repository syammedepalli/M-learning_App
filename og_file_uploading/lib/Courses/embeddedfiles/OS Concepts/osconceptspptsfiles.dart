import 'dart:io';

import 'package:flutter/material.dart';
import 'package:og_file_uploading/syamuploadpdf.dart';
import 'package:og_file_uploading/viewpdf.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter_document_picker/flutter_document_picker.dart';
import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';


class OsConceptspptsfiles extends StatelessWidget{
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
                Navigator.push(context,MaterialPageRoute(builder: (context)=> UploadPdfOsConceptsppts1()));
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
                Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdfOsConceptsppts1()));
              }),
          MaterialButton(
              color: Colors.green,
              child: Text(
                  '2Upload PDFs'
              ),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> UploadPdfOsConceptsppts2()));
              }),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
              color: Colors.green,
              child: Text(
                  '2View PDF'
              ),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdfOsConceptsppts2()));
              }),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
              color: Colors.green,
              child: Text(
                  '3Upload PDFs'
              ),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> UploadPdfOsConceptsppts3()));
              }),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
              color: Colors.blue,
              child: Text(
                  '3View PDFs'
              ),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdfOsConceptsppts3()));
              }),
          MaterialButton(
              color: Colors.green,
              child: Text(
                  '4Upload PDFs'
              ),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> UploadPdfOsConceptsppts4()));
              }),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
              color: Colors.green,
              child: Text(
                  '4View PDF'
              ),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdfOsConceptsppts4()));
              }),
          SizedBox(
            height: 20,
          ),

        ],
      ),
    );
  }

}


class UploadPdfOsConceptsppts1 extends StatelessWidget {
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
        .child('/somes11-file.pdf');

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



class loadPdfOsConceptsppts1 extends StatefulWidget{
  @override

  _loadPdfOsConceptsppts1State createState() =>_loadPdfOsConceptsppts1State();
}

class _loadPdfOsConceptsppts1State extends State<loadPdfOsConceptsppts1> {
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
        .ref('embedded/c-language-Basics/c-programming-tutorial/somes11-file.pdf')
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

class UploadPdfOsConceptsppts2 extends StatelessWidget {
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
        .child('/somes12-file.pdf');

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
class loadPdfOsConceptsppts2 extends StatefulWidget{
  @override

  _loadPdfOsConceptsppts2State createState() =>_loadPdfOsConceptsppts2State();
}
class _loadPdfOsConceptsppts2State extends State<loadPdfOsConceptsppts2> {
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
        .ref('embedded/c-language-Basics/c-programming-tutorial/somes12-file.pdf')
        .getDownloadURL();
    print(downloadURL);
    doc = await PDFDocument.fromURL(downloadURL);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPDF2(doc)));  //Notice the Push Route once this is done.
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

class ViewPDF2 extends StatelessWidget {

  PDFDocument document;
  ViewPDF2(this.document);

  @override
  Widget build(BuildContext context) {
    return PDFViewer(document: document);
  }
}

class UploadPdfOsConceptsppts3 extends StatelessWidget {
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
        .child('/somes13-file.pdf');

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



class loadPdfOsConceptsppts3 extends StatefulWidget{
  @override

  _loadPdfOsConceptsppts3State createState() =>_loadPdfOsConceptsppts3State();
}

class _loadPdfOsConceptsppts3State extends State<loadPdfOsConceptsppts3> {
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
        .ref('embedded/c-language-Basics/c-programming-tutorial/somes13-file.pdf')
        .getDownloadURL();
    print(downloadURL);
    doc = await PDFDocument.fromURL(downloadURL);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPDF3(doc)));  //Notice the Push Route once this is done.
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

class ViewPDF3 extends StatelessWidget {

  PDFDocument document;
  ViewPDF3(this.document);

  @override
  Widget build(BuildContext context) {
    return PDFViewer(document: document);
  }
}

class UploadPdfOsConceptsppts4 extends StatelessWidget {
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
        .child('/somes14-file.pdf');

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



class loadPdfOsConceptsppts4 extends StatefulWidget{
  @override

  _loadPdfOsConceptsppts4State createState() =>_loadPdfOsConceptsppts4State();
}

class _loadPdfOsConceptsppts4State extends State<loadPdfOsConceptsppts4> {
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
        .ref('embedded/c-language-Basics/c-programming-tutorial/somes14-file.pdf')
        .getDownloadURL();
    print(downloadURL);
    doc = await PDFDocument.fromURL(downloadURL);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPDF4(doc)));  //Notice the Push Route once this is done.
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

class ViewPDF4 extends StatelessWidget {

  PDFDocument document;
  ViewPDF4(this.document);

  @override
  Widget build(BuildContext context) {
    return PDFViewer(document: document);
  }
}
