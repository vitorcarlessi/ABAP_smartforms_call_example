*======================================================================*
* Program.....: ZZR_SMARTFORMS_CALL                                    *
* Module......: ALL                                                    *
* Description.: SMARTFORMS CALL - Basic Example                        *
*----------------------------------------------------------------------*
* Author......: Vitor Crepaldi Carlessi                                *
* Date........: 07.12.2022                                             *
*======================================================================*
REPORT zr_smartforms_call.

INCLUDE zr_smartforms_call_f01.

START-OF-SELECTION.
  PERFORM: f_full_process.