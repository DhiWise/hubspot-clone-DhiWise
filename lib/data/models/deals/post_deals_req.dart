class PostDealsReq {
  Properties? properties;

  PostDealsReq({this.properties});

  PostDealsReq.fromJson(Map<String, dynamic> json) {
    properties = json['properties'] != null
        ? Properties.fromJson(json['properties'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.properties != null) {
      data['properties'] = this.properties?.toJson();
    }
    return data;
  }
}

class Properties {
  String? amount;
  String? closedate;
  String? dealname;
  String? dealstage;
  String? hubspotOwnerId;
  String? pipeline;

  Properties(
      {this.amount,
        this.closedate,
        this.dealname,
        this.dealstage,
        this.hubspotOwnerId,
        this.pipeline});

  Properties.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    closedate = json['closedate'];
    dealname = json['dealname'];
    dealstage = json['dealstage'];
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
    if (this.dealname != null) {
      data['dealname'] = this.dealname;
    }
    if (this.dealstage != null) {
      data['dealstage'] = this.dealstage;
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
