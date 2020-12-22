class WooOrderNote {
  int id;
  String author;
  String dateCreated;
  String dateCreatedGmt;
  String note;
  bool customerNote;

  WooOrderNote({
    this.id,
    this.author,
    this.dateCreated,
    this.dateCreatedGmt,
    this.note,
    this.customerNote,
  });

  WooOrderNote.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    author = json['author'];
    dateCreated = json['date_created'];
    dateCreatedGmt = json['date_created_gmt'];
    note = json['note'];
    customerNote = json['customer_note'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['author'] = this.author;
    data['date_created'] = this.dateCreated;
    data['date_created_gmt'] = this.dateCreatedGmt;
    data['note'] = this.note;
    data['customer_note'] = this.customerNote;

    return data;
  }
}

enum Type {
  any,
  customers,
  internal,
}

enum Context {
  view,
  edit,
}
