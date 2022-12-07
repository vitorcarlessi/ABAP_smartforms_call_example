*======================================================================*
* Program.....: ZZR_SMARTFORMS_CALL                                    *
* Include.....: ZZR_SMARTFORMS_CALL_F01                                *
* Module......: ALL                                                    *
* Description.: SMARTFORMS CALL - Basic Example                        *
*----------------------------------------------------------------------*
* Author......: Vitor Crepaldi Carlessi                                *
* Date........: 07.12.2022                                             *
*======================================================================*
*&---------------------------------------------------------------------*
*&  Include           ZR_SAPSCRIPT_CALL_F01
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Form  F_FULL_PROCESS
*&---------------------------------------------------------------------*
FORM f_full_process.

*&---------------------------------------------------------------------*
*& Structures                                                          *
*&---------------------------------------------------------------------*
  DATA: ls_result TYPE itcpp.

*&---------------------------------------------------------------------*
*& Variables                                                           *
*&---------------------------------------------------------------------*
  DATA: lv_formname  TYPE tdsfname,
        lv_funcname  TYPE rs38l_fnam,
        lv_pernr     TYPE pernr-pernr,
        lv_empregado TYPE pernr-ename,
        lv_empresa   TYPE bapibranch-name,
        lv_address   TYPE char120.

  "Form Name
  lv_formname = 'ZHBR_CONTR_FORM'.

  "Get SmartForms Name
  CALL FUNCTION 'SSF_FUNCTION_MODULE_NAME'
    EXPORTING
      formname           = lv_formname
    IMPORTING
      fm_name            = lv_funcname
    EXCEPTIONS
      no_form            = 1
      no_function_module = 2
      OTHERS             = 3.

  IF sy-subrc IS NOT INITIAL.
    "Error
    RETURN.
  ENDIF.

  CALL FUNCTION lv_funcname
    EXPORTING
      iv_pernr   = lv_pernr
      iv_ename   = lv_empregado
      iv_unidade = lv_empresa
      iv_morada  = lv_address.

ENDFORM.