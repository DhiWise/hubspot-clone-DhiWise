class PostCompaniesSearchResp {
  int? total;
  List<Results>? results;

  PostCompaniesSearchResp({this.total, this.results});

  PostCompaniesSearchResp.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.total != null) {
      data['total'] = this.total;
    }
    if (this.results != null) {
      data['results'] = this.results?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  String? id;
  Properties? properties;
  String? createdAt;
  String? updatedAt;
  bool? archived;

  Results(
      {this.id,
      this.properties,
      this.createdAt,
      this.updatedAt,
      this.archived});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    properties = json['properties'] != null
        ? Properties.fromJson(json['properties'])
        : null;
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    archived = json['archived'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.properties != null) {
      data['properties'] = this.properties?.toJson();
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

class Properties {
  String? city;
  String? createdate;
  String? domain;
  String? hsLastmodifieddate;
  String? hsObjectId;
  String? name;
  String? phone;
  String? state;

  Properties(
      {this.city,
      this.createdate,
      this.domain,
      this.hsLastmodifieddate,
      this.hsObjectId,
      this.name,
      this.phone,
      this.state});

  Properties.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    createdate = json['createdate'];
    domain = json['domain'];
    hsLastmodifieddate = json['hs_lastmodifieddate'];
    hsObjectId = json['hs_object_id'];
    name = json['name'];
    phone = json['phone'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.city != null) {
      data['city'] = this.city;
    }
    if (this.createdate != null) {
      data['createdate'] = this.createdate;
    }
    if (this.domain != null) {
      data['domain'] = this.domain;
    }
    if (this.hsLastmodifieddate != null) {
      data['hs_lastmodifieddate'] = this.hsLastmodifieddate;
    }
    if (this.hsObjectId != null) {
      data['hs_object_id'] = this.hsObjectId;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.phone != null) {
      data['phone'] = this.phone;
    }
    if (this.state != null) {
      data['state'] = this.state;
    }
    return data;
  }
}
