// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TournamentResponse> _$tournamentResponseSerializer =
    new _$TournamentResponseSerializer();

class _$TournamentResponseSerializer
    implements StructuredSerializer<TournamentResponse> {
  @override
  final Iterable<Type> types = const [TournamentResponse, _$TournamentResponse];
  @override
  final String wireName = 'TournamentResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, TournamentResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(TournamentData)));
    }
    if (object.success != null) {
      result
        ..add('success')
        ..add(serializers.serialize(object.success,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  TournamentResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TournamentResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(TournamentData)) as TournamentData);
          break;
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$TournamentResponse extends TournamentResponse {
  @override
  final TournamentData data;
  @override
  final bool success;

  factory _$TournamentResponse(
          [void Function(TournamentResponseBuilder) updates]) =>
      (new TournamentResponseBuilder()..update(updates)).build();

  _$TournamentResponse._({this.data, this.success}) : super._();

  @override
  TournamentResponse rebuild(
          void Function(TournamentResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TournamentResponseBuilder toBuilder() =>
      new TournamentResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TournamentResponse &&
        data == other.data &&
        success == other.success;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, data.hashCode), success.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TournamentResponse')
          ..add('data', data)
          ..add('success', success))
        .toString();
  }
}

class TournamentResponseBuilder
    implements Builder<TournamentResponse, TournamentResponseBuilder> {
  _$TournamentResponse _$v;

  TournamentDataBuilder _data;
  TournamentDataBuilder get data =>
      _$this._data ??= new TournamentDataBuilder();
  set data(TournamentDataBuilder data) => _$this._data = data;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  TournamentResponseBuilder();

  TournamentResponseBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _success = _$v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TournamentResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TournamentResponse;
  }

  @override
  void update(void Function(TournamentResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TournamentResponse build() {
    _$TournamentResponse _$result;
    try {
      _$result = _$v ??
          new _$TournamentResponse._(data: _data?.build(), success: success);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TournamentResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
