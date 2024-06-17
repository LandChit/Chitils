import 'package:chitils/main.dart';
import 'package:chitils/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _statusChanged = 0;
  String rootStatus = "Root unavailable";
  String rootStatusDescription =
      "You are currently not rooted. If you are, check your root solution. Check if Chitils has SuperUser rights.";

  // @override
  // void initState() {
  //   super.initState();
  //   checkRoot();
  //   checkRootAvailability();
  // }
  //
  // //Check Root status
  // Future<void> checkRoot() async {
  //   bool? result = await Root.isRooted();
  //   setState(() {
  //     statusRoot = result!;
  //     _statusChanged = 1;
  //   });
  // }
  //
  // //Check Root availability
  // Future<void> checkRootAvailability() async {
  //   bool? result = await Root.isRootAvailable();
  //   setState(() {
  //     statusAvailability = result!;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color.fromARGB(255, 28, 31, 36);
    const pageName = 'HOME';
    double pageWidth = MediaQuery.of(context).size.width;

    var rootStatusColor = const Color.fromARGB(255, 220, 100, 105);

    if (statusRoot == true) {
      rootStatusColor = const Color.fromARGB(255, 100, 220, 120);
      rootStatus = "Great you are rooted";
      rootStatusDescription = "You are rooted. You can now use this app";
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      // ROOT CONTAINER
      body: Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
          padding: const EdgeInsets.all(25),
          width: pageWidth,

          // ROOT COLUMN
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TITLE TEXTS
              const TitleWidget(pageName: pageName),

              // CONTENT
              Container(
                margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                width: pageWidth,
                child: Column(
                  children: [
                    // ABOUT APP
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: pageWidth,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 113, 137, 137),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'About this app',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                height: 1,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'This app is made by @LandChit. This app is only guaranteed to work in MIUI (HyperOS❌). Use with caution, I am not liable in any way shape or form if your phone gets bricked.',
                              textAlign: TextAlign.justify,
                            )
                          ]),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // ARE YOU ROOTED?
              Container(
                padding: const EdgeInsets.all(20),
                width: pageWidth,
                decoration: BoxDecoration(
                    color: rootStatusColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        rootStatus,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          height: 1,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        rootStatusDescription,
                        textAlign: TextAlign.justify,
                      )
                    ]),
              )
            ],
          )),
    );
  }
}
