// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TournamentData> _$tournamentDataSerializer =
    new _$TournamentDataSerializer();

class _$TournamentDataSerializer
    implements StructuredSerializer<TournamentData> {
  @override
  final Iterable<Type> types = const [TournamentData, _$TournamentData];
  @override
  final String wireName = 'TournamentData';

  @override
  Iterable<Object> serialize(Serializers serializers, TournamentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.tournaments != null) {
      result
        ..add('tournaments')
        ..add(serializers.serialize(object.tournaments,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Tournament)])));
    }
    return result;
  }

  @override
  TournamentData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TournamentDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'tournaments':
          result.tournaments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Tournament)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$TournamentData extends TournamentData {
  @override
  final BuiltList<Tournament> tournaments;

  factory _$TournamentData([void Function(TournamentDataBuilder) updates]) =>
      (new TournamentDataBuilder()..update(updates)).build();

  _$TournamentData._({this.tournaments}) : super._();

  @override
  TournamentData rebuild(void Function(TournamentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TournamentDataBuilder toBuilder() =>
      new TournamentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TournamentData && tournaments == other.tournaments;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tournaments.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TournamentData')
          ..add('tournaments', tournaments))
        .toString();
  }
}

class TournamentDataBuilder
    implements Builder<TournamentData, TournamentDataBuilder> {
  _$TournamentData _$v;

  ListBuilder<Tournament> _tournaments;
  ListBuilder<Tournament> get tournaments =>
      _$this._tournaments ??= new ListBuilder<Tournament>();
  set tournaments(ListBuilder<Tournament> tournaments) =>
      _$this._tournaments = tournaments;

  TournamentDataBuilder();

  TournamentDataBuilder get _$this {
    if (_$v != null) {
      _tournaments = _$v.tournaments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TournamentData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TournamentData;
  }

  @override
  void update(void Function(TournamentDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TournamentData build() {
    _$TournamentData _$result;
    try {
      _$result =
          _$v ?? new _$TournamentData._(tournaments: _tournaments?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tournaments';
        _tournaments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TournamentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
