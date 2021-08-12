mdate=new Date();
year=mdate.getFullYear();
var min_year = year-5; // defines lowest year in year menu
var max_year = year+11; // defines highest year in the year menu

var p_min_year=year;
var p_max_year=year+1;
// make this false to prevent the weekday element from being displayed
var weekday_showing = false;

// make this true to make dayofweek return a number (0-6)
var dayofweek_returned_as_number = false;

// make this true to make month return a number (0-11)
var month_returned_as_number = true;
if (min_year <= 400) {
	alert("Minimum year must be higher than 400 for this algorithm to work.");
}
	
// The following code adds three methods to the built-in Date object
function _strMonth() {
	var months = new Array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December");
	return months[this.getMonth()];
}
function _strDay() {
	var days = new Array("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday");
	return days[this.getDay()];
}
function _weekOf() {
	sunday = ((arguments[0] == null) || (!arguments[0])); // Check for optional argument
	return (new Date(this - ((this.getDay() - ((sunday) ? 0 : 1)) * 24 * 60 * 60 * 1000)));
}

// Add these methods to all dates
Date.prototype.weekOf = _weekOf;
Date.prototype.strMonth = _strMonth;
Date.prototype.strDay = _strDay;


function changeDaysOld(numb, date_form, aname) {
		if(document.getElementById("s1")!=null){
			document.getElementById("s1").checked=false;
		}
		if(document.getElementById("s2")!=null){
			document.getElementById("s2").checked=false;
		}
		if(document.getElementById("s3")!=null){
			document.getElementById("s3").checked=false;
		}
		if(document.getElementById("s4")!=null){
			document.getElementById("s4").checked=false;
		}
	MonthCtrl = eval("date_form." + aname + "m");
	DayCtrl = eval("date_form." + aname + "d");
	YearCtrl = eval("date_form." + aname + "y");
	mth = eval(MonthCtrl.selectedIndex);
	sel = eval(YearCtrl.selectedIndex);
	yr = eval(YearCtrl.options[sel].text);
	if (numb != 1) {
		numDays = numDaysIn(mth, yr);
		eval("date_form." + aname + "d.options.length=" + numDays);
		for (i = 27; i < numDays; i++) {
			j = i + 1;
			eval("date_form." + aname + "d.options[" + i + "].text = " + j);
		}
	}
}
function changeDays1(numb, date_form, aname) {		
	MonthCtrl = eval("date_form." + aname + "m");
	DayCtrl = eval("date_form." + aname + "d");
	YearCtrl = eval("date_form." + aname + "y");
	mth = eval(MonthCtrl.selectedIndex);
	sel = eval(YearCtrl.selectedIndex);
	yr = eval(YearCtrl.options[sel].text);
	if (numb != 1) {
		numDays = numDaysIn(mth, yr);
		eval("date_form." + aname + "d.options.length=" + numDays);
		for (i = 27; i < numDays; i++) {
			j = i + 1;
			eval("date_form." + aname + "d.options[" + i + "].text = " + j);
		}
	}
}
function numDaysIn(mth, yr) {
	if (mth == 3 || mth == 5 || mth == 8 || mth == 10) {
		return 30;
	} else {
		if ((mth == 1) && leapYear(yr)) {
			return 29;
		} else {
			if (mth == 1) {
				return 28;
			} else {
				return 31;
			}
		}
	}
}
function leapYear(yr) {
	if (((yr % 4 == 0) && yr % 100 != 0) || yr % 400 == 0) {
		return true;
	} else {
		return false;
	}
}
function arr() {
	this.length = arr.arguments.length;
	for (n = 0; n < arr.arguments.length; n++) {
		this[n] = arr.arguments[n];
	}
}
weekdays = new arr("Sun", "Mon", "Tues", "Wed", "Thurs", "Fri", "Sat");
months = new arr("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec");
var cur = new Date();
function getWeekDay(mth, day, yr) {
	first_day = firstDayOfYear(yr);
	for (num = 0; num < mth; num++) {
		first_day += numDaysIn(num, yr);
	}
	first_day += day - 1;
	return first_day % 7;
}
function firstDayOfYear(yr) {
	diff = yr - 401;
	return parseInt((1 + diff + (diff / 4) - (diff / 100) + (diff / 400)) % 7);
}

