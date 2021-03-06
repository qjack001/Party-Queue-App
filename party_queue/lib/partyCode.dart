///
/// Creates and deciphers fun "party codes" used 
/// for sharing the address of the host's party
/// 
/// @title PartyCode
/// @author Jack Guinane
/// @company Wolfhaus
/// @date 2018-05-18
/// 
class PartyCode
{
	/// Returns a "party code" based on the 
	/// inputted address
	/// 
	/// @param int the host's address (must be a 4-digit int)
	/// @return String the party code
	static String getCode(int address)
	{
		return adjectives[address ~/ 100] + " " + nouns[address % 100];
	}

	/// Returns an address based on the 
	/// inputted party code
	/// 
	/// @param String the party code (must)
	/// @return int the host's address
	static int getAddress(String code)
	{
		code = code.toLowerCase();
		int first = (adjectives.indexOf(code.split(" ")[0]) * 100);
		int second = (nouns.indexOf(code.split(" ")[1]));
		
		if (first == -101 || second == -1) //if either word was not found
		{
			return -1;
		}

		return first + second;
	}

	/// A big list of 100 adjectives
	static List<String> adjectives =
	[
		'cowardly',
		'ordinary',
		'sincere',
		'miniature',
		'amazing',
		'innocent',
		'mean',
		'odd',
		'unequal',
		'dull',
		'proud',
		'offbeat',
		'hanging',
		'strange',
		'keen',
		'freezing',
		'voiceless',
		'daffy',
		'educated',
		'giant',
		'general',
		'zippy',
		'spiffy',
		'unkempt',
		'hulking',
		'alive',
		'panoramic',
		'skinny',
		'guarded',
		'discreet',
		'parallel',
		'open',
		'arrogant',
		'boorish',
		'mundane',
		'agonizing',
		'aquatic',
		'closed',
		'stale',
		'workable',
		'satisfying',
		'hypnotic',
		'wiry',
		'ripe',
		'probable',
		'toothsome',
		'greasy',
		'terrible',
		'material',
		'clammy',
		'incredible',
		'ill',
		'unsuitable',
		'curly',
		'hard',
		'volatile',
		'finicky',
		'wakeful',
		'sad',
		'hollow',
		'deeply',
		'exultant',
		'grieving',
		'oafish',
		'elite',
		'unable',
		'vague',
		'mere',
		'gorgeous',
		'drab',
		'used',
		'observant',
		'steady',
		'dead',
		'telling',
		'vivacious',
		'important',
		'deadpan',
		'dark',
		'efficacious',
		'unused',
		'gabby',
		'kindly',
		'charming',
		'hissing',
		'shut',
		'busy',
		'kind',
		'boring',
		'draconian',
		'intelligent',
		'aspiring',
		'slippery',
		'false',
		'weary',
		'gainful',
		'torpid',
		'bustling',
		'classy',
		'heartbreaking',
	];

	/// A big list of 100 nouns
	static List<String> nouns =
	[
		'government',
		'fowl',
		'cheese',
		'squirrel',
		'rabbit',
		'knife',
		'front',
		'sugar',
		'daughter',
		'wood',
		'oil',
		'passenger',
		'quarter',
		'sisters',
		'salt',
		'dogs',
		'kettle',
		'need',
		'expert',
		'record',
		'statement',
		'tray',
		'foot',
		'reaction',
		'apparel',
		'floor',
		'tomatoes',
		'sticks',
		'name',
		'jeans',
		'night',
		'creator',
		'rock',
		'belief',
		'hospital',
		'event',
		'lip',
		'person',
		'grandmother',
		'exchange',
		'income',
		'account',
		'cat',
		'distance',
		'seat',
		'hose',
		'dock',
		'afternoon',
		'twig',
		'sky',
		'grandfather',
		'snakes',
		'thumb',
		'airport',
		'servant',
		'effect',
		'fairies',
		'grape',
		'river',
		'caption',
		'shoes',
		'basket',
		'box',
		'linen',
		'dirt',
		'fall',
		'frog',
		'sneeze',
		'instrument',
		'loss',
		'crate',
		'use',
		'volcano',
		'sound',
		'secretary',
		'title',
		'sort',
		'sail',
		'clam',
		'nation',
		'coal',
		'mother',
		'ice',
		'letters',
		'plants',
		'desk',
		'silk',
		'tent',
		'straw',
		'smile',
		'wine',
		'quiet',
		'pig',
		'wrist',
		'writing',
		'road',
		'door',
		'copper',
		'yard',
		'branch',
	];
}