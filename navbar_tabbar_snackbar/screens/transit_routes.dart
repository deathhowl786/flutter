import 'package:flutter/material.dart';
import 'package:navigator_tabbar_snackbar/styles/button_style.dart';

class TransitRoutes extends StatelessWidget {
  TransitRoutes({super.key});

  final Map<String, Icon> transitRoutes = <String, Icon>{
    "Walk": const Icon(Icons.directions_walk),
    "Bike": const Icon(Icons.directions_bike),
    "Car": const Icon(Icons.directions_car),
    "Bus": const Icon(Icons.directions_bus),
    "Train": const Icon(Icons.directions_train),
    "Ferry": const Icon(Icons.directions_ferry),
  };

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: transitRoutes.length,
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.deepPurple,
          leading: const Icon(Icons.route),
          title: const Text("Transit Routes"),
          bottom: TabBar(tabs: getTransitTabs()),
        ),
        body: TabBarView(children: getTransitTabViews(context)),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.home),
        ),
      ),
    );
  }

  List<Widget> getTransitTabs() {
    return transitRoutes.keys
        .map((transitRoute) => Tab(
              text: transitRoute,
              icon: transitRoutes[transitRoute],
            ))
        .toList();
  }

  List<Widget> getTransitTabViews(BuildContext context) {
    return transitRoutes.keys
        .map((transitRoute) => Center(
              child: ElevatedButton(
                style: MyButtonStyle().elevatedButtonStyle,
                onPressed: () => activateSnackBar(transitRoute, context),
                child: const Text("Get Routes"),
              ),
            ))
        .toList();
  }

  void activateSnackBar(String transitRoute, BuildContext context) {
    final SnackBar snackBar = SnackBar(
      content: Text("These are $transitRoute Routes !"),
      action: SnackBarAction(
          label: "Undo",
          onPressed: () {
            print("Undo was Pressed!");
          }),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
