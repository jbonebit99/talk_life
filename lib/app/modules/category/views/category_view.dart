import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:talk_life/app/modules/category/controllers/category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CategoryView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CategoryView is working', 
          style: TextStyle(fontSize:20),
        ),
      ),
    );
  }
}
  