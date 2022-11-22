import 'package:first_app/presentation/views/widgets/item_list.dart';
import 'package:flutter/material.dart';

import '../../models/post.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Post> list = [];

  @override
  void initState() {
    list = [
      Post(
          name: " yasmina",
          title: "Post1",
          description: "#Post#Description",
          isliked: false,
          avatarImage: "assets/avatar1.jpg",
          image:
              "https://images.pexels.com/photos/1405355/pexels-photo-1405355.jpeg?auto=compress&cs=tinysrgb&w=600"),
      Post(
          title: "Post1",
          name: " yara",
          isliked: false,
          avatarImage: "assets/avatrimage.jpg",
          description: "#Post#Description",
          image:
              "https://images.pexels.com/photos/14013604/pexels-photo-14013604.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
      Post(
          title: "Post1",
          description: "#Post#Description",
          isliked: false,
          avatarImage: "assets/avatar2.jpg",
          name: " yasin",
          image:
              "https://images.pexels.com/photos/1838609/pexels-photo-1838609.jpeg?auto=compress&cs=tinysrgb&w=600"),
      Post(
          title: "Post1",
          isliked: false,
          description: "#Post#Description",
          avatarImage: "assets/avatar3.jpg",
          image:
              "https://images.pexels.com/photos/3014452/pexels-photo-3014452.jpeg?auto=compress&cs=tinysrgb&w=600"),
      Post(
          title: "Post1",
          description: "#Post#Description",
          isliked: false,
          avatarImage: "assets/avatar4.jpg",
          image:
              "https://images.pexels.com/photos/7523254/pexels-photo-7523254.jpeg?auto=compress&cs=tinysrgb&w=600"),
      Post(
          title: "Post1",
          description: "#Post#Description",
          avatarImage: "assets/avatar5.jpg",
          isliked: false,
          image:
              "https://images.pexels.com/photos/12352764/pexels-photo-12352764.jpeg?auto=compress&cs=tinysrgb&w=600"),
      Post(
          title: "Post1",
          avatarImage: "assets/avatar7.jpg",
          description: "#Post#Description",
          isliked: false,
          image:
              "https://images.pexels.com/photos/13989110/pexels-photo-13989110.jpeg?auto=compress&cs=tinysrgb&w=600"),
      Post(
          title: "Post1",
          description: "#Post#Description",
          isliked: false,
          image:
              "https://images.pexels.com/photos/7095716/pexels-photo-7095716.jpeg?auto=compress&cs=tinysrgb&w=600"),
      Post(
          title: "Post1",
          description: "#Post#Description",
          isliked: false,
          image:
              "https://images.pexels.com/photos/6643223/pexels-photo-6643223.jpeg?auto=compress&cs=tinysrgb&w=600"),
      Post(
          title: "Post1",
          description: "#Post#Description",
          isliked: false,
          image:
              "https://images.pexels.com/photos/6643223/pexels-photo-6643223.jpeg?auto=compress&cs=tinysrgb&w=600"),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.separated(
            separatorBuilder: (context, index) {
              return const Divider(
                color: Colors.grey,
                thickness: 1,
              );
            },
            itemCount: list.length,
            itemBuilder: (context, index) {
              return ItemList(
                post: list[index],
                onPressed: () {
                  list[index].isliked = !list[index].isliked!;
                  setState(() {
                    list = list;
                  });
                },
              );
            }),
        // ListView.builder(itemBuilder: ((context, index) {
        //   return  Text("test$index");
        // })),
        // child: ElevatedButton(
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        //   child: const Text("back"),
      ),
    );
  }
}
