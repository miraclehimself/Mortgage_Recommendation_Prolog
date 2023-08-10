
:- discontiguous main_menu_option/1.
:- style_check(-singleton).

%This code above removes all the singleton irrelevant errors.

start:-
   	write('Welcome to Abiola Home Finance, pleased to meet you'),nl,
    write('We are here to help you get a mortgage that fits'),nl,
    menu.

%The lines above welcomes the applicant by writing out the message for them to choose  

menu:-
    
    write('Would you like a mortgage recommendation?'),nl,
   	 	write('1. Yes'),nl,
    	write('2. No'),nl,
    	write("Please enter '1', or '2'"),nl,
    	read(X),
    	main_menu_option(X).

%The menu on line 14 dislays the options 'Yes or no' to the Question on Line 16

main_menu_option(1) :-
    
    
   	 	write('What is your employment status?'),nl,
   	 	write('1. Unemployed'),nl,
    	write('2. Benefit'),nl,
    	write('3. Self Employed'),nl,
    	write('4. Employed'),nl,
    	write('5. Self Employed/Employed'),nl,
    	write("Please enter '1' to '5'"),nl,
    	read(ES),nl,
%This section above helps to display all the Employment Status (ES) Options 
%and accepting query as ES from 1 to 5
		write('What is your current credit score?'),nl,
    	write('1. 0 - 438'),nl,
    	write('2. 439 - 530'),nl,
    	write('3. 531 - 670'),nl,
    	write('4. 671 - 810'),nl,
    	write('5. 811 - 1000'),nl,
    	write("Please enter '1' to '5'"),nl,
		read(CS),nl,

%This section above helps to display all the Credit Score (CS) Options, 
%accepting query from 1 to 5
		write('What is your annual income?'),nl,
    	write('1. Up to £25000'),nl,
    	write('2. £25000 to £40000'),nl,
		write('3. £40000 plus'),nl,
    	write("Please enter '1' to '3'"),nl,
		read(AI),nl,
%This section above helps to display all the Annual Income (AI) Options, 
%accepting inputing from 1 to 3
		write('Do you have a criminal record?'),nl,
    	write('1. yes'),nl,
    	write('2. no'),nl,
    	write("Please enter '1' to '2'"),nl,
		read(CH),nl,
%This section above helps to display all the Criminal History (AI) Options, 
%accepts answers to queries by 1 or 2
    
    	recommendation(M, ES, CS, AI, CH),write(M).
%This section above helps to display all the message (M) 
%after considering the features stored above.
recommendation('Congratulations, you qualify for £80K and above ', ES, CS, AI, CH) :- ES = 5, CS = 5, AI = 3, CH = 2.

recommendation('Congratulations, you qualify for 40K to 80K ', ES, CS, AI, CH) :- ES = 5, CS = 5, AI = 3, CH = 1.

recommendation('Congratulations, you qualify for 40K to 80K ', ES, CS, AI, CH) :- ES = 5, CS = 5, AI = 2.

recommendation('Congratulations, you qualify for 40K to 80K ', ES, CS, AI, CH) :- ES = 5, CS = 4.

recommendation('Congratulations, you qualify for 40K to 80K ', ES, CS, AI, CH) :- ES = 5, CS = 3.

recommendation('Congratulations, you qualify for at most 40K ', ES, CS, AI, CH) :- ES = 5, CS = 2, AI = 3, CH = 2.

recommendation('Congratulations, you qualify for at most 40K ', ES, CS, AI, CH) :- ES = 5, CS = 2, AI = 2, CH = 2.

recommendation('Congratulations, you qualify for 40K to 80K ', ES, CS, AI, CH) :- ES = 4, CS = 5.

recommendation('Congratulations, you qualify for 40K to 80K ', ES, CS, AI, CH) :- ES = 4, CS = 4.

recommendation('Congratulations, you qualify for at most 40K ', ES, CS, AI, CH) :- ES = 4, CS = 3, AI = 1.

recommendation('Congratulations, you qualify for 40K to 80K ', ES, CS, AI, CH) :- ES = 4, CS = 3.

recommendation('Congratulations, you qualify for at most 40K ', ES, CS, AI, CH) :- ES = 4, CS = 2, AI = 3, CH = 2.

