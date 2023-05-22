
class ServicioModel {
  int? servicioID;
  String? servicioNombre;
  String? servicioDistrito;
  String? servicioCategoria;
  String? negocioNombre;

  ServicioModel(
      {this.servicioID,
      this.servicioNombre,
      this.servicioDistrito,
      this.servicioCategoria,
      this.negocioNombre});

  factory ServicioModel.fromJson(Map<String, dynamic> json) {
    return ServicioModel(
      negocioNombre: json['negocioNombre'],
      servicioCategoria: json['servicioCategoria'],
      servicioDistrito: json['servicioDistrito'],
      servicioID: json['servicioID'] as int,
      servicioNombre: json['servicioNombre'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['servicioID'] = servicioID;
    data['servicioNombre'] = servicioNombre;
    data['servicioDistrito'] = servicioDistrito;
    data['servicioCategoria'] = servicioCategoria;
    data['negocioNombre'] = negocioNombre;
    return data;
  }
}