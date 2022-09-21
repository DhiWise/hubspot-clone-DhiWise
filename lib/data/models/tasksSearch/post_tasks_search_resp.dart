import 'package:intl/intl.dart';

class PostTasksSearchResp {
  int? total;
  List<Results>? results;

  PostTasksSearchResp({this.total, this.results});

  PostTasksSearchResp.fromJson(Map<String, dynamic> json) {
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
  String? hsCreatedate;
  String? hsLastmodifieddate;
  String? hsObjectId;
  String? hsTaskBody;
  String? hsTaskPriority;
  String? hsTaskStatus;
  String? hsTaskSubject;
  String? hsTaskType;
  String? hsTimestamp;

  Properties(
      {this.hsCreatedate,
      this.hsLastmodifieddate,
      this.hsObjectId,
      this.hsTaskBody,
      this.hsTaskPriority,
      this.hsTaskStatus,
      this.hsTaskSubject,
      this.hsTaskType,
      this.hsTimestamp});

  Properties.fromJson(Map<String, dynamic> json) {
    hsCreatedate = json['hs_createdate'];
    hsLastmodifieddate = json['hs_lastmodifieddate'];
    hsObjectId = json['hs_object_id'];
    hsTaskBody = json['hs_task_body'];
    hsTaskPriority = json['hs_task_priority'];
    hsTaskStatus = json['hs_task_status'];
    hsTaskSubject = json['hs_task_subject'];
    hsTaskType = json['hs_task_type'];
    hsTimestamp = displayDate(json['hs_timestamp']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.hsCreatedate != null) {
      data['hs_createdate'] = this.hsCreatedate;
    }
    if (this.hsLastmodifieddate != null) {
      data['hs_lastmodifieddate'] = this.hsLastmodifieddate;
    }
    if (this.hsObjectId != null) {
      data['hs_object_id'] = this.hsObjectId;
    }
    if (this.hsTaskBody != null) {
      data['hs_task_body'] = this.hsTaskBody;
    }
    if (this.hsTaskPriority != null) {
      data['hs_task_priority'] = this.hsTaskPriority;
    }
    if (this.hsTaskStatus != null) {
      data['hs_task_status'] = this.hsTaskStatus;
    }
    if (this.hsTaskSubject != null) {
      data['hs_task_subject'] = this.hsTaskSubject;
    }
    if (this.hsTaskType != null) {
      data['hs_task_type'] = this.hsTaskType;
    }
    if (this.hsTimestamp != null) {
      data['hs_timestamp'] = this.hsTimestamp;
    }
    return data;
  }

  displayDate (dateAsString) {
    final DateTime now = DateTime.now().toLocal();

    final today = DateTime(now.year, now.month, now.day);
    final yesterday = DateTime(now.year, now.month, now.day - 1);
    final tomorrow = DateTime(now.year, now.month, now.day + 1);

    final dateToCheck = DateTime.parse(dateAsString).toLocal();
    final aDate = DateTime(dateToCheck.year, dateToCheck.month, dateToCheck.day);

    String displayDate = "";

    if(aDate == today) {
      displayDate += "Today";
    } else if(aDate == yesterday) {
      displayDate += "Yesterday";
    } else if(aDate == tomorrow) {
      displayDate += "Tomorrow";
    }else{

    }
    final DateFormat formatter = DateFormat('h:mm a');
    final String formatted = formatter.format(dateToCheck);
    return displayDate + " " + formatted;
  }
}
