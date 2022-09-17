<h2 align="center">ttbl-cli</h2>
<p align="center"> A fast terminal interface to the CaulfieldLife timetable</p>

The main purpose of this utility was to get past the frequent breakages of the CaulfieldLife website.

## Introduction
The main function of `ttbl` (timetable) is to get the day's subjects instantly from your local cache. The two secondary functions are to fetch your api token from [here](https://caulfieldsync-docs.vercel.app/developers/token), and to sync the database of subjects onto your local cache (this can be configured to run asynchronously).

## Usage
To get the days subjects, run:

	 ttbl

This will present you with a list like this (colorized):

	It's Monday.
	0  F3	*  House Tutor
	1  FCEN	*  Maths Enrichment
	2  PGY	*  Photography
	3  D7	*  Design and Engineering
	4  F3	*  Individuals & Societies
	5  N/A	*  Physical Education Boys

### Syncing

To sync, first get your token with:

	ttbl --token <id_num> <password>

for example,

	ttbl -t "123456" "mypassword"

then, you can sync with

	ttbl --sync <next_days> <prev_days>

for example, this syncs 14 days into the future.

	ttbl -s 14

Normally, the following would go into your `crontab -e`

	0		0 	* 	* 	* ttbl -sync 7
	# meaning midnight every day

### More subjects

	ttbl 1 # next monday
	ttbl 3 # next wednesday
	ttbl +1 # tommorow
	ttbl -2 # day before yesterday

## Configuration

	[ -z "$TTBL_PERIOD" ] && TTBL_PERIOD="$col_blue"
	[ -z "$TTBL_ROOM" ] && TTBL_ROOM="$col_magenta"
	[ -z "$TTBL_SUBJECT" ] && TTBL_SUBJECT="$col_normal"
	[ -z "$TTBL_DELIM" ] && TTBL_DELIM=" "
	[ -z "$TTBL_COLOR" ] && TTBL_COLOR="*"
	[ -z "$TTBL_DAYEND" ] && TTBL_DAYEND="17"
	[ -z "$TTBL_CURRENTDAY_MSG" ] && TTBL_CURRENTDAY_MSG="It's"
	[ -z "$TTBL_OTHERDAY_MSG" ] && TTBL_OTHERDAY_MSG="Here's"
