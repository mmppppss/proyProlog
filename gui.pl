%%%%
:- use_module(library(pce)).
:- consult('./Widgets.pl').
:- consult('./csvProcesor.pl').

columnas([]).
columnas([Col|Rest]) :-
    writeln(Col),
	columnas(Rest).

filas([], @WindowTest):- send(@WindowTest, open).
filas([row(Col1,Col2, Col3)|Rest], @WindowTest) :-
	container(Col3, @WindowTest),
	write(Col1),write('|'),write(Col2), write('|'), write(Col3),nl,
    filas(Rest, @WindowTest).

procesar_contenido_csv(Archivo, Filas) :-
	csv_read_file(Archivo, Filas).

container(Pregunta, @WindowPreg):-
	new(Window, dialog('')),
	send(Window, size, size(420, 100)),
	new(Text, text(Pregunta)),
	boton(BotonSi, 'Si', message(Window, destroy)),
	boton(BotonNo, 'No', message(Window, destroy)),
	send(Window, append, Text),
	send(Window, append, BotonSi),
	send(Window, append, BotonNo),
	send(@WindowPreg, append, Window).

procesar:-
	new(WindowTest, dialog('Test General')),
	procesar_contenido_csv('basedeconocimientos.csv', Filas),
	filas(Filas, WindowTest).
gui:-
	new(Window, dialog('')),
	send(Window, size, size(420, 420)),
	new(Botones, dialog),
	new(Descripcion, text('Identifica el tipo de violencia')),
	new(Descripcion2, text('y descubre las leyes que te protegen')),
	send(Descripcion, font, font(screen, bold, 21)),
	send(Descripcion2, font, font(screen, bold, 18)),
	image(Window, fondo),
	boton(TestGeneral, 'Test General', message(@prolog, procesar)),
	boton(Salir, 'Salir',message(Window,destroy) ),
	
	send(Botones, append, TestGeneral),
	send(Botones, append, Salir),
	send(Window, append, Descripcion),
	send(Window, append, Descripcion2),
	send(Window, append, Botones, below),
	send(Window, open).

:-gui.
