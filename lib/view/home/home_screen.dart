import 'package:flutter/material.dart';
import 'package:task_app/view/home/details/details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static List<String> fruitname = [
    'Apple',
    'Banana',
    'Mango',
    'Orange',
    'pineapple',
    'Apple',
    'Banana',
    'Mango',
    'Orange',
    'pineapple',
  ];

  static List url = [
    'https://www.applesfromny.com/wp-content/uploads/2020/05/Jonagold_NYAS-Apples2.png',
    'https://cdn.mos.cms.futurecdn.net/42E9as7NaTaAi4A6JcuFwG-1200-80.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Hapus_Mango.jpg/220px-Hapus_Mango.jpg',
    'https://5.imimg.com/data5/VN/YP/MY-33296037/orange-600x600-500x500.jpg',
    'https://5.imimg.com/data5/GJ/MD/MY-35442270/fresh-pineapple-500x500.jpg',
    'https://www.applesfromny.com/wp-content/uploads/2020/05/Jonagold_NYAS-Apples2.png',
    'https://cdn.mos.cms.futurecdn.net/42E9as7NaTaAi4A6JcuFwG-1200-80.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Hapus_Mango.jpg/220px-Hapus_Mango.jpg',
    'https://5.imimg.com/data5/VN/YP/MY-33296037/orange-600x600-500x500.jpg',
    'https://5.imimg.com/data5/GJ/MD/MY-35442270/fresh-pineapple-500x500.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 10, crossAxisSpacing: 10, crossAxisCount: 2),
      children: List.generate(
          fruitname.length,
          (index) => GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                          image: url[index], name: fruitname[index])));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        url[index],
                      ),
                    ),
                    Text(fruitname[index])
                  ],
                ),
              )),
    ));
  }
}
