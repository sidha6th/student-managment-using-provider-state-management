import 'package:sample/exports/exports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gotoSplash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(body: FutureBuilder(
      future: Provider.of<StudentDataController>(context).getdata(),
      builder: (contxt, snaoshot) {
        return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: const Center(
          child: Text(
            'Please Wait...',
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
        ),
      );
      },
    )));
  }

  Future gotoSplash() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (ctxH) => const HomeScreen()));
  }
}
