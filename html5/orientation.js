document.getElementById("id_logic_version").innerHTML="Logic version: 2018.10.29.0";
window.addEventListener("deviceorientation",on_device_orientation);

function on_device_orientation(e)
{
	document.getElementById("id_alpha"e).innerHTML = e.alpha;
	document.getElementById("id_beta"e).innerHTML = e.beta;
	document.getElementById("id_gamma"e).innerHTML = e.gamma;
	
}