class PostSearchResp {
  int? total;
  List<Results>? results;

  PostSearchResp({this.total, this.results});

  PostSearchResp.fromJson(Map<String, dynamic> json) {
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
  String? amount;
  String? closedate;
  String? createdate;
  String? dealname;
  String? dealstage;
  String? hsLastmodifieddate;
  String? hsObjectId;
  String? hubspotOwnerId;
  String? pipeline;

  Properties(
      {this.amount,
      this.closedate,
      this.createdate,
      this.dealname,
      this.dealstage,
      this.hsLastmodifieddate,
      this.hsObjectId,
      this.hubspotOwnerId,
      this.pipeline});

  Properties.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    closedate = json['closedate'];
    createdate = json['createdate'];
    dealname = json['dealname'];
    dealstage = json['dealstage'];
    hsLastmodifieddate = json['hs_lastmodifieddate'];
    hsObjectId = json['hs_object_id'];
    hubspotOwnerId = json['hubspot_owner_id'];
    pipeline = json['pipeline'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.amount != null) {
      data['amount'] = this.amount;
    }
    if (this.closedate != null) {
      data['closedate'] = this.closedate;
    }
    if (this.createdate != null) {
      data['createdate'] = this.createdate;
    }
    if (this.dealname != null) {
      data['dealname'] = this.dealname;
    }
    if (this.dealstage != null) {
      data['dealstage'] = this.dealstage;
    }
    if (this.hsLastmodifieddate != null) {
      data['hs_lastmodifieddate'] = this.hsLastmodifieddate;
    }
    if (this.hsObjectId != null) {
      data['hs_object_id'] = this.hsObjectId;
    }
    if (this.hubspotOwnerId != null) {
      data['hubspot_owner_id'] = this.hubspotOwnerId;
    }
    if (this.pipeline != null) {
      data['pipeline'] = this.pipeline;
    }
    return data;
  }
}
