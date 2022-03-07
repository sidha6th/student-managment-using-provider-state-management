import 'package:sample/exports/exports.dart';

class CustomSize extends StatelessWidget {
  const CustomSize({Key? key, required this.height}) : super(key: key);
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
