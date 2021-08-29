// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Tournament> _$tournamentSerializer = new _$TournamentSerializer();

class _$TournamentSerializer implements StructuredSerializer<Tournament> {
  @override
  final Iterable<Type> types = const [Tournament, _$Tournament];
  @override
  final String wireName = 'Tournament';

  @override
  Iterable<Object> serialize(Serializers serializers, Tournament object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.game_name != null) {
      result
        ..add('game_name')
        ..add(serializers.serialize(object.game_name,
            specifiedType: const FullType(String)));
    }
    if (object.cover_url != null) {
      result
        ..add('cover_url')
        ..add(serializers.serialize(object.cover_url,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Tournament deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TournamentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'game_name':
          result.game_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cover_url':
          result.cover_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Tournament extends Tournament {
  @override
  final String game_name;
  @override
  final String cover_url;
  @override
  final String name;

  factory _$Tournament([void Function(TournamentBuilder) updates]) =>
      (new TournamentBuilder()..update(updates)).build();

  _$Tournament._({this.game_name, this.cover_url, this.name}) : super._();

  @override
  Tournament rebuild(void Function(TournamentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TournamentBuilder toBuilder() => new TournamentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tournament &&
        game_name == other.game_name &&
        cover_url == other.cover_url &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, game_name.hashCode), cover_url.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Tournament')
          ..add('game_name', game_name)
          ..add('cover_url', cover_url)
          ..add('name', name))
        .toString();
  }
}

class TournamentBuilder implements Builder<Tournament, TournamentBuilder> {
  _$Tournament _$v;

  String _game_name;
  String get game_name => _$this._game_name;
  set game_name(String game_name) => _$this._game_name = game_name;

  String _cover_url;
  String get cover_url => _$this._cover_url;
  set cover_url(String cover_url) => _$this._cover_url = cover_url;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  TournamentBuilder();

  TournamentBuilder get _$this {
    if (_$v != null) {
      _game_name = _$v.game_name;
      _cover_url = _$v.cover_url;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Tournament other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Tournament;
  }

  @override
  void update(void Function(TournamentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Tournament build() {
    final _$result = _$v ??
        new _$Tournament._(
            game_name: game_name, cover_url: cover_url, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
