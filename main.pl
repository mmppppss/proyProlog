%%%%
:- use_module(library(pce)).
:- consult('./conocimientos.pl').
:- consult('./Widgets.pl').
%%%%
%familiar:- write('aaa').
%laboral:- write('aaa').
%menu:-
%	new(Window, dialog('Tipos de violencia')),
%	boton(Familiar, 'Familiar', message(@prolog, familiar)),
%	boton(Laboral, 'Laboral', message(@prolog, laboral)),
%	send(Window, append, Familiar),
%	send(Window, append, Laboral),
%	send(Window, open).

preresult:-
	contenedorSiNo(X, "Reponda con sinceridad las siguientes preguntas", Si, No),
	send(Si, message, message(@prolog, result)),
	send(No, message, message(X, destroy)).
result:-
	diagnostico(Tipo, Recomendaciones),
	new(Window, dialog('Diagnostico')),
	new(Result, text(Tipo)),
	send(Result, font, font(screen, bold, 25)),
	new(Result2, text(Recomendaciones)),
	send(Result, font, font(screen, normal, 21)),
	send(Window, append, Result),
	send(Window, append, Result2),
	send(Window, open),
	clean.
gui:-
	new(Window, dialog('Test sobre Violencia')),
	send(Window, size, size(420, 420)),
	new(Botones, dialog),
	send(Botones, size, size(420, 420)),
	new(Descripcion, text('Identifica el tipo de violencia')),
	new(Descripcion2, text('y descubre las leyes que te protegen')),
	send(Descripcion, font, font(screen, bold, 21)),
	send(Descripcion2, font, font(screen, bold, 18)),
	image(Window, fondo),
	boton(TestGeneral, 'Test General', message(@prolog, preresult)),
	%boton(Menu, 'Tipos de violencia', message(@prolog, menu)),
	boton(Salir, 'Salir',message(Window,destroy) ),
	send(Botones, append, TestGeneral),
	%send(Botones, append, Menu, right),
	send(Botones, append, Salir, right),
	send(Window, append, Descripcion),
	send(Window, append, Descripcion2),
	send(Window, append, Botones, below),
	send(Window, open).

:- gui.
