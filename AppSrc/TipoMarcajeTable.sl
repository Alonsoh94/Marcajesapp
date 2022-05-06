// TipoMarcajeTable.sl
// TipoMarcajeTable Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cTipoMarcajeTableDataDictionary.dd

CD_Popup_Object TipoMarcajeTable_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 200
    Set Label To "TipoMarcajeTable Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oTipoMarcajeTable_DD is a cTipoMarcajeTableDataDictionary
    End_Object 

    Set Main_DD To oTipoMarcajeTable_DD
    Set Server  To oTipoMarcajeTable_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 190
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "TipoMarcajeTable_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oTipoMarcajeTable_Codigo is a cDbCJGridColumn
            Entry_Item TipoMarcajeTable.Codigo
            Set piWidth to 105
            Set psCaption to "Codigo"
        End_Object 

        Object oTipoMarcajeTable_TipoMarcaje is a cDbCJGridColumn
            Entry_Item TipoMarcajeTable.TipoMarcaje
            Set piWidth to 210
            Set psCaption to "Tipo Marcaje"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 37
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 91
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 145
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // TipoMarcajeTable_sl
