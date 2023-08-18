import 'package:flutter/material.dart';
import 'package:og_file_uploading/project%20page.dart';

class TeamFolderPage extends StatefulWidget {
  const TeamFolderPage({Key? key}) : super(key: key);


  @override
  State<TeamFolderPage> createState() => _TeamFolderPageState();

}

class _TeamFolderPageState extends State<TeamFolderPage> {
  double availableScreenWidth = 0;
  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    availableScreenWidth = MediaQuery.of(context).size.width - 50;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(children: [
        // Header Section
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
              children: const [
                Text(
                  "M-Learning App",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  "Mempage",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ],
            ),
           ]),
        ),

        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(25),
            //scrollDirection: Axis.horizontal,
            children: [
              const Text(
                "Powered By",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {}, // Image tapped
                child: Image.asset(
                  'assets/images/mempagelogo1.jpg',
                  //fit: BoxFit.cover, // Fixes border issues
                  // width: 90,
                  height: 200,
                ),
              ),
              const Divider(
                height: 5,
              ),

              //Crousess List
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Courses List",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Create new",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // Folder List
              Container(
                margin: const EdgeInsets.only(bottom: 0),
                padding: const EdgeInsets.symmetric(horizontal: 40),
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
                        width: 12,
                      ),
                      new GestureDetector(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> ProjectPage()));
                        },
                        child: new Text("Embeded System",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      // GestureDetector(
                      //   onTap: () {}, // Image tapped
                      //   child: Image.asset(
                      //     'assets/images/mempagelogo1.jpg',
                      //     //fit: BoxFit.cover, // Fixes border issues
                      //     // width: 90,
                      //     height: 200,
                      //   ),
                      // ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> ProjectPage()));
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
                padding: const EdgeInsets.symmetric(horizontal: 40),
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
                        width: 12,
                      ),
                      new GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "myRoute");
                        },
                        child: new Text("Devops",
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
                padding: const EdgeInsets.symmetric(horizontal: 40),
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
                        width: 12,
                      ),
                      new GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "myRoute");
                        },
                        child: new Text("Flutter",
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
                padding: const EdgeInsets.symmetric(horizontal: 40),
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
                        width: 12,
                      ),
                      new GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "myRoute");
                        },
                        child: new Text("Python",
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
                padding: const EdgeInsets.symmetric(horizontal: 40),
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
                        width: 12,
                      ),
                      new GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "myRoute");
                        },
                        child: new Text("Java",
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
            ],
          ),
        ),

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

  // Widget buildProjectRow(String folderName) {
  //   return GestureDetector(
  //     onTap: () {
  //       Navigator.of(context).push(MaterialPageRoute<void>(
  //         builder: (BuildContext context) =>  ProjectPage(folderName: folderName,),));
  //     },
  //     child: Container(
  //       margin: const EdgeInsets.only(bottom: 8),
  //       padding: const EdgeInsets.symmetric(horizontal: 20),
  //       height: 65,
  //       decoration: BoxDecoration(
  //           color: Colors.grey.shade500, borderRadius: BorderRadius.circular(15)),
  //       child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
  //         Row(
  //           children: [
  //             Icon(
  //               Icons.folder,
  //               color: Colors.blue[200],
  //             ),
  //             const SizedBox(
  //               width: 12,
  //             ),
  //             Text(
  //               folderName,
  //               style: const TextStyle(
  //                 fontSize: 16,
  //               ),
  //             )
  //           ],
  //         ),
  //         IconButton(
  //           onPressed: () {},
  //           icon: const Icon(
  //             Icons.more_vert_rounded,
  //             color: Colors.grey,
  //           ),
  //         )
  //       ]),
  //     ),
  //   );
  // }
  //
  // Column buildFileColumn(String image, String filename, String extension) {
  //   return Column(
  //     children: [
  //       Container(
  //         width: availableScreenWidth * .48,
  //         decoration: BoxDecoration(
  //             color: Colors.grey.shade500,
  //             borderRadius: BorderRadius.circular(20)),
  //         padding: const EdgeInsets.all(18),
  //         height: 110,
  //         child: Image.asset('assets/images/$image.png'),
  //       ),
  //       const SizedBox(
  //         height: 15,
  //       ),
  //       RichText(
  //         text: TextSpan(
  //             text: filename,
  //             style: const TextStyle(
  //               color: Colors.black,
  //               fontSize: 14,
  //             ),
  //             children: [
  //               TextSpan(
  //                 text: extension,
  //                 style: const TextStyle(
  //                   color: Colors.grey,
  //                   fontWeight: FontWeight.w300,
  //                   fontSize: 12,
  //                 ),
  //               ),
  //             ]),
  //       ),
  //     ],
  //   );
  // }
  //
  // Column buildFileSizeChart(
  //     String title, Color? color, double widthPercentage) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Container(
  //         width: availableScreenWidth * widthPercentage,
  //         height: 4,
  //         color: color,
  //       ),
  //       const SizedBox(
  //         height: 8,
  //       ),
  //       Text(
  //         title,
  //         style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
  //       ),
  //     ],
  //   );
  }