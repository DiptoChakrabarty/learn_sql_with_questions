/* Solution using Left Join */
SELECT Person.firstName , Person.lastName, Address.city , Address.state
FROM Person
LEFT JOIN Address 
ON Person.personId=Address.personId;

/* Solution using Right Join */
SELECT P.firstName , P.lastName, A.city , A.state
FROM Address A
RIGHT JOIN Person P
ON P.personId=A.personId;