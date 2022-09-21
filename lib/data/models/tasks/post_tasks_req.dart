class PostTasksReq {
  Properties? properties;

  PostTasksReq({this.properties});

  PostTasksReq.fromJson(Map<String, dynamic> json) {
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
  String? hsTaskBody;
  String? hsTaskPriority;
  String? hsTaskStatus;
  String? hsTaskSubject;
  String? hsTaskType;
  String? hsTimestamp;
  String? hubspotOwnerId;

  Properties(
      {this.hsTaskBody,
      this.hsTaskPriority,
      this.hsTaskStatus,
      this.hsTaskSubject,
      this.hsTaskType,
      this.hsTimestamp,
      this.hubspotOwnerId});

  Properties.fromJson(Map<String, dynamic> json) {
    hsTaskBody = json['hs_task_body'];
    hsTaskPriority = json['hs_task_priority'];
    hsTaskStatus = json['hs_task_status'];
    hsTaskSubject = json['hs_task_subject'];
    hsTaskType = json['hs_task_type'];
    hsTimestamp = json['hs_timestamp'];
    hubspotOwnerId = json['hubspot_owner_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
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
    if (this.hubspotOwnerId != null) {
      data['hubspot_owner_id'] = this.hubspotOwnerId;
    }
    return data;
  }
}
