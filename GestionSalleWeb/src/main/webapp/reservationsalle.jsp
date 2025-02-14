<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <title>Demande De R�servation</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/stylereservesalle.css" rel="stylesheet">
</head>
<body>
 <div class="row mt-0">
            <div class="col-12 d-flex justify-content-between">
                <!-- Bouton Retour � la page principale -->
                <a href="professeur.jsp" class="btn btn-outline-secondary">
                    <i class="bi bi-house-door"></i> Home
                </a>
            </div>
��������</div>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="form-container">
                    <h2 class="text-center mb-4">Demande De R�servation</h2>
                    <!-- Afficher le message d'erreur si il existe -->
                    <c:if test="${not empty param.errorMessage}">
                        <div class="alert alert-danger">
                            ${param.errorMessage}
                        </div>
                    </c:if>
                    <form action ="DemandeServlet" method="post">
                        <!-- Type de Salle -->
                        
                        <div class="mb-3">
                            <label for="typeSalle" class="form-label">Nature de Salle</label>
						    <select class="form-select" id="natureSalle" name="natureSalle" required>
							     <c:forEach var="nature" items="${natureSalles}">
                                       <option value="${nature}" ${salle != null && salle.nature == nature ? 'selected' : ''}>${nature}</option>
                                 </c:forEach>
							</select>
                        </div>

                        <!-- Créneau Horaire -->
                        <div class="mb-3">
                            <label for="creneauHoraire" class="form-label">Cr�neau Horaire</label>
                            <select class="form-select" id="creneauHoraire" name="horaire" required>
                                <option value="">Choisir un cr�neau</option>
                                <option value="8:30 - 10:20" ${horaire != null && horaire =="8:30 - 10:20" ? 'selected' : ''}>8:30 - 10:20</option>
                                <option value="10:40 - 12:30" ${horaire != null && horaire =="10:40 - 12:30" ? 'selected' : ''}>10:40 - 12:30</option>
                                <option value="14:30 - 16:20" ${horaire != null && horaire =="14:30 - 16:20" ? 'selected' : ''}>14:30 - 16:20</option>
                                <option value="16:40 - 18:30" ${horaire != null && horaire =="16:40 - 18:30" ? 'selected' : ''}>16:40 - 18:30</option>
                            </select>
                        </div>

                        <div class="mb-3">
                            <label for="dateReservation" class="form-label">Date</label>
                            <input type="date" class="form-control" id="dateReservation" name="date" value="${date != null ? date : ''}"  required>
                        </div>

                        <!-- Filière -->
                        <div class="mb-3">
                            <label for="idFiliere" class="form-label">Fili�re</label>
                            <select class="form-select" id="idFiliere" name="idFiliere" required>
                                <!-- Options dynamiques à rendre depuis le backend -->
                                <c:forEach var="filiere" items="${filieres}">
							        <option value="${filiere.id}" ${filiere != null && filiere.id == id ? 'selected' : ''}>
							            ${filiere.id}
							        </option>
							    </c:forEach>
                            </select>
                        </div>
                        

                        <!-- Boutons -->
                        <div class="d-flex justify-content-between">
                            
                            <form method="post" action="DemandeServlet">
				                        <input type="hidden" name="action" value="Envoyer">
				                        <button type="submit" class="btn btn-custom">Envoyer</button>
				                </form>
                            
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
      
        <!-- Liste des Demandes -->
        <div class="row justify-content-center mt-5">
            <div class="col-8">
                <h2 class="text-center mb-4">Liste Des Demandes</h2>
                <div class="list-group">
                    <c:forEach var="demande" items="${demandes}">
			            <!-- Condition si la demande est confirm�e -->
			            <c:if test="${demande.statut == 'Confirm�e'}">
			                <div class="list-group-item list-group-item-success d-flex justify-content-between align-items-center mb-3 rounded-3">
			                    <div>
			                        <h5 class="mb-1">Demande Confirm�e</h5>
			                        <p class="mb-0">Date : ${demande.creneauReserve.dateDebut} | Cr�neau : ${demande.creneauReserve.periode} | Type Salle : ${demande.creneauReserve.salle.nature} | Salle : ${demande.creneauReserve.salle.id }</p>
			                    </div>
			                    <form method="post" action="DemandeServlet">
				                        <input type="hidden" name="action" value="supprimer">
				                        <input type="hidden" name="idReservation" value="${salle.id}">
				                        <button class="btn btn-outline-dark btn-sm">Voir Informations</button>
				                </form>
			                </div>
			            </c:if>
			
			            <!-- Condition si la demande est en attente -->
			            <c:if test="${demande.statut == 'En attente'}">
			                <div class="list-group-item list-group-item-warning d-flex justify-content-between align-items-center mb-3 rounded-3">
			                    <div>
			                        <h5 class="mb-1">Demande En Cours</h5>
			                        <p class="mb-0">Date : ${demande.creneauReserve.dateDebut} | Cr�neau : ${demande.creneauReserve.periode }| Type Salle : ${demande.creneauReserve.salle.nature} | Salle : ${demande.creneauReserve.salle.id }</p>
			                    </div>
			                    <div class="d-flex gap-2">
			                    	<form method="get" action="DemandeServlet">
					                        <input type="hidden" name="action" value="modifier">
					                        <input type="hidden" name="idReservation" value="${demande.id}">
					                        <button class="btn btn-outline-primary btn-sm">Modifier</button>
					                </form>
					                <form method="post" action="DemandeServlet">
					                        <input type="hidden" name="action" value="supprimer">
					                        <input type="hidden" name="idReservation" value="${demande.id}">
					                        <button class="btn btn-outline-danger btn-sm">Annuler</button>
					                </form>
			                        
			                        
			                    </div>
			                </div>
			            </c:if>
			        </c:forEach>
                </div>
            </div>
            
        </div>
    
    <!-- Bootstrap Bundle JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
</body>
</html>
