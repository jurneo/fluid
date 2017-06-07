@echo off
SetLocal EnableDelayedExpansion
(set FLUID_VERSION=0.10.0)
(set FLUID_VERSION_TAG=0100)
(set QT_INSTALL_DOCS=C:/Qt/Qt5.8.0/Docs/Qt-5.8)
C:\Qt\Qt5.8.0\5.8\msvc2015_64\bin\qdoc.exe %*
EndLocal
