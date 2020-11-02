import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; //Dit is de import die nodig is om de contact gegevens klikbaar te maken

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Door de hele code in een stateless widget te plaatsen kan je aanpassingen direct doorvoeren door gebruik te maken van quik save
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // De material app zorgt ervoor dat een bepaald deel van het framework van flutter werkt
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          // Door alle content onder de SafeArea te zetten zorgt flutter er automatisch voor dat containers, tekst en dergelijke niet in de randen van de telefoon gaan zitten
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .center, //Zorgt ervoor dat alle content naar het midden gaat
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage(
                    'images/Robin.jpg.jpg'), //Hier laat je Dart zien in welke folder de afbeelding zich bevindt
              ),
              Text(
                'Robin Martens',
                style: TextStyle(
                  fontFamily:
                      'Pacifico', //De font die gebruikt wordt moet aangegeven worden in de 'pubspec.yaml' folder
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  //Door dit aan te geven kan je eronder de bovenstaande tekst personaliseren zoals je zelf wil
                  fontFamily: 'SourceSansPro',
                  fontSize: 15.0,
                  color: Colors.teal[100],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                //Dit is de divider die de app wat overzichtelijker maakt
                height: 20.0,
                width: 150,
                child: Divider(color: Colors.teal.shade100),
              ),
              GestureDetector(
                  //Door de card (de container) in een gesture detector te plaatsen zorg je ervoor dat alles binnen de card border klikbaar wordt
                  child: Card(
                      margin: EdgeInsets.symmetric(
                          // Hiermee geef je de card een kleinere border, zonder deze code zou de card de hele horizontale vlakte innemen
                          vertical: 10.0,
                          horizontal: 25.0),
                      child: ListTile(
                        leading: Icon(
                          Icons
                              .phone, //flutter heeft google icons geïmporteerd in het framework, hierdoor kan je makkelijk iconen toevoegen
                          color: Colors.teal,
                        ),
                        title: Text(
                          '+31 642 51 78 83',
                          style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'SourceSansPro',
                            fontSize: 20.0,
                          ),
                        ),
                      )),
                  onTap: () {
                    //onTap houdt in dat de gesture detecter werkt wanneer iemand op de card tikt
                    launch(
                        "tel://+31 642 51 78 83"); //Dit is de actie die verricht wordt als er wordt getikt, dus er wordt doorgelinkt naar het bel scherm met het correcte nummer erbij
                  }),
              GestureDetector(
                  child: Card(
                    //Hier begint de tweede container, de rede dat dit een card is, is omdat deze mooier is qua design en minder code taal vereist.
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'robinmartens@live.nl',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    launch("mailto://robinmartens@live.nl");
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
//Einde code
