/*                       SIMA - CONTROL DE ASISTENCIA
		     DECLARACION DE ARCHIVOS DEL SISTEMA

**************************************************************************
* TITULO ..: DECLARACION DE ARCHIVOS DEL SISTEMAS                        *
**************************************************************************

AUTOR: Nelson Fern�ndez G�mez       FECHA DE CREACION: MAY 26/2004 MIE A
       Colombia, Bucaramanga        INICIO: 03:40 PM   MAY 26/2004 MIE

REQUERIMIENTOS:

1- Para que el programa funcione se debe invocar utilizando la clausula
   #INCLUDE dentro de la funcion que lo va a utilizar.

OBJETIVOS:

1- Declara todas las variables que contiene la declaraci�n de todos los
   archivos que conforma el sistema.

2- El objetivo principal de esta declaraci�n es estandarizar el modo
   de acceso a los archivos.

*------------------------------------------------------------------------*
*                              PROGRAMA                                  *
*------------------------------------------------------------------------*/

*>>>>DECLARACION DE ARCHIVOS GENERALES
       LOCAL PathSys := 'SIMAASIS'          // Path del Sistema
       LOCAL PathSis := 'BASES'             // Path General del sistema
       LOCAL ExtFile := '.DAT'              // Extension para las bases
       LOCAL cExtNtx := '.NEL'              // Extension para indices
       LOCAL aUseDbf := {}                  // Vector para Apertura de Varias Dbfs
       LOCAL lSiRed  := .T.                 // .T. Apertura de Archivos MultiUsuario
       LOCAL lNoRed  := .F.                 // .F. Apertura de Archivo MonoUsuario

       LOCAL PathPrn := 'c:\misdoc'        // Path para impresiones
       LOCAL PathDoc := 'c:\misdoc'         // Path de Documentos del sima
       LOCAL FileTem := 'TEMPO'             // Archivo datos temporal
       LOCAL fNtxTem := 'TEMPO'             // Archivo Indice temporal
       LOCAL cExtTem := '.TEM'              // Extension indice temporal
     *�Archivo Temporal

       LOCAL nHanXml := -1                  // Manejador del Archivo
       LOCAL FileXml := ''                  // Archivo Xml
     *�Archivo Xml

       LOCAL PathAaa := ''
       LOCAL FileAaa := PathAaa+'TEMP'+ExtFile
       LOCAL fNtxAaa := ''
     *�Archivo de Usuarios

       LOCAL PathErr := ''
       LOCAL fErrSys := PathErr+'ERRORSYS'+ExtFile
       LOCAL fNtxErr := ''
     *�Archivo de Errores

       LOCAL FileClr := 'CFGCOLOR'+ExtFile
     *�Archivo de Configuraci�n del Color

       LOCAL FilePrn := 'DRIVERS'+ExtFile
     *�Archivo de Configuraci�n de Impresoras

       LOCAL FileDat := 'DATO0108'+ExtFile
     *�Archivo de Datos del Sistema

       LOCAL FileIso := 'FILESISO'+ExtFile
     *�Archivo de documentos de Iso
*>>>>FIN DECLARACION DE ARCHIVOS GENERALES

*>>>>DECLARACION DE ARCHIVOS DEL SISTEMA
       LOCAL fSimAsi := 'SIMAASIS'+ExtFile
     *�Archivo de Configuraci�n del sistema

       LOCAL fAsiAno := 'ASIS'              // Ej: ASIS1996.DAT
     *�Archivo de Configuraci�n del a�o

       LOCAL fAsiTbl := 'ASIS'              // Ej: ASISBTO.DAT
     *�Archivo de Configuraci�n del nivel

       LOCAL fCtrAsi := 'ASISTENC'+ExtFile  // Ej: ASISTENC.DAT
     *�Archivo de Control de Asistencia

       LOCAL fAsiNov := 'NOVEASIS'+ExtFile  // Ej: NOVEASIS.DAT
     *�Archivo Novedades de asistencia

       LOCAL FileAut := 'AUTASIS'+ExtFile
     *�Archivo de Autorizaci�n de Asistencias

       LOCAL fTipAus := 'TIPOAUSE'+ExtFile
     *�Archivo de Tipo de Ausencias
