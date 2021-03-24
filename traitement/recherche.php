<?php include("connexion.php");
if(isset($_GET['search']))
{
  $sql = 'SELECT * FROM apprenant WHERE tel_tuteur LIKE :search OR nom LIKE :search OR  prenom LIKE :search OR  date_de_naissance LIKE :search OR ville_origine LIKE :search OR etablissement LIKE :search OR contact LIKE :search OR genre LIKE :search';
$select_recherche=$bdd->prepare($sql);
$test=$select_recherche->execute(array("search"=>'%'.$_GET['search'].'%'));

while($don=$select_recherche->fetch()) {
  $gettuteur=$bdd->prepare("SELECT * FROM tuteur WHERE telephone=?");
  $gettuteur->execute(array($don['tel_tuteur']));
  $tuteur=$gettuteur->fetch();
 ?>   
<div class="row">
<div class="col-md-12 d-flex flex-row card">
<div class="card-body im-d col-md-5">
  <img src="<?php echo $don['photo']; ?>" class="card-img bg-info" alt="...">
</div>
  <div class="card-body col-md-7">
    <h5 class="card-title">Nom:<?php echo $don['nom']; ?></h5> <hr>
    <h5 class="card-title">Prenom:<?php echo $don['prenom']; ?></h5> <hr>
    <h5 class="card-title">Ville:<?php echo $don['ville_origine']; ?></h5> <hr>
    <h5 class="card-title">Formation:<?php echo "formation"; ?></h5> <hr>
    <h5 class="card-title">Etablissement:<?php echo $don['etablissement']; ?></h5> <hr>
    <h5 class="card-title">Contact:<?php echo $don['contact']; ?></h5> <hr>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#dialogtuteur<?php echo $don['rang']; ?>">Tuteur</button>
      <div class="modal fade" id="dialogtuteur<?php echo $don['rang']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Infos du Tuteur</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <h5 class="card-title">Nom:<?php echo $tuteur['nom']; ?></h5> <hr>
      <h5 class="card-title">Prenom:<?php echo $tuteur['prenom']; ?></h5> <hr>
      <h5 class="card-title">Domicile:<?php echo $tuteur['domicile']; ?></h5> <hr>
      <h5 class="card-title">Contact:<?php echo $tuteur['telephone']; ?></h5> <hr>
      </div>
    </div>
  </div>
</div>
<div>
</div>
</div>
</div>
</div>
<?php
}
}
?>