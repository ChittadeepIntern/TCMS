class BookingDetailsModel {
  ListClass? list;

  BookingDetailsModel({
    this.list,
  });

  BookingDetailsModel.fromJson(Map<String, dynamic> json) {
    list = json['list'] != null ? ListClass.fromJson(json['list']) : null;
  }
}

class ListClass {
  String? refNo;
  String? orderType;
  String? requestorPhone;
  bool? sendBookingMail;
  String? companyName;
  String? requestorMail;
  List<dynamic>? podList;
  bool? bookingSentToInvoice;
  String? customerType;
  List<Address>? deliveryAddress;
  String? customerId;
  int? preBookId;
  List<dynamic>? specialEquipments;
  String? bookedDateString;
  String? requestorName;
  bool? locked;
  List<dynamic>? plan;
  bool? emptyReturn;
  String? companyCode;
  String? bookingEditedBy;
  List<dynamic>? returnableRequirements;
  String? customerName;
  bool? disposable;
  String? custRefNumber;
  bool? doPlan;
  bool? allowGpsView;
  List<TruckRequirement>? truckRequirements;
  List<Address>? pickupAddress;
  List<Good>? goodsDescriptionList;
  String? bookedDate;
  String? bookedBy;
  String? status;

  ListClass({
    this.refNo,
    this.orderType,
    this.requestorPhone,
    this.sendBookingMail,
    this.companyName,
    this.requestorMail,
    this.podList,
    this.bookingSentToInvoice,
    this.customerType,
    this.deliveryAddress,
    this.customerId,
    this.preBookId,
    this.specialEquipments,
    this.bookedDateString,
    this.requestorName,
    this.locked,
    this.plan,
    this.emptyReturn,
    this.companyCode,
    this.bookingEditedBy,
    this.returnableRequirements,
    this.customerName,
    this.disposable,
    this.custRefNumber,
    this.doPlan,
    this.allowGpsView,
    this.truckRequirements,
    this.pickupAddress,
    this.goodsDescriptionList,
    this.bookedDate,
    this.bookedBy,
    this.status,
  });

  ListClass.fromJson(Map<String, dynamic> json) {
    refNo = json['refNo'];
    orderType = json['orderType'];
    requestorPhone = json['requestorPhone'];
    sendBookingMail = json['sendBookingMail'];
    companyName = json['companyName'];
    requestorMail = json['requestorMail'];
    podList = json['podList'];
    bookingSentToInvoice = json['bookingSentToInvoice'];
    customerType = json['customerType'];
    if (json['deliveryAddress'] != null) {
      deliveryAddress = <Address>[];
      json['deliveryAddress'].forEach((v) {
        deliveryAddress!.add(Address.fromJson(v));
      });
    }
    if (json['pickupAddress'] != null) {
      pickupAddress = <Address>[];
      json['pickupAddress'].forEach((v) {
        pickupAddress!.add(Address.fromJson(v));
      });
    }
    customerId = json['customerId'];
    preBookId = json['preBookId'];
    specialEquipments = json['specialEquipments'];
    bookedDateString = json['bookedDateString'];
  }
}

class Address {
  String? dateTime;
  int? country;
  String? mail;
  List<dynamic>? pod;
  String? city;
  String? companyName;
  bool? delivered;
  String? title;
  String? type;
  bool? disableCityList;
  String? addressId;
  String? dateTimeString;
  String? stateName;
  bool? disableStateList;
  int? id;
  int? state;
  String? zoneName;
  List<SpecialEquipment>? specialEquipments;
  String? pincode;
  List<ZoneList>? zoneList;
  List<StateList>? stateList;
  String? addressLineOne;
  List<CityList>? cityList;
  int? priority;
  List<CountryList>? countryList;
  String? bookingId;
  String? addressLineTwo;
  bool? disableZoneList;
  String? phone;
  String? geoLocation;
  String? name;
  int? geofenceDiameter;
  List<Good>? goodDescription;
  String? countryName;
  int? region;
  String? remarks;
  String? dropPointKms;
  List<dynamic>? pop;
  bool? picked;

  Address({
    this.dateTime,
    this.country,
    this.mail,
    this.pod,
    this.city,
    this.companyName,
    this.delivered,
    this.title,
    this.type,
    this.disableCityList,
    this.addressId,
    this.dateTimeString,
    this.stateName,
    this.disableStateList,
    this.id,
    this.state,
    this.zoneName,
    this.specialEquipments,
    this.pincode,
    this.zoneList,
    this.stateList,
    this.addressLineOne,
    this.cityList,
    this.priority,
    this.countryList,
    this.bookingId,
    this.addressLineTwo,
    this.disableZoneList,
    this.phone,
    this.geoLocation,
    this.name,
    this.geofenceDiameter,
    this.goodDescription,
    this.countryName,
    this.region,
    this.remarks,
    this.dropPointKms,
    this.pop,
    this.picked,
  });

