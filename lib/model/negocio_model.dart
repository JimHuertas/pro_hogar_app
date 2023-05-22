class NegocioModel {
  int? negocioID;
  String? nombreEmpresa;
  int? telefono;

  NegocioModel({this.negocioID, this.nombreEmpresa, this.telefono});

  factory NegocioModel.fromJson(Map<String, dynamic> json) {
    return NegocioModel(
      negocioID: json['negocioID'] as int,
      nombreEmpresa: json['nombreEmpresa'],
      telefono: json['telefono']
    );
  }
  
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String,dynamic>();
    data['negocioID'] = negocioID;
    data['nombreEmpresa'] = nombreEmpresa;
    data['telefono'] = telefono;
    return data;
  }
}