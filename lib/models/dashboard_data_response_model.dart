class DashboardDataResponseModel {
  List<Data>? data;

  DashboardDataResponseModel({this.data});

  DashboardDataResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? deliveryTime;
  String? requestorPhone;
  String? truck;
  String? pikcupTime;
  String? bookingID;
  int? localPODThreshold;
  bool? bookingSentToInvoice;
  List<DeliveryAddress>? deliveryAddress;
  String? customerId;
  int? outstationPODThreshold;
  String? tonnage;
  String? manpower;
  bool? locked;
  String? delivery;
  String? dropPoints;
  String? pickup;
  int? colorMode;
  String? tripID;
  String? gpsTrackingUrl;
  String? equipments;
  String? driver;
  List<PickupAddress>? pickupAddress;
  String? bookedDate;
  String? customer;
  String? status;
  String? doNumbers;
  String? agreedPrice;
  String? vendor;

  Data(
      {this.deliveryTime,
      this.requestorPhone,
      this.truck,
      this.pikcupTime,
      this.bookingID,
      this.localPODThreshold,
      this.bookingSentToInvoice,
      this.deliveryAddress,
      this.customerId,
      this.outstationPODThreshold,
      this.tonnage,
      this.manpower,
      this.locked,
      this.delivery,
      this.dropPoints,
      this.pickup,
      this.colorMode,
      this.tripID,
      this.gpsTrackingUrl,
      this.equipments,
      this.driver,
      this.pickupAddress,
      this.bookedDate,
      this.customer,
      this.status,
      this.doNumbers,
      this.agreedPrice,
      this.vendor});

  Data.fromJson(Map<String, dynamic> json) {
    deliveryTime = json['deliveryTime'];
    requestorPhone = json['requestorPhone'];
    truck = json['truck'];
    pikcupTime = json['pikcupTime'];
    bookingID = json['bookingID'];
    localPODThreshold = json['localPODThreshold'];
    bookingSentToInvoice = json['bookingSentToInvoice'];
    if (json['deliveryAddress'] != null) {
      deliveryAddress = <DeliveryAddress>[];
      json['deliveryAddress'].forEach((v) {
        deliveryAddress!.add(DeliveryAddress.fromJson(v));
      });
    }
    customerId = json['customerId'];
    outstationPODThreshold = json['outstationPODThreshold'];
    tonnage = json['tonnage'];
    manpower = json['manpower'];
    locked = json['locked'];
    delivery = json['delivery'];
    dropPoints = json['dropPoints'];
    pickup = json['pickup'];
    colorMode = json['colorMode'];
    tripID = json['tripID'];
    gpsTrackingUrl = json['gpsTrackingUrl'];
    equipments = json['equipments'];
    driver = json['driver'];
    if (json['pickupAddress'] != null) {
      pickupAddress = <PickupAddress>[];
      json['pickupAddress'].forEach((v) {
        pickupAddress!.add(PickupAddress.fromJson(v));
      });
    }
    bookedDate = json['bookedDate'];
    customer = json['customer'];
    status = json['status'];
    doNumbers = json['doNumbers'];
    agreedPrice = json['agreedPrice'];
    vendor = json['vendor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['deliveryTime'] = deliveryTime;
    data['requestorPhone'] = requestorPhone;
    data['truck'] = truck;
    data['pikcupTime'] = pikcupTime;
    data['bookingID'] = bookingID;
    data['localPODThreshold'] = localPODThreshold;
    data['bookingSentToInvoice'] = bookingSentToInvoice;
    if (deliveryAddress != null) {
      data['deliveryAddress'] =
          deliveryAddress!.map((v) => v.toJson()).toList();
    }
    data['customerId'] = customerId;
    data['outstationPODThreshold'] = outstationPODThreshold;
    data['tonnage'] = tonnage;
    data['manpower'] = manpower;
    data['locked'] = locked;
    data['delivery'] = delivery;
    data['dropPoints'] = dropPoints;
    data['pickup'] = pickup;
    data['colorMode'] = colorMode;
    data['tripID'] = tripID;
    data['gpsTrackingUrl'] = gpsTrackingUrl;
    data['equipments'] = equipments;
    data['driver'] = driver;
    if (pickupAddress != null) {
      data['pickupAddress'] =
          pickupAddress!.map((v) => v.toJson()).toList();
    }
    data['bookedDate'] = bookedDate;
    data['customer'] = customer;
    data['status'] = status;
    data['doNumbers'] = doNumbers;
    data['agreedPrice'] = agreedPrice;
    data['vendor'] = vendor;
    return data;
  }
}

class DeliveryAddress {
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
  List<Pod>? pod;
  String? podUploaded;
  String? podUploadedTime;

  DeliveryAddress(
      {this.dateTime,
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
      this.pod,
      this.podUploaded,
      this.podUploadedTime});

  DeliveryAddress.fromJson(Map<String, dynamic> json) {
    dateTime = json['dateTime'];
    country = json['country'];
    city = json['city'];
    companyName = json['companyName'];
    delivered = json['delivered'];
    priority = json['priority'];
    type = json['type'];
    disableCityList = json['disableCityList'];
    disableZoneList = json['disableZoneList'];
    disableStateList = json['disableStateList'];
    geofenceDiameter = json['geofenceDiameter'];
    id = json['id'];
    state = json['state'];
    region = json['region'];
    remarks = json['remarks'];
    if (json['pod'] != null) {
      pod = <Pod>[];
      json['pod'].forEach((v) {
        pod!.add(Pod.fromJson(v));
      });
    }
    podUploaded = json['podUploaded'];
    podUploadedTime = json['podUploadedTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dateTime'] = dateTime;
    data['country'] = country;
    data['city'] = city;
    data['companyName'] = companyName;
    data['delivered'] = delivered;
    data['priority'] = priority;
    data['type'] = type;
    data['disableCityList'] = disableCityList;
    data['disableZoneList'] = disableZoneList;
    data['disableStateList'] = disableStateList;
    data['geofenceDiameter'] = geofenceDiameter;
    data['id'] = id;
    data['state'] = state;
    data['region'] = region;
    data['remarks'] = remarks;
    if (pod != null) {
      data['pod'] = pod!.map((v) => v.toJson()).toList();
    }
    data['podUploaded'] = podUploaded;
    data['podUploadedTime'] = podUploadedTime;
    return data;
  }
}

class Pod {
  bool? podSelected;
  String? imageId;
  String? createdDate;
  bool? cancelled;
  String? tripId;
  bool? updateInBooking;
  int? id;
  String? pODId;
  String? pODStatus;
  String? remarks;

  Pod(
      {this.podSelected,
      this.imageId,
      this.createdDate,
      this.cancelled,
      this.tripId,
      this.updateInBooking,
      this.id,
      this.pODId,
      this.pODStatus,
      this.remarks});

  Pod.fromJson(Map<String, dynamic> json) {
    podSelected = json['podSelected'];
    imageId = json['imageId'];
    createdDate = json['createdDate'];
    cancelled = json['cancelled'];
    tripId = json['tripId'];
    updateInBooking = json['updateInBooking'];
    id = json['id'];
    pODId = json['PODId'];
    pODStatus = json['PODStatus'];
    remarks = json['remarks'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['podSelected'] = podSelected;
    data['imageId'] = imageId;
    data['createdDate'] = createdDate;
    data['cancelled'] = cancelled;
    data['tripId'] = tripId;
    data['updateInBooking'] = updateInBooking;
    data['id'] = id;
    data['PODId'] = pODId;
    data['PODStatus'] = pODStatus;
    data['remarks'] = remarks;
    return data;
  }
}

class PickupAddress {
  String? dateTime;
  int? country;
  String? city;
  String? companyName;
  int? priority;
  bool? disableCityList;
  String? type;
  bool? disableZoneList;
  bool? picked;
  bool? disableStateList;
  int? geofenceDiameter;
  int? id;
  int? state;
  int? region;
  String? remarks;
  String? popUploadedTime;
  List<Pop>? pop;
  String? popUploaded;

  PickupAddress(
      {this.dateTime,
      this.country,
      this.city,
      this.companyName,
      this.priority,
      this.disableCityList,
      this.type,
      this.disableZoneList,
      this.picked,
      this.disableStateList,
      this.geofenceDiameter,
      this.id,
      this.state,
      this.region,
      this.remarks,
      this.popUploadedTime,
      this.pop,
      this.popUploaded});

  PickupAddress.fromJson(Map<String, dynamic> json) {
    dateTime = json['dateTime'];
    country = json['country'];
    city = json['city'];
    companyName = json['companyName'];
    priority = json['priority'];
    disableCityList = json['disableCityList'];
    type = json['type'];
    disableZoneList = json['disableZoneList'];
    picked = json['picked'];
    disableStateList = json['disableStateList'];
    geofenceDiameter = json['geofenceDiameter'];
    id = json['id'];
    state = json['state'];
    region = json['region'];
    remarks = json['remarks'];
    popUploadedTime = json['popUploadedTime'];
    if (json['pop'] != null) {
      pop = <Pop>[];
      json['pop'].forEach((v) {
        pop!.add(Pop.fromJson(v));
      });
    }
    popUploaded = json['popUploaded'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dateTime'] = dateTime;
    data['country'] = country;
    data['city'] = city;
    data['companyName'] = companyName;
    data['priority'] = priority;
    data['disableCityList'] = disableCityList;
    data['type'] = type;
    data['disableZoneList'] = disableZoneList;
    data['picked'] = picked;
    data['disableStateList'] = disableStateList;
    data['geofenceDiameter'] = geofenceDiameter;
    data['id'] = id;
    data['state'] = state;
    data['region'] = region;
    data['remarks'] = remarks;
    data['popUploadedTime'] = popUploadedTime;
    if (pop != null) {
      data['pop'] = pop!.map((v) => v.toJson()).toList();
    }
    data['popUploaded'] = popUploaded;
    return data;
  }
}

class Pop {
  String? pOPId;
  String? imageId;
  String? createdDate;
  String? pOPStatus;
  bool? cancelled;
  String? tripId;
  int? id;
  String? remarks;

  Pop(
      {this.pOPId,
      this.imageId,
      this.createdDate,
      this.pOPStatus,
      this.cancelled,
      this.tripId,
      this.id,
      this.remarks});

  Pop.fromJson(Map<String, dynamic> json) {
    pOPId = json['POPId'];
    imageId = json['imageId'];
    createdDate = json['createdDate'];
    pOPStatus = json['POPStatus'];
    cancelled = json['cancelled'];
    tripId = json['tripId'];
    id = json['id'];
    remarks = json['remarks'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['POPId'] = pOPId;
    data['imageId'] = imageId;
    data['createdDate'] = createdDate;
    data['POPStatus'] = pOPStatus;
    data['cancelled'] = cancelled;
    data['tripId'] = tripId;
    data['id'] = id;
    data['remarks'] = remarks;
    return data;
  }
}
