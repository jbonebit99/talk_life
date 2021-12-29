import 'package:talk_life/app/data/models/category_model.dart';
import 'package:talk_life/app/services/api.dart';
import 'package:talk_life/evn/evn.dart';
import 'package:talk_life/utils/utils.dart';

class UserRepository {

  final API api = API();


  Future<bool> logIn({
    required String email,
    required String password,
  }) async {
    var response = await api.register(
      email: email,
      password: password
    );
    if (response.statusCode !=  201) {
      return false;
    }

    Map<String, dynamic> map = response.data;
    String token = map['access_token'];


    if (token.isNotEmpty) {
      await utils.saveSecureData(JWT_TOKEN, token);
      return true;
    }

    return true;
  }

  Future<List<Category>> getCategory({
    required List<String> listCategoryIds,
  }) async {
    var response = await api.getCategory();
    if (response.statusCode != 200) {
      return [];
    }

   List map = response.data;
    List<Category> resList = [];
    for (var element in map) {
      resList.add(Category.fromJson(element));
    }
    return resList;
  }

  Future<bool> updateCategory({
    required List<Category> listCategoryIds,
  }) async {
    int userId = App.user.id;
    var response = await api.updateCategory(
      listCategoryIds: listCategoryIds.map((Category category) => category.id).toList(),
      userId: userId
    );
    if (response.statusCode != 204) {
      return false;
    }

    return true;
  }

}
