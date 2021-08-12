	  	$( document ).ready(function() {
		
		var xss_str = /<[^\w<>]*(?:[^<>"'\s]*:)?[^\w<>]*(?:\W*s\W*c\W*r\W*i\W*p\W*t|\W*f\W*o\W*r\W*m|\W*s\W*t\W*y\W*l\W*e|\W*s\W*v\W*g|\W*m\W*a\W*r\W*q\W*u\W*e\W*e|(?:\W*l\W*i\W*n\W*k|\W*o\W*b\W*j\W*e\W*c\W*t|\W*e\W*m\W*b\W*e\W*d|\W*a\W*p\W*p\W*l\W*e\W*t|\W*p\W*a\W*r\W*a\W*m|\W*i?\W*f\W*r\W*a\W*m\W*e|\W*b\W*a\W*s\W*e|\W*b\W*o\W*d\W*y|\W*m\W*e\W*t\W*a|\W*i\W*m\W*a?\W*g\W*e?|\W*v\W*i\W*d\W*e\W*o|\W*a\W*u\W*d\W*i\W*o|\W*b\W*i\W*n\W*d\W*i\W*n\W*g\W*s|\W*s\W*e\W*t|\W*i\W*s\W*i\W*n\W*d\W*e\W*x|\W*a\W*n\W*i\W*m\W*a\W*t\W*e)[^>\w])|(?:<\w[\s\S]*[\s\0\/]|['"])(?:formaction|style|background|src|lowsrc|ping|on(?:d(?:e(?:vice(?:(?:orienta|mo)tion|proximity|found|light)|livery(?:success|error)|activate)|r(?:ag(?:e(?:n(?:ter|d)|xit)|(?:gestur|leav)e|start|drop|over)?|op)|i(?:s(?:c(?:hargingtimechange|onnect(?:ing|ed))|abled)|aling)|ata(?:setc(?:omplete|hanged)|(?:availabl|chang)e|error)|urationchange|ownloading|blclick)|Moz(?:M(?:agnifyGesture(?:Update|Start)?|ouse(?:PixelScroll|Hittest))|S(?:wipeGesture(?:Update|Start|End)?|crolledAreaChanged)|(?:(?:Press)?TapGestur|BeforeResiz)e|EdgeUI(?:C(?:omplet|ancel)|Start)ed|RotateGesture(?:Update|Start)?|A(?:udioAvailable|fterPaint))|c(?:o(?:m(?:p(?:osition(?:update|start|end)|lete)|mand(?:update)?)|n(?:t(?:rolselect|extmenu)|nect(?:ing|ed))|py)|a(?:(?:llschang|ch)ed|nplay(?:through)?|rdstatechange)|h(?:(?:arging(?:time)?ch)?ange|ecking)|(?:fstate|ell)change|u(?:echange|t)|l(?:ick|ose))|m(?:o(?:z(?:pointerlock(?:change|error)|(?:orientation|time)change|fullscreen(?:change|error)|network(?:down|up)load)|use(?:(?:lea|mo)ve|o(?:ver|ut)|enter|wheel|down|up)|ve(?:start|end)?)|essage|ark)|s(?:t(?:a(?:t(?:uschanged|echange)|lled|rt)|k(?:sessione|comma)nd|op)|e(?:ek(?:complete|ing|ed)|(?:lec(?:tstar)?)?t|n(?:ding|t))|u(?:ccess|spend|bmit)|peech(?:start|end)|ound(?:start|end)|croll|how)|b(?:e(?:for(?:e(?:(?:scriptexecu|activa)te|u(?:nload|pdate)|p(?:aste|rint)|c(?:opy|ut)|editfocus)|deactivate)|gin(?:Event)?)|oun(?:dary|ce)|l(?:ocked|ur)|roadcast|usy)|a(?:n(?:imation(?:iteration|start|end)|tennastatechange)|fter(?:(?:scriptexecu|upda)te|print)|udio(?:process|start|end)|d(?:apteradded|dtrack)|ctivate|lerting|bort)|DOM(?:Node(?:Inserted(?:IntoDocument)?|Removed(?:FromDocument)?)|(?:CharacterData|Subtree)Modified|A(?:ttrModified|ctivate)|Focus(?:Out|In)|MouseScroll)|r(?:e(?:s(?:u(?:m(?:ing|e)|lt)|ize|et)|adystatechange|pea(?:tEven)?t|movetrack|trieving|ceived)|ow(?:s(?:inserted|delete)|e(?:nter|xit))|atechange)|p(?:op(?:up(?:hid(?:den|ing)|show(?:ing|n))|state)|a(?:ge(?:hide|show)|(?:st|us)e|int)|ro(?:pertychange|gress)|lay(?:ing)?)|t(?:ouch(?:(?:lea|mo)ve|en(?:ter|d)|cancel|start)|ime(?:update|out)|ransitionend|ext)|u(?:s(?:erproximity|sdreceived)|p(?:gradeneeded|dateready)|n(?:derflow|load))|f(?:o(?:rm(?:change|input)|cus(?:out|in)?)|i(?:lterchange|nish)|ailed)|l(?:o(?:ad(?:e(?:d(?:meta)?data|nd)|start)?|secapture)|evelchange|y)|g(?:amepad(?:(?:dis)?connected|button(?:down|up)|axismove)|et)|e(?:n(?:d(?:Event|ed)?|abled|ter)|rror(?:update)?|mptied|xit)|i(?:cc(?:cardlockerror|infochange)|n(?:coming|valid|put))|o(?:(?:(?:ff|n)lin|bsolet)e|verflow(?:changed)?|pen)|SVG(?:(?:Unl|L)oad|Resize|Scroll|Abort|Error|Zoom)|h(?:e(?:adphoneschange|l[dp])|ashchange|olding)|v(?:o(?:lum|ic)e|ersion)change|w(?:a(?:it|rn)ing|heel)|key(?:press|down|up)|(?:AppComman|Loa)d|no(?:update|match)|Request|zoom))[\s\0]*=/;
		
		$('textarea, input[type=text]').on('focusout', function(e) { 
			var regex_xss = /(<img)/;
			var input_val = $(this).val();
			if(xss_str.test(input_val))
			{
				var error_msg = "Please enter proper value ";
				//var text_box_id = $(this).attr('id');
				var text_box_id = $(this).closest('td').prev('td').text()
				if(text_box_id == 'undefined')
				{
					
				}
				else
				{
					error_msg = error_msg + "in "+ text_box_id;
				}
				alert(error_msg);
				//alert("Please enter proper value in "+ $(this).attr('id')); 
				$(this).val('');
				return false;
			}
			else
			{
				//alert("No");
			}
		});
		//$('textarea, input[type=text]').on('keypress focusout keyup', function(e) { if($(this).val().contains("<img")){ $(this).val('');return false;}});
      });
	/*$( document ).ready(function() {
		alert("ready");
		$('textarea').on('focusout', function() { alert($(this).val());$(this)[0].select(); });
	});
	
	/*$('input[type=text], textarea').each(function() 
	 {
		alert($(this).val());
		var text_val = $(this).val();
		if (text_val.contains("<img")) 
		{
			alert("contains");
			return false;
		}
	 });
	 		var compareString = "String to be compared";
		var pattern = /[A-Z]/;
		var matchResult = pattern.test(compareString);
		alert(matchResult);
		alert("ready2");		
	 
	 
	 */

