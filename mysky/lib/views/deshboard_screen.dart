import 'package:flutter/material.dart';
import 'package:mysky/Api_integration/api_get_data.dart';
import 'package:mysky/views/data_list_screen.dart';
import 'package:mysky/views/entry_screen.dart';

class DeshBoardScreen extends StatefulWidget {
  const DeshBoardScreen({super.key});

  @override
  State<DeshBoardScreen> createState() => _DeshBoardScreenState();
}

class _DeshBoardScreenState extends State<DeshBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: IconButton(
            onPressed: () {
              // ApiAllGetData.GetApiAllGetData(context, "", "");
            },
            icon: Icon(
              Icons.add,
              size: 50,
              color: Colors.amber,
            )),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: AppBar(
            backgroundColor: Color.fromARGB(255, 125, 122, 255),
            automaticallyImplyLeading: false,
            title: const Text(
              "Desh Board",
            ),
            centerTitle: true,
            elevation: 0,
            bottom: TabBar(
              indicatorColor: Colors.black,
              physics: const ClampingScrollPhysics(),
              padding: const EdgeInsets.only(
                  top: 10, left: 10, right: 10, bottom: 15),
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.teal,
              ),
              tabs: [
                Tab(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text("Entry"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text("Data List"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            EntryScreen(),
            DataListScreen(),
          ],
        ),
      ),
    );
  }
}
