part of '_index.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
                _dt.rxhitung.state.toString(),
                textScaleFactor: 2,
              ),
            ),
            OnBuilder(
              listenTo: _dt.rxhitung,
              builder: () => Text(
                _dt.rxhitung.state.toString(),
                textScaleFactor: 2,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton(
              onPressed: () {
                () => _ct.tambah();
              },
              child: const Text('Tambah'),
            )
            // ElevatedButton(
            // onPressed: () => _ct.tambah(),
            //   child: const Text(
            //     "Tambah",
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
