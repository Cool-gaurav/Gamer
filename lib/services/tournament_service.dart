import 'dart:async';
import 'package:chopper/chopper.dart';

part 'tournament_service.chopper.dart';

@ChopperApi(baseUrl:"tournament/api/")
abstract class TournamentService extends ChopperService {
  static TournamentService create([ChopperClient client]) =>
      _$TournamentService(client);

  @Get(path:'tournaments_list_v2?limit=20&status=all')
  Future<Response> getTournamentList();
}
