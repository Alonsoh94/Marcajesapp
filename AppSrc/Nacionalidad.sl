// Nacionalidad.sl
// Nacionalidad Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cNacionalidadDataDictionary.dd

CD_Popup_Object Nacionalidad_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 260
    Set Label To "Nacionalidad Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oNacionalidad_DD is a cNacionalidadDataDictionary
    End_Object 

    Set Main_DD To oNacionalidad_DD
    Set Server  To oNacionalidad_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 250
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "Nacionalidad_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oNacionalidad_CodigoNacionalidad is a cDbCJGridColumn
            Entry_Item Nacionalidad.CodigoNacionalidad
            Set piWidth to 157
            Set psCaption to "Codigo"
        End_Object 

        Object oNacionalidad_Pais is a cDbCJGridColumn
            Entry_Item Nacionalidad.Pais
            Set piWidth to 262
            Set psCaption to "Pais"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 97
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 151
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 205
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // Nacionalidad_sl
