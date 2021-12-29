import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:talk_life/app/data/models/category_model.dart';

import '../controllers/select_category_controller.dart';

class SelectCategoryView extends GetView<SelectCategoryController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Done',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: Get.mediaQuery.size.height,
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                  height: Get.mediaQuery.size.height * 0.8,
                  child: Image.asset(
                    "assets/images/image_304.jpg",
                    fit: BoxFit.fill,
                  )),
            ),
            Positioned.fill(
              top: 0,
              left: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: const [0.01, 0.02, 0.45, 1.0],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      const Color(0xFF1D2238).withOpacity(0.55),
                      const Color(0xFF1D2238).withOpacity(0.55),
                      const Color(0xFF030406),
                      const Color(0xFF000000)
                    ],
                    tileMode: TileMode.repeated,
                  ),
                ),
              ),
            ),
            Container(
              height: Get.mediaQuery.size.height,
              width: double.infinity,
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Wellcome to TalkLife',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 22.0)),
                          Text(
                              'Please select categories what you would like to see on your feed. You can set this later on Filter.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.0)),
                        ],
                      ),
                    ),
                    Container(
                      height: Get.mediaQuery.size.height * 0.6,
                      child: GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(10),
                        crossAxisSpacing: 7,
                        crossAxisCount: 3,
                        children: List.generate(
                            controller.category.length, (index) => itemInGirdview(index)),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget itemInGirdview(int index) {
    RxList<Category> category = controller.category;
    return GestureDetector(
      onTap: () {
        controller.category[index].selected = !controller.category[index].selected!;
        controller.category.refresh();
      },
      child: Obx(() => Container(
            margin: const EdgeInsets.fromLTRB(0, 18, 0, 18),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: category[index].selected ?? false
                  ? LinearGradient(
                      colors: [Color(0xFF8A32A9), Color(0xFF8A00FF)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)
                  : null,

              border: Border.all(
                  color: category[index].selected ?? false
                      ? Colors.transparent
                      : Color(0xFF1F1F1F), // Set border color
                  width: 2.0), // Set border width
              borderRadius: BorderRadius.all(Radius.circular(10.0)), // Set rounded corner radius
              // Make rounded corner of border
            ),
            child: Text(
              category[index].name,
              style: TextStyle(color: Color(0xFFD1D1D1)),
            ),
          )),
    );
  }
}
