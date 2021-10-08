SELECT
	count(um.user_email),
	count(ud.user_password)
from user_mst um
	left outer join user_mst ud on(ud.user_email = um.user_email and ud.user_password = '1234')
WHERE
	um.user_email = 'junil@kakao.com';
	
SELECT
	*
FROM
	user_mst um
	LEFT OUTER JOIN user_mst ud ON(ud.user_email = um.user_email);