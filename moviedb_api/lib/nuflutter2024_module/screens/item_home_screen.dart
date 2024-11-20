import 'package:flutter/material.dart';
import 'package:moviedb_api/nuflutter2024_module/models/item_model.dart';
import 'package:moviedb_api/nuflutter2024_module/services/item_service.dart';

class ItemHomeScreen extends StatefulWidget {
  const ItemHomeScreen({super.key});

  @override
  State<ItemHomeScreen> createState() => _ItemHomeScreenState();
}

class _ItemHomeScreenState extends State<ItemHomeScreen> {  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Item Screen"),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return Center(
      child: FutureBuilder<ItemModel>(
        future: ItemService.readAPI(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text("Error ${snapshot.error}");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return _buildOuptut(snapshot.data);
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }

  Widget _buildOuptut(ItemModel? model) {
    if(model == null){
      return SizedBox();
    }
    else{
      return _buildListView(model.results);
    }
  }

  Widget _buildListView(List<Result> results) {
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return _buildItem(results[index]);
      },
    );
  }

  Widget _buildItem(Result item){
    return Card(
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.title),
        subtitle: Text(item.description),
        trailing: Text("USD ${item.price}"),
      ),
    );
  }
}
