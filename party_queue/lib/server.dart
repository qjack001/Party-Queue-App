import 'dart:math';

/// 
/// communicates with the server
/// 
/// curenntly a placeholder
/// 

class Server
{
	/// Return random 4 digit number.
	/// will be used in the future to setup a new party on the server, and return the address
	static int newServer()
	{
		Random ran = new Random();
		return ran.nextInt(10000);
	}

	/// Returns "Jack's Banger", followed by the inputted address
	/// will be used to get the name of the party associated with the inputted address
	static String getPartyName(int address)
	{
		return "Jack's Banger (#${address.toString()})";
	}

	/// the following are placeholders, that may or may not be implemented in the future,
	/// depending on how useful they are
	/// 
	static bool exists(int address)
	{
		return address >= 0;
	}
	static void end(int address){}


}