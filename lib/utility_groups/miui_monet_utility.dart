import 'package:chitils/widgets/mod_utility_tile.dart';
import 'package:flutter/material.dart';

class MiuiMonetUtility extends StatefulWidget {
  const MiuiMonetUtility({super.key});

  @override
  State<MiuiMonetUtility> createState() => _MiuiMonetUtilityState();
}

class _MiuiMonetUtilityState extends State<MiuiMonetUtility> {
  static const tileColor = Color.fromARGB(255, 113, 137, 137);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: leftPadding,
        child: Text(
          'MIUI MONET COLOR SYNC UTILITY',
          textAlign: TextAlign.start,
          style: TextStyle(
              fontWeight: FontWeight.w900, fontSize: 20, color: Colors.grey),
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
              edgePaddingSize, 10, edgePaddingSize, 15),
          child: Row(
            children: [
              tileBuilder(
                  tileIcon: Icons.restart_alt_outlined,
                  tileColor: tileColor,
                  tileName: 'Restart All',
                  commandCode: 'mmu_ra',
                  tileDescription:
                      'Restarts System UI Plugin, Gboard, and the MUI/POCO Launcher'),
              defaultSpaceBetween,
              tileBuilder(
                  tileIcon: Icons.restart_alt_outlined,
                  tileColor: tileColor,
                  tileName: 'Restart Gboard',
                  commandCode: 'mmu_rg',
                  tileDescription: 'Restarts Google Keyboard'),
              defaultSpaceBetween,
              tileBuilder(
                  tileIcon: Icons.restart_alt_outlined,
                  tileColor: tileColor,
                  tileName: 'Restart Launcher',
                  commandCode: 'mmu_rl',
                  tileDescription: 'Restarts the MIUI/POCO launcher'),
              defaultSpaceBetween,
              tileBuilder(
                  tileIcon: Icons.restart_alt_outlined,
                  tileColor: tileColor,
                  tileName: 'Restart System UI Plugin',
                  commandCode: 'mmu_rsup',
                  tileDescription: 'Restarts System UI Plugin')
            ],
          ),
        ),
      )
    ]);
  }
}
