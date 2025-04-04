class GetOptimizedRouteModel {
	Result? result;
	String? status;
	String? message;

	GetOptimizedRouteModel({this.result, this.status, this.message});

	GetOptimizedRouteModel.fromJson(Map<String, dynamic> json) {
		result = json['result'] != null ? Result.fromJson(json['result']) : null;
		status = json['status'];
		message = json['message'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		if (result != null) {
      data['result'] = result!.toJson();
    }
		data['status'] = status;
		data['message'] = message;
		return data;
	}
}

class Result {
	int? code;
	Summary? summary;
	List<Routes>? routes;
	RoutingProfiles? routingProfiles;

	Result({this.code, this.summary, this.routes, this.routingProfiles});

	Result.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		summary = json['summary'] != null ? Summary.fromJson(json['summary']) : null;
		if (json['routes'] != null) {
			routes = <Routes>[];
			json['routes'].forEach((v) { routes!.add(Routes.fromJson(v)); });
		}
		routingProfiles = json['routing_profiles'] != null ? RoutingProfiles.fromJson(json['routing_profiles']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['code'] = code;
		if (summary != null) {
      data['summary'] = summary!.toJson();
    }
		if (routes != null) {
      data['routes'] = routes!.map((v) => v.toJson()).toList();
    }
		if (routingProfiles != null) {
      data['routing_profiles'] = routingProfiles!.toJson();
    }
		return data;
	}
}

class Summary {
	int? cost;
	int? routes;
	int? unassigned;
	int? setup;
	int? service;
	int? duration;
	int? waitingTime;
	int? priority;
	int? distance;

	Summary({this.cost, this.routes, this.unassigned, this.setup, this.service, this.duration, this.waitingTime, this.priority, this.distance});

	Summary.fromJson(Map<String, dynamic> json) {
		cost = json['cost'];
		routes = json['routes'];
		unassigned = json['unassigned'];
		setup = json['setup'];
		service = json['service'];
		duration = json['duration'];
		waitingTime = json['waiting_time'];
		priority = json['priority'];
		distance = json['distance'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['cost'] = cost;
		data['routes'] = routes;
		data['unassigned'] = unassigned;
		data['setup'] = setup;
		data['service'] = service;
		data['duration'] = duration;
		data['waiting_time'] = waitingTime;
		data['priority'] = priority;
		data['distance'] = distance;
		return data;
	}
}

class Routes {
	String? vehicle;
	int? cost;
	List<Steps>? steps;
	int? service;
	int? duration;
	int? waitingTime;
	int? priority;
	int? distance;
	String? geometry;
	int? internalId;
	String? profile;

	Routes({this.vehicle, this.cost, this.steps, this.service, this.duration, this.waitingTime, this.priority, this.distance, this.geometry, this.internalId, this.profile});

	Routes.fromJson(Map<String, dynamic> json) {
		vehicle = json['vehicle'];
		cost = json['cost'];
		if (json['steps'] != null) {
			steps = <Steps>[];
			json['steps'].forEach((v) { steps!.add(Steps.fromJson(v)); });
		}
		service = json['service'];
		duration = json['duration'];
		waitingTime = json['waiting_time'];
		priority = json['priority'];
		distance = json['distance'];
		geometry = json['geometry'];
		internalId = json['internal_id'];
		profile = json['profile'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['vehicle'] = vehicle;
		data['cost'] = cost;
		if (steps != null) {
      data['steps'] = steps!.map((v) => v.toJson()).toList();
    }
		data['service'] = service;
		data['duration'] = duration;
		data['waiting_time'] = waitingTime;
		data['priority'] = priority;
		data['distance'] = distance;
		data['geometry'] = geometry;
		data['internal_id'] = internalId;
		data['profile'] = profile;
		return data;
	}
}

class Steps {
	String? type;
	int? arrival;
	int? duration;
	int? service;
	int? waitingTime;
	List<double>? location;
	int? locationIndex;
	int? distance;
	List<double>? snappedLocation;
	String? id;
	int? internalId;

	Steps({this.type, this.arrival, this.duration, this.service, this.waitingTime, this.location, this.locationIndex, this.distance, this.snappedLocation, this.id, this.internalId});

	Steps.fromJson(Map<String, dynamic> json) {
		type = json['type'];
		arrival = json['arrival'];
		duration = json['duration'];
		service = json['service'];
		waitingTime = json['waiting_time'];
		location = json['location'].cast<double>();
		locationIndex = json['location_index'];
		distance = json['distance'];
		snappedLocation = json['snapped_location'].cast<double>();
		id = json['id'];
		internalId = json['internal_id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['type'] = type;
		data['arrival'] = arrival;
		data['duration'] = duration;
		data['service'] = service;
		data['waiting_time'] = waitingTime;
		data['location'] = location;
		data['location_index'] = locationIndex;
		data['distance'] = distance;
		data['snapped_location'] = snappedLocation;
		data['id'] = id;
		data['internal_id'] = internalId;
		return data;
	}
}

class RoutingProfiles {
	Default? defaultObj;

	RoutingProfiles({this.defaultObj});

	RoutingProfiles.fromJson(Map<String, dynamic> json) {
		defaultObj = json['default'] != null ? Default.fromJson(json['default']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		if (defaultObj != null) {
      data['default'] = defaultObj!.toJson();
    }
		return data;
	}
}

class Default {


	Default();

	Default.fromJson(Map<String, dynamic> json);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		return data;
	}
}
