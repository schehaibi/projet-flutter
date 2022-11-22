import 'package:first_app/presentation/views/widgets/item_list.dart';
import 'package:first_app/providers/list_providers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    Provider.of<ListProvider>(context, listen: false).getList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Consumer<ListProvider>(builder: (context, ref, child) {
        return ref.isLoading
            ? const CupertinoActivityIndicator()
            : ListView.separated(
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
                        // list[index].isliked = !list[index].isliked!;
                        // setState(() {
                        //   list = list;
                        Provider.of<ListProvider>(context, listen: false)
                            .onPressLiske(index);
                        post:
                        ref.list[index];
                      });
                },
              );
      }),
    );
  }
}
