class PostReadReq {
  List<Inputs>? inputs;

  PostReadReq({this.inputs});

  PostReadReq.fromJson(Map<String, dynamic> json) {
    if (json['inputs'] != null) {
      inputs = <Inputs>[];
      json['inputs'].forEach((v) {
        inputs?.add(Inputs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.inputs != null) {
      data['inputs'] = this.inputs?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Inputs {
  String? id;

  Inputs({this.id});

  Inputs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    return data;
  }
}
