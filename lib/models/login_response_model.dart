import 'dart:convert';
import 'dart:developer';

import 'package:tcms/resources/app_exceptions.dart';

class LoginResponseModel {
  bool? allowOutsideLogin;
  String? authKey;
  String? role;
  bool? inOffice;
  AccessLevel? accessLevel;
  bool? digitalDo;
  bool? customerWeight;

  LoginResponseModel(
      {this.allowOutsideLogin,
      this.authKey,
      this.role,
      this.inOffice,
      this.accessLevel,
      this.digitalDo,
      this.customerWeight});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['authKey'] is bool) throw UnauthorizedException();
    allowOutsideLogin = json['allowOutsideLogin'];
    authKey = json['authKey'];
    role = json['role'];
    inOffice = json['inOffice'];
    if (json['accessLevel'] != null) {
      log("access level : ${json['accessLevel']}");
      accessLevel = AccessLevel.fromJson(jsonDecode(json['accessLevel']));
    }
    //accessLevel = json['accessLevel'];
    digitalDo = json['digital_do'];
    customerWeight = json['customer_weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['allowOutsideLogin'] = allowOutsideLogin;
    data['authKey'] = authKey;
    data['role'] = role;
    data['inOffice'] = inOffice;
    data['accessLevel'] = accessLevel;
    data['digital_do'] = digitalDo;
    data['customer_weight'] = customerWeight;
    return data;
  }

  @override
  String toString() {
    return "LoginResponseModel{allowOutsideLogin: $allowOutsideLogin, authKey: $authKey, role: $role, inOffice: $inOffice, accessLevel: $accessLevel, digitalDo: $digitalDo, customerWeight: $customerWeight}";
  }
}

class AccessLevel {
  int? accessLevelId;
  String? accessRole;
  String? employeeName;
  bool? approveSalesInvoice;
  bool? approveSupplierInvoice;
  bool? approveVendorInvoice;
  bool? allowEditSalesInvoice;
  bool? allowDeleteOrCancelInvoice;
  bool? allowRevertSalesInvoice;
  bool? viewSupplier;
  bool? viewEmployee;
  bool? viewCustomer;
  bool? viewPayslip;
  bool? viewExcelReports;
  bool? viewDeliveryKpi;
  bool? viewPickupKpi;
  bool? viewVehicleChecklist;
  bool? viewTripAllowance;
  bool? viewCommissionAllowance;
  bool? viewAttendantAllowance;
  bool? viewTruckMaintenanceEmi;
  bool? truckMaintenanceNotification;
  bool? viewReportsMenu;
  bool? viewPayrollMenu;
  String? employeeId;

  AccessLevel(
      {this.accessLevelId,
      this.accessRole,
      this.employeeName,
      this.approveSalesInvoice,
      this.approveSupplierInvoice,
      this.approveVendorInvoice,
      this.allowEditSalesInvoice,
      this.allowDeleteOrCancelInvoice,
      this.allowRevertSalesInvoice,
      this.viewSupplier,
      this.viewEmployee,
      this.viewCustomer,
      this.viewPayslip,
      this.viewExcelReports,
      this.viewDeliveryKpi,
      this.viewPickupKpi,
      this.viewVehicleChecklist,
      this.viewTripAllowance,
      this.viewCommissionAllowance,
      this.viewAttendantAllowance,
      this.viewTruckMaintenanceEmi,
      this.truckMaintenanceNotification,
      this.viewReportsMenu,
      this.viewPayrollMenu,
      this.employeeId});

  AccessLevel.fromJson(Map<String, dynamic> json) {
    accessLevelId = json['accessLevelId'];
    accessRole = json['accessRole'];
    employeeName = json['employeeName'];
    approveSalesInvoice = json['approveSalesInvoice'];
    approveSupplierInvoice = json['approveSupplierInvoice'];
    approveVendorInvoice = json['approveVendorInvoice'];
    allowEditSalesInvoice = json['allowEditSalesInvoice'];
    allowDeleteOrCancelInvoice = json['allowDeleteOrCancelInvoice'];
    allowRevertSalesInvoice = json['allowRevertSalesInvoice'];
    viewSupplier = json['viewSupplier'];
    viewEmployee = json['viewEmployee'];
    viewCustomer = json['viewCustomer'];
    viewPayslip = json['viewPayslip'];
    viewExcelReports = json['viewExcelReports'];
    viewDeliveryKpi = json['viewDeliveryKpi'];
    viewPickupKpi = json['viewPickupKpi'];
    viewVehicleChecklist = json['viewVehicleChecklist'];
    viewTripAllowance = json['viewTripAllowance'];
    viewCommissionAllowance = json['viewCommissionAllowance'];
    viewAttendantAllowance = json['viewAttendantAllowance'];
    viewTruckMaintenanceEmi = json['viewTruckMaintenanceEmi'];
    truckMaintenanceNotification = json['truckMaintenanceNotification'];
    viewReportsMenu = json['viewReportsMenu'];
    viewPayrollMenu = json['viewPayrollMenu'];
    employeeId = json['employeeId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['accessLevelId'] = accessLevelId;
    data['accessRole'] = accessRole;
    data['employeeName'] = employeeName;
    data['approveSalesInvoice'] = approveSalesInvoice;
    data['approveSupplierInvoice'] = approveSupplierInvoice;
    data['approveVendorInvoice'] = approveVendorInvoice;
    data['allowEditSalesInvoice'] = allowEditSalesInvoice;
    data['allowDeleteOrCancelInvoice'] = allowDeleteOrCancelInvoice;
    data['allowRevertSalesInvoice'] = allowRevertSalesInvoice;
    data['viewSupplier'] = viewSupplier;
    data['viewEmployee'] = viewEmployee;
    data['viewCustomer'] = viewCustomer;
    data['viewPayslip'] = viewPayslip;
    data['viewExcelReports'] = viewExcelReports;
    data['viewDeliveryKpi'] = viewDeliveryKpi;
    data['viewPickupKpi'] = viewPickupKpi;
    data['viewVehicleChecklist'] = viewVehicleChecklist;
    data['viewTripAllowance'] = viewTripAllowance;
    data['viewCommissionAllowance'] = viewCommissionAllowance;
    data['viewAttendantAllowance'] = viewAttendantAllowance;
    data['viewTruckMaintenanceEmi'] = viewTruckMaintenanceEmi;
    data['truckMaintenanceNotification'] = truckMaintenanceNotification;
    data['viewReportsMenu'] = viewReportsMenu;
    data['viewPayrollMenu'] = viewPayrollMenu;
    data['employeeId'] = employeeId;
    return data;
  }
}
