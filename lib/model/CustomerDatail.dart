class CustomerDatail {
    int id;
    String entity;
    String informacion;
    String image;


    CustomerDatail({
        required this.id,
        required this.entity,
        required this.informacion,
        required this.image

    });

    factory CustomerDatail.fromJson(Map<String, dynamic> json) => CustomerDatail(
        id: json["id"],
        entity: json["entity"],
        informacion: json["informacion"],
        image: json["image"]
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "entity": entity,
        "informacion": informacion,
        "image":image
    };
}