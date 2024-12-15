-- SELECT TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout)
-- FROM memberships;

SELECT DATEDIFF(membership_start, membership_start)
FROM memberships;
