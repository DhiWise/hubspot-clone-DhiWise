class PostContactsSearchResp {
  int? total;
  List<Results>? results;

  PostContactsSearchResp({this.total, this.results});

  PostContactsSearchResp.fromJson(Map<String, dynamic> json) {
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
  String? company;
  String? createdate;
  String? email;
  String? firstname;
  String? hsObjectId;
  String? lastmodifieddate;
  String? lastname;
  String? phone;

  Properties(
      {this.company,
      this.createdate,
      this.email,
      this.firstname,
      this.hsObjectId,
      this.lastmodifieddate,
      this.lastname,
      this.phone});

  Properties.fromJson(Map<String, dynamic> json) {
    company = json['company'];
    createdate = json['createdate'];
    email = json['email'];
    firstname = json['firstname'];
    hsObjectId = json['hs_object_id'];
    lastmodifieddate = json['lastmodifieddate'];
    lastname = json['lastname'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.company != null) {
      data['company'] = this.company;
    }
    if (this.createdate != null) {
      data['createdate'] = this.createdate;
    }
    if (this.email != null) {
      data['email'] = this.email;
    }
    if (this.firstname != null) {
      data['firstname'] = this.firstname;
    }
    if (this.hsObjectId != null) {
      data['hs_object_id'] = this.hsObjectId;
    }
    if (this.lastmodifieddate != null) {
      data['lastmodifieddate'] = this.lastmodifieddate;
    }
    if (this.lastname != null) {
      data['lastname'] = this.lastname;
    }
    if (this.phone != null) {
      data['phone'] = this.phone;
    }
    return data;
  }
}
