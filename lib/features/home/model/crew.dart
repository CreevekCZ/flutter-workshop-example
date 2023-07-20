import 'package:freezed_annotation/freezed_annotation.dart';

part 'crew.freezed.dart';
part 'crew.g.dart';

@freezed
class Crew with _$Crew {
  const factory Crew({
    required String id,
    required String name,
    required String agency,
    required String image,
    required String wikipedia,
    required List<String> launches,
    required String status,
  }) = _Crew;

  factory Crew.fromJson(Map<String, dynamic> json) => _$CrewFromJson(json);
}

// class Crew {
//   final String id;
//   final String name;
//   final String agency;
//   final String image;
//   final String wikipedia;
//   final List<String> launches;
//   final String status;

//   Crew({
//     required this.id,
//     required this.name,
//     required this.agency,
//     required this.image,
//     required this.wikipedia,
//     required this.launches,
//     required this.status,
//   });

//   factory Crew.fromJson(Map<String, dynamic> json) {
//     return Crew(
//       id: json['id'],
//       name: json['name'],
//       agency: json['agency'],
//       image: json['image'],
//       wikipedia: json['wikipedia'],
//       launches: List<String>.from(json['launches']),
//       status: json['status'],
//     );
//   }

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is Crew &&
//           runtimeType == other.runtimeType &&
//           id == other.id &&
//           name == other.name &&
//           agency == other.agency &&
//           image == other.image &&
//           wikipedia == other.wikipedia &&
//           launches == other.launches &&
//           status == other.status;

//   @override
//   int get hashCode =>
//       id.hashCode ^
//       name.hashCode ^
//       agency.hashCode ^
//       image.hashCode ^
//       wikipedia.hashCode ^
//       launches.hashCode ^
//       status.hashCode;

//   Crew copyWith({
//     String? id,
//     String? name,
//     String? agency,
//     String? image,
//     String? wikipedia,
//     List<String>? launches,
//     String? status,
//   }) {
//     return Crew(
//       id: id ?? this.id,
//       name: name ?? this.name,
//       agency: agency ?? this.agency,
//       image: image ?? this.image,
//       wikipedia: wikipedia ?? this.wikipedia,
//       launches: launches ?? this.launches,
//       status: status ?? this.status,
//     );
//   }
// }

