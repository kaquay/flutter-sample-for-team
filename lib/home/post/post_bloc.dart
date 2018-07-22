import 'dart:async';
import 'dart:collection';
import 'package:rxdart/rxdart.dart';
import 'package:sample_for_team/home/post/post_model.dart';

class PostBloc {
  final _post = BehaviorSubject<Post>();
  final _posts = BehaviorSubject<UnmodifiableListView<Post>>();

  get post => _post.stream;

  get posts => _posts.stream;
}