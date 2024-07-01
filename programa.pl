
%trabajaEn(persona,puesto,departamento).

trabajaEn(maria,empleado,ventas).
trabajaEn(juan,cadete,ventas).
trabajaEn(roque,pasante,ventas).
trabajaEn(nora,empleado,compras).
trabajaEn(pedro,cadete,compras).
trabajaEn(felipe,empleado,admininstracion).
trabajaEn(hugo,empleado,administracion).
trabajaEn(ana,cadete,administracion).

puedeDarOrdenes(Persona1,Persona2):-
    trabajaEnMismoDepa(Persona1,Persona2),
    tienePuestoSuperior(Persona1,Persona2).

trabajaEnMismoDepa(Persona1,Persona2):-
    trabajaEn(Persona1,_,Depa1),
    trabajaEn(Persona2,_,Depa2),
    Depa1==Depa2.

tienePuestoSuperior(Persona1,Persona2):-
    trabajaEn(Persona1,Puesto1,_),
    trabajaEn(Persona2,Puesto2,_),
    Puesto1 == empleado,
    Puesto2 == cadete.
tienePuestoSuperior(Persona1,Persona2):-
    trabajaEn(Persona1,Puesto1,_),
    trabajaEn(Persona2,Puesto2,_),
    Puesto1 == empleado,
    Puesto2 == pasante.
tienePuestoSuperior(Persona1,Persona2):-
    trabajaEn(Persona1,Puesto1,_),
    trabajaEn(Persona2,Puesto2,_),
    Puesto1 == cadete,
    Puesto2 == pasante.
