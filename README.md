# Clientes deudores - Integración Grails + Xtend

![deuda](https://cloud.githubusercontent.com/assets/4549002/18567773/095747d4-7b70-11e6-8761-d148a0551594.png)

## Explicación

Se trata de una aplicación que muestra la deuda de cada uno de los clientes, permite filtrar por rango de deuda (desde/hasta).

## Consideraciones

* [Instalar el plugin de Xtend](http://uqbar-wiki.org/index.php?title=Integraci%C3%B3n_Grails_con_Xtend)
* Los objetos de dominio son: un cliente que tiene facturas pendientes para determinar su saldo y un strategy que determina el monto máximo de crédito que se le da a un cliente. Estos objetos de dominio están construidos en xtend.
* Para poder visualizarlos se definen objetos home/repo/DAO y un clienteBusqueda que permite filtrar por un rango desde/hasta de saldo pendiente, desarrollados en groovy (podrían estar en xtend, es indistinto). 
 * El Home es un Singleton, la forma de mantener la colección de clientes en memoria.
* El controller y la vista están desarrollados con el framework Grails (en Groovy). 


## Versiones actuales

* Grails 2.4.2
* en un entorno GGTS 3.6.0
* con Twitter Boostrap 3.2.0
* con Xtend 2.7.3

## Arquitectura propuesta

[!Diagrama general de la arquitectura propuesta](doc/Arquitectura%20general.png)


