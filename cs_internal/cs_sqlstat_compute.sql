-- cs_sqlstat_compute.sql: called by cs_dba_hist_sqlstat_*.sql
BREAK ON REPORT;
COMPUTE AVG LABEL '' OF seconds optimizer_cost et_aas cpu_aas io_aas appl_aas conc_aas plsql_aas cluster_aas java_aas delta_execution_count execs_per_sec px_execs_per_sec end_of_fetch_per_sec parses_per_sec avg_hard_parse_time inval_per_sec loads_per_sec et_ms_per_exec cpu_ms_per_exec io_ms_per_exec appl_ms_per_exec conc_ms_per_exec plsql_ms_per_exec cluster_ms_per_exec java_ms_per_exec gets_per_exec reads_per_exec direct_writes_per_exec phy_read_req_per_exec phy_read_mb_per_exec phy_write_req_per_exec phy_write_mb_per_exec fetches_per_exec sorts_per_exec delta_rows_processed rows_per_exec et_ms_per_row cpu_ms_per_row io_ms_per_row gets_per_row reads_per_row delta_elapsed_time delta_cpu_time delta_user_io_wait_time delta_application_wait_time delta_concurrency_time delta_plsql_exec_time delta_cluster_wait_time delta_java_exec_time delta_px_servers_executions delta_end_of_fetch_count delta_parse_calls delta_buffer_gets delta_disk_reads delta_direct_writes delta_physical_read_requests delta_physical_read_mb delta_physical_write_requests delta_physical_write_mb delta_fetch_count delta_sorts delta_io_interconnect_mb delta_cell_offload_elig_mb delta_cell_uncompressed_mb delta_cell_offload_retrn_mb version_count obsolete_count shareable_count delta_loads delta_invalidations sharable_mem_mb ON REPORT;
--