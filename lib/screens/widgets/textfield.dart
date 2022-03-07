import 'package:sample/exports/exports.dart';

class Textfield extends StatelessWidget {
  const Textfield(
      {Key? key,
      required this.isnumber,
      required this.textcontroller,
      required this.hindText})
      : super(key: key);
  final String hindText;
  final bool isnumber;
  final TextEditingController textcontroller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: isnumber == true ? TextInputType.number : TextInputType.name,
      textInputAction: TextInputAction.next,
      controller: textcontroller,
      decoration: InputDecoration(
          border: const OutlineInputBorder(borderSide: BorderSide()),
          hintText: hindText),
    );
  }
}
  