*&---------------------------------------------------------------------*
*& Report ZABA_J01_S02_E04_A01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba_j01_s02_e04_a01.

DATA lv_result TYPE int8.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE titlea.
  PARAMETERS: p1 TYPE int8 DEFAULT 10,
              p2 TYPE int8 DEFAULT 5.
SELECTION-SCREEN END OF BLOCK b1.
SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE titleb.
  PARAMETERS: p_symbol TYPE char1 DEFAULT '+'.
SELECTION-SCREEN END OF BLOCK b2.

INITIALIZATION.
  titlea = 'Enter integers for the adding machine'.
  titleb = 'Enter operator for the adding machine'.

START-OF-SELECTION.
  CASE p_symbol.
    WHEN '+'.
      lv_result = p1 + p2.
    WHEN '-'.
      lv_result = p1 - p2.
    WHEN '/'.
      lv_result = p1 / p2.
    WHEN '*'.
      lv_result = p1 * p2.
    WHEN OTHERS.
      MESSAGE 'Your input is invalid please enter a valid input.' TYPE 'E'.
  ENDCASE.

  WRITE: p1, p_symbol ,p2,'=', lv_result.