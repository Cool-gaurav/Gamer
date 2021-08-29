import 'package:Gamer/model/tournament.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
part 'tournament_data.g.dart';

abstract class TournamentData implements Built<TournamentData,TournamentDataBuilder>{
  static Serializer<TournamentData> get serializer => _$tournamentDataSerializer;

  TournamentData._();
  factory TournamentData([void Function(TournamentDataBuilder) updates])= _$TournamentData;

  @nullable
  BuiltList<Tournament> get tournaments;

}