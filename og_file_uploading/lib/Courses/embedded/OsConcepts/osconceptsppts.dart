import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../embeddedfiles/Memory Layout Files/embeddedmemoeylayout.dart';
import '../../embeddedfiles/OS Concepts/osconceptspptsfiles.dart';
import '../../embeddedfiles/OS Concepts/osconceptspptsfiles2.dart';
import '../../embeddedfiles/OS Concepts/osconceptspptsfiles3.dart';
import '../../embeddedfiles/OS Concepts/osconceptstextbooks.dart';

final Uri _memorylayout = Uri.parse('https://www.youtube.com/watch?v=XPmIDU2u_8U');

final Uri _memoryleak = Uri.parse('https://www.youtube.com/watch?v=IN95vQ4FiTw');

class OsConceptsppts extends StatefulWidget {
  OsConceptsppts({ super.key});



  @override
  State<OsConceptsppts> createState() => _OsConceptspptsState();
}

class _OsConceptspptsState extends State<OsConceptsppts> {
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
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  "OS Concepts ppt's",
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
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdfOsConceptsppts1()));
                        },
                        child: new Text("01- OS - Overview",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
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
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdfOsConceptsppts2()));
                        },
                        child: new Text("02- OS - Structure",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
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
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdfOsConceptsppts3()));
                        },
                        child: new Text("03- OS - Process",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
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
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdfOsConceptsppts4()));
                        },
                        child: new Text("04- OS - Thread",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
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
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdfOsConceptsppts5()));
                        },
                        child: new Text("05- OS - Process \n           Synchronization",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
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
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdfOsConceptsppts6()));
                        },
                        child: new Text("06- OS - CPU\n               Scheduling ",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
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
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdfOsConceptsppts7()));
                        },
                        child: new Text("07- OS - Deadlock",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
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
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdfOsConceptsppts8()));
                        },
                        child: new Text("08- OS - Main Memory\n               Management",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
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
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdfOsConceptsppts9()));
                        },
                        child: new Text("09- OS -  Virtuval \n                Memory\n               Management",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
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
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdfOsConceptsppts10()));
                        },
                        child: new Text("10- OS - Mass Storage\n                  Systems",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
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
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdfOsConceptsppts11()));
                        },
                        child: new Text("11- OS - File System\n                  Interface",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
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

Future<void> _launchUri() async {
  if(!await launchUrl(_memorylayout)){
    throw Exception('could not $_memorylayout');
  }
}

Future<void> _launchUri2() async {
  if(!await launchUrl(_memoryleak)){
    throw Exception('could not $_memoryleak');
  }
}