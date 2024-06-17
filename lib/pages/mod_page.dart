import 'package:chitils/utility_groups/device_power_utlility.dart';
import 'package:chitils/utility_groups/miui_monet_utility.dart';
import 'package:chitils/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class ModPage extends StatefulWidget {
  const ModPage({super.key});

  @override
  State<ModPage> createState() => _ModPageState();
}

class _ModPageState extends State<ModPage> {
  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color.fromARGB(255, 28, 31, 36);
    const pageName = 'UTILITIES';
    const groupSpaceBetween = SizedBox(
      height: 20,
    );

    double pageWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // ROOT CONTAINER
      backgroundColor: backgroundColor,
      body: Container(
          alignment: Alignment.topLeft,

          // ROOT COLUMN
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TITLE TEXTS
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  padding: const EdgeInsets.all(25),
                  width: pageWidth,
                  child: const TitleWidget(pageName: pageName,)
                ),

                // CONTENT
                // ignore: sized_box_for_whitespace
                Container(
                  width: pageWidth,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // MIUI MONET MODULE MODS
                      MiuiMonetUtility(),
                      groupSpaceBetween,
                      DevicePowerUtility(),

                      // OTHER MOD GROUPS
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
