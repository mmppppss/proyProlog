:- module(widgets, [image/2 , boton/3,botonStyle/1, contenedorSiNo/4]).
%/

:- use_module(library(pce)).
:- use_module(library(pce_style_item)).
:- pce_image_directory('./images').

resource(fondo, image, image('back.jpg')).
image(Window, Img) :- 
	new(Bitmap, bitmap(resource(Img))),
	new(Figura, figure),
	send(Figura, display, Bitmap),
	send(Window, display, Figura).

boton(BtName, Text, Action):-
	string_upper(Text, Text2),
	new(BtName, button(Text2)),
	send(BtName, message, Action),
	send(BtName, colour, black),
	%send(BtName, background, white),
    send(BtName, pen, 0),
	send(BtName, radius, 5),
    send(BtName, font, font('Roboto', normal, 12)).
botonStyle(Btn):-
	send(Btn, colour, black),
	%send(BtName, background, white),
    send(Btn, pen, 0),
	send(Btn, radius, 5),
    send(Btn, font, font('Roboto', normal, 12)).

contenedorSiNo(Window, Txt, BotonSi, BotonNo):-
	new(Window, dialog('')),
	send(Window, size, size(420, 100)),
	new(Text, text(Txt)),
	boton(BotonSi, 'Si', message(Window, destroy)),
	boton(BotonNo, 'No', message(Window, destroy)),
	send(Window, append, Text),
	send(Window, append, BotonSi),
	send(Window, append, BotonNo).

%
%image(ImgName, File):-
%	new(Bitmap, bitmap(resource(File))),
%	new(ImgName, figure),
%	send(ImgName, display, Bitmap).
