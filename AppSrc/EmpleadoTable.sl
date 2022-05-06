// EmpleadoTable.sl
// EmpleadoTable Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cNacionalidadDataDictionary.dd
Use cEmpleadoTableDataDictionary.dd

CD_Popup_Object EmpleadoTable_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 610
    Set Label To "EmpleadoTable Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oNacionalidad_DD is a cNacionalidadDataDictionary
    End_Object 

    Object oEmpleadoTable_DD is a cEmpleadoTableDataDictionary
        Set DDO_Server To oNacionalidad_DD
    End_Object 

    Set Main_DD To oEmpleadoTable_DD
    Set Server  To oEmpleadoTable_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 600
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "EmpleadoTable_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oEmpleadoTable_Codigo is a cDbCJGridColumn
            Entry_Item EmpleadoTable.Codigo
            Set piWidth to 105
            Set psCaption to "Codigo"
        End_Object 

        Object oEmpleadoTable_PrimerNombre is a cDbCJGridColumn
            Entry_Item EmpleadoTable.PrimerNombre
            Set piWidth to 262
            Set psCaption to "Primer Nombre"
        End_Object 

        Object oEmpleadoTable_SegundoNombre is a cDbCJGridColumn
            Entry_Item EmpleadoTable.SegundoNombre
            Set piWidth to 262
            Set psCaption to "Segundo Nombre"
        End_Object 

        Object oEmpleadoTable_PrimerApellido is a cDbCJGridColumn
            Entry_Item EmpleadoTable.PrimerApellido
            Set piWidth to 262
            Set psCaption to "Primer Apellido"
        End_Object 

        Object oEmpleadoTable_SegundoApellido is a cDbCJGridColumn
            Entry_Item EmpleadoTable.SegundoApellido
            Set piWidth to 262
            Set psCaption to "Segundo Apellido"
        End_Object 

        Object oNacionalidad_CodigoNacionalidad is a cDbCJGridColumn
            Entry_Item Nacionalidad.CodigoNacionalidad
            Set piWidth to 157
            Set psCaption to "Nacionalidad"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 447
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 501
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 555
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // EmpleadoTable_sl
