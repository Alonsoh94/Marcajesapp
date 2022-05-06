//**************************************************************
// TableLookup.tpl for Windows application for Spanish 
// translated by Moose Software (www.moose-software.com) 
// 13/07/2010 Revised for VDF 16.0 by Moose Software
// 05/02/2012 Revised for VDF 17.0 by Moose Software
// 13/06/2013 Revised for VDF 17.1 by Moose Software
// 02/05/2014 Revised for VDF 18.0 by Moose Software
//*************************************************************

Use Windows.pkg
Use DFClient.pkg
use DFSellst.pkg
Use cNacionalidadDataDictionary.dd
Use cEmpleadoTableDataDictionary.dd
Use cTipoMarcajeTableDataDictionary.dd
Use cMarcajeTableDataDictionary.dd

Object oLista_empleado_sl is a dbModalPanel
    Object oTipoMarcajeTable_DD is a cTipoMarcajeTableDataDictionary
    End_Object

    Object oNacionalidad_DD is a cNacionalidadDataDictionary
    End_Object

    Object oEmpleadoTable_DD is a cEmpleadoTableDataDictionary
        Set DDO_Server to oNacionalidad_DD
    End_Object

    Object oMarcajeTable_DD is a cMarcajeTableDataDictionary
        Set DDO_Server to oTipoMarcajeTable_DD
        Set DDO_Server to oEmpleadoTable_DD
    End_Object

    Set Main_DD to oMarcajeTable_DD
    Set Server to oMarcajeTable_DD

    Set Size to 133 292
    Set Location     to 4 5
    Set Border_Style to Border_Thick
    Set Label to "lista_empleado_sl"

    Object oSelList is a dbList
        Set peAnchors to anAll
        Set Size      to 105 280
        Set Location  to 6 6

        Begin_Row
            Entry_Item MarcajeTable.Codigo
            Entry_Item MarcajeTable.FechaMarcaje
            Entry_Item MarcajeTable.HoraMarcaje
            Entry_Item TipoMarcajeTable.Codigo
        End_Row

        Set Main_File to MarcajeTable.File_Number

        Set Form_Width 0 to 60
        Set Header_Label 0 to "Codigo"
        Set Form_Width 1 to 60
        Set Header_Label 1 to "FechaMarcaje"
        Set Form_Width 2 to 88
        Set Header_Label 2 to "HoraMarcaje"
        Set Form_Width 3 to 60
        Set Header_Label 3 to "TipoMarcaje"
    End_Object

    Object oOK_bn is a Button
        Set Label     to "&Aceptar"
        Set Location  to 115 128
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Ok of oSelList
        End_Procedure

    End_Object

    Object oCancel_bn is a Button
        Set Label     to "&Cancelar"
        Set Location  to 115 182
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object

    Object oSearch_bn is a Button
        Set Label     to "&Buscar..."
        Set Location  to 115 236
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object

    On_Key Key_Alt+Key_A Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_B Send KeyAction of oSearch_bn

End_Object

//*********************************************** end of TableLookup.tpl for Spanish ****************

