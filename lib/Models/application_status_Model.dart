class ApplicationStatusMessage {
  final bool toShow;
  final String message;
  final String type;

  ApplicationStatusMessage({
    required this.toShow,
    required this.message,
    required this.type,
  });

  factory ApplicationStatusMessage.fromJson(Map<String, dynamic> json) {
    return ApplicationStatusMessage(
      toShow: json['to_show'],
      message: json['message'],
      type: json['type'],
    );
  }
}
