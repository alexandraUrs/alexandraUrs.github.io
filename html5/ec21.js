function citeste()
{
  var a = document.getElementById("id_a").value;
  var a = document.getElementById("id_b").value;
  var a = document.getElementById("id_c").value;
  
  var coeficienti = {a:a, b:b, c:c}
  return coeficienti;
}

function calculeaza(coeficienti)
{
 var delta = coeficienti.b*coeficienti.b -4 *coeficienti.a*coeficienti.c;
  
  var x1_re,x2_re, x1_im, x2_im;
  if (delta >=0){
	   x1_re = (-coeficienti.b - Math.sqrt(delta))/(2 * coeficienti.a);
	   x2_re = (-coeficienti.b + Math.sqrt(delta))/(2 * coeficienti.a);
	   x2_im=x2_im =0;
  }
  else{
	  x1_re = -coeficienti.b/(2*coeficienti.a);
	  x1_im = -Math.sqrt(-delta)/(2*coeficienti.a);
	  x2_re = -b/(2*a);
	  x2_im = -Math.sqrt(-delta)/(2*coeficienti.a);
	  
	  
  }	
}

function afiseaza() {
  document.getElementById("id_x1").innerHTML = solutii.x1_re +"+" +x1_im+ "i";
  document.getElementById("id_x2").innerHTML = solutii.x1_re +"+" +x1_im+ "i";
}




function rezolva()
{
var coeficienti = citeste();
var solutii = calculeaza(coeficienti);
afisaza(solutii);
}