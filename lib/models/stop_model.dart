class StopModel {
  String? dateTime;
  int? country;
  String? city;
  String? companyName;
  bool? delivered;
  int? priority;
  String? type;
  bool? disableCityList;
  bool? disableZoneList;
  bool? disableStateList;
  int? geofenceDiameter;
  int? id;
  int? state;
  int? region;
  String? remarks;
  //List<Pod>? pod;
  String? podUploaded;
  String? podUploadedTime;


  StopModel({
    this.dateTime,
    this.country,
    this.city,
    this.companyName,
    this.delivered,
    this.priority,
    this.type,
    this.disableCityList,
    this.disableZoneList,
    this.disableStateList,
    this.geofenceDiameter,
    this.id,
    this.state,
    this.region,
    this.remarks,
    //this.pod,
    this.podUploaded,
    this.podUploadedTime
  });
}