  Address.fromJson(Map<String, dynamic> json) {
    dateTime = json['dateTime'];
    country = json['country'];
    mail = json['mail'];
    pod = json['pod'];
    city = json['city'];
    companyName = json['companyName'];
    delivered = json['delivered'];
    title = json['title'];
    type = json['type'];
    disableCityList = json['disableCityList'];
    addressId = json['addressId'];
    dateTimeString = json['dateTimeString'];
    stateName = json['stateName'];
    disableStateList = json['disableStateList'];
    id = json['id'];
    state = json['state'];
    zoneName = json['zoneName'];
    specialEquipments = json['specialEquipments'];
    pincode = json['pincode'];
    if (json['zoneList'] != null) {
      zoneList = <ZoneList>[];
      json['zoneList'].forEach((v) {
        zoneList!.add(ZoneList.fromJson(v));
      });
    }
    if (json['stateList'] != null) {
      stateList = <StateList>[];
      json['stateList'].forEach((v) {
        stateList!.add(StateList.fromJson(v));
      });
    }
    addressLineOne = json['addressLineOne'];
    if (json['cityList'] != null) {
      cityList = <CityList>[];
      json['cityList'].forEach((v) {
        cityList!.add(CityList.fromJson(v));
      });
    }
    priority = json['priority'];
    if (json['countryList'] != null) {
      countryList = <CountryList>[];
      json['countryList'].forEach((v) {
        countryList!.add(CountryList.fromJson(v));
      });
    }
    bookingId = json['bookingId'];
    addressLineTwo = json['addressLineTwo'];
    disableZoneList = json['disableZoneList'];
    phone = json['phone'];
    geoLocation = json['geoLocation'];
    name = json['name'];
    geofenceDiameter = json['geofenceDiameter'];
    if (json['goodDescription'] != null) {
      goodDescription = <Good>[];
      json['goodDescription'].forEach((v) {
        goodDescription!.add(Good.fromJson(v));
      });
    }
    countryName = json['countryName'];
    region = json['region'];
    remarks = json['remarks'];
    dropPointKms = json['dropPointKms'];
    pop = json['pop'];
    picked = json['picked'];
  }
}

class CityList {
  String? cityName;
  int? stateId;
  String? cityId;

  CityList({
    this.cityName,
    this.stateId,
    this.cityId,
  });

  CityList.fromJson(Map<String, dynamic> json) {
    cityName = json['cityName'];
    stateId = json['stateId'];
    cityId = json['cityId'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cityName'] = cityName;
    data['stateId'] = stateId;
    data['cityId'] = cityId;
    return data;
  }
}

class CountryList {
  String? countryName;
  int? countryId;

  CountryList({
    this.countryName,
    this.countryId,
  });

  CountryList.fromJson(Map<String, dynamic> json) {
    countryName = json['countryName'];
    countryId = json['countryId'];
  }
}

class Good {
  String? itemCode;
  int? dimensionLength;
  bool? dangerous;
  bool? delivered;
  String? pickupId;
  Type? type;
  String? packageType;
  int? deliveryRefId;
  int? pieces;
  String? deliveryId;
  bool? codReceived;
  bool? picked;
  String? dimensionHeightType;
  int? cube;
  String? goodsDescription;
  String? shipRefNo;
  bool? stackable;
  int? dimensionHeight;
  int? gdId;
  String? dimensionWidthType;
  int? weight;
  int? dimensionWidth;
  String? customerName;
  bool? disposable;
  String? bookingId;
  String? cubeType;
  String? weightType;
  String? dimesionLengthType;
  String? createdDate;
  String? cod;
  int? pickupRefId;

  Good({
    this.itemCode,
    this.dimensionLength,
    this.dangerous,
    this.delivered,
    this.pickupId,
    this.type,
    this.packageType,
    this.deliveryRefId,
    this.pieces,
    this.deliveryId,
    this.codReceived,
    this.picked,
    this.dimensionHeightType,
    this.cube,
    this.goodsDescription,
    this.shipRefNo,
    this.stackable,
    this.dimensionHeight,
    this.gdId,
    this.dimensionWidthType,
    this.weight,
    this.dimensionWidth,
    this.customerName,
    this.disposable,
    this.bookingId,
    this.cubeType,
    this.weightType,
    this.dimesionLengthType,
    this.createdDate,
    this.cod,
    this.pickupRefId,
  });

  Good.fromJson(Map<String, dynamic> json) {
    itemCode = json['itemCode'];
    dimensionLength = json['dimensionLength'];
    dangerous = json['dangerous'];
    delivered = json['delivered'];
    pickupId = json['pickupId'];
    type = json['type'];
    packageType = json['packageType'];
    deliveryRefId = json['deliveryRefId'];
    pieces = json['pieces'];
    deliveryId = json['deliveryId'];
    codReceived = json['codReceived'];
    picked = json['picked'];
    dimensionHeightType = json['dimensionHeightType'];
    cube = json['cube'];
    goodsDescription = json['goodsDescription'];
    shipRefNo = json['shipRefNo'];
    stackable = json['stackable'];
    dimensionHeight = json['dimensionHeight'];
    gdId = json['gdId'];
    dimensionWidthType = json['dimensionWidthType'];
    weight = json['weight'];
    dimensionWidth = json['dimensionWidth'];
    customerName = json['customerName'];
    disposable = json['disposable'];
    bookingId = json['bookingId'];
    cubeType = json['cubeType'];
    weightType = json['weightType'];
    dimesionLengthType = json['dimesionLengthType'];
    createdDate = json['createdDate'];
    cod = json['cod'];
    pickupRefId = json['pickupRefId'];
  }
}

class SpecialEquipment {
  String? createdDate;
  int? qty;
  int? equipmentPrice;
  String? equipment;
  int? equipmentTotalPrice;
  int? id;
  String? title;
  String? type;
  String? bookingId;
  int? deliveryRefId;

