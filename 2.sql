SELECT
	COUNT(um.user_id),
	COUNT(ud.user_password)
	from
	user_mst um
	LEFT OUTER JOIN user_mst ud ON(ud.user_id = um.user_id AND ud.user_password = '1234')
	where
	um.user_id