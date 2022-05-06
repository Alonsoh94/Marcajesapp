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

Object LISTAEMPLEADOS is a dbModalPanel
    Object oNacionalidad_DD is a cNacionalidadDataDictionary
    End_Object

    Object oEmpleadoTable_DD is a cEmpleadoTableDataDictionary
        Set DDO_Server to oNacionalidad_DD
    End_Object

    Set Main_DD to oEmpleadoTable_DD
    Set Server to oEmpleadoTable_DD

    Set Size to 133 554
    Set Location     to 4 5
    Set Border_Style to Border_Thick
    Set Label to "LISTAEMPLEADOS"

    Object oSelList is a dbList
        Set peAnchors to anAll
        Set Size to 105 542
        Set Location  to 6 6

        Begin_Row
            Entry_Item EmpleadoTable.Codigo
            Entry_Item EmpleadoTable.PrimerNombre
            Entry_Item EmpleadoTable.SegundoNombre
            Entry_Item EmpleadoTable.PrimerApellido
            Entry_Item EmpleadoTable.SegundoApellido
            Entry_Item Nacionalidad.CodigoNacionalidad
        End_Row

        Set Main_File to EmpleadoTable.File_Number

        Set Form_Width 0 to 60
        Set Header_Label 0 to "Codigo"
        Set Form_Width 1 to 125
        Set Header_Label 1 to "Segundo Nombre"
        Set Form_Width 2 to 83
        Set Header_Label 2 to "SegundoNombre"
        Set Form_Width 3 to 90
        Set Header_Label 3 to "Segundo Apellido"
        Set Form_Width 4 to 122
        Set Header_Label 4 to "SegundoApellido"
        Set Form_Width 5 to 142
        Set Header_Label 5 to "Segundo Apellido"
    End_Object

    Object oOK_bn is a Button
        Set Label     to "&Aceptar"
        Set Location to 115 390
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Ok of oSelList
        End_Procedure

    End_Object

    Object oCancel_bn is a Button
        Set Label     to "&Cancelar"
        Set Location to 115 444
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object

    Object oSearch_bn is a Button
        Set Label     to "&Buscar..."
        Set Location to 115 498
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

