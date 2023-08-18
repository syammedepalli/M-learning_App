import 'dart:io';

import 'package:flutter/material.dart';
import 'package:og_file_uploading/syamuploadpdf.dart';
import 'package:og_file_uploading/viewpdf.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter_document_picker/flutter_document_picker.dart';
import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';


class linuxdevicedriversfile extends StatelessWidget{
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
                Navigator.push(context,MaterialPageRoute(builder: (context)=> UploadPdflinuxdevicedriversfile1()));
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
                Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdflinuxdevicedriversfile1()));
              }),
          MaterialButton(
              color: Colors.green,
              child: Text(
                  '2Upload PDFs'
              ),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> UploadPdflinuxdevicedriversfile2()));
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
                Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdflinuxdevicedriversfile2()));
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
                Navigator.push(context,MaterialPageRoute(builder: (context)=> UploadPdflinuxdevicedriversfile3()));
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
                Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdflinuxdevicedriversfile3()));
              }),
          MaterialButton(
              color: Colors.green,
              child: Text(
                  '4Upload PDFs'
              ),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> UploadPdflinuxinternalfile8()));
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
                Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdflinuxinternalfile8()));
              }),
          SizedBox(
            height: 20,
          ),

        ],
      ),
    );
  }

}


class UploadPdflinuxdevicedriversfile1 extends StatelessWidget {
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
        .child('/driver1-file.pdf');

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



class loadPdflinuxdevicedriversfile1 extends StatefulWidget{
  @override

  _loadPdflinuxdevicedriversfile1State createState() =>_loadPdflinuxdevicedriversfile1State();
}

class _loadPdflinuxdevicedriversfile1State extends State<loadPdflinuxdevicedriversfile1> {
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
        .ref('embedded/c-language-Basics/c-programming-tutorial/driver1-file.pdf')
        .getDownloadURL();
    print(downloadURL);
    doc = await PDFDocument.fromURL(downloadURL);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPDF30(doc)));  //Notice the Push Route once this is done.
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

class ViewPDF30 extends StatelessWidget {

  PDFDocument document;
  ViewPDF30(this.document);

  @override
  Widget build(BuildContext context) {
    return PDFViewer(document: document);
  }
}

class UploadPdflinuxdevicedriversfile2 extends StatelessWidget {
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
        .child('/driver2-file.pdf');

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
class loadPdflinuxdevicedriversfile2 extends StatefulWidget{
  @override

  _loadPdflinuxdevicedriversfile2State createState() =>_loadPdflinuxdevicedriversfile2State();
}
class _loadPdflinuxdevicedriversfile2State extends State<loadPdflinuxdevicedriversfile2> {
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
        .ref('embedded/c-language-Basics/c-programming-tutorial/driver2-file.pdf')
        .getDownloadURL();
    print(downloadURL);
    doc = await PDFDocument.fromURL(downloadURL);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPDF31(doc)));  //Notice the Push Route once this is done.
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

class ViewPDF31 extends StatelessWidget {

  PDFDocument document;
  ViewPDF31(this.document);

  @override
  Widget build(BuildContext context) {
    return PDFViewer(document: document);
  }
}

class UploadPdflinuxdevicedriversfile3 extends StatelessWidget {
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
        .child('/driver3-file.pdf');

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



class loadPdflinuxdevicedriversfile3 extends StatefulWidget{
  @override

  _loadPdflinuxinternalfile3State createState() =>_loadPdflinuxinternalfile3State();
}

class _loadPdflinuxinternalfile3State extends State<loadPdflinuxdevicedriversfile3> {
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
        .ref('embedded/c-language-Basics/c-programming-tutorial/driver3-file.pdf')
        .getDownloadURL();
    print(downloadURL);
    doc = await PDFDocument.fromURL(downloadURL);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPDF32(doc)));  //Notice the Push Route once this is done.
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

class ViewPDF32 extends StatelessWidget {

  PDFDocument document;
  ViewPDF32(this.document);

  @override
  Widget build(BuildContext context) {
    return PDFViewer(document: document);
  }
}

class UploadPdflinuxinternalfile8 extends StatelessWidget {
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
        .child('/linux8-file.pdf');

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



class loadPdflinuxinternalfile8 extends StatefulWidget{
  @override

  _loadPdflinuxinternalfile8State createState() =>_loadPdflinuxinternalfile8State();
}

class _loadPdflinuxinternalfile8State extends State<loadPdflinuxinternalfile8> {
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
        .ref('embedded/c-language-Basics/c-programming-tutorial/linux8-file.pdf')
        .getDownloadURL();
    print(downloadURL);
    doc = await PDFDocument.fromURL(downloadURL);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPDF20(doc)));  //Notice the Push Route once this is done.
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

class ViewPDF20 extends StatelessWidget {

  PDFDocument document;
  ViewPDF20(this.document);

  @override
  Widget build(BuildContext context) {
    return PDFViewer(document: document);
  }
}
