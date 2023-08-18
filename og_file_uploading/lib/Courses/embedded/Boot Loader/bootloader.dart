import 'package:flutter/material.dart';
import 'package:og_file_uploading/Courses/embedded/OsConcepts/osconceptstextbooks.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../embeddedfiles/Board Support Packages Files/boardsupportfile.dart';
import '../../embeddedfiles/Memory Layout Files/embeddedmemoeylayout.dart';
import '../../embeddedfiles/Networking Concepts files/networkconceptsfiles.dart';
import '../OsConcepts/osconceptsppts.dart';


final Uri _bootloader = Uri.parse('https://embetronicx.com/bootloader-tutorials/');


class BootLoader extends StatefulWidget {
  BootLoader({ super.key});



  @override
  State<BootLoader> createState() => _BootLoaderState();
}

class _BootLoaderState extends State<BootLoader> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          alignment: Alignment.bottomCenter,
          height: 150,
          decoration: BoxDecoration(color: Colors.blue.shade800),
          child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Embedded",
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  "Boot Loader",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text("Mempage",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
              ],
            )
          ]),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(25),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Course",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Follw Step By Step",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 0),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 65,
                decoration: BoxDecoration(
                    color: Colors.grey.shade500, borderRadius: BorderRadius.circular(15)),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Row(
                    children: [
                      Icon(
                        Icons.folder,
                        color: Colors.blue[200],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      new GestureDetector(
                        onTap: _launchUribootloader,
                        child: new Text("Boot Loader Tutorials",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: _launchUribootloader,
                    icon: const Icon(
                      Icons.more_vert_rounded,
                      color: Colors.grey,
                    ),
                  )
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        )
      ]),
      floatingActionButton: Container(
        decoration: const BoxDecoration(shape: BoxShape.circle, boxShadow: [
          BoxShadow(color: Colors.white, spreadRadius: 7, blurRadius: 1)
        ]),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time),
              label: 'Time',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              label: 'Folder',
            ),
          ]),
    );
  }
}

Future<void> _launchUribootloader() async {
  if(!await launchUrl(_bootloader)){
    throw Exception('could not $_bootloader');
  }
}


