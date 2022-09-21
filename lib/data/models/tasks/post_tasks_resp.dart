class PostTasksResp {
  String? id;
  Properties? properties;
  String? createdAt;
  String? updatedAt;
  bool? archived;

  PostTasksResp(
      {this.id,
      this.properties,
      this.createdAt,
      this.updatedAt,
      this.archived});

  PostTasksResp.fromJson(Map<String, dynamic> json) {
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
  Null? hsTaskBody;
  String? hsTaskForObjectType;
  String? hsTaskIsAllDay;
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
      this.hsTaskForObjectType,
      this.hsTaskIsAllDay,
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
    hsTaskForObjectType = json['hs_task_for_object_type'];
    hsTaskIsAllDay = json['hs_task_is_all_day'];
    hsTaskPriority = json['hs_task_priority'];
    hsTaskStatus = json['hs_task_status'];
    hsTaskSubject = json['hs_task_subject'];
    hsTaskType = json['hs_task_type'];
    hsTimestamp = json['hs_timestamp'];
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
    if (this.hsTaskForObjectType != null) {
      data['hs_task_for_object_type'] = this.hsTaskForObjectType;
    }
    if (this.hsTaskIsAllDay != null) {
      data['hs_task_is_all_day'] = this.hsTaskIsAllDay;
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
}
