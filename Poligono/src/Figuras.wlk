object poligono{
	/* Expresión: saca el mayor de 3 datos */
	const mayor = { x , y, z => if(x > y and x > z) x else if(y > x and y > z) y else z }
	
	/* Declaración de los lados */
	var property a = 0
	var property b = 0
	var property c = 0
	
	/* Verifica si es un Triangulo */
	method esTriangulo(){
		if(mayor.apply(a,b,c) == a) 
			return (mayor.apply(a,b,c) < (b+c))
		if(mayor.apply(a,b,c) == b) 
			return (mayor.apply(a,b,c) < (a+c))
		if(mayor.apply(a,b,c) == c) 
			return (mayor.apply(a,b,c) < (a+b))
		return false
	}
	
	method esEquilatero(){
		if(self.esTriangulo()) 
			return ((a == b) and (b == c))
		return false
	}
	method esEscaleno(){
		if(self.esTriangulo()) 
			return (a != b and b != c and c != a)
		return false
	}
	
	method esIsosceles(){
		if(self.esEquilatero()) 
			return false
		if(self.esTriangulo()) 
			return (a == b or b == a or a == c or b == c)
		return false
	}
}
