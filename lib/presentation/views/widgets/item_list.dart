import 'package:flutter/material.dart';

import '../../../models/post.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key, required this.post, required this.onPressed});
  final Post post;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            //Image.network(src),
            post.image ??
                "https://images.pexels.com/photos/2820810/pexels-photo-2820810.jpeg?auto=compress&cs=tinysrgb&w=600",
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            //alignment: Alignment.center,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                        foregroundImage: AssetImage(
                            post.avatarImage ?? "assets/background.jpg")),
                    Text(post.name ?? "yio")
                  ],
                ),
                // Container(
                //   decoration: const BoxDecoration(
                //       shape: BoxShape.circle,
                //       borderRadius: BorderRadius.all(Radius.circular(25))),
                //   child: Image.asset(
                //     post.avatarImage ?? "assetsavatarimage.jpg",
                //     height: 50,
                //     width: 50,
                //     fit: BoxFit.cover,
                //   ),
                // ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(post.title ?? "posst0",
                        style: const TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: Color.fromARGB(255, 211, 68, 255),
                            fontFamily: "Montserrat",
                            color: Color.fromARGB(255, 211, 68, 255),
                            fontWeight: FontWeight.w800,
                            fontSize: 20)),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(post.description ?? "#post0",
                        style: const TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            fontSize: 10)),
                  ],
                ),
                IconButton(
                    onPressed: onPressed,
                    icon: Icon(
                      post.isliked == true
                          ? Icons.favorite
                          : Icons.favorite_outline,
                      color: Colors.red,
                      size: 30,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