// fixes a Netscape 2 and 3 bug
function getFullYear(d) { // d is a date object
	yr = d.getYear();
	if (yr < 1000) {
		yr += 1900;
	}
	return yr;
}

function unselect(){
	document.getElementById("s1").checked=false;
	document.getElementById("s2").checked=false;
	document.getElementById("s3").checked=false;
	document.getElementById("s4").checked=false;
	document.getElementById("s5").checked=false;
	if(document.getElementById("s6")!=null)
		document.getElementById("s6").checked=false;
	return false;
}
function changeDays(type,numb, date_form, aname) {
		if(document.getElementById("s1")!=null){
			document.getElementById("s1").checked=false;
		}
		if(document.getElementById("s2")!=null){
			document.getElementById("s2").checked=false;
		}
		if(document.getElementById("s3")!=null){
			document.getElementById("s3").checked=false;
		}
		if(document.getElementById("s4")!=null){
			document.getElementById("s4").checked=false;
		}
		if(document.getElementById("s5")!=null){
			document.getElementById("s5").checked=false;
		}
		if(document.getElementById("s6")!=null){
			document.getElementById("s6").checked=false;
		}
/*	MonthCtrl = eval("date_form." + aname + "m");
	DayCtrl = eval("date_form." + aname + "d");
	YearCtrl = eval("date_form." + aname + "y");
	mth = eval(MonthCtrl.selectedIndex);
	sel = eval(YearCtrl.selectedIndex);
	yr = eval(YearCtrl.options[sel].text);
	if (numb != 1) {
		numDays = 31;// numDaysIn(mth, yr);
		eval("date_form." + aname + "d.options.length=" + numDays);
		for (i = 27; i < numDays; i++) {
			j = i + 1;
			eval("date_form." + aname + "d.options[" + i + "].text = " + j);
		}
		//reset to max date with in that month,if we select date or month or year
		var selectedIdx = document.getElementById(aname + "dcms").selectedIndex*1;
		var total = (numDaysIn(mth, yr)-1)*1;
		if( selectedIdx > total){
			document.getElementById(aname + "dcms").selectedIndex = total;
		}
	}*/
}

