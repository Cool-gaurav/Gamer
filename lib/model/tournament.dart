import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'tournament.g.dart';

abstract class Tournament implements Built<Tournament,TournamentBuilder>{
  static Serializer<Tournament> get serializer => _$tournamentSerializer;

  Tournament._();
  factory Tournament([void Function(TournamentBuilder) updates]) = _$Tournament;
  @nullable
  String get game_name;
  @nullable
  String get cover_url;
  @nullable
  String get name;

}