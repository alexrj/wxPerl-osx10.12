#############################################################################
## Name:        ext/print/XS/PrintData.xs
## Purpose:     XS for Wx::PrintData
## Author:      Mattia Barbon
## Modified by:
## Created:     04/05/2001
## RCS-ID:      $Id: PrintData.xs 3243 2012-03-25 11:24:18Z mdootson $
## Copyright:   (c) 2001, 2004-2005, 2008 Mattia Barbon
## Licence:     This program is free software; you can redistribute it and/or
##              modify it under the same terms as Perl itself
#############################################################################

#include <wx/cmndata.h>

MODULE=Wx PACKAGE=Wx::PrintData

wxPrintData*
wxPrintData::new()
  CODE:
    RETVAL = new wxPrintData();
  OUTPUT:
    RETVAL

void
wxPrintData::Destroy()
  CODE:
    delete THIS;

#if WXPERL_W_VERSION_GE( 2, 5, 3 )

wxPrintBin
wxPrintData::GetBin()

#endif

#if WXPERL_W_VERSION_GE( 2, 7, 2 )

bool
wxPrintData::IsOk()

#endif

bool
wxPrintData::GetCollate()

bool
wxPrintData::GetColour()

wxDuplexMode
wxPrintData::GetDuplex()

int
wxPrintData::GetNoCopies()

int
wxPrintData::GetOrientation()

wxPaperSize
wxPrintData::GetPaperId()

wxString
wxPrintData::GetPrinterName()

wxPrintQuality
wxPrintData::GetQuality()

#if WXPERL_W_VERSION_GE( 2, 5, 3 )

void
wxPrintData::SetBin( bin )
    wxPrintBin bin

#endif

void
wxPrintData::SetCollate( collate )
    bool collate

void
wxPrintData::SetColour( colour )
    bool colour

void
wxPrintData::SetDuplex( mode )
    wxDuplexMode mode

void
wxPrintData::SetNoCopies( noCopies )
    int noCopies

void
wxPrintData::SetOrientation( orientation )
    int orientation

void
wxPrintData::SetPaperId( paperId )
    wxPaperSize paperId

void
wxPrintData::SetPrinterName( name )
    wxString name

void
wxPrintData::SetQuality( quality )
    wxPrintQuality quality
    

#if WXPERL_W_VERSION_GE( 2, 8, 0 )
bool
wxPrintData::IsOrientationReversed()
    
wxPrintMode
wxPrintData::GetPrintMode()

int
wxPrintData::GetMedia();

void
wxPrintData::SetOrientationReversed( reversed )
    bool reversed

void
wxPrintData::SetMedia( media )
    int media
    
void
wxPrintData::SetPrintMode( printMode )
    wxPrintMode printMode

wxString
wxPrintData::GetFilename()

void
wxPrintData::SetFilename( filename )
    wxString filename

char*
wxPrintData::GetPrivData()
    
int
wxPrintData::GetPrivDataLen()
    
void
wxPrintData::SetPrivData( privData, len )
    char* privData
    int len

void
wxPrintData::ConvertToNative()
    
void
wxPrintData::ConvertFromNative()
    
## wxPrintNativeDataBase*
## wxPrintData::GetNativeData()

#endif
