show user;
select * from global_name;
set timing on;
set serveroutput on;
whenever sqlerror exit failure rollback;
whenever oserror exit failure rollback;
select 'analyze dw tables start time: ' || systimestamp from dual;

begin

    dbms_output.put_line('analyze station...');  /* takes about xx minutes*/
    dbms_stats.gather_table_stats('WQP_CORE', 'STATION_SWAP_NWIS', null, 100, false, 'FOR ALL INDEXED COLUMNS SIZE AUTO', 1, 'ALL', true);

    dbms_output.put_line('analyze pc_result...');  /* takes about xx minutes */
    dbms_stats.gather_table_stats('WQP_CORE', 'PC_RESULT_SWAP_NWIS', null,  10, false, 'FOR ALL INDEXED COLUMNS SIZE AUTO', 1, 'ALL', true);
    
--      dbms_output.put_line('analyze series_catalog...');  /* takes about xx minutes */
--      dbms_stats.gather_table_stats('WQP_CORE', 'SERIES_CATALOG', null, 100, false, 'FOR ALL COLUMNS SIZE AUTO', 1, 'ALL', true);
    
--      dbms_output.put_line('analyze qwportal_summary...');  /* takes about xx minutes */
--      dbms_stats.gather_table_stats('WQP_CORE', 'QWPORTAL_SUMMARY', null, 100, false, 'FOR ALL COLUMNS SIZE AUTO', 1, 'ALL', true);
    
    dbms_output.put_line('analyze station_sum...');  /* takes about xx minutes */
    dbms_stats.gather_table_stats('WQP_CORE', 'STATION_SUM_SWAP_NWIS', null, 100, false, 'FOR ALL INDEXED COLUMNS SIZE AUTO', 1, 'ALL', true);
    
    dbms_output.put_line('analyze pc_result_sum...');  /* takes about xx minutes */
    dbms_stats.gather_table_stats('WQP_CORE', 'PC_RESULT_SUM_SWAP_NWIS', null, 10, false, 'FOR ALL INDEXED COLUMNS SIZE AUTO', 1, 'ALL', true);
    
    dbms_output.put_line('analyze pc_result_ct_sum...');  /* takes about xx minutes */
    dbms_stats.gather_table_stats('WQP_CORE', 'PC_RESULT_CT_SUM_SWAP_NWIS', null, 10, false, 'FOR ALL INDEXED COLUMNS SIZE AUTO', 1, 'ALL', true);
    
    dbms_output.put_line('analyze pc_result_nr_sum...');  /* takes about xx minutes */
    dbms_stats.gather_table_stats('WQP_CORE', 'PC_RESULT_NR_SUM_SWAP_NWIS', null, 10, false, 'FOR ALL INDEXED COLUMNS SIZE AUTO', 1, 'ALL', true);
    
--      dbms_output.put_line('analyze nwis_lctn_loc...');  /* takes about xx minutes */
--      dbms_stats.gather_table_stats('WQP_CORE', 'NWIS_LCTN_LOC', null, 10, false, 'FOR ALL COLUMNS SIZE AUTO', 1, 'ALL', true);
    
--      dbms_output.put_line('analyze nwis_di_org...');  /* takes about xx minutes */
--      dbms_stats.gather_table_stats('WQP_CORE', 'NWIS_DI_ORG', null, 10, false, 'FOR ALL COLUMNS SIZE AUTO', 1, 'ALL', true);
    
--      dbms_output.put_line('analyze public_srsnames...');  /* takes about xx minutes */
--      dbms_stats.gather_table_stats('WQP_CORE', 'PUBLIC_SRSNAMES', null, 10, false, 'FOR ALL COLUMNS SIZE AUTO', 1, 'ALL', true);

    dbms_output.put_line('analyze characteristic_name...');  /* takes about xx minutes */
    dbms_stats.gather_table_stats('WQP_CORE', 'CHAR_NAME_SWAP_NWIS', null, 10, false, 'FOR ALL COLUMNS SIZE AUTO', 1, 'ALL', true);
    
    dbms_output.put_line('analyze characteristic_type...');  /* takes about xx minutes */
    dbms_stats.gather_table_stats('WQP_CORE', 'CHAR_TYPE_SWAP_NWIS', null, 10, false, 'FOR ALL COLUMNS SIZE AUTO', 1, 'ALL', true);
    
    dbms_output.put_line('analyze country...');  /* takes about xx minutes */
    dbms_stats.gather_table_stats('WQP_CORE', 'COUNTRY_SWAP_NWIS', null, 10, false, 'FOR ALL COLUMNS SIZE AUTO', 1, 'ALL', true);
    
    dbms_output.put_line('analyze county...');  /* takes about xx minutes */
    dbms_stats.gather_table_stats('WQP_CORE', 'COUNTY_SWAP_NWIS', null, 10, false, 'FOR ALL COLUMNS SIZE AUTO', 1, 'ALL', true);
    
    dbms_output.put_line('analyze organization...');  /* takes about xx minutes */
    dbms_stats.gather_table_stats('WQP_CORE', 'ORGANIZATION_SWAP_NWIS', null, 10, false, 'FOR ALL COLUMNS SIZE AUTO', 1, 'ALL', true);
    
    dbms_output.put_line('analyze sample_media...');  /* takes about xx minutes */
    dbms_stats.gather_table_stats('WQP_CORE', 'SAMPLE_MEDIA_SWAP_NWIS', null, 10, false, 'FOR ALL COLUMNS SIZE AUTO', 1, 'ALL', true);
    
    dbms_output.put_line('analyze site_type...');  /* takes about xx minutes */
    dbms_stats.gather_table_stats('WQP_CORE', 'SITE_TYPE_SWAP_NWIS', null, 10, false, 'FOR ALL COLUMNS SIZE AUTO', 1, 'ALL', true);
    
    dbms_output.put_line('analyze state...');  /* takes about xx minutes */
    dbms_stats.gather_table_stats('WQP_CORE', 'STATE_SWAP_NWIS', null, 10, false, 'FOR ALL COLUMNS SIZE AUTO', 1, 'ALL', true);

end;
/

select 'analyze dw tables end time: ' || systimestamp from dual;
