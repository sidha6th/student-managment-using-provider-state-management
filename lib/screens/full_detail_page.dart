import 'package:sample/exports/exports.dart';

class StudentfullDetail extends StatelessWidget {
  const StudentfullDetail({Key? key, required this.values, required this.img})
      : super(key: key);
  final StudentModel values;
  final dynamic img;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 30,
        backgroundColor: Colors.teal[400],
        title: Text('student Details'.toUpperCase()),
        centerTitle: true,
      ),
      backgroundColor: Colors.lightBlueAccent[400],
      body: Container(
        decoration: BoxDecoration(
            border: Border.all(
          width: 1,
          color: Colors.white,
        )),
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: CommonCircleAvatar(
                    img: img ?? '',
                    radius: 80,
                    size: const Size(90, 90),
                  ),
                ),
              ),
              SizedBox(
                height: size.height*0.6,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidgets(
                        value: 'Name     : ${values.name}',
                      ),
                      TextWidgets(
                        value: 'Age         : ${values.age}',
                      ),
                      TextWidgets(
                        value: 'Reg.No   : ${values.reg}',
                      ),
                      TextWidgets(
                        value: 'Class      : ${values.std}',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
