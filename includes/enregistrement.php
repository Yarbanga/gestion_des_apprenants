
<div class="container" id="cont">
    <form method=POST action="traitement/insertion.php"  enctype="multipart/form-data">
      <fieldset>
      <legend>Apprenant</legend>
        <div class=" container d-flex row">
        <div class="photo col-md-2 form-group">
        <label for="inputphoto" class="lab"><img class="labelphoto" id="labelphoto" src="" style="border:2px solid gray;"></label>
        <input hidden type="file" name="photo" id=inputphoto placeholder="Photo"  required/>
        </div>
          <div class="row col-md-10 input-3 ">
            <input type="text"  name="nom_a" placeholder="Nom" class="form-control col-md-12" required/>
            <input type="text" name="prenom_a" placeholder="Prénom" class="form-control col-md-12" required/>
            <input type="date" name="date_a" placeholder="Date de naissance" class="form-control col-md-12"required/>
          </div>
        </div>
        <div class=" d-flex row">
            <input type="text" name="ville_a" placeholder="Ville" class="form-control col-md-5" required/>
            <input type="text" name="etablissement_a" placeholder="Etablissemnt" class="form-control col-md-5" required/>
        </div>
        <div class="d-flex">
            <input type="text" name="contact_a" placeholder="Contact" pattern="[0-9]+[^a-zA-Z]" maxlength="8" class="form-control" required/>
            </div>
      </fieldset>
      <fieldset>
        <legend>Tuteur</legend>
        <div class="d-flex row">
            <input type="text" name="nom_t" placeholder="Nom" class="form-control col-md-5" required/>
            <input type="text" name="Prenom_t" placeholder="Prenom"class="form-control col-md-5" required/>
        </div>
        <div class="d-flex row">
            <input type="text" name="contact_t" placeholder="Contact" pattern="[0-9]+[^a-zA-Z]" maxlength="8" class="form-control col-md-5" required/>
            <input type="text" name="domicile-t" placeholder="Domicile" class="form-control col-md-5" required/>
        </div>
      </fieldset> <br>
      <div>
      <input class="btn btn-primary" type="submit"  value="Enregistrer"/>
      <input class="btn btn-danger" type="reset" value="Effacer"/>
      </div>
</form>
      </div>