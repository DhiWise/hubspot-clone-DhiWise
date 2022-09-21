class PostSearchReq {
  List? filterGroups;
  List<String>? sorts;
  List<String>? properties;
  int? limit;
  int? after;

  PostSearchReq(
      {this.filterGroups, this.sorts, this.properties, this.limit, this.after});

  PostSearchReq.fromJson(Map<String, dynamic> json) {
    if (json['filterGroups'] != null) {
      filterGroups = [];
      json['filterGroups'].forEach((v) {
        filterGroups?.add(v);
      });
    }
    sorts = json['sorts'].cast<String>();
    properties = json['properties'].cast<String>();
    limit = json['limit'];
    after = json['after'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.filterGroups != null) {
      data['filterGroups'] = this.filterGroups?.map((v) => v).toList();
    }
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
