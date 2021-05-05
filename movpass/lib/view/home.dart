import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:movpass/controllers/serviceController.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:movpass/widgets/serviceCard.dart';

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
      backgroundColor: Colors.white,
      body: new Stack(fit: StackFit.expand, children: <Widget>[
        new Positioned(
          child: new Align(
            alignment: FractionalOffset.topCenter,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.darken),
              child: Image(
                image: AssetImage(
                  'lib/assets/background.png',
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
              top: displayHeight(context) / 5.6, left: 17.0, right: 17.0),
          child: Text(
            ('title').tr,
            style: TextStyle(
                fontFamily: 'Mulish',
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Colors.white),
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
                        SizedBox(height: 5),
                        Expanded(
                          child: Obx(() {
                            if (serviceController.isLoading.value)
                              return Center(child: CircularProgressIndicator());
                            else
                              return StaggeredGridView.countBuilder(
                                crossAxisCount: 1,
                                mainAxisSpacing: 16,
                                itemCount:
                                    serviceController.servicosList.length,
                                padding: EdgeInsets.only(
                                    left: 16, right: 16, top: 23),
                                itemBuilder: (context, index) {
                                  return ServiceCard(
                                      serviceController.servicosList[index]);
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
