// C:\DataFlex Projects\JUEVESAPPMARCAJES\AppSrc\MARCAJES.vw
// MARCAJES
//

Use DFClient.pkg
Use DFEntry.pkg

Use cNacionalidadDataDictionary.dd
Use cEmpleadoTableDataDictionary.dd
Use cTipoMarcajeTableDataDictionary.dd
Use cMarcajeTableDataDictionary.dd
Use cDbCJGrid.pkg
Use cdbCJGridColumn.pkg

ACTIVATE_VIEW Activate_MARCAJES FOR MARCAJES
Object MARCAJES is a dbView
    Set Location to 5 5
    Set Size to 301 585
    Set Label To "MARCAJES"
    Set Border_Style to Border_Thick


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

    Object oDbCJGrid1 is a cDbCJGrid
        Set Size to 262 526
        Set Location to 22 23

        Object oMarcajeTable_Codigo is a cDbCJGridColumn
            Entry_Item MarcajeTable.Codigo
            Set piWidth to 168
            Set psCaption to "Codigo"
        End_Object

        Object oMarcajeTable_EmpleadoCodigo is a cDbCJGridColumn
            Entry_Item EmpleadoTable.Codigo
            Set piWidth to 168
            Set psCaption to "Empleado Codigo"
        End_Object

        Object oMarcajeTable_FechaMarcaje is a cDbCJGridColumn
            Entry_Item MarcajeTable.FechaMarcaje
            Set piWidth to 168
            Set psCaption to "Fecha Marcaje"
        End_Object

        Object oMarcajeTable_HoraMarcaje is a cDbCJGridColumn
            Entry_Item MarcajeTable.HoraMarcaje
            Set piWidth to 247
            Set psCaption to "HoraMarcaje"
        End_Object

        Object oMarcajeTable_TipoMarcaje is a cDbCJGridColumn
            Entry_Item TipoMarcajeTable.Codigo
            Set piWidth to 169
            Set psCaption to "Tipo Marcaje"
        End_Object
    End_Object


End_Object 
