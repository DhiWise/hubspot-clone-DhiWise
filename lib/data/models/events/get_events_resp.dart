import 'package:intl/intl.dart';

class GetEventsResp {
  bool? hasMore;
  String? offset;
  List<Events>? events;

  GetEventsResp({this.hasMore, this.offset, this.events});

  GetEventsResp.fromJson(Map<String, dynamic> json) {
    hasMore = json['hasMore'];
    offset = json['offset'];
    if (json['events'] != null) {
      events = <Events>[];
      json['events'].forEach((v) {
        events?.add(Events.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.hasMore != null) {
      data['hasMore'] = this.hasMore;
    }
    if (this.offset != null) {
      data['offset'] = this.offset;
    }
    if (this.events != null) {
      data['events'] = this.events?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Events {
  String? deviceType;
  String? id;
  String? created;
  String? recipient;
  String? type;
  int? emailCampaignId;
  String? from;



  Events(
      {
        this.deviceType,
        this.id,
        this.created,
        this.recipient,
        this.type,
        this.emailCampaignId,
        this.from,
      });

  Events.fromJson(Map<String, dynamic> json) {
    deviceType = json['deviceType'];
    id = json['id'];
    created = displayTime(json['created']);
    recipient = json['recipient'];
    type = json['type'];
    emailCampaignId = json['emailCampaignId'];
    from = json['from'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.deviceType != null) {
      data['deviceType'] = this.deviceType;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.created != null) {
      data['created'] = this.created;
    }
    if (this.recipient != null) {
      data['recipient'] = this.recipient;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.emailCampaignId != null) {
      data['emailCampaignId'] = this.emailCampaignId;
    }
    if (this.from != null) {
      data['from'] = this.from;
    }
    return data;
  }


  displayTime (timestamp) {
    var dateToCheck = DateTime.fromMillisecondsSinceEpoch(timestamp).toLocal();

    final DateFormat formatter = DateFormat('dd-MMMM-yyyy H:mm aa');
    final String formatted = formatter.format(dateToCheck);
    return formatted;
  }

}