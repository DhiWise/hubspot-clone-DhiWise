import 'package:intl/intl.dart';

class PostSearchMeetResp {
  int? total;
  List<Results>? results;

  PostSearchMeetResp({this.total, this.results});

  PostSearchMeetResp.fromJson(Map<String, dynamic> json) {
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
  String? hsMeetingBody;
  String? hsMeetingEndTime;
  String? hsMeetingLocation;
  String? hsMeetingOutcome;
  String? hsMeetingStartTime;
  String? hsMeetingTitle;
  String? hsObjectId;
  String? hsTimestamp;




  Properties(
      {this.hsCreatedate,
        this.hsLastmodifieddate,
        this.hsObjectId,
        this.hsMeetingBody,
        this.hsMeetingEndTime,
        this.hsMeetingLocation,
        this.hsMeetingOutcome,
        this.hsMeetingStartTime,
        this.hsMeetingTitle,
        this.hsTimestamp});

  Properties.fromJson(Map<String, dynamic> json) {
    hsCreatedate = json['hs_createdate'];
    hsLastmodifieddate = json['hs_lastmodifieddate'];
    hsObjectId = json['hs_object_id'];
    hsMeetingBody = json['hs_meeting_body'];
    hsMeetingEndTime = displayMeetTime(json['hs_meeting_end_time']);
    hsMeetingLocation = json['hs_meeting_location'];
    hsMeetingOutcome = json['hs_meeting_outcome'];
    hsMeetingStartTime = displayMeetTime(json['hs_meeting_start_time']);
    hsMeetingTitle = json['hs_meeting_title'];
    hsTimestamp = calculateRemainHours(json['hs_timestamp']);
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
    if (this.hsMeetingBody != null) {
      data['hs_meeting_body'] = this.hsMeetingBody;
    }
    if (this.hsMeetingLocation != null) {
      data['hs_meeting_location'] = this.hsMeetingLocation;
    }
    if (this.hsMeetingOutcome != null) {
      data['hs_meeting_outcome'] = this.hsMeetingOutcome;
    }
    if (this.hsMeetingStartTime != null) {
      data['hs_meeting_start_time'] = this.hsMeetingStartTime;
    }
    if (this.hsMeetingEndTime != null) {
      data['hs_meeting_end_time'] = this.hsMeetingEndTime;
    }
    if (this.hsMeetingTitle != null) {
      data['hs_meeting_title'] = this.hsMeetingTitle;
    }
    if (this.hsTimestamp != null) {
      data['hs_timestamp'] = this.hsTimestamp;
    }
    return data;
  }

  displayMeetTime (dateAsString) {
    final dateToCheck = DateTime.parse(dateAsString).toLocal();
    final DateFormat formatter = DateFormat('h:mm a');
    final String formatted = formatter.format(dateToCheck);
    return formatted;
  }

  calculateRemainHours (dateAsString) {
    final DateTime now = DateTime.now();
    final dateToCheck = DateTime.parse(dateAsString);

    final birthday = DateTime(1967, 10, 12);
    final date2 = DateTime.now();
    final difference = now.difference(dateToCheck).inHours;
    return  "in " + difference.toString() + " hours";

  }

}
