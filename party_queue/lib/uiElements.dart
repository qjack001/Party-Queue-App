import 'package:flutter/material.dart';
import 'dart:ui' as ui;

/// 
/// A class for getting simple material design
/// elements, styilized to match the look and feel of the app
/// 
/// @title Main
/// @author Jack Guinane
/// @company Wolfhaus
/// @date 2018-05-18
/// 

/// Returns a styilized AppBar
/// If no leading parameter is entered,
/// defaults to a back button
Widget getAppBar({context, leading: const BackButton(color: Colors.white), title: "", height: 60.0})
{
	var iconPadding = EdgeInsets.all(16.0);

	if(leading is BackButton)
	{
		iconPadding = EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0);
	}

	return new Container
	(
		color: Colors.transparent,
		height: height,
		child: new Row
		(
			crossAxisAlignment: CrossAxisAlignment.center,
			mainAxisAlignment: MainAxisAlignment.start,
			children: <Widget>
			[
				new Padding
				(
					padding: iconPadding,
					child: leading,
				),

				new Padding
				(
					padding: EdgeInsets.all(16.0),
					child: new Text
					(
						title,
						style: new TextStyle
						(
							fontFamily: "Karla",
							fontWeight: FontWeight.bold,
							color: Colors.white,
							fontSize: 20.0,
							letterSpacing: -0.8,
						)
					),
				),
			],
		),
	);
}

/// Returns a styilized button
/// Is green by default
Widget getButton({text: "", color: Colors.white, textColor: Colors.black, Function onPressed})
{
	return new Center
	(
		child: new Padding
		(
			padding: EdgeInsets.all(8.0),
			child: new RawMaterialButton
			(
				constraints: new BoxConstraints(minWidth: 250.0),
					fillColor: color,
					padding: new EdgeInsets.symmetric(vertical: 20.0),
					elevation: 4.0, 
					child: new Text
					(
						text,
						style: new TextStyle
						(
							fontFamily: "Karla",
							fontSize: 20.0,
							fontWeight: FontWeight.bold,
							color: textColor,
							letterSpacing: 1.0,
						)
					),
					onPressed: onPressed,
					shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0)),
			),
		),
	);
}

/// Returns a large title
Widget getTitle({String text, size: 32.0, isBlack: false})
{
	return new Padding
	(
		padding: EdgeInsets.all(8.0),
		child: new Text
		(
			text,
			textAlign: TextAlign.center,
			style: new TextStyle
			(
				fontFamily: "Karla",
				color: isBlack? Colors.black : Colors.white,
				fontWeight: FontWeight.bold,
				fontSize: size,
				letterSpacing: -1.0,
			),
		),
	);
}

/// Returns body text
Widget getText({String text, isBlack: false, size: 16.0})
{
	return new Container
	(
		alignment: Alignment.topCenter,
		padding: EdgeInsets.only(bottom: 16.0),
		child: new Text
		(
			text,
			style: new TextStyle
			(
				fontFamily: "Karla",
				fontSize: size,
				color: isBlack? Colors.grey[700] : Colors.grey[100],
			)
		)	
	);
}

/// Returns a material-design flat button
/// defualt color is green
Widget getFlatButton({text: "ok", color: Colors.green, Function onPressed})
{
	return new Padding
	(
		padding: EdgeInsets.all(16.0),
		child: new FlatButton
		(
			textColor: color,
			child: new Text
			(
				text,
				style: new TextStyle
				(
					fontSize: 32.0,
					fontFamily: "Karla",
					letterSpacing: 1.0,
					fontWeight: FontWeight.bold,
				),
			),
			onPressed: onPressed,
		),
	);
}

Widget getFrame({children: const <Widget>[], })
{
	return new Container
	(
		decoration: new BoxDecoration
		(
			gradient: new RadialGradient
			(
				center: Alignment.topCenter,
				radius: 2.4,
				stops: [0.2, 0.9],
				colors: 
				[
					Color(0xFF7cd953),
					Color(0xFF15883E),
				],
			),
		),
		child: new ListView
		(
			physics: new ClampingScrollPhysics(),
			children: children,
		),
	);
}