import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:talk_life/app/modules/register/controllers/register_controller.dart';
import 'package:talk_life/app/routes/app_pages.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: Get.mediaQuery.size.height,
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                  height: Get.mediaQuery.size.height * 0.8,
                  child: Image.asset(
                    "assets/images/image_139.jpg",
                    fit: BoxFit.fill,
                  )),
            ),
            Positioned.fill(
              top: 0,
              left: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: const [0.4, 0.3, 0.6, 1.0],
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
              alignment: Alignment.bottomCenter,
              height: Get.mediaQuery.size.height,
              child: SingleChildScrollView(
                physics: ClampingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Get.mediaQuery.size.height * 0.3,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, bottom: 30),
                      child: Text(
                        'Let\'s get you started!',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 12, right: 12),
                      width: Get.mediaQuery.size.width,
                      child: TextFormField(
                        controller: controller.emailEditController,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'Your email',
                          labelStyle: TextStyle(color: Color(0xFF808080)),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12),
                      child: LinearProgressIndicator(
                        color: Color(0xFF647FFF),
                        value: 1,
                        minHeight: 0.5,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 12, right: 12),
                      width: Get.mediaQuery.size.width,
                      child: Obx(() => TextFormField(
                            controller: controller.passwordEditController,
                            style: TextStyle(color: Colors.white),
                            obscuringCharacter: '*', // defaults to *
                            obscureText: controller.showPassword.value,
                            enableSuggestions: false,
                            autocorrect: false,
                            decoration: InputDecoration(
                              labelText: 'Your password',
                              labelStyle: TextStyle(color: Color(0xFF808080)),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  controller.showPassword.value
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Color(0xFF808080),
                                ),
                                onPressed: () {
                                  controller.showPassword.value = !controller.showPassword.value;
                                },
                              ),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            ),
                          )),
                    ),
                    Obx(() => Padding(
                          padding: EdgeInsets.only(left: 12, right: 12),
                          child: LinearProgressIndicator(
                            color: Color(controller.passwordStrength.value.color),
                            value: controller.passwordStrength.value.value,
                            minHeight: 0.5,
                            backgroundColor: controller.passwordStrength.value.value == 0 &&
                                    controller.passwordStrength.value.name != 'Too short'
                                ? Color(0xFF647FFF)
                                : Color(0xFF808080),
                          ),
                        )),
                    Obx(() => Padding(
                          padding: EdgeInsets.only(top: 12, left: 12, right: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                controller.passwordStrength.value.name,
                                style: TextStyle(
                                    color: Color(controller.passwordStrength.value.color),
                                    fontSize: 12),
                              )
                            ],
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 12, bottom: 10),
                      child: Row(
                        children: [
                          Obx(() => Checkbox(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                value: controller.checkOld.value,
                                onChanged: (newValue) {
                                  controller.checkOld.value = newValue!;
                                },

                                /// Set your color here
                                fillColor: MaterialStateProperty.all(Color(0xFF647FFF)),
                              )),
                          Text(
                            'I am over 16 years of age',
                            style: TextStyle(fontSize: 14.0, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      child: RichText(
                        text: TextSpan(
                          text:
                              'By clicking Sign Up, you are indicating that you have read and agree to the',
                          style: TextStyle(color: Color(0xFF808080), fontSize: 12.0),
                          children: const <TextSpan>[
                            TextSpan(
                                text: ' Terms of Service ',
                                style: TextStyle(color: Color(0xFF647FFF), fontSize: 12.0)),
                            TextSpan(text: 'and ', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: ' Privacy Policy!',
                                style: TextStyle(color: Color(0xFF647FFF), fontSize: 12.0)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Get.toNamed(Routes.SELECT_CATEGORY);
                            },
                            child: Text('Sign up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600)),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              controller.signin();
                            },
                            child: Icon(Icons.arrow_forward_rounded),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  CircleBorder(side: BorderSide(color: Color(0xFF647FFF)))),
                              padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                              backgroundColor: MaterialStateProperty.all(Colors.transparent),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // Container(
      //   decoration: const BoxDecoration(
      //     // gradient: LinearGradient(
      //     //   stops: [0.1, 1.0],
      //     //   begin: FractionalOffset.topCenter,
      //     //   end: FractionalOffset.bottomCenter, // 10% of the width, so there are ten blinds.
      //     //   colors: <Color>[Color(0xFF1D2238), Color(0xff000000)],
      //     //   tileMode: TileMode.mirror, // repeats the gradient over the canvas
      //     // ),
      //     image: DecorationImage(
      //       image: AssetImage("assets/images/image_139.jpg"),
      //       fit: BoxFit.fitHeight,
      //     ),
      //   ),
      // ),
    );
  }
}
