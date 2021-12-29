class Category {
  late String name;
  late int id;
  bool? selected;

  Category({required this.name, required this.id, this.selected});

  Category.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    selected = false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    data['selected'] = this.id;
    return data;
  }
}
