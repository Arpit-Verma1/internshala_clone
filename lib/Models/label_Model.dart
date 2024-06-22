class Label {
  final List<String> labelValue;
  final List<String> labelMobile;
  final List<String> labelApp;
  final List<String> labelsAppInCard;

  Label({
    required this.labelValue,
    required this.labelMobile,
    required this.labelApp,
    required this.labelsAppInCard,
  });

  factory Label.fromJson(Map<String, dynamic> json) {
    return Label(
      labelValue: List<String>.from(json['label_value']),
      labelMobile: List<String>.from(json['label_mobile']),
      labelApp: List<String>.from(json['label_app']),
      labelsAppInCard: List<String>.from(json['labels_app_in_card']),
    );
  }
}
