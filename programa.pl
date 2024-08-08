
%trabajaEn(persona,puesto,departamento).


daOrdenes(empleado,cadete).
daOrdenes(empleado,pasante).
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
    trabajaEn(Persona1,_,Depa),
    trabajaEn(Persona2,_,Depa).

tienePuestoSuperior(Persona1,Persona2):-
    trabajaEn(Persona1,Puesto1,_),
    trabajaEn(Persona2,Puesto2,_),
    daOrdenes(Puesto1,Puesto2).
    


%CONSULTAS
%1)a) trabajaEn(Personas,_,compras). devuelve nora y pedro
%1)b) trabajaEn(Personas,_,ventas). devuelve maria juan y roque
%2) trabajaEnMismoDepa(Persona1,Persona2). devuelve true si ambos trabajan en mismo departamento
%3) puedeDarOrdenes(Persona1,Persona2). devuelve true o false dependiendo si cumple tienePuestoSuperior y trabajaEnMismoDepa
