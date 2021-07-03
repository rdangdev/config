//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/  /*Command*/  /*Update Interval*/  /*Update Signal*/

	{"", "volume",         0, 10},

	{"", "battery",        60, 3},

	{"", "date +%a-%b-%d", 60, 1},

	{"", "date +%I:%M%p",  60, 1}

};

static char delim = '|';
