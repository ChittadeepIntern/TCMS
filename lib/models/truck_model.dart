class Truck {
  String? truckId;
  String? truckNumber;
  String? truckName;
  String? manufactureDate;
  String? engineNumber;
  String? chasisNumber;
  String? truckType;
  String? tonage;
  String? axle;
  String? status;
  String? bonded;
  String? tailGate;
  String? purchaseDate;
  String? roadTaxExpireDate;
  String? insurance;
  String? inspection;
  String? permitExpire;
  String? customBondExpire;
  String? statusReason;
  String? grandFilePath;
  String? permitFilePath;
  String? roadtaxFilePath;
  String? insuranceFilePath;
  String? inspectionFilePath;
  String? customBondFilePath;
  String? grandFilePathIcon;
  String? permitFilePathIcon;
  String? roadtaxFilePathIcon;
  String? insuranceFilePathIcon;
  String? inspectionFilePathIcon;
  String? customBondFilePathIcon;
  String? createdDate;
  int? roadTaxNotification;
  int? insuranceNotification;
  int? inspectionNotification;
  int? permitNotification;
  int? customBondNotification;
  double? truckHeight;
  double? truckWidth;
  int? truckLength;
  String? truckLengthType;
  String? truckWidthType;
  String? truckHeightType;
  int? emiAmount;
  String? emiDownPayment;
  String? emiIntRate;
  int? emiNoOfMonths;
  String? driverName;
  String? driverICNo;
  String? zoneName;
  int? maxWeightInKgs;
  String? maintenanceDaysInterval;
  int? maintenanceKmsInterval;
  int? nextScheduledMaintenanceKms;
  int? maintenanceDaysNotification;
  int? maintenanceKmsNotification;
  String? nextScheduledMaintenanceDate;
  int? colorMode;

  Truck(
      {this.truckId,
      this.truckNumber,
      this.truckName,
      this.manufactureDate,
      this.engineNumber,
      this.chasisNumber,
      this.truckType,
      this.tonage,
      this.axle,
      this.status,
      this.bonded,
      this.tailGate,
      this.purchaseDate,
      this.roadTaxExpireDate,
      this.insurance,
      this.inspection,
      this.permitExpire,
      this.customBondExpire,
      this.statusReason,
      this.grandFilePath,
      this.permitFilePath,
      this.roadtaxFilePath,
      this.insuranceFilePath,
      this.inspectionFilePath,
      this.customBondFilePath,
      this.grandFilePathIcon,
      this.permitFilePathIcon,
      this.roadtaxFilePathIcon,
      this.insuranceFilePathIcon,
      this.inspectionFilePathIcon,
      this.customBondFilePathIcon,
      this.createdDate,
      this.roadTaxNotification,
      this.insuranceNotification,
      this.inspectionNotification,
      this.permitNotification,
      this.customBondNotification,
      this.truckHeight,
      this.truckWidth,
      this.truckLength,
      this.truckLengthType,
      this.truckWidthType,
      this.truckHeightType,
      this.emiAmount,
      this.emiDownPayment,
      this.emiIntRate,
      this.emiNoOfMonths,
      this.driverName,
      this.driverICNo,
      this.zoneName,
      this.maxWeightInKgs,
      this.maintenanceDaysInterval,
      this.maintenanceKmsInterval,
      this.nextScheduledMaintenanceKms,
      this.maintenanceDaysNotification,
      this.maintenanceKmsNotification,
      this.nextScheduledMaintenanceDate,
      this.colorMode});

  Truck.fromJson(Map<String, dynamic> json) {
    truckId = json['truckId'];
    truckNumber = json['truckNumber'];
    truckName = json['truckName'];
    manufactureDate = json['manufactureDate'];
    engineNumber = json['engineNumber'];
    chasisNumber = json['chasisNumber'];
    truckType = json['truckType'];
    tonage = json['tonage'];
    axle = json['axle'];
    status = json['status'];
    bonded = json['bonded'];
    tailGate = json['tailGate'];
    purchaseDate = json['purchaseDate'];
    roadTaxExpireDate = json['roadTaxExpireDate'];
    insurance = json['insurance'];
    inspection = json['inspection'];
    permitExpire = json['permitExpire'];
    customBondExpire = json['customBondExpire'];
    statusReason = json['statusReason'];
    grandFilePath = json['grandFilePath'];
    permitFilePath = json['permitFilePath'];
    roadtaxFilePath = json['roadtaxFilePath'];
    insuranceFilePath = json['insuranceFilePath'];
    inspectionFilePath = json['inspectionFilePath'];
    customBondFilePath = json['customBondFilePath'];
    grandFilePathIcon = json['grandFilePathIcon'];
    permitFilePathIcon = json['permitFilePathIcon'];
    roadtaxFilePathIcon = json['roadtaxFilePathIcon'];
    insuranceFilePathIcon = json['insuranceFilePathIcon'];
    inspectionFilePathIcon = json['inspectionFilePathIcon'];
    customBondFilePathIcon = json['customBondFilePathIcon'];
    createdDate = json['createdDate'];
    roadTaxNotification = json['roadTaxNotification'];
    insuranceNotification = json['insuranceNotification'];
    inspectionNotification = json['inspectionNotification'];
    permitNotification = json['permitNotification'];
    customBondNotification = json['customBondNotification'];
    truckHeight = json['truckHeight'];
    truckWidth = json['truckWidth'];
    truckLength = json['truckLength'];
    truckLengthType = json['truckLengthType'];
    truckWidthType = json['truckWidthType'];
    truckHeightType = json['truckHeightType'];
    emiAmount = json['emiAmount'];
    emiDownPayment = json['emiDownPayment'];
    emiIntRate = json['emiIntRate'];
    emiNoOfMonths = json['emiNoOfMonths'];
    driverName = json['driverName'];
    driverICNo = json['driverICNo'];
    zoneName = json['zoneName'];
    maxWeightInKgs = json['maxWeightInKgs'];
    maintenanceDaysInterval = json['maintenanceDaysInterval'];
    maintenanceKmsInterval = json['maintenanceKmsInterval'];
    nextScheduledMaintenanceKms = json['nextScheduledMaintenanceKms'];
    maintenanceDaysNotification = json['maintenanceDaysNotification'];
    maintenanceKmsNotification = json['maintenanceKmsNotification'];
    nextScheduledMaintenanceDate = json['nextScheduledMaintenanceDate'];
    colorMode = json['colorMode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['truckId'] = truckId;
    data['truckNumber'] = truckNumber;
    data['truckName'] = truckName;
    data['manufactureDate'] = manufactureDate;
    data['engineNumber'] = engineNumber;
    data['chasisNumber'] = chasisNumber;
    data['truckType'] = truckType;
    data['tonage'] = tonage;
    data['axle'] = axle;
    data['status'] = status;
    data['bonded'] = bonded;
    data['tailGate'] = tailGate;
    data['purchaseDate'] = purchaseDate;
    data['roadTaxExpireDate'] = roadTaxExpireDate;
    data['insurance'] = insurance;
    data['inspection'] = inspection;
    data['permitExpire'] = permitExpire;
    data['customBondExpire'] = customBondExpire;
    data['statusReason'] = statusReason;
    data['grandFilePath'] = grandFilePath;
    data['permitFilePath'] = permitFilePath;
    data['roadtaxFilePath'] = roadtaxFilePath;
    data['insuranceFilePath'] = insuranceFilePath;
    data['inspectionFilePath'] = inspectionFilePath;
    data['customBondFilePath'] = customBondFilePath;
    data['grandFilePathIcon'] = grandFilePathIcon;
    data['permitFilePathIcon'] = permitFilePathIcon;
    data['roadtaxFilePathIcon'] = roadtaxFilePathIcon;
    data['insuranceFilePathIcon'] = insuranceFilePathIcon;
    data['inspectionFilePathIcon'] = inspectionFilePathIcon;
    data['customBondFilePathIcon'] = customBondFilePathIcon;
    data['createdDate'] = createdDate;
    data['roadTaxNotification'] = roadTaxNotification;
    data['insuranceNotification'] = insuranceNotification;
    data['inspectionNotification'] = inspectionNotification;
    data['permitNotification'] = permitNotification;
    data['customBondNotification'] = customBondNotification;
    data['truckHeight'] = truckHeight;
    data['truckWidth'] = truckWidth;
    data['truckLength'] = truckLength;
    data['truckLengthType'] = truckLengthType;
    data['truckWidthType'] = truckWidthType;
    data['truckHeightType'] = truckHeightType;
    data['emiAmount'] = emiAmount;
    data['emiDownPayment'] = emiDownPayment;
    data['emiIntRate'] = emiIntRate;
    data['emiNoOfMonths'] = emiNoOfMonths;
    data['driverName'] = driverName;
    data['driverICNo'] = driverICNo;
    data['zoneName'] = zoneName;
    data['maxWeightInKgs'] = maxWeightInKgs;
    data['maintenanceDaysInterval'] = maintenanceDaysInterval;
    data['maintenanceKmsInterval'] = maintenanceKmsInterval;
    data['nextScheduledMaintenanceKms'] = nextScheduledMaintenanceKms;
    data['maintenanceDaysNotification'] = maintenanceDaysNotification;
    data['maintenanceKmsNotification'] = maintenanceKmsNotification;
    data['nextScheduledMaintenanceDate'] = nextScheduledMaintenanceDate;
    data['colorMode'] = colorMode;
    return data;
  }
}
