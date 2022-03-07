import 'package:sample/exports/exports.dart';

class CommonCircleAvatar extends StatelessWidget {
  const CommonCircleAvatar({
    required this.radius,
    required this.img,
    required this.size,
    Key? key,
  }) : super(key: key);
  final String img;
  final Size size;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/defalultimage.png',
          ),
        ),
      ),
      child: img.toString().trim().isNotEmpty
          ? CircleAvatar(
              radius: radius,
              backgroundImage: MemoryImage(
                const Base64Decoder().convert(
                  img.toString(),
                ),
              ),
            )
          : const SizedBox(),
    );
  }
}
