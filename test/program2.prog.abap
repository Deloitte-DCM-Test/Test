*&---------------------------------------------------------------------*
*& Report ZABA_J01_S02_E06_A01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba_j01_s02_e06_a01.

DATA lv_lastday TYPE i.

PARAMETERS: p_date LIKE sy-datum,
            p_days TYPE i DEFAULT 14.

INITIALIZATION.
  p_date = sy-datum.
  p_date+6(2) = '01'.
  p_date = p_date - 1.
  lv_lastday = p_date+6(2).

START-OF-SELECTION.
  p_date = p_date + p_days.
  WRITE: 'Last day of Last Month', lv_lastday, / 'Number of Days Added', p_days, / 'Result', p_date.