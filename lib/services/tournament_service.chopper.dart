// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$TournamentService extends TournamentService {
  _$TournamentService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = TournamentService;

  @override
  Future<Response<dynamic>> getTournamentList() {
    final $url = 'tournament/api/tournaments_list_v2?limit=20&status=all';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
