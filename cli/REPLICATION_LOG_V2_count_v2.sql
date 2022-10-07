COL owner NEW_V owner NOPRI;
SELECT owner FROM dba_tables WHERE table_name = 'REPLICATION_LOG_V2' ORDER BY num_rows DESC FETCH FIRST 1 ROW ONLY
/
WITH
days AS (
SELECT (SYSDATE - 60) - TO_DATE('1970-01-01T00:00:00', 'YYYY-MM-DD"T"HH24:MI:SS') AS cnt FROM DUAL
)
SELECT 'Total:'||RPAD(TO_CHAR(COUNT(*), '999,999,999,990'), 20, ' ')||' Last 60 days:'||TO_CHAR(SUM(CASE WHEN CREATEDON > (days.cnt * 24 * 3600 * 1000) THEN 1 ELSE 0 END), '999,999,999,990') AS lin
  FROM days, &&owner..REPLICATION_LOG_V2 v
/