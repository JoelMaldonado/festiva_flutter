import 'package:festiva_flutter/core/network/dio_config.dart';
import 'package:festiva_flutter/data/model/dto/club/club_dto.dart';
import 'package:festiva_flutter/data/model/dto/club/club_location_dto.dart';
import 'package:festiva_flutter/data/model/dto/club/club_summary_dto.dart';
import 'package:festiva_flutter/data/model/response/api_response.dart';

class ClubService {
  final DioConfig _dio;

  ClubService(this._dio);

  Future<ApiResponse<List<ClubSummaryDto>>> fetchAll() async {
    final call = await _dio.get(url: '/club/detail');
    final response = ApiResponse<List<ClubSummaryDto>>.fromJson(
      call.data,
      (json) => (json as List<dynamic>)
          .map((e) => ClubSummaryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

    return response;
  }

  Future<ClubDto> fetch(int id) async {
    final call = await _dio.get(url: '/discoteca/$id');
    return ClubDto.fromJson(call.data);
  }

  Future<ApiResponse<List<ClubLocationDto>>> fetchLocations() async {
    final call = await _dio.get(url: '/club/address');
    final response = ApiResponse<List<ClubLocationDto>>.fromJson(
      call.data,
      (json) => (json as List<dynamic>)
          .map((e) => ClubLocationDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

    return response;
  }

  Future<ApiResponse<ClubLocationDto>> fetchLocation(int id) async {
    final call = await _dio.get(url: '/club/address/$id');
    final response = ApiResponse<ClubLocationDto>.fromJson(
      call.data,
      (json) => ClubLocationDto.fromJson(json as Map<String, dynamic>),
    );

    return response;
  }
}
