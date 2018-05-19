import 'package:flutter/material.dart';
import 'partyCode.dart';
import 'uiElements.dart';


class HomePage extends StatefulWidget 
{
	HomePage({Key key, this.title}) : super(key: key);
	final String title;

	@override
	HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> 
{
	@override
	Widget build(BuildContext context) 
	{
		return new Scaffold
		(
			appBar: getAppBar
			(
				title: "Spotify For Parties", //TODO: come up with name
				leading: new Icon(Icons.bubble_chart) //TODO: add logo icon
			),

			body: new ListView
			(
				physics: new ClampingScrollPhysics(),
				children: <Widget>
				[
					getButton
					(
						text: "HOST A PARTY",
						onPressed: ()
						{

						}
					),
				],
			)
		);
	}
}
