package ar.edu.clientes

import java.math.BigDecimal
import java.util.ArrayList
import java.util.List

class Cliente {
	
	@Property String nombre
	@Property List<Factura> facturas
	@Property BigDecimal ingresos
	CriterioCredito criterioCredito
		
	new(){
		nombre = ""
		facturas = new ArrayList<Factura>
		ingresos = new BigDecimal(0)
		criterioCredito = new CriterioFijo
	}
	
	def BigDecimal saldo() {
		facturas.fold(new BigDecimal(0), [ acum, factura | acum + factura.saldo ])
	}
	
	def BigDecimal montoCredito() {
		criterioCredito.getLimiteCredito(this)	
	}
	
	def esMoroso() {
		saldo.doubleValue > 0
	}
	
}