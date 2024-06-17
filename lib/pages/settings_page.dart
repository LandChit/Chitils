import 'package:chitils/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color.fromARGB(255, 28, 31, 36);
    const pageName = 'SETTINGS';
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
                ),
              )
            ],
          )),
    );
  }
}
