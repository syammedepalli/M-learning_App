import 'package:flutter/material.dart';

import 'Courses/embedded/Board Support Packages/BoardSupport.dart';
import 'Courses/embedded/Boot Loader/bootloader.dart';
import 'Courses/embedded/C Program Practice/cprogramsforpractice.dart';
import 'Courses/embedded/C Language Basics/embedded_basic.dart';
import 'Courses/embedded/Embedded Linux Articles/embeddedlinuxarticle.dart';
import 'Courses/embedded/Linux Device Drivers/linuxdevicedrivers.dart';
import 'Courses/embedded/Memory Layout/embeddedmemorylayout.dart';
import 'Courses/embedded/Linux Internal System Programming/linuxinternalsystem.dart';
import 'Courses/embedded/Networking Concepts/networkingconcepts.dart';
import 'Courses/embedded/OsConcepts/osconsepts.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({ super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
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
                Text("Embedded ",
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  "Tutorials",
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
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> EmbeddedBasics()));
                        },
                        child: new Text(" C language- Basics",
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
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> EmbeddedMemoryLayout()));
                        },
                        child: new Text("Memory layout \n       of C program",
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
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> CprogramsForPractice()));
                        },
                        child: new Text("C Programs : \n         For Practice",
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
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> OsConcepts()));
                        },
                        child: new Text("OS Concepts",
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
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> LinuxinternalSystem()));
                        },
                        child: new Text("Linux Internals\n System Programming",
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
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> LinuxDeviceDrivers()));
                        },
                        child: new Text("Linux Device Drivers",
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
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> LinuxDeviceDrivers()));
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
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> NetworkingConcepts()));
                        },
                        child: new Text("Networking Concepts",
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
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> NetworkingConcepts()));
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
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> BoardSupport()));
                        },
                        child: new Text("Board Support \n            Packages",
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
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> BoardSupport()));
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
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> BootLoader()));
                        },
                        child: new Text("Boot Loaders",
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
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> BootLoader()));
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
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> LinuxArticle()));
                        },
                        child: new Text("Embedded Linux\n         Articles",
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
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> LinuxArticle()));
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