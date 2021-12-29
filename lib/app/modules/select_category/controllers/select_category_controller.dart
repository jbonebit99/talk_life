import 'dart:convert';

import 'package:get/get.dart';
import 'package:talk_life/app/data/models/category_model.dart';

class SelectCategoryController extends GetxController {
  RxList<Category> category = <Category>[].obs;

  String ts = '''{
    "categories": [
        {
            "id": 7,
            "name": "Relationships"
        },
        {
            "id": 15,
            "name": "Family"
        },
        {
            "id": 12,
            "name": "Self Harm"
        },
        {
            "id": 10,
            "name": "Friends"
        },
        {
            "id": 11,
            "name": "Hopes"
        },
        {
            "id": 5,
            "name": "Bullying"
        },
        {
            "id": 47,
            "name": "Health"
        },
        {
            "id": 48,
            "name": "Work"
        },
        {
            "id": 50,
            "name": "Music"
        },
        {
            "id": 51,
            "name": "Helpful Tips"
        },
        {
            "id": 52,
            "name": "Parenting"
        },
        {
            "id": 53,
            "name": "Education"
        },
        {
            "id": 55,
            "name": "Religion"
        },
        {
            "id": 58,
            "name": "LGBT"
        },
        {
            "id": 59,
            "name": "Pregnancy"
        },
        {
            "id": 61,
            "name": "Positive"
        },
        {
            "id": 62,
            "name": "Mental Health"
        },
        {
            "id": 63,
            "name": "My Story"
        },
        {
            "id": 64,
            "name": "Poetry"
        },
        {
            "id": 65,
            "name": "Eating Disorders"
        },
        {
            "id": 66,
            "name": "Addiction"
        },
        {
            "id": 67,
            "name": "Self-Care"
        },
        {
            "id": 68,
            "name": "I Need Help"
        },
        {
            "id": 69,
            "name": "New Parents"
        },
        {
            "id": 70,
            "name": "Gaming"
        },
        {
            "id": 71,
            "name": "Grief"
        },
        {
            "id": 72,
            "name": "Anxiety"
        },
        {
            "id": 73,
            "name": "Disabilities"
        },
        {
            "id": 74,
            "name": "Depression"
        },
        {
            "id": 75,
            "name": "Life Hacks"
        },
        {
            "id": 77,
            "name": "Politics"
        },
        {
            "id": 78,
            "name": "Ask TalkLife"
        },
        {
            "id": 20,
            "name": "Others"
        }
    ]
}''';

  @override
  void onInit() {
    super.onInit();
    loadCategory();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  loadCategory() {
    final data = jsonDecode(ts);
    category.assignAll(List.generate(
        data['categories'].length, (index) => Category.fromJson(data['categories'][index])));
  }
}