function datedrop(myname, feeddate) {
	d = new Date(feeddate);
	edmonth = d.getMonth();
	edday = d.getDate();
	edyear = d.getFullYear();

	// write day element
	document.write("<select id=" + myname + "dcms name=" + myname + "d size=1 onChange='changeDays(1,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	//for (i = 1; i <= numDaysIn(d.getMonth(), getFullYear(d)); i++) {
    for (i = 1; i <= 31; i++) {
		document.write("<option"  +  " value=\"" + i +"\"" + (edday == i ? " selected" : "") + "  >" + i + "</option>\n");
	
	}
	// write month element
	document.write("</select>&nbsp;&nbsp;<select id=" + myname + "mcms name=" + myname + "m size=1 onChange='changeDays(2,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>");
	for (i = 1; i < 13; i++) {
		document.write("<option" + (month_returned_as_number ? " value=" + i : "") + (edmonth == i - 1 ? " selected" : "") + ">" + months[i - 1] + "</option>\n");
	}


	// write year element
	document.write("</select>&nbsp;&nbsp;<select id=" + myname + "ycms name=" + myname + "y size=1 onChange='changeDays(3,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	for (j = min_year; j < max_year; j++) {
		document.write("<option" +  " value=\"" + j +"\" " + (edyear == j ? " selected" : "") + ">" + j + "</option>\n");
	}
	document.write("</select>");
}

function p_datedrop(myname, feeddate) {	
	d = new Date(feeddate);
	edmonth = d.getMonth();
	edday = d.getDate();
	edyear = d.getFullYear();

	//alert(feeddate+"|"+edday+"-"+edmonth+"-"+edyear);
	// write day element
	document.write("<select id=" + myname + "dcms name=" + myname + "d size=1 onChange='changeDays(1,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	//for (i = 1; i <= numDaysIn(d.getMonth(), getFullYear(d)); i++) {
    for (i = 1; i <= 31; i++) {
		document.write("<option"  +  " value=\"" + i +"\"" + (edday == i ? " selected" : "") + "  >" + i + "</option>\n");
	
	}
	// write month element
	document.write("</select>&nbsp;&nbsp;<select id=" + myname + "mcms name=" + myname + "m size=1 onChange='changeDays(2,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>");
	
	var flag = false;
	//31-11-2014
	for (i = edmonth+1; i <= edmonth+2; i++) {
		if( i > 12 ) {
			i=1;
			flag = true;
		}
		document.write("<option" + (month_returned_as_number ? " value=" + i : "") + (edmonth == i - 1 ? " selected" : "") + ">" + months[i - 1] + "</option>\n");		
		if( flag ) break;
	}

	// write year element
	document.write("</select>&nbsp;&nbsp;<select id=" + myname + "ycms name=" + myname + "y size=1 onChange='changeDays(3,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	for (j = edyear; j <= edyear+1; j++) {
		document.write("<option" +  " value=\"" + j +"\" " + (edyear == j ? " selected" : "") + ">" + j + "</option>\n");
	}
	document.write("</select>");
}


function datedrop_start(myname, feeddate, start_year) {
	d = new Date(feeddate);
	edmonth = d.getMonth();
	edday = d.getDate();
	edyear = d.getFullYear();
	start_year = start_year==""?min_year:start_year;
	start_year = isNaN(start_year)?parseInt(start_year):start_year;

	// write day element
	document.write("<select id=" + myname + "dcms name=" + myname + "d size=1 onChange='changeDays(1,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	//for (i = 1; i <= numDaysIn(d.getMonth(), getFullYear(d)); i++) {
    for (i = 1; i <= 31; i++) {
		document.write("<option"  +  " value=\"" + i +"\"" + (edday == i ? " selected" : "") + "  >" + i + "</option>\n");
	
	}
	// write month element
	document.write("</select>&nbsp;&nbsp;<select id=" + myname + "mcms name=" + myname + "m size=1 onChange='changeDays(2,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>");
	for (i = 1; i < 13; i++) {
		document.write("<option" + (month_returned_as_number ? " value=" + i : "") + (edmonth == i - 1 ? " selected" : "") + ">" + months[i - 1] + "</option>\n");
	}


	// write year element
	document.write("</select>&nbsp;&nbsp;<select id=" + myname + "ycms name=" + myname + "y size=1 onChange='changeDays(3,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	for (j = start_year; j < max_year; j++) {
		document.write("<option" +  " value=\"" + j +"\" " + (edyear == j ? " selected" : "") + ">" + j + "</option>\n");
	}
	document.write("</select>");
}

function datedrop_start_end(myname, feeddate, start_year, end_year) {
	d = new Date(feeddate);
	edmonth = d.getMonth();
	edday = d.getDate();
	edyear = d.getFullYear();

	start_year = start_year==""?min_year:start_year;
	start_year = isNaN(start_year)?parseInt(start_year):start_year;
	end_year = end_year==""?max_year:end_year;
	end_year = isNaN(end_year)?parseInt(end_year):end_year;

	// write day element
	document.write("<select id=" + myname + "dcms name=" + myname + "d size=1 onChange='changeDays(1,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	//for (i = 1; i <= numDaysIn(d.getMonth(), getFullYear(d)); i++) {
    for (i = 1; i <= 31; i++) {
		document.write("<option"  +  " value=\"" + i +"\"" + (edday == i ? " selected" : "") + "  >" + i + "</option>\n");
	
	}
	// write month element
	document.write("</select>&nbsp;&nbsp;<select id=" + myname + "mcms name=" + myname + "m size=1 onChange='changeDays(2,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>");
	for (i = 1; i < 13; i++) {
		document.write("<option" + (month_returned_as_number ? " value=" + i : "") + (edmonth == i - 1 ? " selected" : "") + ">" + months[i - 1] + "</option>\n");
	}


	// write year element
	document.write("</select>&nbsp;&nbsp;<select id=" + myname + "ycms name=" + myname + "y size=1 onChange='changeDays(3,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	for (j = start_year; j < end_year; j++) {
		document.write("<option" +  " value=\"" + j +"\" " + (edyear == j ? " selected" : "") + ">" + j + "</option>\n");
	}
	document.write("</select>");
}

function datedropdisabled(myname, feeddate) {
	d = new Date(feeddate);
	edmonth = d.getMonth();
	edday = d.getDate();
	edyear = d.getFullYear();

	// write day element
	document.write("<select disabled id=" + myname + "dcms name=" + myname + "d size=1 onChange='changeDays(1,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	//for (i = 1; i <= numDaysIn(d.getMonth(), getFullYear(d)); i++) {
    for (i = 1; i <= 31; i++) {
		document.write("<option"  +  " value=\"" + i +"\"" + (edday == i ? " selected" : "") + "  >" + i + "</option>\n");
	
	}
	// write month element
	document.write("</select>&nbsp;&nbsp;<select disabled id=" + myname + "mcms name=" + myname + "m size=1 onChange='changeDays(2,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>");
	for (i = 1; i < 13; i++) {
		document.write("<option" + (month_returned_as_number ? " value=" + i : "") + (edmonth == i - 1 ? " selected" : "") + ">" + months[i - 1] + "</option>\n");
	}


	// write year element
	document.write("</select>&nbsp;&nbsp;<select disabled id=" + myname + "ycms name=" + myname + "y size=1 onChange='changeDays(3,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	for (j = min_year; j < max_year; j++) {
		document.write("<option" +  " value=\"" + j +"\" " + (edyear == j ? " selected" : "") + ">" + j + "</option>\n");
	}
	document.write("</select>");
}

function datedropdisabled_start(myname, feeddate, start_year) {
	d = new Date(feeddate);
	edmonth = d.getMonth();
	edday = d.getDate();
	edyear = d.getFullYear();

	start_year = start_year==""?min_year:start_year;
	start_year = isNaN(start_year)?parseInt(start_year):start_year;
	
	// write day element
	document.write("<select disabled id=" + myname + "dcms name=" + myname + "d size=1 onChange='changeDays(1,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	//for (i = 1; i <= numDaysIn(d.getMonth(), getFullYear(d)); i++) {
    for (i = 1; i <= 31; i++) {
		document.write("<option"  +  " value=\"" + i +"\"" + (edday == i ? " selected" : "") + "  >" + i + "</option>\n");
	
	}
	// write month element
	document.write("</select>&nbsp;&nbsp;<select disabled id=" + myname + "mcms name=" + myname + "m size=1 onChange='changeDays(2,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>");
	for (i = 1; i < 13; i++) {
		document.write("<option" + (month_returned_as_number ? " value=" + i : "") + (edmonth == i - 1 ? " selected" : "") + ">" + months[i - 1] + "</option>\n");
	}


	// write year element
	document.write("</select>&nbsp;&nbsp;<select disabled id=" + myname + "ycms name=" + myname + "y size=1 onChange='changeDays(3,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	for (j = start_year; j < max_year; j++) {
		document.write("<option" +  " value=\"" + j +"\" " + (edyear == j ? " selected" : "") + ">" + j + "</option>\n");
	}
	document.write("</select>");
}

function datedropdisabled_start_end(myname, feeddate, start_year, end_year) {
	d = new Date(feeddate);
	edmonth = d.getMonth();
	edday = d.getDate();
	edyear = d.getFullYear();

	start_year = start_year==""?min_year:start_year;
	start_year = isNaN(start_year)?parseInt(start_year):start_year;
	end_year = end_year==""?max_year:end_year;
	end_year = isNaN(end_year)?parseInt(end_year):end_year;

	// write day element
	document.write("<select disabled id=" + myname + "dcms name=" + myname + "d size=1 onChange='changeDays(1,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	//for (i = 1; i <= numDaysIn(d.getMonth(), getFullYear(d)); i++) {
    for (i = 1; i <= 31; i++) {
		document.write("<option"  +  " value=\"" + i +"\"" + (edday == i ? " selected" : "") + "  >" + i + "</option>\n");
	
	}
	// write month element
	document.write("</select>&nbsp;&nbsp;<select disabled id=" + myname + "mcms name=" + myname + "m size=1 onChange='changeDays(2,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>");
	for (i = 1; i < 13; i++) {
		document.write("<option" + (month_returned_as_number ? " value=" + i : "") + (edmonth == i - 1 ? " selected" : "") + ">" + months[i - 1] + "</option>\n");
	}


	// write year element
	document.write("</select>&nbsp;&nbsp;<select disabled id=" + myname + "ycms name=" + myname + "y size=1 onChange='changeDays(3,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	for (j = start_year; j < end_year; j++) {
		document.write("<option" +  " value=\"" + j +"\" " + (edyear == j ? " selected" : "") + ">" + j + "</option>\n");
	}
	document.write("</select>");
}

function datedropMonthYear(myname, feeddate) {
	d = new Date(feeddate);
	edmonth = d.getMonth();
	edday = 1;
	edyear = d.getFullYear();

	// write day element
	document.write("<input type='hidden' id=" + myname + "dcms name=" + myname + "d value='"+edday+"'>");
	
	// write month element
	document.write("<select id=" + myname + "mcms name=" + myname + "m size=1 onChange='changeDays(2,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>");
	for (i = 1; i < 13; i++) {
		document.write("<option" + (month_returned_as_number ? " value=" + i : "") + (edmonth == i - 1 ? " selected" : "") + ">" + months[i - 1] + "</option>\n");
	}


	// write year element
	document.write("</select>&nbsp;&nbsp;<select id=" + myname + "ycms name=" + myname + "y size=1 onChange='changeDays(3,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	for (j = min_year; j < max_year; j++) {
		document.write("<option" +  " value=\"" + j +"\" " + (edyear == j ? " selected" : "") + ">" + j + "</option>\n");
	}
	document.write("</select>");
}

function datedropTime(myname, feeddate) {
	d = new Date(feeddate);
	edmonth = d.getMonth();
	edday = d.getDate();
	edyear = d.getFullYear();
	edhour=d.getHours();
	edminute=d.getMinutes();

	// write day element
	document.write("<select id=" + myname + "dcms name=" + myname + "d size=1 onChange='changeDays(1,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	//for (i = 1; i <= numDaysIn(d.getMonth(), getFullYear(d)); i++) {
    for (i = 1; i <= 31; i++) {
		document.write("<option"  +  " value=\"" + i +"\"" + (edday == i ? " selected" : "") + "  >" + i + "</option>\n");
	
	}
	// write month element
	document.write("</select>&nbsp;&nbsp;<select id=" + myname + "mcms name=" + myname + "m size=1 onChange='changeDays(2,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>");
	for (i = 1; i < 13; i++) {
		document.write("<option" + (month_returned_as_number ? " value=" + i : "") + (edmonth == i - 1 ? " selected" : "") + ">" + months[i - 1] + "</option>\n");
	}


	// write year element
	document.write("</select>&nbsp;&nbsp;<select id=" + myname + "ycms name=" + myname + "y size=1 onChange='changeDays(3,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	for (j = min_year; j < max_year; j++) {
		document.write("<option" +  " value=\"" + j +"\" " + (edyear == j ? " selected" : "") + ">" + j + "</option>\n");
	}

	document.write("</select>&nbsp;&nbsp;<select name="+myname+"hh   size=1 style='font-size:10px;'>\n");
	for (i=0;i<=23;i++) {
     i=((i < 10) ? "0" : "") + i
	 document.write("<option"+(edhour==i?" selected":"")+" value="+i+">"+i+"\n");
    }
	// write month element
	
	document.write("</select>&nbsp;&nbsp;<select name="+myname+"mm  size=1 style='font-size:10px;'>");
	for (i=0;i<=59;i++) {
     i=((i < 10) ? "0" : "") + i
	 document.write("<option"+(edminute==i?" selected":"")+" value="+i+">"+i+"\n");
    }
	document.write("</select>");
}
function date_drop(myname, feeddate) { //user clicks report
	d = new Date(feeddate);
	edmonth = d.getMonth();
	edday = d.getDate();
	edyear = d.getFullYear();

	// write day element
	document.write("<select id=" + myname + "dcms name=" + myname + "d size=1 onChange='change_Days(1,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	//for (i = 1; i <= numDaysIn(d.getMonth(), getFullYear(d)); i++) {
    for (i = 1; i <= 31; i++) {
		document.write("<option"  +  " value=\"" + i +"\"" + (edday == i ? " selected" : "") + ">" + i + "</option>\n");
	
	}
	// write month element
	document.write("</select>&nbsp;&nbsp;<select id=" + myname + "mcms name=" + myname + "m size=1 onChange='change_Days(2,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>");
	for (i = 1; i < 13; i++) {
		document.write("<option" + (month_returned_as_number ? " value=" + i : "") + (edmonth == i - 1 ? " selected" : "") + ">" + months[i - 1] + "</option>\n");
	}


	// write year element
	document.write("</select>&nbsp;&nbsp;<select id=" + myname + "ycms name=" + myname + "y size=1 onChange='change_Days(3,0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	for (j = min_year; j < max_year; j++) {
		document.write("<option" +  " value=\"" + j +"\" " + (edyear == j ? " selected" : "") + ">" + j + "</option>\n");
	}
	document.write("</select>");
}
function change_Days(type,numb, date_form, aname) {
		if(document.getElementById("s1")!=null){
			document.getElementById("s1").checked=false;
		}
		if(document.getElementById("s2")!=null){
			document.getElementById("s2").checked=false;
		}
		if(document.getElementById("s3")!=null){
			document.getElementById("s3").checked=false;
		}
		if(document.getElementById("s4")!=null){
			document.getElementById("s4").checked=false;
		}
		if(document.getElementById("s5")!=null){
			document.getElementById("s5").checked=false;
		}
		}

function datedropOld(myname, feeddate) {
	d = new Date(feeddate);
	edmonth = d.getMonth();
	edday = d.getDate();
	edyear = d.getFullYear();

	// write day element
	document.write("<select name=" + myname + "d size=1 onChange='changeDays(0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	for (i = 1; i <= numDaysIn(d.getMonth(), getFullYear(d)); i++) {
		document.write("<option"  +  " value=\"" + i +"\"" + (edday == i ? " selected" : "") + ">" + i + "</option>\n");
	
	}

	// write month element
	document.write("</select>&nbsp;&nbsp;<select name=" + myname + "m size=1 onChange='changeDays(0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>");
	for (i = 1; i < 13; i++) {
		document.write("<option" + (month_returned_as_number ? " value=" + i : "") + (edmonth == i - 1 ? " selected" : "") + ">" + months[i - 1] + "</option>\n");
	}


	// write year element
	document.write("</select>&nbsp;&nbsp;<select name=" + myname + "y size=1 onChange='changeDays(0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	for (j = min_year; j < max_year; j++) {
		document.write("<option" +  " value=\"" + j +"\" " + (edyear == j ? " selected" : "") + ">" + j + "</option>\n");
	}
	document.write("</select>");
}

function datedrop1(myname, feeddate) {
	d = new Date(feeddate);
	edmonth = d.getMonth();
	edday = d.getDate();
	edyear = d.getFullYear();

	// write day element
	document.write("<select name=" + myname + "d size=1 onChange='changeDays1(0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	for (i = 1; i <= numDaysIn(d.getMonth(), getFullYear(d)); i++) {
		document.write("<option"  +  " value=\"" + i +"\"" + (edday == i ? " selected" : "") + ">" + i + "</option>\n");
	
	}

	// write month element
	document.write("</select>&nbsp;&nbsp;<select name=" + myname + "m size=1 onChange='changeDays1(0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>");
	for (i = 1; i < 13; i++) {
		document.write("<option" + (month_returned_as_number ? " value=" + i : "") + (edmonth == i - 1 ? " selected" : "") + ">" + months[i - 1] + "</option>\n");
	}


	// write year element
	document.write("</select>&nbsp;&nbsp;<select name=" + myname + "y size=1 onChange='changeDays1(0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	for (j = min_year; j < max_year; j++) {
		document.write("<option" +  " value=\"" + j +"\" " + (edyear == j ? " selected" : "") + ">" + j + "</option>\n");
	}
	document.write("</select>");
}
//this function is used for promotional slots to change end date ,if we select the start date
function datedrop2(myname, feeddate) {
	d = new Date(feeddate);
	edmonth = d.getMonth();
	edday = d.getDate();
	edyear = d.getFullYear();

	// write day element
	document.write("<select id=" + myname + "dd name=" + myname + "d size=1 onChange='changeDays2(0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	for (i = 1; i <= numDaysIn(d.getMonth(), getFullYear(d)); i++) {
		document.write("<option"  +  " value=\"" + i +"\"" + (edday == i ? " selected" : "") + ">" + i + "</option>\n");
	
	}

	// write month element
	document.write("</select>&nbsp;&nbsp;<select id=" + myname + "mm  name=" + myname + "m size=1 onChange='changeDays2(0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>");
	for (i = 1; i < 13; i++) {
		document.write("<option" + (month_returned_as_number ? " value=" + i : "") + (edmonth == i - 1 ? " selected" : "") + ">" + months[i - 1] + "</option>\n");
	}


	// write year element
	document.write("</select>&nbsp;&nbsp;<select id=" + myname + "yy  name=" + myname + "y size=1 onChange='changeDays2(0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");
	for (j = min_year; j < max_year; j++) {
		document.write("<option" +  " value=\"" + j +"\" " + (edyear == j ? " selected" : "") + ">" + j + "</option>\n");
	}
	document.write("</select>");

}
function datetimedrop(myname,feeddate){//user clicks report to display hours and minutes box 
	
		d=new Date(feeddate)
		edmonth=d.getMonth();
		edday=d.getDate();
		edyear=d.getFullYear();
		edhour=d.getHours();
		edminute=d.getMinutes();
// write hour element
	document.write("<select id=" + myname + "hh name=" + myname + "hh size=1 onChange='change_Time(0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");

for (j = 0; j <= 23; j++) {
		document.write("<option" +  " value=\"" + j +"\" " + (edhour == j ? " selected" : "") + ">" + j + "</option>\n");
	}
	document.write("</select>");
	document.write("<select id=" + myname + "mm name=" + myname + "mm size=1 onChange='change_Time(0,this.form," + "\"" + myname + "\"" + ")' style='font-size:10px;'>\n");

for (j = 0; j <= 59; j++) {
		document.write("<option" +  " value=\"" + j +"\" " + (edminute == j ? " selected" : "") + ">" + j + "</option>\n");
	}
	document.write("</select>");
	
}
function change_Time(numb, date_form, aname) {	
	unselect();
}
function changeDays2(numb, date_form, aname) {	
	MonthCtrl = eval("date_form." + aname + "m");
	DayCtrl = eval("date_form." + aname + "d");
	YearCtrl = eval("date_form." + aname + "y");
	mth = eval(MonthCtrl.selectedIndex);
	sel = eval(YearCtrl.selectedIndex);
	yr = eval(YearCtrl.options[sel].text);
	if (numb != 1) {
		numDays = numDaysIn(mth, yr);
		eval("date_form." + aname + "d.options.length=" + numDays);
		for (i = 27; i < numDays; i++) {
			j = i + 1;
			eval("date_form." + aname + "d.options[" + i + "].text = " + j);
		}
	}
	day=eval("date_form." + aname + "d").options[eval("date_form." + aname + "d").selectedIndex].value;
	month=eval("date_form." + aname + "m").options[eval("date_form." + aname + "m").selectedIndex].value;
	year=eval("date_form." + aname + "y").options[eval("date_form." + aname + "y").selectedIndex].value;
	changeToDate(day,month,year);
}
function LastDayOfMonth(Year, Month)
{
	  return(new Date((new Date(Year, Month+1,1))-1)).getDate();
}
function changeToDate(day,month,year){
	 		var  s = new Date();				//declaring the dateobject to get the currentDate
			day=(day*1+6)*1;
			if(day>LastDayOfMonth(year,month*1-1)){
				day=day-LastDayOfMonth(year,month*1-1);
				month=month*1+1;
				if(month*1>12){
					month=1;
					year=year*1+1;
				}
			}
			for(i=0;i<document.f1.tod.options.length;i++){		//to set the the To Day
					if(document.f1.tod.options[i].value==day)
						document.f1.tod.options[i].selected=true;
			}
			for(i=0;i<document.f1.tom.options.length;i++){		//to set the the To Month
					if(document.f1.tom.options[i].value==month)
						document.f1.tom.options[i].selected=true;
			}
			for(i=0;i<document.f1.toy.options.length;i++){		//to set the the To Date year
					if(document.f1.toy.options[i].value==year)
						document.f1.toy.options[i].selected=true;
			}
			return false;
	}