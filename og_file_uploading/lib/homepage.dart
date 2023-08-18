import 'package:flutter/material.dart';
import 'package:og_file_uploading/syamuploadpdf.dart';
import 'package:og_file_uploading/viewpdf.dart';

import 'syamloadpdf.dart';
import 'uploadpdf.dart';

class HomePage extends StatelessWidget{
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
                Navigator.push(context,MaterialPageRoute(builder: (context)=> UploadPDF()));
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
               Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdf()));
             }),
         MaterialButton(
             color: Colors.green,
             child: Text(
                 'syam'
             ),
             onPressed: (){
               Navigator.push(context,MaterialPageRoute(builder: (context)=> SyamUploadPDF()));
             }),
         SizedBox(
           height: 20,
         ),
         MaterialButton(
             color: Colors.green,
             child: Text(
                 'View Syam'
             ),
             onPressed: (){
               Navigator.push(context,MaterialPageRoute(builder: (context)=> syamloadPdf()));
             }),
       ],
     ),
   );
  }

}