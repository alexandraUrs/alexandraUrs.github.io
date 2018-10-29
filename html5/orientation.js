document.getElementById("id_logic_version").innerHTML="Logic version: 2018.10.29.1";
window.addEventListener("deviceorientation",on_device_orientation);

function on_device_orientation(e)
{
	document.getElementById("id_alpha").innerHTML = e.alpha;
	document.getElementById("id_beta").innerHTML = e.beta;
	document.getElementById("id_gamma").innerHTML = e.gamma;
	
	var vanvas = document.getElementById("id_canvas");
	var context = cnvas.getContext("2d");
	
	context.clearRect(0, 0, canvas.width, canvas.height)
	var R=10;
	context.beginPath();
	context.rc(canvas.width /2 +e.gamma/90*(canvas.width/2 -R), 
	           canvas.height/2 +e.beta/90*(cavanas.height/2 -R),
			   R, 0, 2*Math.PI );
	context.stroke();
}