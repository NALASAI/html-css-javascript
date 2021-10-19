SELECT
	MAX(notice_code)
FROM
	notice_mst;
WHERE
	notice_code > 163;
	
SELECT
	nm.notice_code,
	nm.notice_title,
	nd.notice_content,
	nm.notice_writer,
	nm.notice_date,
	nm.notice_count,
	min(nn.notice_code),
	MAX(np.notice_code)
FROM
	notice_mst nm
	LEFT OUTER JOIN notice_dtl nd ON(nd.notice_code = nm.notice_code)
	LEFT OUTER JOIN (select
								notice_code AS notice_code
							FROM
								notice_mst) nn ON(nn.notice_code > nm.notice_code)
	LEFT OUTER JOIN (select
								notice_code
							from
								notice_mst) np ON(np.notice_code < nm.notice_code)
WHERE
	nm.notice_code = 163;