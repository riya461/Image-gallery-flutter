import 'package:flutter/material.dart';
import 'det_page.dart';
// final String imagePath;
  // final String caption;
  // final String photographer;
  // final String place;
List<ImageDetails> _images = [
  ImageDetails(
     'images/1.jpg',
     'Daily Routine',
     'Riya Sabu',
     'My house, Terrace',
     'April 4, 2020'
    
  ),
  ImageDetails(
     'images/2.jpg',
     'Heaven on earth',
     'Riya Sabu',
     'Munnar',
     'April 19, 2019'
  ),
  ImageDetails(
     'images/3.jpeg',
     'Goldlit morning ',
     'Riya Sabu',
     'Anantya ',
     'October 8, 2017'
  ),
  ImageDetails(
     'images/4.jpg',
    'Best last day',
     'Riya Sabu',
     'Thangassery Light House ',
     'August 23, 2022'
  ),
  ImageDetails(
     'images/5.jpg',
     'History unravels',
     'Riya Sabu',
     'Bekel Fort, Kasargod ',
     'April 15, 2022'
  ),
  ImageDetails(
     'images/6.jpg',
     'Just another weekend',
     'Riya Sabu',
     'Bus stand, Kollam ',
     'November 23, 2021'
    
  ),
  ImageDetails(
     'images/7.jpg',
     'The sky says it all',
     'Riya Sabu',
     'Neendakara bridge ',
     'December 9, 2021'
  ),
  ImageDetails(
     'images/8.jpeg',
     'Happy place but crowded',
     'Riya Sabu',
     'Kollam beach ',
     'November 29, 2021'
  ),
  ImageDetails(
     'images/9.jpg',
     'Oru chai ayalo',
     'Riya Sabu',
     'Somewhere between Alapuzha and Kollam',
     'November 15, 2020'
  ),
  ImageDetails(
     'images/10.jpg',
     'Puthiya veedum pazhaye kappium',
     'Riya Sabu',
     'LH main',
     'November 15, 2020'
  ),
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              'Gallery',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                               _images[index].imagePath,
                               _images[index].caption,
                               _images[index].photographer,
                               _images[index].place,
                               _images[index].date,
                               index,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'logo$index',
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(_images[index].imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;
  final String caption;
  final String photographer;
  final String place;
  final String date;
  ImageDetails(
     this.imagePath,
    this.caption,
     this.photographer,
     this.place,
    this.date,
  );
}