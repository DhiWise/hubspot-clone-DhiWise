class PostDealsResp {
  String? id;
  Properties? properties;
  String? createdAt;
  String? updatedAt;
  bool? archived;

  PostDealsResp(
      {this.id,
      this.properties,
      this.createdAt,
      this.updatedAt,
      this.archived});

  PostDealsResp.fromJson(Map<String, dynamic> json) {
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
  String? amountInHomeCurrency;
  String? closedate;
  String? createdate;
  String? daysToClose;
  String? dealname;
  String? dealstage;
  String? hsAllOwnerIds;
  String? hsClosedAmount;
  String? hsClosedAmountInHomeCurrency;
  String? hsCreatedate;
  String? hsDealStageProbabilityShadow;
  String? hsForecastAmount;
  String? hsIsClosed;
  String? hsIsClosedWon;
  String? hsIsDealSplit;
  String? hsLastmodifieddate;
  String? hsObjectId;
  String? hsProjectedAmount;
  String? hsProjectedAmountInHomeCurrency;
  String? hsUserIdsOfAllOwners;
  String? hubspotOwnerAssigneddate;
  String? hubspotOwnerId;
  String? pipeline;

  Properties(
      {this.amount,
      this.amountInHomeCurrency,
      this.closedate,
      this.createdate,
      this.daysToClose,
      this.dealname,
      this.dealstage,
      this.hsAllOwnerIds,
      this.hsClosedAmount,
      this.hsClosedAmountInHomeCurrency,
      this.hsCreatedate,
      this.hsDealStageProbabilityShadow,
      this.hsForecastAmount,
      this.hsIsClosed,
      this.hsIsClosedWon,
      this.hsIsDealSplit,
      this.hsLastmodifieddate,
      this.hsObjectId,
      this.hsProjectedAmount,
      this.hsProjectedAmountInHomeCurrency,
      this.hsUserIdsOfAllOwners,
      this.hubspotOwnerAssigneddate,
      this.hubspotOwnerId,
      this.pipeline});

  Properties.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    amountInHomeCurrency = json['amount_in_home_currency'];
    closedate = json['closedate'];
    createdate = json['createdate'];
    daysToClose = json['days_to_close'];
    dealname = json['dealname'];
    dealstage = json['dealstage'];
    hsAllOwnerIds = json['hs_all_owner_ids'];
    hsClosedAmount = json['hs_closed_amount'];
    hsClosedAmountInHomeCurrency = json['hs_closed_amount_in_home_currency'];
    hsCreatedate = json['hs_createdate'];
    hsDealStageProbabilityShadow = json['hs_deal_stage_probability_shadow'];
    hsForecastAmount = json['hs_forecast_amount'];
    hsIsClosed = json['hs_is_closed'];
    hsIsClosedWon = json['hs_is_closed_won'];
    hsIsDealSplit = json['hs_is_deal_split'];
    hsLastmodifieddate = json['hs_lastmodifieddate'];
    hsObjectId = json['hs_object_id'];
    hsProjectedAmount = json['hs_projected_amount'];
    hsProjectedAmountInHomeCurrency =
        json['hs_projected_amount_in_home_currency'];
    hsUserIdsOfAllOwners = json['hs_user_ids_of_all_owners'];
    hubspotOwnerAssigneddate = json['hubspot_owner_assigneddate'];
    hubspotOwnerId = json['hubspot_owner_id'];
    pipeline = json['pipeline'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.amount != null) {
      data['amount'] = this.amount;
    }
    if (this.amountInHomeCurrency != null) {
      data['amount_in_home_currency'] = this.amountInHomeCurrency;
    }
    if (this.closedate != null) {
      data['closedate'] = this.closedate;
    }
    if (this.createdate != null) {
      data['createdate'] = this.createdate;
    }
    if (this.daysToClose != null) {
      data['days_to_close'] = this.daysToClose;
    }
    if (this.dealname != null) {
      data['dealname'] = this.dealname;
    }
    if (this.dealstage != null) {
      data['dealstage'] = this.dealstage;
    }
    if (this.hsAllOwnerIds != null) {
      data['hs_all_owner_ids'] = this.hsAllOwnerIds;
    }
    if (this.hsClosedAmount != null) {
      data['hs_closed_amount'] = this.hsClosedAmount;
    }
    if (this.hsClosedAmountInHomeCurrency != null) {
      data['hs_closed_amount_in_home_currency'] =
          this.hsClosedAmountInHomeCurrency;
    }
    if (this.hsCreatedate != null) {
      data['hs_createdate'] = this.hsCreatedate;
    }
    if (this.hsDealStageProbabilityShadow != null) {
      data['hs_deal_stage_probability_shadow'] =
          this.hsDealStageProbabilityShadow;
    }
    if (this.hsForecastAmount != null) {
      data['hs_forecast_amount'] = this.hsForecastAmount;
    }
    if (this.hsIsClosed != null) {
      data['hs_is_closed'] = this.hsIsClosed;
    }
    if (this.hsIsClosedWon != null) {
      data['hs_is_closed_won'] = this.hsIsClosedWon;
    }
    if (this.hsIsDealSplit != null) {
      data['hs_is_deal_split'] = this.hsIsDealSplit;
    }
    if (this.hsLastmodifieddate != null) {
      data['hs_lastmodifieddate'] = this.hsLastmodifieddate;
    }
    if (this.hsObjectId != null) {
      data['hs_object_id'] = this.hsObjectId;
    }
    if (this.hsProjectedAmount != null) {
      data['hs_projected_amount'] = this.hsProjectedAmount;
    }
    if (this.hsProjectedAmountInHomeCurrency != null) {
      data['hs_projected_amount_in_home_currency'] =
          this.hsProjectedAmountInHomeCurrency;
    }
    if (this.hsUserIdsOfAllOwners != null) {
      data['hs_user_ids_of_all_owners'] = this.hsUserIdsOfAllOwners;
    }
    if (this.hubspotOwnerAssigneddate != null) {
      data['hubspot_owner_assigneddate'] = this.hubspotOwnerAssigneddate;
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
