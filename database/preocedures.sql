DELIMITER //
  DROP PROCEDURE IF EXISTS `GET_EMPLOYEE_BY_USERNAME_AND_PASSWORD`;
  CREATE PROCEDURE `GET_EMPLOYEE_BY_USERNAME_AND_PASSWORD`(IN in_username VARCHAR(50), IN in_password VARCHAR(255))
  BEGIN
    SELECT * FROM user  WHERE username = in_username AND password = in_password;
  END //
DELIMITER ;