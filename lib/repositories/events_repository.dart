abstract class EventsRepository {
  Future<String> getUnreadEvents();
}

class EventsRepositoryImpl implements EventsRepository {
  @override
  Future<String> getUnreadEvents() {
    return Future<String>.value("2");
  }
}
