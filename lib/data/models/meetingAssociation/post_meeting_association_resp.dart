class PostMeetingAssociationResp {
  String? status;
  List<Results>? results;
  String? startedAt;
  String? completedAt;

  PostMeetingAssociationResp({this.status, this.results, this.startedAt, this.completedAt});

  PostMeetingAssociationResp.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
    startedAt = json['startedAt'];
    completedAt = json['completedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.results != null) {
      data['results'] = this.results?.map((v) => v.toJson()).toList();
    }
    if (this.startedAt != null) {
      data['startedAt'] = this.startedAt;
    }
    if (this.completedAt != null) {
      data['completedAt'] = this.completedAt;
    }
    return data;
  }
}

class Results {
  From? from;
  List<To>? to;

  Results({this.from, this.to});

  Results.fromJson(Map<String, dynamic> json) {
    from = json['from'] != null ? From.fromJson(json['from']) : null;
    if (json['to'] != null) {
      to = <To>[];
      json['to'].forEach((v) {
        to?.add(To.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.from != null) {
      data['from'] = this.from?.toJson();
    }
    if (this.to != null) {
      data['to'] = this.to?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class From {
  String? id;

  From({this.id});

  From.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    return data;
  }
}

class To {
  int? toObjectId;
  List<AssociationTypes>? associationTypes;

  To({this.toObjectId, this.associationTypes});

  To.fromJson(Map<String, dynamic> json) {
    toObjectId = json['toObjectId'];
    if (json['associationTypes'] != null) {
      associationTypes = <AssociationTypes>[];
      json['associationTypes'].forEach((v) {
        associationTypes?.add(AssociationTypes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.toObjectId != null) {
      data['toObjectId'] = this.toObjectId;
    }
    if (this.associationTypes != null) {
      data['associationTypes'] =
          this.associationTypes?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AssociationTypes {
  String? category;
  int? typeId;
  Null? label;

  AssociationTypes({this.category, this.typeId, this.label});

  AssociationTypes.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    typeId = json['typeId'];
    label = json['label'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.category != null) {
      data['category'] = this.category;
    }
    if (this.typeId != null) {
      data['typeId'] = this.typeId;
    }
    if (this.label != null) {
      data['label'] = this.label;
    }
    return data;
  }
}
