import 'package:chitils/widgets/mod_utility_tile.dart';
import 'package:flutter/material.dart';

class DevicePowerUtility extends StatefulWidget {
  const DevicePowerUtility({super.key});

  @override
  State<DevicePowerUtility> createState() => _DevicePowerUtilityState();
}

class _DevicePowerUtilityState extends State<DevicePowerUtility> {
  static const tileColor = Color.fromARGB(255, 145, 90, 90);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: leftPadding,
        child: Text(
          'DEVICE POWER UTILITY',
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
                  tileIcon: Icons.power_off,
                  tileColor: tileColor,
                  tileName: 'Shutdown',
                  commandCode: 'dpu_s',
                  tileDescription: 'Powers off the device'),
              defaultSpaceBetween,
              tileBuilder(
                  tileIcon: Icons.restart_alt_rounded,
                  tileColor: tileColor,
                  tileName: 'Reboot to System',
                  commandCode: 'dpu_rts',
                  tileDescription: 'Reboots the device'),
              defaultSpaceBetween,
              tileBuilder(
                  tileIcon: Icons.restart_alt_rounded,
                  tileColor: tileColor,
                  tileName: 'Soft Reboot to System',
                  commandCode: 'dpu_srts',
                  tileDescription: 'Soft restarts the device'),
              defaultSpaceBetween,
              tileBuilder(
                  tileIcon: Icons.restart_alt_rounded,
                  tileColor: tileColor,
                  tileName: 'Reboot to Safe Mode',
                  commandCode: 'dpu_rtsm',
                  tileDescription: 'Reboots the device into safe mode'),
              defaultSpaceBetween,
              tileBuilder(
                  tileIcon: Icons.restart_alt_rounded,
                  tileColor: tileColor,
                  tileName: 'Reboot to Recovery',
                  commandCode: 'dpu_rtr',
                  tileDescription: 'Reboots the device into recovery'),
              defaultSpaceBetween,
              tileBuilder(
                  tileIcon: Icons.restart_alt_rounded,
                  tileColor: tileColor,
                  tileName: 'Reboot to Bootloader',
                  commandCode: 'dpu_rtb',
                  tileDescription: 'Reboots the device to the bootloader'),
            ],
          ),
        ),
      )
    ]);
  }
}
