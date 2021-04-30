import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:movpass/controllers/serviceController.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Home extends StatelessWidget {
  final ServiceController serviceController = Get.put(ServiceController());

  Size displaySize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  double displayHeight(BuildContext context) {
    return displaySize(context).height;
  }

  double displayWidth(BuildContext context) {
    return displaySize(context).width;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(fit: StackFit.expand, children: <Widget>[
        new Positioned(
          child: new Align(
            alignment: FractionalOffset.topCenter,
            child: Image(
              image: AssetImage(
                'lib/assets/background.png',
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
              top: displayHeight(context) / 6, left: 17.0, right: 17.0),
          child: Text(
            'Treinos Movpass',
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        new Positioned(
            child: new Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                    height: displayHeight(context) / 1.3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30.0),
                          topLeft: Radius.circular(30.0)),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Obx(() {
                            if (serviceController.isLoading.value)
                              return Center(child: CircularProgressIndicator());
                            else
                              return StaggeredGridView.countBuilder(
                                crossAxisCount: 1,
                                itemCount:
                                    serviceController.servicosList.length,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16,
                                itemBuilder: (context, index) {
                                  return Container(
                                    color: Colors.red,
                                    width: 100,
                                    height: 100,
                                  );
                                },
                                staggeredTileBuilder: (index) =>
                                    StaggeredTile.fit(1),
                              );
                          }),
                        )
                      ],
                    )))),
      ]),
    );
  }
}
