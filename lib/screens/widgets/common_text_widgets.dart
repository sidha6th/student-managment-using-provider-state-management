import 'package:sample/exports/exports.dart';

class TextWidgets extends StatelessWidget {
  const TextWidgets({
    Key? key,
    required this.value,
  }) : super(key: key);

  final String value;

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      maxLines: 1,
      style: const TextStyle(
        overflow: TextOverflow.ellipsis,
        color: Colors.white,
        fontSize: 30,
      ),
    );
  }
}
