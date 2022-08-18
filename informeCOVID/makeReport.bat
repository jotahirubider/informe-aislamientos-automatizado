@echo off
::::::::::::::::::::::: CONFIGURACION DE RUTAS ::::::::::::::::::::::::::::::::::
:: Configurar Ruta hasta Rscript.exe (i386 - x86 - 32 bits).
set RUTA_RSCRIPT="C:/Program Files/R/R-4.1.2/bin/i386/Rscript.exe"
:: Configurar Ruta hasta carpeta principal que contiene este mismo archivo.
set RUTA_PROGRAMA="\\woody\asan\Servicios\EnfermeriaMedPreventiva\AISLAMIENTOS TODO\EXCEL AISLAMIENTOS\INFORMES\informeCOVID"
set RUTA_MDB="\\woody\asan\Servicios\EnfermeriaMedPreventiva\AISLAMIENTOS TODO\EXCEL AISLAMIENTOS\Epi Info 7\Projects\IRAS\IRAS.mdb"



::::::::::::::::::::::: NO MODIFICAR NADA A PARTIR DE AQUI ::::::::::::::::::::::

set RUTA_START="makeReport.R"

echo ----------------------------------------------------------------
echo ---- GENERANDO INFORME COVID-19 CON FECHA %date% ----
echo ----------------------------------------------------------------

net use j: /delete /y
net use j: %RUTA_PROGRAMA% /persistent:no
J:
%RUTA_RSCRIPT% %RUTA_START%
echo ----------------------------------------------------------------
echo ---------------------- INFORME GENERADO  -----------------------
echo ---------------- COMPROBAR QUE NO HAY ERRORES ------------------
echo ------------------ Y SE HAYA GENERADO EL PDF -------------------
echo Presione ENTER para cerrar la ventana.
runas /user:# "" >nul 2>&1