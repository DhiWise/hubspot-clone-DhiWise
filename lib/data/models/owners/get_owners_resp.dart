class GetOwnersResp {
  List<Results>? results;

  GetOwnersResp({this.results});

  GetOwnersResp.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.results != null) {
      data['results'] = this.results?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  String? id;
  String? email;
  String? firstName;
  String? lastName;
  int? userId;
  String? createdAt;
  String? updatedAt;
  bool? archived;

  Results(
      {this.id,
      this.email,
      this.firstName,
      this.lastName,
      this.userId,
      this.createdAt,
      this.updatedAt,
      this.archived});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    userId = json['userId'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    archived = json['archived'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.email != null) {
      data['email'] = this.email;
    }
    if (this.firstName != null) {
      data['firstName'] = this.firstName;
    }
    if (this.lastName != null) {
      data['lastName'] = this.lastName;
    }
    if (this.userId != null) {
      data['userId'] = this.userId;
    }
    if (this.createdAt != null) {
      data['createdAt'] = this.createdAt;
    }
    if (this.updatedAt != null) {
      data['updatedAt'] = this.updatedAt;
    }
    if (this.archived != null) {
      data['archived'] = this.archived;
    }
    return data;
  }
}
