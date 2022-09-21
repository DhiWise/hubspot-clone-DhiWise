class PostTasksSearchReq {
  List<FilterGroups>? filterGroups;
  List<String>? properties;
  int? limit;
  int? after;
  List<String>? sorts;

  PostTasksSearchReq(
      {this.filterGroups, this.properties, this.limit, this.after,this.sorts});

  PostTasksSearchReq.fromJson(Map<String, dynamic> json) {
    if (json['filterGroups'] != null) {
      filterGroups = <FilterGroups>[];
      json['filterGroups'].forEach((v) {
        filterGroups?.add(FilterGroups.fromJson(v));
      });
    }
    properties = json['properties'].cast<String>();
    limit = json['limit'];
    after = json['after'];
    sorts = json['sorts'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.filterGroups != null) {
      data['filterGroups'] = this.filterGroups?.map((v) => v.toJson()).toList();
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
    if (this.sorts != null) {
      data['sorts'] = this.sorts;
    }
    return data;
  }
}

class FilterGroups {
  List<Filters>? filters;

  FilterGroups({this.filters});

  FilterGroups.fromJson(Map<String, dynamic> json) {
    if (json['filters'] != null) {
      filters = <Filters>[];
      json['filters'].forEach((v) {
        filters?.add(Filters.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.filters != null) {
      data['filters'] = this.filters?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Filters {
  String? propertyName;
  String? koperator;
  String? value;

  Filters({this.propertyName, this.koperator, this.value});

  Filters.fromJson(Map<String, dynamic> json) {
    propertyName = json['propertyName'];
    koperator = json['operator'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.propertyName != null) {
      data['propertyName'] = this.propertyName;
    }
    if (this.koperator != null) {
      data['operator'] = this.koperator;
    }
    if (this.value != null) {
      data['value'] = this.value;
    }
    return data;
  }
}
