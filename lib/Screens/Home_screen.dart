import 'package:flutter/material.dart';
import 'package:untitled/Widgets/Home_bottom_bar.dart';

import '../Widgets/items_Widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController=TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }
  _handleTabSelection(){
    if(_tabController.indexIsChanging){
      setState(() {

      });
    }
  }
  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(padding: EdgeInsets.only(top: 15),
          child: ListView(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Icon(
                        Icons.sort_rounded,color: Colors.white.withOpacity(0.5),
                        size: 35,
                      ),
                      ),
                    InkWell(
                      onTap: (){},
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white.withOpacity(0.5),
                        size: 35,
                      ),
                    ),
                      ],
                ),
              ),
              SizedBox(height: 30),
              Padding(padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text("It's a Great a day for Coffee", style: TextStyle(color: Colors.white, fontSize: 30,
              fontWeight: FontWeight.w500),
              ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255,50,54,56),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Find your Coffee",
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ) ,
              ),
              TabBar( controller: _tabController,
                  labelColor: Color(0xFFE57734),
                  unselectedLabelColor: Colors.white.withOpacity(0.5),
                  isScrollable: true,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 3,
                      color: Color(0xFFE57734),
                    ),
                  ),
                  dividerColor: Colors.transparent,
                  labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  tabs: [
                Tab(text: "Hot Coffee"),
                Tab(text: "Cold Coffee"),
                Tab(text: "Cappuiccino"),
                Tab(text: "American"),
              ]),
              SizedBox(height: 10),
              Center(
                child: [
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                ][_tabController.index],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
