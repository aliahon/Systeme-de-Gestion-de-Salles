<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsable des Salles</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets\css\stylecorrdinateur.css" rel="stylesheet">

</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <!-- Profile Section -->
                    <div class="profile-section">
                        <div class="d-flex align-items-center">
                            <img src="assets\images\Capture d’écran 2024-12-12 142058.png" alt="Profile" class="profile-img">
                            <span class="profile-name">${name }</span>
                           
                        </div>
                        <a href="index.jsp" class="btn btn-outline btn-deco">Deconnexion</a>
                    </div>

                      <!-- Logo -->
                      <div class="text-center logo">
                     
                        <h3 class="mb-4">Responsable Des Salles </h3>
                    </div>

                    <!-- Buttons Section -->
                    <div class="buttons-section">
                        <div class="d-grid gap-3">
                            <a href="SalleServlet" class="btn btn-outline  btn-custom">Gestion Des Salles</a>
                            <a href="ServletConfirmation" class="btn btn-outline btn-custom">Gestion Des Demandes</a>
                            <a href="JournalisationServlet?req=salle" class="btn btn-outline btn-custom">Journalisation</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
