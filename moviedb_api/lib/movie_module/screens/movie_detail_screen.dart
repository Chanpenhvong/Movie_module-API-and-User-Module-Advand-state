import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../models/movie_model.dart';

class MovieDetailPage extends StatefulWidget {
  final Result item;

  MovieDetailPage(this.item);

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageContainerHeight = screenHeight * 0.6; // Adjust as needed

    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.black, // Netflix uses black background for app bar
        title: Text("Movie Detail"),
        centerTitle: true,
      ),
      backgroundColor: Colors.black, // Set background color to black
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: imageContainerHeight,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        widget.item.posterPath,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: Colors.black
                            .withOpacity(0.5), // Semi-transparent overlay
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Handle play button action
                  },
                  icon: Icon(
                    Icons.play_circle_filled,
                    size: 80, // Adjust the size of the play button icon
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "${widget.item.titleOrName}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "${widget.item.dateOnly}",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Center(
              // Center the RatingBar widget
              child: RatingBar(
                allowHalfRating: true,
                initialRating: widget.item.voteAverage / 2,
                itemCount: 5,
                ratingWidget: RatingWidget(
                  full: Icon(Icons.star, color: Colors.yellow),
                  half: Icon(Icons.star_half, color: Colors.orange),
                  empty: Icon(Icons.star_border, color: Colors.white),
                ),
                onRatingUpdate: (double value) {},
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Handle download button action
                  },
                  icon: Icon(Icons.download),
                  label: Text("Download"),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Categories of Movie",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle action when "All" button is pressed
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.red, // Change the color to match Netflix style
                  ),
                  child: Text(
                    "All",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle action when "Action" button is pressed
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.red, // Change the color to match Netflix style
                  ),
                  child: Text(
                    "Action",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle action when "Comedy" button is pressed
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.red, // Change the color to match Netflix style
                  ),
                  child: Text(
                    "Comedy",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle action when "Romance" button is pressed
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.red, // Change the color to match Netflix style
                  ),
                  child: Text(
                    "Romance",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Most Popular",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "${widget.item.overview}",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 20),
            // You can add more sections here like cast, crew, similar movies, etc.
          ],
        ),
      ),
    );
  }
}
