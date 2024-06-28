%%%%
:- use_module(library(pce)).
:- consult('./conocimientos.pl').
:- consult('./Widgets.pl').

result:-
	diagnostico(Tipo, Recomendaciones),
	new(Window, dialog('')),
	new(Result, text(Tipo)),
	send(Result, font, font(screen, bold, 21)),
	new(Result2, text(Recomendaciones)),
	send(Window, append, Result),
	send(Window, append, Result2),
	send(Window, open),
	clean.
gui:-
	new(Window, dialog('')),
	send(Window, size, size(420, 420)),
	new(Botones, dialog),
	new(Descripcion, text('Identifica el tipo de violencia')),
	new(Descripcion2, text('y descubre las leyes que te protegen')),
	send(Descripcion, font, font(screen, bold, 21)),
	send(Descripcion2, font, font(screen, bold, 18)),
	image(Window, fondo),
	boton(TestGeneral, 'Test General', message(@prolog, result)),
	boton(Salir, 'Salir',message(Window,destroy) ),
	send(Botones, append, TestGeneral),
	send(Botones, append, Salir),
	send(Window, append, Descripcion),
	send(Window, append, Descripcion2),
	send(Window, append, Botones, below),
	send(Window, open).

:- gui.