var pageName = window.location.pathname;
//alert(pageName+"|"+ ( pageName == "/cms/admin/meditsettings.jsp" ) );
if( pageName != "/cms/admin/meditsettings.jsp" ) { 
	if(typeof String.prototype.trim !== 'function') {
		String.prototype.trim = function() {
			return this.replace(/^\s+|\s+$/g, ''); 
		}
	}

	//alert("header");
	$(function(){
		//alert("fun");
		$('input:text, textarea').blur(function() {
			var obj = $(this);
			var word = obj.val();
			//alert(word);
			if( word.trim() != "" ) {
				$.post("validateWord.jsp",{word:word},function(result) {
					//alert(result);
					if( result.trim() == "true" ) {
						obj.val("");
						obj.focus();
						alert("You have entered prohibited word(s)!");
						return;
					}
				});//post
			}//if
		}); 	
	/* $("#agency").change(function(){
		if($("#balogin").val()==0){
		var nw=$("#nw").prop("selectedIndex");
		var agency=$("#agency").prop("selectedIndex");
		//alert(nw+"|"+agency);
		if(nw==0 && agency==0){//if network and agency select `All`
			//alert($("#nw option").length);
			if($("#nw option").length>1){
				$("#nw").prop("selectedIndex",1);//set network value to `Airtel`
			}
		}//if close
		alert( this.value ); // or $(this).val()
		$("#cp").html("");
		
	}});//agency change close */
	
	});
}