import 'package:tenor_client/tenor_client.dart';

void main() async {
  // Create the client with an api key
  //
  // Visit https://tenor.com to obtain a key
  final client = TenorClient(apiKey: 'QC6YOK1CYPX0');

  // Fetch & print a collection of trending gifs
  final gifs = await client.trending();

  print(gifs);

  // Fetch & print a collection with options
  final nsfwGifs = await client.trending(
    limit: 10,
  );

  print(nsfwGifs);
}
