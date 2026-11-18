function passWord() {
		var testV = 1;
		var pass1 = prompt('Veuillez entrer le nom de la personne décrite:',' ');
		while (testV < 3) {
		if (!pass1) 
		window.location.href='index.html';
		if (pass1.toLowerCase() == "ada lovelace") {
//		alert('Mot de passe correct !');
		window.location.href='adalovelace.html';
		break ;
		} 
		testV+=1;
		var pass1 = 
		prompt('Accès interdit - Nom incorrect. Veuillez réessayer.','Mot de passe');
		}
		if (pass1.toLowerCase()!="ada lovelace" & testV ==3) 
		window.location.href='index.html';
		return " ";
		} 
