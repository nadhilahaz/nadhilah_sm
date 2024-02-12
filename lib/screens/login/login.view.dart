part of '_index.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Random().nextInt(100).toString()),
        actions: [
          Center(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    html.window.open('https://github.com/nadhilahaz/nadhilah_sm', 'new');
                  },
                  icon: const FaIcon(FontAwesomeIcons.github),
                ),
              ],
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            OnReactive(
              () => Text(
                dt.rxHitung1.state.toString(),
                textScaleFactor: 2,
              ),
            ),
            OnBuilder(
              listenTo: dt.rxHitung1,
              builder: () => Text(
                dt.rxHitung1.state.toString(),
                textScaleFactor: 2,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ct.kurang();
              },
              child: const Text(
                "kurang",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
