:- module(images, [image/2 , boton/3]).
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
%
%image(ImgName, File):-
%	new(Bitmap, bitmap(resource(File))),
%	new(ImgName, figure),
%	send(ImgName, display, Bitmap).
