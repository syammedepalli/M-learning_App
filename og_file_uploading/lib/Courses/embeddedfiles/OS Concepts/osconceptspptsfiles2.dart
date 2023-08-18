import 'dart:io';

import 'package:flutter/material.dart';
import 'package:og_file_uploading/syamuploadpdf.dart';
import 'package:og_file_uploading/viewpdf.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter_document_picker/flutter_document_picker.dart';
import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';


class OsConceptspptsfiles1 extends StatelessWidget{
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
                Navigator.push(context,MaterialPageRoute(builder: (context)=> UploadPdfOsConceptsppts5()));
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
                Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdfOsConceptsppts5()));
              }),
          MaterialButton(
              color: Colors.green,
              child: Text(
                  '2Upload PDFs'
              ),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> UploadPdfOsConceptsppts6()));
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
                Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdfOsConceptsppts6()));
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
                Navigator.push(context,MaterialPageRoute(builder: (context)=> UploadPdfOsConceptsppts7()));
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
                Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdfOsConceptsppts7()));
              }),
          MaterialButton(
              color: Colors.green,
              child: Text(
                  '4Upload PDFs'
              ),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> UploadPdfOsConceptsppts8()));
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
                Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdfOsConceptsppts8()));
              }),
          SizedBox(
            height: 20,
          ),

        ],
      ),
    );
  }

}


class UploadPdfOsConceptsppts5 extends StatelessWidget {
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
        .child('/somes15-file.pdf');

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



class loadPdfOsConceptsppts5 extends StatefulWidget{
  @override

  _loadPdfOsConceptsppts5State createState() =>_loadPdfOsConceptsppts5State();
}

class _loadPdfOsConceptsppts5State extends State<loadPdfOsConceptsppts5> {
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
        .ref('embedded/c-language-Basics/c-programming-tutorial/somes15-file.pdf')
        .getDownloadURL();
    print(downloadURL);
    doc = await PDFDocument.fromURL(downloadURL);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPDF5(doc)));  //Notice the Push Route once this is done.
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

class ViewPDF5 extends StatelessWidget {

  PDFDocument document;
  ViewPDF5(this.document);

  @override
  Widget build(BuildContext context) {
    return PDFViewer(document: document);
  }
}

class UploadPdfOsConceptsppts6 extends StatelessWidget {
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
        .child('/somes16-file.pdf');

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
class loadPdfOsConceptsppts6 extends StatefulWidget{
  @override

  _loadPdfOsConceptsppts6State createState() =>_loadPdfOsConceptsppts6State();
}
class _loadPdfOsConceptsppts6State extends State<loadPdfOsConceptsppts6> {
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
        .ref('embedded/c-language-Basics/c-programming-tutorial/somes16-file.pdf')
        .getDownloadURL();
    print(downloadURL);
    doc = await PDFDocument.fromURL(downloadURL);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPDF6(doc)));  //Notice the Push Route once this is done.
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

class ViewPDF6 extends StatelessWidget {

  PDFDocument document;
  ViewPDF6(this.document);

  @override
  Widget build(BuildContext context) {
    return PDFViewer(document: document);
  }
}

class UploadPdfOsConceptsppts7 extends StatelessWidget {
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
        .child('/somes17-file.pdf');

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



class loadPdfOsConceptsppts7 extends StatefulWidget{
  @override

  _loadPdfOsConceptsppts7State createState() =>_loadPdfOsConceptsppts7State();
}

class _loadPdfOsConceptsppts7State extends State<loadPdfOsConceptsppts7> {
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
        .ref('embedded/c-language-Basics/c-programming-tutorial/somes17-file.pdf')
        .getDownloadURL();
    print(downloadURL);
    doc = await PDFDocument.fromURL(downloadURL);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPDF7(doc)));  //Notice the Push Route once this is done.
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

class ViewPDF7 extends StatelessWidget {

  PDFDocument document;
  ViewPDF7(this.document);

  @override
  Widget build(BuildContext context) {
    return PDFViewer(document: document);
  }
}

class UploadPdfOsConceptsppts8 extends StatelessWidget {
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
        .child('/somes18-file.pdf');

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



class loadPdfOsConceptsppts8 extends StatefulWidget{
  @override

  _loadPdfOsConceptsppts8State createState() =>_loadPdfOsConceptsppts8State();
}

class _loadPdfOsConceptsppts8State extends State<loadPdfOsConceptsppts8> {
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
        .ref('embedded/c-language-Basics/c-programming-tutorial/somes18-file.pdf')
        .getDownloadURL();
    print(downloadURL);
    doc = await PDFDocument.fromURL(downloadURL);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPDF8(doc)));  //Notice the Push Route once this is done.
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

class ViewPDF8 extends StatelessWidget {

  PDFDocument document;
  ViewPDF8(this.document);

  @override
  Widget build(BuildContext context) {
    return PDFViewer(document: document);
  }
}
