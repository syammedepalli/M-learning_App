import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../embeddedfiles/linux Internal System Programming/linuxinternalfiles.dart';
import '../../embeddedfiles/linux Internal System Programming/linuxinternalfiles1.dart';


final Uri _briefonlinux = Uri.parse('https://www.youtube.com/watch?v=aBh1DDiOMsI&list=PLsI2APLEA9Eq6z8zUlOJrqmc5KBwLTV4A');

final Uri _unixprocessvideos = Uri.parse('https://code-vault.net/course/46qpfr4tkz:1603732431896');

final Uri _unixthreads = Uri.parse('https://code-vault.net/course/6q6s9eerd0:1609007479575');

final Uri _linkedlistinc = Uri.parse('https://code-vault.net/course/z1ry7bakhs:1603732279805');

final Uri _posix = Uri.parse('https://www.cs.cmu.edu/afs/cs/academic/class/15492-f07/www/pthreads.html');


class LinuxinternalSystem extends StatefulWidget {
  const LinuxinternalSystem({ super.key});

  @override
  State<LinuxinternalSystem> createState() => _LinuxinternalSystemState();
}

class _LinuxinternalSystemState extends State<LinuxinternalSystem> {
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
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                      color: Colors.white,
                  ),
                ),
                const Text(
                  "Linux Internal System\nProgramming",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
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
        // Container(
        //   padding: const EdgeInsets.only(left: 25, top: 25),
        //   height: 130,
        //   child: ListView(
        //     scrollDirection: Axis.horizontal,
        //     children: [
        //       buildAvatar('Mia', 'mia'),
        //       buildAvatar('Adam', 'adam'),
        //       buildAvatar('Jess', 'jess'),
        //       buildAvatar('Mike', 'mike'),
        //       buildAvatar('Brandon', 'brandon'),
        //       buildAvatar('Alie', 'alie'),
        //     ],
        //   ),
        // ),
        // const Divider(),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(25),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Embedded Course",
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
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdflinuxinternalfile1()));
                        },
                        child: new Text("Virtual box Installation\n In windows PC",
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdflinuxinternalfile1()));
                    },
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
                        Icons.video_library_rounded,
                        color: Colors.blue[200],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      new GestureDetector(
                        onTap: _launchUribriefonlinux,
                        child: new Text("Brief on Linux Kernel\nDevelopment By \nRobert Love",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: _launchUribriefonlinux,
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
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdflinuxinternalfile2()));
                        },
                        child: new Text("OReilly Linux\nSystem Programming",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdflinuxinternalfile2()));
                    },
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
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdflinuxinternalfile3()));
                        },
                        child: new Text("Linux-In A Nutshell",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdflinuxinternalfile3()));
                    },
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
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdflinuxinternalfile4()));
                        },
                        child: new Text("Linux-Insides",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdflinuxinternalfile4()));
                    },
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
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdflinuxinternalfile5()));
                        },
                        child: new Text("Doc - IPC Mechanism",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdflinuxinternalfile5()));
                    },
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
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdflinuxinternalfile6()));
                        },
                        child: new Text("System & Process\n           Calls",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdflinuxinternalfile6()));
                    },
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
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdflinuxinternalfile7()));
                        },
                        child: new Text("Threads",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdflinuxinternalfile7()));
                    },
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
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdflinuxinternalfile8()));
                        },
                        child: new Text("IPC Mechanism",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> loadPdflinuxinternalfile8()));
                    },
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
                        onTap: _launchUriposix,
                        child: new Text("POSIX thread libraries",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: _launchUriposix,
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
                        Icons.video_library_rounded,
                        color: Colors.blue[200],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: _launchUriunixprocessvideos,
                        child: new Text("Unix Process Videos",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: _launchUriunixprocessvideos,
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
                        Icons.video_library_rounded,
                        color: Colors.blue[200],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      new GestureDetector(
                        onTap: _launchUriunixthreads,
                        child: new Text("Unix Threads",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: _launchUriunixthreads,
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
                        Icons.video_library_rounded,
                        color: Colors.blue[200],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      new GestureDetector(
                        onTap: _launchUrilinkedlistinc,
                        child: new Text("Linked List in C",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: _launchUrilinkedlistinc,
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
Future<void> _launchUribriefonlinux() async {
  if(!await launchUrl(_briefonlinux)){
    throw Exception('could not $_briefonlinux');
  }
}

Future<void> _launchUriunixprocessvideos() async {
  if(!await launchUrl(_unixprocessvideos)){
    throw Exception('could not $_unixprocessvideos');
  }
}

Future<void> _launchUriunixthreads() async {
  if(!await launchUrl(_unixthreads)){
    throw Exception('could not $_unixthreads');
  }
}

Future<void> _launchUrilinkedlistinc() async {
  if(!await launchUrl(_linkedlistinc)){
    throw Exception('could not $_linkedlistinc');
  }
}

Future<void> _launchUriposix() async {
  if(!await launchUrl(_posix)){
    throw Exception('could not $_posix');
  }
}