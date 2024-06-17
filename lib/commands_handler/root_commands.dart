import 'package:chitils/commands_handler/root_commands_helper.dart';
import 'package:root/root.dart';
import 'package:toast/toast.dart';

late String _result;

Future<void> setCommand(String commandCode) async {
  String? res = await Root.exec(cmd: commands[commandCode]);
  _result = "$commandCode: Executed!\nreturned: $res";
  Toast.show(_result, gravity: Toast.top, duration: 3);
}
