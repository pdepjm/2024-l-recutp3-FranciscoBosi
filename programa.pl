
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
    trabajaEn(Persona1,empleado,_),
    trabajaEn(Persona2,cadete,_).

    tienePuestoSuperior(Persona1,Persona2):-
        trabajaEn(Persona1,empleado,_),
        trabajaEn(Persona2,pasante,_).
        
        tienePuestoSuperior(Persona1,Persona2):-
            trabajaEn(Persona1,cadete,_),
            trabajaEn(Persona2,pasante,_).

