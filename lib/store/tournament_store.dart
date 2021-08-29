import 'package:chopper/chopper.dart';
import 'package:Gamer/model/serializers.dart';
import 'package:mobx/mobx.dart';
import 'package:Gamer/services/tournament_service.dart';
import 'package:Gamer/model/tournament_response.dart';
import 'package:Gamer/model/tournament.dart';
part 'tournament_store.g.dart';

class TournamentStore extends _TournamentStore with _$TournamentStore {
  TournamentStore(TournamentService tournamentService)
      :super(tournamentService);
}

enum StoreState { initial, loading, loaded }

abstract class _TournamentStore with Store {
  final TournamentService _tournamentService;

  _TournamentStore(this._tournamentService);

  @observable
  ObservableFuture<Response> _tournamentfuture;

  @observable
  List<Tournament> tournamentList = [];

  @observable
  bool isLoading = true;

  @observable
  bool hasMore = true;

  @computed
  StoreState get mystate {
    if (_tournamentfuture == null ||
        _tournamentfuture.status == FutureStatus.rejected) {
      return StoreState.initial;
    }
    return _tournamentfuture.status == FutureStatus.pending
        ? StoreState.loading
        : StoreState.loaded;
  }

  @action
  Future<List<Tournament>> getTournamentList() async
  {
    TournamentResponse list = TournamentResponse();
    try {
      _tournamentfuture = ObservableFuture(_tournamentService.getTournamentList());
      var response = await _tournamentfuture;
      if (response.body != null) {
        list = standardSerializers.deserializeWith(TournamentResponse.serializer, response.body);
        for (var item in list.data.tournaments) {
          if (item.cover_url !=
              "https://cdn-bgp.bluestacks.com/tournaments/pwa/banners2/Default_Banner_2.jpg") {
            tournamentList.add(item);
          }
        }
      } else {
        return List.empty();
      }
    }
    catch (error) {
      throw(error);
    }
  }
}


