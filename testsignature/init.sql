use iteach;

-- CREATION TABLE INFORMATION 
CREATE TABLE information
(
    Id INT PRIMARY KEY NOT NULL
    auto_increment ,
    Nom                 VARCHAR
    (50),
    Prenom              VARCHAR
    (50),
    CodeInformation     VARCHAR
    (100),
    ObjetCotisation     VARCHAR
    (100),
    Ecole               VARCHAR
    (50),
    MoyenPaiement       VARCHAR
    (50),
    Adresse             VARCHAR
    (255),
    DateDepot           DATE,
    SignaturePerso      VARCHAR
    (255),
    FAIT                VARCHAR  
    (50),
    Montant             int         
    
)

DELIMITER |

    CREATE PROCEDURE Insert_Cotisation(in pNom VARCHAR
    (100) , in  pPrenom VARCHAR
    (100),in pCodeInformation VARCHAR
    (100),in pObjetCotisation VARCHAR
    (100),in pEcole VARCHAR
    (100), in pMoyenPaiement VARCHAR
    (100), in pAdresse VARCHAR
    (100),in pDateDepot DATE,
    in pSignaturePerso VARCHAR
    (100)
    in pMontant int)
    BEGIN
        INSERT into information
            (Nom, Prenom, CodeInformation,ObjetCotisation,Ecole,MoyenPaiement, Adresse, DateDepot, SignaturePerso, FAIT, Montant)
        VALUES
            (pNom, pPrenom, pCodeInformation, pObjetCotisation, pEcole, pMoyenPaiement, pAdresse, pDateDepot, pSignaturePerso, 'à faire',pMontant);


    END
    |

    CREATE PROCEDURE Recherche_Cotisation(in pfait VARCHAR
    (100))
    BEGIN
        SELECT *
        FROM information
        WHERE FAIT = pfait;

    END
    |

    CREATE PROCEDURE Cotisation_Cible(in pCodeInformation VARCHAR
    (100))
    BEGIN
        SELECT *
        FROM information
        WHERE CodeInformation = pCodeInformation AND FAIT = 'à faire';

    END
    |


    CREATE PROCEDURE Changement_Etat(in pEtat VARCHAR
    (100) , in pCodeInformation VARCHAR
    (100))
    BEGIN
        UPDATE information set FAIT = pEtat
    WHERE CodeInformation = pCodeInformation;

    END
    |


DELIMITER ;  