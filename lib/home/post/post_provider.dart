import 'package:flutter/widgets.dart';
import 'package:sample_for_team/home/post/post_bloc.dart';

class PostProvider extends InheritedWidget {
  final PostBloc postBloc;
  PostProvider({Key key, PostBloc postBloc, Widget child})
      : postBloc = postBloc ?? PostBloc(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static PostBloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(PostProvider) as PostProvider)
          .postBloc;
}
