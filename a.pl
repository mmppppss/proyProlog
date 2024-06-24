diag('Violencia domiciliar'):-domiciliar, !.
diag('Violencia laboral'):- laboral, !.
diag('Violencia escolar'):-escolar, !.

domiciliar:- 
	dom1, dom2, dom3, dom4, dom5,
	dom6, dom7,	dom8, dom9,	dom10.

laboral:-
	lab1, lab2, lab3, lab4, lab5,
	lab6, lab7, lab8, lab9, lab10,
	lab11, lab12, lab13, lab14, lab15.

escolar:-
	esc1, esc2, esc3, esc4, esc5,
	esc6, esc7, esc8, esc9, esc10,
	esc11, esc12, esc13, esc14.

dom1:- pregunta('¿Qué relación o parentesco tiene con la persona agresora?'), !.
dom2:- pregunta('Actualmente usted vive en la misma casa con la persona agresora'), !.
dom3:- pregunta('¿Padece usted de alguna enfermedad, invalidez o discapacidad de cualquier clase?'), !.
dom4:- pregunta('¿Tiene usted (la víctima) trabajo?'), !.
dom5:- pregunta('¿Usted (la víctima) depende económicamente del agresor?'), !.
dom6:- pregunta('¿La abofetea o le tira cosas que pueden herirla?'), !.
dom7:- pregunta('¿La empuja, arrincona, sacude o tira del pelo?'), !.
dom8:- pregunta('¿La golpea con el puño o con algo que pudiera herirla?'), !.
dom9:- pregunta('El agresor la ha humillado a nivel sexual, a su cuerpo, a su desempeño sexual, ya sea con palabras o gestos?'), !.
dom10:- pregunta('¿El agresor la ha obligado a hacer alguna actividad sexual que usted consideraba humillante o degradante?'), !.

lab1:- pregunta('¿Considera que en su trabajo es valorado/a o recibe el reconocimiento adecuado por su labor, trayectoria o capacidades?'), !.
lab2:- pregunta('Considera que ha mejorado su situación laboral, considerando sus niveles de responsabilidad, salariales y reconocimiento laboral?'), !.
lab3:- pregunta('¿Considera que sus superiores lo escuchan y tienen en cuenta su opinión?'), !.
lab4:- pregunta('¿Considera que son adecuadas las tareas para la que fue contratado/a o que corresponden de acuerdo a su puesto o cargo?'), !.
lab5:- pregunta('¿Recibe llamados de atención, correcciones o indicaciones de mala forma o en tono elevado frente al resto de sus compañeros?'), !.
lab6:- pregunta('¿Han comenzado a criticar su trabajo -incluso por errores mínimos- mientras antes no lo hacían?'), !.
lab7:- pregunta('Han realizado comentarios negativos sobre tu inteligencia o competencia.'), !.
lab8:- pregunta('Te han insultado.'), !.
lab9:- pregunta('Se han negado de manera consistente a responder a tus llamadas de teléfono o emails.'), !.
lab10:- pregunta('Te han clavado la mirada de modo hostil.'), !.
lab11:- pregunta('Te han regañado o rebajado frente a otros.'), !.
lab12:- pregunta('Has sido víctima de rumores o cotilleos.'), !.
lab13:- pregunta('Te han excluido de reuniones sociales relacionadas con el trabajo.'), !.
lab14:- pregunta('Alguien ha alardeado de su estatus o te ha tratado de un modo condescendiente.'), !.
lab15:- pregunta('Se han marchado con rapidez de un lugar cuando tú has entrado.'), !.

esc1:- pregunta(' Me esconden las cosas'), !.
esc2:- pregunta(' Se ríen de mí cuando me equivoco:'), !.
esc3:- pregunta('Me insultan:'), !.
esc4:- pregunta('.Le dicen a otros que no hablen o estén conmigo'), !.
esc5:- pregunta(' Me chillan o gritan:'), !.
esc6:- pregunta('. Me acusan de cosas que no he dicho o hecho:'), !.
esc7:- pregunta('. Me critican por todo lo que hago:'), !.
esc8:- pregunta('Me empujan:'), !.
esc9:- pregunta('Se meten conmigo para hacerme llorar:'), !.
esc10:- pregunta('. Se burlan de mi apariencia física:'), !.
esc11:- pregunta('Hacen gestos de burla o desprecio hacia mí:'), !.
esc12:- pregunta(' Me dan collejas o tortazos:'), !.
esc13:- pregunta(' Me insultan para burlarse de mí:'), !.
esc14:- pregunta(' Se meten conmigo por mi forma de ser:'), !.

:-dynamic si/1,no/1.
pregunta(S):-(si(S)->true; (no(S)->fail; preguntar(S))).

preguntar(Problema):-new(Di,dialog('DIAGNOSTICO MOTORIZADO')),
  new(L2,label(texto,'RESPONDE LAS SIGUIENTES PREGUNTAS...   ')),
  new(La,label(prob,Problema)),
  new(B1,button(si,and(message(Di,return,si)))),
  new(B2,button(no,and(message(Di,return,no)))),
        send(Di,append(L2)),
  send(Di,append(La)),
  send(Di,append(B1)),
  send(Di,append(B2)),
  send(Di,default_button,si),
  send(Di,open_centered),get(Di,confirm,Answer),
  write(Answer),send(Di,destroy),

     (( Answer==si)->assert(si(Problema)); assert(no(Problema)),fail).



main:- 
	diag(Tipo),
	write(Tipo).
