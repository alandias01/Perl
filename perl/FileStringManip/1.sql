SELECT 

       p.FileDate,

       p.BookName,

       p.CPTY,

       p.NAME,

       p.MAJOR,

       p.BL,

       p.COLL_FLG,

       p.STOCK,

       p.CODE_TYPE,

       p.TICKER,

       p.INHOUSE_XREF,

       p.QUICK,

       p.SEDOL,

       p.CUSIP,

       p.REUTER,

       p.CLASS,

       p.CNAME,

       p.SNAME,

       p.BOND,

/*

       case --hardcoded for 1 day.  please remove if issues.  Jeremy

              when p.CASH = 'N' AND 

                     (p.CPTY LIKE 'T720%' or p.CPTY LIKE 'T770%' or p.CPTY like 'T009%') AND 

                     p.BookName in ('APEX-MSCL' , 'APEX-MBTOR')

              then 

                     p.LNVAL / case when ISNUMERIC(p.LNMRG) = 1 then (p.LNMRG / 100.0) else 1 end 

              else p.LNVAL

       end

       as LNVAL,

*/

       p.LNVAL,

       p.LNCUR,

       p.QTY,

       p.BGNREF,

       p.LNRATE,

       p.INT_TYPE,

       p.TRADE,

       p.SSET_DT,

       p.CSET_DT,

       p.SMODE,

       p.CMODE,

       p.TERMDT,

       p.DVP,

       p.CALL as 'CALL',

       p.FINDER,

       p.FRATE,

       p.DIV_AGE,

       p.LNMRG,

       p.CASH,

       p.DEALER,

       p.DIV_OSEAS,

       p.DIV_DOM,

       p.NARR_INT,

       p.NARR,

       p.PTYPE,

       p.FUND_ID,

       p.F_MAJOR,

       p.OP,

       p.STATUS,

       p.UN_FLAG,

       p.CRATE,

       p.OS_CLR,

       p.OC_CLR,

       p.CS_CLR,

       p.CC_CLR,

       p.ACC_INT,

       p.MKT_VAL,

       p.CATEGORY,

       p.LINKREF,

       p.MIN_FEE,

       p.MIN_PCUR,

       p.ACT_DT,

       p.CURRENCY,

       p.FAIL_CODE,

       p.INIT_LNVAL,

       p.INIT_QTY,

       p.INTERFACE_XR,

       p.ISIN,

       p.FUND_XREF,

       p.RECALLED_IND,

       p.INTERCO_REF,

       p.LOCATION_ID,

       p.LOCATION_XRF,

       p.REPO_TRADE,

       p.MNTHY_BILLED,

       p.TOT_ACCRUAL,

       p.TOT_ACCR_TD,

       p.TOT_PAID_TD,

       p.ASS_TXN,

       p.ACC_DAYS,

       p.OCPTY_SWIFT,

       p.OC_SWIFT,

       p.OC_ACCNR,

       p.OC_SUBACC,

       p.OC_ACCREF,

       p.OC_CONTACT,

       p.OC_NAME,

       p.OS_SWIFT,

       p.OS_ACCNR,

       p.OS_SUBACC,

       p.OS_ACCREF,

       p.OS_CONTACT,

       p.OS_NAME,

       p.CC_SWIFT,

       p.CC_ACCNR,

       p.CC_SUBACC,

       p.CC_ACCREF,

       p.CC_CONTACT,

       p.CC_NAME,

       p.CS_SWIFT,

       p.CS_ACCNR,

       p.CS_SUBACC,

       p.CS_ACCREF,

       p.CS_CONTACT,

       p.CS_NAME,

       p.SET_INS_RQD,

       p.NCSH_COLL_HR,

       p.MKT_VAL_LN_C,

       p.CURR_RTE_SGN,

       p.FFEE_RTE_SGN,

       p.PPAY_RTE_SGN,

       p.STK_CLS_XREF,

       p.AUTO_SETT_IND,

       p.OLD_PRC,

       p.NEW_PRC,

       p.EFF_DT,

       p.PAY_REC,

       p.QTY_TM_MRK,

       p.FND_QTY_TM_M,

       p.ACC_INT_PM,

       p.ACC_INT_PR,

       p.EXP_MARGIN,

       p.MRK_RTN_FLG,

       p.CRS_CGO_RIDS,

       p.QTY_2DP,

       p.INIT_QTY_2DP,

       p.QTY_TM_MRK_2DP,

       p.FND_QTY_TM_M_2DP,

       p.CNTRY_ISS,

       p.REDENOM_FLG,

       p.NARR_INT_L2,

       p.FROM_REPO,

       p.TO_REPO,

       p.UNQ_TRD_COLL,

       p.F_MJR_XREF,

       p.O_CONTR_REF,

       p.AUTH_REQD,

       p.CSH_BULK_REF,

       p.STK_BULK_REF,

       p.HK_STMP_DT,

       p.HK_STMP_DUTY,

       p.HK_STMP_VAL,

       p.INT_CPTYREF,

       p.PRICE,

       p.EXDT,

       p.PAYDT,

       p.RECDT,

       p.DIVGROSS,

       p.DIVNET,

       p.DIVCUR,

       p.EXRTE,

       p.FXT_TR_CST,

       p.SPREAD,

       p.SIZE,

       p.MAX_SHS_PDY,

       p.WK_CLNT_ID,

       p.RATING_TYPE,

       p.RATING,

       p.DEF_PROB_1YR,

       p.DEF_PROB_2YR,

       p.DEF_PROB_3YR,

       p.DEF_PROB_4YR,

       p.DEF_PROB_5YR,

       p.DEF_PROB_6YR,

       p.DEF_PROB_7YR,

       p.DEF_PROB_8YR,

       p.DEF_PROB_9YR,

       p.DEF_PROB_10Y,

       p.SIZE_TYPE,

       p.SECTOR,

       p.F_GEN_REL,

       p.C_GEN_REL,

       p.MARKTRADE,

       p.NARR_L2,

       p.MATCHED,

       p.EXRTE_LNCUR,

       p.EXRTE_STKCUR,

       p.COLLMGN,

       p.BATCH_CD,

       p.DIV_TRACK,

       p.MARK_ELIG,

       p.CALLBACK,

       p.NC_TYPE,

       p.PROFIT,

       p.DTC_REASON,

       p.DELIV_VIA,

       p.LIM_SNT_FLG,

       p.COLL_GRP,

       p.CW_VALUE,

       p.CW_CUR,

       p.AGNCY_SH_TYP,

       p.AGNCY_REF,

       p.AGNCY_PRICE,

       p.AGNCY_PRTY,

       p.AGNCY_COM1,

       p.AGNCY_COM2,

       p.CP_VALUE,

       p.LNPRC,

       p.MKT_PRC,

       p.MTCH_INV_VHC,

       p.TRD_TIME,

       p.REPO_TYPE,

       p.MF_TYPE,

       p.MF_VALCUR,

       p.MF_VALUE,

       p.FUND_NAME,

       p.ARRNGE_FEE,

       p.BCP_CODE,

       p.SBRIDGE_MODE,

       p.CBRIDGE_MODE,

       p.SDUE_DT,

       p.CDUE_DT,

       p.LNCUR_MKTPRC,

       p.FUND_ALLOC_DT,

       p.GTF_REF,

       p.FWD_REALLOC,

       p.REPO_MAT,

       p.CP_COLL_VAL,

       p.MBS_PAYDOWN,

       p.ORIG_FACE,

       p.CUR_STK_FACT,

       p.PREV_STK_FAC,

       p.CUR_TRD_FACT,

       p.CUR_FACT_REC,

       p.CUR_FACT_EX,

       p.CUR_FACT_PAY,

       p.FIN_RTN_FLAG,

       p.PND_CNC_FLG,

       p.G1PositionId,

       p.G1PositionLoadFileId,

       isnull(f.LoanNetMark_Rounding_FACTOR,'X') AS 'LoanNetMark_Rounding_FACTOR',

       case when

              (P.bookname = 'APEX-MS5239' and P.smode like 'BONY%') then 'N'

       else

              LNT_YN 

       end AS 'LoanNet_Eligable',

       LNT_ID AS 'LoanNet_Counterparty_Id',

       case 

              when c.LNT_Zone = '4' and p.BookName in ('APEX-MS5239','APEX-MS0269') and p.SMODE not like 'DTC%' 

       then 

              '3'

       else   

              c.LNT_ZONE

       end  as 'LoanNet_Zone',

       case 

              when c.LNT_Zone = '4' and p.BookName IN ('APEX-MS5239','APEX-MS0269') and p.SMODE not like 'DTC%' 

       then 

              '3'

       else   

              c.LNT_ZONE

       end  as 'LNT_Zone',

       case when (NOT (CASH = 'N' AND COLL_FLG = 'C')) then 'S' else 'C' END AS LNT_CollateralFlag,

       c.LNT_AUTO_MARKS,

       c.LNT_CALLBACK,

       c.LNT_DIV_TRACKING,

       c.LNT_GOLIM,

       c.LNT_ID,

       c.LNT_INC_COL,

       c.LNT_INC_PEND,

       c.LNT_NC_COLL_TYPE,

       c.LNT_PTYPES,

       (case when p.BL='b' then p.StartFromAgentAC else p.StartToAgentAC end) as CtpyAgentAccount,

       p.APEXTradeType

FROM

       ve_g1position_gql p

       left join APEXLoanNetMap c on  c.BookName = p.BookName and 

                                                                      c.CODE = 

                                                                           case when p.BookName in ( 'APEX-MS5239','APEX-MS0269') and p.SMODE like 'DTC%' then (case when p.BL='b' then p.StartFromAgentAC else p.StartToAgentAC end)

                                                                     ELSE p.CPTY END

       left join APEXCounterpartyMARK_ROUNDING_FACTOR f on 

                                  f.RND_STD = c.RND_STD and 

                                  f.RNDTYP_STD = c.RNDTYP_STD

WHERE

       PTYPE not in ('RPI','RPO') 
