--
-- IAD RGN VCN IOD16RG iod-db-03024.node.ad3.us-ashburn-1
--
COL buffer_hit_ratio FOR 990.000;
COL pdb_name FOR A30 TRUNC;
--
SELECT 100 * (SUM(s.delta_buffer_gets) - SUM(s.delta_disk_reads) - SUM(s.delta_direct_reads)) / SUM(s.delta_buffer_gets) AS buffer_hit_ratio
  FROM v$sqlstats s
 WHERE s.sql_text LIKE '/* getValues%'
/
--
SELECT 100 * (SUM(s.delta_buffer_gets) - SUM(s.delta_disk_reads) - SUM(s.delta_direct_reads)) / SUM(s.delta_buffer_gets) AS buffer_hit_ratio,
       c.name AS pdb_name
  FROM v$sqlstats s, v$containers c
 WHERE s.sql_text LIKE '/* getValues%'
   AND c.con_id = s.con_id
 GROUP BY c.name
HAVING SUM(s.delta_buffer_gets) > 0
 ORDER BY c.name 
/
--
BUFFER_HIT_RATIO
----------------
          99.978
--
BUFFER_HIT_RATIO PDB_NAME
---------------- ------------------------------
         100.000 ACPSTAGE_WF
         100.000 ADPCP_BG_BETA_WF
          99.999 ADPCP_PINT_PREPROD_WF
          99.944 ADPCP_PROD_WF
         100.000 ADP_CONTROL_PLANE_BETA
          99.998 ADP_CONTROL_PLANE_PINT_PREPROD
          99.994 ADP_CONTROL_PLANE_PROD
         100.000 AGCS_WF
         100.000 AIHERMES_WF
         100.000 ALTO_HW_WF
         100.000 AMWCP_WF
         100.000 AMWDP_PRODUCTION_WF
         100.000 AMWDP_STAGING_WF
         100.000 AMW_CP_BETA
         100.000 AMW_CP_STAGING
          99.913 APP_LISTING_UNSTABLE
         100.000 APP_MANAGER_PROD
         100.000 APP_MANAGER_PROD_WF
         100.000 AP_1_CP_WF
         100.000 ATAT_CONTROL_PLANE_DEV
         100.000 BASTION_KAAS_TEST
          99.999 BASTION_WFAAS_TEST_WF
         100.000 BLD_SVC_DATA_PLANE_PROD
         100.000 CDS_DR_WF
         100.000 CLIENTVPN_CP_WF
         100.000 CLOCKCP_WF
         100.000 CLOUDSHELLRBAAS_WF
         100.000 CLOUDSHELL_STRATUS_WF
         100.000 CLS_RESOURCE_TYPE_MANAGER_PINT
         100.000 CWDWF_INTERNAL_WF
         100.000 CXIF_SVC_WF
         100.000 DCMS_DCMSPRODUCTION_WF_WF
         100.000 DFI_DEV4_US_ASHBURN_1_WFAAS_WF
          99.885 DFI_PREPROD_IAD_WFAAS_WF
          99.835 DIGITAL_ASSISTANT_TEST_WF
         100.000 DNS_CONTROL_PLANE_INTEG_WF
          99.710 DRS_DRSDEVTENANCY_WF_WF
         100.000 DRS_DRSINTEGRATION_KAAS
         100.000 DRS_DRSPREPRODUCTION_KAAS
         100.000 DRS_DRSPREPRODUCTION_WF_WF
         100.000 ER_LIVE_WF
          99.943 FACP_PINT_WF
         100.000 FACP_PREPROD_WF
          99.753 FA_CONTROL_PLANE_BETA
          98.743 FA_CONTROL_PLANE_PREPROD
          96.838 FA_CONTROL_PLANE_PROD
         100.000 FC_INT_IAD_KIEV
          96.893 HCS_CP_PROD
         100.000 HSM_SERVICE_MANAGER_PINT
         100.000 IBEX_FRONTEND_PUBLIC_REGIONAL
          99.998 IMCP_PROD_WF
         100.000 IMCP_V1_WF
         100.000 IMQUERY_DEV_WF
          99.994 IMQUERY_PROD_WF
          99.795 KIEV_VS_CP_BETA
          99.966 KIEV_VS_CP_PPE
         100.000 LAENTITY_WF_IAD_STAGE_WF
         100.000 LH_DEV1_IAD_WFAAS_WF
         100.000 LICENSEMANAGER_BETA_WF
         100.000 LMPREPROD_WF
         100.000 LM_WF
         100.000 LOCKBOX_KIEV
         100.000 LOGANCP_WORKER_WFAASSTA_WF
         100.000 LOGAN_CONTROL_PLANE_API_STAGE
         100.000 LOGGING_WFAAS_WF
         100.000 MAESTRO_PREVIEW
         100.000 MCHUBDEMO_WF
         100.000 MCHUB_CLOUD_LINK_KIEV_DEV
         100.000 MCHUB_CLOUD_LINK_KIEV_PREPROD
         100.000 MCHUB_PLATFORM_DEV_WF
         100.000 MCHUB_PLATFORM_PREPROD_WF
          99.909 MCNET_CP_PREPROD_WF
          99.923 MCNET_CP_PROD_WF
         100.000 MCNET_WF
         100.000 MESH_PROD_WF
         100.000 MLAPP_WF
         100.000 MULTI_CLOUD_NETWORK_CP_PROD
         100.000 NGFW_CP_KAAS_PROD
         100.000 NGFW_WFAAS_CP_DEV_WF
         100.000 NGFW_WFAAS_CP_PROD_WF
         100.000 OARS_CP_PINT
         100.000 OARS_CP_PINT_WF
         100.000 OARS_CP_TEST
         100.000 OARS_CP_TESTINT_WF
          99.702 OCAS_ADPREPROD_IAD_KIEV
          99.705 OCAS_ADPROD_IAD_KIEV
         100.000 OCAS_FCDEV_IAD_TEMP_KIEV_WF
         100.000 OCAS_INT_LANG_KIEV
         100.000 OCAS_PROD_IAD_LANG_WFAAS_WF
          97.493 OCB_CONTROL_PLANE_DEV
         100.000 OCB_CONTROL_PLANE_DEV_WF
         100.000 OCDN_CP_WF_WF
         100.000 OCI_FOR_FHIR_INTEG
         100.000 OCI_FOR_FHIR_WF
         100.000 OCM_DISCOVERY_DEV_WF
         100.000 OCM_INVENTORY_DEV_WF
         100.000 OCM_MIGRATION_DEV_WF
         100.000 OEWLH_WF
         100.000 OPA_WFAAS_CP_WF
         100.000 OPNS_DEV_IAD_WF
         100.000 OPT_CANARY_BETA_WF
         100.000 OPT_DP_RS_BETA_WF
         100.000 OPT_DP_RS_PROD_WF
         100.000 OQSPROD_WF
         100.000 OQS_PROD
         100.000 PORTAL_WF_INTEGRATION_WF
         100.000 PREPROD_IAD_LANG_WFAAS_WF
         100.000 QUERY_PREPROD_KAAS_INSTANCE
         100.000 RASL_UNSTABLE_WF
         100.000 RASL_WF
         100.000 RBOBS_PROD_WF
         100.000 RBRST_DEV_WF
         100.000 REDIS_SERVICE_WF
          99.997 SCM_SVC_WFAAS_PREPROD_WF
         100.000 SCM_SVC_WFAAS_PROD_2_WF
         100.000 SEARCH_INDEXING_UNSTABLE
         100.000 SEARCH_INDEXING_UNSTABLE_WF
         100.000 SECREPORTING_TORB_WF
         100.000 SITEGUARD_PROD_WF
         100.000 SPEECH_PREPROD_IAD_WFAAS_WF
         100.000 SPM_RECEIVER_ALP_WF
          97.919 TAS_EVENTS_PINTLAB_WF
         100.000 TS1_WF
         100.000 VBPROD_KAAS
         100.000 VBSTUDIO_PROD_WFAAS_WF
         100.000 VBSTUDIO_WFAAS_DEV_TEST_WF
          99.992 VCN_V2
         100.000 VNCONFIGADVISORREGIONALBETAAPI
         100.000 VNPA_BATFISH_SVC_BETA_WF
         100.000 VNPA_BATFISH_SVC_PPE_WF