  SpecialEquipment({
    this.createdDate,
    this.qty,
    this.equipmentPrice,
    this.equipment,
    this.equipmentTotalPrice,
    this.id,
    this.title,
    this.type,
    this.bookingId,
    this.deliveryRefId,
  });

  SpecialEquipment.fromJson(Map<String, dynamic> json) {
    createdDate = json['createdDate'];
    qty = json['qty'];
    equipmentPrice = json['equipmentPrice'];
    equipment = json['equipment'];
    equipmentTotalPrice = json['equipmentTotalPrice'];
    id = json['id'];
    title = json['title'];
    type = json['type'];
    bookingId = json['bookingId'];
    deliveryRefId = json['deliveryRefId'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['createdDate'] = createdDate;
    data['qty'] = qty;
    data['equipmentPrice'] = equipmentPrice;
    data['equipment'] = equipment;
    data['equipmentTotalPrice'] = equipmentTotalPrice;
    data['id'] = id;
    data['title'] = title;
    data['type'] = type;
    data['bookingId'] = bookingId;
    data['deliveryRefId'] = deliveryRefId;
    return data;
  }
}

class StateList {
  String? stateName;
  int? stateId;
  int? zoneId;

  StateList({
    this.stateName,
    this.stateId,
    this.zoneId,
  });

  StateList.fromJson(Map<String, dynamic> json) {
    stateName = json['stateName'];
    stateId = json['stateId'];
    zoneId = json['zoneId'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['stateName'] = stateName;
    data['stateId'] = stateId;
    data['zoneId'] = zoneId;
    return data;
  }
}

class ZoneList {
  int? zoneId;
  String? zoneName;
  int? countryId;

  ZoneList({
    this.zoneId,
    this.zoneName,
    this.countryId,
  });

  ZoneList.fromJson(Map<String, dynamic> json) {
    zoneId = json['zoneId'];
    zoneName = json['zoneName'];
    countryId = json['countryId'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['zoneId'] = zoneId;
    data['zoneName'] = zoneName;
    data['countryId'] = countryId;
    return data;
  }
}

class TruckRequirement {
  String? accountCode;
  String? truckType;
  int? manpowerTotalPrice;
  int? truckTotalPrice;
  String? title;
  int? truckPrice;
  int? manpowerPrice;
  String? codeAndDescription;
  int? truckQty;
  String? categoryName;
  String? bookingId;
  String? qtyType;
  String? createdDate;
  String? truckTonnage;
  int? id;
  int? manpower;

  TruckRequirement({
    this.accountCode,
    this.truckType,
    this.manpowerTotalPrice,
    this.truckTotalPrice,
    this.title,
    this.truckPrice,
    this.manpowerPrice,
    this.codeAndDescription,
    this.truckQty,
    this.categoryName,
    this.bookingId,
    this.qtyType,
    this.createdDate,
    this.truckTonnage,
    this.id,
    this.manpower,
  });

  TruckRequirement.fromJson(Map<String, dynamic> json) {
    accountCode = json['accountCode'];
    truckType = json['truckType'];
    manpowerTotalPrice = json['manpowerTotalPrice'];
    truckTotalPrice = json['truckTotalPrice'];
    title = json['title'];
    truckPrice = json['truckPrice'];
    manpowerPrice = json['manpowerPrice'];
    codeAndDescription = json['codeAndDescription'];
    truckQty = json['truckQty'];
    categoryName = json['categoryName'];
    bookingId = json['bookingId'];
    qtyType = json['qtyType'];
    createdDate = json['createdDate'];
    truckTonnage = json['truckTonnage'];
    id = json['id'];
    manpower = json['manpower'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['accountCode'] = accountCode;
    data['truckType'] = truckType;
    data['manpowerTotalPrice'] = manpowerTotalPrice;
    data['truckTotalPrice'] = truckTotalPrice;
    data['title'] = title;
    data['truckPrice'] = truckPrice;
    data['manpowerPrice'] = manpowerPrice;
    data['codeAndDescription'] = codeAndDescription;
    data['truckQty'] = truckQty;
    data['categoryName'] = categoryName;
    data['bookingId'] = bookingId;
    data['qtyType'] = qtyType;
    data['createdDate'] = createdDate;
    data['truckTonnage'] = truckTonnage;
    data['id'] = id;
    data['manpower'] = manpower;
    return data;
  }
}