*>>>>DECLARACION DE ARCHIVOS DEL SISTEMA

*>>>>DECLARACION DE ARCHIVOS COMPARTIDOS
       LOCAL fSimaCo := 'SIMACONT'+ExtFile
     *�Archivo de Configuraci�n del sistema

       LOCAL fConTbl := 'CONT'             // Ej: CONTBTO.DAT
     *�Archivo Configuraci�n del nivel

       LOCAL FileHor := 'HORARIO'+ExtFile  // Ej: HORARIO.DAT
     *�Archivo de Horario de Clase

       LOCAL FileHra := 'HORAS'+ExtFile	   // Ej: HORAS.DAT
     *�Archivo de Horas

       LOCAL FilePro := 'PROFES'    // Ej: PROFES95.DAT
     *�Archivo de Profesores

       LOCAL FileMat := 'MATERIAS'+ExtFile
     *�Archivo de Materias

       LOCAL FileGru := 'GRU'
     *�Archivo de Grupos

       LOCAL FileNiv := 'NIVELS'            // Ej: NIVELS95.DAT
     *�Archivo de Niveles

       LOCAL PathBto := ''
       LOCAL FMaeBto := 'MAEBTO'            // Ej: MAEBTO95.DAT
       LOCAL fNtxBto := 'MAEBTO'
       LOCAL Ntx1Bto := 'APEBTO'            // Ej: APEBTO95.NEL
       LOCAL Ntx2Bto := 'NOMBTO'            // Ej: NOMBTO95.NEL
     *�Archivo de Alumnos de Bachillerato

       LOCAL PathPri := ''
       LOCAL FMaePri := 'MAEPRI'            // Ej: MAEPRI94.DAT
       LOCAL fNtxPri := 'MAEPRI'
       LOCAL Ntx1Pri := 'APEPRI'            // Ej: APEPRI95.NEL
       LOCAL Ntx2Pri := 'NOMPRI'            // Ej: NOMPRI95.NEL
     *�Archivo de Alumnos de Primaria

       LOCAL PathJar := ''
       LOCAL FMaeJar := 'MAEJAR'            // Ej: MAEJAR94.DAT
       LOCAL fNtxJar := 'MAEJAR'
       LOCAL Ntx1Jar := 'APEJAR'            // Ej: APEJAR95.NEL
       LOCAL Ntx2Jar := 'NOMJAR'            // Ej: NOMJAR95.NEL
     *�Archivo de Alumnos de Jard�n

       LOCAL PathGua := ''
       LOCAL FMaeGua := 'MAEGUA'            // Ej: MAEGUA94.DAT
       LOCAL fNtxGua := 'MAEGUA'
       LOCAL Ntx1Gua := 'APEGUA'            // Ej: APEGUA95.NEL
       LOCAL Ntx2Gua := 'NOMGUA'            // Ej: NOMGUA95.NEL
     *�Archivo de Alumnos de Guarderia

       LOCAL fPerso1 := 'PERSONA1'+ExtFile
       LOCAL fNtxPe1 := 'PERSONA1'+cExtNtx
       LOCAL Ntx1Pe1 := 'PERS1NIT'+cExtNtx
     *�Archivo del Personas

       LOCAL FilePnl := 'PERSONAL'+ExtFile
       LOCAL fNtxPnl := 'PERSONAL'+cExtNtx
       LOCAL Ntx1Pnl := 'PRSONNIT'+cExtNtx
     *�Archivo del Personal

       LOCAL FileTpe := 'TIPOPERS'+ExtFile
       LOCAL fNtxTpe := 'TIPOPERS'+cExtNtx
     *�Archivo del Personal
*>>>>FIN DECLARACION DE ARCHIVOS COMPARTIDOS