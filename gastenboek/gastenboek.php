<?php 
$foutmelding=null;
require('database.php');

maakTabelAan();
if (isset($_COOKIE["gebruiker"])){
	$foutmelding="je hebt vandaag al een bericht gemaakt.";
}else{
	if (isset($_POST['verstuur'])) {
		voegBerichtToe($_POST['titel'], $_POST['naam'], $_POST['email'], $_POST['tekst']);
		voegCookieToe();
	}
}

$berichten = haalBerichtenOp();

?>
<!doctype html>
<html lang="nl">
<head>
	<meta charset="UTF-8">
	<title>Gastenboek</title>
	<link rel="stylesheet" href="style.css" />
</head>
<body>
<div id="container">
	<div id="header">
		<h1>Gastenboek</h1>
	</div>
	<div id="main">

		<ul>
			<?php 
			echo $foutmelding;
			foreach ($berichten as $bericht) {
				$Bdatum = new Datetime($bericht['datum']);
				$Bdatum = $Bdatum->format("d-m-Y H:i");
			?>
				<li class="bericht">
					<h2 class="titel"><?php echo $bericht['titel']; ?></h2>
					<span class="afzender"><?php echo $bericht['naam']; ?></span>
					<span class="datum"><?php echo $Bdatum; ?></span>
					<div class="tekst">
						<?php echo $bericht['tekst']; ?>
					</div>
				</li>
			<?php
			}
			?>
		</ul>

		<form action="gastenboek.php" method="post">
			<h2>Nieuw bericht</h2>
			<input type="hidden" name="aktie" value="nieuwbericht">
			<label for="titel">Titel:</label><input type="text" name="titel" placeholder="De titel van het bericht" required="yes">
			<label for="naam">Uw naam:</label><input type="text" name="naam" placeholder="Uw naam" required="yes">
			<label for="email">Uw e-mailadres:</label><input type="email" name="email" placeholder="Uw e-mailadres" required="yes">
			<label for="tekst">Bericht:</label>
			<textarea name="tekst" placeholder="Uw bericht" required="yes"></textarea>
			<input type="submit" value="verstuur" name="verstuur">
		</form>
	</div>
</div>
</body>
</html>