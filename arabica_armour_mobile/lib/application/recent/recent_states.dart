abstract class RecentStates{}

class RecentListState extends RecentStates{
  List<String> paths;
  RecentListState(this.paths);
}

class GettingRecentFailedState extends RecentStates{}

class GettingRecentState extends RecentStates{}
