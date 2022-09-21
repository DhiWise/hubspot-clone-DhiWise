class GetPipelinesDealsResp {
  List<Results>? results;

  GetPipelinesDealsResp({this.results});

  GetPipelinesDealsResp.fromJson(Map<String, dynamic> json) {
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
  List<Stages>? stages;
  String? createdAt;
  String? updatedAt;
  bool? archived;

  Results(
      {this.label,
      this.displayOrder,
      this.id,
      this.stages,
      this.createdAt,
      this.updatedAt,
      this.archived});

  Results.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    displayOrder = json['displayOrder'];
    id = json['id'];
    if (json['stages'] != null) {
      stages = <Stages>[];
      json['stages'].forEach((v) {
        stages?.add(Stages.fromJson(v));
      });
    }
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
    if (this.stages != null) {
      data['stages'] = this.stages?.map((v) => v.toJson()).toList();
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

class Stages {
  String? label;
  int? displayOrder;
  Metadata? metadata;
  String? id;
  String? createdAt;
  String? updatedAt;
  bool? archived;
  bool? internalWriteOnly;

  Stages(
      {this.label,
      this.displayOrder,
      this.metadata,
      this.id,
      this.createdAt,
      this.updatedAt,
      this.archived,
      this.internalWriteOnly});

  Stages.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    displayOrder = json['displayOrder'];
    metadata =
        json['metadata'] != null ? Metadata.fromJson(json['metadata']) : null;
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    archived = json['archived'];
    internalWriteOnly = json['internalWriteOnly'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.label != null) {
      data['label'] = this.label;
    }
    if (this.displayOrder != null) {
      data['displayOrder'] = this.displayOrder;
    }
    if (this.metadata != null) {
      data['metadata'] = this.metadata?.toJson();
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
    if (this.internalWriteOnly != null) {
      data['internalWriteOnly'] = this.internalWriteOnly;
    }
    return data;
  }
}

class Metadata {
  String? isClosed;
  String? probability;

  Metadata({this.isClosed, this.probability});

  Metadata.fromJson(Map<String, dynamic> json) {
    isClosed = json['isClosed'];
    probability = json['probability'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.isClosed != null) {
      data['isClosed'] = this.isClosed;
    }
    if (this.probability != null) {
      data['probability'] = this.probability;
    }
    return data;
  }
}
