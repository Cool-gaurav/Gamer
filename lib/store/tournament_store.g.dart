// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TournamentStore on _TournamentStore, Store {
  Computed<StoreState> _$mystateComputed;

  @override
  StoreState get mystate =>
      (_$mystateComputed ??= Computed<StoreState>(() => super.mystate,
              name: '_TournamentStore.mystate'))
          .value;

  final _$_tournamentfutureAtom =
      Atom(name: '_TournamentStore._tournamentfuture');

  @override
  ObservableFuture<Response<dynamic>> get _tournamentfuture {
    _$_tournamentfutureAtom.reportRead();
    return super._tournamentfuture;
  }

  @override
  set _tournamentfuture(ObservableFuture<Response<dynamic>> value) {
    _$_tournamentfutureAtom.reportWrite(value, super._tournamentfuture, () {
      super._tournamentfuture = value;
    });
  }

  final _$tournamentListAtom = Atom(name: '_TournamentStore.tournamentList');

  @override
  List<Tournament> get tournamentList {
    _$tournamentListAtom.reportRead();
    return super.tournamentList;
  }

  @override
  set tournamentList(List<Tournament> value) {
    _$tournamentListAtom.reportWrite(value, super.tournamentList, () {
      super.tournamentList = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_TournamentStore.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$hasMoreAtom = Atom(name: '_TournamentStore.hasMore');

  @override
  bool get hasMore {
    _$hasMoreAtom.reportRead();
    return super.hasMore;
  }

  @override
  set hasMore(bool value) {
    _$hasMoreAtom.reportWrite(value, super.hasMore, () {
      super.hasMore = value;
    });
  }

  final _$getTournamentListAsyncAction =
      AsyncAction('_TournamentStore.getTournamentList');

  @override
  Future<List<Tournament>> getTournamentList() {
    return _$getTournamentListAsyncAction.run(() => super.getTournamentList());
  }

  @override
  String toString() {
    return '''
tournamentList: ${tournamentList},
isLoading: ${isLoading},
hasMore: ${hasMore},
mystate: ${mystate}
    ''';
  }
}
