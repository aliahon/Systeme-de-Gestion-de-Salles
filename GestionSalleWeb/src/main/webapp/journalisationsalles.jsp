<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Historique des Salles</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets\css\stylejournalisationfiliere.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
  
</head>
<body>
    <div class="container">
        <h1 class="text-center mt-4 ">Historique des Salles</h1>
        <div class="table-container">
            <!-- Tableau des filières ajoutées -->
         
            <table class="table table-hover  table-rounded">
                <thead class="table-succ">
                    <tr>
                        <th>Nom </th>
                        <th>Type d'opération</th>
                        <th>Détaille</th>
                        <th>Date d'opération</th>
                    </tr>
                </thead>
                <tbody>
                   
                
                    <!-- Exemple de données dynamiques -->
                    <tr class="ajoute">
                        <td>Salle F12</td>
                        <td> Ajout <i class="fas fa-check-circle icon icon-ajoute"></i></td>
                        <td>Salle ajoutée : F12</td>
                        <td>12-12-2024</td>
                    </tr>
                    <tr class="supprim">
                        <td>Salle F08</td>
                        <td> Suppression <i class="fas fa-trash-alt icon icon-supprim"></i></td>
                        <td>Salle supprimée : F08</td>
                        <td>10-12-2024</td>
                    </tr>
                    <tr class="ajoute">
                        <td>Salle B02</td>
                        <td>Ajout <i class="fas fa-check-circle  icon icon-ajoute"></i></td>
                        <td>Salle ajoutée : B02</td>
                        <td>08-12-2024</td>
                    </tr>
                    <tr class="supprim">
                        <td>Salle A01</td>
                        <td> Suppression <i class="fas fa-trash-alt icon icon-supprim"></i></td>
                        <td>Salle supprimée : A01</td>
                        <td>05-12-2024</td>
                    </tr>
                </tbody>
            </table>

        
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>