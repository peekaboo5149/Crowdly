part of 'home_screen.dart';

class _CustomAppBarSliverType extends StatelessWidget {
  final VoidCallback settingsfunction;
  final String title;

  const _CustomAppBarSliverType({
    Key key,
    @required this.settingsfunction,
    @required this.title,
  })  : assert(title != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        floating: true,
        title: Text(
          title,
          style: TextStyle(
            color: blueColor,
            letterSpacing: 1.5,
            fontFamily: "RocknRollOne",
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: blueColor.withGreen(100),
            ),
            onPressed: settingsfunction,
          ),
        ]);
  }
}
