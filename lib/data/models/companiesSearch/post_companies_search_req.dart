class PostCompaniesSearchReq {
  List<String>? sorts;
  List<String>? properties;
  int? limit;
  int? after;

  PostCompaniesSearchReq({this.sorts, this.properties, this.limit, this.after});

  PostCompaniesSearchReq.fromJson(Map<String, dynamic> json) {
    sorts = json['sorts'].cast<String>();
    properties = json['properties'].cast<String>();
    limit = json['limit'];
    after = json['after'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.sorts != null) {
      data['sorts'] = this.sorts;
    }
    if (this.properties != null) {
      data['properties'] = this.properties;
    }
    if (this.limit != null) {
      data['limit'] = this.limit;
    }
    if (this.after != null) {
      data['after'] = this.after;
    }
    return data;
  }
}
