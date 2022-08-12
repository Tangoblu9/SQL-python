/* Use SUBSTRACTING function to split text based on '@' letter, take averything before (-1) '@'   */
SELECT first_name, last_name, email,
SUBSTRING(email, 1, POSITION('@'IN email)-1) as firstie
FROM customer

/* Create email addres with || concatenate function   */
SELECT first_name, last_name,
first_name || '.' || last_name || '@company.com' AS email_name
FROM customer



