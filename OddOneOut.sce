# Conditions

scenario 			= "OddOneOut.sce";
#scenario_type 		= trials;
active_buttons 	= 3;
button_codes 		= 1,2,3; 	      
#default_all_responses 	= false;	
#default_trial_type 	= fixed; 
#default_background_color= 255, 255, 255;
default_font 		= "arial";
default_font_size	=	32;
#default_text_color	= 0, 0, 0;
response_matching = simple_matching;

begin;

#Definitions

picture {} default;

# Start of Programme 

trial { 
   trial_duration =  forever;
   trial_type = specific_response;    	# trial ends when response
   terminator_button = 1;             	#   button 1 is pressed
	picture {
		text {
			font_size = 18;
			system_memory = true;
			caption = "In dit experiment zie je steeds drie namen van voorwerpen. 
Probeer te bepalen welke van deze drie voorwerpen niet in het rijtje thuis hoort. 
Je moet hierbij alleen letten op de vorm van de voorwerpen. 

In het rijtje    boek-tafel-schoenendoos    is de tafel het voorwerp dat qua vorm afwijkt. 
De tafel heeft immers geen rechthoekige, platte vorm.

Soms worden ook dierennamen genoemd. 
Bepaal dan welk dier niet in het rijtje thuis hoort op basis van de vorm van de kop van het dier.

Druk op de linkerknop om door te gaan.";	
			};
		x = 0 ; y = 0 ;		
		};
	};      


trial { 
   trial_duration = forever;
   trial_type = specific_response;    	# trial ends when response
   terminator_button = 1;             	#   button 1 is pressed
	picture {
		text {
			font_size = 18;
			system_memory = true;
			caption = "Als je hebt bepaald welke van de drie voorwerpen of dieren 
niet in het rijtje thuis hoort, druk je zo snel mogelijk op een knop. 
De volgende knoppen kun je indrukken:

Bovenste woord= linkerknop
Middelste woord= middelste knop
Onderste woord= rechterknop

Je moet dus proberen om zo snel mogelijk te drukken, maar probeer ook geen fouten te maken!

Druk op de linkerknop om met het experiment te beginnen.";	
			};
		x = 0 ; y = 0 ;		
		};
		code = "beginExp";
	};      

trial {
	nothing {};
   code = "fout";
} wrong;
trial {
   nothing {};
   code = "goed";
} right;


       
TEMPLATE "stimuli3.tem" randomize  {
 
# scene: filename of scene combination
# trialcode: unique trial code (scene, S combination)
   
# experimenttrials
stimulus1		stimulus2					stimulus3	trialcode							antwoord;
"maiskolf"			"wortel"					"ui"			"maiskolfwortelui"				3;
"pompoen"			"sla"						"tomaat"		"pompoenslatomaat"				2;
"kameel"				"olifant"				"giraffe"	"kameelolifantgiraffe"			2;
"maiskolf"			"wortel"					"ui"			"maiskolfwortelui"				3;
"pompoen"			"sla"						"tomaat"		"pompoenslatomaat"				2;
"kameel"				"olifant"				"giraffe"	"kameelolifantgiraffe"			2;
"maiskolf"			"wortel"					"ui"			"maiskolfwortelui"				3;
"pompoen"			"sla"						"tomaat"		"pompoenslatomaat"				2;
"kameel"				"olifant"				"giraffe"	"kameelolifantgiraffe"			2;
"maiskolf"			"wortel"					"ui"			"maiskolfwortelui"				3;
"pompoen"			"sla"						"tomaat"		"pompoenslatomaat"				2;
"kameel"				"olifant"				"giraffe"	"kameelolifantgiraffe"			2;
"maiskolf"			"wortel"					"ui"			"maiskolfwortelui"				3;
"pompoen"			"sla"						"tomaat"		"pompoenslatomaat"				2;
"kameel"				"olifant"				"giraffe"	"kameelolifantgiraffe"			2;
"maiskolf"			"wortel"					"ui"			"maiskolfwortelui"				3;
"pompoen"			"sla"						"tomaat"		"pompoenslatomaat"				2;
"kameel"				"olifant"				"giraffe"	"kameelolifantgiraffe"			2;
"maiskolf"			"wortel"					"ui"			"maiskolfwortelui"				3;
"pompoen"			"sla"						"tomaat"		"pompoenslatomaat"				2;
"kameel"				"olifant"				"giraffe"	"kameelolifantgiraffe"			2;


 };
   

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    

trial { 
	trial_duration = 5000;
	picture {
		text {
			font_size = 18;
			system_memory = true;
			caption = "Dit is het einde van dit experiment.";	
			};
		x = 0 ; y = 0 ;		
		};
	};


#End   
