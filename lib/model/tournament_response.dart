import 'package:Gamer/model/tournament.dart';
import 'package:Gamer/model/tournament_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'tournament_response.g.dart';

abstract class TournamentResponse implements Built<TournamentResponse, TournamentResponseBuilder>{
  static Serializer<TournamentResponse> get serializer => _$tournamentResponseSerializer;

  TournamentResponse._();
  factory TournamentResponse([void Function(TournamentResponseBuilder) updates]) = _$TournamentResponse;

  @nullable
  TournamentData get data;
  @nullable
  bool get success;

}