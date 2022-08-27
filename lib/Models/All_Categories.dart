class AllCategoriesResponse {
  String? message;
  int? statusCode;
  List<AllCategoriesData>? data;

  AllCategoriesResponse({this.message, this.statusCode, this.data});

  AllCategoriesResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    statusCode = json['statusCode'];
    if (json['data'] != null) {
      data = <AllCategoriesData>[];
      json['data'].forEach((v) {
        data!.add(new AllCategoriesData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['statusCode'] = this.statusCode;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AllCategoriesData {
  int? id;
  String? title;
  String? icon;

  AllCategoriesData({this.id, this.title, this.icon});

  AllCategoriesData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['icon'] = this.icon;
    return data;
  }
}