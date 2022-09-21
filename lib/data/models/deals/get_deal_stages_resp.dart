class GetDealStagesResp {
  List<Results>? results;

  GetDealStagesResp({this.results});

  GetDealStagesResp.fromJson(Map<String, dynamic> json) {
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
  String? label;
  int? displayOrder;
  String? id;
  String? createdAt;
  String? updatedAt;
  bool? archived;

  Results(
      {this.label,
      this.displayOrder,
      this.id,
      this.createdAt,
      this.updatedAt,
      this.archived});

  Results.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    displayOrder = json['displayOrder'];
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    archived = json['archived'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.label != null) {
      data['label'] = this.label;
    }
    if (this.displayOrder != null) {
      data['displayOrder'] = this.displayOrder;
    }
    if (this.id != null) {
      data['id'] = this.id;
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




