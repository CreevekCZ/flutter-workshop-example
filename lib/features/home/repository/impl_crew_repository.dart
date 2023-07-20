import 'package:api_com/api_com.dart';
import 'package:flutter_workshop_example/features/home/model/crew.dart';
import 'package:flutter_workshop_example/features/home/repository/crew_repository.dart';

class ImplCrewRepository extends CrewRepository {
  @override
  Future<List<Crew>> getAll() async {
    final request = ComRequest<List<Crew>>(
      method: HttpMethod.get,
      uri: '/crew',
      decoder: (rawPayload, status) {
        if (status == ResponseStatus.success) {
          return List.from(rawPayload).map((e) => Crew.fromJson(e)).toList();
        }

        return [];
      },
    );

    final response = await Com.makeRequest<List<Crew>>(request);

    if (!response.isSuccess) {
      throw Exception('Failed to get all crews');
    }

    return response.payload ?? [];
  }

  @override
  Future<Crew?> getById(String indetifier) async {
    final request = ComRequest<Crew>(
      method: HttpMethod.get,
      uri: '/crew/$indetifier',
      decoder: (rawPayload, status) {
        if (status == ResponseStatus.success) {
          return Crew.fromJson(rawPayload);
        }

        return null;
      },
    );

    final response = await Com.makeRequest<Crew>(request);

    if (!response.isSuccess) {
      throw Exception('Failed to get crew by id');
    }

    return response.payload;
  }
}
