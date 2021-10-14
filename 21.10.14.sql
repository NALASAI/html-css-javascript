SELECT
	nm.notice_code,
	nm.notice_title,
	nm.notice_writer,
	nm.notice_date,
	nm.notice_count,
	nd.notice_content	
FROM
	notice_mst nm
	LEFT OUTER JOIN notice_dtl nd ON(nd.notice_code = nm.notice.code)
ORDER BY
	nm.notice_code DESC;