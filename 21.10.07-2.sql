SELECT
	COUNT(pm.phone_number),
	COUNT(um.user_phone)
FROM
	phonenumber_list_mst pm
	LEFT OUTER JOIN user_mst um ON(um.user_phone = pm.phone_number)
WHERE
	pm.phone_number = '01011112222' 
AND
	pm.phone_user_name = '김준일';
	
INSERT INTO
	user_mst(
		user_email,
		user_password,
		user_name,
		user_phone
		)
	VALUES(
		'junil12',
		'1q2w3e4r5t',
		'김준상',
		'01011112222'
		);