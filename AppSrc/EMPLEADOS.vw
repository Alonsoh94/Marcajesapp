// C:\DataFlex Projects\JUEVESAPPMARCAJES\AppSrc\EMPLEADOS.vw
// EMPLEADOS
//

Use DFClient.pkg
Use DFEntry.pkg

Use cNacionalidadDataDictionary.dd
Use cEmpleadoTableDataDictionary.dd

ACTIVATE_VIEW Activate_EMPLEADOS FOR EMPLEADOS
Object EMPLEADOS is a dbView
    Set Location to 5 5
    Set Size to 168 512
    Set Label To "EMPLEADOS"
    Set Border_Style to Border_Thick


    Object oNacionalidad_DD is a cNacionalidadDataDictionary
    End_Object 

    Object oEmpleadoTable_DD is a cEmpleadoTableDataDictionary
        Set DDO_Server To oNacionalidad_DD
    End_Object 

    Set Main_DD To oEmpleadoTable_DD
    Set Server  To oEmpleadoTable_DD



    Object oEmpleadoTableCodigo is a dbForm
        Entry_Item EmpleadoTable.Codigo
        Set Size to 13 262
        Set Location to 5 61
        Set peAnchors to anTopLeftRight
        Set Label to "Codigo"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 56
        Set Label_row_Offset to 0
    End_Object 

    Object oEmpleadoTablePrimerNombre is a dbForm
        Entry_Item EmpleadoTable.PrimerNombre
        Set Size to 13 446
        Set Location to 20 61
        Set peAnchors to anTopLeftRight
        Set Label to "Primer Nombre"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 56
        Set Label_row_Offset to 0
    End_Object 

    Object oEmpleadoTableSegundoNombre is a dbForm
        Entry_Item EmpleadoTable.SegundoNombre
        Set Size to 13 446
        Set Location to 35 61
        Set peAnchors to anTopLeftRight
        Set Label to "Segundo Nombre"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 56
        Set Label_row_Offset to 0
    End_Object 

    Object oEmpleadoTablePrimerApellido is a dbForm
        Entry_Item EmpleadoTable.PrimerApellido
        Set Size to 13 446
        Set Location to 50 61
        Set peAnchors to anTopLeftRight
        Set Label to "Primer Apellido"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 56
        Set Label_row_Offset to 0
    End_Object 

    Object oEmpleadoTableSegundoApellido is a dbForm
        Entry_Item EmpleadoTable.SegundoApellido
        Set Size to 13 446
        Set Location to 65 61
        Set peAnchors to anTopLeftRight
        Set Label to "Segundo Apellido"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 56
        Set Label_row_Offset to 0
    End_Object 

    Object oNacionalidadCodigoNacionalidad is a dbForm
        Entry_Item Nacionalidad.CodigoNacionalidad
        Set Size to 13 292
        Set Location to 80 61
        Set peAnchors to anTopLeftRight
        Set Label to "Nacionalidad"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 56
        Set Label_row_Offset to 0
    End_Object 


End_Object 
