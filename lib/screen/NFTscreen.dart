import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/NFTprovider.dart';

class NFTscreen extends StatefulWidget {
  const NFTscreen({Key? key}) : super(key: key);

  @override
  State<NFTscreen> createState() => _NFTScreenState();
}

class _NFTScreenState extends State<NFTscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NFT Viewers',
            style: TextStyle(
                color: Color.fromARGB(255, 14, 13, 7),
                fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Consumer<NFTprovider>(
        builder: (context, provider, _NFTScreenState) {
          return ListView.builder(
              itemCount: provider.nftmodel.data?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Column(
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Image.network(
                            provider.nftmodel.data![index].imageLink!,
                            fit: BoxFit.cover,
                          )),
                      Text(
                        provider.nftmodel.data![index].name!,
                        style: TextStyle(fontSize: 26),
                      ),
                      Text(provider.nftmodel.data![index].description!),
                    ],
                  ),
                );
              });
        },
      ),
    );
  }
}
