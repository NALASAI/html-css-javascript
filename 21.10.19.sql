SELECT
	MAX(notice_code)
FROM
	notice_mst
WHERE
	notice_code < 163;
	
SELECT
	ROW_NUMBER() over(ORDER BY nn.notice_code, np.notice_code) AS num,
	nm.notice_code,
	nm.notice_title,
	nd.notice_content,
	nm.notice_writer,
	nm.notice_date,
	nm.notice_count,
	nn.notice_code,
	nn.notice_title,
	np.notice_code,
	np.notice_title
FROM
	notice_mst nm
	LEFT OUTER JOIN notice_dtl nd ON(nd.notice_code = nm.notice_code)
	LEFT OUTER JOIN notice_mst nn ON(nn.notice_code > nm.notice_code)
	LEFT OUTER JOIN notice_mst np ON(np.notice_code < nm.notice_code)
WHERE
	nm.notice_code = 200;