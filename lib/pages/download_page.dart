import 'package:chitils/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({super.key});

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color.fromARGB(255, 28, 31, 36);
    const pageName = 'DOWNLOAD';
    double pageWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // ROOT CONTAINER
      backgroundColor: backgroundColor,
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
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("HELLO")],),
              )
            ],
          )),
    );
  }
}
