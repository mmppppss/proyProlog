%%%%
:- use_module(library(pce)).
:- consult('./Widgets.pl').
:- consult('./csvProcesor.pl').

procesar:-
	procesar_contenido_csv('basedeconocimientos.csv').
gui:-
	new(Window, dialog('')),
	send(Window, size, size(420, 420)),
	new(Botones, dialog),
	new(Botones2, dialog),
	image(Window, fondo),
	boton(TestGeneral, 'Test General', message(Window,destroy)),
	boton(Familiar, 'Violencia Familiar', message(Window,destroy)),
	boton(Domestico, 'Violencia Domestica', message(Window,destroy)),
	boton(Sexual, 'Violencia Sexual', message(Window,destroy)),
	boton(Laboral, 'Violencia Laboral', message(Window,destroy)),
	boton(Salir, 'Salir',message(Window,destroy) ),
	
	send(Botones, append, TestGeneral),
	send(Botones, append, Familiar,next_row),
	send(Botones, append, Sexual, next_row),
	send(Botones2, append, Laboral),
	send(Botones2, append, Domestico, next_row),
	send(Botones2, append, Salir, next_row),
	send(Window, append, Botones),
	send(Window, append, Botones2, right),
	send(Window, open).

:-gui.
