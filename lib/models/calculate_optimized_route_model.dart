class CalculateOptimizedRouteModel {
  String? id;
  String? message;
  String? status;

  CalculateOptimizedRouteModel({this.id, this.message, this.status});

  CalculateOptimizedRouteModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['message'] = message;
    data['status'] = status;
    return data;
  }

  @override
  String toString() {
    return "{id : $id, message $message, status $status}";
  }
}
