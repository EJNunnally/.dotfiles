/* user and group to drop privileges to */
static const char *user  = "nobody";
// static const char *group = "nogroup";
static const char *group = "nobody";

static const char *colorname[NUMCOLS] = {
	[BG] =     "black",     /* background */
	[INIT] =   "#4f525c",   /* after initialization */
	[INPUT] =  "#005577",   /* during input */
	[FAILED] = "#CC3333",   /* wrong password */
	[CAPS] = "red",         /* CapsLock on */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;

/* enable or disable (1 means enable, 0 disable) bell sound when password is incorrect */
static const int xbell = 0;
/*
* Shapes:
* 0: square
* 1: circle
*/
static const int shape = 0;
/* size of square in px */
static const int shapesize = 50;
static const int shapegap = 35;