recommendation('Congratulations, you qualify for at most 40K ', ES, CS, AI, CH) :- ES = 4, CS = 2, AI = 2, CH = 2.

recommendation('Congratulations, you qualify for at most 40K ', ES, CS, AI, CH) :- ES = 3, CS = 5, AI = 3, CH = 2.

recommendation('Congratulations, you qualify for at most 40K ', ES, CS, AI, CH) :- ES = 3, CS = 5, AI = 2, CH = 2.

recommendation('Congratulations, you qualify for at most 40K ', ES, CS, AI, CH) :- ES = 3, CS = 4, AI = 3, CH = 2.

recommendation('Congratulations, you qualify for at most 40K ', ES, CS, AI, CH) :- ES = 3, CS = 4, AI = 2, CH = 2.

recommendation('Congratulations, you qualify for at most 40K ', ES, CS, AI, CH) :- ES = 3, CS = 3, AI = 3, CH = 2.

recommendation('We are sorry, you are not eligible at this time ', ES, CS, AI, CH) :- ES = 1.

recommendation('We are sorry, you are not eligible at this time ', ES, CS, AI, CH) :- ES = 2.

recommendation('We are sorry, you are not eligible at this time ', ES, CS, AI, CH) :- ES = 3, CS = 1.

recommendation('We are sorry, you are not eligible at this time ', ES, CS, AI, CH) :- ES = 3, CS = 2.

recommendation('We are sorry, you are not eligible at this time ', ES, CS, AI, CH) :- ES = 3, CS = 3, AI = 1.

recommendation('We are sorry, you are not eligible at this time ', ES, CS, AI, CH) :- ES = 3, CS = 3, AI = 2.

recommendation('We are sorry, you are not eligible at this time ', ES, CS, AI, CH) :- ES = 3, CS = 3, AI = 3, CH = 1.

recommendation('We are sorry, you are not eligible at this time ', ES, CS, AI, CH) :- ES = 3, CS = 4, AI = 1.

recommendation('We are sorry, you are not eligible at this time ', ES, CS, AI, CH) :- ES = 3, CS = 4, AI = 2, CH = 1.

recommendation('We are sorry, you are not eligible at this time ', ES, CS, AI, CH) :- ES = 3, CS = 4, AI = 3, CH = 1.

recommendation('We are sorry, you are not eligible at this time ', ES, CS, AI, CH) :- ES = 3, CS = 5, AI = 1.

recommendation('We are sorry, you are not eligible at this time ', ES, CS, AI, CH) :- ES = 3, CS = 5, AI = 2, CH = 1.

recommendation('We are sorry, you are not eligible at this time ', ES, CS, AI, CH) :- ES = 3, CS = 5, AI = 3, CH = 1.

recommendation('We are sorry, you are not eligible at this time ', ES, CS, AI, CH) :- ES = 4, CS = 1.

recommendation('We are sorry, you are not eligible at this time ', ES, CS, AI, CH) :- ES = 4, CS = 2, AI = 1.

recommendation('We are sorry, you are not eligible at this time ', ES, CS, AI, CH) :- ES = 4, CS = 2, AI = 2, CH = 1.

recommendation('We are sorry, you are not eligible at this time ', ES, CS, AI, CH) :- ES = 4, CS = 2, AI = 3, CH = 1.

recommendation('We are sorry, you are not eligible at this time ', ES, CS, AI, CH) :- ES = 5, CS = 1.

recommendation('We are sorry, you are not eligible at this time ', ES, CS, AI, CH) :- ES = 5, CS = 2, AI = 1.

recommendation('We are sorry, you are not eligible at this time ', ES, CS, AI, CH) :- ES = 5, CS = 2, AI = 2, CH = 1.

recommendation('We are sorry, you are not eligible at this time ', ES, CS, AI, CH) :- ES = 5, CS = 2, AI = 3, CH = 1.

%This section above stores all the possible scenarios for all features considered
main_menu_option(2) :-
   		write('We hope you change you mind and come back later. For now, enjoy the rest of your day!!').
%The secton above displays a farewell message if the applicant changes their mind on getting an assessment.

