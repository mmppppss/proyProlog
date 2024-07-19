:- module(conocimientos, [diagnostico/2, clean/0]).
:- consult('./Widgets.pl').


diagnostico('Violencia Familiar', 'La violencia familiar es la perpetración de actos de abuso físico y psicológico.
Este tipo de violencia puede manifestarse de diversas formas,
afectando gravemente la salud mental y física de las víctimas.

Como víctima de violencia, las leyes del Estado Plurinacional de Bolivia te protegen.
Algunas de estas leyes son:

    Ley N° 348: Ley Integral para Garantizar a las Mujeres una
			Vida Libre de Violencia. Esta ley tiene como objetivo
			establecer mecanismos, medidas y políticas integrales
			de prevención, atención, protección y reparación a 
			las mujeres en situación de violencia.

    Código Penal Boliviano: Establece sanciones para los delitos de
			violencia intrafamiliar y doméstica, incluyendo penas
			específicas para agresiones físicas y psicológicas.

    Ley N° 263: Ley Integral contra la Trata y Tráfico de Personas.
			Aunque se enfoca en la trata y tráfico, también abarca
			aspectos relacionados con la protección de personas
			vulnerables a la violencia familiar.

    Ley N° 2028: Ley de Municipalidades. Esta ley incluye disposiciones
			para que los gobiernos municipales implementen programas
			y políticas locales de prevención y atención de la violencia familiar.

Recuerda que la violencia no debe ser tolerada bajo ninguna
circunstancia y que tienes derecho a buscar ayuda y protección.
En Bolivia, existen diversas instituciones y organizaciones
dedicadas a brindar apoyo y asistencia a las víctimas de 
violencia familiar.
'):-domiciliar, !.
diagnostico('Violencia laboral', 'La violencia laboral se refiere a los actos de abuso físico, psicológico o acoso
que ocurren dentro del entorno de trabajo. Este tipo de violencia
puede manifestarse de diversas maneras, impactando negativamente
la salud mental y física de las víctimas, así como su desempeño 
y satisfacción en el trabajo.

Como víctima de violencia laboral, estás protegido por las leyes 
del Estado Plurinacional de Bolivia.
Algunas de estas leyes son:

    Ley General del Trabajo: Esta ley regula las relaciones laborales
			y establece los derechos y deberes tanto de trabajadores
			como de empleadores, incluyendo medidas para prevenir y
			sancionar el acoso y maltrato laboral.

    Ley N° 348: Ley Integral para Garantizar a las Mujeres una Vida
			Libre de Violencia: Aunque su enfoque principal es la
			violencia contra las mujeres, también incluye disposiciones
			específicas sobre el acoso laboral y sexual en el ámbito de trabajo.

    Ley N° 045: Ley Contra el Racismo y Toda Forma de Discriminación:
			Esta ley prohíbe y sanciona cualquier acto de discriminación
			y acoso en el lugar de trabajo basado en raza, género, edad,
			discapacidad, entre otros factores.

    Constitución Política del Estado: La Constitución de Bolivia garantiza
			el derecho a un trabajo digno y libre de discriminación, así 
			como la protección contra cualquier forma de abuso o violencia
			en el entorno laboral.

Es importante recordar que la violencia laboral no debe ser
tolerada bajo ninguna circunstancia. Si eres víctima de 
este tipo de violencia, tienes derecho a buscar ayuda y
protección. En Bolivia, hay diversas instituciones y 
organizaciones que se dedican a brindar apoyo y asistencia a
las personas afectadas por la violencia laboral.
'):- laboral, !.
diagnostico('Violencia escolar', 'La violencia escolar, también conocida como bullying, se refiere a los actos de 
agresión física, psicológica o verbal que ocurren dentro del 
entorno educativo. Este tipo de violencia puede manifestarse
de diversas formas, afectando gravemente la salud mental y 
emocional de las víctimas, así como su rendimiento académico
y bienestar general.

Como víctima de violencia escolar, las leyes del Estado 
Plurinacional de Bolivia te protegen. 

Algunas de estas leyes son:

    Ley N° 548: Código Niña, Niño y Adolescente: Esta ley protege
			los derechos de los niños, niñas y adolescentes, 
			incluyendo su derecho a una educación libre de violencia
			y maltrato. Establece medidas para prevenir y sancionar 
			el acoso escolar.

    Ley N° 070: Ley de la Educación "Avelino Siñani - Elizardo Pérez":
			Esta ley promueve una educación inclusiva y libre de violencia,
			estableciendo normas y políticas para garantizar un ambiente
			educativo seguro y respetuoso.

    Ley N° 045: Ley Contra el Racismo y Toda Forma de Discriminación:
			Esta ley también se aplica en el ámbito escolar, prohibiendo
			y sancionando cualquier forma de discriminación y acoso basado
			en raza, género, edad, discapacidad, entre otros factores.

    Constitución Política del Estado: La Constitución de Bolivia garantiza 
			el derecho de todos los niños, niñas y adolescentes a recibir
			una educación en un entorno seguro y sin violencia.

Recuerda que la violencia escolar no debe ser tolerada bajo ninguna circunstancia.
Si eres víctima de bullying, tienes derecho a buscar ayuda y protección.
En Bolivia, existen diversas instituciones y organizaciones dedicadas 
a brindar apoyo y asistencia a las víctimas de violencia escolar.

'):-escolar, !.

domiciliar:- 
	dom1, dom2, dom3, dom4, dom5,
	dom6, dom7,	dom8, dom9,	dom10.

domiciliar:- 
    dom1, dom2, dom3, dom4, dom5,
    dom6, dom7, dom8, dom9, dom10.

domiciliar:- 
    dom2, dom4, dom6, dom8, dom10.

domiciliar:- 
    dom1, dom3, dom5, dom7, dom9.

domiciliar:- 
    dom1, dom2, dom5, dom6, dom7.

domiciliar:- 
    dom3, dom4, dom8, dom9, dom10.

domiciliar:- 
    dom1, dom3, dom6, dom7, dom10.

domiciliar:- 
    dom1, dom2, dom5.

domiciliar:- 
    dom6, dom7, dom8.

domiciliar:- 
    dom9, dom10, dom6.

domiciliar:- 
    dom3, dom4, dom5.

domiciliar:- 
    dom1, dom3, dom8.



laboral:-
    lab1, lab2, lab3, lab4, lab5,
    lab6, lab7, lab8, lab9, lab10,
    lab11, lab12, lab13, lab14, lab15.

laboral:-
    lab2, lab4, lab6, lab8, lab10,
    lab12, lab14.

laboral:-
    lab1, lab3, lab5, lab7, lab9,
    lab11, lab13, lab15.

laboral:-
    lab1, lab2, lab3, lab4, lab5,
    lab6, lab7, lab8.

laboral:-
    lab3, lab6, lab9, lab12, lab15.

laboral:-
    lab1, lab2, lab3.

laboral:-
    lab4, lab5, lab6.

laboral:-
    lab7, lab8, lab9.

laboral:-
    lab10, lab11, lab12.

laboral:-
    lab13, lab14, lab15.




escolar:-
    esc1, esc2, esc3, esc4, esc5,
    esc6, esc7, esc8, esc9, esc10,
    esc11, esc12, esc13, esc14.

escolar:-
    esc2, esc4, esc6, esc8, esc10,
    esc12, esc14.

escolar:-
    esc1, esc3, esc5, esc7, esc9,
    esc11, esc13.

escolar:-
    esc1, esc2, esc3, esc4, esc5,
    esc6, esc7, esc8.

escolar:-
    esc3, esc6, esc9, esc12, esc14.

escolar:-
    esc1, esc2, esc3.

escolar:-
    esc4, esc5, esc6.

escolar:-
    esc7, esc8, esc9.

escolar:-
    esc10, esc11, esc12.

escolar:-
    esc13, esc14, esc1.


dom1:- pregunta('¿Tiene relacion de parentesco con la persona agresora?'), !.
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
lab12:- pregunta('Has sido víctima de rumores o "chismes".'), !.
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
esc12:- pregunta(' Me dan golpes, "cocachos" o similares'), !.
esc13:- pregunta(' Me insultan para burlarse de mí:'), !.
esc14:- pregunta(' Se meten conmigo por mi forma de ser:'), !.

:-dynamic si/1,no/1.
pregunta(S):-(si(S)->true; (no(S)->fail; preguntar(S))).

preguntar(Problema):-
	new(Di,dialog('Test Sobre Violencia')),
	new(La,label(prob,Problema)),
	new(BSi,button(si,and(message(Di,return,si)))), botonStyle(BSi),
	new(BNo,button(no,and(message(Di,return,no)))), botonStyle(BNo),
	send(Di,append(La)),
	send(Di,append(BSi)),
	send(Di,append(BNo)),
	send(Di,default_button,si),
	send(Di,open_centered),get(Di,confirm,Answer),
	write(Answer),send(Di,destroy),
	(( Answer==si)->assert(si(Problema)); assert(no(Problema)),fail).

clean:-retract(si(_)),fail.
clean:-retract(no(_)),fail.
clean.

main:- 
	diagnostico(Tipo),
	write(Tipo).
