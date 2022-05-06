// MarcajeTable.sl
// MarcajeTable Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cNacionalidadDataDictionary.dd
Use cEmpleadoTableDataDictionary.dd
Use cTipoMarcajeTableDataDictionary.dd
Use cMarcajeTableDataDictionary.dd

CD_Popup_Object MarcajeTable_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 423
    Set Label To "MarcajeTable Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oNacionalidad_DD is a cNacionalidadDataDictionary
    End_Object 

    Object oEmpleadoTable_DD is a cEmpleadoTableDataDictionary
        Set DDO_Server To oNacionalidad_DD
    End_Object 

    Object oTipoMarcajeTable_DD is a cTipoMarcajeTableDataDictionary
    End_Object 

    Object oMarcajeTable_DD is a cMarcajeTableDataDictionary
        Set DDO_Server To oEmpleadoTable_DD
        Set DDO_Server To oTipoMarcajeTable_DD
    End_Object 

    Set Main_DD To oMarcajeTable_DD
    Set Server  To oMarcajeTable_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 413
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "MarcajeTable_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oMarcajeTable_Codigo is a cDbCJGridColumn
            Entry_Item MarcajeTable.Codigo
            Set piWidth to 157
            Set psCaption to "Codigo"
        End_Object 

        Object oEmpleadoTable_Codigo is a cDbCJGridColumn
            Entry_Item EmpleadoTable.Codigo
            Set piWidth to 112
            Set psCaption to "Empleado Codigo"
        End_Object 

        Object oMarcajeTable_FechaMarcaje is a cDbCJGridColumn
            Entry_Item MarcajeTable.FechaMarcaje
            Set piWidth to 157
            Set psCaption to "Fecha Marcaje"
        End_Object 

        Object oMarcajeTable_HoraMarcaje is a cDbCJGridColumn
            Entry_Item MarcajeTable.HoraMarcaje
            Set piWidth to 173
            Set psCaption to "Hora Marcaje"
        End_Object 

        Object oTipoMarcajeTable_Codigo is a cDbCJGridColumn
            Entry_Item TipoMarcajeTable.Codigo
            Set piWidth to 105
            Set psCaption to "Tipo Marcaje"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 260
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 314
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 368
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // MarcajeTable_sl
