import 'package:tcms/resources/app_exceptions.dart';

class LoginResponseModel {
  bool? allowOutsideLogin;
  String? authKey;
  String? role;
  bool? inOffice;
  String? accessLevel;
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
    if(json['authKey'] is bool) throw UnauthorizedException();
    allowOutsideLogin = json['allowOutsideLogin'];
    authKey = json['authKey'];
    role = json['role'];
    inOffice = json['inOffice'];
    accessLevel = json['accessLevel'];
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
