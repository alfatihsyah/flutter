import 'package:flutter/material.dart';
import 'package:navigasi/controllers/movie_controler.dart';
import 'package:navigasi/widgets/modal.dart';

class MovieView extends StatefulWidget {
  const MovieView({super.key});

  @override
  State<MovieView> createState() => _MovieViewState();
}

class _MovieViewState extends State<MovieView> {
  MovieControler movie = MovieControler();
  List buttonChoice = ["update","hapus"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie"),
        actions: [
          IconButton(onPressed: (){ModalWidget().showFullModal(context,addItem());
          }, icon: Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
          itemCount: movie.movie.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading:
                    Image(image: AssetImage(movie.movie[index].posterPath)),
                title: Text(movie.movie[index].title),
                trailing: PopupMenuButton(
                  itemBuilder: (BuildContext context) {
                    return buttonChoice.map((r) {
                      return PopupMenuItem(
                        value: r,
                        child: Text(r),
                        onTap: () {
                          if (r == "Update") {
                          } else if (r == "Hapus") {}
                        },
                      );
                    }).toList();
                  },
                ),
              ),
            );
          }),
    );
  } 
  }
  Widget addItem() {
    return Container(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(label: Text("Title")),
          ),
          TextField(
            decoration: InputDecoration(label: Text("Gambar")),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Simapn"))
        ],
      ),
    );
  }

