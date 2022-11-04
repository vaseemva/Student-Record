import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:student_management/home_screen.dart';
import 'package:student_management/student_model.dart';
main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter<StudentList>(StudentListAdapter());
  await Hive.openBox<StudentList>('studentList');
  
 
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      title: 'Student_management',
      home: HomeScreen(),

    );
  }
}