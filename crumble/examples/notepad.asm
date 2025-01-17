; ---------------------------------------------------------------------------

tagPOINT	struc ;	(sizeof=0x8, standard type) ; XREF: .data:ptr
					; sub_1001A28r	...
x		dd ?
y		dd ?
tagPOINT	ends

; ---------------------------------------------------------------------------

tagOFNW		struc ;	(sizeof=0x58, standard type) ; XREF: .data:stru_100A680r
lStructSize	dd ?
hwndOwner	dd ?			; offset
hInstance	dd ?			; offset
lpstrFilter	dd ?			; offset
lpstrCustomFilter dd ?			; offset
nMaxCustFilter	dd ?
nFilterIndex	dd ?
lpstrFile	dd ?			; offset
nMaxFile	dd ?
lpstrFileTitle	dd ?			; offset
nMaxFileTitle	dd ?
lpstrInitialDir	dd ?			; offset
lpstrTitle	dd ?			; offset
Flags		dd ?
nFileOffset	dw ?
nFileExtension	dw ?
lpstrDefExt	dd ?			; offset
lCustData	dd ?
lpfnHook	dd ?			; offset
lpTemplateName	dd ?			; offset
pvReserved	dd ?			; offset
dwReserved	dd ?
FlagsEx		dd ?
tagOFNW		ends

; ---------------------------------------------------------------------------

tagMSG		struc ;	(sizeof=0x1C, standard type) ; XREF: sub_1002936r
					; procr
hwnd		dd ?			; offset
message		dd ?
wParam		dd ?
lParam		dd ?
time		dd ?
pt		POINT ?
tagMSG		ends

; ---------------------------------------------------------------------------

POINT		struc ;	(sizeof=0x8, standard type) ; XREF: tagMSGr tagPSDWr ...
x		dd ?
y		dd ?
POINT		ends

; ---------------------------------------------------------------------------

_WIN32_FIND_DATAW struc	; (sizeof=0x250, standard type)	; XREF:	sub_1002A55r
					; sub_1003F99r
dwFileAttributes dd ?
ftCreationTime	FILETIME ?
ftLastAccessTime FILETIME ?
ftLastWriteTime	FILETIME ?
nFileSizeHigh	dd ?
nFileSizeLow	dd ?
dwReserved0	dd ?
dwReserved1	dd ?
cFileName	dw 260 dup(?)
cAlternateFileName dw 14 dup(?)
_WIN32_FIND_DATAW ends

; ---------------------------------------------------------------------------

FILETIME	struc ;	(sizeof=0x8, standard type) ; XREF: _WIN32_FIND_DATAWr
					; _WIN32_FIND_DATAWr ...
dwLowDateTime	dd ?
dwHighDateTime	dd ?
FILETIME	ends

; ---------------------------------------------------------------------------

tagPSDW		struc ;	(sizeof=0x54, standard type) ; XREF: .data:stru_100A4A0r
lStructSize	dd ?
hwndOwner	dd ?			; offset
hDevMode	dd ?			; offset
hDevNames	dd ?			; offset
Flags		dd ?
ptPaperSize	POINT ?
rtMinMargin	RECT ?
rtMargin	RECT ?
hInstance	dd ?			; offset
lCustData	dd ?
lpfnPageSetupHook dd ?			; offset
lpfnPagePaintHook dd ?			; offset
lpPageSetupTemplateName	dd ?		; offset
hPageSetupTemplate dd ?			; offset
tagPSDW		ends

; ---------------------------------------------------------------------------

RECT		struc ;	(sizeof=0x10, standard type) ; XREF: tagPSDWr tagPSDWr ...
left		dd ?
top		dd ?
right		dd ?
bottom		dd ?
RECT		ends

; ---------------------------------------------------------------------------

tagFINDREPLACEW	struc ;	(sizeof=0x28, standard type) ; XREF: .data:stru_100A500r
lStructSize	dd ?
hwndOwner	dd ?			; offset
hInstance	dd ?			; offset
Flags		dd ?
lpstrFindWhat	dd ?			; offset
lpstrReplaceWith dd ?			; offset
wFindWhatLen	dw ?
wReplaceWithLen	dw ?
lCustData	dd ?
lpfnHook	dd ?			; offset
lpTemplateName	dd ?			; offset
tagFINDREPLACEW	ends

; ---------------------------------------------------------------------------

CHOOSEFONTW	struc ;	(sizeof=0x3C, standard type) ; XREF: sub_1002B87r
lStructSize	dd ?
hwndOwner	dd ?			; offset
hDC		dd ?			; offset
lpLogFont	dd ?			; offset
iPointSize	dd ?
Flags		dd ?
rgbColors	dd ?
lCustData	dd ?
lpfnHook	dd ?			; offset
lpTemplateName	dd ?			; offset
hInstance	dd ?			; offset
lpszStyle	dd ?			; offset
nFontType	dw ?
___MISSING_ALIGNMENT__ dw ?
nSizeMin	dd ?
nSizeMax	dd ?
CHOOSEFONTW	ends

; ---------------------------------------------------------------------------

LOGFONTW	struc ;	(sizeof=0x5C, standard type) ; XREF: .data:lfr
					; sub_1006773r
lfHeight	dd ?
lfWidth		dd ?
lfEscapement	dd ?
lfOrientation	dd ?
lfWeight	dd ?
lfItalic	db ?
lfUnderline	db ?
lfStrikeOut	db ?
lfCharSet	db ?
lfOutPrecision	db ?
lfClipPrecision	db ?
lfQuality	db ?
lfPitchAndFamily db ?
lfFaceName	dw 32 dup(?)
LOGFONTW	ends

; ---------------------------------------------------------------------------

tagRECT		struc ;	(sizeof=0x10, standard type) ; XREF: sub_1002B87r
					; sub_1004565r	...
left		dd ?
top		dd ?
right		dd ?
bottom		dd ?
tagRECT		ends

; ---------------------------------------------------------------------------

WINDOWPLACEMENT	struc ;	(sizeof=0x2C, standard type) ; XREF: sub_1003A39r
					; sub_1004565r
length		dd ?
flags		dd ?
showCmd		dd ?
ptMinPosition	POINT ?
ptMaxPosition	POINT ?
rcNormalPosition RECT ?
WINDOWPLACEMENT	ends

; ---------------------------------------------------------------------------

WNDCLASSEXW	struc ;	(sizeof=0x30, standard type) ; XREF: sub_10044D7r
cbSize		dd ?
style		dd ?
lpfnWndProc	dd ?			; offset
cbClsExtra	dd ?
cbWndExtra	dd ?
hInstance	dd ?			; offset
hIcon		dd ?			; offset
hCursor		dd ?			; offset
hbrBackground	dd ?			; offset
lpszMenuName	dd ?			; offset
lpszClassName	dd ?			; offset
hIconSm		dd ?			; offset
WNDCLASSEXW	ends

; ---------------------------------------------------------------------------

tagPDEXW	struc ;	(sizeof=0x54, standard type) ; XREF: sub_1005E6Dr
lStructSize	dd ?
hwndOwner	dd ?			; offset
hDevMode	dd ?			; offset
hDevNames	dd ?			; offset
hDC		dd ?			; offset
Flags		dd ?
Flags2		dd ?
ExclusionFlags	dd ?
nPageRanges	dd ?
nMaxPageRanges	dd ?
lpPageRanges	dd ?			; offset
nMinPage	dd ?
nMaxPage	dd ?
nCopies		dd ?
hInstance	dd ?			; offset
lpPrintTemplateName dd ?		; offset
lpCallback	dd ?			; offset
nPropertyPages	dd ?
lphPropertyPages dd ?			; offset
nStartPage	dd ?
dwResultAction	dd ?
tagPDEXW	ends

; ---------------------------------------------------------------------------

tagSIZE		struc ;	(sizeof=0x8, standard type) ; XREF: sub_1006657r
_cx		dd ?
cy		dd ?
tagSIZE		ends

; ---------------------------------------------------------------------------

_SYSTEMTIME	struc ;	(sizeof=0x10, standard type) ; XREF: .data:SystemTimer
					; sub_1006F10r
wYear		dw ?
wMonth		dw ?
wDayOfWeek	dw ?
wDay		dw ?
wHour		dw ?
wMinute		dw ?
wSecond		dw ?
wMilliseconds	dw ?
_SYSTEMTIME	ends

; ---------------------------------------------------------------------------

tagTEXTMETRICW	struc ;	(sizeof=0x3C, standard type) ; XREF: sub_1006773r
tmHeight	dd ?
tmAscent	dd ?
tmDescent	dd ?
tmInternalLeading dd ?
tmExternalLeading dd ?
tmAveCharWidth	dd ?
tmMaxCharWidth	dd ?
tmWeight	dd ?
tmOverhang	dd ?
tmDigitizedAspectX dd ?
tmDigitizedAspectY dd ?
tmFirstChar	dw ?
tmLastChar	dw ?
tmDefaultChar	dw ?
tmBreakChar	dw ?
tmItalic	db ?
tmUnderlined	db ?
tmStruckOut	db ?
tmPitchAndFamily db ?
tmCharSet	db ?
_padding	db 3 dup(?)
tagTEXTMETRICW	ends

; ---------------------------------------------------------------------------

tagDRAWTEXTPARAMS struc	; (sizeof=0x14,	standard type) ; XREF: sub_1006773r
cbSize		dd ?
iTabLength	dd ?
iLeftMargin	dd ?
iRightMargin	dd ?
uiLengthDrawn	dd ?
tagDRAWTEXTPARAMS ends

; ---------------------------------------------------------------------------

_SCOPETABLE_ENTRY struc	; (sizeof=0xC)	; XREF:	.text:stru_1001800r
					; .text:stru_1001898r
EnclosingLevel	dd ?
FilterFunc	dd ?			; offset
HandlerFunc	dd ?			; offset
_SCOPETABLE_ENTRY ends

; ---------------------------------------------------------------------------

CPPEH_RECORD	struc ;	(sizeof=0x18)	; XREF:	sub_1005179r startr
old_esp		dd ?			; XREF:	sub_1005179:loc_10055CCr
					; start:loc_100753Er
exc_ptr		dd ?			; XREF:	start:loc_100752Ar ; offset
registration	_EH3_EXCEPTION_REGISTRATION ? ;	XREF: sub_1005179:loc_10052AAw
					; sub_1005179+2EFw ...
CPPEH_RECORD	ends

; ---------------------------------------------------------------------------

_EH3_EXCEPTION_REGISTRATION struc ; (sizeof=0x10, standard type) ; XREF: CPPEH_RECORDr
Next		dd ?			; offset
ExceptionHandler dd ?			; offset
ScopeTable	dd ?			; offset
TryLevel	dd ?			; XREF:	sub_1005179:loc_10052AAw
					; sub_1005179+2EFw ...
_EH3_EXCEPTION_REGISTRATION ends

; ---------------------------------------------------------------------------

_BY_HANDLE_FILE_INFORMATION struc ; (sizeof=0x34, standard type) ; XREF: sub_1005179r
dwFileAttributes dd ?
ftCreationTime	FILETIME ?
ftLastAccessTime FILETIME ?
ftLastWriteTime	FILETIME ?
dwVolumeSerialNumber dd	?
nFileSizeHigh	dd ?
nFileSizeLow	dd ?
nNumberOfLinks	dd ?
nFileIndexHigh	dd ?
nFileIndexLow	dd ?
_BY_HANDLE_FILE_INFORMATION ends

; ---------------------------------------------------------------------------

_STARTUPINFOA	struc ;	(sizeof=0x44, standard type) ; XREF: startr
cb		dd ?
lpReserved	dd ?			; offset
lpDesktop	dd ?			; offset
lpTitle		dd ?			; offset
dwX		dd ?
dwY		dd ?
dwXSize		dd ?
dwYSize		dd ?
dwXCountChars	dd ?
dwYCountChars	dd ?
dwFillAttribute	dd ?
dwFlags		dd ?
wShowWindow	dw ?
cbReserved2	dw ?
lpReserved2	dd ?			; offset
hStdInput	dd ?			; offset
hStdOutput	dd ?			; offset
hStdError	dd ?			; offset
_STARTUPINFOA	ends


;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2013 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3215-7394-8A			    |
; |  Universitaet Bonn/	Institut fuer Informatik Abteilung fuer	Informati   |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	388B8FBC36A8558587AFC90FB23A3B99
; Input	CRC32 :	197F22C1

; File Name   :	Y:\binaries\notepad.exe
; Format      :	Portable executable for	80386 (PE)
; Imagebase   :	1000000
; Section 1. (virtual address 00001000)
; Virtual size			: 00007748 (  30536.)
; Section size in file		: 00007800 (  30720.)
; Offset to raw	data for section: 00000400
; Flags	60000020: Text Executable Readable
; Alignment	: default
;
; Imports from ADVAPI32.dll
;

		include	uni.inc	; see unicode subdir of	ida for	info on	unicode

		.686p
		.mmx
		.model flat

; ===========================================================================

; Segment type:	Externs
; _idata
; LSTATUS __stdcall RegQueryValueExW(HKEY hKey,	LPCWSTR	lpValueName, LPDWORD lpReserved, LPDWORD lpType, LPBYTE	lpData,	LPDWORD	lpcbData)
		extrn RegQueryValueExW:dword ; CODE XREF: sub_100398D+34p
					; sub_10039E2+29p
					; DATA XREF: ...
; LSTATUS __stdcall RegCloseKey(HKEY hKey)
		extrn RegCloseKey:dword	; CODE XREF: sub_1003A39+24Cp
					; sub_1003C92+2A5p ...
; LSTATUS __stdcall RegCreateKeyW(HKEY hKey, LPCWSTR lpSubKey, PHKEY phkResult)
		extrn RegCreateKeyW:dword ; CODE XREF: sub_1003A39+16p
					; sub_1003C92+3Bp
					; DATA XREF: ...
; BOOL __stdcall IsTextUnicode(const void *lpv,	int iSize, LPINT lpiResult)
		extrn IsTextUnicode:dword ; CODE XREF: sub_10070B1+14p
					; DATA XREF: sub_10070B1+14r
; LSTATUS __stdcall RegQueryValueExA(HKEY hKey,	LPCSTR lpValueName, LPDWORD lpReserved,	LPDWORD	lpType,	LPBYTE lpData, LPDWORD lpcbData)
		extrn RegQueryValueExA:dword ; CODE XREF: sub_100725F+40p
					; DATA XREF: sub_100725F+40r
; LSTATUS __stdcall RegOpenKeyExA(HKEY hKey, LPCSTR lpSubKey, DWORD ulOptions, REGSAM samDesired, PHKEY	phkResult)
		extrn RegOpenKeyExA:dword ; CODE XREF: sub_100725F+1Ep
					; DATA XREF: sub_100725F+1Er
; LSTATUS __stdcall RegSetValueExW(HKEY	hKey, LPCWSTR lpValueName, DWORD Reserved, DWORD dwType, const BYTE *lpData, DWORD cbData)
		extrn RegSetValueExW:dword ; CODE XREF:	sub_100393A+15p
					; sub_100395E+20p
					; DATA XREF: ...

;
; Imports from COMCTL32.dll
;
; HWND __stdcall CreateStatusWindowW(LONG style, LPCWSTR lpszText, HWND	hwndParent, UINT wID)
		extrn CreateStatusWindowW:dword	; CODE XREF: sub_1004565+23Fp
					; DATA XREF: sub_1004565+23Fr ...

;
; Imports from GDI32.dll
;
; int __stdcall	EndPage(HDC hdc)
		extrn EndPage:dword	; CODE XREF: sub_1006773+537p
					; sub_1006773+5CAp
					; DATA XREF: ...
; int __stdcall	AbortDoc(HDC hdc)
		extrn AbortDoc:dword	; CODE XREF: sub_1006773+5F6p
					; DATA XREF: sub_1006773+5F6r
; int __stdcall	EndDoc(HDC hdc)
		extrn EndDoc:dword	; CODE XREF: sub_1006773:loc_1006DA1p
					; DATA XREF: sub_1006773:loc_1006DA1r
; BOOL __stdcall DeleteDC(HDC hdc)
		extrn DeleteDC:dword	; CODE XREF: sub_1006773+64Ap
					; DATA XREF: sub_1006773+64Ar
; int __stdcall	StartPage(HDC hdc)
		extrn StartPage:dword	; CODE XREF: sub_1006773+4F0p
					; DATA XREF: sub_1006773+4F0r
; BOOL __stdcall GetTextExtentPoint32W(HDC hdc,	LPCWSTR	lpString, int c, LPSIZE	psizl)
		extrn GetTextExtentPoint32W:dword ; CODE XREF: sub_1006657+91p
					; sub_1006657+E6p
					; DATA XREF: ...
; HDC __stdcall	CreateDCW(LPCWSTR pwszDriver, LPCWSTR pwszDevice, LPCWSTR pszPort, const DEVMODEW *pdm)
		extrn CreateDCW:dword	; CODE XREF: sub_1006428+7Cp
					; sub_10064F3+95p
					; DATA XREF: ...
; int __stdcall	SetAbortProc(HDC hdc, ABORTPROC	proc)
		extrn SetAbortProc:dword ; CODE	XREF: sub_1006773+2E4p
					; DATA XREF: sub_1006773+2E4r
; int __stdcall	GetTextFaceW(HDC hdc, int c, LPWSTR lpName)
		extrn GetTextFaceW:dword ; CODE	XREF: sub_1004565+326p
					; DATA XREF: sub_1004565+326r
; BOOL __stdcall TextOutW(HDC hdc, int x, int y, LPCWSTR lpString, int c)
		extrn TextOutW:dword	; CODE XREF: sub_1006657+71p
					; sub_1006657+C5p ...
; int __stdcall	StartDocW(HDC hdc, const DOCINFOW *lpdi)
		extrn StartDocW:dword	; CODE XREF: sub_1006773+3B2p
					; DATA XREF: sub_1006773+3B2r
; int __stdcall	EnumFontsW(HDC hdc, LPCWSTR lpLogfont, FONTENUMPROCW lpProc, LPARAM lParam)
		extrn EnumFontsW:dword	; CODE XREF: sub_1004565+359p
					; DATA XREF: sub_1004565+359r
; HGDIOBJ __stdcall GetStockObject(int i)
		extrn GetStockObject:dword ; CODE XREF:	sub_1003C92+14p
					; DATA XREF: sub_1003C92+14r
; int __stdcall	GetObjectW(HANDLE h, int c, LPVOID pv)
		extrn GetObjectW:dword	; CODE XREF: sub_1003C92+27p
					; DATA XREF: sub_1003C92+27r
; int __stdcall	GetDeviceCaps(HDC hdc, int index)
		extrn GetDeviceCaps:dword ; CODE XREF: sub_1002B87+4E7p
					; sub_1004565+2E5p ...
; HFONT	__stdcall CreateFontIndirectW(const LOGFONTW *lplf)
		extrn CreateFontIndirectW:dword	; CODE XREF: sub_1002B87+570p
					; sub_1004565+305p ...
; BOOL __stdcall DeleteObject(HGDIOBJ ho)
		extrn DeleteObject:dword ; CODE	XREF: sub_1002B87+582p
					; sub_1003429+1CAp ...
; BOOL __stdcall GetTextMetricsW(HDC hdc, LPTEXTMETRICW	lptm)
		extrn GetTextMetricsW:dword ; CODE XREF: sub_1006773+184p
					; sub_1006773+1FCp
					; DATA XREF: ...
; int __stdcall	SetBkMode(HDC hdc, int mode)
		extrn SetBkMode:dword	; CODE XREF: sub_1006773+170p
					; DATA XREF: sub_1006773+170r
; BOOL __stdcall LPtoDP(HDC hdc, LPPOINT lppt, int c)
		extrn LPtoDP:dword	; CODE XREF: sub_1006773+12Ep
					; DATA XREF: sub_1006773+12Er
; BOOL __stdcall SetWindowExtEx(HDC hdc, int x,	int y, LPSIZE lpsz)
		extrn SetWindowExtEx:dword ; CODE XREF:	sub_1006773+10Ep
					; DATA XREF: sub_1006773+10Er
; BOOL __stdcall SetViewportExtEx(HDC hdc, int x, int y, LPSIZE	lpsz)
		extrn SetViewportExtEx:dword ; CODE XREF: sub_1006773+F4p
					; DATA XREF: sub_1006773+F4r
; int __stdcall	SetMapMode(HDC hdc, int	iMode)
		extrn SetMapMode:dword	; CODE XREF: sub_1006773+DEp
					; sub_1006773+139p
					; DATA XREF: ...
; HGDIOBJ __stdcall SelectObject(HDC hdc, HGDIOBJ h)
		extrn SelectObject:dword ; CODE	XREF: sub_1004565+314p
					; sub_1004565+332p ...

;
; Imports from KERNEL32.dll
;
; DWORD	__stdcall GetCurrentThreadId()
		extrn GetCurrentThreadId:dword ; CODE XREF: .text:01007105p
					; DATA XREF: .text:01007105r ...
; DWORD	__stdcall GetTickCount()
		extrn GetTickCount:dword ; CODE	XREF: .text:0100710Dp
					; DATA XREF: .text:0100710Dr
; BOOL __stdcall QueryPerformanceCounter(LARGE_INTEGER *lpPerformanceCount)
		extrn QueryPerformanceCounter:dword ; CODE XREF: .text:01007119p
					; DATA XREF: .text:01007119r
; void __stdcall GetLocalTime(LPSYSTEMTIME lpSystemTime)
		extrn GetLocalTime:dword ; CODE	XREF: sub_1006773+63p
					; sub_1006F10+54p
					; DATA XREF: ...
; LCID __stdcall GetUserDefaultLCID()
		extrn GetUserDefaultLCID:dword ; CODE XREF: sub_1006773+69p
					; sub_1006F10+35p
					; DATA XREF: ...
; int __stdcall	GetDateFormatW(LCID Locale, DWORD dwFlags, const SYSTEMTIME *lpDate, LPCWSTR lpFormat, LPWSTR lpDateStr, int cchDate)
		extrn GetDateFormatW:dword ; CODE XREF:	sub_1006773+85p
					; sub_1006F10+AAp
					; DATA XREF: ...
; int __stdcall	GetTimeFormatW(LCID Locale, DWORD dwFlags, const SYSTEMTIME *lpTime, LPCWSTR lpFormat, LPWSTR lpTimeStr, int cchTime)
		extrn GetTimeFormatW:dword ; CODE XREF:	sub_1006773+9Ap
					; sub_1006F10+C4p
					; DATA XREF: ...
; LPVOID __stdcall GlobalLock(HGLOBAL hMem)
		extrn GlobalLock:dword	; CODE XREF: sub_1006428+57p
					; sub_1006428+68p
					; DATA XREF: ...
; BOOL __stdcall GlobalUnlock(HGLOBAL hMem)
		extrn GlobalUnlock:dword ; CODE	XREF: sub_1006428+90p
					; sub_1006428+9Cp
					; DATA XREF: ...
; BOOL __stdcall GetFileInformationByHandle(HANDLE hFile, LPBY_HANDLE_FILE_INFORMATION lpFileInformation)
		extrn GetFileInformationByHandle:dword ; CODE XREF: sub_1005179+58p
					; DATA XREF: sub_1005179+58r
; HANDLE __stdcall CreateFileMappingW(HANDLE hFile, LPSECURITY_ATTRIBUTES lpFileMappingAttributes, DWORD flProtect, DWORD dwMaximumSizeHigh, DWORD dwMaximumSizeLow, LPCWSTR lpName)
		extrn CreateFileMappingW:dword ; CODE XREF: sub_1005179+B5p
					; DATA XREF: sub_1005179+B5r
; void __stdcall GetSystemTimeAsFileTime(LPFILETIME lpSystemTimeAsFileTime)
		extrn GetSystemTimeAsFileTime:dword ; CODE XREF: .text:010070F1p
					; DATA XREF: .text:010070F1r
; BOOL __stdcall TerminateProcess(HANDLE hProcess, UINT	uExitCode)
		extrn TerminateProcess:dword ; CODE XREF: sub_1007147+10Ap
					; DATA XREF: sub_1007147+10Ar
; HANDLE __stdcall GetCurrentProcess()
		extrn GetCurrentProcess:dword ;	CODE XREF: sub_1007147+103p
					; DATA XREF: sub_1007147+103r
; LPTOP_LEVEL_EXCEPTION_FILTER __stdcall SetUnhandledExceptionFilter(LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter)
		extrn SetUnhandledExceptionFilter:dword	; CODE XREF: sub_1007147+EEp
					; DATA XREF: sub_1007147+EEr
; HMODULE __stdcall LoadLibraryA(LPCSTR	lpLibFileName)
		extrn LoadLibraryA:dword ; CODE	XREF: sub_10072C3+4Bp
					; sub_10072C3+61p
					; DATA XREF: ...
; HMODULE __stdcall GetModuleHandleA(LPCSTR lpModuleName)
		extrn GetModuleHandleA:dword ; CODE XREF: start+15p start+16Cp
					; DATA XREF: ...
; void __stdcall GetStartupInfoA(LPSTARTUPINFOA	lpStartupInfo)
		extrn GetStartupInfoA:dword ; CODE XREF: start+148p
					; DATA XREF: start+148r
; HGLOBAL __stdcall GlobalFree(HGLOBAL hMem)
		extrn GlobalFree:dword	; CODE XREF: sub_1001929+11p
					; sub_1001929+1Dp
					; DATA XREF: ...
; int __stdcall	GetLocaleInfoW(LCID Locale, LCTYPE LCType, LPWSTR lpLCData, int	cchData)
		extrn GetLocaleInfoW:dword ; CODE XREF:	sub_100195D+27p
					; DATA XREF: sub_100195D+27r
; HLOCAL __stdcall LocalFree(HLOCAL hMem)
		extrn LocalFree:dword	; CODE XREF: sub_1001F70+57p
					; sub_1002936+F4p ...
; HLOCAL __stdcall LocalAlloc(UINT uFlags, SIZE_T uBytes)
		extrn LocalAlloc:dword	; CODE XREF: sub_1001F70+2Cp
					; sub_1004047+56p ...
; int __stdcall	lstrlenW(LPCWSTR lpString)
		extrn lstrlenW:dword	; CODE XREF: sub_1001F70+16p
					; sub_1001F70+21p ...
; BOOL __stdcall LocalUnlock(HLOCAL hMem)
		extrn LocalUnlock:dword	; CODE XREF: sub_100207F+115p
					; sub_1004CFF+A1p ...
; int __stdcall	CompareStringW(LCID Locale, DWORD dwCmpFlags, PCNZWCH lpString1, int cchCount1,	PCNZWCH	lpString2, int cchCount2)
		extrn CompareStringW:dword ; CODE XREF:	sub_100207F+C7p
					; sub_100580B+8Bp ...
; LPVOID __stdcall LocalLock(HLOCAL hMem)
		extrn LocalLock:dword	; CODE XREF: sub_100207F+5Fp
					; sub_1004CFF+92p ...
; int __stdcall	FoldStringW(DWORD dwMapFlags, LPCWSTR lpSrcStr,	int cchSrc, LPWSTR lpDestStr, int cchDest)
		extrn FoldStringW:dword	; CODE XREF: DialogFunc+94p
					; DATA XREF: DialogFunc+94r
; BOOL __stdcall CloseHandle(HANDLE hObject)
		extrn CloseHandle:dword	; CODE XREF: sub_1002452+2A1p
					; sub_1004EAE+216p ...
; LPWSTR __stdcall lstrcpyW(LPWSTR lpString1, LPCWSTR lpString2)
		extrn lstrcpyW:dword	; CODE XREF: sub_1002452+295p
					; sub_100270F+106p ...
; BOOL __stdcall ReadFile(HANDLE hFile,	LPVOID lpBuffer, DWORD nNumberOfBytesToRead, LPDWORD lpNumberOfBytesRead, LPOVERLAPPED lpOverlapped)
		extrn ReadFile:dword	; CODE XREF: sub_1002452+22Bp
					; DATA XREF: sub_1002452+22Br
; HANDLE __stdcall CreateFileW(LPCWSTR lpFileName, DWORD dwDesiredAccess, DWORD	dwShareMode, LPSECURITY_ATTRIBUTES lpSecurityAttributes, DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE hTemplateFile)
		extrn CreateFileW:dword	; CODE XREF: sub_1002452+201p
					; sub_1002B87+223p ...
; int __stdcall	lstrcmpiW(LPCWSTR lpString1, LPCWSTR lpString2)
		extrn lstrcmpiW:dword	; CODE XREF: sub_1002452+1DAp
					; sub_1004565+341p
					; DATA XREF: ...
; DWORD	__stdcall GetCurrentProcessId()
		extrn GetCurrentProcessId:dword	; CODE XREF: sub_1002936+59p
					; .text:010070FDp
					; DATA XREF: ...
; FARPROC __stdcall GetProcAddress(HMODULE hModule, LPCSTR lpProcName)
		extrn GetProcAddress:dword ; CODE XREF:	sub_1002936+20p
					; sub_10072C3+7Bp
					; DATA XREF: ...
; LPWSTR __stdcall GetCommandLineW()
		extrn GetCommandLineW:dword ; CODE XREF: sub_1002936+Ap
					; DATA XREF: sub_1002936+Ar
; LPWSTR __stdcall lstrcatW(LPWSTR lpString1, LPCWSTR lpString2)
		extrn lstrcatW:dword	; CODE XREF: sub_1002A55+108p
					; sub_1004DCD+43p ...
; BOOL __stdcall FindClose(HANDLE hFindFile)
		extrn FindClose:dword	; CODE XREF: sub_1002A55+8Fp
					; sub_1003F99+92p
					; DATA XREF: ...
; HANDLE __stdcall FindFirstFileW(LPCWSTR lpFileName, LPWIN32_FIND_DATAW lpFindFileData)
		extrn FindFirstFileW:dword ; CODE XREF:	sub_1002A55+68p
					; sub_1003F99+75p ...
; DWORD	__stdcall GetFileAttributesW(LPCWSTR lpFileName)
		extrn GetFileAttributesW:dword ; CODE XREF: sub_1002A55+5Ap
					; DATA XREF: sub_1002A55+5Ar
; int __stdcall	lstrcmpW(LPCWSTR lpString1, LPCWSTR lpString2)
		extrn lstrcmpW:dword	; CODE XREF: sub_1002A55+36p
					; DATA XREF: sub_1002A55+36r
; int __stdcall	MulDiv(int nNumber, int	nNumerator, int	nDenominator)
		extrn MulDiv:dword	; CODE XREF: sub_1002B87+4F4p
					; sub_1004565+2F2p
					; DATA XREF: ...
; LPWSTR __stdcall lstrcpynW(LPWSTR lpString1, LPCWSTR lpString2, int iMaxLength)
		extrn lstrcpynW:dword	; CODE XREF: sub_1002B87+117p
					; sub_1002B87+168p ...
; SIZE_T __stdcall LocalSize(HLOCAL hMem)
		extrn LocalSize:dword	; CODE XREF: sub_10040BA+29p
					; DATA XREF: sub_10040BA+29r
; DWORD	__stdcall GetLastError()
		extrn GetLastError:dword ; CODE	XREF: sub_100419E+B0p
					; sub_10042F9+E7p ...
; BOOL __stdcall WriteFile(HANDLE hFile, LPCVOID lpBuffer, DWORD nNumberOfBytesToWrite,	LPDWORD	lpNumberOfBytesWritten,	LPOVERLAPPED lpOverlapped)
		extrn WriteFile:dword	; CODE XREF: sub_1004B99+91p
					; sub_1004EAE+EDp ...
; void __stdcall SetLastError(DWORD dwErrCode)
		extrn SetLastError:dword ; CODE	XREF: sub_1004B99+61p
					; sub_1006773+39Fp ...
; int __stdcall	WideCharToMultiByte(UINT CodePage, DWORD dwFlags, LPCWSTR lpWideCharStr, int cchWideChar, LPSTR	lpMultiByteStr,	int cbMultiByte, LPCSTR	lpDefaultChar, LPBOOL lpUsedDefaultChar)
		extrn WideCharToMultiByte:dword	; CODE XREF: sub_1004B99+44p
					; sub_1004B99+7Dp ...
; HLOCAL __stdcall LocalReAlloc(HLOCAL hMem, SIZE_T uBytes, UINT uFlags)
		extrn LocalReAlloc:dword ; CODE	XREF: sub_1004CFF+7Dp
					; sub_1005179+277p
					; DATA XREF: ...
; DWORD	__stdcall FormatMessageW(DWORD dwFlags,	LPCVOID	lpSource, DWORD	dwMessageId, DWORD dwLanguageId, LPWSTR	lpBuffer, DWORD	nSize, va_list *Arguments)
		extrn FormatMessageW:dword ; CODE XREF:	sub_1004E20+3Dp
					; sub_1006E4B+75p
					; DATA XREF: ...
; LANGID __stdcall GetUserDefaultUILanguage()
		extrn GetUserDefaultUILanguage:dword ; CODE XREF: sub_1004E20+25p
					; sub_1006E4B+63p
					; DATA XREF: ...
; BOOL __stdcall SetEndOfFile(HANDLE hFile)
		extrn SetEndOfFile:dword ; CODE	XREF: sub_1004EAE+25Bp
					; DATA XREF: sub_1004EAE+25Br
; BOOL __stdcall DeleteFileW(LPCWSTR lpFileName)
		extrn DeleteFileW:dword	; CODE XREF: sub_1004EAE+239p
					; DATA XREF: sub_1004EAE+239r
; UINT __stdcall GetACP()
		extrn GetACP:dword	; CODE XREF: sub_1004EAE+FCp
					; DATA XREF: sub_1004EAE+FCr
; BOOL __stdcall UnmapViewOfFile(LPCVOID lpBaseAddress)
		extrn UnmapViewOfFile:dword ; CODE XREF: sub_1005179+2DDp
					; sub_1005179+498p
					; DATA XREF: ...
; int __stdcall	MultiByteToWideChar(UINT CodePage, DWORD dwFlags, LPCSTR lpMultiByteStr, int cbMultiByte, LPWSTR lpWideCharStr,	int cchWideChar)
		extrn MultiByteToWideChar:dword	; CODE XREF: sub_1005179+226p
					; sub_1005179+429p
					; DATA XREF: ...
; LPVOID __stdcall MapViewOfFile(HANDLE	hFileMappingObject, DWORD dwDesiredAccess, DWORD dwFileOffsetHigh, DWORD dwFileOffsetLow, SIZE_T dwNumberOfBytesToMap)
		extrn MapViewOfFile:dword ; CODE XREF: sub_1005179+CBp
					; DATA XREF: sub_1005179+CBr
; LONG __stdcall UnhandledExceptionFilter(struct _EXCEPTION_POINTERS *ExceptionInfo)
		extrn UnhandledExceptionFilter:dword ; CODE XREF: sub_1007147+F8p
					; DATA XREF: sub_1007147+F8r

;
; Imports from SHELL32.dll
;
; void __stdcall DragFinish(HDROP hDrop)
		extrn DragFinish:dword	; CODE XREF: sub_10033DC+3Dp
					; DATA XREF: sub_10033DC+3Dr ...
; UINT __stdcall DragQueryFileW(HDROP hDrop, UINT iFile, LPWSTR	lpszFile, UINT cch)
		extrn DragQueryFileW:dword ; CODE XREF:	sub_10033DC+15p
					; sub_10033DC+2Ap
					; DATA XREF: ...
; void __stdcall DragAcceptFiles(HWND hWnd, BOOL fAccept)
		extrn DragAcceptFiles:dword ; CODE XREF: sub_1004565+1BDp
					; DATA XREF: sub_1004565+1BDr
; INT __stdcall	ShellAboutW(HWND hWnd, LPCWSTR szApp, LPCWSTR szOtherStuff, HICON hIcon)
		extrn ShellAboutW:dword	; CODE XREF: sub_1002B87+7DAp
					; DATA XREF: sub_1002B87+7DAr

;
; Imports from USER32.dll
;
; BOOL __stdcall GetClientRect(HWND hWnd, LPRECT lpRect)
		extrn GetClientRect:dword ; CODE XREF: sub_1002B87+6A1p
					; sub_1004565+1D3p ...
; HCURSOR __stdcall SetCursor(HCURSOR hCursor)
		extrn SetCursor:dword	; CODE XREF: sub_1002B87+56Dp
					; sub_1002B87+5B0p ...
; int __stdcall	ReleaseDC(HWND hWnd, HDC hDC)
		extrn ReleaseDC:dword	; CODE XREF: sub_1002B87+546p
					; sub_1004565+38Cp
					; DATA XREF: ...
; HDC __stdcall	GetDC(HWND hWnd)
		extrn GetDC:dword	; CODE XREF: sub_1002B87+4AEp
					; sub_1004565+53p
					; DATA XREF: ...
; INT_PTR __stdcall DialogBoxParamW(HINSTANCE hInstance, LPCWSTR lpTemplateName, HWND hWndParent, DLGPROC lpDialogFunc,	LPARAM dwInitParam)
		extrn DialogBoxParamW:dword ; CODE XREF: sub_1002B87+3B7p
					; DATA XREF: sub_1002B87+3B7r
; HWND __stdcall SetActiveWindow(HWND hWnd)
		extrn SetActiveWindow:dword ; CODE XREF: sub_10033DC+2Fp
					; DATA XREF: sub_10033DC+2Fr
; HKL __stdcall	GetKeyboardLayout(DWORD	idThread)
		extrn GetKeyboardLayout:dword ;	CODE XREF: sub_1003429+3BBp
					; sub_1004565+5D2p
					; DATA XREF: ...
; LRESULT __stdcall DefWindowProcW(HWND	hWnd, UINT Msg,	WPARAM wParam, LPARAM lParam)
		extrn DefWindowProcW:dword ; CODE XREF:	sub_1003429+3ADp
					; sub_1003429+493p
					; DATA XREF: ...
; BOOL __stdcall DestroyWindow(HWND hWnd)
		extrn DestroyWindow:dword ; CODE XREF: sub_1003429+1BAp
					; sub_1003429+1C2p ...
; BOOL __stdcall MessageBeep(UINT uType)
		extrn MessageBeep:dword	; CODE XREF: sub_1003429+13Cp
					; sub_1003429+13Fp
					; DATA XREF: ...
; BOOL __stdcall ShowWindow(HWND hWnd, int nCmdShow)
		extrn ShowWindow:dword	; CODE XREF: sub_1002B87+6BCp
					; sub_1002B87+71Cp ...
; HWND __stdcall GetForegroundWindow()
		extrn GetForegroundWindow:dword	; CODE XREF: sub_1003429+81p
					; sub_1003429+8Bp
					; DATA XREF: ...
; BOOL __stdcall IsIconic(HWND hWnd)
		extrn IsIconic:dword	; CODE XREF: sub_1003429+4Bp
					; sub_1003429+71p
					; DATA XREF: ...
; BOOL __stdcall GetWindowPlacement(HWND hWnd, WINDOWPLACEMENT *lpwndpl)
		extrn GetWindowPlacement:dword ; CODE XREF: sub_1003A39+1F7p
					; DATA XREF: sub_1003A39+1F7r
; LPWSTR __stdcall CharUpperW(LPWSTR lpsz)
		extrn CharUpperW:dword	; CODE XREF: sub_1003F4C+1Fp
					; sub_1003F4C+2Cp ...
; int __stdcall	LoadStringW(HINSTANCE hInstance, UINT uID, LPWSTR lpBuffer, int	cchBufferMax)
		extrn LoadStringW:dword	; CODE XREF: sub_1004047+29p
					; sub_10040BA+48p
					; DATA XREF: ...
; HACCEL __stdcall LoadAcceleratorsW(HINSTANCE hInstance, LPCWSTR lpTableName)
		extrn LoadAcceleratorsW:dword ;	CODE XREF: sub_100419E+4Cp
					; sub_1004565+A5p
					; DATA XREF: ...
; HMENU	__stdcall GetSystemMenu(HWND hWnd, BOOL	bRevert)
		extrn GetSystemMenu:dword ; CODE XREF: sub_100419E+36p
					; sub_10065CB+46p
					; DATA XREF: ...
; ATOM __stdcall RegisterClassExW(const	WNDCLASSEXW *)
		extrn RegisterClassExW:dword ; CODE XREF: sub_10044D7+79p
					; DATA XREF: sub_10044D7+79r
; HANDLE __stdcall LoadImageW(HINSTANCE	hInst, LPCWSTR name, UINT type,	int cx,	int cy,	UINT fuLoad)
		extrn LoadImageW:dword	; CODE XREF: sub_10044D7+44p
					; DATA XREF: sub_10044D7+44r
; HCURSOR __stdcall LoadCursorW(HINSTANCE hInstance, LPCWSTR lpCursorName)
		extrn LoadCursorW:dword	; CODE XREF: sub_10044D7+25p
					; sub_1004565+8Bp ...
; BOOL __stdcall SetWindowPlacement(HWND hWnd, const WINDOWPLACEMENT *lpwndpl)
		extrn SetWindowPlacement:dword ; CODE XREF: sub_1004565+1AEp
					; DATA XREF: sub_1004565+1AEr
; HWND __stdcall CreateWindowExW(DWORD dwExStyle, LPCWSTR lpClassName, LPCWSTR lpWindowName, DWORD dwStyle, int	X, int Y, int nWidth, int nHeight, HWND	hWndParent, HMENU hMenu, HINSTANCE hInstance, LPVOID lpParam)
		extrn CreateWindowExW:dword ; CODE XREF: sub_1004565+12Fp
					; sub_1004565+20Cp ...
; HWND __stdcall GetDesktopWindow()
		extrn GetDesktopWindow:dword ; CODE XREF: sub_1002B87+72Ep
					; DATA XREF: sub_1002B87+72Er
; HWND __stdcall GetFocus()
		extrn GetFocus:dword	; CODE XREF: sub_1002B87:loc_1003320p
					; DATA XREF: sub_1002B87:loc_1003320r
; HICON	__stdcall LoadIconW(HINSTANCE hInstance, LPCWSTR lpIconName)
		extrn LoadIconW:dword	; CODE XREF: sub_1002B87+7C2p
					; sub_10044D7+31p
					; DATA XREF: ...
; BOOL __stdcall SetWindowTextW(HWND hWnd, LPCWSTR lpString)
		extrn SetWindowTextW:dword ; CODE XREF:	sub_1002A55+11Bp
					; DATA XREF: sub_1002A55+11Br
; void __stdcall PostQuitMessage(int nExitCode)
		extrn PostQuitMessage:dword ; CODE XREF: sub_1003429+FFp
					; DATA XREF: sub_1003429+FFr
; UINT __stdcall RegisterWindowMessageW(LPCWSTR	lpString)
		extrn RegisterWindowMessageW:dword ; CODE XREF:	sub_1004565+2Dp
					; sub_1004565+43p
					; DATA XREF: ...
; BOOL __stdcall UpdateWindow(HWND hWnd)
		extrn UpdateWindow:dword ; CODE	XREF: sub_1005179+638p
					; DATA XREF: sub_1005179+638r
; int __stdcall	SetScrollPos(HWND hWnd,	int nBar, int nPos, BOOL bRedraw)
		extrn SetScrollPos:dword ; CODE	XREF: sub_1005179+612p
					; DATA XREF: sub_1005179+612r
; LPWSTR __stdcall CharLowerW(LPWSTR lpsz)
		extrn CharLowerW:dword	; CODE XREF: sub_100580B+1Ep
					; sub_10058B8+26p
					; DATA XREF: ...
; BOOL __stdcall PeekMessageW(LPMSG lpMsg, HWND	hWnd, UINT wMsgFilterMin, UINT wMsgFilterMax, UINT wRemoveMsg)
		extrn PeekMessageW:dword ; CODE	XREF: proc+16p
					; DATA XREF: proc+16r
; BOOL __stdcall EnableWindow(HWND hWnd, BOOL bEnable)
		extrn EnableWindow:dword ; CODE	XREF: sub_1005F3C+8p
					; sub_1006773+349p
					; DATA XREF: ...
; int __stdcall	DrawTextExW(HDC	hdc, LPWSTR lpchText, int cchText, LPRECT lprc,	UINT format, LPDRAWTEXTPARAMS lpdtp)
		extrn DrawTextExW:dword	; CODE XREF: sub_1006773+529p
					; DATA XREF: sub_1006773+529r
; HWND __stdcall CreateDialogParamW(HINSTANCE hInstance, LPCWSTR lpTemplateName, HWND hWndParent, DLGPROC lpDialogFunc,	LPARAM dwInitParam)
		extrn CreateDialogParamW:dword ; CODE XREF: sub_1006773+363p
					; DATA XREF: sub_1006773+363r
; int __stdcall	GetWindowTextW(HWND hWnd, LPWSTR lpString, int nMaxCount)
		extrn GetWindowTextW:dword ; CODE XREF:	sub_1006773+33Cp
					; DATA XREF: sub_1006773+33Cr
; int __stdcall	GetSystemMetrics(int nIndex)
		extrn GetSystemMetrics:dword ; CODE XREF: sub_1002936+19p
					; sub_10044D7+12p ...
; BOOL __stdcall MoveWindow(HWND hWnd, int X, int Y, int nWidth, int nHeight, BOOL bRepaint)
		extrn MoveWindow:dword	; CODE XREF: sub_10019E0+39p
					; DATA XREF: sub_10019E0+39r
; BOOL __stdcall InvalidateRect(HWND hWnd, const RECT *lpRect, BOOL bErase)
		extrn InvalidateRect:dword ; CODE XREF:	sub_10019E0+Fp
					; sub_1005179+62Cp
					; DATA XREF: ...
; BOOL __stdcall WinHelpW(HWND hWndMain, LPCWSTR lpszHelp, UINT	uCommand, ULONG_PTR dwData)
		extrn WinHelpW:dword	; CODE XREF: sub_1001A28:loc_1001B86p
					; DialogFunc:loc_1002381p ...
; int __stdcall	GetDlgCtrlID(HWND hWnd)
		extrn GetDlgCtrlID:dword ; CODE	XREF: sub_1001A28+10Cp
					; sub_1001A28+136p ...
; HWND __stdcall ChildWindowFromPoint(HWND hWndParent, POINT Point)
		extrn ChildWindowFromPoint:dword ; CODE	XREF: sub_1001A28+103p
					; sub_1002452+12Fp ...
; BOOL __stdcall ScreenToClient(HWND hWnd, LPPOINT lpPoint)
		extrn ScreenToClient:dword ; CODE XREF:	sub_1001A28+F4p
					; sub_1002452+11Cp ...
; BOOL __stdcall GetCursorPos(LPPOINT lpPoint)
		extrn GetCursorPos:dword ; CODE	XREF: sub_1001A28+E7p
					; sub_1002452+10Ep ...
; LRESULT __stdcall SendDlgItemMessageW(HWND hDlg, int nIDDlgItem, UINT	Msg, WPARAM wParam, LPARAM lParam)
		extrn SendDlgItemMessageW:dword	; CODE XREF: sub_1001A28+3Cp
					; sub_1001A28+6Bp ...
; LRESULT __stdcall SendMessageW(HWND hWnd, UINT Msg, WPARAM wParam, LPARAM lParam)
		extrn SendMessageW:dword ; CODE	XREF: sub_1001B99+1Ep
					; sub_1001B99+32p ...
; LPWSTR __stdcall CharNextW(LPCWSTR lpsz)
		extrn CharNextW:dword	; CODE XREF: sub_1001BE8+2Fp
					; sub_1001D2B+27p
					; DATA XREF: ...
; DWORD	__stdcall CheckMenuItem(HMENU hMenu, UINT uIDCheckItem,	UINT uCheck)
		extrn CheckMenuItem:dword ; CODE XREF: sub_1001D73+16Ap
					; sub_1001D73+181p ...
; BOOL __stdcall CloseClipboard()
		extrn CloseClipboard:dword ; CODE XREF:	sub_1001D73+BBp
					; DATA XREF: sub_1001D73+BBr
; BOOL __stdcall IsClipboardFormatAvailable(UINT format)
		extrn IsClipboardFormatAvailable:dword ; CODE XREF: sub_1001D73+B2p
					; DATA XREF: sub_1001D73+B2r
; BOOL __stdcall OpenClipboard(HWND hWndNewOwner)
		extrn OpenClipboard:dword ; CODE XREF: sub_1001D73+A6p
					; DATA XREF: sub_1001D73+A6r
; UINT __stdcall GetMenuState(HMENU hMenu, UINT	uId, UINT uFlags)
		extrn GetMenuState:dword ; CODE	XREF: sub_1001D73+88p
					; sub_100594C+5Bp
					; DATA XREF: ...
; BOOL __stdcall EnableMenuItem(HMENU hMenu, UINT uIDEnableItem, UINT uEnable)
		extrn EnableMenuItem:dword ; CODE XREF:	sub_1001D73+5Cp
					; sub_1001D73+6Cp ...
; HMENU	__stdcall GetSubMenu(HMENU hMenu, int nPos)
		extrn GetSubMenu:dword	; CODE XREF: sub_1001D73+53p
					; sub_1001D73+69p ...
; HMENU	__stdcall GetMenu(HWND hWnd)
		extrn GetMenu:dword	; CODE XREF: sub_1001D73+15p
					; sub_1002B87+352p ...
; int __stdcall	MessageBoxW(HWND hWnd, LPCWSTR lpText, LPCWSTR lpCaption, UINT uType)
		extrn MessageBoxW:dword	; CODE XREF: sub_1001F70+4Ep
					; sub_1001F70+6Bp ...
; LONG __stdcall SetWindowLongW(HWND hWnd, int nIndex, LONG dwNewLong)
		extrn SetWindowLongW:dword ; CODE XREF:	DialogFunc+14Dp
					; sub_100419E+64p ...
; LONG __stdcall GetWindowLongW(HWND hWnd, int nIndex)
		extrn GetWindowLongW:dword ; CODE XREF:	DialogFunc+13Ep
					; sub_1005B41+12Ap ...
; HWND __stdcall GetDlgItem(HWND hDlg, int nIDDlgItem)
		extrn GetDlgItem:dword	; CODE XREF: DialogFunc+133p
					; DATA XREF: DialogFunc+133r
; HWND __stdcall SetFocus(HWND hWnd)
		extrn SetFocus:dword	; CODE XREF: DialogFunc+121p
					; DialogFunc+1B0p ...
; BOOL __stdcall SetDlgItemTextW(HWND hDlg, int	nIDDlgItem, LPCWSTR lpString)
		extrn SetDlgItemTextW:dword ; CODE XREF: DialogFunc+11Ap
					; DialogFunc+1A9p ...
; int wsprintfW(LPWSTR,	LPCWSTR, ...)
		extrn wsprintfW:dword	; CODE XREF: DialogFunc+108p
					; DialogFunc+197p ...
; UINT __stdcall GetDlgItemTextW(HWND hDlg, int	nIDDlgItem, LPWSTR lpString, int cchMax)
		extrn GetDlgItemTextW:dword ; CODE XREF: DialogFunc+7Dp
					; sub_1005F63+10Fp
					; DATA XREF: ...
; BOOL __stdcall EndDialog(HWND	hDlg, INT_PTR nResult)
		extrn EndDialog:dword	; CODE XREF: DialogFunc+5Fp
					; DATA XREF: DialogFunc+5Fr
; HWND __stdcall GetParent(HWND	hWnd)
		extrn GetParent:dword	; CODE XREF: sub_1002452+1B8p
					; DATA XREF: sub_1002452+1B8r
; BOOL __stdcall UnhookWinEvent(HWINEVENTHOOK hWinEventHook)
		extrn UnhookWinEvent:dword ; CODE XREF:	sub_1002936+FFp
					; DATA XREF: sub_1002936+FFr
; LRESULT __stdcall DispatchMessageW(const MSG *lpMsg)
		extrn DispatchMessageW:dword ; CODE XREF: sub_1002936+D6p
					; proc+46p
					; DATA XREF: ...
; BOOL __stdcall TranslateMessage(const	MSG *lpMsg)
		extrn TranslateMessage:dword ; CODE XREF: sub_1002936+CCp
					; proc+3Cp
					; DATA XREF: ...
; int __stdcall	TranslateAcceleratorW(HWND hWnd, HACCEL	hAccTable, LPMSG lpMsg)
		extrn TranslateAcceleratorW:dword ; CODE XREF: sub_1002936+BEp
					; DATA XREF: sub_1002936+BEr
; BOOL __stdcall IsDialogMessageW(HWND hDlg, LPMSG lpMsg)
		extrn IsDialogMessageW:dword ; CODE XREF: sub_1002936+A4p
					; proc+2Ep
					; DATA XREF: ...
; BOOL __stdcall PostMessageW(HWND hWnd, UINT Msg, WPARAM wParam, LPARAM lParam)
		extrn PostMessageW:dword ; CODE	XREF: sub_1002936+90p
					; sub_1002B87:loc_1002E94p ...
; BOOL __stdcall GetMessageW(LPMSG lpMsg, HWND hWnd, UINT wMsgFilterMin, UINT wMsgFilterMax)
		extrn GetMessageW:dword	; CODE XREF: sub_1002936+E3p
					; DATA XREF: sub_1002936+73r
; HWINEVENTHOOK	__stdcall SetWinEventHook(DWORD	eventMin, DWORD	eventMax, HMODULE hmodWinEventProc, WINEVENTPROC pfnWinEventProc, DWORD	idProcess, DWORD idThread, DWORD dwFlags)
		extrn SetWinEventHook:dword ; CODE XREF: sub_1002936+6Dp
					; DATA XREF: sub_1002936+6Dr

;
; Imports from WINSPOOL.DRV
;
; BOOL __stdcall GetPrinterDriverW(HANDLE hPrinter, LPWSTR pEnvironment, DWORD Level, LPBYTE pDriverInfo, DWORD	cbBuf, LPDWORD pcbNeeded)
		extrn __imp_GetPrinterDriverW:dword ; DATA XREF: GetPrinterDriverWr
					; .text:0100763Co
; BOOL __stdcall ClosePrinter(HANDLE hPrinter)
		extrn __imp_ClosePrinter:dword ; DATA XREF: ClosePrinterr
; BOOL __stdcall OpenPrinterW(LPWSTR pPrinterName, LPHANDLE phPrinter, LPPRINTER_DEFAULTSW pDefault)
		extrn __imp_OpenPrinterW:dword ; DATA XREF: OpenPrinterWr

;
; Imports from comdlg32.dll
;
; BOOL __stdcall PageSetupDlgW(LPPAGESETUPDLGW)
		extrn PageSetupDlgW:dword ; CODE XREF: sub_1002B87+2AFp
					; sub_1005E6D+2Ep ...
; HWND __stdcall FindTextW(LPFINDREPLACEW)
		extrn FindTextW:dword	; CODE XREF: sub_1002B87+47Fp
					; DATA XREF: sub_1002B87+47Fr
; HRESULT __stdcall PrintDlgExW(LPPRINTDLGEXW pPD)
		extrn PrintDlgExW:dword	; CODE XREF: sub_1005E6D+79p
					; DATA XREF: sub_1005E6D+79r
; BOOL __stdcall ChooseFontW(LPCHOOSEFONTW)
		extrn ChooseFontW:dword	; CODE XREF: sub_1002B87+553p
					; DATA XREF: sub_1002B87+553r
; __int16 __stdcall GetFileTitleW(LPCWSTR, LPWSTR Buf, WORD cchSize)
		extrn GetFileTitleW:dword ; CODE XREF: sub_1002A55+B9p
					; sub_1006091+2E0p
					; DATA XREF: ...
; BOOL __stdcall GetOpenFileNameW(LPOPENFILENAMEW)
		extrn GetOpenFileNameW:dword ; CODE XREF: sub_1002B87+1FCp
					; DATA XREF: sub_1002B87+1FCr
; HWND __stdcall ReplaceTextW(LPFINDREPLACEW)
		extrn ReplaceTextW:dword ; CODE	XREF: sub_1002B87+41Fp
					; DATA XREF: sub_1002B87+41Fr
; DWORD	__stdcall CommDlgExtendedError()
		extrn CommDlgExtendedError:dword ; CODE	XREF: sub_1001FF0+13p
					; sub_100270F+1C1p ...
; BOOL __stdcall GetSaveFileNameW(LPOPENFILENAMEW)
		extrn GetSaveFileNameW:dword ; CODE XREF: sub_100270F+1ADp
					; sub_1002B87+139p
					; DATA XREF: ...

;
; Imports from msvcrt.dll
;
		extrn __imp__XcptFilter:dword ;	DATA XREF: _XcptFilterr
					; .text:01007664o
; void __cdecl exit(int	Code)
		extrn _exit:dword	; CODE XREF: start+1AEp
					; DATA XREF: start+1AEr
; void __cdecl c_exit()
		extrn _c_exit:dword	; CODE XREF: start:loc_1007551p
					; DATA XREF: start:loc_1007551r
; time_t __cdecl time(time_t *Time)
		extrn time:dword	; CODE XREF: sub_1006091+3Dp
					; DATA XREF: sub_1006091+3Dr
; struct tm *__cdecl localtime(const time_t *Time)
		extrn localtime:dword	; CODE XREF: sub_1006091+4Ap
					; DATA XREF: sub_1006091+4Ar
; void __cdecl cexit()
		extrn _cexit:dword	; CODE XREF: start:loc_1007522p
					; DATA XREF: start:loc_1007522r
; int __cdecl iswctype(wint_t C, wctype_t Type)
		extrn iswctype:dword	; CODE XREF: sub_1006091+24Ap
					; DATA XREF: sub_1006091+24Ar
		extrn _except_handler3:dword ; DATA XREF: .text:loc_10075BAr
; __int32 __cdecl wtol(const wchar_t *Str)
		extrn _wtol:dword	; CODE XREF: DialogFunc+A1p
					; DATA XREF: DialogFunc+A1r
; int __cdecl wcsncmp(const wchar_t *Str1, const wchar_t *Str2,	size_t MaxCount)
		extrn wcsncmp:dword	; CODE XREF: sub_100207F+95p
					; sub_100580B+6Cp ...
; int snwprintf(wchar_t	*Dest, size_t Count, const wchar_t *Format, ...)
		extrn _snwprintf:dword	; CODE XREF: sub_1001C42+92p
					; sub_1001FF0+50p ...
; void __cdecl exit(int	Code)
		extrn exit:dword	; CODE XREF: start+17Fp
					; DATA XREF: start+17Fr
		extrn _acmdln:dword	; DATA XREF: start+111r
		extrn __getmainargs:dword ; CODE XREF: start+F6p
					; DATA XREF: start+F6r
		extrn __imp__initterm:dword ; DATA XREF: _inittermr
		extrn __setusermatherr:dword ; CODE XREF: start+BDp
					; DATA XREF: start+BDr
		extrn _adjust_fdiv:dword ; DATA	XREF: start+9Fr
		extrn __p__commode:dword ; CODE	XREF: start+91p
					; DATA XREF: start+91r
		extrn __p__fmode:dword	; CODE XREF: start+83p
					; DATA XREF: start+83r
		extrn __set_app_type:dword ; CODE XREF:	start+6Ep
					; DATA XREF: start+6Er
; unsigned int __cdecl _controlfp(unsigned int NewValue, unsigned int Mask)
		extrn __imp__controlfp:dword ; DATA XREF: _controlfpr
; wchar_t *__cdecl wcsncpy(wchar_t *Dest, const	wchar_t	*Source, size_t	Count)
		extrn wcsncpy:dword	; CODE XREF: sub_1006091+201p
					; DATA XREF: sub_1006091+201r


; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 1001348h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
		dd 3 dup(0)
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------
		db 7Ch,	10h, 41h
		dd 0
		dd 2, 24h, 18F0h, 0CF0h
dword_100136C	dd 101h, 3EAh, 103h, 3EAh, 2 dup(0) ; DATA XREF: sub_1001A28:loc_1001B48o
					; sub_1001A28:loc_1001B76o ...
dword_1001384	dd 102h, 3EBh, 2 dup(0)	; DATA XREF: DialogFunc:loc_1002361o
					; DialogFunc:loc_1002371o
; const	WCHAR szOtherStuff
szOtherStuff	dw 0			; DATA XREF: sub_1002B87+7C9o
					; sub_1004565+10Co ...
		align 4
; const	WCHAR aD
aD:					; DATA XREF: DialogFunc+102o
					; DialogFunc+191o ...
		unicode	0, <%d>,0
		align 10h
aNpencodingdial:			; DATA XREF: sub_100270F+194o
					; sub_1002B87+DBo ...
		unicode	0, <NpEncodingDialog>,0
		align 4
aTxt:					; DATA XREF: sub_100270F+176o
					; sub_1002B87+F9o ...
		unicode	0, <txt>,0
; const	WCHAR a_txt
a_txt:					; DATA XREF: sub_100270F+D5o
					; sub_1002B87:loc_1002CA2o ...
		unicode	0, <*.txt>,0
; char ProcName[]
ProcName	db 'RegisterPenApp',0   ; DATA XREF: sub_1002936+10o
		align 4
aNotepad_chm	db 'notepad.chm',0      ; DATA XREF: sub_1002B87+729o
; const	WCHAR aIwindowposdy
aIwindowposdy:				; DATA XREF: sub_1003A39+23Co
					; sub_1003C92+271o
		unicode	0, <iWindowPosDY>,0
		align 10h
; const	WCHAR aIwindowposdx
aIwindowposdx:				; DATA XREF: sub_1003A39+228o
					; sub_1003C92+25Eo
		unicode	0, <iWindowPosDX>,0
		align 4
; const	WCHAR aIwindowposy
aIwindowposy:				; DATA XREF: sub_1003A39+214o
					; sub_1003C92+238o
		unicode	0, <iWindowPosY>,0
; const	WCHAR aIwindowposx
aIwindowposx:				; DATA XREF: sub_1003A39+204o
					; sub_1003C92+24Bo
		unicode	0, <iWindowPosX>,0
; const	WCHAR aFmle_is_broken
aFmle_is_broken:			; DATA XREF: sub_1003A39+1D9o
					; sub_1003C92+284o
		unicode	0, <fMLE_is_broken>,0
		align 4
; const	WCHAR aImarginright
aImarginright:				; DATA XREF: sub_1003A39+1C6o
					; sub_1003C92+225o
		unicode	0, <iMarginRight>,0
		align 4
; const	WCHAR aImarginleft
aImarginleft:				; DATA XREF: sub_1003A39+1B3o
					; sub_1003C92+20Do
		unicode	0, <iMarginLeft>,0
; const	WCHAR aImarginbottom
aImarginbottom:				; DATA XREF: sub_1003A39+1A0o
					; sub_1003C92+1F5o
		unicode	0, <iMarginBottom>,0
; const	WCHAR aImargintop
aImargintop:				; DATA XREF: sub_1003A39+18Do
					; sub_1003C92+1DDo
		unicode	0, <iMarginTop>,0
		align 4
; const	WCHAR aSztrailer
aSztrailer:				; DATA XREF: sub_1003A39+17Ao
					; sub_1003C92+1CAo
		unicode	0, <szTrailer>,0
; const	WCHAR aSzheader
aSzheader:				; DATA XREF: sub_1003A39+168o
					; sub_1003C92+1B4o
		unicode	0, <szHeader>,0
		align 4
; const	WCHAR aLffacename
aLffacename:				; DATA XREF: sub_1003A39+156o
					; sub_1003C92+14Co
		unicode	0, <lfFaceName>,0
		align 4
; const	WCHAR aFsavewindowpos
aFsavewindowpos:			; DATA XREF: sub_1003A39+144o
					; sub_1003C92+194o
		unicode	0, <fSaveWindowPositions>,0
		align 10h
; const	WCHAR aStatusbar
aStatusbar:				; DATA XREF: sub_1003A39+131o
					; sub_1003C92+186o
		unicode	0, <StatusBar>,0
; const	WCHAR aFwrap
aFwrap:					; DATA XREF: sub_1003A39+11Eo
					; sub_1003C92+16Eo
		unicode	0, <fWrap>,0
; const	WCHAR aIpointsize
aIpointsize:				; DATA XREF: sub_1003A39+10Bo
					; sub_1003C92+160o
		unicode	0, <iPointSize>,0
		align 4
; const	WCHAR aLfpitchandfami
aLfpitchandfami:			; DATA XREF: sub_1003A39+F8o
					; sub_1003C92+133o
		unicode	0, <lfPitchAndFamily>,0
		align 4
; const	WCHAR aLfquality
aLfquality:				; DATA XREF: sub_1003A39+E3o
					; sub_1003C92+11Co
		unicode	0, <lfQuality>,0
; const	WCHAR aLfclipprecisio
aLfclipprecisio:			; DATA XREF: sub_1003A39+CEo
					; sub_1003C92+105o
		unicode	0, <lfClipPrecision>,0
; const	WCHAR aLfoutprecision
aLfoutprecision:			; DATA XREF: sub_1003A39+B9o
					; sub_1003C92+EEo
		unicode	0, <lfOutPrecision>,0
		align 10h
; const	WCHAR aLfcharset
aLfcharset:				; DATA XREF: sub_1003A39+A4o
					; sub_1003C92+D7o
		unicode	0, <lfCharSet>,0
; const	WCHAR aLfstrikeout
aLfstrikeout:				; DATA XREF: sub_1003A39+8Fo
					; sub_1003C92+C0o
		unicode	0, <lfStrikeOut>,0
; const	WCHAR aLfunderline
aLfunderline:				; DATA XREF: sub_1003A39+7Ao
					; sub_1003C92+A9o
		unicode	0, <lfUnderline>,0
; const	WCHAR aLfitalic
aLfitalic:				; DATA XREF: sub_1003A39+65o
					; sub_1003C92+92o
		unicode	0, <lfItalic>,0
		align 4
; const	WCHAR aLfweight
aLfweight:				; DATA XREF: sub_1003A39+50o
					; sub_1003C92+7Bo
		unicode	0, <lfWeight>,0
		align 4
; const	WCHAR aLforientation
aLforientation:				; DATA XREF: sub_1003A39+3Do
					; sub_1003C92+66o
		unicode	0, <lfOrientation>,0
; const	WCHAR aLfescapement
aLfescapement:				; DATA XREF: sub_1003A39+2Ao
					; sub_1003C92+51o
		unicode	0, <lfEscapement>,0
		align 4
; const	WCHAR SubKey
SubKey:					; DATA XREF: sub_1003A39+Co
					; sub_1003C92+31o
		unicode	0, <Software\Microsoft\Notepad>,0
		align 4
aLucidaConsole:				; DATA XREF: sub_1003C92+147o
		unicode	0, <Lucida Console>,0
		align 4
; const	WCHAR Text
Text:					; DATA XREF: sub_10040BA+AAo
		unicode	0, <Out	of RC string space!!>,0
		align 10h
; const	WCHAR Caption
Caption:				; DATA XREF: sub_10040BA+A5o
		unicode	0, <DEV	Error!>,0
		align 4
; const	WCHAR TableName
TableName:				; DATA XREF: sub_100419E+3Co
		unicode	0, <SlipUpAcc>,0
a_setup:				; DATA XREF: sub_100419E+10o
		unicode	0, </.SETUP>,0
aP:					; DATA XREF: sub_10042F9+34o
		unicode	0, </P>,0
		align 4
aPt:					; DATA XREF: sub_10042F9+Do
		unicode	0, </PT>,0
; const	WCHAR a_
a_:					; DATA XREF: sub_1004458+46o
		unicode	0, <*.*>,0
aW:					; DATA XREF: sub_1004565+40Ao
		unicode	0, </W>,0
		align 4
aA:					; DATA XREF: sub_1004565+3F0o
		unicode	0, </A>,0
		align 4
; const	WCHAR aEdit
aEdit:					; DATA XREF: sub_1004565+202o
					; sub_1005B41+EFo
		unicode	0, <Edit>,0
		align 10h
; const	WCHAR aMainacc
aMainacc:				; DATA XREF: sub_1004565+9Ao
		unicode	0, <MainAcc>,0
; const	WCHAR aCommdlg_help
aCommdlg_help:				; DATA XREF: sub_1004565+3Eo
		unicode	0, <commdlg_help>,0
		align 4
; const	WCHAR String
String:					; DATA XREF: sub_1004565+22o
		unicode	0, <commdlg_FindReplace>,0
; const	WCHAR a_txt_0
a_txt_0:				; DATA XREF: sub_1004DCD+3Do
		unicode	0, <.txt>,0
		align 10h
stru_1001800	_SCOPETABLE_ENTRY <0FFFFFFFFh, offset loc_10055C8, offset loc_10055CC>
					; DATA XREF: sub_1005179+5o
					; SEH scope table for function 1005179
dword_100180C	dd 20h,	3E9h, 1Eh, 3E9h, 21h, 3E8h, 1Fh, 3E8h, 2 dup(0)
					; DATA XREF: sub_1005F63+BFo
					; sub_1005F63+EEo
; const	WCHAR word_1001834
word_1001834	dw 20h			; DATA XREF: sub_1006F10+EEo
		align 4
; const	WCHAR asc_1001838
asc_1001838:				; DATA XREF: sub_1006F10+CDo
		dw 0Dh,	0Ah, 0
		align 10h
; const	WCHAR word_1001840
word_1001840	dw 200Eh		; DATA XREF: sub_1006F10+8Ao
		align 4
dword_1001844	dd 200Fh		; DATA XREF: sub_1006F10+80o
; char LibFileName[11]
LibFileName	db 'hhctrl.ocx',0       ; DATA XREF: sub_10072C3+5Co
		align 4
; char aClsidAdb880a6D[]
aClsidAdb880a6D	db 'CLSID\{ADB880A6-D8FF-11CF-9377-00AA003B7A11}\InprocServer32',0
					; DATA XREF: sub_100725F+14o
; char ValueName[8]
ValueName	db 8 dup(0)		; DATA XREF: sub_100725F+38o
stru_1001898	_SCOPETABLE_ENTRY <0FFFFFFFFh, offset loc_100752A, offset loc_100753E>
					; DATA XREF: start+2o
					; SEH scope table for function 100739D
		align 8
__load_config_used dd 48h		; Size
		dd 0			; Time stamp
		dw 2 dup(0)		; Version: 0.0
		dd 0			; GlobalFlagsClear
		dd 0			; GlobalFlagsSet
		dd 0			; CriticalSectionDefaultTimeout
		dd 0			; DeCommitFreeBlockThreshold
		dd 0			; DeCommitTotalFreeThreshold
		dd 0			; LockPrefixTable
		dd 0			; MaximumAllocationSize
		dd 0			; VirtualMemoryThreshold
		dd 0			; ProcessAffinityMask
		dd 0			; ProcessHeapFlags
		dw 0			; CSDVersion
		dw 0			; Reserved1
		dd 0			; EditList
		dd offset ___security_cookie ; SecurityCookie
		dd offset ___safe_se_handler_table ; SEHandlerTable
		dd 1			; SEHandlerCount
		dd 53445352h, 0F679AEF8h, 44CABE1Fh, 0B5C4CBB4h, 1B24772Dh
		dd 1, 65746F6Eh, 2E646170h, 626470h, 3 dup(0)
___safe_se_handler_table dd rva	loc_10075BA ; DATA XREF: .text:010018E8o
		dd 0
		db 0

; =============== S U B	R O U T	I N E =======================================


sub_1001929	proc near		; CODE XREF: sub_1002936+E9p
					; sub_1002B87:loc_1002E24p
		mov	eax, stru_100A4A0.hDevMode
		test	eax, eax
		push	esi
		mov	esi, ds:GlobalFree
		jz	short loc_100193C
		push	eax		; hMem
		call	esi ; GlobalFree

loc_100193C:				; CODE XREF: sub_1001929+Ej
		mov	eax, stru_100A4A0.hDevNames
		test	eax, eax
		jz	short loc_1001948
		push	eax		; hMem
		call	esi ; GlobalFree

loc_1001948:				; CODE XREF: sub_1001929+1Aj
		and	stru_100A4A0.hDevMode, 0
		and	stru_100A4A0.hDevNames,	0
		pop	esi
		retn
sub_1001929	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_100195D	proc near		; CODE XREF: sub_1004565+F8p

LCData		= word ptr -4

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	ecx
		push	2		; cchData
		lea	eax, [ebp+LCData]
		push	eax		; lpLCData
		push	0Dh		; LCType
		push	400h		; Locale
		mov	stru_100A4A0.lpfnPageSetupHook,	offset sub_1005F63
		mov	stru_100A4A0.lpPageSetupTemplateName, 0Ch
		call	ds:GetLocaleInfoW
		cmp	[ebp+LCData], 31h
		jnz	short loc_10019B1
		mov	eax, 3E8h
		mov	stru_100A4A0.rtMargin.top, eax
		mov	stru_100A4A0.rtMargin.bottom, eax
		mov	stru_100A4A0.Flags, 0A006h
		mov	eax, 2EEh
		jmp	short loc_10019CF
; ---------------------------------------------------------------------------

loc_10019B1:				; CODE XREF: sub_100195D+32j
		mov	eax, 9C4h
		mov	stru_100A4A0.rtMargin.top, eax
		mov	stru_100A4A0.rtMargin.bottom, eax
		mov	stru_100A4A0.Flags, 0A00Ah
		mov	eax, 7D0h

loc_10019CF:				; CODE XREF: sub_100195D+52j
		mov	stru_100A4A0.rtMargin.left, eax
		mov	stru_100A4A0.rtMargin.right, eax
		leave
		retn
sub_100195D	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_10019E0(int	nWidth,	int)
sub_10019E0	proc near		; CODE XREF: sub_1002B87+6DCp
					; sub_1002B87+709p ...

nWidth		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	1		; bErase
		push	0		; lpRect
		push	hWnd		; hWnd
		call	ds:InvalidateRect
		mov	eax, dword_1009840
		mov	ecx, [ebp+arg_4]
		neg	eax
		sbb	eax, eax
		and	eax, dword_100A6E0
		push	1		; bRepaint
		sub	ecx, eax
		push	ecx		; nHeight
		push	[ebp+nWidth]	; nWidth
		push	0		; Y
		push	0		; X
		push	hWnd		; hWnd
		call	ds:MoveWindow
		pop	ebp
		retn	8
sub_10019E0	endp

; ---------------------------------------------------------------------------
		align 8

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1001A28(HWND hWndParent, int, HWND hWnd, int)
sub_1001A28	proc near		; DATA XREF: sub_100270F+18Ao
					; sub_1002B87+E5o

Point		= tagPOINT ptr -8
hWndParent	= dword	ptr  8
arg_4		= dword	ptr  0Ch
hWnd		= dword	ptr  10h
arg_C		= dword	ptr  14h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ecx
		mov	eax, [ebp+arg_4]
		sub	eax, 53h
		push	esi
		jz	loc_1001B58
		sub	eax, 28h
		jz	loc_1001B03
		sub	eax, 95h
		jz	short loc_1001A74
		dec	eax
		jnz	loc_1001B72
		push	0		; lParam
		push	0		; wParam
		push	147h		; Msg
		push	101h		; nIDDlgItem
		push	[ebp+hWndParent] ; hDlg
		call	ds:SendDlgItemMessageW
		mov	dword_100A528, eax
		jmp	loc_1001B72
; ---------------------------------------------------------------------------

loc_1001A74:				; CODE XREF: sub_1001A28+22j
		mov	esi, ds:SendDlgItemMessageW
		push	ebx
		push	edi
		push	lParam		; lParam
		mov	ebx, 143h
		push	0		; wParam
		push	ebx		; Msg
		mov	edi, 101h
		push	edi		; nIDDlgItem
		push	[ebp+hWndParent] ; hDlg
		call	esi ; SendDlgItemMessageW
		push	dword_10090B8	; lParam
		push	0		; wParam
		push	ebx		; Msg
		push	edi		; nIDDlgItem
		push	[ebp+hWndParent] ; hDlg
		call	esi ; SendDlgItemMessageW
		push	dword_10090BC	; lParam
		push	0		; wParam
		push	ebx		; Msg
		push	edi		; nIDDlgItem
		push	[ebp+hWndParent] ; hDlg
		call	esi ; SendDlgItemMessageW
		push	dword_10090C0	; lParam
		push	0		; wParam
		push	ebx		; Msg
		push	edi		; nIDDlgItem
		push	[ebp+hWndParent] ; hDlg
		call	esi ; SendDlgItemMessageW
		mov	eax, dword_1009030
		mov	ecx, lParam
		mov	dword_100A528, eax
		dec	eax
		jz	short loc_1001AEB
		dec	eax
		jz	short loc_1001AE3
		dec	eax
		jnz	short loc_1001AF1
		mov	ecx, dword_10090C0
		jmp	short loc_1001AF1
; ---------------------------------------------------------------------------

loc_1001AE3:				; CODE XREF: sub_1001A28+AEj
		mov	ecx, dword_10090BC
		jmp	short loc_1001AF1
; ---------------------------------------------------------------------------

loc_1001AEB:				; CODE XREF: sub_1001A28+ABj
		mov	ecx, dword_10090B8

loc_1001AF1:				; CODE XREF: sub_1001A28+B1j
					; sub_1001A28+B9j ...
		push	ecx		; lParam
		push	0FFFFFFFFh	; wParam
		push	14Dh		; Msg
		push	edi		; nIDDlgItem
		push	[ebp+hWndParent] ; hDlg
		call	esi ; SendDlgItemMessageW
		pop	edi
		pop	ebx
		jmp	short loc_1001B72
; ---------------------------------------------------------------------------

loc_1001B03:				; CODE XREF: sub_1001A28+17j
		mov	esi, [ebp+hWnd]
		cmp	[ebp+hWndParent], esi
		jnz	short loc_1001B33
		lea	eax, [ebp+Point]
		push	eax		; lpPoint
		call	ds:GetCursorPos
		lea	eax, [ebp+Point]
		push	eax		; lpPoint
		push	[ebp+hWndParent] ; hWnd
		call	ds:ScreenToClient
		push	[ebp+Point.y]
		push	[ebp+Point.x]	; Point
		push	[ebp+hWndParent] ; hWndParent
		call	ds:ChildWindowFromPoint
		mov	esi, eax

loc_1001B33:				; CODE XREF: sub_1001A28+E1j
		push	esi		; hWnd
		call	ds:GetDlgCtrlID
		cmp	eax, 101h
		jz	short loc_1001B48
		cmp	eax, 103h
		jnz	short loc_1001B72

loc_1001B48:				; CODE XREF: sub_1001A28+117j
		push	offset dword_100136C
		push	0Ah
		push	lpszHelp
		push	esi
		jmp	short loc_1001B86
; ---------------------------------------------------------------------------

loc_1001B58:				; CODE XREF: sub_1001A28+Ej
		mov	esi, [ebp+arg_C]
		push	dword ptr [esi+0Ch] ; hWnd
		call	ds:GetDlgCtrlID
		cmp	eax, 101h
		jz	short loc_1001B76
		cmp	eax, 103h
		jz	short loc_1001B76

loc_1001B72:				; CODE XREF: sub_1001A28+25j
					; sub_1001A28+47j ...
		xor	eax, eax
		jmp	short loc_1001B8F
; ---------------------------------------------------------------------------

loc_1001B76:				; CODE XREF: sub_1001A28+141j
					; sub_1001A28+148j
		push	offset dword_100136C ; dwData
		push	0Ch		; uCommand
		push	lpszHelp	; lpszHelp
		push	dword ptr [esi+0Ch] ; hWndMain

loc_1001B86:				; CODE XREF: sub_1001A28+12Ej
		call	ds:WinHelpW
		xor	eax, eax
		inc	eax

loc_1001B8F:				; CODE XREF: sub_1001A28+14Cj
		pop	esi
		leave
		retn	10h
sub_1001A28	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1001B99	proc near		; CODE XREF: sub_1002B87+3CBp
					; sub_1004C49+1Ep ...

arg_0		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		push	esi
		mov	esi, ds:SendMessageW
		push	0		; lParam
		dec	eax
		push	eax		; wParam
		push	0BBh		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		cmp	eax, 0FFFFFFFFh
		jz	short loc_1001BDE
		push	eax		; lParam
		push	eax		; wParam
		push	0B1h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		push	0		; lParam
		push	0		; wParam
		push	0B7h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW

loc_1001BDE:				; CODE XREF: sub_1001B99+23j
		pop	esi
		pop	ebp
		retn	4
sub_1001B99	endp

; ---------------------------------------------------------------------------
		align 8

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1001BE8(LPCWSTR lpsz)
sub_1001BE8	proc near		; CODE XREF: sub_1002936+39p

lpsz		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+lpsz]
		push	esi
		xor	esi, esi
		xor	ecx, ecx
		jmp	short loc_1001C1D
; ---------------------------------------------------------------------------

loc_1001BF7:				; CODE XREF: sub_1001BE8+3Bj
		cmp	cx, 20h
		jz	short loc_1001C03
		cmp	cx, 9
		jnz	short loc_1001C07

loc_1001C03:				; CODE XREF: sub_1001BE8+13j
		test	esi, esi
		jz	short loc_1001C25

loc_1001C07:				; CODE XREF: sub_1001BE8+19j
		cmp	cx, 22h
		jnz	short loc_1001C16
		xor	ecx, ecx
		test	esi, esi
		setz	cl
		mov	esi, ecx

loc_1001C16:				; CODE XREF: sub_1001BE8+23j
		push	eax		; lpsz
		call	ds:CharNextW

loc_1001C1D:				; CODE XREF: sub_1001BE8+Dj
		mov	cx, [eax]
		test	cx, cx
		jnz	short loc_1001BF7

loc_1001C25:				; CODE XREF: sub_1001BE8+1Dj
		pop	esi

loc_1001C26:				; CODE XREF: sub_1001BE8+4Fj
		mov	cx, [eax]
		cmp	cx, 20h
		jz	short loc_1001C35
		cmp	cx, 9
		jnz	short loc_1001C39

loc_1001C35:				; CODE XREF: sub_1001BE8+45j
		inc	eax
		inc	eax
		jmp	short loc_1001C26
; ---------------------------------------------------------------------------

loc_1001C39:				; CODE XREF: sub_1001BE8+4Bj
		pop	ebp
		retn	4
sub_1001BE8	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1001C42	proc near		; CODE XREF: pfnWinEventProc+2p
					; sub_1002B87+70Fp ...

lParam		= dword	ptr -10Ch
wParam		= dword	ptr -108h
Dest		= word ptr -104h
var_6		= word ptr -6
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 10Ch
		mov	eax, ___security_cookie
		push	ebx
		push	esi
		mov	esi, ds:SendMessageW
		push	edi
		mov	[ebp+var_4], eax
		lea	eax, [ebp+lParam]
		push	eax		; lParam
		lea	eax, [ebp+wParam]
		push	eax		; wParam
		push	0B0h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		push	0		; lParam
		push	[ebp+wParam]	; wParam
		push	0C9h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		mov	edi, eax
		push	0		; lParam
		inc	edi
		lea	eax, [edi-1]
		push	eax		; wParam
		push	0BBh		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		mov	ebx, [ebp+wParam]
		sub	ebx, eax
		inc	ebx
		cmp	[ebp+arg_0], 0
		jnz	short loc_1001CC3
		cmp	ebx, dword_1009624
		jnz	short loc_1001CC3
		cmp	edi, dword_1009620
		jz	short loc_1001CFC

loc_1001CC3:				; CODE XREF: sub_1001C42+6Fj
					; sub_1001C42+77j
		push	ebx
		push	edi
		push	Format		; Format
		lea	eax, [ebp+Dest]
		push	7Fh		; Count
		push	eax		; Dest
		call	ds:_snwprintf
		mov	eax, dword_1009834
		and	[ebp+var_6], 0
		add	esp, 14h
		test	eax, eax
		jz	short loc_1001CFC
		lea	ecx, [ebp+Dest]
		push	ecx		; lParam
		push	1		; wParam
		push	40Bh		; Msg
		push	eax		; hWnd
		call	esi ; SendMessageW

loc_1001CFC:				; CODE XREF: sub_1001C42+7Fj
					; sub_1001C42+A7j
		mov	ecx, [ebp+var_4]
		mov	dword_1009620, edi
		pop	edi
		pop	esi
		mov	dword_1009624, ebx
		pop	ebx
		call	sub_1007147
		leave
		retn	4
sub_1001C42	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================


; void __stdcall pfnWinEventProc(HWINEVENTHOOK,	DWORD, HWND, LONG, LONG, DWORD,	DWORD)
pfnWinEventProc	proc near		; DATA XREF: sub_1002936+60o
		push	0
		call	sub_1001C42
		retn	1Ch
pfnWinEventProc	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1001D2B(LPCWSTR lpsz)
sub_1001D2B	proc near		; CODE XREF: sub_10065CB+66p

lpsz		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, [ebp+lpsz]
		xor	ecx, ecx
		mov	cx, [esi]
		test	cx, cx
		push	edi
		mov	edi, esi
		mov	eax, esi
		jz	short loc_1001D66

loc_1001D43:				; CODE XREF: sub_1001D2B+33j
		cmp	cx, 3Ah
		jz	short loc_1001D4F
		cmp	cx, 5Ch
		jnz	short loc_1001D51

loc_1001D4F:				; CODE XREF: sub_1001D2B+1Cj
		mov	edi, eax

loc_1001D51:				; CODE XREF: sub_1001D2B+22j
		push	eax		; lpsz
		call	ds:CharNextW
		mov	cx, [eax]
		test	cx, cx
		jnz	short loc_1001D43
		cmp	edi, esi
		jz	short loc_1001D66
		inc	edi
		inc	edi

loc_1001D66:				; CODE XREF: sub_1001D2B+16j
					; sub_1001D2B+37j
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebp
		retn	4
sub_1001D2B	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1001D73(HWND hWndNewOwner)
sub_1001D73	proc near		; CODE XREF: sub_1003429+450p

lParam		= dword	ptr -10h
wParam		= dword	ptr -0Ch
var_8		= dword	ptr -8
uEnable		= dword	ptr -4
hWndNewOwner	= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 10h
		and	[ebp+var_8], 0
		push	ebx
		push	esi
		push	edi
		push	dword_1009830	; hWnd
		call	ds:GetMenu
		mov	ebx, eax
		lea	eax, [ebp+lParam]
		push	eax		; lParam
		lea	eax, [ebp+wParam]
		push	eax		; wParam
		push	0B0h		; Msg
		push	hWnd		; hWnd
		call	ds:SendMessageW
		mov	ecx, [ebp+wParam]
		mov	esi, ds:GetSubMenu
		xor	eax, eax
		cmp	ecx, [ebp+lParam]
		setz	al
		push	eax		; uEnable
		push	300h		; uIDEnableItem
		push	1		; nPos
		push	ebx		; hMenu
		mov	[ebp+uEnable], eax
		call	esi ; GetSubMenu
		mov	edi, ds:EnableMenuItem
		push	eax		; hMenu
		call	edi ; EnableMenuItem
		push	[ebp+uEnable]	; uEnable
		push	301h		; uIDEnableItem
		push	1		; nPos
		push	ebx		; hMenu
		call	esi ; GetSubMenu
		push	eax		; hMenu
		call	edi ; EnableMenuItem
		push	[ebp+uEnable]	; uEnable
		push	303h		; uIDEnableItem
		push	1		; nPos
		push	ebx		; hMenu
		call	esi ; GetSubMenu
		push	eax		; hMenu
		call	edi ; EnableMenuItem
		push	0		; uFlags
		push	19h		; uId
		push	1		; nPos
		push	ebx		; hMenu
		call	esi ; GetSubMenu
		push	eax		; hMenu
		call	ds:GetMenuState
		cmp	eax, 1
		jnz	short loc_1001E16
		cmp	[ebp+uEnable], eax
		jnz	short loc_1001E16
		push	0		; uEnable
		push	19h		; uIDEnableItem
		push	eax		; nPos
		push	ebx		; hMenu
		call	esi ; GetSubMenu
		push	eax		; hMenu
		call	edi ; EnableMenuItem

loc_1001E16:				; CODE XREF: sub_1001D73+91j
					; sub_1001D73+96j
		push	[ebp+hWndNewOwner] ; hWndNewOwner
		call	ds:OpenClipboard
		test	eax, eax
		jz	short loc_1001E34
		push	1		; format
		call	ds:IsClipboardFormatAvailable
		mov	[ebp+var_8], eax
		call	ds:CloseClipboard

loc_1001E34:				; CODE XREF: sub_1001D73+AEj
		xor	eax, eax
		cmp	[ebp+var_8], eax
		setz	al
		push	eax		; uEnable
		push	302h		; uIDEnableItem
		push	1		; nPos
		push	ebx		; hMenu
		call	esi ; GetSubMenu
		push	eax		; hMenu
		call	edi ; EnableMenuItem
		push	0		; lParam
		push	0		; wParam
		push	0Eh		; Msg
		push	hWnd		; hWnd
		mov	[ebp+uEnable], 1
		call	ds:SendMessageW
		test	eax, eax
		jz	short loc_1001E6B
		and	[ebp+uEnable], 0

loc_1001E6B:				; CODE XREF: sub_1001D73+F2j
		push	[ebp+uEnable]	; uEnable
		push	15h		; uIDEnableItem
		push	1		; nPos
		push	ebx		; hMenu
		call	esi ; GetSubMenu
		push	eax		; hMenu
		call	edi ; EnableMenuItem
		push	[ebp+uEnable]	; uEnable
		push	16h		; uIDEnableItem
		push	1		; nPos
		push	ebx		; hMenu
		call	esi ; GetSubMenu
		push	eax		; hMenu
		call	edi ; EnableMenuItem
		xor	eax, eax
		cmp	dword_1009850, eax
		setnz	al
		push	eax		; uEnable
		push	18h		; uIDEnableItem
		push	1		; nPos
		push	ebx		; hMenu
		call	esi ; GetSubMenu
		push	eax		; hMenu
		call	edi ; EnableMenuItem
		push	0		; lParam
		push	0		; wParam
		push	0C6h		; Msg
		push	hWnd		; hWnd
		call	ds:SendMessageW
		xor	ecx, ecx
		test	eax, eax
		setz	cl
		push	ecx		; uEnable
		push	10h		; uIDEnableItem
		push	1		; nPos
		push	ebx		; hMenu
		call	esi ; GetSubMenu
		push	eax		; hMenu
		call	edi ; EnableMenuItem
		mov	eax, dword_1009850
		neg	eax
		sbb	eax, eax
		and	eax, 8
		push	eax		; uCheck
		push	20h		; uIDCheckItem
		push	2		; nPos
		push	ebx		; hMenu
		call	esi ; GetSubMenu
		mov	edi, ds:CheckMenuItem
		push	eax		; hMenu
		call	edi ; CheckMenuItem
		mov	eax, dword_1009840
		neg	eax
		sbb	eax, eax
		and	eax, 8
		push	eax		; uCheck
		push	1Bh		; uIDCheckItem
		push	3		; nPos
		push	ebx		; hMenu
		call	esi ; GetSubMenu
		push	eax		; hMenu
		call	edi ; CheckMenuItem
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	4
sub_1001D73	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1001F02	proc near		; CODE XREF: sub_1001F70+3Fp

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		mov	ecx, [ebp+arg_0]
		mov	eax, [ebp+arg_8]
		push	edi
		push	2
		pop	edi
		jmp	short loc_1001F25
; ---------------------------------------------------------------------------

loc_1001F13:				; CODE XREF: sub_1001F02+2Dj
		mov	dx, [ecx]
		mov	[eax], dx
		mov	dx, [ecx]
		add	eax, edi
		add	ecx, edi
		test	dx, dx
		jz	short loc_1001F3B

loc_1001F25:				; CODE XREF: sub_1001F02+Fj
		mov	dx, [ecx]
		cmp	dx, word_100AB90
		jnz	short loc_1001F13
		push	esi
		mov	esi, [ebp+arg_4]
		test	esi, esi
		jz	short loc_1001F50
		jmp	short loc_1001F48
; ---------------------------------------------------------------------------

loc_1001F3B:				; CODE XREF: sub_1001F02+21j
		xor	eax, eax
		jmp	short loc_1001F66
; ---------------------------------------------------------------------------

loc_1001F3F:				; CODE XREF: sub_1001F02+4Cj
		mov	[eax], dx
		add	eax, edi
		add	esi, edi
		xor	edx, edx

loc_1001F48:				; CODE XREF: sub_1001F02+37j
		mov	dx, [esi]
		test	dx, dx
		jnz	short loc_1001F3F

loc_1001F50:				; CODE XREF: sub_1001F02+35j
		add	ecx, 4
		pop	esi

loc_1001F54:				; CODE XREF: sub_1001F02+5Fj
		mov	dx, [ecx]
		mov	[eax], dx
		add	eax, edi
		add	ecx, edi
		test	dx, dx
		jnz	short loc_1001F54
		xor	eax, eax
		inc	eax

loc_1001F66:				; CODE XREF: sub_1001F02+3Bj
		pop	edi
		pop	ebp
		retn	0Ch
sub_1001F02	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1001F70(HWND hWnd, LPCWSTR lpCaption, LPCWSTR lpText, LPCWSTR lpString, UINT uType)
sub_1001F70	proc near		; CODE XREF: sub_100270F+B3p
					; sub_100419E+D9p ...

hWnd		= dword	ptr  8
lpCaption	= dword	ptr  0Ch
lpText		= dword	ptr  10h
lpString	= dword	ptr  14h
uType		= dword	ptr  18h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		cmp	[ebp+lpString],	0
		push	esi
		mov	esi, ds:lstrlenW
		push	edi
		jz	short loc_1001F8C
		push	[ebp+lpString]	; lpString
		call	esi ; lstrlenW
		mov	edi, eax
		jmp	short loc_1001F8E
; ---------------------------------------------------------------------------

loc_1001F8C:				; CODE XREF: sub_1001F70+11j
		xor	edi, edi

loc_1001F8E:				; CODE XREF: sub_1001F70+1Aj
		push	[ebp+lpText]	; lpString
		call	esi ; lstrlenW
		add	eax, edi
		lea	eax, [eax+eax+2]
		push	eax		; uBytes
		push	40h		; uFlags
		call	ds:LocalAlloc
		mov	esi, eax
		test	esi, esi
		jz	short loc_1001FCF
		push	esi
		push	[ebp+lpString]
		push	[ebp+lpText]
		call	sub_1001F02
		push	[ebp+uType]	; uType
		push	[ebp+lpCaption]	; lpCaption
		push	esi		; lpText
		push	[ebp+hWnd]	; hWnd
		call	ds:MessageBoxW
		push	esi		; hMem
		mov	edi, eax
		call	ds:LocalFree
		jmp	short loc_1001FE3
; ---------------------------------------------------------------------------

loc_1001FCF:				; CODE XREF: sub_1001F70+36j
		push	[ebp+uType]	; uType
		push	[ebp+lpCaption]	; lpCaption
		push	[ebp+lpText]	; lpText
		push	[ebp+hWnd]	; hWnd
		call	ds:MessageBoxW
		mov	edi, eax

loc_1001FE3:				; CODE XREF: sub_1001F70+5Dj
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebp
		retn	14h
sub_1001F70	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1001FF0	proc near		; CODE XREF: sub_1002B87:loc_1002CFDp
					; sub_1002B87:loc_1002DE6p

Dest		= word ptr -194h
var_4		= dword	ptr -4

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 194h
		mov	eax, ___security_cookie
		mov	[ebp+var_4], eax
		call	ds:CommDlgExtendedError
		test	eax, eax
		jz	short loc_1002070
		xor	ecx, ecx
		xor	edx, edx

loc_1002011:				; CODE XREF: sub_1001FF0+37j
		cmp	eax, dword_10091A0[edx]
		jnz	short loc_1002021
		mov	ecx, off_10091A4[edx]
		mov	ecx, [ecx]

loc_1002021:				; CODE XREF: sub_1001FF0+27j
		add	edx, 8
		cmp	edx, 40h
		jb	short loc_1002011
		test	ecx, ecx
		jnz	short loc_100204F
		push	eax
		push	dword_10090A8	; Format
		lea	eax, [ebp+Dest]
		push	0C7h		; Count
		push	eax		; Dest
		call	ds:_snwprintf
		add	esp, 10h
		lea	ecx, [ebp+Dest]

loc_100204F:				; CODE XREF: sub_1001FF0+3Bj
		cmp	word ptr [ecx],	0
		jz	short loc_100206D
		push	1010h		; uType
		push	lpCaption	; lpCaption
		push	ecx		; lpText
		push	dword_1009830	; hWnd
		call	ds:MessageBoxW

loc_100206D:				; CODE XREF: sub_1001FF0+63j
		xor	eax, eax
		inc	eax

loc_1002070:				; CODE XREF: sub_1001FF0+1Bj
		mov	ecx, [ebp+var_4]
		call	sub_1007147
		leave
		retn
sub_1001FF0	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_100207F	proc near		; CODE XREF: sub_1003429+2F6p
					; sub_1003429+348p

hMem		= dword	ptr -14h
var_10		= dword	ptr -10h
lParam		= dword	ptr -0Ch
wParam		= dword	ptr -8
cchCount1	= dword	ptr -4
arg_0		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 14h
		push	ebx
		push	esi
		push	stru_100A500.lpstrReplaceWith ;	lpString
		mov	esi, ds:lstrlenW
		call	esi ; lstrlenW
		push	stru_100A500.lpstrFindWhat ; lpString
		mov	[ebp+var_10], eax
		call	esi ; lstrlenW
		mov	esi, ds:SendMessageW
		mov	[ebp+cchCount1], eax
		lea	eax, [ebp+lParam]
		push	eax		; lParam
		lea	eax, [ebp+wParam]
		push	eax		; wParam
		push	0B0h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		xor	ebx, ebx
		push	ebx		; lParam
		push	ebx		; wParam
		push	0BDh		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		cmp	eax, ebx
		mov	[ebp+hMem], eax
		jz	loc_100219B
		push	edi
		push	eax		; hMem
		call	ds:LocalLock
		mov	edi, eax
		cmp	edi, ebx
		jz	loc_100219A
		mov	ecx, [ebp+lParam]
		mov	eax, [ebp+wParam]
		sub	ecx, eax
		cmp	ecx, [ebp+cchCount1]
		jnz	loc_1002191
		cmp	dword_1009A90, ebx
		jz	short loc_100212C
		push	[ebp+cchCount1]	; MaxCount
		lea	eax, [edi+eax*2]
		push	eax		; Str2
		push	stru_100A500.lpstrFindWhat ; Str1
		call	ds:wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_1002151
		cmp	dword_1009A90, ebx
		jnz	short loc_1002191
		mov	eax, [ebp+wParam]

loc_100212C:				; CODE XREF: sub_100207F+86j
		push	[ebp+cchCount1]	; cchCount2
		lea	eax, [edi+eax*2]
		push	eax		; lpString2
		push	[ebp+cchCount1]	; cchCount1
		push	stru_100A500.lpstrFindWhat ; lpString1
		push	10001001h	; dwCmpFlags
		push	400h		; Locale
		call	ds:CompareStringW
		cmp	eax, 2
		jnz	short loc_1002191

loc_1002151:				; CODE XREF: sub_100207F+A0j
		push	stru_100A500.lpstrReplaceWith ;	lParam
		push	1		; wParam
		push	0C2h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		mov	eax, [ebp+wParam]
		mov	ecx, [ebp+var_10]
		add	ecx, eax
		push	ecx		; lParam
		push	eax		; wParam
		push	0B1h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		cmp	[ebp+arg_0], ebx
		jz	short loc_1002191
		push	ebx		; lParam
		push	ebx		; wParam
		push	0B7h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW

loc_1002191:				; CODE XREF: sub_100207F+7Aj
					; sub_100207F+A8j ...
		push	[ebp+hMem]	; hMem
		call	ds:LocalUnlock

loc_100219A:				; CODE XREF: sub_100207F+69j
		pop	edi

loc_100219B:				; CODE XREF: sub_100207F+57j
		pop	esi
		pop	ebx
		leave
		retn	4
sub_100207F	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; INT_PTR __stdcall DialogFunc(HWND, UINT, WPARAM, LPARAM)
DialogFunc	proc near		; DATA XREF: sub_1002B87+3A4o

lParam		= dword	ptr -0D4h
wParam		= dword	ptr -0D0h
SrcStr		= word ptr -0CCh
var_4		= dword	ptr -4
hWnd		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 0D4h
		mov	eax, ___security_cookie
		mov	edx, [ebp+arg_8]
		mov	ecx, [ebp+arg_C]
		push	ebx
		mov	ebx, [ebp+hWnd]
		mov	[ebp+var_4], eax
		mov	eax, [ebp+arg_4]
		sub	eax, 53h
		push	esi
		push	edi
		jz	loc_1002371
		sub	eax, 28h
		jz	loc_1002361
		sub	eax, 95h
		jz	loc_10022D2
		dec	eax
		jnz	loc_1002387
		movzx	eax, dx
		dec	eax
		jz	short loc_1002213
		dec	eax
		jz	short loc_1002202
		sub	eax, 100h
		jnz	loc_1002387
		jmp	short loc_100220B
; ---------------------------------------------------------------------------

loc_1002202:				; CODE XREF: DialogFunc+4Dj
		push	1		; nResult

loc_1002204:				; CODE XREF: DialogFunc+D4j
		push	ebx		; hDlg
		call	ds:EndDialog

loc_100220B:				; CODE XREF: DialogFunc+5Aj
					; DialogFunc+1B6j
		xor	eax, eax
		inc	eax
		jmp	loc_1002389
; ---------------------------------------------------------------------------

loc_1002213:				; CODE XREF: DialogFunc+4Aj
		push	64h		; cchMax
		lea	eax, [ebp+SrcStr]
		push	eax		; lpString
		mov	esi, 102h
		push	esi		; nIDDlgItem
		push	ebx		; hDlg
		call	ds:GetDlgItemTextW
		push	64h		; cchDest
		lea	eax, [ebp+SrcStr]
		push	eax		; lpDestStr
		push	0FFFFFFFFh	; cchSrc
		push	eax		; lpSrcStr
		push	80h		; dwMapFlags
		call	ds:FoldStringW
		lea	eax, [ebp+SrcStr]
		push	eax		; Str
		call	ds:_wtol
		mov	edi, ds:SendMessageW
		pop	ecx
		push	0		; lParam
		mov	dword_100AB94, eax
		dec	eax
		push	eax		; wParam
		push	0BBh		; Msg
		push	hWnd		; hWnd
		call	edi ; SendMessageW
		xor	ecx, ecx
		cmp	dword_100AB94, ecx
		jbe	short loc_100227C
		cmp	eax, 0FFFFFFFFh
		jz	short loc_100227C
		push	ecx
		jmp	short loc_1002204
; ---------------------------------------------------------------------------

loc_100227C:				; CODE XREF: DialogFunc+CCj
					; DialogFunc+D1j
		push	ecx		; uType
		push	dword_10090AC	; lpCaption
		push	lpText		; lpText
		push	ebx		; hWnd
		call	ds:MessageBoxW
		push	0		; lParam
		push	0		; wParam
		push	0BAh		; Msg
		push	hWnd		; hWnd
		call	edi ; SendMessageW
		push	eax
		lea	eax, [ebp+SrcStr]
		push	offset aD	; "%d"
		push	eax		; LPWSTR
		call	ds:wsprintfW
		add	esp, 0Ch
		lea	eax, [ebp+SrcStr]
		push	eax		; lpString
		push	esi		; nIDDlgItem
		push	ebx		; hDlg
		call	ds:SetDlgItemTextW
		push	ebx		; hWnd
		call	ds:SetFocus
		jmp	loc_1002387
; ---------------------------------------------------------------------------

loc_10022D2:				; CODE XREF: DialogFunc+39j
		mov	esi, 102h
		push	esi		; nIDDlgItem
		push	ebx		; hDlg
		call	ds:GetDlgItem
		mov	edi, eax
		push	0FFFFFFF0h	; nIndex
		push	edi		; hWnd
		call	ds:GetWindowLongW
		or	eax, 2000h
		push	eax		; dwNewLong
		push	0FFFFFFF0h	; nIndex
		push	edi		; hWnd
		call	ds:SetWindowLongW
		mov	edi, ds:SendMessageW
		lea	eax, [ebp+lParam]
		push	eax		; lParam
		lea	eax, [ebp+wParam]
		push	eax		; wParam
		push	0B0h		; Msg
		push	hWnd		; hWnd
		call	edi ; SendMessageW
		push	0		; lParam
		push	[ebp+wParam]	; wParam
		push	0C9h		; Msg
		push	hWnd		; hWnd
		call	edi ; SendMessageW
		inc	eax
		push	eax
		lea	eax, [ebp+SrcStr]
		push	offset aD	; "%d"
		push	eax		; LPWSTR
		call	ds:wsprintfW
		add	esp, 0Ch
		lea	eax, [ebp+SrcStr]
		push	eax		; lpString
		push	esi		; nIDDlgItem
		push	ebx		; hDlg
		call	ds:SetDlgItemTextW
		push	ebx		; hWnd
		call	ds:SetFocus
		jmp	loc_100220B
; ---------------------------------------------------------------------------

loc_1002361:				; CODE XREF: DialogFunc+2Ej
		push	offset dword_1001384
		push	0Ah
		push	lpszHelp
		push	edx
		jmp	short loc_1002381
; ---------------------------------------------------------------------------

loc_1002371:				; CODE XREF: DialogFunc+25j
		push	offset dword_1001384 ; dwData
		push	0Ch		; uCommand
		push	lpszHelp	; lpszHelp
		push	dword ptr [ecx+0Ch] ; hWndMain

loc_1002381:				; CODE XREF: DialogFunc+1C9j
		call	ds:WinHelpW

loc_1002387:				; CODE XREF: DialogFunc+40j
					; DialogFunc+54j ...
		xor	eax, eax

loc_1002389:				; CODE XREF: DialogFunc+68j
		mov	ecx, [ebp+var_4]
		pop	edi
		pop	esi
		pop	ebx
		call	sub_1007147
		leave
		retn	10h
DialogFunc	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_100239D(void *lpv, int iSize)
sub_100239D	proc near		; CODE XREF: sub_1002452+24Ap

lpv		= dword	ptr  8
iSize		= dword	ptr  0Ch

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	edi
		mov	edi, [ebp+iSize]
		xor	eax, eax
		cmp	edi, 1
		jbe	short loc_10023FF
		push	esi
		mov	esi, [ebp+lpv]
		movzx	ecx, word ptr [esi]
		cmp	ecx, 0BBEFh
		jz	short loc_10023F0
		cmp	ecx, 0FEFFh
		jz	short loc_10023D7
		cmp	ecx, 0FFFEh
		jz	short loc_10023EC
		push	edi		; iSize
		push	esi		; lpv
		call	sub_10070B1
		test	eax, eax
		jz	short loc_10023DC

loc_10023D7:				; CODE XREF: sub_100239D+25j
		xor	eax, eax
		inc	eax
		jmp	short loc_10023FE
; ---------------------------------------------------------------------------

loc_10023DC:				; CODE XREF: sub_100239D+38j
		push	edi
		push	esi
		call	sub_1007059
		neg	eax
		sbb	eax, eax
		and	eax, 3
		jmp	short loc_10023FE
; ---------------------------------------------------------------------------

loc_10023EC:				; CODE XREF: sub_100239D+2Dj
		push	2
		jmp	short loc_10023FD
; ---------------------------------------------------------------------------

loc_10023F0:				; CODE XREF: sub_100239D+1Dj
		cmp	edi, 2
		jbe	short loc_10023FE
		cmp	byte ptr [esi+2], 0BFh
		jnz	short loc_10023FE
		push	3

loc_10023FD:				; CODE XREF: sub_100239D+51j
		pop	eax

loc_10023FE:				; CODE XREF: sub_100239D+3Dj
					; sub_100239D+4Dj ...
		pop	esi

loc_10023FF:				; CODE XREF: sub_100239D+Ej
		pop	edi
		pop	ebp
		retn	8
sub_100239D	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1002409	proc near		; CODE XREF: sub_1002A55+52p
					; sub_1002A55+89p ...

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		xor	eax, eax
		cmp	[ebp+arg_4], eax
		jnz	short loc_100241C
		mov	eax, 80070057h
		jmp	short loc_1002449
; ---------------------------------------------------------------------------

loc_100241C:				; CODE XREF: sub_1002409+Aj
		mov	edx, [ebp+arg_0]
		push	esi
		mov	esi, [ebp+arg_8]

loc_1002423:				; CODE XREF: sub_1002409+2Cj
		mov	cx, [esi]
		test	cx, cx
		jz	short loc_1002437
		mov	[edx], cx
		inc	edx
		inc	edx
		inc	esi
		inc	esi
		dec	[ebp+arg_4]
		jnz	short loc_1002423

loc_1002437:				; CODE XREF: sub_1002409+20j
		cmp	[ebp+arg_4], 0
		pop	esi
		jnz	short loc_1002445
		dec	edx
		dec	edx
		mov	eax, 8007007Ah

loc_1002445:				; CODE XREF: sub_1002409+33j
		and	word ptr [edx],	0

loc_1002449:				; CODE XREF: sub_1002409+11j
		pop	ebp
		retn	0Ch
sub_1002409	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1002452(HWND hDlg, int, HWND hWndMain, int)
sub_1002452	proc near		; DATA XREF: sub_1002B87+1F2o

Point		= tagPOINT ptr -61Ch
hObject		= dword	ptr -614h
iSize		= dword	ptr -610h
Buffer		= byte ptr -60Ch
String1		= dword	ptr -20Ch
var_4		= dword	ptr -4
hDlg		= dword	ptr  8
arg_4		= dword	ptr  0Ch
hWndMain	= dword	ptr  10h
arg_C		= dword	ptr  14h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 61Ch
		mov	eax, ___security_cookie
		push	ebx
		mov	ebx, [ebp+hWndMain]
		mov	[ebp+var_4], eax
		mov	eax, [ebp+arg_4]
		sub	eax, 4Eh
		push	esi
		mov	esi, [ebp+hDlg]
		push	edi
		mov	edi, [ebp+arg_C]
		mov	[ebp+iSize], esi
		jz	loc_10025EB
		sub	eax, 5
		jz	loc_10025BE
		sub	eax, 28h
		jz	loc_1002555
		sub	eax, 95h
		jz	short loc_10024C2
		dec	eax
		jnz	loc_10026F9
		push	0		; lParam
		push	0		; wParam
		push	147h		; Msg
		push	101h		; nIDDlgItem
		push	esi		; hDlg
		call	ds:SendDlgItemMessageW
		mov	dword_1009030, eax
		jmp	loc_10026F9
; ---------------------------------------------------------------------------

loc_10024C2:				; CODE XREF: sub_1002452+48j
		push	lParam		; lParam
		mov	ebx, 143h
		push	0		; wParam
		push	ebx		; Msg
		mov	edi, 101h
		push	edi		; nIDDlgItem
		push	esi		; hDlg
		mov	esi, ds:SendDlgItemMessageW
		call	esi ; SendDlgItemMessageW
		push	dword_10090B8	; lParam
		push	0		; wParam
		push	ebx		; Msg
		push	edi		; nIDDlgItem
		push	[ebp+iSize]	; hDlg
		call	esi ; SendDlgItemMessageW
		push	dword_10090BC	; lParam
		push	0		; wParam
		push	ebx		; Msg
		push	edi		; nIDDlgItem
		push	[ebp+iSize]	; hDlg
		call	esi ; SendDlgItemMessageW
		push	dword_10090C0	; lParam
		push	0		; wParam
		push	ebx		; Msg
		push	edi		; nIDDlgItem
		push	[ebp+iSize]	; hDlg
		call	esi ; SendDlgItemMessageW
		mov	eax, dword_1009030
		dec	eax
		mov	ecx, lParam
		jz	short loc_1002539
		dec	eax
		jz	short loc_1002531
		dec	eax
		jnz	short loc_100253F
		mov	ecx, dword_10090C0
		jmp	short loc_100253F
; ---------------------------------------------------------------------------

loc_1002531:				; CODE XREF: sub_1002452+D2j
		mov	ecx, dword_10090BC
		jmp	short loc_100253F
; ---------------------------------------------------------------------------

loc_1002539:				; CODE XREF: sub_1002452+CFj
		mov	ecx, dword_10090B8

loc_100253F:				; CODE XREF: sub_1002452+D5j
					; sub_1002452+DDj ...
		push	ecx		; lParam
		push	0FFFFFFFFh	; wParam
		push	14Dh		; Msg
		push	edi		; nIDDlgItem
		push	[ebp+iSize]	; hDlg
		call	esi ; SendDlgItemMessageW
		jmp	loc_10026F9
; ---------------------------------------------------------------------------

loc_1002555:				; CODE XREF: sub_1002452+3Dj
		cmp	esi, ebx
		jnz	short loc_1002589
		lea	eax, [ebp+Point]
		push	eax		; lpPoint
		call	ds:GetCursorPos
		lea	eax, [ebp+Point]
		push	eax		; lpPoint
		push	esi		; hWnd
		call	ds:ScreenToClient
		push	[ebp+Point.y]
		push	[ebp+Point.x]	; Point
		push	esi		; hWndParent
		call	ds:ChildWindowFromPoint
		mov	ebx, eax

loc_1002589:				; CODE XREF: sub_1002452+105j
		push	ebx		; hWnd
		call	ds:GetDlgCtrlID
		cmp	eax, 101h
		jz	short loc_10025A2
		cmp	eax, 103h
		jnz	loc_10026F9

loc_10025A2:				; CODE XREF: sub_1002452+143j
		push	offset dword_100136C ; dwData
		push	0Ah		; uCommand
		push	lpszHelp	; lpszHelp
		push	ebx		; hWndMain

loc_10025B0:				; CODE XREF: sub_1002452+197j
		call	ds:WinHelpW
		xor	eax, eax
		inc	eax
		jmp	loc_10026FB
; ---------------------------------------------------------------------------

loc_10025BE:				; CODE XREF: sub_1002452+34j
		push	dword ptr [edi+0Ch] ; hWnd
		call	ds:GetDlgCtrlID
		cmp	eax, 101h
		jz	short loc_10025D9
		cmp	eax, 103h
		jnz	loc_10026F9

loc_10025D9:				; CODE XREF: sub_1002452+17Aj
		push	offset dword_100136C
		push	0Ch
		push	lpszHelp
		push	dword ptr [edi+0Ch]
		jmp	short loc_10025B0
; ---------------------------------------------------------------------------

loc_10025EB:				; CODE XREF: sub_1002452+2Bj
		cmp	dword ptr [edi+8], 0FFFFFDA6h
		jnz	loc_10026F9
		lea	eax, [ebp+String1]
		push	eax		; lParam
		push	104h		; wParam
		push	465h		; Msg
		push	esi		; hWnd
		call	ds:GetParent
		push	eax		; hWnd
		call	ds:SendMessageW
		test	eax, eax
		jle	loc_10026F9
		mov	ebx, offset String2
		push	ebx		; lpString2
		lea	eax, [ebp+String1]
		push	eax		; lpString1
		call	ds:lstrcmpiW
		test	eax, eax
		jz	loc_10026F9
		xor	edi, edi
		push	edi		; hTemplateFile
		push	80h		; dwFlagsAndAttributes
		push	3		; dwCreationDisposition
		push	edi		; lpSecurityAttributes
		push	1		; dwShareMode
		push	80000000h	; dwDesiredAccess
		lea	eax, [ebp+String1]
		push	eax		; lpFileName
		call	ds:CreateFileW
		cmp	eax, 0FFFFFFFFh
		mov	[ebp+hObject], eax
		jz	loc_10026F9
		push	edi		; lpOverlapped
		lea	ecx, [ebp+iSize]
		push	ecx		; lpNumberOfBytesRead
		push	400h		; nNumberOfBytesToRead
		lea	ecx, [ebp+Buffer]
		push	ecx		; lpBuffer
		push	eax		; hFile
		call	ds:ReadFile
		test	eax, eax
		jle	short loc_10026ED
		cmp	[ebp+iSize], edi
		jz	short loc_10026ED
		push	[ebp+iSize]	; iSize
		lea	eax, [ebp+Buffer]
		push	eax		; lpv
		call	sub_100239D
		mov	ecx, lParam
		mov	dword_1009030, eax
		dec	eax
		jz	short loc_10026C5
		dec	eax
		jz	short loc_10026BD
		dec	eax
		jnz	short loc_10026CB
		mov	ecx, dword_10090C0
		jmp	short loc_10026CB
; ---------------------------------------------------------------------------

loc_10026BD:				; CODE XREF: sub_1002452+25Ej
		mov	ecx, dword_10090BC
		jmp	short loc_10026CB
; ---------------------------------------------------------------------------

loc_10026C5:				; CODE XREF: sub_1002452+25Bj
		mov	ecx, dword_10090B8

loc_10026CB:				; CODE XREF: sub_1002452+261j
					; sub_1002452+269j ...
		push	ecx		; lParam
		push	0FFFFFFFFh	; wParam
		push	14Dh		; Msg
		push	101h		; nIDDlgItem
		push	esi		; hDlg
		call	ds:SendDlgItemMessageW
		lea	eax, [ebp+String1]
		push	eax		; lpString2
		push	ebx		; lpString1
		call	ds:lstrcpyW

loc_10026ED:				; CODE XREF: sub_1002452+233j
					; sub_1002452+23Bj
		push	[ebp+hObject]	; hObject
		call	ds:CloseHandle

loc_10026F9:				; CODE XREF: sub_1002452+4Bj
					; sub_1002452+6Bj ...
		xor	eax, eax

loc_10026FB:				; CODE XREF: sub_1002452+167j
		mov	ecx, [ebp+var_4]
		pop	edi
		pop	esi
		pop	ebx
		call	sub_1007147
		leave
		retn	10h
sub_1002452	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_100270F	proc near		; CODE XREF: sub_1002B87+187p
					; sub_100337E+Dp ...

var_210		= dword	ptr -210h
String2		= word ptr -20Ch
var_20A		= byte ptr -20Ah
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 210h
		mov	eax, ___security_cookie
		push	ebx
		push	esi
		push	edi
		mov	[ebp+var_4], eax
		xor	ebx, ebx
		xor	eax, eax
		mov	[ebp+String2], bx
		mov	ecx, 81h
		lea	edi, [ebp+var_20A]
		rep stosd
		xor	esi, esi
		inc	esi
		cmp	dword_100901C, ebx
		stosw
		mov	edi, ds:SendMessageW
		mov	[ebp+var_210], esi
		jz	short loc_100276A
		push	ebx		; lParam
		push	ebx		; wParam
		push	0Eh		; Msg
		push	hWnd		; hWnd
		call	edi ; SendMessageW
		test	eax, eax
		jz	loc_1002806

loc_100276A:				; CODE XREF: sub_100270F+45j
		push	ebx		; lParam
		push	ebx		; wParam
		push	0B8h		; Msg
		push	hWnd		; hWnd
		call	edi ; SendMessageW
		test	eax, eax
		jz	loc_10028FE
		cmp	dword_100901C, ebx
		mov	eax, lpString2
		mov	edi, offset word_100A900
		jnz	short loc_1002795
		mov	eax, edi

loc_1002795:				; CODE XREF: sub_100270F+82j
		mov	ecx, [ebp+arg_0]
		neg	ecx
		sbb	ecx, ecx
		and	ecx, 1000h
		movzx	ecx, cx
		or	ecx, 33h
		push	ecx		; uType
		push	eax		; lpString
		push	dword_100903C	; lpText
		mov	dword_1009854, esi
		push	lpCaption	; lpCaption
		push	dword_1009830	; hWnd
		call	sub_1001F70
		cmp	eax, 6
		mov	[ebp+var_210], eax
		mov	dword_1009854, ebx
		jnz	loc_10028FE
		cmp	dword_100901C, ebx
		jz	short loc_10027EB
		push	offset a_txt	; "*.txt"
		jmp	short loc_100280E
; ---------------------------------------------------------------------------

loc_10027EB:				; CODE XREF: sub_100270F+D3j
		mov	eax, dword_1009030
		push	ebx		; lpBuffer
		push	edi		; lpString
		push	dword_1009830	; hWnd
		mov	dword_100A528, eax
		call	sub_1004EAE
		test	eax, eax
		jz	short loc_100280D

loc_1002806:				; CODE XREF: sub_100270F+55j
		mov	eax, esi
		jmp	loc_100290A
; ---------------------------------------------------------------------------

loc_100280D:				; CODE XREF: sub_100270F+F5j
		push	edi		; lpString2

loc_100280E:				; CODE XREF: sub_100270F+DAj
		lea	eax, [ebp+String2]
		push	eax		; lpString1
		call	ds:lstrcpyW
		mov	edi, ds:GetSaveFileNameW
		mov	ebx, offset stru_100A680
		jmp	short loc_1002868
; ---------------------------------------------------------------------------

loc_1002828:				; CODE XREF: sub_100270F+1B1j
		push	stru_100A680.lpstrFile ; lpString2
		lea	eax, [ebp+String2]
		push	eax		; lpString1
		call	ds:lstrcpyW
		push	esi		; lpBuffer
		lea	eax, [ebp+String2]
		push	eax		; lpString
		push	dword_1009830	; hWnd
		call	sub_1004EAE
		test	eax, eax
		lea	eax, [ebp+String2]
		jnz	loc_1002919
		push	offset word_100A900 ; lpString2
		push	eax		; lpString1
		call	ds:lstrcpyW

loc_1002868:				; CODE XREF: sub_100270F+117j
		lea	eax, [ebp+String2]
		mov	stru_100A680.lpstrFile,	eax
		mov	eax, dword_1009090
		push	ebx		; LPOPENFILENAMEW
		mov	dword_1009854, esi
		mov	stru_100A680.nFilterIndex, esi
		mov	stru_100A680.lpstrDefExt, offset aTxt ;	"txt"
		mov	stru_100A680.lpstrFilter, offset word_100A540
		mov	stru_100A680.lpfnHook, offset sub_1001A28
		mov	stru_100A680.lpTemplateName, offset aNpencodingdial ; "NpEncodingDialog"
		mov	stru_100A680.Flags, 888866h
		mov	stru_100A680.lpstrTitle, eax
		call	edi ; GetSaveFileNameW
		test	eax, eax
		jnz	loc_1002828
		mov	[ebp+var_210], 2
		call	ds:CommDlgExtendedError
		test	eax, eax
		jz	short loc_10028F7
		push	1010h		; uType
		push	lpCaption	; lpCaption
		push	dword_100904C	; lpText
		push	dword_1009830	; hWnd
		call	ds:MessageBoxW

loc_10028F7:				; CODE XREF: sub_100270F+1C9j
					; sub_100270F+220j
		and	dword_1009854, 0

loc_10028FE:				; CODE XREF: sub_100270F+6Cj
					; sub_100270F+C7j
		xor	eax, eax
		cmp	[ebp+var_210], 2
		setnz	al

loc_100290A:				; CODE XREF: sub_100270F+F9j
		mov	ecx, [ebp+var_4]
		pop	edi
		pop	esi
		pop	ebx
		call	sub_1007147
		leave
		retn	4
; ---------------------------------------------------------------------------

loc_1002919:				; CODE XREF: sub_100270F+147j
		push	eax		; lpString2
		push	offset word_100A900 ; lpString1
		call	ds:lstrcpyW
		mov	eax, dword_100A528
		mov	dword_1009030, eax
		jmp	short loc_10028F7
sub_100270F	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1002936(HINSTANCE hInstance, int, int, int nCmdShow)
sub_1002936	proc near		; CODE XREF: start+16Fp

Msg		= tagMSG ptr -20h
var_4		= dword	ptr -4
hInstance	= dword	ptr  8
arg_4		= dword	ptr  0Ch
nCmdShow	= dword	ptr  14h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 20h
		push	esi
		push	edi
		call	ds:GetCommandLineW
		push	offset ProcName	; "RegisterPenApp"
		push	29h		; nIndex
		mov	edi, eax
		call	ds:GetSystemMetrics
		push	eax		; hModule
		call	ds:GetProcAddress
		xor	esi, esi
		cmp	eax, esi
		mov	[ebp+var_4], eax
		jz	short loc_100296B
		push	1
		push	1
		call	eax

loc_100296B:				; CODE XREF: sub_1002936+2Dj
		push	[ebp+nCmdShow]	; nCmdShow
		push	edi		; lpsz
		call	sub_1001BE8
		push	eax		; int
		push	[ebp+arg_4]	; int
		push	[ebp+hInstance]	; hInstance
		call	sub_1004565
		test	eax, eax
		jnz	short loc_100298C
		mov	[ebp+Msg.wParam], esi
		jmp	loc_1002A3C
; ---------------------------------------------------------------------------

loc_100298C:				; CODE XREF: sub_1002936+4Cj
		push	ebx
		push	esi		; dwFlags
		push	esi		; idThread
		call	ds:GetCurrentProcessId
		push	eax		; idProcess
		push	offset pfnWinEventProc ; pfnWinEventProc
		push	esi		; hmodWinEventProc
		mov	eax, 800Bh
		push	eax		; eventMax
		push	eax		; eventMin
		call	ds:SetWinEventHook
		mov	edi, ds:GetMessageW
		mov	ebx, eax
		jmp	short loc_1002A12
; ---------------------------------------------------------------------------

loc_10029B3:				; CODE XREF: sub_1002936+E7j
		cmp	[ebp+Msg.message], 50h
		jnz	short loc_10029CC
		push	esi		; lParam
		push	esi		; wParam
		push	8001h		; Msg
		push	dword_1009830	; hWnd
		call	ds:PostMessageW

loc_10029CC:				; CODE XREF: sub_1002936+81j
		mov	eax, hDlg
		cmp	eax, esi
		jz	short loc_10029E4
		lea	ecx, [ebp+Msg]
		push	ecx		; lpMsg
		push	eax		; hDlg
		call	ds:IsDialogMessageW
		test	eax, eax
		jnz	short loc_1002A12

loc_10029E4:				; CODE XREF: sub_1002936+9Dj
		lea	eax, [ebp+Msg]
		push	eax		; lpMsg
		push	hAccTable	; hAccTable
		push	dword_1009830	; hWnd
		call	ds:TranslateAcceleratorW
		test	eax, eax
		jnz	short loc_1002A12
		lea	eax, [ebp+Msg]
		push	eax		; lpMsg
		call	ds:TranslateMessage
		lea	eax, [ebp+Msg]
		push	eax		; lpMsg
		call	ds:DispatchMessageW

loc_1002A12:				; CODE XREF: sub_1002936+7Bj
					; sub_1002936+ACj ...
		push	esi		; wMsgFilterMax
		push	esi		; wMsgFilterMin
		lea	eax, [ebp+Msg]
		push	esi		; hWnd
		push	eax		; lpMsg
		call	edi ; GetMessageW
		test	eax, eax
		jnz	short loc_10029B3
		call	sub_1001929
		push	dword_100AB8C	; hMem
		call	ds:LocalFree
		cmp	ebx, esi
		jz	short loc_1002A3B
		push	ebx		; hWinEventHook
		call	ds:UnhookWinEvent

loc_1002A3B:				; CODE XREF: sub_1002936+FCj
		pop	ebx

loc_1002A3C:				; CODE XREF: sub_1002936+51j
		cmp	[ebp+var_4], esi
		jz	short loc_1002A47
		push	esi
		push	1
		call	[ebp+var_4]

loc_1002A47:				; CODE XREF: sub_1002936+109j
		mov	eax, [ebp+Msg.wParam]
		pop	edi
		pop	esi
		leave
		retn	10h
sub_1002936	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1002A55(LPCWSTR lpFileName)
sub_1002A55	proc near		; CODE XREF: sub_1004565+3C1p
					; sub_1004565+50Fp ...

FindFileData	= _WIN32_FIND_DATAW ptr	-7C8h
var_578		= word ptr -578h
String		= word ptr -370h
lParam		= word ptr -104h
var_102		= byte ptr -102h
var_4		= dword	ptr -4
lpFileName	= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 7C8h
		mov	eax, ___security_cookie
		and	[ebp+lParam], 0
		push	esi
		mov	esi, [ebp+lpFileName]
		push	edi
		push	3Fh
		mov	[ebp+var_4], eax
		pop	ecx
		push	lpString2	; lpString2
		xor	eax, eax
		lea	edi, [ebp+var_102]
		rep stosd
		push	esi		; lpString1
		stosw
		call	ds:lstrcmpW
		test	eax, eax
		jnz	short loc_1002AAE
		push	lpString2
		lea	eax, [ebp+String]
		push	136h
		push	eax
		call	sub_1002409
		jmp	short loc_1002B14
; ---------------------------------------------------------------------------

loc_1002AAE:				; CODE XREF: sub_1002A55+3Ej
		push	esi		; lpFileName
		call	ds:GetFileAttributesW
		lea	eax, [ebp+FindFileData]
		push	eax		; lpFindFileData
		push	esi		; lpFileName
		call	ds:FindFirstFileW
		mov	edi, eax
		cmp	edi, 0FFFFFFFFh
		jz	short loc_1002AEC
		lea	eax, [ebp+FindFileData.cFileName]
		push	eax
		mov	esi, 104h
		push	esi
		lea	eax, [ebp+var_578]
		push	eax
		call	sub_1002409
		push	edi		; hFindFile
		call	ds:FindClose
		jmp	short loc_1002AFF
; ---------------------------------------------------------------------------

loc_1002AEC:				; CODE XREF: sub_1002A55+73j
		push	esi
		mov	esi, 104h
		push	esi
		lea	eax, [ebp+var_578]
		push	eax
		call	sub_1002409

loc_1002AFF:				; CODE XREF: sub_1002A55+95j
		push	esi		; cchSize
		lea	eax, [ebp+String]
		push	eax		; Buf
		lea	eax, [ebp+var_578]
		push	eax		; LPCWSTR
		call	ds:GetFileTitleW

loc_1002B14:				; CODE XREF: sub_1002A55+57j
		push	1
		push	1
		push	Format		; Format
		lea	eax, [ebp+lParam]
		push	7Fh		; Count
		push	eax		; Dest
		call	ds:_snwprintf
		mov	eax, dword_1009834
		add	esp, 14h
		test	eax, eax
		pop	edi
		pop	esi
		jz	short loc_1002B50
		lea	ecx, [ebp+lParam]
		push	ecx		; lParam
		push	1		; wParam
		push	40Bh		; Msg
		push	eax		; hWnd
		call	ds:SendMessageW

loc_1002B50:				; CODE XREF: sub_1002A55+E4j
		push	dword_1009044	; lpString2
		lea	eax, [ebp+String]
		push	eax		; lpString1
		call	ds:lstrcatW
		lea	eax, [ebp+String]
		push	eax		; lpString
		push	dword_1009830	; hWnd
		call	ds:SetWindowTextW
		mov	ecx, [ebp+var_4]
		call	sub_1007147
		leave
		retn	4
sub_1002A55	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1002B87(HWND hWnd, __int16,	int)
sub_1002B87	proc near		; CODE XREF: sub_1003429+3FFp
					; sub_1003429+4F9p

var_260		= CHOOSEFONTW ptr -260h
lParam		= dword	ptr -224h
Rect		= tagRECT ptr -220h
wParam		= dword	ptr -210h
String2		= word ptr -20Ch
var_20A		= byte ptr -20Ah
var_4		= dword	ptr -4
hWnd		= dword	ptr  8
arg_4		= word ptr  0Ch

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 260h
		mov	eax, ___security_cookie
		mov	edx, [ebp+hWnd]
		push	ebx
		push	esi
		push	edi
		mov	[ebp+var_4], eax
		xor	esi, esi
		xor	eax, eax
		mov	[ebp+String2], si
		mov	ecx, 81h
		lea	edi, [ebp+var_20A]
		rep stosd
		stosw
		movzx	edi, [ebp+arg_4]
		cmp	edi, 40h
		mov	[ebp+wParam], edx
		jg	loc_10032C6
		jz	loc_10032AE
		cmp	edi, 15h
		jg	loc_1002EAA
		jz	loc_1002FCE
		cmp	edi, 5
		jg	loc_1002E5F
		jz	loc_1002DFC
		dec	edi
		jz	loc_1002DF0
		dec	edi
		jz	loc_1002D0D
		dec	edi
		jz	short loc_1002C0C
		dec	edi
		jz	short loc_1002C37

loc_1002C05:				; CODE XREF: sub_1002B87+2EAj
					; sub_1002B87+346j ...
		xor	eax, eax
		jmp	loc_100336A
; ---------------------------------------------------------------------------

loc_1002C0C:				; CODE XREF: sub_1002B87+79j
		cmp	dword_100901C, esi
		mov	eax, dword_1009030
		mov	dword_100A528, eax
		jnz	short loc_1002C37
		push	esi		; lpBuffer
		push	offset word_100A900 ; lpString
		push	dword_1009830	; hWnd
		call	sub_1004EAE
		test	eax, eax
		jnz	loc_1003367

loc_1002C37:				; CODE XREF: sub_1002B87+7Cj
					; sub_1002B87+95j
		cmp	dword_100901C, esi
		mov	edi, ds:lstrcpynW
		lea	eax, [ebp+String2]
		mov	stru_100A680.lpstrFile,	eax
		mov	eax, dword_1009090
		mov	stru_100A680.lpstrTitle, eax
		mov	stru_100A680.Flags, 888866h
		mov	stru_100A680.lpTemplateName, offset aNpencodingdial ; "NpEncodingDialog"
		mov	stru_100A680.lpfnHook, offset sub_1001A28
		mov	stru_100A680.lpstrFilter, offset word_100A540
		mov	stru_100A680.lpstrDefExt, offset aTxt ;	"txt"
		mov	ebx, 104h
		lea	eax, [ebp+String2]
		jnz	short loc_1002CA2
		push	ebx		; iMaxLength
		push	offset word_100A900 ; lpString2
		push	eax		; lpString1
		call	edi ; lstrcpynW
		jmp	short loc_1002CAE
; ---------------------------------------------------------------------------

loc_1002CA2:				; CODE XREF: sub_1002B87+10Ej
		push	offset a_txt	; "*.txt"
		push	eax		; lpString1
		call	ds:lstrcpyW

loc_1002CAE:				; CODE XREF: sub_1002B87+119j
		xor	eax, eax
		inc	eax
		push	offset stru_100A680 ; LPOPENFILENAMEW
		mov	dword_1009854, eax
		mov	stru_100A680.nFilterIndex, eax
		call	ds:GetSaveFileNameW
		test	eax, eax
		jz	short loc_1002CFD
		push	1		; lpBuffer
		lea	eax, [ebp+String2]
		push	eax		; lpString
		push	[ebp+wParam]	; hWnd
		call	sub_1004EAE
		test	eax, eax
		jz	short loc_1002D02
		push	ebx		; iMaxLength
		lea	eax, [ebp+String2]
		push	eax		; lpString2
		push	offset word_100A900 ; lpString1
		call	edi ; lstrcpynW
		mov	eax, dword_100A528
		mov	dword_1009030, eax
		jmp	short loc_1002D02
; ---------------------------------------------------------------------------

loc_1002CFD:				; CODE XREF: sub_1002B87+141j
		call	sub_1001FF0

loc_1002D02:				; CODE XREF: sub_1002B87+159j
					; sub_1002B87+174j
		mov	dword_1009854, esi
		jmp	loc_1003367
; ---------------------------------------------------------------------------

loc_1002D0D:				; CODE XREF: sub_1002B87+72j
		push	esi
		call	sub_100270F
		test	eax, eax
		jz	loc_1003367
		mov	ebx, dword_1009030
		lea	eax, [ebp+String2]
		push	offset a_txt	; "*.txt"
		push	eax		; lpString1
		mov	stru_100A680.lpstrFile,	eax
		call	ds:lstrcpyW
		mov	eax, dword_100908C
		push	offset stru_100A680 ; LPOPENFILENAMEW
		mov	stru_100A680.lpstrTitle, eax
		mov	stru_100A680.lpstrFilter, offset word_100A5E0
		mov	stru_100A680.lpstrDefExt, offset aTxt ;	"txt"
		mov	stru_100A680.Flags, 881064h
		mov	stru_100A680.nFilterIndex, 1
		mov	stru_100A680.lpTemplateName, offset aNpencodingdial ; "NpEncodingDialog"
		mov	stru_100A680.lpfnHook, offset sub_1002452
		call	ds:GetOpenFileNameW
		test	eax, eax
		jz	short loc_1002DE0
		mov	edi, hFile
		push	esi		; hTemplateFile
		push	80h		; dwFlagsAndAttributes
		push	3		; dwCreationDisposition
		push	esi		; lpSecurityAttributes
		push	3		; dwShareMode
		push	80000000h	; dwDesiredAccess
		lea	eax, [ebp+String2]
		push	eax		; lpFileName
		call	ds:CreateFileW
		push	dword_1009030	; int
		mov	hFile, eax
		lea	eax, [ebp+String2]
		push	eax		; lpString
		call	sub_1005179
		test	eax, eax
		jnz	loc_1003367
		mov	hFile, edi
		mov	dword_1009030, ebx
		jmp	loc_1003367
; ---------------------------------------------------------------------------

loc_1002DE0:				; CODE XREF: sub_1002B87+204j
		mov	dword_1009030, ebx

loc_1002DE6:				; CODE XREF: sub_1002B87+29Bj
		call	sub_1001FF0
		jmp	loc_1003367
; ---------------------------------------------------------------------------

loc_1002DF0:				; CODE XREF: sub_1002B87+6Bj
		push	1
		call	sub_1004CFF
		jmp	loc_1003367
; ---------------------------------------------------------------------------

loc_1002DFC:				; CODE XREF: sub_1002B87+64j
		mov	edi, ds:PageSetupDlgW
		mov	ebx, offset stru_100A4A0
		jmp	short loc_1002E35
; ---------------------------------------------------------------------------

loc_1002E09:				; CODE XREF: sub_1002B87+2B3j
		call	ds:CommDlgExtendedError
		cmp	eax, 100Bh
		jz	short loc_1002E24
		cmp	eax, 1009h
		jz	short loc_1002E24
		cmp	eax, 100Ch
		jnz	short loc_1002DE6

loc_1002E24:				; CODE XREF: sub_1002B87+28Dj
					; sub_1002B87+294j
		call	sub_1001929
		mov	stru_100A4A0.hDevNames,	esi
		mov	stru_100A4A0.hDevMode, esi

loc_1002E35:				; CODE XREF: sub_1002B87+280j
		push	ebx		; LPPAGESETUPDLGW
		call	edi ; PageSetupDlgW
		test	eax, eax
		jz	short loc_1002E09
		mov	esi, ds:lstrcpyW
		push	offset word_100A340 ; lpString2
		push	offset String1	; lpString1
		call	esi ; lstrcpyW
		push	offset word_100A390 ; lpString2
		push	offset word_100A430 ; lpString1
		call	esi ; lstrcpyW
		jmp	loc_1003367
; ---------------------------------------------------------------------------

loc_1002E5F:				; CODE XREF: sub_1002B87+5Ej
		sub	edi, 6
		jz	short loc_1002E9F
		dec	edi
		jz	short loc_1002E8F
		sub	edi, 8
		jz	loc_1003367
		dec	edi
		jnz	loc_1002C05
		push	esi		; lParam
		push	esi		; wParam
		push	0C7h		; Msg
		push	hWnd		; hWnd

loc_1002E84:				; CODE XREF: sub_1002B87+68Fj
		call	ds:SendMessageW
		jmp	loc_1003367
; ---------------------------------------------------------------------------

loc_1002E8F:				; CODE XREF: sub_1002B87+2DEj
		push	esi		; lParam
		push	esi		; wParam
		push	10h		; Msg
		push	edx		; hWnd

loc_1002E94:				; CODE XREF: sub_1002B87+7B5j
		call	ds:PostMessageW
		jmp	loc_1003367
; ---------------------------------------------------------------------------

loc_1002E9F:				; CODE XREF: sub_1002B87+2DBj
		push	esi
		call	sub_1006E4B
		jmp	loc_1003367
; ---------------------------------------------------------------------------

loc_1002EAA:				; CODE XREF: sub_1002B87+4Fj
		cmp	edi, 1Ah
		jg	loc_1003019
		jz	loc_100300E
		sub	edi, 16h
		jz	loc_1002FB6
		dec	edi
		jz	loc_1002F5C
		dec	edi
		jz	short loc_1002F2A
		dec	edi
		jnz	loc_1002C05
		push	dword_1009830	; hWnd
		call	ds:GetMenu
		mov	edi, ds:SendMessageW
		push	esi		; lParam
		push	esi		; wParam
		push	0Eh		; Msg
		push	hWnd		; hWnd
		mov	ebx, eax
		call	edi ; SendMessageW
		push	eax		; lParam
		push	esi		; wParam
		push	0B1h		; Msg
		push	hWnd		; hWnd
		call	edi ; SendMessageW
		push	esi		; lParam
		push	esi		; wParam
		push	0B7h		; Msg
		push	hWnd		; hWnd
		call	edi ; SendMessageW
		push	1		; uEnable
		push	19h		; uIDEnableItem
		push	1		; nPos
		push	ebx		; hMenu
		call	ds:GetSubMenu

loc_1002F1E:				; CODE XREF: sub_1002B87+653j
		push	eax		; hMenu
		call	ds:EnableMenuItem
		jmp	loc_1003367
; ---------------------------------------------------------------------------

loc_1002F2A:				; CODE XREF: sub_1002B87+343j
		push	esi		; dwInitParam
		push	offset DialogFunc ; lpDialogFunc
		push	dword_1009830	; hWndParent
		push	0Eh		; lpTemplateName
		push	hInstance	; hInstance
		call	ds:DialogBoxParamW
		test	eax, eax
		jnz	loc_1003367
		push	dword_100AB94
		call	sub_1001B99
		jmp	loc_1003367
; ---------------------------------------------------------------------------

loc_1002F5C:				; CODE XREF: sub_1002B87+33Cj
		mov	eax, hDlg
		cmp	eax, esi
		jz	short loc_1002F71

loc_1002F65:				; CODE XREF: sub_1002B87+44Ej
		push	eax		; hWnd
		call	ds:SetFocus
		jmp	loc_1003367
; ---------------------------------------------------------------------------

loc_1002F71:				; CODE XREF: sub_1002B87+3DCj
		push	offset stru_100A500 ; LPFINDREPLACEW
		mov	stru_100A500.Flags, 10010h
		mov	stru_100A500.lpstrReplaceWith, offset unk_100A700
		mov	stru_100A500.wReplaceWithLen, 80h
		mov	stru_100A500.lpstrFindWhat, offset word_100A800
		mov	stru_100A500.wFindWhatLen, 80h
		call	ds:ReplaceTextW

loc_1002FAC:				; CODE XREF: sub_1002B87+485j
		mov	hDlg, eax
		jmp	loc_1003367
; ---------------------------------------------------------------------------

loc_1002FB6:				; CODE XREF: sub_1002B87+335j
		cmp	word_100A800, si
		jz	short loc_1002FCE
		push	offset word_100A800 ; Str2
		call	sub_100594C
		jmp	loc_1003367
; ---------------------------------------------------------------------------

loc_1002FCE:				; CODE XREF: sub_1002B87+55j
					; sub_1002B87+436j
		mov	eax, hDlg
		cmp	eax, esi
		jnz	short loc_1002F65
		push	offset stru_100A500 ; LPFINDREPLACEW
		mov	stru_100A500.Flags, 10001h
		mov	stru_100A500.lpstrReplaceWith, esi
		mov	stru_100A500.wReplaceWithLen, si
		mov	stru_100A500.lpstrFindWhat, offset word_100A800
		mov	stru_100A500.wFindWhatLen, 80h
		call	ds:FindTextW
		jmp	short loc_1002FAC
; ---------------------------------------------------------------------------

loc_100300E:				; CODE XREF: sub_1002B87+32Cj
		push	esi
		call	sub_1006F10
		jmp	loc_1003367
; ---------------------------------------------------------------------------

loc_1003019:				; CODE XREF: sub_1002B87+326j
		push	1Bh
		pop	ebx
		sub	edi, ebx
		jz	loc_100321B
		sub	edi, 5
		jz	loc_100313E
		dec	edi
		jnz	loc_1002C05
		push	esi		; hWnd
		call	ds:GetDC
		mov	ebx, eax
		cmp	ebx, esi
		jz	loc_1003367
		mov	eax, [ebp+wParam]
		push	2D0h		; nDenominator
		push	5Ah		; index
		mov	edi, offset lf
		push	ebx		; hdc
		mov	[ebp+var_260.lStructSize], 3Ch
		mov	[ebp+var_260.hwndOwner], eax
		mov	[ebp+var_260.lpLogFont], edi
		call	ds:GetDeviceCaps
		push	eax		; nNumerator
		push	Data		; nNumber
		call	ds:MulDiv
		push	ebx		; hDC
		neg	eax
		push	esi		; hWnd
		mov	lf.lfHeight, eax
		mov	[ebp+var_260.Flags], 1000041h
		mov	[ebp+var_260.rgbColors], esi
		mov	[ebp+var_260.lCustData], esi
		mov	[ebp+var_260.lpfnHook],	esi
		mov	[ebp+var_260.lpTemplateName], esi
		mov	[ebp+var_260.hInstance], esi
		mov	[ebp+var_260.lpszStyle], esi
		mov	[ebp+var_260.nFontType], 2000h
		mov	[ebp+var_260.nSizeMin],	esi
		mov	[ebp+var_260.nSizeMax],	esi
		call	ds:ReleaseDC
		lea	eax, [ebp+var_260]
		push	eax		; LPCHOOSEFONTW
		call	ds:ChooseFontW
		test	eax, eax
		jz	loc_1003367
		push	hCursor		; hCursor
		mov	ebx, ds:SetCursor
		call	ebx ; SetCursor
		push	edi		; lplf
		call	ds:CreateFontIndirectW
		mov	edi, eax
		cmp	edi, esi
		jz	short loc_1003131
		push	ho		; ho
		call	ds:DeleteObject
		push	1		; lParam
		push	edi		; wParam
		push	30h		; Msg
		push	hWnd		; hWnd
		mov	ho, edi
		call	ds:SendMessageW
		mov	eax, [ebp+var_260.iPointSize]
		mov	Data, eax

loc_1003131:				; CODE XREF: sub_1002B87+57Aj
		push	dword_100AB88	; hCursor
		call	ebx ; SetCursor
		jmp	loc_1003367
; ---------------------------------------------------------------------------

loc_100313E:				; CODE XREF: sub_1002B87+4A0j
		mov	eax, dword_1009850
		neg	eax
		sbb	eax, eax
		and	eax, 100000h
		add	eax, 50200104h
		push	eax		; hWnd
		call	sub_1005B41
		test	eax, eax
		jz	short loc_100316D
		xor	eax, eax
		cmp	dword_1009850, esi
		setz	al
		mov	dword_1009850, eax
		jmp	short loc_1003187
; ---------------------------------------------------------------------------

loc_100316D:				; CODE XREF: sub_1002B87+5D2j
		push	30h		; uType
		push	lpCaption	; lpCaption
		push	dword_100906C	; lpText
		push	dword_1009830	; hWnd
		call	ds:MessageBoxW

loc_1003187:				; CODE XREF: sub_1002B87+5E4j
		cmp	dword_1009850, esi
		jz	short loc_10031DF
		mov	eax, dword_1009840
		cmp	eax, esi
		mov	dword_1009844, eax
		jz	short loc_10031B0
		push	esi		; lParam
		push	ebx		; wParam
		push	111h		; Msg
		push	[ebp+wParam]	; hWnd
		call	ds:SendMessageW

loc_10031B0:				; CODE XREF: sub_1002B87+614j
		push	dword_1009830	; hWnd
		call	ds:GetMenu
		push	esi		; uCheck
		mov	esi, ds:GetSubMenu
		push	ebx		; uIDCheckItem
		mov	edi, eax
		push	3		; nPos
		push	edi		; hMenu
		call	esi ; GetSubMenu
		push	eax		; hMenu
		call	ds:CheckMenuItem
		push	1
		push	ebx
		push	3		; nPos
		push	edi		; hMenu
		call	esi ; GetSubMenu
		jmp	loc_1002F1E
; ---------------------------------------------------------------------------

loc_10031DF:				; CODE XREF: sub_1002B87+606j
		push	dword_1009830	; hWnd
		call	ds:GetMenu
		push	esi		; uEnable
		push	ebx		; uIDEnableItem
		push	3		; nPos
		push	eax		; hMenu
		call	ds:GetSubMenu
		push	eax		; hMenu
		call	ds:EnableMenuItem
		cmp	dword_1009844, esi
		jz	loc_1003367
		push	esi
		push	ebx
		push	111h
		push	[ebp+wParam]
		jmp	loc_1002E84
; ---------------------------------------------------------------------------

loc_100321B:				; CODE XREF: sub_1002B87+497j
		lea	eax, [ebp+Rect]
		push	eax		; lpRect
		push	dword_1009830	; hWnd
		call	ds:GetClientRect
		cmp	dword_1009840, esi
		jz	short loc_100326D
		push	esi		; nCmdShow
		push	dword_1009834	; hWnd
		mov	dword_1009840, esi
		call	ds:ShowWindow
		mov	eax, [ebp+Rect.bottom]
		sub	eax, [ebp+Rect.top]
		push	eax		; int
		mov	eax, [ebp+Rect.right]
		sub	eax, [ebp+Rect.left]
		push	eax		; nWidth
		call	sub_10019E0
		jmp	loc_1003367
; ---------------------------------------------------------------------------

loc_100326D:				; CODE XREF: sub_1002B87+6ADj
		mov	eax, [ebp+Rect.bottom]
		sub	eax, [ebp+Rect.top]
		xor	esi, esi
		push	eax		; int
		mov	eax, [ebp+Rect.right]
		sub	eax, [ebp+Rect.left]
		inc	esi
		push	eax		; nWidth
		mov	dword_1009840, esi
		call	sub_10019E0
		push	esi
		call	sub_1001C42
		push	5		; nCmdShow
		push	dword_1009834	; hWnd
		call	ds:ShowWindow
		jmp	loc_1003367
; ---------------------------------------------------------------------------

loc_10032AE:				; CODE XREF: sub_1002B87+46j
		push	esi
		push	esi
		push	offset aNotepad_chm ; "notepad.chm"
		call	ds:GetDesktopWindow
		push	eax
		call	sub_10072C3
		jmp	loc_1003367
; ---------------------------------------------------------------------------

loc_10032C6:				; CODE XREF: sub_1002B87+40j
		cmp	edi, 41h
		jz	short loc_1003341
		cmp	edi, 2FFh
		jle	loc_1002C05
		cmp	edi, 301h
		jle	short loc_10032F3
		cmp	edi, 302h
		jz	short loc_1003320
		cmp	edi, 303h
		jnz	loc_1002C05

loc_10032F3:				; CODE XREF: sub_1002B87+756j
		lea	eax, [ebp+lParam]
		push	eax		; lParam
		lea	eax, [ebp+wParam]
		push	eax		; wParam
		push	0B0h		; Msg
		push	hWnd		; hWnd
		call	ds:SendMessageW
		mov	eax, [ebp+wParam]
		cmp	eax, [ebp+lParam]
		jz	short loc_1003367

loc_1003320:				; CODE XREF: sub_1002B87+75Ej
		call	ds:GetFocus
		mov	ecx, hWnd
		cmp	eax, ecx
		jz	short loc_1003338
		cmp	eax, dword_1009830
		jnz	short loc_1003367

loc_1003338:				; CODE XREF: sub_1002B87+7A7j
		push	esi
		push	esi
		push	edi
		push	ecx
		jmp	loc_1002E94
; ---------------------------------------------------------------------------

loc_1003341:				; CODE XREF: sub_1002B87+742j
		push	2		; lpIconName
		push	hInstance	; hInstance
		call	ds:LoadIconW
		push	eax		; hIcon
		push	offset szOtherStuff ; szOtherStuff
		push	lpCaption	; szApp
		push	dword_1009830	; hWnd
		call	ds:ShellAboutW

loc_1003367:				; CODE XREF: sub_1002B87+AAj
					; sub_1002B87+181j ...
		xor	eax, eax
		inc	eax

loc_100336A:				; CODE XREF: sub_1002B87+80j
		mov	ecx, [ebp+var_4]
		pop	edi
		pop	esi
		pop	ebx
		call	sub_1007147
		leave
		retn	0Ch
sub_1002B87	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================


sub_100337E	proc near		; CODE XREF: sub_10033DC+35p
		mov	edi, edi
		push	esi
		push	edi
		mov	edi, hFile
		xor	esi, esi
		push	esi
		call	sub_100270F
		test	eax, eax
		jz	short loc_10033D4
		push	esi		; hTemplateFile
		push	80h		; dwFlagsAndAttributes
		push	3		; dwCreationDisposition
		push	esi		; lpSecurityAttributes
		push	3		; dwShareMode
		push	80000000h	; dwDesiredAccess
		mov	esi, offset FileName
		push	esi		; lpFileName
		call	ds:CreateFileW
		cmp	eax, 0FFFFFFFFh
		mov	hFile, eax
		jnz	short loc_10033C2
		push	esi		; lpString
		call	sub_1004E20
		jmp	short loc_10033CE
; ---------------------------------------------------------------------------

loc_10033C2:				; CODE XREF: sub_100337E+3Aj
		push	0FFFFFFFFh	; int
		push	esi		; lpString
		call	sub_1005179
		test	eax, eax
		jnz	short loc_10033D4

loc_10033CE:				; CODE XREF: sub_100337E+42j
		mov	hFile, edi

loc_10033D4:				; CODE XREF: sub_100337E+14j
					; sub_100337E+4Ej
		pop	edi
		pop	esi
		retn
sub_100337E	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_10033DC(HDROP hDrop, HWND hWnd)
sub_10033DC	proc near		; CODE XREF: sub_1003429+40Fp

hDrop		= dword	ptr  8
hWnd		= dword	ptr  0Ch

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, ds:DragQueryFileW
		push	0		; cch
		push	0		; lpszFile
		push	0FFFFFFFFh	; iFile
		push	[ebp+hDrop]	; hDrop
		call	esi ; DragQueryFileW
		test	eax, eax
		jz	short loc_1003416
		push	104h		; cch
		push	offset FileName	; lpszFile
		push	0		; iFile
		push	[ebp+hDrop]	; hDrop
		call	esi ; DragQueryFileW
		push	[ebp+hWnd]	; hWnd
		call	ds:SetActiveWindow
		call	sub_100337E

loc_1003416:				; CODE XREF: sub_10033DC+19j
		push	[ebp+hDrop]	; hDrop
		call	ds:DragFinish
		pop	esi
		pop	ebp
		retn	8
sub_10033DC	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1003429(HWND hWnd, UINT Msg, WPARAM	hDrop, int)
sub_1003429	proc near		; DATA XREF: sub_10044D7+62o

lParam		= dword	ptr -8
var_4		= dword	ptr -4
hWnd		= dword	ptr  8
Msg		= dword	ptr  0Ch
hDrop		= dword	ptr  10h
arg_C		= dword	ptr  14h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ecx
		push	esi
		mov	esi, [ebp+Msg]
		cmp	esi, 1Ch
		push	edi
		push	8
		pop	edx
		ja	loc_1003682
		jz	loc_10035FE
		cmp	esi, edx
		ja	loc_100353C
		jz	loc_1003530
		mov	eax, esi
		dec	eax
		dec	eax
		jz	loc_1003526
		sub	eax, 3
		jz	short loc_10034C5
		dec	eax
		jz	short loc_1003486
		dec	eax
		jnz	loc_10036CA
		push	dword_1009830	; hWnd
		call	ds:IsIconic
		test	eax, eax
		jnz	short loc_10034BD
		push	hWnd
		jmp	short loc_10034B7
; ---------------------------------------------------------------------------

loc_1003486:				; CODE XREF: sub_1003429+3Cj
		cmp	word ptr [ebp+hDrop], 1
		jz	short loc_1003494
		cmp	word ptr [ebp+hDrop], 2
		jnz	short loc_10034BD

loc_1003494:				; CODE XREF: sub_1003429+62j
		push	dword_1009830	; hWnd
		call	ds:IsIconic
		test	eax, eax
		jnz	short loc_10034BD
		mov	esi, ds:GetForegroundWindow
		call	esi ; GetForegroundWindow
		cmp	eax, dword_1009830
		jnz	short loc_10034BD
		call	esi ; GetForegroundWindow
		push	eax		; hWnd

loc_10034B7:				; CODE XREF: sub_1003429+5Bj
		call	ds:SetFocus

loc_10034BD:				; CODE XREF: sub_1003429+53j
					; sub_1003429+69j ...
		xor	eax, eax

loc_10034BF:				; CODE XREF: sub_1003429+15Ej
					; sub_1003429+3B3j
		pop	edi
		pop	esi
		leave
		retn	10h
; ---------------------------------------------------------------------------

loc_10034C5:				; CODE XREF: sub_1003429+39j
		mov	eax, [ebp+hDrop]
		xor	esi, esi
		sub	eax, esi
		jz	short loc_10034D4
		dec	eax
		jz	short loc_100351A
		dec	eax
		jnz	short loc_10034BD

loc_10034D4:				; CODE XREF: sub_1003429+A3j
		mov	edi, ds:SendMessageW
		push	esi		; lParam
		push	esi		; wParam
		push	5		; Msg
		push	dword_1009834	; hWnd
		call	edi ; SendMessageW
		movsx	esi, word ptr [ebp+arg_C]
		push	4
		pop	ecx
		lea	eax, [esi+esi*2]
		cdq
		idiv	ecx
		or	[ebp+var_4], 0FFFFFFFFh
		mov	[ebp+lParam], eax
		lea	eax, [ebp+lParam]
		push	eax		; lParam
		push	2		; wParam
		push	404h		; Msg
		push	dword_1009834	; hWnd
		call	edi ; SendMessageW
		movsx	eax, word ptr [ebp+arg_C+2]
		push	eax		; int
		push	esi		; nWidth
		call	sub_10019E0
		jmp	short loc_10034BD
; ---------------------------------------------------------------------------

loc_100351A:				; CODE XREF: sub_1003429+A6j
		push	[ebp+arg_C]
		push	1
		push	5
		jmp	loc_10037D3
; ---------------------------------------------------------------------------

loc_1003526:				; CODE XREF: sub_1003429+30j
		push	0		; nExitCode
		call	ds:PostQuitMessage
		jmp	short loc_10034BD
; ---------------------------------------------------------------------------

loc_1003530:				; CODE XREF: sub_1003429+26j
		push	[ebp+arg_C]
		push	[ebp+hDrop]
		push	edx
		jmp	loc_10037FD
; ---------------------------------------------------------------------------

loc_100353C:				; CODE XREF: sub_1003429+20j
		mov	eax, esi
		sub	eax, 10h
		jz	short loc_100358C
		dec	eax
		jz	short loc_1003554
		sub	eax, 9
		jz	loc_10034BD
		jmp	loc_10036CA
; ---------------------------------------------------------------------------

loc_1003554:				; CODE XREF: sub_1003429+11Bj
		xor	esi, esi
		cmp	dword_1009854, esi
		jz	short loc_1003580
		mov	edi, ds:MessageBeep
		push	esi		; uType
		call	edi ; MessageBeep
		push	esi		; uType
		call	edi ; MessageBeep
		push	1000h
		push	lpCaption
		push	dword_1009094
		jmp	loc_100390A
; ---------------------------------------------------------------------------

loc_1003580:				; CODE XREF: sub_1003429+133j
		push	1
		call	sub_100270F
		jmp	loc_10034BF
; ---------------------------------------------------------------------------

loc_100358C:				; CODE XREF: sub_1003429+118j
		call	sub_1003A39
		xor	esi, esi
		push	esi
		call	sub_100270F
		test	eax, eax
		jz	loc_10034BD
		push	esi		; dwData
		push	2		; uCommand
		push	lpszHelp	; lpszHelp
		push	dword_1009830	; hWndMain
		call	ds:WinHelpW
		test	eax, eax
		jnz	short loc_10035D7
		push	1010h		; uType
		push	lpCaption	; lpCaption
		push	dword_100904C	; lpText
		push	dword_1009830	; hWnd
		call	ds:MessageBoxW

loc_10035D7:				; CODE XREF: sub_1003429+18Fj
		push	dword_1009834	; hWnd
		mov	esi, ds:DestroyWindow
		call	esi ; DestroyWindow
		push	dword_1009830	; hWnd
		call	esi ; DestroyWindow
		push	ho		; ho
		call	ds:DeleteObject
		jmp	loc_10034BD
; ---------------------------------------------------------------------------

loc_10035FE:				; CODE XREF: sub_1003429+18j
		xor	esi, esi
		cmp	[ebp+hDrop], esi
		jz	short loc_1003645
		mov	eax, wParam
		cmp	eax, esi
		mov	ecx, dword_1009860
		jnz	short loc_100361C
		cmp	ecx, esi
		jz	loc_10034BD

loc_100361C:				; CODE XREF: sub_1003429+1E9j
		mov	edi, ds:SendMessageW

loc_1003622:				; CODE XREF: sub_1003429+246j
		push	ecx		; lParam
		push	eax		; wParam
		push	0B1h		; Msg
		push	hWnd		; hWnd
		call	edi ; SendMessageW
		push	esi		; lParam
		push	esi		; wParam
		push	0B7h		; Msg
		push	hWnd		; hWnd
		call	edi ; SendMessageW
		jmp	loc_10034BD
; ---------------------------------------------------------------------------

loc_1003645:				; CODE XREF: sub_1003429+1DAj
		mov	edi, ds:SendMessageW
		push	offset dword_1009860 ; lParam
		push	offset wParam	; wParam
		push	0B0h		; Msg
		push	hWnd		; hWnd
		call	edi ; SendMessageW
		mov	eax, wParam
		mov	ecx, dword_1009860
		cmp	eax, ecx
		jnz	short loc_1003622
		mov	wParam,	esi
		mov	dword_1009860, esi
		jmp	loc_10034BD
; ---------------------------------------------------------------------------

loc_1003682:				; CODE XREF: sub_1003429+12j
		mov	edi, [ebp+arg_C]
		mov	eax, esi
		sub	eax, 111h
		jz	loc_10038C7
		dec	eax
		jz	loc_1003883
		sub	eax, 4
		jz	loc_1003876
		dec	eax
		jz	loc_1003842
		sub	eax, 11Ch
		jz	loc_1003832
		sub	eax, 0E6h
		jz	loc_100380E
		sub	eax, 7CE8h
		jz	loc_10037E1

loc_10036CA:				; CODE XREF: sub_1003429+3Fj
					; sub_1003429+126j
		cmp	esi, dword_100A488
		jnz	loc_10037CC
		mov	eax, [ebp+arg_C]
		mov	ecx, [eax+0Ch]
		mov	eax, ecx
		mov	esi, ecx
		shr	esi, 2
		not	eax
		and	eax, 1
		and	esi, 1
		test	dl, cl
		mov	dword_1009A94, eax
		mov	dword_1009A90, esi
		jz	short loc_100370A
		push	hCursor		; hCursor
		mov	esi, ds:SetCursor
		call	esi ; SetCursor
		jmp	short loc_1003724
; ---------------------------------------------------------------------------

loc_100370A:				; CODE XREF: sub_1003429+2CFj
		test	cl, 10h
		jz	short loc_100373B
		push	hCursor		; hCursor
		mov	esi, ds:SetCursor
		call	esi ; SetCursor
		push	1
		call	sub_100207F

loc_1003724:				; CODE XREF: sub_1003429+2DFj
		push	offset word_100A800 ; Str2
		call	sub_100594C
		push	dword_100AB88	; hCursor
		call	esi ; SetCursor
		jmp	loc_10034BD
; ---------------------------------------------------------------------------

loc_100373B:				; CODE XREF: sub_1003429+2E4j
		test	cl, 20h
		jz	short loc_10037B7
		xor	esi, esi
		cmp	eax, esi
		jz	short loc_100374C
		mov	dword_1009A94, esi

loc_100374C:				; CODE XREF: sub_1003429+31Bj
		push	ebx
		push	hCursor		; hCursor
		mov	ebx, ds:SetCursor
		call	ebx ; SetCursor
		mov	edi, ds:SendMessageW
		push	esi		; lParam
		push	esi		; wParam
		push	0B1h		; Msg
		push	hWnd		; hWnd
		call	edi ; SendMessageW

loc_1003770:				; CODE XREF: sub_1003429+359j
		push	esi
		call	sub_100207F
		push	offset word_100A800 ; Str2
		call	sub_100594C
		test	eax, eax
		jnz	short loc_1003770
		push	dword_100AB88	; hCursor
		call	ebx ; SetCursor
		push	esi		; lParam
		push	esi		; wParam
		push	0B1h		; Msg
		push	hWnd		; hWnd
		call	edi ; SendMessageW
		push	esi		; lParam
		push	esi		; wParam
		push	0B7h		; Msg
		push	hWnd		; hWnd
		call	edi ; SendMessageW
		push	1
		call	sub_1001C42
		pop	ebx
		jmp	loc_10034BD
; ---------------------------------------------------------------------------

loc_10037B7:				; CODE XREF: sub_1003429+315j
		test	cl, 40h
		jz	loc_10034BD
		and	hDlg, 0
		jmp	loc_10034BD
; ---------------------------------------------------------------------------

loc_10037CC:				; CODE XREF: sub_1003429+2A7j
		push	[ebp+arg_C]	; lParam

loc_10037CF:				; CODE XREF: sub_1003429+507j
		push	[ebp+hDrop]	; wParam
		push	esi		; Msg

loc_10037D3:				; CODE XREF: sub_1003429+F8j
		push	[ebp+hWnd]	; hWnd
		call	ds:DefWindowProcW
		jmp	loc_10034BF
; ---------------------------------------------------------------------------

loc_10037E1:				; CODE XREF: sub_1003429+29Bj
		xor	esi, esi
		push	esi		; idThread
		call	ds:GetKeyboardLayout
		and	ax, 3FFh
		cmp	ax, 11h
		jnz	short loc_10037F5
		inc	esi

loc_10037F5:				; CODE XREF: sub_1003429+3C9j
		push	esi		; lParam
		push	1		; wParam
		push	0D8h		; Msg

loc_10037FD:				; CODE XREF: sub_1003429+10Ej
		push	hWnd		; hWnd
		call	ds:SendMessageW
		jmp	loc_10034BD
; ---------------------------------------------------------------------------

loc_100380E:				; CODE XREF: sub_1003429+290j
		mov	eax, edi
		shr	eax, 10h
		and	ax, 0FFFh
		cmp	ax, 5
		jnz	loc_10038C7
		push	0		; int
		push	15h		; __int16
		push	[ebp+hWnd]	; hWnd
		call	sub_1002B87
		jmp	loc_10034BD
; ---------------------------------------------------------------------------

loc_1003832:				; CODE XREF: sub_1003429+285j
		push	[ebp+hWnd]	; hWnd
		push	[ebp+hDrop]	; hDrop
		call	sub_10033DC
		jmp	loc_10034BD
; ---------------------------------------------------------------------------

loc_1003842:				; CODE XREF: sub_1003429+27Aj
		cmp	dword_100984C, 0
		jz	loc_10034BD
		mov	eax, [ebp+arg_C]
		shr	eax, 10h
		test	ax, ax
		jz	loc_10034BD
		push	3		; uEnable
		push	0F020h		; uIDEnableItem
		push	hMenu		; hMenu
		call	ds:EnableMenuItem
		jmp	loc_10034BD
; ---------------------------------------------------------------------------

loc_1003876:				; CODE XREF: sub_1003429+273j
		push	[ebp+hWnd]	; hWndNewOwner
		call	sub_1001D73
		jmp	loc_10034BD
; ---------------------------------------------------------------------------

loc_1003883:				; CODE XREF: sub_1003429+26Aj
		cmp	dword_100984C, 0
		mov	eax, [ebp+hDrop]
		jz	short loc_10038B0
		cmp	eax, 0F020h
		jz	loc_10034BD
		cmp	eax, 0F040h
		jz	loc_10034BD
		cmp	eax, 0F050h
		jz	loc_10034BD

loc_10038B0:				; CODE XREF: sub_1003429+464j
		push	[ebp+arg_C]	; lParam
		push	eax		; wParam
		push	112h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	ds:DefWindowProcW
		jmp	loc_10034BD
; ---------------------------------------------------------------------------

loc_10038C7:				; CODE XREF: sub_1003429+263j
					; sub_1003429+3F2j
		cmp	edi, hWnd
		jnz	short loc_100391B
		mov	eax, [ebp+hDrop]
		shr	eax, 10h
		cmp	ax, 500h
		jz	short loc_10038E1
		cmp	ax, 501h
		jnz	short loc_100391B

loc_10038E1:				; CODE XREF: sub_1003429+4B0j
		cmp	dword_1009848, 1
		jnz	short loc_10038F9
		mov	dword_1009848, 2
		jmp	loc_10034BD
; ---------------------------------------------------------------------------

loc_10038F9:				; CODE XREF: sub_1003429+4BFj
		push	1010h		; uType
		push	lpCaption	; lpCaption
		push	dword_100904C	; lpText

loc_100390A:				; CODE XREF: sub_1003429+152j
		push	dword_1009830	; hWnd
		call	ds:MessageBoxW
		jmp	loc_10034BD
; ---------------------------------------------------------------------------

loc_100391B:				; CODE XREF: sub_1003429+4A4j
					; sub_1003429+4B6j
		push	edi		; int
		push	[ebp+hDrop]	; __int16
		push	[ebp+hWnd]	; hWnd
		call	sub_1002B87
		test	eax, eax
		jnz	loc_10034BD
		push	edi
		jmp	loc_10037CF
sub_1003429	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_100393A(HKEY hKey, LPCWSTR lpValueName, BYTE Data)
sub_100393A	proc near		; CODE XREF: sub_1003A39+32p
					; sub_1003A39+45p ...

hKey		= dword	ptr  8
lpValueName	= dword	ptr  0Ch
Data		= byte ptr  10h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	4		; cbData
		lea	eax, [ebp+Data]
		push	eax		; lpData
		push	4		; dwType
		push	0		; Reserved
		push	[ebp+lpValueName] ; lpValueName
		push	[ebp+hKey]	; hKey
		call	ds:RegSetValueExW
		pop	ebp
		retn	0Ch
sub_100393A	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_100395E(HKEY hKey, LPCWSTR lpValueName, LPCWSTR lpData)
sub_100395E	proc near		; CODE XREF: sub_1003A39+15Ep
					; sub_1003A39+170p ...

hKey		= dword	ptr  8
lpValueName	= dword	ptr  0Ch
lpData		= dword	ptr  10h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	[ebp+lpData]	; lpString
		call	ds:lstrlenW
		lea	eax, [eax+eax+2]
		push	eax		; cbData
		push	[ebp+lpData]	; lpData
		push	1		; dwType
		push	0		; Reserved
		push	[ebp+lpValueName] ; lpValueName
		push	[ebp+hKey]	; hKey
		call	ds:RegSetValueExW
		pop	ebp
		retn	0Ch
sub_100395E	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_100398D(HKEY hKey, LPCWSTR lpValueName, int)
sub_100398D	proc near		; CODE XREF: sub_1003C92+59p
					; sub_1003C92+6Ep ...

cbData		= dword	ptr -0Ch
Data		= byte ptr -8
Type		= dword	ptr -4
hKey		= dword	ptr  8
lpValueName	= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		and	[ebp+Type], 0
		cmp	[ebp+hKey], 0
		mov	dword ptr [ebp+Data], 1
		mov	[ebp+cbData], 4
		jz	short loc_10039D1
		lea	eax, [ebp+cbData]
		push	eax		; lpcbData
		lea	eax, [ebp+Data]
		push	eax		; lpData
		lea	eax, [ebp+Type]
		push	eax		; lpType
		push	0		; lpReserved
		push	[ebp+lpValueName] ; lpValueName
		push	[ebp+hKey]	; hKey
		call	ds:RegQueryValueExW
		test	eax, eax
		jnz	short loc_10039D1
		cmp	[ebp+Type], 4
		jz	short loc_10039D6

loc_10039D1:				; CODE XREF: sub_100398D+1Ej
					; sub_100398D+3Cj
		mov	eax, [ebp+arg_8]
		jmp	short locret_10039D9
; ---------------------------------------------------------------------------

loc_10039D6:				; CODE XREF: sub_100398D+42j
		mov	eax, dword ptr [ebp+Data]

locret_10039D9:				; CODE XREF: sub_100398D+47j
		leave
		retn	0Ch
sub_100398D	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_10039E2(HKEY Type, LPCWSTR lpValueName, int, LPBYTE	lpData,	DWORD cbData)
sub_10039E2	proc near		; CODE XREF: sub_1003C92+159p
					; sub_1003C92+1BCp ...

Type		= dword	ptr  8
lpValueName	= dword	ptr  0Ch
arg_8		= dword	ptr  10h
lpData		= dword	ptr  14h
cbData		= dword	ptr  18h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, [ebp+cbData]
		add	esi, esi
		cmp	[ebp+Type], 0
		push	edi
		mov	edi, [ebp+lpData]
		mov	[ebp+cbData], esi
		jz	short loc_1003A1B
		lea	eax, [ebp+cbData]
		push	eax		; lpcbData
		push	edi		; lpData
		lea	eax, [ebp+Type]
		push	eax		; lpType
		push	0		; lpReserved
		push	[ebp+lpValueName] ; lpValueName
		push	[ebp+Type]	; hKey
		call	ds:RegQueryValueExW
		test	eax, eax
		jnz	short loc_1003A1B
		cmp	[ebp+Type], 1
		jz	short loc_1003A2E

loc_1003A1B:				; CODE XREF: sub_10039E2+16j
					; sub_10039E2+31j
		mov	ecx, esi
		mov	esi, [ebp+arg_8]
		mov	eax, ecx
		shr	ecx, 2
		rep movsd
		mov	ecx, eax
		and	ecx, 3
		rep movsb

loc_1003A2E:				; CODE XREF: sub_10039E2+37j
		pop	edi
		pop	esi
		pop	ebp
		retn	14h
sub_10039E2	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1003A39	proc near		; CODE XREF: sub_1003429:loc_100358Cp

wndpl		= WINDOWPLACEMENT ptr -30h
hKey		= dword	ptr -4

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 30h
		lea	eax, [ebp+hKey]
		push	eax		; phkResult
		push	offset SubKey	; "Software\\Microsoft\\Notepad"
		push	80000001h	; hKey
		call	ds:RegCreateKeyW
		test	eax, eax
		jnz	locret_1003C8B
		push	lf.lfEscapement	; Data
		push	offset aLfescapement ; "lfEscapement"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		push	lf.lfOrientation ; Data
		push	offset aLforientation ;	"lfOrientation"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		push	lf.lfWeight	; Data
		push	offset aLfweight ; "lfWeight"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		movzx	eax, lf.lfItalic
		push	eax		; Data
		push	offset aLfitalic ; "lfItalic"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		movzx	eax, lf.lfUnderline
		push	eax		; Data
		push	offset aLfunderline ; "lfUnderline"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		movzx	eax, lf.lfStrikeOut
		push	eax		; Data
		push	offset aLfstrikeout ; "lfStrikeOut"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		movzx	eax, lf.lfCharSet
		push	eax		; Data
		push	offset aLfcharset ; "lfCharSet"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		movzx	eax, lf.lfOutPrecision
		push	eax		; Data
		push	offset aLfoutprecision ; "lfOutPrecision"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		movzx	eax, lf.lfClipPrecision
		push	eax		; Data
		push	offset aLfclipprecisio ; "lfClipPrecision"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		movzx	eax, lf.lfQuality
		push	eax		; Data
		push	offset aLfquality ; "lfQuality"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		movzx	eax, lf.lfPitchAndFamily
		push	eax		; Data
		push	offset aLfpitchandfami ; "lfPitchAndFamily"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		push	Data		; Data
		push	offset aIpointsize ; "iPointSize"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		push	dword_1009850	; Data
		push	offset aFwrap	; "fWrap"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		push	dword_1009840	; Data
		push	offset aStatusbar ; "StatusBar"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		push	dword_1009A84	; Data
		push	offset aFsavewindowpos ; "fSaveWindowPositions"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		push	offset lf.lfFaceName ; lpData
		push	offset aLffacename ; "lfFaceName"
		push	[ebp+hKey]	; hKey
		call	sub_100395E
		push	offset String1	; lpData
		push	offset aSzheader ; "szHeader"
		push	[ebp+hKey]	; hKey
		call	sub_100395E
		push	offset word_100A430 ; lpData
		push	offset aSztrailer ; "szTrailer"
		push	[ebp+hKey]	; hKey
		call	sub_100395E
		push	stru_100A4A0.rtMargin.top ; Data
		push	offset aImargintop ; "iMarginTop"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		push	stru_100A4A0.rtMargin.bottom ; Data
		push	offset aImarginbottom ;	"iMarginBottom"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		push	stru_100A4A0.rtMargin.left ; Data
		push	offset aImarginleft ; "iMarginLeft"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		push	stru_100A4A0.rtMargin.right ; Data
		push	offset aImarginright ; "iMarginRight"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		push	dword_1009858	; Data
		push	offset aFmle_is_broken ; "fMLE_is_broken"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		lea	eax, [ebp+wndpl]
		push	eax		; lpwndpl
		push	dword_1009830	; hWnd
		mov	[ebp+wndpl.length], 2Ch
		call	ds:GetWindowPlacement
		test	eax, eax
		jz	short loc_1003C82
		push	[ebp+wndpl.rcNormalPosition.left] ; Data
		push	offset aIwindowposx ; "iWindowPosX"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		push	[ebp+wndpl.rcNormalPosition.top] ; Data
		push	offset aIwindowposy ; "iWindowPosY"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		mov	eax, [ebp+wndpl.rcNormalPosition.right]
		sub	eax, [ebp+wndpl.rcNormalPosition.left]
		push	eax		; Data
		push	offset aIwindowposdx ; "iWindowPosDX"
		push	[ebp+hKey]	; hKey
		call	sub_100393A
		mov	eax, [ebp+wndpl.rcNormalPosition.bottom]
		sub	eax, [ebp+wndpl.rcNormalPosition.top]
		push	eax		; Data
		push	offset aIwindowposdy ; "iWindowPosDY"
		push	[ebp+hKey]	; hKey
		call	sub_100393A

loc_1003C82:				; CODE XREF: sub_1003A39+1FFj
		push	[ebp+hKey]	; hKey
		call	ds:RegCloseKey

locret_1003C8B:				; CODE XREF: sub_1003A39+1Ej
		leave
		retn
sub_1003A39	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1003C92	proc near		; CODE XREF: sub_1004565+FDp

hKey		= dword	ptr -64h
pv		= byte ptr -60h
var_58		= dword	ptr -58h
var_54		= dword	ptr -54h
var_50		= dword	ptr -50h
var_4C		= byte ptr -4Ch
var_4B		= byte ptr -4Bh
var_4A		= byte ptr -4Ah
var_49		= byte ptr -49h
var_48		= byte ptr -48h
var_47		= byte ptr -47h
var_46		= byte ptr -46h
var_45		= byte ptr -45h
var_4		= dword	ptr -4

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 64h
		mov	eax, ___security_cookie
		push	esi
		push	edi
		push	10h		; i
		mov	[ebp+var_4], eax
		call	ds:GetStockObject
		xor	edi, edi
		cmp	eax, edi
		jz	short loc_1003CBF
		lea	ecx, [ebp+pv]
		push	ecx		; pv
		push	5Ch		; c
		push	eax		; h
		call	ds:GetObjectW

loc_1003CBF:				; CODE XREF: sub_1003C92+1Ej
		lea	eax, [ebp+hKey]
		push	eax		; phkResult
		push	offset SubKey	; "Software\\Microsoft\\Notepad"
		push	80000001h	; hKey
		call	ds:RegCreateKeyW
		test	eax, eax
		jz	short loc_1003CDA
		mov	[ebp+hKey], edi

loc_1003CDA:				; CODE XREF: sub_1003C92+43j
		push	[ebp+var_58]	; int
		mov	lf.lfWidth, edi
		push	offset aLfescapement ; "lfEscapement"
		push	[ebp+hKey]	; hKey
		call	sub_100398D
		push	[ebp+var_54]	; int
		mov	lf.lfEscapement, eax
		push	offset aLforientation ;	"lfOrientation"
		push	[ebp+hKey]	; hKey
		call	sub_100398D
		push	[ebp+var_50]	; int
		mov	lf.lfOrientation, eax
		push	offset aLfweight ; "lfWeight"
		push	[ebp+hKey]	; hKey
		call	sub_100398D
		mov	lf.lfWeight, eax
		movzx	eax, [ebp+var_4C]
		push	eax		; int
		push	offset aLfitalic ; "lfItalic"
		push	[ebp+hKey]	; hKey
		call	sub_100398D
		mov	lf.lfItalic, al
		movzx	eax, [ebp+var_4B]
		push	eax		; int
		push	offset aLfunderline ; "lfUnderline"
		push	[ebp+hKey]	; hKey
		call	sub_100398D
		mov	lf.lfUnderline,	al
		movzx	eax, [ebp+var_4A]
		push	eax		; int
		push	offset aLfstrikeout ; "lfStrikeOut"
		push	[ebp+hKey]	; hKey
		call	sub_100398D
		mov	lf.lfStrikeOut,	al
		movzx	eax, [ebp+var_49]
		push	eax		; int
		push	offset aLfcharset ; "lfCharSet"
		push	[ebp+hKey]	; hKey
		call	sub_100398D
		mov	lf.lfCharSet, al
		movzx	eax, [ebp+var_48]
		push	eax		; int
		push	offset aLfoutprecision ; "lfOutPrecision"
		push	[ebp+hKey]	; hKey
		call	sub_100398D
		mov	lf.lfOutPrecision, al
		movzx	eax, [ebp+var_47]
		push	eax		; int
		push	offset aLfclipprecisio ; "lfClipPrecision"
		push	[ebp+hKey]	; hKey
		call	sub_100398D
		mov	lf.lfClipPrecision, al
		movzx	eax, [ebp+var_46]
		push	eax		; int
		push	offset aLfquality ; "lfQuality"
		push	[ebp+hKey]	; hKey
		call	sub_100398D
		mov	lf.lfQuality, al
		movzx	eax, [ebp+var_45]
		push	eax		; int
		push	offset aLfpitchandfami ; "lfPitchAndFamily"
		push	[ebp+hKey]	; hKey
		call	sub_100398D
		push	20h		; cbData
		push	offset lf.lfFaceName ; lpData
		push	offset aLucidaConsole ;	"Lucida	Console"
		push	offset aLffacename ; "lfFaceName"
		push	[ebp+hKey]	; Type
		mov	lf.lfPitchAndFamily, al
		call	sub_10039E2
		push	64h		; int
		push	offset aIpointsize ; "iPointSize"
		push	[ebp+hKey]	; hKey
		call	sub_100398D
		push	edi		; int
		push	offset aFwrap	; "fWrap"
		push	[ebp+hKey]	; hKey
		mov	Data, eax
		call	sub_100398D
		mov	dword_1009850, eax
		push	edi		; int
		push	offset aStatusbar ; "StatusBar"
		push	[ebp+hKey]	; hKey
		call	sub_100398D
		push	edi		; int
		push	offset aFsavewindowpos ; "fSaveWindowPositions"
		push	[ebp+hKey]	; hKey
		mov	dword_1009840, eax
		call	sub_100398D
		push	28h		; cbData
		mov	dword_1009A84, eax
		mov	eax, offset String1
		push	eax		; lpData
		push	eax		; int
		push	offset aSzheader ; "szHeader"
		push	[ebp+hKey]	; Type
		call	sub_10039E2
		push	28h		; cbData
		mov	eax, offset word_100A430
		push	eax		; lpData
		push	eax		; int
		push	offset aSztrailer ; "szTrailer"
		push	[ebp+hKey]	; Type
		call	sub_10039E2
		push	stru_100A4A0.rtMargin.top ; int
		push	offset aImargintop ; "iMarginTop"
		push	[ebp+hKey]	; hKey
		call	sub_100398D
		push	stru_100A4A0.rtMargin.bottom ; int
		mov	stru_100A4A0.rtMargin.top, eax
		push	offset aImarginbottom ;	"iMarginBottom"
		push	[ebp+hKey]	; hKey
		call	sub_100398D
		push	stru_100A4A0.rtMargin.left ; int
		mov	stru_100A4A0.rtMargin.bottom, eax
		push	offset aImarginleft ; "iMarginLeft"
		push	[ebp+hKey]	; hKey
		call	sub_100398D
		push	stru_100A4A0.rtMargin.right ; int
		mov	stru_100A4A0.rtMargin.left, eax
		push	offset aImarginright ; "iMarginRight"
		push	[ebp+hKey]	; hKey
		call	sub_100398D
		mov	esi, 80000000h
		push	esi		; int
		push	offset aIwindowposy ; "iWindowPosY"
		push	[ebp+hKey]	; hKey
		mov	stru_100A4A0.rtMargin.right, eax
		call	sub_100398D
		push	esi		; int
		push	offset aIwindowposx ; "iWindowPosX"
		push	[ebp+hKey]	; hKey
		mov	Y, eax
		call	sub_100398D
		push	esi		; int
		push	offset aIwindowposdx ; "iWindowPosDX"
		push	[ebp+hKey]	; hKey
		mov	X, eax
		call	sub_100398D
		push	esi		; int
		push	offset aIwindowposdy ; "iWindowPosDY"
		push	[ebp+hKey]	; hKey
		mov	nWidth,	eax
		call	sub_100398D
		push	edi		; int
		push	offset aFmle_is_broken ; "fMLE_is_broken"
		push	[ebp+hKey]	; hKey
		mov	nHeight, eax
		call	sub_100398D
		cmp	[ebp+hKey], edi
		pop	edi
		mov	dword_1009858, eax
		pop	esi
		jz	short loc_1003F3D
		push	[ebp+hKey]	; hKey
		call	ds:RegCloseKey

loc_1003F3D:				; CODE XREF: sub_1003C92+2A0j
		mov	ecx, [ebp+var_4]
		call	sub_1007147
		leave
		retn
sub_1003C92	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1003F4C	proc near		; CODE XREF: sub_100419E+18p
					; sub_10042F9+19p ...

var_4		= dword	ptr -4

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	edi, ecx
		mov	ebx, eax
		mov	ax, [edi]
		test	ax, ax
		jz	short loc_1003F88
		mov	esi, ds:CharUpperW

loc_1003F67:				; CODE XREF: sub_1003F4C+3Aj
		movzx	eax, ax
		push	eax		; lpsz
		call	esi ; CharUpperW
		mov	[ebp+var_4], eax
		movzx	eax, word ptr [ebx]
		inc	edi
		inc	edi
		inc	ebx
		push	eax		; lpsz
		inc	ebx
		call	esi ; CharUpperW
		cmp	word ptr [ebp+var_4], ax
		jnz	short loc_1003F8F
		mov	ax, [edi]
		test	ax, ax
		jnz	short loc_1003F67

loc_1003F88:				; CODE XREF: sub_1003F4C+13j
		xor	eax, eax

loc_1003F8A:				; CODE XREF: sub_1003F4C+46j
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn
; ---------------------------------------------------------------------------

loc_1003F8F:				; CODE XREF: sub_1003F4C+32j
		xor	eax, eax
		inc	eax
		jmp	short loc_1003F8A
sub_1003F4C	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1003F99(LPWSTR lpFileName, LPCWSTR lpString2)
sub_1003F99	proc near		; CODE XREF: sub_100419E+83p
					; sub_10042F9+70p ...

FindFileData	= _WIN32_FIND_DATAW ptr	-254h
var_4		= dword	ptr -4
lpFileName	= dword	ptr  8
lpString2	= dword	ptr  0Ch

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 254h
		mov	eax, ___security_cookie
		push	ebx
		mov	ebx, [ebp+lpFileName]
		push	esi
		mov	esi, [ebp+lpString2]
		mov	[ebp+var_4], eax
		mov	ax, [esi]
		cmp	ax, 22h
		push	edi
		mov	ecx, ebx
		jz	short loc_1003FD5
		cmp	ax, 27h
		jz	short loc_1003FD5
		push	104h		; iMaxLength
		push	esi		; lpString2
		push	ebx		; lpString1
		call	ds:lstrcpynW
		jmp	short loc_1004000
; ---------------------------------------------------------------------------

loc_1003FD5:				; CODE XREF: sub_1003F99+25j
					; sub_1003F99+2Bj
		xor	edx, edx
		inc	esi
		mov	edi, eax
		inc	esi
		jmp	short loc_1003FF4
; ---------------------------------------------------------------------------

loc_1003FDD:				; CODE XREF: sub_1003F99+61j
		cmp	ax, di
		jz	short loc_1003FFC
		cmp	edx, 104h
		jnb	short loc_1003FFC
		mov	[ecx], ax
		inc	ecx
		inc	ecx
		inc	edx
		inc	esi
		inc	esi
		xor	eax, eax

loc_1003FF4:				; CODE XREF: sub_1003F99+42j
		mov	ax, [esi]
		test	ax, ax
		jnz	short loc_1003FDD

loc_1003FFC:				; CODE XREF: sub_1003F99+47j
					; sub_1003F99+4Fj
		and	word ptr [ecx],	0

loc_1004000:				; CODE XREF: sub_1003F99+3Aj
		mov	edi, ds:FindFirstFileW
		lea	eax, [ebp+FindFileData]
		push	eax		; lpFindFileData
		push	ebx		; lpFileName
		call	edi ; FindFirstFileW
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_100402A
		push	ebx		; lpString1
		call	sub_1004DCD
		lea	eax, [ebp+FindFileData]
		push	eax		; lpFindFileData
		push	ebx		; lpFileName
		call	edi ; FindFirstFileW
		cmp	eax, 0FFFFFFFFh
		jz	short loc_1004031

loc_100402A:				; CODE XREF: sub_1003F99+7Aj
		push	eax		; hFindFile
		call	ds:FindClose

loc_1004031:				; CODE XREF: sub_1003F99+8Fj
		mov	ecx, [ebp+var_4]
		pop	edi
		mov	eax, esi
		pop	esi
		pop	ebx
		call	sub_1007147
		leave
		retn	8
sub_1003F99	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1004047(HINSTANCE hInstance)
sub_1004047	proc near		; CODE XREF: sub_10040BA+8p

hMem		= dword	ptr -4
hInstance	= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	esi, 118h
		push	230h
		jmp	short loc_100409B
; ---------------------------------------------------------------------------

loc_100405C:				; CODE XREF: sub_1004047+61j
		xor	edi, edi
		xor	ebx, ebx

loc_1004060:				; CODE XREF: sub_1004047+3Ej
		mov	eax, off_10090E8[edi*4]
		push	esi		; cchBufferMax
		push	[ebp+hMem]	; lpBuffer
		push	dword ptr [eax]	; uID
		push	[ebp+hInstance]	; hInstance
		call	ds:LoadStringW
		lea	ecx, [esi-1]
		cmp	eax, ecx
		jge	short loc_1004087
		inc	edi
		cmp	edi, 2Dh
		lea	ebx, [ebx+eax+1]
		jl	short loc_1004060

loc_1004087:				; CODE XREF: sub_1004047+34j
		push	[ebp+hMem]	; hMem
		call	ds:LocalFree
		cmp	edi, 2Dh
		jge	short loc_10040AC
		add	esi, esi
		lea	eax, [esi+esi]
		push	eax		; uBytes

loc_100409B:				; CODE XREF: sub_1004047+13j
		push	40h		; uFlags
		call	ds:LocalAlloc
		test	eax, eax
		mov	[ebp+hMem], eax
		jnz	short loc_100405C
		jmp	short loc_10040AE
; ---------------------------------------------------------------------------

loc_10040AC:				; CODE XREF: sub_1004047+4Cj
		mov	eax, ebx

loc_10040AE:				; CODE XREF: sub_1004047+63j
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	4
sub_1004047	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_10040BA(HINSTANCE hInstance)
sub_10040BA	proc near		; CODE XREF: sub_1004565+65p

hInstance	= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	[ebp+hInstance]	; hInstance
		call	sub_1004047
		test	eax, eax
		jz	loc_1004159
		push	esi
		add	eax, eax
		push	eax		; uBytes
		push	40h		; uFlags
		call	ds:LocalAlloc
		mov	esi, eax
		test	esi, esi
		jz	short loc_1004158
		push	ebx
		push	esi		; hMem
		call	ds:LocalSize
		mov	ebx, eax
		shr	ebx, 1
		jnz	short loc_10040F3
		xor	eax, eax
		jmp	short loc_1004157
; ---------------------------------------------------------------------------

loc_10040F3:				; CODE XREF: sub_10040BA+33j
		push	edi
		mov	edi, offset off_10090E8

loc_10040F9:				; CODE XREF: sub_10040BA+65j
		mov	eax, [edi]
		push	ebx		; cchBufferMax
		push	esi		; lpBuffer
		push	dword ptr [eax]	; uID
		push	[ebp+hInstance]	; hInstance
		call	ds:LoadStringW
		mov	ecx, [edi]
		inc	eax
		cmp	eax, ebx
		mov	[ecx], esi
		lea	esi, [esi+eax*2]
		jg	short loc_100415D
		add	edi, 4
		sub	ebx, eax
		cmp	edi, offset off_100919C
		jl	short loc_10040F9
		mov	esi, ds:lstrcpynW
		push	28h		; iMaxLength
		push	dword_1009078	; lpString2
		push	offset String1	; lpString1
		call	esi ; lstrcpynW
		push	28h		; iMaxLength
		push	dword_100907C	; lpString2
		push	offset word_100A430 ; lpString1
		call	esi ; lstrcpynW
		mov	eax, dword_1009070
		mov	ax, [eax]
		mov	word_100AB90, ax
		xor	eax, eax
		inc	eax

loc_1004156:				; CODE XREF: sub_10040BA+B9j
		pop	edi

loc_1004157:				; CODE XREF: sub_10040BA+37j
		pop	ebx

loc_1004158:				; CODE XREF: sub_10040BA+25j
		pop	esi

loc_1004159:				; CODE XREF: sub_10040BA+Fj
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_100415D:				; CODE XREF: sub_10040BA+58j
		push	0		; uType
		push	offset Caption	; "DEV Error!"
		push	offset Text	; "Out of RC string space!!"
		push	0		; hWnd
		call	ds:MessageBoxW
		xor	eax, eax
		jmp	short loc_1004156
sub_10040BA	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_100417A	proc near		; CODE XREF: sub_100419E+6Ep
					; sub_10042F9+28p ...

arg_0		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]

loc_1004182:				; CODE XREF: sub_100417A+19j
		mov	cx, [eax]
		cmp	cx, 20h
		jz	short loc_1004191
		cmp	cx, 9
		jnz	short loc_1004195

loc_1004191:				; CODE XREF: sub_100417A+Fj
		inc	eax
		inc	eax
		jmp	short loc_1004182
; ---------------------------------------------------------------------------

loc_1004195:				; CODE XREF: sub_100417A+15j
		pop	ebp
		retn	4
sub_100417A	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_100419E	proc near		; CODE XREF: sub_1004565+437p

var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		mov	esi, [ebp+arg_0]
		push	edi
		xor	edi, edi
		mov	eax, esi
		mov	ecx, offset a_setup ; "/.SETUP"
		mov	[ebp+var_4], edi
		call	sub_1003F4C
		test	eax, eax
		jnz	loc_10042EB
		push	edi		; bRevert
		push	dword_1009830	; hWnd
		mov	dword_100984C, 1
		call	ds:GetSystemMenu
		push	offset TableName ; "SlipUpAcc"
		push	hInstance	; hInstance
		mov	hMenu, eax
		call	ds:LoadAcceleratorsW
		push	0FD0000h	; dwNewLong
		push	0FFFFFFF0h	; nIndex
		push	dword_1009830	; hWnd
		mov	hAccTable, eax
		call	ds:SetWindowLongW
		add	esi, 0Eh
		push	esi
		call	sub_100417A
		cmp	[eax], di
		jz	loc_10042E6
		push	eax		; lpString2
		mov	esi, offset word_100A900
		push	esi		; lpFileName
		call	sub_1003F99
		push	edi		; hTemplateFile
		mov	ebx, 80h
		push	ebx		; dwFlagsAndAttributes
		push	3		; dwCreationDisposition
		push	edi		; lpSecurityAttributes
		mov	edi, ds:CreateFileW
		push	3		; dwShareMode
		push	80000000h	; dwDesiredAccess
		push	esi		; lpFileName
		call	edi ; CreateFileW
		cmp	eax, 0FFFFFFFFh
		mov	hFile, eax
		jnz	loc_10042D2
		call	ds:GetLastError
		dec	eax
		dec	eax
		jz	short loc_1004291
		sub	eax, 3
		push	31h		; uType
		push	esi		; lpString
		jz	short loc_1004289
		sub	eax, 76h
		jz	short loc_1004281
		push	dword_1009034	; lpText

loc_100426B:				; CODE XREF: sub_100419E+E9j
					; sub_100419E+F1j
		push	lpCaption	; lpCaption
		push	dword_1009830	; hWnd
		call	sub_1001F70
		mov	[ebp+var_4], eax
		jmp	short loc_10042C9
; ---------------------------------------------------------------------------

loc_1004281:				; CODE XREF: sub_100419E+C5j
		push	dword_1009064
		jmp	short loc_100426B
; ---------------------------------------------------------------------------

loc_1004289:				; CODE XREF: sub_100419E+C0j
		push	dword_100909C
		jmp	short loc_100426B
; ---------------------------------------------------------------------------

loc_1004291:				; CODE XREF: sub_100419E+B8j
		push	33h		; uType
		push	esi		; lpString
		push	dword_1009038	; lpText
		push	lpCaption	; lpCaption
		push	dword_1009830	; hWnd
		call	sub_1001F70
		cmp	eax, 6
		mov	[ebp+var_4], eax
		jnz	short loc_10042C9
		push	0		; hTemplateFile
		push	ebx		; dwFlagsAndAttributes
		push	4		; dwCreationDisposition
		push	0		; lpSecurityAttributes
		push	3		; dwShareMode
		push	0C0000000h	; dwDesiredAccess
		push	esi		; lpFileName
		call	edi ; CreateFileW
		mov	hFile, eax

loc_10042C9:				; CODE XREF: sub_100419E+E1j
					; sub_100419E+113j
		cmp	hFile, 0FFFFFFFFh
		jz	short loc_10042EB

loc_10042D2:				; CODE XREF: sub_100419E+AAj
		push	dword_1009A80	; int
		push	esi		; lpString
		call	sub_1005179
		push	2
		pop	eax
		cmp	[ebp+var_4], eax
		jz	short loc_10042ED

loc_10042E6:				; CODE XREF: sub_100419E+76j
		push	6
		pop	eax
		jmp	short loc_10042ED
; ---------------------------------------------------------------------------

loc_10042EB:				; CODE XREF: sub_100419E+1Fj
					; sub_100419E+132j
		xor	eax, eax

loc_10042ED:				; CODE XREF: sub_100419E+146j
					; sub_100419E+14Bj
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	4
sub_100419E	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_10042F9(int, int nCmdShow)
sub_10042F9	proc near		; CODE XREF: sub_1004565+45Ep

var_4		= dword	ptr -4
arg_0		= dword	ptr  8
nCmdShow	= dword	ptr  0Ch

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	ecx
		push	esi
		mov	esi, [ebp+arg_0]
		push	edi
		mov	eax, esi
		mov	ecx, offset aPt	; "/PT"
		mov	[ebp+var_4], 1
		call	sub_1003F4C
		xor	edi, edi
		test	eax, eax
		jnz	short loc_100432B
		add	esi, 6
		push	esi
		call	sub_100417A
		mov	[ebp+var_4], edi
		jmp	short loc_1004348
; ---------------------------------------------------------------------------

loc_100432B:				; CODE XREF: sub_10042F9+22j
		mov	eax, esi
		mov	ecx, offset aP	; "/P"
		call	sub_1003F4C
		test	eax, eax
		jnz	loc_100444B
		add	esi, 4
		push	esi
		call	sub_100417A

loc_1004348:				; CODE XREF: sub_10042F9+30j
		mov	esi, eax
		cmp	[esi], di
		jz	loc_100444B
		push	[ebp+nCmdShow]	; nCmdShow
		push	dword_1009830	; hWnd
		call	ds:ShowWindow
		push	esi		; lpString2
		mov	esi, offset word_100A900
		push	esi		; lpFileName
		call	sub_1003F99
		inc	eax
		inc	eax
		cmp	[ebp+var_4], edi
		jnz	short loc_10043BF
		cmp	[eax], di
		jz	loc_100444B
		push	eax
		call	sub_100417A
		cmp	word ptr [eax],	22h
		jnz	loc_100444B
		inc	eax
		inc	eax
		xor	edx, edx
		jmp	short loc_10043AF
; ---------------------------------------------------------------------------

loc_1004394:				; CODE XREF: sub_10042F9+BCj
		cmp	cx, 22h
		jz	short loc_10043B7
		cmp	edx, 0FFh
		jnb	short loc_10043B7
		mov	pPrinterName[edx*2], cx
		inc	edx
		inc	eax
		inc	eax
		xor	ecx, ecx

loc_10043AF:				; CODE XREF: sub_10042F9+99j
		mov	cx, [eax]
		cmp	cx, di
		jnz	short loc_1004394

loc_10043B7:				; CODE XREF: sub_10042F9+9Fj
					; sub_10042F9+A7j
		mov	pPrinterName[edx*2], di

loc_10043BF:				; CODE XREF: sub_10042F9+7Aj
		push	edi		; hTemplateFile
		push	80h		; dwFlagsAndAttributes
		push	3		; dwCreationDisposition
		push	edi		; lpSecurityAttributes
		push	3		; dwShareMode
		push	80000000h	; dwDesiredAccess
		push	esi		; lpFileName
		call	ds:CreateFileW
		cmp	eax, 0FFFFFFFFh
		mov	hFile, eax
		jnz	short loc_100442A
		call	ds:GetLastError
		dec	eax
		dec	eax
		jz	short loc_100440E
		sub	eax, 3
		jz	short loc_1004407
		sub	eax, 3Ch
		jz	short loc_1004407
		sub	eax, 3Ah
		jz	short loc_1004400
		mov	eax, dword_1009034
		jmp	short loc_1004413
; ---------------------------------------------------------------------------

loc_1004400:				; CODE XREF: sub_10042F9+FEj
		mov	eax, dword_1009064
		jmp	short loc_1004413
; ---------------------------------------------------------------------------

loc_1004407:				; CODE XREF: sub_10042F9+F4j
					; sub_10042F9+F9j
		mov	eax, dword_100909C
		jmp	short loc_1004413
; ---------------------------------------------------------------------------

loc_100440E:				; CODE XREF: sub_10042F9+EFj
		mov	eax, dword_1009038

loc_1004413:				; CODE XREF: sub_10042F9+105j
					; sub_10042F9+10Cj ...
		push	30h		; uType
		push	esi		; lpString
		push	eax		; lpText
		push	lpCaption	; lpCaption
		push	dword_1009830	; hWnd
		call	sub_1001F70
		jmp	short loc_1004446
; ---------------------------------------------------------------------------

loc_100442A:				; CODE XREF: sub_10042F9+E5j
		push	dword_1009A80	; int
		push	esi		; lpString
		call	sub_1005179
		cmp	[ebp+var_4], edi
		jz	short loc_100443F
		push	1
		jmp	short loc_1004441
; ---------------------------------------------------------------------------

loc_100443F:				; CODE XREF: sub_10042F9+140j
		push	2

loc_1004441:				; CODE XREF: sub_10042F9+144j
		call	sub_1006E4B

loc_1004446:				; CODE XREF: sub_10042F9+12Fj
		xor	eax, eax
		inc	eax
		jmp	short loc_100444D
; ---------------------------------------------------------------------------

loc_100444B:				; CODE XREF: sub_10042F9+40j
					; sub_10042F9+54j ...
		xor	eax, eax

loc_100444D:				; CODE XREF: sub_10042F9+150j
		pop	edi
		pop	esi
		leave
		retn	8
sub_10042F9	endp

; ---------------------------------------------------------------------------
		align 8

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1004458(LPWSTR lpString)
sub_1004458	proc near		; CODE XREF: sub_1004565+53Bp
					; sub_1004565+545p

lpString	= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+lpString]
		push	esi
		mov	esi, ds:lstrcpyW
		push	edi
		push	dword_1009084	; lpString2
		push	ebx		; lpString1
		call	esi ; lstrcpyW
		mov	edi, ds:lstrlenW
		push	ebx		; lpString
		call	edi ; lstrlenW
		lea	ebx, [ebx+eax*2+2]
		push	offset a_txt	; "*.txt"
		push	ebx		; lpString1
		call	esi ; lstrcpyW
		push	ebx		; lpString
		call	edi ; lstrlenW
		push	dword_1009088	; lpString2
		lea	ebx, [ebx+eax*2+2]
		push	ebx		; lpString1
		call	esi ; lstrcpyW
		push	ebx		; lpString
		call	edi ; lstrlenW
		lea	ebx, [ebx+eax*2+2]
		push	offset a_	; "*.*"
		push	ebx		; lpString1
		call	esi ; lstrcpyW
		push	ebx		; lpString
		call	edi ; lstrlenW
		and	word ptr [ebx+eax*2+2],	0
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn	4
sub_1004458	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	Proc(const LOGFONTW *, const TEXTMETRICW *, DWORD, LPARAM)
Proc		proc near		; DATA XREF: sub_1004565+34Co

arg_0		= dword	ptr  8
arg_C		= dword	ptr  14h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		mov	al, [eax+17h]
		mov	ecx, [ebp+arg_C]
		mov	[ecx+17h], al
		xor	eax, eax
		pop	ebp
		retn	10h
Proc		endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_10044D7	proc near		; CODE XREF: sub_1004565+C9p

var_30		= WNDCLASSEXW ptr -30h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 30h
		push	edi
		push	29h		; nIndex
		mov	[ebp+var_30.cbSize], 30h
		call	ds:GetSystemMetrics
		neg	eax
		sbb	eax, eax
		add	eax, 7F01h
		push	eax		; lpCursorName
		xor	edi, edi
		push	edi		; hInstance
		call	ds:LoadCursorW
		push	2		; lpIconName
		push	esi		; hInstance
		mov	[ebp+var_30.hCursor], eax
		call	ds:LoadIconW
		push	edi		; fuLoad
		push	10h		; cy
		push	10h		; cx
		push	1		; type
		push	2		; name
		push	esi		; hInst
		mov	[ebp+var_30.hIcon], eax
		call	ds:LoadImageW
		mov	[ebp+var_30.hIconSm], eax
		lea	eax, [ebp+var_30]
		push	eax		; WNDCLASSEXW *
		mov	[ebp+var_30.lpszMenuName], 1
		mov	[ebp+var_30.hInstance],	esi
		mov	[ebp+var_30.lpszClassName], offset ClassName ; "Notepad"
		mov	[ebp+var_30.lpfnWndProc], offset sub_1003429
		mov	[ebp+var_30.hbrBackground], 6
		mov	[ebp+var_30.style], edi
		mov	[ebp+var_30.cbClsExtra], edi
		mov	[ebp+var_30.cbWndExtra], edi
		call	ds:RegisterClassExW
		neg	ax
		pop	edi
		sbb	eax, eax
		neg	eax
		leave
		retn
sub_10044D7	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1004565(HINSTANCE hInstance, int, int, int nCmdShow)
sub_1004565	proc near		; CODE XREF: sub_1002936+45p

wndpl		= WINDOWPLACEMENT ptr -0A8h
Rect		= tagRECT ptr -7Ch
var_6C		= dword	ptr -6Ch
var_68		= dword	ptr -68h
var_64		= dword	ptr -64h
var_60		= dword	ptr -60h
lParam		= dword	ptr -5Ch
var_58		= dword	ptr -58h
var_54		= dword	ptr -54h
var_50		= dword	ptr -50h
wParam		= dword	ptr -4Ch
hDC		= dword	ptr -48h
String1		= word ptr -44h
var_4		= dword	ptr -4
hInstance	= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
nCmdShow	= dword	ptr  14h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 0A8h
		mov	eax, ___security_cookie
		push	ebx
		push	esi
		mov	esi, [ebp+hInstance]
		push	edi
		mov	edi, ds:RegisterWindowMessageW
		mov	[ebp+var_4], eax
		mov	eax, [ebp+arg_8]
		push	offset String	; "commdlg_FindReplace"
		mov	[ebp+var_54], esi
		mov	[ebp+var_50], eax
		call	edi ; RegisterWindowMessageW
		xor	ebx, ebx
		cmp	eax, ebx
		mov	dword_100A488, eax
		jz	loc_10049AE
		push	offset aCommdlg_help ; "commdlg_help"
		call	edi ; RegisterWindowMessageW
		cmp	eax, ebx
		mov	dword_100A484, eax
		jz	loc_10049AE
		push	ebx		; hWnd
		call	ds:GetDC
		cmp	eax, ebx
		mov	[ebp+hDC], eax
		jz	loc_10049AE
		push	esi		; hInstance
		call	sub_10040BA
		test	eax, eax
		jz	loc_10049AE
		push	29h		; nIndex
		call	ds:GetSystemMetrics
		mov	edi, ds:LoadCursorW
		neg	eax
		sbb	eax, eax
		add	eax, 7F01h
		push	eax		; lpCursorName
		push	ebx		; hInstance
		call	edi ; LoadCursorW
		push	7F02h		; lpCursorName
		push	ebx		; hInstance
		mov	dword_100AB88, eax
		call	edi ; LoadCursorW
		push	offset aMainacc	; "MainAcc"
		push	esi		; hInstance
		mov	hCursor, eax
		call	ds:LoadAcceleratorsW
		cmp	hCursor, ebx
		mov	hAccTable, eax
		jz	loc_10049AE
		cmp	eax, ebx
		jz	loc_10049AE
		cmp	[ebp+arg_4], ebx
		jnz	short loc_100463B
		call	sub_10044D7
		test	eax, eax
		jz	loc_10049AE

loc_100463B:				; CODE XREF: sub_1004565+C7j
		mov	hInstance, esi
		mov	stru_100A4A0.lStructSize, 54h
		mov	stru_100A4A0.hDevMode, ebx
		mov	stru_100A4A0.hDevNames,	ebx
		mov	stru_100A4A0.hInstance,	esi
		call	sub_100195D
		call	sub_1003C92
		push	ebx		; lpParam
		push	esi		; hInstance
		push	ebx		; hMenu
		push	ebx		; hWndParent
		push	nHeight		; nHeight
		mov	esi, offset szOtherStuff
		push	nWidth		; nWidth
		push	Y		; Y
		push	X		; X
		push	0CF0000h	; dwStyle
		push	esi		; lpWindowName
		push	offset ClassName ; "Notepad"
		push	ebx		; dwExStyle
		call	ds:CreateWindowExW
		mov	edx, eax
		cmp	edx, ebx
		mov	dword_1009830, edx
		mov	stru_100A4A0.hwndOwner,	edx
		jz	loc_10049AE
		mov	eax, 80000000h
		cmp	nWidth,	eax
		jz	short loc_100471F
		cmp	nHeight, eax
		jz	short loc_100471F
		xor	eax, eax
		push	0Bh
		pop	ecx
		lea	edi, [ebp+wndpl]
		rep stosd
		mov	eax, X
		mov	ecx, nWidth
		mov	[ebp+wndpl.rcNormalPosition.left], eax
		add	eax, ecx
		mov	ecx, nHeight
		mov	[ebp+wndpl.rcNormalPosition.right], eax
		mov	eax, Y
		mov	[ebp+wndpl.rcNormalPosition.top], eax
		add	eax, ecx
		mov	[ebp+wndpl.rcNormalPosition.bottom], eax
		lea	eax, [ebp+wndpl]
		push	eax		; lpwndpl
		push	edx		; hWnd
		mov	[ebp+wndpl.length], 2Ch
		call	ds:SetWindowPlacement
		mov	edx, dword_1009830

loc_100471F:				; CODE XREF: sub_1004565+156j
					; sub_1004565+15Ej
		push	1		; fAccept
		push	edx		; hWnd
		call	ds:DragAcceptFiles
		mov	edi, ds:GetClientRect
		lea	eax, [ebp+Rect]
		push	eax		; lpRect
		push	dword_1009830	; hWnd
		call	edi ; GetClientRect
		mov	eax, [ebp+Rect.bottom]
		push	ebx		; lpParam
		push	[ebp+var_54]	; hInstance
		add	eax, 0FFFFFF9Ch
		push	0Fh		; hMenu
		push	dword_1009830	; hWndParent
		push	eax		; nHeight
		push	[ebp+Rect.right] ; nWidth
		mov	eax, dword_1009850
		neg	eax
		push	ebx		; Y
		sbb	eax, eax
		push	ebx		; X
		and	eax, 0FFF00000h
		add	eax, 50300104h
		push	eax		; dwStyle
		push	esi		; lpWindowName
		push	offset aEdit	; "Edit"
		push	200h		; dwExStyle
		call	ds:CreateWindowExW
		cmp	eax, ebx
		mov	hWnd, eax
		jz	loc_10049AE
		mov	eax, dword_1009840
		neg	eax
		push	401h		; wID
		push	dword_1009830	; hwndParent
		sbb	eax, eax
		and	eax, 10000000h
		push	esi		; lpszText
		or	eax, 44800000h
		push	eax		; style
		call	ds:CreateStatusWindowW
		cmp	eax, ebx
		mov	dword_1009834, eax
		jz	loc_10049AE
		push	1
		call	sub_1001C42
		lea	eax, [ebp+var_6C]
		push	eax		; lpRect
		push	dword_1009834	; hWnd
		call	edi ; GetClientRect
		mov	eax, [ebp+var_60]
		sub	eax, [ebp+var_68]
		push	4
		mov	dword_100A6E0, eax
		mov	eax, [ebp+var_64]
		sub	eax, [ebp+var_6C]
		pop	ecx
		lea	eax, [eax+eax*2]
		cdq
		idiv	ecx
		mov	esi, ds:SendMessageW
		or	[ebp+var_58], 0FFFFFFFFh
		mov	[ebp+lParam], eax
		lea	eax, [ebp+lParam]
		push	eax		; lParam
		push	2		; wParam
		push	404h		; Msg
		push	dword_1009834	; hWnd
		call	esi ; SendMessageW
		push	ebx		; lParam
		push	dword_1009850	; wParam
		push	0C8h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		cmp	dword_1009850, ebx
		jz	short loc_1004840
		push	dword_1009830	; hWnd
		call	ds:GetMenu
		push	1		; uEnable
		push	1Bh		; uIDEnableItem
		push	3		; nPos
		push	eax		; hMenu
		call	ds:GetSubMenu
		push	eax		; hMenu
		call	ds:EnableMenuItem

loc_1004840:				; CODE XREF: sub_1004565+2B9j
		push	2D0h		; nDenominator
		push	5Ah		; index
		push	[ebp+hDC]	; hdc
		call	ds:GetDeviceCaps
		push	eax		; nNumerator
		push	Data		; nNumber
		call	ds:MulDiv
		neg	eax
		mov	edi, offset lf
		push	edi		; lplf
		mov	lf.lfHeight, eax
		call	ds:CreateFontIndirectW
		push	eax		; h
		push	[ebp+hDC]	; hdc
		mov	ho, eax
		call	ds:SelectObject
		mov	[ebp+wParam], eax
		lea	eax, [ebp+String1]
		push	eax		; lpName
		push	20h		; c
		push	[ebp+hDC]	; hdc
		call	ds:GetTextFaceW
		push	[ebp+wParam]	; h
		push	[ebp+hDC]	; hdc
		call	ds:SelectObject
		push	offset lf.lfFaceName ; lpString2
		lea	eax, [ebp+String1]
		push	eax		; lpString1
		call	ds:lstrcmpiW
		test	eax, eax
		jz	short loc_10048DC
		push	edi		; lParam
		push	offset Proc	; lpProc
		push	offset lf.lfFaceName ; lpLogfont
		push	[ebp+hDC]	; hdc
		call	ds:EnumFontsW
		push	ho		; ho
		call	ds:DeleteObject
		push	edi		; lplf
		call	ds:CreateFontIndirectW
		mov	ho, eax

loc_10048DC:				; CODE XREF: sub_1004565+349j
		push	ebx		; lParam
		push	ho		; wParam
		push	30h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		push	[ebp+hDC]	; hDC
		push	ebx		; hWnd
		call	ds:ReleaseDC
		push	2		; uBytes
		push	42h		; uFlags
		mov	word_100A800, bx
		call	ds:LocalAlloc
		push	ebx		; lParam
		push	ebx		; wParam
		push	0C5h		; Msg
		push	hWnd		; hWnd
		mov	dword_100AB8C, eax
		call	ds:PostMessageW
		push	lpString2	; lpFileName
		call	sub_1002A55
		push	[ebp+nCmdShow]	; nCmdShow
		push	dword_1009830	; hWnd
		call	ds:ShowWindow
		push	dword_100AB88	; hCursor
		call	ds:SetCursor
		push	[ebp+var_50]
		call	sub_100417A
		or	dword_1009A80, 0FFFFFFFFh
		mov	ecx, offset aA	; "/A"
		mov	edi, eax
		call	sub_1003F4C
		test	eax, eax
		jnz	short loc_100496D
		mov	dword_1009A80, ebx
		jmp	short loc_1004990
; ---------------------------------------------------------------------------

loc_100496D:				; CODE XREF: sub_1004565+3FEj
		mov	eax, edi
		mov	ecx, offset aW	; "/W"
		call	sub_1003F4C
		test	eax, eax
		jnz	short loc_1004987
		mov	dword_1009A80, 1

loc_1004987:				; CODE XREF: sub_1004565+416j
		cmp	dword_1009A80, 0FFFFFFFFh
		jz	short loc_100499B

loc_1004990:				; CODE XREF: sub_1004565+406j
		add	edi, 4
		push	edi
		call	sub_100417A
		mov	edi, eax

loc_100499B:				; CODE XREF: sub_1004565+429j
		push	edi
		call	sub_100419E
		cmp	eax, ebx
		jz	short loc_10049BF
		cmp	eax, 2
		jnz	loc_1004A9B

loc_10049AE:				; CODE XREF: sub_1004565+38j
					; sub_1004565+4Cj ...
		xor	eax, eax

loc_10049B0:				; CODE XREF: sub_1004565+5F6j
		mov	ecx, [ebp+var_4]
		pop	edi
		pop	esi
		pop	ebx
		call	sub_1007147
		leave
		retn	10h
; ---------------------------------------------------------------------------

loc_10049BF:				; CODE XREF: sub_1004565+43Ej
		push	[ebp+nCmdShow]	; nCmdShow
		push	edi		; int
		call	sub_10042F9
		test	eax, eax
		jz	short loc_10049E1
		push	ebx		; lParam
		push	ebx		; wParam
		push	10h		; Msg
		push	dword_1009830	; hWnd
		call	ds:PostMessageW
		jmp	loc_1004B58
; ---------------------------------------------------------------------------

loc_10049E1:				; CODE XREF: sub_1004565+465j
		cmp	[edi], bx
		jz	loc_1004A9B
		push	edi		; lpString2
		mov	edi, offset word_100A900
		push	edi		; lpFileName
		call	sub_1003F99
		push	ebx		; hTemplateFile
		push	80h		; dwFlagsAndAttributes
		push	3		; dwCreationDisposition
		push	ebx		; lpSecurityAttributes
		push	3		; dwShareMode
		push	80000000h	; dwDesiredAccess
		push	edi		; lpFileName
		call	ds:CreateFileW
		cmp	eax, 0FFFFFFFFh
		mov	hFile, eax
		jnz	short loc_1004A8F
		call	ds:GetLastError
		cmp	eax, 2
		jnz	short loc_1004A68
		push	33h		; uType
		push	edi		; lpString
		push	dword_1009038	; lpText
		push	lpCaption	; lpCaption
		push	dword_1009830	; hWnd
		call	sub_1001F70
		cmp	eax, 2
		jz	loc_10049AE
		cmp	eax, 6
		jnz	short loc_1004A86
		push	ebx		; hTemplateFile
		push	80h		; dwFlagsAndAttributes
		push	4		; dwCreationDisposition
		push	ebx		; lpSecurityAttributes
		push	3		; dwShareMode
		push	0C0000000h	; dwDesiredAccess
		push	edi		; lpFileName
		call	ds:CreateFileW
		mov	hFile, eax
		jmp	short loc_1004A86
; ---------------------------------------------------------------------------

loc_1004A68:				; CODE XREF: sub_1004565+4BBj
		push	edi		; lpString
		call	sub_1004E20
		push	lpString2	; lpFileName
		call	sub_1002A55
		push	lpString2	; lpString2
		push	edi		; lpString1
		call	ds:lstrcpyW

loc_1004A86:				; CODE XREF: sub_1004565+4E3j
					; sub_1004565+501j
		cmp	hFile, 0FFFFFFFFh
		jz	short loc_1004A9B

loc_1004A8F:				; CODE XREF: sub_1004565+4B0j
		push	dword_1009A80	; int
		push	edi		; lpString
		call	sub_1005179

loc_1004A9B:				; CODE XREF: sub_1004565+443j
					; sub_1004565+47Fj ...
		push	offset word_100A5E0 ; lpString
		call	sub_1004458
		push	offset word_100A540 ; lpString
		call	sub_1004458
		mov	edx, dword_1009830
		push	16h
		pop	ecx
		xor	eax, eax
		push	0Ah
		mov	edi, offset stru_100A680
		rep stosd
		mov	eax, [ebp+var_54]
		pop	ecx
		mov	stru_100A680.hInstance,	eax
		xor	eax, eax
		mov	edi, offset stru_100A500
		rep stosd
		lea	eax, [ebp+var_50]
		push	eax		; lParam
		lea	eax, [ebp+wParam]
		push	eax		; wParam
		push	0B0h		; Msg
		push	hWnd		; hWnd
		mov	stru_100A680.lStructSize, 58h
		mov	stru_100A680.hwndOwner,	edx
		mov	stru_100A680.nMaxFile, 104h
		mov	stru_100A500.lStructSize, 28h
		mov	stru_100A500.hwndOwner,	edx
		call	esi ; SendMessageW
		push	[ebp+var_50]	; lParam
		push	[ebp+wParam]	; wParam
		push	0B1h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		push	ebx		; lParam
		push	ebx		; wParam
		push	0B7h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		push	ebx		; idThread
		call	ds:GetKeyboardLayout
		and	ax, 3FFh
		cmp	ax, 11h
		jnz	short loc_1004B58
		push	1		; lParam
		push	1		; wParam
		push	0D8h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW

loc_1004B58:				; CODE XREF: sub_1004565+477j
					; sub_1004565+5E0j
		xor	eax, eax
		inc	eax
		jmp	loc_10049B0
sub_1004565	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1004B65	proc near		; CODE XREF: sub_1004EAE+193p
					; sub_1004EAE+1B5p ...

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, [ebp+arg_8]
		test	esi, esi
		jbe	short loc_1004B8F
		mov	eax, [ebp+arg_4]
		mov	ecx, [ebp+arg_0]
		push	ebx

loc_1004B79:				; CODE XREF: sub_1004B65+27j
		movzx	dx, byte ptr [eax+1]
		xor	ebx, ebx
		mov	bh, [eax]
		xor	edx, ebx
		mov	[ecx], dx
		inc	ecx
		inc	ecx
		inc	eax
		inc	eax
		dec	esi
		jnz	short loc_1004B79
		pop	ebx

loc_1004B8F:				; CODE XREF: sub_1004B65+Bj
		pop	esi
		pop	ebp
		retn	0Ch
sub_1004B65	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1004B99(HANDLE hFile, UINT CodePage, DWORD dwFlags,	LPCWSTR	lpWideCharStr, int cchWideChar)
sub_1004B99	proc near		; CODE XREF: sub_1004EAE+16Bp

NumberOfBytesWritten= dword ptr	-10h
var_C		= byte ptr -0Ch
hMem		= dword	ptr -8
lpUsedDefaultChar= dword ptr -4
hFile		= dword	ptr  8
CodePage	= dword	ptr  0Ch
dwFlags		= dword	ptr  10h
lpWideCharStr	= dword	ptr  14h
cchWideChar	= dword	ptr  18h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 10h
		push	ebx
		xor	ebx, ebx
		cmp	[ebp+cchWideChar], ebx
		jnz	short loc_1004BB1
		xor	eax, eax
		inc	eax
		jmp	loc_1004C3F
; ---------------------------------------------------------------------------

loc_1004BB1:				; CODE XREF: sub_1004B99+Ej
		cmp	[ebp+CodePage],	0FDE9h
		mov	[ebp+lpUsedDefaultChar], ebx
		jz	short loc_1004BC3
		lea	eax, [ebp+var_C]
		mov	[ebp+lpUsedDefaultChar], eax

loc_1004BC3:				; CODE XREF: sub_1004B99+22j
		push	esi
		mov	esi, ds:WideCharToMultiByte
		push	edi
		push	[ebp+lpUsedDefaultChar]	; lpUsedDefaultChar
		push	ebx		; lpDefaultChar
		push	ebx		; cbMultiByte
		push	ebx		; lpMultiByteStr
		push	[ebp+cchWideChar] ; cchWideChar
		push	[ebp+lpWideCharStr] ; lpWideCharStr
		push	[ebp+dwFlags]	; dwFlags
		push	[ebp+CodePage]	; CodePage
		call	esi ; WideCharToMultiByte
		mov	edi, eax
		cmp	edi, ebx
		jz	short loc_1004C00
		lea	eax, [edi+1]
		push	eax		; uBytes
		push	40h		; uFlags
		call	ds:LocalAlloc
		cmp	eax, ebx
		mov	[ebp+hMem], eax
		jnz	short loc_1004C04
		push	8		; dwErrCode
		call	ds:SetLastError

loc_1004C00:				; CODE XREF: sub_1004B99+4Aj
		xor	eax, eax
		jmp	short loc_1004C3D
; ---------------------------------------------------------------------------

loc_1004C04:				; CODE XREF: sub_1004B99+5Dj
		push	[ebp+lpUsedDefaultChar]	; lpUsedDefaultChar
		push	ebx		; lpDefaultChar
		push	edi		; cbMultiByte
		push	eax		; lpMultiByteStr
		push	[ebp+cchWideChar] ; cchWideChar
		push	[ebp+lpWideCharStr] ; lpWideCharStr
		push	[ebp+dwFlags]	; dwFlags
		push	[ebp+CodePage]	; CodePage
		call	esi ; WideCharToMultiByte
		mov	esi, eax
		cmp	esi, ebx
		jz	short loc_1004C32
		push	ebx		; lpOverlapped
		lea	eax, [ebp+NumberOfBytesWritten]
		push	eax		; lpNumberOfBytesWritten
		push	edi		; nNumberOfBytesToWrite
		push	[ebp+hMem]	; lpBuffer
		push	[ebp+hFile]	; hFile
		call	ds:WriteFile
		mov	esi, eax

loc_1004C32:				; CODE XREF: sub_1004B99+83j
		push	[ebp+hMem]	; hMem
		call	ds:LocalFree
		mov	eax, esi

loc_1004C3D:				; CODE XREF: sub_1004B99+69j
		pop	edi
		pop	esi

loc_1004C3F:				; CODE XREF: sub_1004B99+13j
		pop	ebx
		leave
		retn	14h
sub_1004B99	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================


sub_1004C49	proc near		; CODE XREF: sub_1004EAE+7Ep
		mov	edi, edi
		push	edi
		xor	edi, edi
		cmp	dword_1009850, edi
		jz	short loc_1004CA4
		cmp	dword_1009858, edi
		push	esi
		mov	esi, ds:SendMessageW
		jz	short loc_1004C6E
		push	1
		call	sub_1001B99
		jmp	short loc_1004C94
; ---------------------------------------------------------------------------

loc_1004C6E:				; CODE XREF: sub_1004C49+1Aj
		push	offset dword_1009A88 ; lParam
		push	offset dword_1009A8C ; wParam
		push	0B0h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		push	edi		; lParam
		push	edi		; wParam
		push	0B1h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW

loc_1004C94:				; CODE XREF: sub_1004C49+23j
		push	edi		; lParam
		push	edi		; wParam
		push	0C8h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		pop	esi

loc_1004CA4:				; CODE XREF: sub_1004C49+Bj
		pop	edi
		retn
sub_1004C49	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================


sub_1004CAB	proc near		; CODE XREF: sub_1004EAE+247p
					; sub_1004EAE+2B0p
		xor	eax, eax
		cmp	dword_1009850, eax
		jz	short locret_1004CF9
		cmp	dword_1009858, eax
		jz	short loc_1004CC8
		push	50200104h	; hWnd
		call	sub_1005B41
		retn
; ---------------------------------------------------------------------------

loc_1004CC8:				; CODE XREF: sub_1004CAB+10j
		push	esi
		mov	esi, ds:SendMessageW
		push	eax		; lParam
		push	1		; wParam
		push	0C8h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		push	dword_1009A88	; lParam
		push	dword_1009A8C	; wParam
		push	0B1h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		pop	esi

locret_1004CF9:				; CODE XREF: sub_1004CAB+8j
		retn
sub_1004CAB	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1004CFF	proc near		; CODE XREF: sub_1002B87+26Bp
					; sub_1005179+2A1p ...

arg_0		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	ebx
		xor	ebx, ebx
		cmp	[ebp+arg_0], ebx
		jz	short loc_1004D1A
		push	ebx
		call	sub_100270F
		test	eax, eax
		jz	loc_1004DC3

loc_1004D1A:				; CODE XREF: sub_1004CFF+Bj
		push	esi
		mov	esi, ds:SendMessageW
		push	edi
		push	offset szOtherStuff ; lParam
		push	ebx		; wParam
		push	0Ch		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		push	lpString2	; lpString2
		mov	edi, offset word_100A900
		push	edi		; lpString1
		mov	dword_100901C, 1
		call	ds:lstrcpyW
		push	edi		; lpFileName
		call	sub_1002A55
		push	ebx		; lParam
		push	ebx		; wParam
		push	0B1h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		push	ebx		; lParam
		push	ebx		; wParam
		push	0B7h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		push	2		; uFlags
		push	2		; uBytes
		push	dword_100AB8C	; hMem
		call	ds:LocalReAlloc
		cmp	eax, ebx
		jz	short loc_1004D8B
		mov	dword_100AB8C, eax

loc_1004D8B:				; CODE XREF: sub_1004CFF+85j
		push	dword_100AB8C	; hMem
		call	ds:LocalLock
		mov	[eax], bx
		push	dword_100AB8C	; hMem
		call	ds:LocalUnlock
		push	ebx		; lParam
		push	dword_100AB8C	; wParam
		push	0BCh		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		pop	edi
		mov	word_100A800, bx
		pop	esi

loc_1004DC3:				; CODE XREF: sub_1004CFF+15j
		pop	ebx
		pop	ebp
		retn	4
sub_1004CFF	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1004DCD(LPCWSTR lpString1)
sub_1004DCD	proc near		; CODE XREF: sub_1003F99+7Dp

lpString1	= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, [ebp+lpString1]
		push	esi		; lpString
		call	ds:lstrlenW
		lea	ecx, [esi+eax*2]
		jmp	short loc_1004DF2
; ---------------------------------------------------------------------------

loc_1004DE2:				; CODE XREF: sub_1004DCD+2Bj
		cmp	edx, 5Ch
		jz	short loc_1004DFA
		cmp	edx, 3Ah
		jz	short loc_1004DFA
		cmp	ecx, esi
		jbe	short loc_1004DFA
		dec	ecx
		dec	ecx

loc_1004DF2:				; CODE XREF: sub_1004DCD+13j
		movzx	edx, word ptr [ecx]
		cmp	edx, 2Eh
		jnz	short loc_1004DE2

loc_1004DFA:				; CODE XREF: sub_1004DCD+18j
					; sub_1004DCD+1Dj ...
		cmp	word ptr [ecx],	2Eh
		jz	short loc_1004E16
		add	eax, 5
		cmp	eax, 104h
		ja	short loc_1004E16
		push	offset a_txt_0	; ".txt"
		push	esi		; lpString1
		call	ds:lstrcatW

loc_1004E16:				; CODE XREF: sub_1004DCD+31j
					; sub_1004DCD+3Bj
		pop	esi
		pop	ebp
		retn	4
sub_1004DCD	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1004E20(LPCWSTR lpString)
sub_1004E20	proc near		; CODE XREF: sub_100337E+3Dp
					; sub_1004565+504p ...

Text		= word ptr -204h
var_4		= dword	ptr -4
lpString	= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 204h
		mov	eax, ___security_cookie
		push	esi
		mov	esi, [ebp+lpString]
		push	0		; Arguments
		mov	[ebp+var_4], eax
		push	100h		; nSize
		lea	eax, [ebp+Text]
		push	eax		; lpBuffer
		call	ds:GetUserDefaultUILanguage
		movzx	eax, ax
		push	eax		; dwLanguageId
		call	ds:GetLastError
		push	eax		; dwMessageId
		push	0		; lpSource
		push	1200h		; dwFlags
		call	ds:FormatMessageW
		test	eax, eax
		push	30h		; uType
		jz	short loc_1004E84
		push	lpCaption	; lpCaption
		lea	eax, [ebp+Text]
		push	eax		; lpText
		push	dword_1009830	; hWnd
		call	ds:MessageBoxW
		jmp	short loc_1004E9C
; ---------------------------------------------------------------------------

loc_1004E84:				; CODE XREF: sub_1004E20+47j
		push	esi		; lpString
		push	dword_1009034	; lpText
		push	lpCaption	; lpCaption
		push	dword_1009830	; hWnd
		call	sub_1001F70

loc_1004E9C:				; CODE XREF: sub_1004E20+62j
		mov	ecx, [ebp+var_4]
		pop	esi
		call	sub_1007147
		leave
		retn	4
sub_1004E20	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1004EAE(HWND hWnd, LPCWSTR lpString, LPCWSTR lpBuffer)
sub_1004EAE	proc near		; CODE XREF: sub_100270F+EEp
					; sub_100270F+13Ap ...

var_14		= dword	ptr -14h
UsedDefaultChar	= dword	ptr -10h
hMem		= dword	ptr -0Ch
CodePage	= dword	ptr -8
NumberOfBytesWritten= dword ptr	-4
hWnd		= dword	ptr  8
lpString	= dword	ptr  0Ch
lpBuffer	= dword	ptr  10h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 14h
		push	esi
		xor	esi, esi
		cmp	[ebp+lpBuffer],	esi
		push	esi		; hTemplateFile
		push	80h		; dwFlagsAndAttributes
		push	4		; dwCreationDisposition
		mov	[ebp+UsedDefaultChar], esi
		push	esi		; lpSecurityAttributes
		jnz	short loc_1004ECE
		push	1
		jmp	short loc_1004ED0
; ---------------------------------------------------------------------------

loc_1004ECE:				; CODE XREF: sub_1004EAE+1Aj
		push	3		; dwShareMode

loc_1004ED0:				; CODE XREF: sub_1004EAE+1Ej
		push	0C0000000h	; dwDesiredAccess
		push	[ebp+lpString]	; lpFileName
		call	ds:CreateFileW
		cmp	eax, 0FFFFFFFFh
		mov	hFile, eax
		jz	short loc_1004F04
		call	ds:GetLastError
		xor	ecx, ecx
		cmp	eax, 0B7h
		setnz	cl
		cmp	hFile, 0FFFFFFFFh
		mov	[ebp+var_14], ecx
		jnz	short loc_1004F24

loc_1004F04:				; CODE XREF: sub_1004EAE+38j
		push	30h		; uType
		push	[ebp+lpString]	; lpString
		push	dword_1009068	; lpText
		push	lpCaption	; lpCaption
		push	[ebp+hWnd]	; hWnd
		call	sub_1001F70
		xor	eax, eax
		jmp	loc_10050FE
; ---------------------------------------------------------------------------

loc_1004F24:				; CODE XREF: sub_1004EAE+54j
		cmp	dword_1009850, esi
		jz	short loc_1004F31
		call	sub_1004C49

loc_1004F31:				; CODE XREF: sub_1004EAE+7Cj
		push	ebx
		push	edi
		mov	edi, ds:SendMessageW
		push	esi		; lParam
		push	esi		; wParam
		push	0Eh		; Msg
		push	hWnd		; hWnd
		call	edi ; SendMessageW
		push	esi		; lParam
		push	esi		; wParam
		push	0BDh		; Msg
		push	hWnd		; hWnd
		mov	ebx, eax
		call	edi ; SendMessageW
		cmp	eax, esi
		mov	[ebp+hMem], eax
		jz	loc_10050AA
		push	eax		; hMem
		call	ds:LocalLock
		cmp	eax, esi
		mov	[ebp+lpBuffer],	eax
		jz	loc_10050AA
		mov	eax, dword_100A528
		dec	eax
		jz	loc_100506A
		dec	eax
		jz	loc_1005020
		dec	eax
		jnz	short loc_1004FA1
		push	esi		; lpOverlapped
		lea	eax, [ebp+NumberOfBytesWritten]
		push	eax		; lpNumberOfBytesWritten
		push	3		; nNumberOfBytesToWrite
		push	offset unk_10091E0 ; lpBuffer
		push	hFile		; hFile
		call	ds:WriteFile

loc_1004FA1:				; CODE XREF: sub_1004EAE+D9j
		cmp	dword_100A528, 3
		jz	short loc_1004FBD
		call	ds:GetACP
		mov	[ebp+CodePage],	eax
		lea	eax, [ebp+UsedDefaultChar]
		mov	edi, 400h
		jmp	short loc_1004FC8
; ---------------------------------------------------------------------------

loc_1004FBD:				; CODE XREF: sub_1004EAE+FAj
		xor	eax, eax
		mov	[ebp+CodePage],	0FDE9h
		xor	edi, edi

loc_1004FC8:				; CODE XREF: sub_1004EAE+10Dj
		push	eax		; lpUsedDefaultChar
		push	esi		; lpDefaultChar
		push	esi		; cbMultiByte
		push	esi		; lpMultiByteStr
		push	ebx		; cchWideChar
		push	[ebp+lpBuffer]	; lpWideCharStr
		push	edi		; dwFlags
		push	[ebp+CodePage]	; CodePage
		call	ds:WideCharToMultiByte
		cmp	[ebp+UsedDefaultChar], esi
		jnz	short loc_1004FE7
		cmp	ebx, esi
		jz	short loc_100500B
		cmp	eax, esi
		jnz	short loc_100500B

loc_1004FE7:				; CODE XREF: sub_1004EAE+12Fj
		push	31h		; uType
		push	[ebp+lpString]	; lpString
		push	dword_10090A0	; lpText
		push	lpCaption	; lpCaption
		push	[ebp+hWnd]	; hWnd
		call	sub_1001F70
		cmp	eax, 2
		jz	loc_10050B2
		xor	edi, edi

loc_100500B:				; CODE XREF: sub_1004EAE+133j
					; sub_1004EAE+137j
		push	ebx		; cchWideChar
		push	[ebp+lpBuffer]	; lpWideCharStr
		push	edi		; dwFlags
		push	[ebp+CodePage]	; CodePage
		push	hFile		; hFile
		call	sub_1004B99
		jmp	short loc_1005098
; ---------------------------------------------------------------------------

loc_1005020:				; CODE XREF: sub_1004EAE+D2j
		mov	edi, ds:WriteFile
		push	esi		; lpOverlapped
		lea	eax, [ebp+NumberOfBytesWritten]
		push	eax		; lpNumberOfBytesWritten
		push	2		; nNumberOfBytesToWrite
		push	offset unk_10091E8 ; lpBuffer
		push	hFile		; hFile
		call	edi ; WriteFile
		push	ebx
		push	[ebp+lpBuffer]
		push	[ebp+lpBuffer]
		call	sub_1004B65
		push	esi		; lpOverlapped
		lea	eax, [ebp+NumberOfBytesWritten]
		push	eax		; lpNumberOfBytesWritten
		lea	eax, [ebx+ebx]
		push	eax		; nNumberOfBytesToWrite
		push	[ebp+lpBuffer]	; lpBuffer
		push	hFile		; hFile
		call	edi ; WriteFile
		push	ebx
		push	[ebp+lpBuffer]
		mov	edi, eax
		push	[ebp+lpBuffer]
		call	sub_1004B65
		jmp	short loc_100509A
; ---------------------------------------------------------------------------

loc_100506A:				; CODE XREF: sub_1004EAE+CBj
		mov	edi, ds:WriteFile
		push	esi		; lpOverlapped
		lea	eax, [ebp+NumberOfBytesWritten]
		push	eax		; lpNumberOfBytesWritten
		push	2		; nNumberOfBytesToWrite
		push	offset unk_10091E4 ; lpBuffer
		push	hFile		; hFile
		call	edi ; WriteFile
		push	esi		; lpOverlapped
		lea	eax, [ebp+NumberOfBytesWritten]
		push	eax		; lpNumberOfBytesWritten
		lea	eax, [ebx+ebx]
		push	eax		; nNumberOfBytesToWrite
		push	[ebp+lpBuffer]	; lpBuffer
		push	hFile		; hFile
		call	edi ; WriteFile

loc_1005098:				; CODE XREF: sub_1004EAE+170j
		mov	edi, eax

loc_100509A:				; CODE XREF: sub_1004EAE+1BAj
		cmp	edi, esi
		jnz	short loc_1005103
		push	dword_100AB88	; hCursor
		call	ds:SetCursor

loc_10050AA:				; CODE XREF: sub_1004EAE+ADj
					; sub_1004EAE+BFj
		push	[ebp+lpString]	; lpString
		call	sub_1004E20

loc_10050B2:				; CODE XREF: sub_1004EAE+155j
		push	dword_100AB88	; hCursor
		call	ds:SetCursor
		push	hFile		; hObject
		call	ds:CloseHandle
		or	hFile, 0FFFFFFFFh
		cmp	[ebp+hMem], esi
		jz	short loc_10050DF
		push	[ebp+hMem]	; hMem
		call	ds:LocalUnlock

loc_10050DF:				; CODE XREF: sub_1004EAE+226j
		cmp	[ebp+var_14], esi
		jz	short loc_10050ED
		push	[ebp+lpString]	; lpFileName
		call	ds:DeleteFileW

loc_10050ED:				; CODE XREF: sub_1004EAE+234j
		cmp	dword_1009850, esi
		jz	short loc_10050FA
		call	sub_1004CAB

loc_10050FA:				; CODE XREF: sub_1004EAE+245j
		xor	eax, eax

loc_10050FC:				; CODE XREF: sub_1004EAE+2C4j
		pop	edi
		pop	ebx

loc_10050FE:				; CODE XREF: sub_1004EAE+71j
		pop	esi
		leave
		retn	0Ch
; ---------------------------------------------------------------------------

loc_1005103:				; CODE XREF: sub_1004EAE+1EEj
		push	hFile		; hFile
		call	ds:SetEndOfFile
		mov	eax, dword_100A528
		push	esi		; lParam
		push	esi		; wParam
		push	0B9h		; Msg
		push	hWnd		; hWnd
		mov	dword_1009030, eax
		call	ds:SendMessageW
		push	[ebp+lpString]	; lpFileName
		call	sub_1002A55
		push	hFile		; hObject
		mov	dword_100901C, esi
		call	ds:CloseHandle
		push	[ebp+hMem]	; hMem
		or	hFile, 0FFFFFFFFh
		call	ds:LocalUnlock
		cmp	dword_1009850, esi
		jz	short loc_1005163
		call	sub_1004CAB

loc_1005163:				; CODE XREF: sub_1004EAE+2AEj
		push	dword_100AB88	; hCursor
		call	ds:SetCursor
		xor	eax, eax
		inc	eax
		jmp	short loc_10050FC
sub_1004EAE	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1005179(LPCWSTR lpString, int)
sub_1005179	proc near		; CODE XREF: sub_1002B87+23Bp
					; sub_100337E+47p ...

FileInformation	= _BY_HANDLE_FILE_INFORMATION ptr -290h
hObject		= dword	ptr -25Ch
var_258		= dword	ptr -258h
cbMultiByte	= dword	ptr -254h
var_250		= dword	ptr -250h
var_24C		= word ptr -24Ch
hMem		= dword	ptr -248h
lpMultiByteStr	= dword	ptr -244h
lpFileName	= dword	ptr -240h
var_23C		= dword	ptr -23Ch
var_238		= dword	ptr -238h
var_234		= dword	ptr -234h
CodePage	= dword	ptr -230h
var_22C		= dword	ptr -22Ch
wParam		= dword	ptr -228h
String		= word ptr -224h
var_1C		= dword	ptr -1Ch
ms_exc		= CPPEH_RECORD ptr -18h
lpString	= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	280h
		push	offset stru_1001800
		call	__SEH_prolog
		mov	eax, ___security_cookie
		mov	[ebp+var_1C], eax
		mov	edi, [ebp+lpString]
		mov	[ebp+lpFileName], edi
		xor	ebx, ebx
		mov	[ebp+var_234], ebx
		mov	[ebp+var_250], ebx
		mov	[ebp+var_238], ebx
		mov	[ebp+hMem], ebx
		mov	[ebp+CodePage],	ebx
		mov	eax, hFile
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_10051C9
		push	edi
		jmp	loc_10052A0
; ---------------------------------------------------------------------------

loc_10051C9:				; CODE XREF: sub_1005179+48j
		lea	ecx, [ebp+FileInformation]
		push	ecx		; lpFileInformation
		push	eax		; hFile
		call	ds:GetFileInformationByHandle
		mov	esi, [ebp+FileInformation.nFileSizeLow]
		mov	[ebp+cbMultiByte], esi
		cmp	eax, ebx
		jnz	short loc_10051F2
		push	edi		; lpString
		call	sub_1004E20
		jmp	loc_10057E1
; ---------------------------------------------------------------------------

loc_10051F2:				; CODE XREF: sub_1005179+6Cj
		cmp	esi, 40000000h
		jnb	loc_10057C7
		cmp	[ebp+FileInformation.nFileSizeHigh], ebx
		jnz	loc_10057C7
		push	hCursor		; hCursor
		call	ds:SetCursor
		cmp	esi, ebx
		jz	short loc_100525E
		xor	edi, edi
		mov	[ebp+var_23C], edi
		push	ebx		; lpName
		push	esi		; dwMaximumSizeLow
		push	ebx		; dwMaximumSizeHigh
		push	2		; flProtect
		push	ebx		; lpFileMappingAttributes
		push	hFile		; hFile
		call	ds:CreateFileMappingW
		mov	[ebp+hObject], eax
		cmp	eax, ebx
		jz	short loc_1005277
		push	esi		; dwNumberOfBytesToMap
		push	ebx		; dwFileOffsetLow
		push	ebx		; dwFileOffsetHigh
		push	4		; dwDesiredAccess
		push	eax		; hFileMappingObject
		call	ds:MapViewOfFile
		mov	[ebp+var_23C], eax
		push	[ebp+hObject]	; hObject
		call	ds:CloseHandle
		jmp	short loc_1005271
; ---------------------------------------------------------------------------

loc_100525E:				; CODE XREF: sub_1005179+9Fj
		lea	eax, [ebp+var_24C]
		mov	[ebp+var_23C], eax
		mov	[ebp+var_24C], bx

loc_1005271:				; CODE XREF: sub_1005179+E3j
		mov	edi, [ebp+var_23C]

loc_1005277:				; CODE XREF: sub_1005179+C3j
		push	hFile		; hObject
		call	ds:CloseHandle
		or	hFile, 0FFFFFFFFh
		cmp	edi, ebx
		jnz	short loc_10052AA
		push	dword_100AB88	; hCursor
		call	ds:SetCursor
		push	[ebp+lpFileName] ; lpString

loc_10052A0:				; CODE XREF: sub_1005179+4Bj
		call	sub_1004E20
		jmp	loc_10057F4
; ---------------------------------------------------------------------------

loc_10052AA:				; CODE XREF: sub_1005179+113j
		mov	[ebp+ms_exc.registration.TryLevel], ebx
		mov	[ebp+lpMultiByteStr], edi
		mov	eax, [ebp+arg_4]
		cmp	eax, 0FFFFFFFFh
		jnz	loc_1005471
		movzx	eax, word ptr [edi]
		cmp	eax, 0BBEFh
		jz	short loc_1005305
		cmp	eax, 0FEFFh
		jz	short loc_10052F4
		cmp	eax, 0FFFEh
		jnz	short loc_1005332
		mov	[ebp+var_238], 1
		mov	[ebp+var_22C], 2

loc_10052EB:				; CODE XREF: sub_1005179+18Aj
		mov	ebx, esi
		shr	ebx, 1
		jmp	loc_1005524
; ---------------------------------------------------------------------------

loc_10052F4:				; CODE XREF: sub_1005179+155j
		xor	eax, eax
		inc	eax
		mov	[ebp+var_238], eax
		mov	[ebp+var_22C], eax
		jmp	short loc_10052EB
; ---------------------------------------------------------------------------

loc_1005305:				; CODE XREF: sub_1005179+14Ej
		cmp	esi, 2
		jbe	short loc_1005332
		cmp	byte ptr [edi+2], 0BFh
		jnz	short loc_1005332
		mov	[ebp+var_258], 1
		mov	[ebp+CodePage],	0FDE9h
		push	3
		pop	eax
		mov	[ebp+var_22C], eax
		jmp	loc_10054CA
; ---------------------------------------------------------------------------

loc_1005332:				; CODE XREF: sub_1005179+15Cj
					; sub_1005179+18Fj ...
		push	esi		; iSize
		push	edi		; lpv
		call	sub_10070B1
		mov	[ebp+var_238], eax
		cmp	eax, ebx
		jz	short loc_1005356
		mov	[ebp+var_22C], 1
		mov	ebx, esi
		shr	ebx, 1
		jmp	loc_1005525
; ---------------------------------------------------------------------------

loc_1005356:				; CODE XREF: sub_1005179+1C8j
		push	esi
		push	edi
		call	sub_1007059
		mov	[ebp+var_258], eax
		cmp	eax, ebx
		jz	loc_100547E
		mov	[ebp+var_22C], 3
		mov	[ebp+CodePage],	0FDE9h

loc_100537F:				; CODE XREF: sub_1005179+311j
					; sub_1005179+336j ...
		mov	ebx, [ebp+wParam]

loc_1005385:				; CODE XREF: sub_1005179:loc_100551Ej
					; sub_1005179+3B2j
		xor	eax, eax
		cmp	[ebp+var_238], eax
		jnz	short loc_10053AF
		push	eax		; cchWideChar
		push	eax		; lpWideCharStr
		push	esi		; cbMultiByte
		push	[ebp+lpMultiByteStr] ; lpMultiByteStr
		push	eax		; dwFlags
		push	[ebp+CodePage]	; CodePage
		call	ds:MultiByteToWideChar
		mov	ebx, eax
		mov	[ebp+wParam], ebx
		xor	eax, eax

loc_10053AF:				; CODE XREF: sub_1005179+214j
		push	eax		; lParam
		push	eax		; wParam
		push	0Bh		; Msg
		push	hWnd		; hWnd
		mov	esi, ds:SendMessageW
		call	esi ; SendMessageW
		push	0		; lParam
		push	0		; wParam
		push	0B1h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		push	0		; lParam
		push	0		; wParam
		push	0B7h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		push	2		; uFlags
		lea	eax, [ebx+ebx+2]
		push	eax		; uBytes
		push	dword_100AB8C	; hMem
		call	ds:LocalReAlloc
		mov	[ebp+hMem], eax
		test	eax, eax
		jnz	loc_1005530
		push	[ebp+lpFileName] ; lpString2
		lea	eax, [ebp+String]
		push	eax		; lpString1
		call	ds:lstrcpyW
		xor	ebx, ebx
		push	ebx
		call	sub_1004CFF
		push	dword_100AB88	; hCursor
		call	ds:SetCursor
		push	30h		; uType
		lea	eax, [ebp+String]
		push	eax		; lpString
		push	dword_1009050	; lpText
		push	lpCaption	; lpCaption
		push	dword_1009830	; hWnd
		call	sub_1001F70
		lea	eax, [ebp+var_24C]
		cmp	edi, eax
		jz	short loc_100545C
		push	edi		; lpBaseAddress
		call	ds:UnmapViewOfFile

loc_100545C:				; CODE XREF: sub_1005179+2DAj
		push	ebx		; lParam
		push	ebx		; wParam
		push	0Bh		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		or	[ebp+ms_exc.registration.TryLevel], 0FFFFFFFFh
		jmp	loc_10057F4
; ---------------------------------------------------------------------------

loc_1005471:				; CODE XREF: sub_1005179+140j
		dec	eax
		jz	loc_1005500
		dec	eax
		jz	short loc_10054E0
		dec	eax
		jz	short loc_100548F

loc_100547E:				; CODE XREF: sub_1005179+1ECj
		mov	[ebp+var_22C], ebx
		mov	[ebp+CodePage],	ebx
		jmp	loc_100537F
; ---------------------------------------------------------------------------

loc_100548F:				; CODE XREF: sub_1005179+303j
		mov	[ebp+var_258], 1
		mov	[ebp+CodePage],	0FDE9h
		push	3
		pop	eax
		mov	[ebp+var_22C], eax
		cmp	esi, 2
		jbe	loc_100537F
		cmp	word ptr [edi],	0BBEFh
		jnz	loc_100537F
		cmp	byte ptr [edi+2], 0BFh
		jnz	loc_100537F

loc_10054CA:				; CODE XREF: sub_1005179+1B4j
		lea	ecx, [edi+3]
		mov	[ebp+lpMultiByteStr], ecx
		sub	esi, eax
		mov	[ebp+cbMultiByte], esi
		jmp	loc_100537F
; ---------------------------------------------------------------------------

loc_10054E0:				; CODE XREF: sub_1005179+300j
		xor	eax, eax
		inc	eax
		mov	[ebp+var_238], eax
		mov	[ebp+var_22C], eax
		mov	ebx, esi
		shr	ebx, 1
		mov	[ebp+wParam], ebx
		cmp	word ptr [edi],	0FFFEh
		jmp	short loc_100551E
; ---------------------------------------------------------------------------

loc_1005500:				; CODE XREF: sub_1005179+2F9j
		xor	eax, eax
		inc	eax
		mov	[ebp+var_238], eax
		mov	[ebp+var_22C], eax
		mov	ebx, esi
		shr	ebx, 1
		mov	[ebp+wParam], ebx
		cmp	word ptr [edi],	0FEFFh

loc_100551E:				; CODE XREF: sub_1005179+385j
		jnz	loc_1005385

loc_1005524:				; CODE XREF: sub_1005179+176j
		dec	ebx

loc_1005525:				; CODE XREF: sub_1005179+1D8j
		mov	[ebp+wParam], ebx
		jmp	loc_1005385
; ---------------------------------------------------------------------------

loc_1005530:				; CODE XREF: sub_1005179+285j
		push	eax		; hMem
		call	ds:LocalLock
		mov	[ebp+var_234], eax
		cmp	[ebp+var_238], 0
		jz	short loc_100558C
		mov	cx, [edi]
		cmp	cx, 0FEFFh
		jnz	short loc_1005555
		lea	esi, [edi+2]
		jmp	short loc_100556B
; ---------------------------------------------------------------------------

loc_1005555:				; CODE XREF: sub_1005179+3D5j
		cmp	cx, 0FFFEh
		jnz	short loc_1005569
		push	ebx
		lea	ecx, [edi+2]
		push	ecx
		push	eax
		call	sub_1004B65
		jmp	short loc_10055B0
; ---------------------------------------------------------------------------

loc_1005569:				; CODE XREF: sub_1005179+3E1j
		mov	esi, edi

loc_100556B:				; CODE XREF: sub_1005179+3DAj
		lea	ecx, [ebx+ebx]
		mov	edi, eax
		mov	eax, ecx
		shr	ecx, 2
		rep movsd
		mov	ecx, eax
		and	ecx, 3
		rep movsb
		mov	edi, [ebp+var_23C]
		mov	esi, ds:SendMessageW
		jmp	short loc_10055B0
; ---------------------------------------------------------------------------

loc_100558C:				; CODE XREF: sub_1005179+3CBj
		push	ebx		; cchWideChar
		push	eax		; lpWideCharStr
		push	[ebp+cbMultiByte] ; cbMultiByte
		push	[ebp+lpMultiByteStr] ; lpMultiByteStr
		push	0		; dwFlags
		push	[ebp+CodePage]	; CodePage
		call	ds:MultiByteToWideChar
		mov	ebx, eax
		mov	[ebp+wParam], ebx

loc_10055B0:				; CODE XREF: sub_1005179+3EEj
					; sub_1005179+411j
		mov	eax, [ebp+var_234]
		mov	ecx, [ebp+var_22C]
		mov	dword_1009030, ecx
		or	[ebp+ms_exc.registration.TryLevel], 0FFFFFFFFh
		jmp	short loc_1005606
; ---------------------------------------------------------------------------

loc_10055C8:				; DATA XREF: .text:stru_1001800o
		xor	eax, eax	; Exception filter 0 for function 1005179
		inc	eax
		retn
; ---------------------------------------------------------------------------

loc_10055CC:				; DATA XREF: .text:stru_1001800o
		mov	esp, [ebp+ms_exc.old_esp] ; Exception handler 0	for function 1005179
		push	30h		; uType
		push	[ebp+lpFileName] ; lpString
		push	dword_1009034	; lpText
		push	lpCaption	; lpCaption
		push	dword_1009830	; hWnd
		call	sub_1001F70
		xor	ebx, ebx
		or	[ebp+ms_exc.registration.TryLevel], 0FFFFFFFFh
		mov	edi, [ebp+var_23C]
		mov	esi, ds:SendMessageW
		mov	eax, [ebp+var_234]

loc_1005606:				; CODE XREF: sub_1005179+44Dj
		lea	ecx, [ebp+var_24C]
		cmp	edi, ecx
		jz	short loc_100561D
		push	edi		; lpBaseAddress
		call	ds:UnmapViewOfFile
		mov	eax, [ebp+var_234]

loc_100561D:				; CODE XREF: sub_1005179+495j
		xor	edi, edi
		cmp	eax, edi
		jz	short loc_1005675
		mov	ecx, eax
		cmp	ebx, edi
		jbe	short loc_100563A
		mov	edx, ebx

loc_100562B:				; CODE XREF: sub_1005179+4BFj
		cmp	[ecx], di
		jnz	short loc_1005635
		mov	word ptr [ecx],	20h

loc_1005635:				; CODE XREF: sub_1005179+4B5j
		inc	ecx
		inc	ecx
		dec	edx
		jnz	short loc_100562B

loc_100563A:				; CODE XREF: sub_1005179+4AEj
		mov	[eax+ebx*2], di
		mov	cx, [eax]
		inc	eax
		inc	eax
		cmp	cx, 2Eh
		jnz	short loc_100566F
		mov	cx, [eax]
		inc	eax
		inc	eax
		cmp	cx, 4Ch
		jnz	short loc_100566F
		mov	cx, [eax]
		inc	eax
		inc	eax
		cmp	cx, 4Fh
		jnz	short loc_100566F
		cmp	word ptr [eax],	47h
		mov	[ebp+var_250], 1
		jz	short loc_1005675

loc_100566F:				; CODE XREF: sub_1005179+4CEj
					; sub_1005179+4D9j ...
		mov	[ebp+var_250], edi

loc_1005675:				; CODE XREF: sub_1005179+4A8j
					; sub_1005179+4F4j
		cmp	[ebp+hMem], edi
		jz	short loc_1005694
		push	[ebp+hMem]	; hMem
		call	ds:LocalUnlock
		mov	eax, [ebp+hMem]
		mov	dword_100AB8C, eax

loc_1005694:				; CODE XREF: sub_1005179+502j
		push	[ebp+lpFileName] ; lpString2
		push	offset word_100A900 ; lpString1
		call	ds:lstrcpyW
		push	[ebp+lpFileName] ; lpFileName
		call	sub_1002A55
		mov	dword_100901C, edi
		mov	dword_1009848, 1
		push	edi		; lParam
		push	dword_100AB8C	; wParam
		push	0BCh		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		cmp	dword_1009848, 2
		jnz	short loc_1005726
		push	dword_100AB88	; hCursor
		call	ds:SetCursor
		mov	dword_1009848, edi
		push	30h		; uType
		push	[ebp+lpFileName] ; lpString
		push	dword_1009050	; lpText
		push	lpCaption	; lpCaption
		push	dword_1009830	; hWnd
		call	sub_1001F70
		push	edi
		call	sub_1004CFF
		push	edi		; lParam
		push	1		; wParam
		push	0Bh		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		jmp	loc_10057F4
; ---------------------------------------------------------------------------

loc_1005726:				; CODE XREF: sub_1005179+562j
		mov	dword_1009848, edi
		push	edi		; lParam
		push	edi		; wParam
		push	0C5h		; Msg
		push	hWnd		; hWnd
		call	ds:PostMessageW
		cmp	[ebp+var_250], edi
		jz	short loc_100576C
		push	ebx		; lParam
		push	ebx		; wParam
		push	0B1h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		push	edi		; lParam
		push	edi		; wParam
		push	0B7h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		push	1
		call	sub_1006F10

loc_100576C:				; CODE XREF: sub_1005179+5CCj
		xor	ebx, ebx
		inc	ebx
		push	ebx		; bRedraw
		push	edi		; lParam
		push	0BEh		; wParam
		push	115h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		push	eax		; nPos
		push	ebx		; nBar
		push	dword_1009830	; hWnd
		call	ds:SetScrollPos
		push	edi		; lParam
		push	ebx		; wParam
		push	0Bh		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		push	ebx		; bErase
		push	edi		; lpRect
		push	hWnd		; hWnd
		call	ds:InvalidateRect
		push	hWnd		; hWnd
		call	ds:UpdateWindow
		push	dword_100AB88	; hCursor
		call	ds:SetCursor
		mov	eax, ebx
		jmp	short loc_10057F6
; ---------------------------------------------------------------------------

loc_10057C7:				; CODE XREF: sub_1005179+7Fj
					; sub_1005179+8Bj
		push	30h		; uType
		push	edi		; lpString
		push	dword_1009050	; lpText
		push	lpCaption	; lpCaption
		push	dword_1009830	; hWnd
		call	sub_1001F70

loc_10057E1:				; CODE XREF: sub_1005179+74j
		push	hFile		; hObject
		call	ds:CloseHandle
		or	hFile, 0FFFFFFFFh

loc_10057F4:				; CODE XREF: sub_1005179+12Cj
					; sub_1005179+2F3j ...
		xor	eax, eax

loc_10057F6:				; CODE XREF: sub_1005179+64Cj
		mov	ecx, [ebp+var_1C]
		call	sub_1007147
		call	__SEH_epilog
		retn	8
sub_1005179	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_100580B(int, int, LPCWSTR Str2, int)
sub_100580B	proc near		; CODE XREF: sub_100594C+106p

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
Str2		= dword	ptr  10h
arg_C		= dword	ptr  14h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ecx
		push	ebx
		push	esi
		mov	esi, [ebp+Str2]
		movzx	eax, word ptr [esi]
		push	edi
		push	eax		; lpsz
		call	ds:CharUpperW
		mov	[ebp+var_4], eax
		movzx	eax, word ptr [esi]
		push	eax		; lpsz
		call	ds:CharLowerW
		mov	edi, ds:lstrlenW
		push	esi		; lpString
		mov	[ebp+var_8], eax
		call	edi ; lstrlenW
		mov	ebx, [ebp+arg_4]
		test	ebx, ebx
		mov	[ebp+Str2], eax
		jnz	short loc_10058A1
		mov	ebx, [ebp+arg_0]
		push	ebx		; lpString
		call	edi ; lstrlenW
		lea	ebx, [ebx+eax*2]
		jmp	short loc_10058A1
; ---------------------------------------------------------------------------

loc_1005850:				; CODE XREF: sub_100580B+99j
		dec	ebx
		dec	ebx
		cmp	[ebp+arg_C], 0
		mov	ax, [ebx]
		jz	short loc_1005860
		cmp	ax, [esi]
		jmp	short loc_100586A
; ---------------------------------------------------------------------------

loc_1005860:				; CODE XREF: sub_100580B+4Ej
		cmp	ax, word ptr [ebp+var_4]
		jz	short loc_1005884
		cmp	ax, word ptr [ebp+var_8]

loc_100586A:				; CODE XREF: sub_100580B+53j
		jnz	short loc_10058A1
		cmp	[ebp+arg_C], 0
		jz	short loc_1005884
		push	[ebp+Str2]	; MaxCount
		push	esi		; Str2
		push	ebx		; Str1
		call	ds:wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jmp	short loc_100589F
; ---------------------------------------------------------------------------

loc_1005884:				; CODE XREF: sub_100580B+59j
					; sub_100580B+65j
		push	[ebp+Str2]	; cchCount2
		push	esi		; lpString2
		push	[ebp+Str2]	; cchCount1
		push	ebx		; lpString1
		push	10001001h	; dwCmpFlags
		push	400h		; Locale
		call	ds:CompareStringW
		cmp	eax, 2

loc_100589F:				; CODE XREF: sub_100580B+77j
		jz	short loc_10058AA

loc_10058A1:				; CODE XREF: sub_100580B+38j
					; sub_100580B+43j ...
		cmp	ebx, [ebp+arg_0]
		jnz	short loc_1005850
		xor	eax, eax
		jmp	short loc_10058AC
; ---------------------------------------------------------------------------

loc_10058AA:				; CODE XREF: sub_100580B:loc_100589Fj
		mov	eax, ebx

loc_10058AC:				; CODE XREF: sub_100580B+9Dj
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	10h
sub_100580B	endp

; ---------------------------------------------------------------------------
		align 8

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_10058B8(wchar_t *lpString1,	LPCWSTR	Str2, int)
sub_10058B8	proc near		; CODE XREF: sub_100594C+123p

var_4		= dword	ptr -4
lpString1	= dword	ptr  8
Str2		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		mov	esi, [ebp+Str2]
		push	edi
		push	esi		; lpString
		call	ds:lstrlenW
		mov	ebx, eax
		movzx	eax, word ptr [esi]
		push	eax		; lpsz
		call	ds:CharUpperW
		mov	[ebp+Str2], eax
		movzx	eax, word ptr [esi]
		push	eax		; lpsz
		call	ds:CharLowerW
		mov	edi, [ebp+lpString1]
		mov	[ebp+var_4], eax
		jmp	short loc_100592E
; ---------------------------------------------------------------------------

loc_10058EC:				; CODE XREF: sub_10058B8+7Cj
		cmp	[ebp+arg_8], 0
		jz	short loc_1005907
		cmp	ax, [esi]
		jnz	short loc_100592C
		push	ebx		; MaxCount
		push	esi		; Str2
		push	edi		; Str1
		call	ds:wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jmp	short loc_100592A
; ---------------------------------------------------------------------------

loc_1005907:				; CODE XREF: sub_10058B8+38j
		cmp	ax, word ptr [ebp+Str2]
		jz	short loc_1005913
		cmp	ax, word ptr [ebp+var_4]
		jnz	short loc_100592C

loc_1005913:				; CODE XREF: sub_10058B8+53j
		push	ebx		; cchCount2
		push	esi		; lpString2
		push	ebx		; cchCount1
		push	edi		; lpString1
		push	10001001h	; dwCmpFlags
		push	400h		; Locale
		call	ds:CompareStringW
		cmp	eax, 2

loc_100592A:				; CODE XREF: sub_10058B8+4Dj
		jz	short loc_1005936

loc_100592C:				; CODE XREF: sub_10058B8+3Dj
					; sub_10058B8+59j
		inc	edi
		inc	edi

loc_100592E:				; CODE XREF: sub_10058B8+32j
		mov	ax, [edi]
		test	ax, ax
		jnz	short loc_10058EC

loc_1005936:				; CODE XREF: sub_10058B8:loc_100592Aj
		mov	ax, [edi]
		neg	ax
		sbb	eax, eax
		and	eax, edi
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	0Ch
sub_10058B8	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_100594C(LPCWSTR Str2)
sub_100594C	proc near		; CODE XREF: sub_1002B87+43Dp
					; sub_1003429+300p ...

hMenu		= dword	ptr -24h
hMem		= dword	ptr -20h
var_1C		= dword	ptr -1Ch
var_18		= dword	ptr -18h
var_14		= dword	ptr -14h
lParam		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
wParam		= dword	ptr -4
Str2		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 24h
		mov	eax, [ebp+Str2]
		push	ebx
		xor	ebx, ebx
		cmp	[eax], bx
		mov	[ebp+var_18], ebx
		mov	[ebp+var_14], ebx
		jnz	short loc_100596C
		xor	eax, eax
		jmp	loc_1005B37
; ---------------------------------------------------------------------------

loc_100596C:				; CODE XREF: sub_100594C+17j
		push	esi
		mov	esi, ds:SendMessageW
		push	edi
		lea	eax, [ebp+lParam]
		push	eax		; lParam
		lea	eax, [ebp+wParam]
		push	eax		; wParam
		push	0B0h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		push	dword_1009830	; hWnd
		call	ds:GetMenu
		push	ebx		; uFlags
		push	19h		; uId
		xor	edi, edi
		inc	edi
		push	edi		; nPos
		push	eax		; hMenu
		mov	[ebp+hMenu], eax
		call	ds:GetSubMenu
		push	eax		; hMenu
		call	ds:GetMenuState
		cmp	eax, edi
		jnz	short loc_10059BA
		mov	[ebp+var_14], edi
		mov	[ebp+lParam], ebx
		mov	[ebp+wParam], ebx

loc_10059BA:				; CODE XREF: sub_100594C+63j
		push	ebx		; lParam
		push	ebx		; wParam
		push	0BDh		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		cmp	eax, ebx
		mov	[ebp+hMem], eax
		jz	short loc_10059DD
		push	eax		; hMem
		call	ds:LocalLock
		mov	edi, eax
		cmp	edi, ebx
		jnz	short loc_10059E4

loc_10059DD:				; CODE XREF: sub_100594C+82j
		xor	eax, eax
		jmp	loc_1005B35
; ---------------------------------------------------------------------------

loc_10059E4:				; CODE XREF: sub_100594C+8Fj
		cmp	dword_1009A94, ebx
		jz	short loc_1005A5F
		push	ebx		; lParam
		push	[ebp+wParam]	; wParam
		push	0C9h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		push	ebx		; lParam
		push	eax		; wParam
		push	0BBh		; Msg
		push	hWnd		; hWnd
		mov	[ebp+var_8], eax
		call	esi ; SendMessageW
		mov	ecx, [ebp+var_8]
		mov	[ebp+var_8], ecx
		mov	ecx, [ebp+wParam]
		jmp	short loc_1005A3E
; ---------------------------------------------------------------------------

loc_1005A1A:				; CODE XREF: sub_100594C+10Fj
		cmp	[ebp+var_8], 0
		mov	eax, [ebp+var_C]
		mov	[ebp+var_1C], eax
		jz	short loc_1005A76
		dec	[ebp+var_8]
		push	0		; lParam
		push	[ebp+var_8]	; wParam
		push	0BBh		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		mov	ecx, [ebp+var_1C]

loc_1005A3E:				; CODE XREF: sub_100594C+CCj
		push	dword_1009A90	; int
		lea	ecx, [edi+ecx*2]
		push	[ebp+Str2]	; Str2
		mov	[ebp+var_C], eax
		lea	eax, [edi+eax*2]
		push	ecx		; int
		push	eax		; int
		call	sub_100580B
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_1005A1A
		jmp	short loc_1005A76
; ---------------------------------------------------------------------------

loc_1005A5F:				; CODE XREF: sub_100594C+9Ej
		push	dword_1009A90	; int
		mov	eax, [ebp+lParam]
		push	[ebp+Str2]	; Str2
		lea	eax, [edi+eax*2]
		push	eax		; lpString1
		call	sub_10058B8
		mov	ebx, eax

loc_1005A76:				; CODE XREF: sub_100594C+D8j
					; sub_100594C+111j
		push	[ebp+hMem]	; hMem
		call	ds:LocalUnlock
		test	ebx, ebx
		jnz	short loc_1005ACC
		test	byte ptr stru_100A500.Flags, 20h
		jnz	loc_1005B32
		push	dword_100AB88	; hCursor
		mov	esi, ds:SetCursor
		call	esi ; SetCursor
		mov	edi, eax
		mov	eax, hDlg
		test	eax, eax
		jnz	short loc_1005AAE
		mov	eax, dword_1009830

loc_1005AAE:				; CODE XREF: sub_100594C+15Bj
		push	40h		; uType
		push	offset word_100A800 ; lpString
		push	dword_1009048	; lpText
		push	lpCaption	; lpCaption
		push	eax		; hWnd
		call	sub_1001F70
		push	edi		; hCursor
		call	esi ; SetCursor
		jmp	short loc_1005B32
; ---------------------------------------------------------------------------

loc_1005ACC:				; CODE XREF: sub_100594C+135j
		push	[ebp+Str2]	; lpString
		sub	ebx, edi
		sar	ebx, 1
		mov	[ebp+wParam], ebx
		call	ds:lstrlenW
		add	eax, [ebp+wParam]
		push	eax		; lParam
		push	[ebp+wParam]	; wParam
		push	0B1h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		xor	edi, edi
		cmp	[ebp+var_14], edi
		jz	short loc_1005B0C
		push	edi		; uEnable
		push	19h		; uIDEnableItem
		push	1		; nPos
		push	[ebp+hMenu]	; hMenu
		call	ds:GetSubMenu
		push	eax		; hMenu
		call	ds:EnableMenuItem

loc_1005B0C:				; CODE XREF: sub_100594C+1A9j
		test	byte ptr stru_100A500.Flags, 20h
		jnz	short loc_1005B2B
		push	edi		; lParam
		push	edi		; wParam
		push	0B7h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		push	1
		call	sub_1001C42

loc_1005B2B:				; CODE XREF: sub_100594C+1C7j
		mov	[ebp+var_18], 1

loc_1005B32:				; CODE XREF: sub_100594C+13Ej
					; sub_100594C+17Ej
		mov	eax, [ebp+var_18]

loc_1005B35:				; CODE XREF: sub_100594C+93j
		pop	edi
		pop	esi

loc_1005B37:				; CODE XREF: sub_100594C+1Bj
		pop	ebx
		leave
		retn	4
sub_100594C	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1005B41(DWORD hWnd)
sub_1005B41	proc near		; CODE XREF: sub_1002B87+5CBp
					; sub_1004CAB+17p

Rect		= tagRECT ptr -38h
var_28		= dword	ptr -28h
var_24		= dword	ptr -24h
var_20		= dword	ptr -20h
var_1C		= dword	ptr -1Ch
wParam		= dword	ptr -18h
lParam		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
hCursor		= dword	ptr -8
hMem		= dword	ptr -4
hWnd		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 38h
		push	ebx
		mov	ebx, ds:SetCursor
		push	esi
		mov	esi, [ebp+hWnd]
		push	edi
		push	hCursor		; hCursor
		shr	esi, 14h
		and	esi, 1
		mov	[ebp+var_C], esi
		call	ebx ; SetCursor
		xor	edi, edi
		cmp	esi, edi
		mov	esi, ds:SendMessageW
		mov	[ebp+hCursor], eax
		jz	short loc_1005B8B
		push	1
		call	sub_1001B99
		push	edi		; lParam
		push	edi		; wParam
		push	0C8h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW

loc_1005B8B:				; CODE XREF: sub_1005B41+32j
		push	edi		; lParam
		push	edi		; wParam
		push	0B8h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		push	edi		; lParam
		neg	eax
		push	edi		; wParam
		sbb	eax, eax
		push	0Eh		; Msg
		push	hWnd		; hWnd
		neg	eax
		mov	[ebp+wParam], eax
		call	esi ; SendMessageW
		mov	[ebp+var_10], eax
		lea	eax, [eax+eax+2]
		push	eax		; uBytes
		push	2		; uFlags
		call	ds:LocalAlloc
		cmp	eax, edi
		mov	[ebp+hMem], eax
		jnz	short loc_1005BE5
		cmp	[ebp+var_C], edi
		jz	short loc_1005BDB
		push	edi		; lParam
		push	1		; wParam
		push	0C8h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW

loc_1005BDB:				; CODE XREF: sub_1005B41+88j
		push	[ebp+hCursor]	; hCursor
		call	ebx ; SetCursor
		jmp	loc_1005CD5
; ---------------------------------------------------------------------------

loc_1005BE5:				; CODE XREF: sub_1005B41+83j
		lea	eax, [ebp+Rect]
		push	eax		; lpRect
		push	dword_1009830	; hWnd
		call	ds:GetClientRect
		push	[ebp+hMem]	; hMem
		call	ds:LocalLock
		push	eax		; lParam
		mov	[ebp+lParam], eax
		mov	eax, [ebp+var_10]
		inc	eax
		push	eax		; wParam
		push	0Dh		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		push	edi		; lpParam
		push	hInstance	; hInstance
		push	0Fh		; hMenu
		push	dword_1009830	; hWndParent
		push	[ebp+Rect.bottom] ; nHeight
		push	[ebp+Rect.right] ; nWidth
		push	edi		; Y
		push	edi		; X
		push	[ebp+hWnd]	; dwStyle
		push	offset szOtherStuff ; lpWindowName
		push	offset aEdit	; "Edit"
		push	200h		; dwExStyle
		call	ds:CreateWindowExW
		cmp	eax, edi
		mov	[ebp+hWnd], eax
		jnz	short loc_1005C63
		push	[ebp+hCursor]	; hCursor
		call	ebx ; SetCursor
		cmp	[ebp+var_C], edi
		jz	short loc_1005CC3
		push	edi		; lParam
		push	1		; wParam
		push	0C8h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		jmp	short loc_1005CC3
; ---------------------------------------------------------------------------

loc_1005C63:				; CODE XREF: sub_1005B41+104j
		push	0FFFFFFECh	; nIndex
		push	hWnd		; hWnd
		call	ds:GetWindowLongW
		or	eax, 200h
		push	eax		; dwNewLong
		push	0FFFFFFECh	; nIndex
		push	[ebp+hWnd]	; hWnd
		call	ds:SetWindowLongW
		push	1		; lParam
		push	ho		; wParam
		push	30h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageW
		push	[ebp+lParam]	; lParam
		push	edi		; wParam
		push	0Ch		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageW
		test	eax, eax
		jnz	short loc_1005CDC
		push	[ebp+hCursor]	; hCursor
		call	ebx ; SetCursor
		cmp	[ebp+var_C], edi
		jz	short loc_1005CBA
		push	edi		; lParam
		push	1		; wParam
		push	0C8h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW

loc_1005CBA:				; CODE XREF: sub_1005B41+167j
		push	[ebp+hWnd]	; hWnd
		call	ds:DestroyWindow

loc_1005CC3:				; CODE XREF: sub_1005B41+10Ej
					; sub_1005B41+120j
		push	[ebp+hMem]	; hMem
		call	ds:LocalUnlock
		push	[ebp+hMem]	; hMem
		call	ds:LocalFree

loc_1005CD5:				; CODE XREF: sub_1005B41+9Fj
		xor	eax, eax
		jmp	loc_1005D97
; ---------------------------------------------------------------------------

loc_1005CDC:				; CODE XREF: sub_1005B41+15Dj
		push	[ebp+hMem]	; hMem
		call	ds:LocalUnlock
		push	hWnd		; hWnd
		call	ds:DestroyWindow
		mov	eax, [ebp+hWnd]
		mov	hWnd, eax
		mov	eax, dword_100AB8C
		cmp	eax, edi
		jz	short loc_1005D09
		push	eax		; hMem
		call	ds:LocalFree

loc_1005D09:				; CODE XREF: sub_1005B41+1BFj
		mov	eax, [ebp+hMem]
		push	edi		; lParam
		push	edi		; wParam
		push	0C5h		; Msg
		push	hWnd		; hWnd
		mov	dword_100AB8C, eax
		call	ds:PostMessageW
		push	5		; nCmdShow
		push	dword_1009830	; hWnd
		call	ds:ShowWindow
		push	edi		; lParam
		push	[ebp+wParam]	; wParam
		push	0B9h		; Msg
		push	hWnd		; hWnd
		call	esi ; SendMessageW
		push	hWnd		; hWnd
		call	ds:SetFocus
		push	[ebp+hCursor]	; hCursor
		call	ebx ; SetCursor
		cmp	dword_1009840, edi
		jz	short loc_1005D94
		lea	eax, [ebp+var_28]
		push	eax		; lpRect
		push	dword_1009830	; hWnd
		call	ds:GetClientRect
		mov	eax, [ebp+var_1C]
		sub	eax, [ebp+var_24]
		push	eax		; int
		mov	eax, [ebp+var_20]
		sub	eax, [ebp+var_28]
		push	eax		; nWidth
		call	sub_10019E0
		push	1
		call	sub_1001C42
		push	5		; nCmdShow
		push	dword_1009834	; hWnd
		call	ds:ShowWindow

loc_1005D94:				; CODE XREF: sub_1005B41+219j
		xor	eax, eax
		inc	eax

loc_1005D97:				; CODE XREF: sub_1005B41+196j
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	4
sub_1005B41	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; BOOL __stdcall proc(HDC, int)
proc		proc near		; DATA XREF: sub_1006773+2D9o

Msg		= tagMSG ptr -1Ch

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 1Ch
		push	esi
		xor	esi, esi
		jmp	short loc_1005DEF
; ---------------------------------------------------------------------------

loc_1005DB0:				; CODE XREF: proc+52j
		push	1		; wRemoveMsg
		push	esi		; wMsgFilterMax
		push	esi		; wMsgFilterMin
		push	esi		; hWnd
		lea	eax, [ebp+Msg]
		push	eax		; lpMsg
		call	ds:PeekMessageW
		test	eax, eax
		jz	short loc_1005DF7
		mov	eax, dword_100A138
		cmp	eax, esi
		jz	short loc_1005DDB
		lea	ecx, [ebp+Msg]
		push	ecx		; lpMsg
		push	eax		; hDlg
		call	ds:IsDialogMessageW
		test	eax, eax
		jnz	short loc_1005DEF

loc_1005DDB:				; CODE XREF: proc+27j
		lea	eax, [ebp+Msg]
		push	eax		; lpMsg
		call	ds:TranslateMessage
		lea	eax, [ebp+Msg]
		push	eax		; lpMsg
		call	ds:DispatchMessageW

loc_1005DEF:				; CODE XREF: proc+Bj proc+36j
		cmp	dword_100A134, esi
		jz	short loc_1005DB0

loc_1005DF7:				; CODE XREF: proc+1Ej
		xor	eax, eax
		cmp	dword_100A134, esi
		pop	esi
		setz	al
		leave
		retn	8
proc		endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1005E0C(HDC	hdc)
sub_1005E0C	proc near		; CODE XREF: sub_1006773+58p

hdc		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, ds:GetDeviceCaps
		push	edi
		mov	edi, [ebp+hdc]
		push	8		; index
		push	edi		; hdc
		call	esi ; GetDeviceCaps
		push	0Ah		; index
		push	edi		; hdc
		mov	dword_1009AE8, eax
		call	esi ; GetDeviceCaps
		push	5Ah		; index
		push	edi		; hdc
		mov	dword_1009AE4, eax
		call	esi ; GetDeviceCaps
		push	6Eh		; index
		push	edi		; hdc
		mov	dword_1009AE0, eax
		call	esi ; GetDeviceCaps
		push	6Fh		; index
		push	edi		; hdc
		mov	dword_1009ADC, eax
		call	esi ; GetDeviceCaps
		push	70h		; index
		push	edi		; hdc
		mov	y, eax
		call	esi ; GetDeviceCaps
		push	71h		; index
		push	edi		; hdc
		mov	dword_1009AD4, eax
		call	esi ; GetDeviceCaps
		pop	edi
		mov	dword_1009AD0, eax
		pop	esi
		pop	ebp
		retn	4
sub_1005E0C	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1005E6D	proc near		; CODE XREF: sub_1006DF7:loc_1006E25p

pPD		= tagPDEXW ptr -54h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 54h
		mov	edx, stru_100A4A0.hDevNames
		test	edx, edx
		push	ebx
		push	esi
		mov	esi, ds:PageSetupDlgW
		push	edi
		mov	ebx, 0FFFFFB7Fh
		jnz	short loc_1005EA9
		or	word ptr stru_100A4A0.Flags, 480h
		push	offset stru_100A4A0 ; LPPAGESETUPDLGW
		call	esi ; PageSetupDlgW
		and	stru_100A4A0.Flags, ebx
		mov	edx, stru_100A4A0.hDevNames

loc_1005EA9:				; CODE XREF: sub_1005E6D+1Ej
		xor	eax, eax
		push	15h
		pop	ecx
		lea	edi, [ebp+pPD]
		rep stosd
		mov	eax, dword_1009830
		mov	[ebp+pPD.hwndOwner], eax
		mov	eax, stru_100A4A0.hDevMode
		or	edi, 0FFFFFFFFh
		test	eax, eax
		mov	[ebp+pPD.lStructSize], 54h
		mov	[ebp+pPD.nStartPage], edi
		mov	[ebp+pPD.Flags], 84010Ch
		jz	short loc_1005EDB
		mov	[ebp+pPD.hDevMode], eax

loc_1005EDB:				; CODE XREF: sub_1005E6D+69j
		test	edx, edx
		jz	short loc_1005EE2
		mov	[ebp+pPD.hDevNames], edx

loc_1005EE2:				; CODE XREF: sub_1005E6D+70j
		lea	eax, [ebp+pPD]
		push	eax		; pPD
		call	ds:PrintDlgExW
		test	eax, eax
		jnz	short loc_1005F30
		cmp	[ebp+pPD.dwResultAction], 1
		jz	short loc_1005EFE
		cmp	[ebp+pPD.dwResultAction], 2
		jnz	short loc_1005F30
		jmp	short loc_1005F01
; ---------------------------------------------------------------------------

loc_1005EFE:				; CODE XREF: sub_1005E6D+87j
		mov	edi, [ebp+pPD.hDC]

loc_1005F01:				; CODE XREF: sub_1005E6D+8Fj
		cmp	stru_100A4A0.hDevMode, 0
		jnz	short loc_1005F20
		or	word ptr stru_100A4A0.Flags, 480h
		push	offset stru_100A4A0 ; LPPAGESETUPDLGW
		call	esi ; PageSetupDlgW
		and	stru_100A4A0.Flags, ebx

loc_1005F20:				; CODE XREF: sub_1005E6D+9Bj
		mov	eax, [ebp+pPD.hDevMode]
		mov	stru_100A4A0.hDevMode, eax
		mov	eax, [ebp+pPD.hDevNames]
		mov	stru_100A4A0.hDevNames,	eax

loc_1005F30:				; CODE XREF: sub_1005E6D+81j
					; sub_1005E6D+8Dj
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn
sub_1005E6D	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================


sub_1005F3C	proc near		; CODE XREF: sub_10065CB+3Ap
					; sub_1006773+650p
		push	1		; bEnable
		push	dword_1009830	; hWnd
		call	ds:EnableWindow
		push	dword_100A138	; hWnd
		call	ds:DestroyWindow
		and	dword_100A138, 0
		retn
sub_1005F3C	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1005F63(HWND hDlg, int, HWND hWndMain, int)
sub_1005F63	proc near		; DATA XREF: sub_100195D+13o

Point		= tagPOINT ptr -8
hDlg		= dword	ptr  8
arg_4		= dword	ptr  0Ch
hWndMain	= dword	ptr  10h
arg_C		= dword	ptr  14h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ecx
		mov	eax, [ebp+arg_4]
		dec	eax
		dec	eax
		push	esi
		push	edi
		jz	loc_1006063
		sub	eax, 51h
		jz	loc_100603B
		sub	eax, 28h
		jz	short loc_1005FE1
		sub	eax, 95h
		jnz	loc_1006084
		mov	esi, ds:SendDlgItemMessageW
		push	ebx
		push	1Eh
		pop	edi
		mov	ebx, offset String1

loc_1005F9F:				; CODE XREF: sub_1005F63+60j
		push	0		; lParam
		push	27h		; wParam
		push	0C5h		; Msg
		push	edi		; nIDDlgItem
		push	[ebp+hDlg]	; hDlg
		call	esi ; SendDlgItemMessageW
		push	ebx		; lpString
		push	edi		; nIDDlgItem
		push	[ebp+hDlg]	; hDlg
		call	ds:SetDlgItemTextW
		add	ebx, 50h
		inc	edi
		cmp	ebx, offset word_100A430
		jle	short loc_1005F9F
		push	270000h		; lParam
		push	0		; wParam
		push	0B1h		; Msg
		push	1Eh		; nIDDlgItem
		push	[ebp+hDlg]	; hDlg
		call	esi ; SendDlgItemMessageW
		xor	eax, eax
		inc	eax
		pop	ebx
		jmp	loc_1006086
; ---------------------------------------------------------------------------

loc_1005FE1:				; CODE XREF: sub_1005F63+20j
		mov	esi, [ebp+hWndMain]
		cmp	[ebp+hDlg], esi
		jnz	short loc_1006011
		lea	eax, [ebp+Point]
		push	eax		; lpPoint
		call	ds:GetCursorPos
		lea	eax, [ebp+Point]
		push	eax		; lpPoint
		push	[ebp+hDlg]	; hWnd
		call	ds:ScreenToClient
		push	[ebp+Point.y]
		push	[ebp+Point.x]	; Point
		push	[ebp+hDlg]	; hWndParent
		call	ds:ChildWindowFromPoint
		mov	esi, eax

loc_1006011:				; CODE XREF: sub_1005F63+84j
		push	esi		; hWnd
		call	ds:GetDlgCtrlID
		cmp	eax, 1Eh
		jl	short loc_1006084
		cmp	eax, 21h
		jg	short loc_1006084
		push	offset dword_100180C ; dwData
		push	0Ah		; uCommand
		push	lpszHelp	; lpszHelp
		push	esi		; hWndMain

loc_1006030:				; CODE XREF: sub_1005F63+FEj
		call	ds:WinHelpW
		xor	eax, eax
		inc	eax
		jmp	short loc_1006086
; ---------------------------------------------------------------------------

loc_100603B:				; CODE XREF: sub_1005F63+17j
		mov	esi, [ebp+arg_C]
		push	dword ptr [esi+0Ch] ; hWnd
		call	ds:GetDlgCtrlID
		cmp	eax, 1Eh
		jl	short loc_1006084
		cmp	eax, 21h
		jg	short loc_1006084
		push	offset dword_100180C
		push	0Ch
		push	lpszHelp
		push	dword ptr [esi+0Ch]
		jmp	short loc_1006030
; ---------------------------------------------------------------------------

loc_1006063:				; CODE XREF: sub_1005F63+Ej
		push	1Eh
		pop	edi
		mov	esi, offset word_100A340

loc_100606B:				; CODE XREF: sub_1005F63+11Fj
		push	28h		; cchMax
		push	esi		; lpString
		push	edi		; nIDDlgItem
		push	[ebp+hDlg]	; hDlg
		call	ds:GetDlgItemTextW
		add	esi, 50h
		inc	edi
		cmp	esi, offset word_100A390
		jle	short loc_100606B

loc_1006084:				; CODE XREF: sub_1005F63+27j
					; sub_1005F63+B8j ...
		xor	eax, eax

loc_1006086:				; CODE XREF: sub_1005F63+79j
					; sub_1005F63+D6j
		pop	edi
		pop	esi
		leave
		retn	10h
sub_1005F63	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1006091	proc near		; CODE XREF: sub_1006657+27p

Time		= dword	ptr -224h
var_220		= dword	ptr -220h
var_21C		= dword	ptr -21Ch
var_218		= dword	ptr -218h
var_214		= dword	ptr -214h
var_210		= dword	ptr -210h
String		= word ptr -20Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 224h
		mov	eax, ___security_cookie
		push	ebx
		push	esi
		mov	[ebp+var_4], eax
		push	edi
		mov	edi, [ebp+arg_0]
		xor	ebx, ebx
		lea	eax, [ebp+Time]
		xor	esi, esi
		push	eax		; Time
		mov	[ebp+var_210], edi
		inc	esi
		mov	[ebp+var_220], ebx
		mov	[ebp+var_21C], ebx
		mov	[ebp+var_218], ebx
		call	ds:time
		lea	eax, [ebp+Time]
		push	eax		; Time
		call	ds:localtime
		pop	ecx
		pop	ecx
		mov	cx, [edi]
		cmp	cx, bx
		jz	loc_10063EE
		mov	eax, dword_1009080
		jmp	short loc_100612A
; ---------------------------------------------------------------------------

loc_10060F6:				; CODE XREF: sub_1006091+A2j
					; sub_1006091+357j
		cmp	cx, 26h
		jz	short loc_1006145
		add	[ebp+var_210], 2
		mov	ebx, esi
		imul	ebx, 104h
		lea	edx, [ebp+esi*4+var_220]
		mov	edi, [edx]
		add	ebx, edi
		mov	Dest[ebx*2], cx
		mov	ecx, [ebp+var_210]
		movzx	ecx, word ptr [ecx]
		inc	edi
		mov	[edx], edi

loc_100612A:				; CODE XREF: sub_1006091+63j
		test	cx, cx
		mov	ebx, ds:lstrlenW
		jnz	short loc_10060F6
		mov	ecx, [ebp+var_210]
		cmp	word ptr [ecx],	26h
		jnz	loc_10063DC

loc_1006145:				; CODE XREF: sub_1006091+69j
		add	[ebp+var_210], 2
		mov	ecx, [ebp+var_210]
		mov	cx, [ecx]
		cmp	cx, [eax]
		jz	loc_1006357
		cmp	cx, [eax+2]
		jz	loc_1006357
		cmp	cx, [eax+4]
		jz	loc_10062A6
		cmp	cx, [eax+6]
		jz	loc_10062A6
		cmp	cx, [eax+8]
		jz	loc_1006255
		cmp	cx, [eax+0Ah]
		jz	loc_1006255
		cmp	cx, [eax+0Ch]
		jz	loc_1006228
		cmp	cx, [eax+0Eh]
		jz	loc_1006228
		cmp	cx, 26h
		jnz	short loc_10061E9
		lea	ecx, [ebp+esi*4+var_220]
		mov	edx, [ecx]
		lea	edi, [edx+1]
		cmp	edi, 104h
		mov	[ebp+var_214], edi
		jge	loc_10063D5
		mov	edi, esi
		imul	edi, 104h
		add	edi, edx
		mov	edx, [ebp+var_214]
		mov	Dest[edi*2], 26h
		mov	[ecx], edx
		jmp	loc_10063D5
; ---------------------------------------------------------------------------

loc_10061E9:				; CODE XREF: sub_1006091+117j
		cmp	cx, [eax+10h]
		jz	short loc_1006220
		cmp	cx, [eax+12h]
		jz	short loc_1006220
		cmp	cx, [eax+14h]
		jz	short loc_1006218
		cmp	cx, [eax+16h]
		jz	short loc_1006218
		cmp	cx, [eax+18h]
		jz	short loc_1006211
		cmp	cx, [eax+1Ah]
		jnz	loc_10063D5

loc_1006211:				; CODE XREF: sub_1006091+174j
		xor	esi, esi
		jmp	loc_10063D5
; ---------------------------------------------------------------------------

loc_1006218:				; CODE XREF: sub_1006091+168j
					; sub_1006091+16Ej
		push	2
		pop	esi
		jmp	loc_10063D5
; ---------------------------------------------------------------------------

loc_1006220:				; CODE XREF: sub_1006091+15Cj
					; sub_1006091+162j
		xor	esi, esi
		inc	esi
		jmp	loc_10063D5
; ---------------------------------------------------------------------------

loc_1006228:				; CODE XREF: sub_1006091+103j
					; sub_1006091+10Dj
		push	offset word_10091F0 ; lpString
		call	ebx ; lstrlenW
		lea	edi, [ebp+esi*4+var_220]
		mov	ecx, [edi]
		lea	edx, [ecx+eax]
		cmp	edx, 104h
		mov	[ebp+var_214], edx
		jge	loc_10063D0
		push	eax
		push	offset word_10091F0
		jmp	short loc_1006280
; ---------------------------------------------------------------------------

loc_1006255:				; CODE XREF: sub_1006091+EFj
					; sub_1006091+F9j
		push	offset word_10093F8 ; lpString
		call	ebx ; lstrlenW
		lea	edi, [ebp+esi*4+var_220]
		mov	ecx, [edi]
		lea	edx, [ecx+eax]
		cmp	edx, 104h
		mov	[ebp+var_214], edx
		jge	loc_10063D0
		push	eax		; Count
		push	offset word_10093F8 ; Source

loc_1006280:				; CODE XREF: sub_1006091+1C2j
		mov	eax, esi
		imul	eax, 104h
		add	eax, ecx
		lea	eax, ds:1009B00h[eax*2]
		push	eax		; Dest
		call	ds:wcsncpy
		mov	eax, [ebp+var_214]
		add	esp, 0Ch
		jmp	loc_10063CE
; ---------------------------------------------------------------------------

loc_10062A6:				; CODE XREF: sub_1006091+DBj
					; sub_1006091+E5j
		add	[ebp+var_210], 2
		mov	eax, [ebp+var_210]
		xor	edi, edi
		cmp	word ptr [eax],	2Bh
		jnz	short loc_10062E7
		jmp	short loc_10062CD
; ---------------------------------------------------------------------------

loc_10062BD:				; CODE XREF: sub_1006091+254j
		mov	eax, [ebp+var_210]
		movzx	edx, word ptr [eax]
		lea	ecx, [edi+edi*4]
		lea	edi, [edx+ecx*2-30h]

loc_10062CD:				; CODE XREF: sub_1006091+22Aj
		inc	eax
		inc	eax
		mov	[ebp+var_210], eax
		movzx	eax, word ptr [eax]
		push	4		; Type
		push	eax		; C
		call	ds:iswctype
		test	eax, eax
		pop	ecx
		pop	ecx
		jnz	short loc_10062BD

loc_10062E7:				; CODE XREF: sub_1006091+228j
		mov	eax, dword_1009ABC
		add	eax, edi
		push	eax
		lea	eax, [ebp+String]
		push	offset aD	; "%d"
		push	eax		; LPWSTR
		call	ds:wsprintfW
		add	esp, 0Ch
		lea	eax, [ebp+String]
		push	eax		; lpString
		lea	edi, [ebp+esi*4+var_220]
		call	ebx ; lstrlenW
		mov	ecx, eax
		mov	eax, [edi]
		add	ecx, eax
		cmp	ecx, 104h
		jge	short loc_100634E
		lea	ecx, [ebp+String]
		push	ecx		; lpString2
		mov	ecx, esi
		imul	ecx, 104h
		add	ecx, eax
		lea	eax, ds:1009B00h[ecx*2]
		push	eax		; lpString1
		call	ds:lstrcpyW
		lea	eax, [ebp+String]
		push	eax		; lpString
		call	ebx ; lstrlenW
		add	eax, [edi]
		mov	[edi], eax

loc_100634E:				; CODE XREF: sub_1006091+28Fj
		sub	[ebp+var_210], 2
		jmp	short loc_10063D0
; ---------------------------------------------------------------------------

loc_1006357:				; CODE XREF: sub_1006091+C7j
					; sub_1006091+D1j
		cmp	dword_100901C, 0
		lea	eax, [ebp+String]
		jnz	short loc_1006379
		push	104h		; cchSize
		push	eax		; Buf
		push	offset word_100A900 ; LPCWSTR
		call	ds:GetFileTitleW
		jmp	short loc_1006386
; ---------------------------------------------------------------------------

loc_1006379:				; CODE XREF: sub_1006091+2D3j
		push	lpString2	; lpString2
		push	eax		; lpString1
		call	ds:lstrcpyW

loc_1006386:				; CODE XREF: sub_1006091+2E6j
		lea	eax, [ebp+String]
		push	eax		; lpString
		lea	edi, [ebp+esi*4+var_220]
		call	ebx ; lstrlenW
		mov	ecx, eax
		mov	eax, [edi]
		add	ecx, eax
		cmp	ecx, 104h
		jge	short loc_10063D0
		lea	ecx, [ebp+String]
		push	ecx		; lpString2
		mov	ecx, esi
		imul	ecx, 104h
		add	ecx, eax
		lea	eax, ds:1009B00h[ecx*2]
		push	eax		; lpString1
		call	ds:lstrcpyW
		lea	eax, [ebp+String]
		push	eax		; lpString
		call	ebx ; lstrlenW
		add	eax, [edi]

loc_10063CE:				; CODE XREF: sub_1006091+210j
		mov	[edi], eax

loc_10063D0:				; CODE XREF: sub_1006091+1B6j
					; sub_1006091+1E3j ...
		mov	eax, dword_1009080

loc_10063D5:				; CODE XREF: sub_1006091+131j
					; sub_1006091+153j ...
		add	[ebp+var_210], 2

loc_10063DC:				; CODE XREF: sub_1006091+AEj
		mov	ecx, [ebp+var_210]
		mov	cx, [ecx]
		test	cx, cx
		jnz	loc_10060F6

loc_10063EE:				; CODE XREF: sub_1006091+58j
		pop	edi
		pop	esi
		xor	ecx, ecx
		lea	eax, [ebp+var_220]
		pop	ebx

loc_10063F9:				; CODE XREF: sub_1006091+384j
		mov	edx, [eax]
		add	edx, ecx
		and	Dest[edx*2], 0
		add	ecx, 104h
		add	eax, 4
		cmp	ecx, 208h
		jle	short loc_10063F9
		mov	ecx, [ebp+var_4]
		call	sub_1007147
		leave
		retn	4
sub_1006091	endp

; ---------------------------------------------------------------------------
		align 8

; =============== S U B	R O U T	I N E =======================================


sub_1006428	proc near		; CODE XREF: sub_1006DF7+20p
		cmp	stru_100A4A0.hDevNames,	0
		jnz	short loc_1006471
		or	byte ptr stru_100A4A0.Flags+1, 4
		push	offset stru_100A4A0 ; LPPAGESETUPDLGW
		call	ds:PageSetupDlgW
		and	byte ptr stru_100A4A0.Flags+1, 0FBh
		cmp	stru_100A4A0.hDevNames,	0
		jnz	short loc_1006471
		push	30h		; uType
		push	lpCaption	; lpCaption
		push	dword_1009098	; lpText
		push	dword_1009830	; hWnd
		call	ds:MessageBoxW
		or	eax, 0FFFFFFFFh
		retn
; ---------------------------------------------------------------------------

loc_1006471:				; CODE XREF: sub_1006428+7j
					; sub_1006428+29j
		push	esi
		push	edi
		push	stru_100A4A0.hDevNames ; hMem
		mov	edi, ds:GlobalLock
		call	edi ; GlobalLock
		mov	ecx, stru_100A4A0.hDevMode
		mov	esi, eax
		xor	eax, eax
		test	ecx, ecx
		jz	short loc_1006492
		push	ecx		; hMem
		call	edi ; GlobalLock

loc_1006492:				; CODE XREF: sub_1006428+65j
		push	eax		; pdm
		movzx	eax, word ptr [esi+2]
		lea	eax, [esi+eax*2]
		push	0		; pszPort
		push	eax		; pwszDevice
		movzx	eax, word ptr [esi]
		lea	eax, [esi+eax*2]
		push	eax		; pwszDriver
		call	ds:CreateDCW
		push	stru_100A4A0.hDevNames ; hMem
		mov	esi, ds:GlobalUnlock
		mov	edi, eax
		call	esi ; GlobalUnlock
		mov	eax, stru_100A4A0.hDevMode
		test	eax, eax
		jz	short loc_10064C6
		push	eax		; hMem
		call	esi ; GlobalUnlock

loc_10064C6:				; CODE XREF: sub_1006428+99j
		test	edi, edi
		jnz	short loc_10064E9
		push	30h		; uType
		push	lpCaption	; lpCaption
		push	dword_1009098	; lpText
		push	dword_1009830	; hWnd
		call	ds:MessageBoxW
		or	eax, 0FFFFFFFFh
		jmp	short loc_10064EB
; ---------------------------------------------------------------------------

loc_10064E9:				; CODE XREF: sub_1006428+A0j
		mov	eax, edi

loc_10064EB:				; CODE XREF: sub_1006428+BFj
		pop	edi
		pop	esi
		retn
sub_1006428	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_10064F3	proc near		; CODE XREF: sub_1006DF7:loc_1006E1Ep

pcbNeeded	= dword	ptr -8
hPrinter	= dword	ptr -4

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ecx
		push	ebx
		push	edi
		xor	ebx, ebx
		push	ebx		; pDefault
		lea	eax, [ebp+hPrinter]
		push	eax		; phPrinter
		mov	edi, offset pPrinterName
		push	edi		; pPrinterName
		call	OpenPrinterW
		test	eax, eax
		jnz	short loc_100651A
		or	eax, 0FFFFFFFFh
		jmp	loc_10065C2
; ---------------------------------------------------------------------------

loc_100651A:				; CODE XREF: sub_10064F3+1Dj
		push	esi
		lea	eax, [ebp+pcbNeeded]
		push	eax		; pcbNeeded
		push	ebx		; cbBuf
		push	ebx		; pDriverInfo
		push	1		; Level
		push	ebx		; pEnvironment
		push	[ebp+hPrinter]	; hPrinter
		call	GetPrinterDriverW
		push	[ebp+pcbNeeded]	; uBytes
		push	40h		; uFlags
		call	ds:LocalAlloc
		mov	esi, eax
		cmp	esi, ebx
		jnz	short loc_100654A

loc_100653D:				; CODE XREF: sub_10064F3+75j
		push	[ebp+hPrinter]	; hPrinter
		call	ClosePrinter

loc_1006545:				; CODE XREF: sub_10064F3+CAj
		or	eax, 0FFFFFFFFh
		jmp	short loc_10065C1
; ---------------------------------------------------------------------------

loc_100654A:				; CODE XREF: sub_10064F3+48j
		lea	eax, [ebp+pcbNeeded]
		push	eax		; pcbNeeded
		push	[ebp+pcbNeeded]	; cbBuf
		push	esi		; pDriverInfo
		push	1		; Level
		push	ebx		; pEnvironment
		push	[ebp+hPrinter]	; hPrinter
		call	GetPrinterDriverW
		test	eax, eax
		jnz	short loc_100656A
		push	esi		; hMem
		call	ds:LocalFree
		jmp	short loc_100653D
; ---------------------------------------------------------------------------

loc_100656A:				; CODE XREF: sub_10064F3+6Cj
		or	byte ptr stru_100A4A0.Flags+1, 4
		push	offset stru_100A4A0 ; LPPAGESETUPDLGW
		call	ds:PageSetupDlgW
		and	byte ptr stru_100A4A0.Flags+1, 0FBh
		push	ebx		; pdm
		push	ebx		; pszPort
		push	edi		; pwszDevice
		push	dword ptr [esi]	; pwszDriver
		call	ds:CreateDCW
		push	esi		; hMem
		mov	edi, eax
		call	ds:LocalFree
		push	[ebp+hPrinter]	; hPrinter
		call	ClosePrinter
		cmp	edi, ebx
		jnz	short loc_10065BF
		push	30h		; uType
		push	lpCaption	; lpCaption
		push	dword_1009098	; lpText
		push	dword_1009830	; hWnd
		call	ds:MessageBoxW
		jmp	short loc_1006545
; ---------------------------------------------------------------------------

loc_10065BF:				; CODE XREF: sub_10064F3+AEj
		mov	eax, edi

loc_10065C1:				; CODE XREF: sub_10064F3+55j
		pop	esi

loc_10065C2:				; CODE XREF: sub_10064F3+22j
		pop	edi
		pop	ebx
		leave
		retn
sub_10064F3	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; INT_PTR __stdcall sub_10065CB(HWND, UINT, WPARAM, LPARAM)
sub_10065CB	proc near		; DATA XREF: sub_1006773+350o

hWnd		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_4]
		sub	eax, 110h
		jz	short loc_100660C
		dec	eax
		jz	short loc_10065FB
		sub	eax, 5
		jz	short loc_10065E6
		xor	eax, eax
		jmp	short loc_100664E
; ---------------------------------------------------------------------------

loc_10065E6:				; CODE XREF: sub_10065CB+15j
		push	1		; uEnable
		push	0F060h		; uIDEnableItem
		push	dword_1009A98	; hMenu
		call	ds:EnableMenuItem
		jmp	short loc_100664B
; ---------------------------------------------------------------------------

loc_10065FB:				; CODE XREF: sub_10065CB+10j
		mov	dword_100A134, 1
		call	sub_1005F3C
		jmp	short loc_100664B
; ---------------------------------------------------------------------------

loc_100660C:				; CODE XREF: sub_10065CB+Dj
		push	0		; bRevert
		push	[ebp+hWnd]	; hWnd
		call	ds:GetSystemMenu
		cmp	dword_100901C, 0
		mov	dword_1009A98, eax
		jz	short loc_100662C
		mov	eax, lpString2
		jmp	short loc_1006636
; ---------------------------------------------------------------------------

loc_100662C:				; CODE XREF: sub_10065CB+58j
		push	offset word_100A900 ; lpsz
		call	sub_1001D2B

loc_1006636:				; CODE XREF: sub_10065CB+5Fj
		push	eax		; lpString
		push	14h		; nIDDlgItem
		push	[ebp+hWnd]	; hDlg
		call	ds:SetDlgItemTextW
		push	[ebp+hWnd]	; hWnd
		call	ds:SetFocus

loc_100664B:				; CODE XREF: sub_10065CB+2Ej
					; sub_10065CB+3Fj
		xor	eax, eax
		inc	eax

loc_100664E:				; CODE XREF: sub_10065CB+19j
		pop	ebp
		retn	10h
sub_10065CB	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_1006657(HDC	hdc, int y)
sub_1006657	proc near		; CODE XREF: sub_1006773+4C8p
					; sub_1006773+531p

psizl		= tagSIZE ptr -8
hdc		= dword	ptr  8
y		= dword	ptr  0Ch

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ecx
		push	ebx
		push	esi
		mov	esi, [ebp+y]
		lea	eax, [esi+esi*4]
		shl	eax, 4
		lea	eax, String1[eax]
		xor	ebx, ebx
		cmp	[eax], bx
		jnz	short loc_100667D
		xor	eax, eax
		jmp	loc_1006768
; ---------------------------------------------------------------------------

loc_100667D:				; CODE XREF: sub_1006657+1Dj
		push	eax
		call	sub_1006091
		cmp	esi, ebx
		jnz	short loc_100668E
		mov	eax, dword_1009ACC
		jmp	short loc_100669F
; ---------------------------------------------------------------------------

loc_100668E:				; CODE XREF: sub_1006657+2Ej
		mov	eax, dword_1009AE4
		sub	eax, dword_100A130
		sub	eax, dword_1009AC8

loc_100669F:				; CODE XREF: sub_1006657+35j
		cmp	Dest, bx
		mov	esi, ds:lstrlenW
		mov	[ebp+y], eax
		push	edi
		jz	short loc_10066CE
		mov	edi, offset Dest
		push	edi		; lpString
		call	esi ; lstrlenW
		push	eax		; c
		push	edi		; lpString
		push	[ebp+y]		; y
		push	x		; x
		push	[ebp+hdc]	; hdc
		call	ds:TextOutW

loc_10066CE:				; CODE XREF: sub_1006657+59j
		cmp	word_1009D08, bx
		jz	short loc_1006722
		lea	eax, [ebp+psizl]
		push	eax		; psizl
		mov	ebx, offset word_1009D08
		push	ebx		; lpString
		call	esi ; lstrlenW
		push	eax		; c
		push	ebx		; lpString
		push	[ebp+hdc]	; hdc
		call	ds:GetTextExtentPoint32W
		mov	eax, dword_1009AE8
		sub	eax, dword_1009AC0
		push	ebx		; lpString
		add	eax, x
		cdq
		sub	eax, edx
		mov	edi, eax
		mov	eax, [ebp+psizl._cx]
		cdq
		sub	eax, edx
		sar	eax, 1
		sar	edi, 1
		sub	edi, eax
		call	esi ; lstrlenW
		push	eax		; c
		push	ebx		; lpString
		push	[ebp+y]		; y
		push	edi		; x
		push	[ebp+hdc]	; hdc
		call	ds:TextOutW

loc_1006722:				; CODE XREF: sub_1006657+7Ej
		cmp	word_1009F10, 0
		jz	short loc_1006764
		lea	eax, [ebp+psizl]
		push	eax		; psizl
		mov	ebx, offset word_1009F10
		push	ebx		; lpString
		call	esi ; lstrlenW
		push	eax		; c
		push	ebx		; lpString
		push	[ebp+hdc]	; hdc
		call	ds:GetTextExtentPoint32W
		mov	edi, dword_1009AE8
		sub	edi, dword_1009AC0
		push	ebx		; lpString
		sub	edi, [ebp+psizl._cx]
		call	esi ; lstrlenW
		push	eax		; c
		push	ebx		; lpString
		push	[ebp+y]		; y
		push	edi		; x
		push	[ebp+hdc]	; hdc
		call	ds:TextOutW

loc_1006764:				; CODE XREF: sub_1006657+D3j
		xor	eax, eax
		inc	eax
		pop	edi

loc_1006768:				; CODE XREF: sub_1006657+21j
		pop	esi
		pop	ebx
		leave
		retn	8
sub_1006657	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1006773	proc near		; CODE XREF: sub_1006DF7+45p

tm		= tagTEXTMETRICW ptr -3C8h
dtp		= tagDRAWTEXTPARAMS ptr	-38Ch
var_378		= dword	ptr -378h
var_374		= dword	ptr -374h
var_370		= dword	ptr -370h
var_36C		= dword	ptr -36Ch
var_368		= dword	ptr -368h
rc		= tagRECT ptr -364h
hMem		= dword	ptr -354h
var_350		= dword	ptr -350h
ho		= dword	ptr -34Ch
Locale		= dword	ptr -348h
var_344		= dword	ptr -344h
h		= dword	ptr -340h
lpchText	= dword	ptr -33Ch
hdc		= dword	ptr -338h
lf		= LOGFONTW ptr -334h
String		= word ptr -2D8h
Dest		= word ptr -0D0h
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 3C8h
		mov	eax, ___security_cookie
		push	ebx
		push	esi
		mov	esi, [ebp+arg_0]
		xor	ebx, ebx
		push	edi
		push	hCursor		; hCursor
		mov	[ebp+var_4], eax
		mov	[ebp+hdc], esi
		mov	[ebp+hMem], ebx
		mov	[ebp+h], ebx
		mov	[ebp+var_344], ebx
		mov	[ebp+var_350], ebx
		mov	[ebp+lpchText],	ebx
		mov	dword_100A134, ebx
		mov	dword_100A138, ebx
		call	ds:SetCursor
		push	esi		; hdc
		call	sub_1005E0C
		mov	esi, offset SystemTime
		push	esi		; lpSystemTime
		call	ds:GetLocalTime
		call	ds:GetUserDefaultLCID
		mov	edi, 104h
		push	edi		; cchDate
		push	offset word_10091F0 ; lpDateStr
		push	ebx		; lpFormat
		push	esi		; lpDate
		push	2		; dwFlags
		push	eax		; Locale
		mov	[ebp+Locale], eax
		call	ds:GetDateFormatW
		push	edi		; cchTime
		push	offset word_10093F8 ; lpTimeStr
		push	ebx		; lpFormat
		push	esi		; lpTime
		push	ebx		; dwFlags
		push	[ebp+Locale]	; Locale
		call	ds:GetTimeFormatW
		mov	eax, dword_1009AE0
		imul	eax, Data
		push	17h
		pop	ecx
		mov	esi, offset lf
		lea	edi, [ebp+lf]
		rep movsd
		cdq
		mov	ecx, 0FFFFFD30h
		idiv	ecx
		push	8		; iMode
		push	[ebp+hdc]	; hdc
		mov	[ebp+lf.lfWidth], ebx
		mov	ebx, ds:SetMapMode
		mov	[ebp+lf.lfHeight], eax
		call	ebx ; SetMapMode
		push	0		; lpsz
		push	y		; y
		push	dword_1009ADC	; x
		push	[ebp+hdc]	; hdc
		call	ds:SetViewportExtEx
		push	0		; lpsz
		push	stru_100A4A0.ptPaperSize.y ; y
		push	stru_100A4A0.ptPaperSize.x ; x
		push	[ebp+hdc]	; hdc
		call	ds:SetWindowExtEx
		mov	eax, offset pt
		mov	edi, eax
		mov	esi, offset stru_100A4A0.rtMargin
		movsd
		movsd
		movsd
		push	2		; c
		movsd
		mov	esi, [ebp+hdc]
		push	eax		; lppt
		push	esi		; hdc
		call	ds:LPtoDP
		xor	edi, edi
		inc	edi
		push	edi		; iMode
		push	esi		; hdc
		call	ebx ; SetMapMode
		mov	ebx, ds:CreateFontIndirectW
		lea	eax, [ebp+lf]
		push	eax		; lplf
		call	ebx ; CreateFontIndirectW
		test	eax, eax
		mov	[ebp+ho], eax
		jz	loc_1006D94
		push	eax		; h
		push	esi		; hdc
		call	ds:SelectObject
		test	eax, eax
		mov	[ebp+h], eax
		jz	loc_1006D94
		push	edi		; mode
		push	esi		; hdc
		call	ds:SetBkMode
		lea	eax, [ebp+tm]
		push	eax		; lptm
		push	esi		; hdc
		mov	esi, ds:GetTextMetricsW
		call	esi ; GetTextMetricsW
		test	eax, eax
		jz	loc_1006D94
		test	[ebp+tm.tmPitchAndFamily], 6
		jnz	short loc_100697C
		push	[ebp+h]		; h
		push	[ebp+hdc]	; hdc
		call	ds:SelectObject
		push	eax		; ho
		call	ds:DeleteObject
		push	10h
		pop	ecx
		xor	eax, eax
		lea	edi, [ebp+lf.lfFaceName]
		rep stosd
		lea	eax, [ebp+lf]
		push	eax		; lplf
		call	ebx ; CreateFontIndirectW
		test	eax, eax
		mov	[ebp+ho], eax
		jz	loc_1006D94
		push	eax		; h
		push	[ebp+hdc]	; hdc
		call	ds:SelectObject
		test	eax, eax
		mov	[ebp+h], eax
		jz	loc_1006D94
		lea	eax, [ebp+tm]
		push	eax		; lptm
		push	[ebp+hdc]	; hdc
		call	esi ; GetTextMetricsW
		test	eax, eax
		jz	loc_1006D94
		xor	edi, edi
		inc	edi

loc_100697C:				; CODE XREF: sub_1006773+195j
		mov	eax, [ebp+tm.tmHeight]
		mov	ecx, [ebp+tm.tmExternalLeading]
		mov	edx, pt.x
		add	ecx, eax
		mov	eax, [ebp+tm.tmAveCharWidth]
		shl	eax, 3
		mov	dword_100A13C, eax
		mov	eax, dword_1009AD4
		sub	edx, eax
		xor	ebx, ebx
		cmp	edx, ebx
		mov	dword_100A130, ecx
		mov	x, edx
		jg	short loc_10069BD
		mov	x, ebx

loc_10069BD:				; CODE XREF: sub_1006773+242j
		mov	edx, dword_1009AE8
		sub	edx, dword_1009ADC
		add	edx, dword_100A128
		add	eax, edx
		cmp	eax, ebx
		mov	dword_1009AC0, eax
		jg	short loc_10069E0
		mov	dword_1009AC0, ebx

loc_10069E0:				; CODE XREF: sub_1006773+265j
		mov	eax, pt.y
		mov	edx, dword_1009AD0
		sub	eax, edx
		cmp	eax, ebx
		mov	dword_1009ACC, eax
		jg	short loc_10069FC
		mov	dword_1009ACC, ebx

loc_10069FC:				; CODE XREF: sub_1006773+281j
		mov	eax, dword_1009AE4
		mov	esi, eax
		sub	esi, y
		add	esi, dword_100A12C
		add	edx, esi
		cmp	edx, ebx
		mov	dword_1009AC8, edx
		jg	short loc_1006A21
		mov	dword_1009AC8, ebx

loc_1006A21:				; CODE XREF: sub_1006773+2A6j
		sub	eax, dword_1009AC8
		sub	eax, dword_1009ACC
		cdq
		idiv	ecx
		cmp	String1, bx
		jz	short loc_1006A3A
		dec	eax

loc_1006A3A:				; CODE XREF: sub_1006773+2C4j
		cmp	word_100A430, bx
		jz	short loc_1006A44
		dec	eax

loc_1006A44:				; CODE XREF: sub_1006773+2CEj
		cmp	eax, ebx
		jle	loc_1006D73
		push	offset proc	; proc
		push	[ebp+hdc]	; hdc
		call	ds:SetAbortProc
		mov	esi, eax
		cmp	esi, ebx
		jl	loc_1006CF5
		push	ebx		; lParam
		push	ebx		; wParam
		push	0BDh		; Msg
		push	hWnd		; hWnd
		call	ds:SendMessageW
		cmp	eax, ebx
		mov	[ebp+hMem], eax
		jz	loc_1006D94
		push	eax		; hMem
		call	ds:LocalLock
		cmp	eax, ebx
		mov	[ebp+lpchText],	eax
		jz	loc_1006D94
		push	104h		; nMaxCount
		lea	eax, [ebp+String]
		push	eax		; lpString
		push	dword_1009830	; hWnd
		call	ds:GetWindowTextW
		push	ebx		; bEnable
		push	dword_1009830	; hWnd
		call	ds:EnableWindow
		push	ebx		; dwInitParam
		push	offset sub_10065CB ; lpDialogFunc
		push	dword_1009830	; hWndParent
		push	0Bh		; lpTemplateName
		push	hInstance	; hInstance
		call	ds:CreateDialogParamW
		cmp	eax, ebx
		mov	dword_100A138, eax
		jz	loc_1006D94
		lea	eax, [ebp+String]
		push	ebx		; dwErrCode
		mov	[ebp+var_378], 14h
		mov	[ebp+var_374], eax
		mov	[ebp+var_370], ebx
		mov	[ebp+var_36C], ebx
		mov	[ebp+var_368], ebx
		call	ds:SetLastError
		lea	eax, [ebp+var_378]
		push	eax		; lpdi
		push	[ebp+hdc]	; hdc
		call	ds:StartDocW
		test	eax, eax
		jg	short loc_1006B3C
		call	ds:GetLastError
		mov	esi, eax
		jmp	loc_1006CF5
; ---------------------------------------------------------------------------

loc_1006B3C:				; CODE XREF: sub_1006773+3BAj
		xor	eax, eax
		mov	[ebp+var_350], edi
		mov	dword_1009ABC, edi
		lea	edi, [ebp+rc]
		stosd
		stosd
		stosd
		mov	ecx, dword_100A130
		stosd
		mov	eax, x
		mov	[ebp+rc.left], eax
		mov	eax, dword_1009AE8
		sub	eax, dword_1009AC0
		xor	esi, esi
		mov	[ebp+rc.right],	eax
		mov	eax, dword_1009ACC
		mov	[ebp+rc.top], eax
		mov	eax, dword_1009AE4
		sub	eax, dword_1009AC8
		cmp	String1, si
		mov	[ebp+Locale], ebx
		mov	[ebp+var_344], ebx
		mov	[ebp+rc.bottom], eax
		jz	short loc_1006BAF
		add	[ebp+rc.top], ecx

loc_1006BAF:				; CODE XREF: sub_1006773+434j
		cmp	word_100A430, si
		jz	short loc_1006BC0
		sub	eax, ecx
		mov	[ebp+rc.bottom], eax

loc_1006BC0:				; CODE XREF: sub_1006773+443j
		push	[ebp+lpchText]	; lpString
		call	ds:lstrlenW
		push	0FFFFFFECh	; nIndex
		push	hWnd		; hWnd
		mov	ebx, eax
		call	ds:GetWindowLongW
		test	ah, 20h
		jz	short loc_1006BEB
		mov	[ebp+Locale], 20002h

loc_1006BEB:				; CODE XREF: sub_1006773+46Cj
		cmp	dword_100A134, esi
		jnz	loc_1006CF1

loc_1006BF7:				; CODE XREF: sub_1006773+578j
		test	ebx, ebx
		jle	loc_1006CF1
		push	dword_1009ABC
		lea	eax, [ebp+Dest]
		push	dword_10090C4	; Format
		push	64h		; Count
		push	eax		; Dest
		call	ds:_snwprintf
		add	esp, 10h
		lea	eax, [ebp+Dest]
		push	eax		; lpString
		push	15h		; nIDDlgItem
		push	dword_100A138	; hDlg
		call	ds:SetDlgItemTextW
		mov	esi, [ebp+hdc]
		push	0		; y
		push	esi		; hdc
		call	sub_1006657
		xor	eax, eax
		lea	edi, [ebp+dtp]
		stosd
		stosd
		stosd
		stosd
		stosd
		mov	eax, dword_100A13C
		push	esi		; hdc
		mov	[ebp+dtp.cbSize], 14h
		mov	[ebp+dtp.iTabLength], eax
		call	ds:StartPage
		test	eax, eax
		jle	loc_1006D94
		lea	eax, [ebp+dtp]
		push	eax		; lpdtp
		mov	eax, [ebp+Locale]
		or	eax, 2850h
		push	eax		; format
		lea	eax, [ebp+rc]
		push	eax		; lprc
		push	ebx		; cchText
		push	[ebp+lpchText]	; lpchText
		xor	edi, edi
		inc	edi
		push	esi		; hdc
		mov	[ebp+var_344], edi
		call	ds:DrawTextExW
		push	edi		; y
		push	esi		; hdc
		call	sub_1006657
		push	esi		; hdc
		call	ds:EndPage
		test	eax, eax
		jle	loc_1006D94
		and	[ebp+var_344], 0
		mov	eax, [ebp+dtp.uiLengthDrawn]
		inc	dword_1009ABC
		test	eax, eax
		jz	loc_1006D71
		mov	ecx, [ebp+lpchText]
		lea	ecx, [ecx+eax*2]
		sub	ebx, eax
		cmp	dword_100A134, 0
		mov	[ebp+lpchText],	ecx
		jz	loc_1006BF7

loc_1006CF1:				; CODE XREF: sub_1006773+47Ej
					; sub_1006773+486j
		xor	esi, esi

loc_1006CF3:				; CODE XREF: sub_1006773+629j
		xor	ebx, ebx

loc_1006CF5:				; CODE XREF: sub_1006773+2EEj
					; sub_1006773+3C4j
		cmp	[ebp+h], ebx
		jz	short loc_1006D1B
		push	[ebp+h]		; h
		push	[ebp+hdc]	; hdc
		call	ds:SelectObject
		push	[ebp+ho]	; ho
		call	ds:DeleteObject

loc_1006D1B:				; CODE XREF: sub_1006773+588j
		cmp	[ebp+lpchText],	ebx
		jz	short loc_1006D2F
		push	[ebp+hMem]	; hMem
		call	ds:LocalUnlock

loc_1006D2F:				; CODE XREF: sub_1006773+5AEj
		cmp	[ebp+var_344], ebx
		jz	short loc_1006D53
		push	[ebp+hdc]	; hdc
		call	ds:EndPage
		test	eax, eax
		jg	short loc_1006D53
		cmp	esi, ebx
		jnz	short loc_1006D53
		call	ds:GetLastError
		mov	esi, eax

loc_1006D53:				; CODE XREF: sub_1006773+5C2j
					; sub_1006773+5D2j ...
		cmp	[ebp+var_350], ebx
		jz	short loc_1006DB7
		cmp	dword_100A134, ebx
		push	[ebp+hdc]	; hdc
		jz	short loc_1006DA1
		call	ds:AbortDoc
		jmp	short loc_1006DB7
; ---------------------------------------------------------------------------

loc_1006D71:				; CODE XREF: sub_1006773+55Aj
		xor	ebx, ebx

loc_1006D73:				; CODE XREF: sub_1006773+2D3j
		push	30h		; uType
		push	lpCaption	; lpCaption
		push	dword_10090A4	; lpText
		push	dword_1009830	; hWnd
		call	ds:MessageBoxW
		push	ebx		; dwErrCode
		call	ds:SetLastError

loc_1006D94:				; CODE XREF: sub_1006773+152j
					; sub_1006773+168j ...
		call	ds:GetLastError
		mov	esi, eax
		jmp	loc_1006CF3
; ---------------------------------------------------------------------------

loc_1006DA1:				; CODE XREF: sub_1006773+5F4j
		call	ds:EndDoc
		test	eax, eax
		jg	short loc_1006DB7
		cmp	esi, ebx
		jnz	short loc_1006DB7
		call	ds:GetLastError
		mov	esi, eax

loc_1006DB7:				; CODE XREF: sub_1006773+5E6j
					; sub_1006773+5FCj ...
		push	[ebp+hdc]	; hdc
		call	ds:DeleteDC
		call	sub_1005F3C
		push	dword_100AB88	; hCursor
		call	ds:SetCursor
		cmp	dword_100A134, ebx
		jnz	short loc_1006DE0
		mov	eax, esi
		jmp	short loc_1006DE3
; ---------------------------------------------------------------------------

loc_1006DE0:				; CODE XREF: sub_1006773+667j
		push	0FFFFFFFDh
		pop	eax

loc_1006DE3:				; CODE XREF: sub_1006773+66Bj
		mov	ecx, [ebp+var_4]
		pop	edi
		pop	esi
		pop	ebx
		call	sub_1007147
		leave
		retn	4
sub_1006773	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1006DF7	proc near		; CODE XREF: sub_1006E4B+17p

arg_0		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	esi
		push	hCursor		; hCursor
		mov	esi, ds:SetCursor
		call	esi ; SetCursor
		mov	eax, [ebp+arg_0]
		sub	eax, 0
		jz	short loc_1006E25
		dec	eax
		dec	eax
		jz	short loc_1006E1E
		call	sub_1006428
		jmp	short loc_1006E2A
; ---------------------------------------------------------------------------

loc_1006E1E:				; CODE XREF: sub_1006DF7+1Ej
		call	sub_10064F3
		jmp	short loc_1006E2A
; ---------------------------------------------------------------------------

loc_1006E25:				; CODE XREF: sub_1006DF7+1Aj
		call	sub_1005E6D

loc_1006E2A:				; CODE XREF: sub_1006DF7+25j
					; sub_1006DF7+2Cj
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_1006E3B
		push	dword_100AB88	; hCursor
		call	esi ; SetCursor
		xor	eax, eax
		jmp	short loc_1006E41
; ---------------------------------------------------------------------------

loc_1006E3B:				; CODE XREF: sub_1006DF7+36j
		push	eax
		call	sub_1006773

loc_1006E41:				; CODE XREF: sub_1006DF7+42j
		pop	esi
		pop	ebp
		retn	4
sub_1006DF7	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1006E4B	proc near		; CODE XREF: sub_1002B87+319p
					; sub_10042F9:loc_1004441p

Buffer		= word ptr -324h
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 324h
		mov	eax, ___security_cookie
		push	esi
		push	[ebp+arg_0]
		mov	[ebp+var_4], eax
		call	sub_1006DF7
		mov	esi, eax
		test	esi, esi
		jz	loc_1006EFE
		cmp	esi, 0FFFFFFFEh
		jz	loc_1006EFE
		cmp	esi, 0FFFFFFFDh
		jz	short loc_1006EFE
		cmp	esi, 0FFFFFFFCh
		jnz	short loc_1006E87
		push	70h
		pop	esi

loc_1006E87:				; CODE XREF: sub_1006E4B+37j
		cmp	esi, 0FFFFFFFBh
		jnz	short loc_1006E8F
		push	0Eh
		pop	esi

loc_1006E8F:				; CODE XREF: sub_1006E4B+3Fj
		cmp	esi, 0FFFFFFFFh
		jnz	short loc_1006E9C
		call	ds:GetLastError
		mov	esi, eax

loc_1006E9C:				; CODE XREF: sub_1006E4B+47j
		test	esi, esi
		jz	short loc_1006EFE
		push	0		; Arguments
		push	190h		; nSize
		lea	eax, [ebp+Buffer]
		push	eax		; lpBuffer
		call	ds:GetUserDefaultUILanguage
		movzx	eax, ax
		push	eax		; dwLanguageId
		push	esi		; dwMessageId
		push	0		; lpSource
		push	1200h		; dwFlags
		call	ds:FormatMessageW
		test	eax, eax
		mov	ecx, dword_1009060
		jz	short loc_1006ED6
		lea	ecx, [ebp+Buffer]

loc_1006ED6:				; CODE XREF: sub_1006E4B+83j
		cmp	dword_100901C, 0
		mov	eax, lpString2
		jnz	short loc_1006EE9
		mov	eax, offset word_100A900

loc_1006EE9:				; CODE XREF: sub_1006E4B+97j
		push	30h		; uType
		push	eax		; lpString
		push	ecx		; lpText
		push	lpCaption	; lpCaption
		push	dword_1009830	; hWnd
		call	sub_1001F70

loc_1006EFE:				; CODE XREF: sub_1006E4B+20j
					; sub_1006E4B+29j ...
		mov	ecx, [ebp+var_4]
		pop	esi
		call	sub_1007147
		leave
		retn	4
sub_1006E4B	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1006F10	proc near		; CODE XREF: sub_1002B87+488p
					; sub_1005179+5EEp

SystemTime	= _SYSTEMTIME ptr -3E8h
DateStr		= word ptr -3D8h
String2		= word ptr -338h
lParam		= word ptr -298h
var_296		= byte ptr -296h
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 3E8h
		mov	eax, ___security_cookie
		push	ebx
		push	esi
		push	edi
		mov	[ebp+var_4], eax
		xor	ebx, ebx
		mov	[ebp+lParam], bx
		xor	eax, eax
		mov	ecx, 0A4h
		lea	edi, [ebp+var_296]
		rep stosd
		xor	esi, esi
		stosw
		inc	esi
		mov	edi, esi
		call	ds:GetUserDefaultLCID
		and	eax, 3FFh
		cmp	ax, si
		jz	short loc_1006F5D
		cmp	ax, 0Dh
		jz	short loc_1006F5D
		xor	esi, esi

loc_1006F5D:				; CODE XREF: sub_1006F10+43j
					; sub_1006F10+49j
		lea	eax, [ebp+SystemTime]
		push	eax		; lpSystemTime
		call	ds:GetLocalTime
		cmp	esi, ebx
		mov	esi, ds:lstrcatW
		jz	short loc_1006FA2
		push	0FFFFFFECh	; nIndex
		push	hWnd		; hWnd
		call	ds:GetWindowLongW
		test	ah, 20h
		lea	eax, [ebp+lParam]
		jz	short loc_1006F97
		push	21h
		pop	edi
		push	offset dword_1001844
		jmp	short loc_1006F9F
; ---------------------------------------------------------------------------

loc_1006F97:				; CODE XREF: sub_1006F10+7Bj
		push	11h
		pop	edi
		push	offset word_1001840 ; lpString2

loc_1006F9F:				; CODE XREF: sub_1006F10+85j
		push	eax		; lpString1
		call	esi ; lstrcatW

loc_1006FA2:				; CODE XREF: sub_1006F10+62j
		push	50h		; cchDate
		lea	eax, [ebp+DateStr]
		push	eax		; lpDateStr
		push	ebx		; lpFormat
		lea	eax, [ebp+SystemTime]
		push	eax		; lpDate
		push	edi		; dwFlags
		mov	edi, 400h
		push	edi		; Locale
		call	ds:GetDateFormatW
		push	50h		; cchTime
		lea	eax, [ebp+String2]
		push	eax		; lpTimeStr
		push	ebx		; lpFormat
		lea	eax, [ebp+SystemTime]
		push	eax		; lpTime
		push	2		; dwFlags
		push	edi		; Locale
		call	ds:GetTimeFormatW
		cmp	[ebp+arg_0], ebx
		mov	edi, offset asc_1001838	; "\r\n"
		jz	short loc_1006FEE
		push	edi		; lpString2
		lea	eax, [ebp+lParam]
		push	eax		; lpString1
		call	esi ; lstrcatW

loc_1006FEE:				; CODE XREF: sub_1006F10+D2j
		lea	eax, [ebp+String2]
		push	eax		; lpString2
		lea	eax, [ebp+lParam]
		push	eax		; lpString1
		call	esi ; lstrcatW
		push	offset word_1001834 ; lpString2
		lea	eax, [ebp+lParam]
		push	eax		; lpString1
		call	esi ; lstrcatW
		lea	eax, [ebp+DateStr]
		push	eax		; lpString2
		lea	eax, [ebp+lParam]
		push	eax		; lpString1
		call	esi ; lstrcatW
		cmp	[ebp+arg_0], ebx
		jz	short loc_100702B
		push	edi		; lpString2
		lea	eax, [ebp+lParam]
		push	eax		; lpString1
		call	esi ; lstrcatW

loc_100702B:				; CODE XREF: sub_1006F10+10Fj
		lea	eax, [ebp+lParam]
		push	eax		; lParam
		push	1		; wParam
		push	0C2h		; Msg
		push	hWnd		; hWnd
		call	ds:SendMessageW
		mov	ecx, [ebp+var_4]
		pop	edi
		pop	esi
		pop	ebx
		call	sub_1007147
		leave
		retn	4
sub_1006F10	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1007059	proc near		; CODE XREF: sub_100239D+41p
					; sub_1005179+1DFp

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	esi
		xor	esi, esi
		xor	ecx, ecx
		inc	esi
		xor	edx, edx
		cmp	[ebp+arg_4], ecx
		jle	short loc_10070A0

loc_100706B:				; CODE XREF: sub_1007059+3Dj
		mov	eax, [ebp+arg_0]
		mov	al, [ecx+eax]
		test	al, al
		jns	short loc_1007077
		xor	esi, esi

loc_1007077:				; CODE XREF: sub_1007059+1Aj
		test	edx, edx
		jnz	short loc_100708B
		cmp	al, 80h
		jb	short loc_1007092

loc_100707F:				; CODE XREF: sub_1007059+2Bj
		shl	al, 1
		inc	edx
		test	al, al
		js	short loc_100707F
		dec	edx
		jz	short loc_10070A0
		jmp	short loc_1007092
; ---------------------------------------------------------------------------

loc_100708B:				; CODE XREF: sub_1007059+20j
		and	al, 0C0h
		cmp	al, 80h
		jnz	short loc_10070A0
		dec	edx

loc_1007092:				; CODE XREF: sub_1007059+24j
					; sub_1007059+30j
		inc	ecx
		cmp	ecx, [ebp+arg_4]
		jl	short loc_100706B
		test	edx, edx
		ja	short loc_10070A0
		test	esi, esi
		jz	short loc_10070A4

loc_10070A0:				; CODE XREF: sub_1007059+10j
					; sub_1007059+2Ej ...
		xor	eax, eax
		jmp	short loc_10070A7
; ---------------------------------------------------------------------------

loc_10070A4:				; CODE XREF: sub_1007059+45j
		xor	eax, eax
		inc	eax

loc_10070A7:				; CODE XREF: sub_1007059+49j
		pop	esi
		pop	ebp
		retn	8
sub_1007059	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_10070B1(void *lpv, int iSize)
sub_10070B1	proc near		; CODE XREF: sub_100239D+31p
					; sub_1005179+1BBp

iResult		= dword	ptr -4
lpv		= dword	ptr  8
iSize		= dword	ptr  0Ch

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	ecx
		or	[ebp+iResult], 0FFFFFFFFh
		lea	eax, [ebp+iResult]
		push	eax		; lpiResult
		push	[ebp+iSize]	; iSize
		push	[ebp+lpv]	; lpv
		call	ds:IsTextUnicode
		leave
		retn	8
sub_10070B1	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)
; ---------------------------------------------------------------------------
		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 10h
		mov	eax, ___security_cookie
		test	eax, eax
		jz	short loc_10070EC
		cmp	eax, 0BB40h
		jnz	short loc_1007139

loc_10070EC:				; CODE XREF: .text:010070E3j
		push	esi
		lea	eax, [ebp-8]
		push	eax
		call	ds:GetSystemTimeAsFileTime
		mov	esi, [ebp-4]
		xor	esi, [ebp-8]
		call	ds:GetCurrentProcessId
		xor	esi, eax
		call	ds:GetCurrentThreadId
		xor	esi, eax
		call	ds:GetTickCount
		xor	esi, eax
		lea	eax, [ebp-10h]
		push	eax
		call	ds:QueryPerformanceCounter
		mov	eax, [ebp-0Ch]
		xor	eax, [ebp-10h]
		xor	eax, esi
		and	eax, 0FFFFh
		pop	esi
		jnz	short loc_1007134
		mov	eax, 0BB40h

loc_1007134:				; CODE XREF: .text:0100712Dj
		mov	___security_cookie, eax

loc_1007139:				; CODE XREF: .text:010070EAj
		not	eax
		mov	dword_1009600, eax
		leave
		retn
; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================


sub_1007147	proc near		; CODE XREF: sub_1001C42+CCp
					; sub_1001FF0+83p ...
		cmp	ecx, ___security_cookie
		jnz	short loc_1007158
		test	ecx, 0FFFF0000h
		jnz	short loc_1007158
		retn
; ---------------------------------------------------------------------------

loc_1007158:				; CODE XREF: sub_1007147+6j
					; sub_1007147+Ej
		jmp	loc_1007162
; ---------------------------------------------------------------------------
		db 5 dup(0CCh)
; ---------------------------------------------------------------------------

loc_1007162:				; CODE XREF: sub_1007147:loc_1007158j
		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 330h
		push	edi
		mov	[ebp-228h], eax
		mov	[ebp-22Ch], ecx
		mov	[ebp-230h], edx
		mov	[ebp-234h], ebx
		mov	[ebp-238h], esi
		mov	[ebp-23Ch], edi
		mov	word ptr [ebp-210h], ss
		mov	word ptr [ebp-21Ch], cs
		mov	word ptr [ebp-240h], ds
		mov	word ptr [ebp-244h], es
		mov	word ptr [ebp-248h], fs
		mov	word ptr [ebp-24Ch], gs
		pushf
		pop	dword ptr [ebp-218h]
		mov	dword ptr [ebp-2D8h], 10001h
		mov	eax, [ebp+4]
		mov	[ebp-220h], eax
		lea	eax, [ebp+4]
		mov	[ebp-214h], eax
		lea	eax, [ebp+4]
		mov	eax, [eax-4]
		mov	[ebp-224h], eax
		push	14h
		pop	ecx
		xor	eax, eax
		lea	edi, [ebp-330h]
		rep stosd
		mov	dword ptr [ebp-330h], 0C0000409h
		mov	eax, [ebp+4]
		mov	[ebp-324h], eax
		lea	eax, [ebp-330h]
		mov	[ebp-8], eax
		lea	eax, [ebp-2D8h]
		mov	[ebp-4], eax
		mov	eax, ___security_cookie
		mov	[ebp-2E0h], eax
		mov	eax, dword_1009600
		mov	[ebp-2DCh], eax
		push	0		; lpTopLevelExceptionFilter
		call	ds:SetUnhandledExceptionFilter
		lea	eax, [ebp-8]
		push	eax		; ExceptionInfo
		call	ds:UnhandledExceptionFilter
		push	502h		; uExitCode
		call	ds:GetCurrentProcess
		push	eax		; hProcess
		call	ds:TerminateProcess
		pop	edi
		leave
		retn
sub_1007147	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_100725F(LPBYTE lpData)
sub_100725F	proc near		; CODE XREF: sub_10072C3+35p

cbData		= dword	ptr -8
hKey		= dword	ptr -4
lpData		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ecx
		push	esi
		lea	eax, [ebp+hKey]
		push	eax		; phkResult
		push	20019h		; samDesired
		xor	esi, esi
		push	esi		; ulOptions
		push	offset aClsidAdb880a6D ; "CLSID\\{ADB880A6-D8FF-11CF-9377-00AA003"...
		push	80000000h	; hKey
		call	ds:RegOpenKeyExA
		test	eax, eax
		jnz	short loc_10072B7
		lea	eax, [ebp+cbData]
		push	eax		; lpcbData
		push	[ebp+lpData]	; lpData
		mov	[ebp+cbData], 104h
		push	esi		; lpType
		push	esi		; lpReserved
		push	offset ValueName ; lpValueName
		push	[ebp+hKey]	; hKey
		call	ds:RegQueryValueExA
		test	eax, eax
		jnz	short loc_10072AA
		inc	esi

loc_10072AA:				; CODE XREF: sub_100725F+48j
		push	[ebp+hKey]	; hKey
		call	ds:RegCloseKey
		mov	eax, esi
		jmp	short loc_10072B9
; ---------------------------------------------------------------------------

loc_10072B7:				; CODE XREF: sub_100725F+26j
		xor	eax, eax

loc_10072B9:				; CODE XREF: sub_100725F+56j
		pop	esi
		leave
		retn	4
sub_100725F	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_10072C3	proc near		; CODE XREF: sub_1002B87+735p

Data		= byte ptr -108h
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 108h
		mov	ecx, hModule
		test	ecx, ecx
		mov	eax, ___security_cookie
		push	ebx
		mov	ebx, [ebp+arg_4]
		push	esi
		push	edi
		mov	edi, [ebp+arg_0]
		mov	[ebp+var_4], eax
		jnz	short loc_1007332
		cmp	dword_1009AA4, ecx
		jnz	short loc_1007332
		lea	eax, [ebp+Data]
		push	eax		; lpData
		call	sub_100725F
		test	eax, eax
		mov	esi, ds:LoadLibraryA
		jz	short loc_1007315
		lea	eax, [ebp+Data]
		push	eax		; lpLibFileName
		call	esi ; LoadLibraryA
		mov	hModule, eax

loc_1007315:				; CODE XREF: sub_10072C3+42j
		mov	ecx, hModule
		test	ecx, ecx
		jnz	short loc_1007332
		push	offset LibFileName ; "hhctrl.ocx"
		call	esi ; LoadLibraryA
		mov	ecx, eax
		test	ecx, ecx
		mov	hModule, ecx
		jz	short loc_100734D

loc_1007332:				; CODE XREF: sub_10072C3+24j
					; sub_10072C3+2Cj ...
		mov	eax, dword_1009A9C
		test	eax, eax
		jnz	short loc_100735B
		push	0Eh		; lpProcName
		push	ecx		; hModule
		call	ds:GetProcAddress
		test	eax, eax
		mov	dword_1009A9C, eax
		jnz	short loc_100735B

loc_100734D:				; CODE XREF: sub_10072C3+6Dj
		mov	dword_1009AA4, 1
		xor	eax, eax
		jmp	short loc_1007365
; ---------------------------------------------------------------------------

loc_100735B:				; CODE XREF: sub_10072C3+76j
					; sub_10072C3+88j
		push	[ebp+arg_C]
		push	[ebp+arg_8]
		push	ebx
		push	edi
		call	eax ; dword_1009A9C

loc_1007365:				; CODE XREF: sub_10072C3+96j
		mov	ecx, [ebp+var_4]
		pop	edi
		pop	esi
		pop	ebx
		call	sub_1007147
		leave
		retn	10h
sub_10072C3	endp

; ---------------------------------------------------------------------------
		db 6 dup(0CCh)
; [00000006 BYTES: COLLAPSED FUNCTION ClosePrinter. PRESS KEYPAD CTRL-"+" TO EXPAND]
		db 6 dup(0CCh)
; [00000006 BYTES: COLLAPSED FUNCTION GetPrinterDriverW. PRESS KEYPAD CTRL-"+" TO EXPAND]
		db 6 dup(0CCh)
; [00000006 BYTES: COLLAPSED FUNCTION OpenPrinterW. PRESS KEYPAD CTRL-"+" TO EXPAND]
		db 5 dup(0CCh)
		assume fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

		public start
start		proc near

StartupInfo	= _STARTUPINFOA	ptr -80h
var_3C		= dword	ptr -3Ch
var_38		= dword	ptr -38h
var_34		= byte ptr -34h
var_30		= byte ptr -30h
var_2C		= byte ptr -2Ch
Code		= dword	ptr -28h
var_24		= dword	ptr -24h
var_20		= dword	ptr -20h
var_1C		= dword	ptr -1Ch
ms_exc		= CPPEH_RECORD ptr -18h

		push	70h
		push	offset stru_1001898
		call	__SEH_prolog
		xor	ebx, ebx
		push	ebx		; lpModuleName
		mov	edi, ds:GetModuleHandleA
		call	edi ; GetModuleHandleA
		cmp	word ptr [eax],	5A4Dh
		jnz	short loc_10073DA
		mov	ecx, [eax+3Ch]
		add	ecx, eax
		cmp	dword ptr [ecx], 4550h
		jnz	short loc_10073DA
		movzx	eax, word ptr [ecx+18h]
		cmp	eax, 10Bh
		jz	short loc_10073F2
		cmp	eax, 20Bh
		jz	short loc_10073DF

loc_10073DA:				; CODE XREF: start+1Cj	start+29j ...
		mov	[ebp+var_1C], ebx
		jmp	short loc_1007406
; ---------------------------------------------------------------------------

loc_10073DF:				; CODE XREF: start+3Bj
		cmp	dword ptr [ecx+84h], 0Eh
		jbe	short loc_10073DA
		xor	eax, eax
		cmp	[ecx+0F8h], ebx
		jmp	short loc_1007400
; ---------------------------------------------------------------------------

loc_10073F2:				; CODE XREF: start+34j
		cmp	dword ptr [ecx+74h], 0Eh
		jbe	short loc_10073DA
		xor	eax, eax
		cmp	[ecx+0E8h], ebx

loc_1007400:				; CODE XREF: start+53j
		setnz	al
		mov	[ebp+var_1C], eax

loc_1007406:				; CODE XREF: start+40j
		mov	[ebp+ms_exc.registration.TryLevel], ebx
		push	2
		call	ds:__set_app_type
		pop	ecx
		or	dword_100AB9C, 0FFFFFFFFh
		or	dword_100ABA0, 0FFFFFFFFh
		call	ds:__p__fmode
		mov	ecx, dword_1009AB8
		mov	[eax], ecx
		call	ds:__p__commode
		mov	ecx, dword_1009AB4
		mov	[eax], ecx
		mov	eax, ds:_adjust_fdiv
		mov	eax, [eax]
		mov	dword_100ABA4, eax
		call	sub_10075F4
		cmp	dword_1009608, ebx
		jnz	short loc_1007461
		push	offset sub_10075F4
		call	ds:__setusermatherr
		pop	ecx

loc_1007461:				; CODE XREF: start+B6j
		call	sub_10075DD
		push	offset unk_1009010
		push	offset unk_100900C
		call	_initterm
		mov	eax, dword_1009AB0
		mov	[ebp+var_24], eax
		lea	eax, [ebp+var_24]
		push	eax
		push	dword_1009AAC
		lea	eax, [ebp+var_2C]
		push	eax
		lea	eax, [ebp+var_30]
		push	eax
		lea	eax, [ebp+var_34]
		push	eax
		call	ds:__getmainargs
		mov	[ebp+var_38], eax
		push	offset unk_1009008
		push	offset unk_1009000
		call	_initterm
		add	esp, 24h
		mov	eax, ds:_acmdln
		mov	esi, [eax]
		mov	[ebp+var_20], esi
		cmp	byte ptr [esi],	22h
		jnz	short loc_10074F7

loc_10074BD:				; CODE XREF: start+12Cj
		inc	esi
		mov	[ebp+var_20], esi
		mov	al, [esi]
		cmp	al, bl
		jz	short loc_10074CB
		cmp	al, 22h
		jnz	short loc_10074BD

loc_10074CB:				; CODE XREF: start+128j
		cmp	byte ptr [esi],	22h
		jnz	short loc_10074D4

loc_10074D0:				; CODE XREF: start+13Fj
		inc	esi
		mov	[ebp+var_20], esi

loc_10074D4:				; CODE XREF: start+131j start+15Dj
		mov	al, [esi]
		cmp	al, bl
		jz	short loc_10074DE
		cmp	al, 20h
		jbe	short loc_10074D0

loc_10074DE:				; CODE XREF: start+13Bj
		mov	[ebp+StartupInfo.dwFlags], ebx
		lea	eax, [ebp+StartupInfo]
		push	eax		; lpStartupInfo
		call	ds:GetStartupInfoA
		test	byte ptr [ebp+StartupInfo.dwFlags], 1
		jz	short loc_1007502
		movzx	eax, [ebp+StartupInfo.wShowWindow]
		jmp	short loc_1007505
; ---------------------------------------------------------------------------

loc_10074F7:				; CODE XREF: start+11Ej start+163j
		cmp	byte ptr [esi],	20h
		jbe	short loc_10074D4
		inc	esi
		mov	[ebp+var_20], esi
		jmp	short loc_10074F7
; ---------------------------------------------------------------------------

loc_1007502:				; CODE XREF: start+152j
		push	0Ah
		pop	eax

loc_1007505:				; CODE XREF: start+158j
		push	eax		; nCmdShow
		push	esi		; int
		push	ebx		; int
		push	ebx		; lpModuleName
		call	edi ; GetModuleHandleA
		push	eax		; hInstance
		call	sub_1002936
		mov	esi, eax
		mov	[ebp+var_3C], esi
		cmp	[ebp+var_1C], ebx
		jnz	short loc_1007522
		push	esi		; Code
		call	ds:exit
; ---------------------------------------------------------------------------

loc_1007522:				; CODE XREF: start+17Cj
		call	ds:_cexit
		jmp	short loc_1007557
; ---------------------------------------------------------------------------

loc_100752A:				; DATA XREF: .text:stru_1001898o
		mov	eax, [ebp+ms_exc.exc_ptr] ; Exception filter 0 for function 100739D
		mov	ecx, [eax]
		mov	ecx, [ecx]
		mov	[ebp+Code], ecx
		push	eax
		push	ecx
		call	_XcptFilter
		pop	ecx
		pop	ecx
		retn
; ---------------------------------------------------------------------------

loc_100753E:				; DATA XREF: .text:stru_1001898o
		mov	esp, [ebp+ms_exc.old_esp] ; Exception handler 0	for function 100739D
		mov	esi, [ebp+Code]
		cmp	[ebp+var_1C], 0
		jnz	short loc_1007551
		push	esi		; Code
		call	ds:_exit
; ---------------------------------------------------------------------------

loc_1007551:				; CODE XREF: start+1ABj
		call	ds:_c_exit

loc_1007557:				; CODE XREF: start+18Bj
		or	[ebp+ms_exc.registration.TryLevel], 0FFFFFFFFh
		mov	eax, esi
		call	__SEH_epilog
		retn
start		endp

; ---------------------------------------------------------------------------
		align 8
; [0000003B BYTES: COLLAPSED FUNCTION __SEH_prolog. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000011 BYTES: COLLAPSED FUNCTION __SEH_epilog. PRESS KEYPAD CTRL-"+" TO EXPAND]
		db 6 dup(0CCh)
; ---------------------------------------------------------------------------

loc_10075BA:				; DATA XREF: .text:___safe_se_handler_tableo
					; __SEH_prologo
		jmp	ds:_except_handler3
; ---------------------------------------------------------------------------
		db 6 dup(0CCh)
; [00000006 BYTES: COLLAPSED FUNCTION _XcptFilter. PRESS KEYPAD	CTRL-"+" TO EXPAND]
		db 6 dup(0CCh)
; [00000006 BYTES: COLLAPSED FUNCTION _initterm. PRESS KEYPAD CTRL-"+" TO EXPAND]
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================


sub_10075DD	proc near		; CODE XREF: start:loc_1007461p
		push	30000h		; Mask
		push	10000h		; NewValue
		call	_controlfp
		pop	ecx
		pop	ecx
		retn
sub_10075DD	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================


sub_10075F4	proc near		; CODE XREF: start+ABp
					; DATA XREF: start+B8o
		xor	eax, eax
		retn
sub_10075F4	endp

; ---------------------------------------------------------------------------
		db 5 dup(0CCh)
; [00000006 BYTES: COLLAPSED FUNCTION _controlfp. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
		align 4
__IMPORT_DESCRIPTOR_comdlg32 dd	rva off_1007990	; Import Name Table
		dd 0FFFFFFFFh		; Time stamp
		dd 0FFFFFFFFh		; Forwarder Chain
		dd rva aComdlg32_dll	; DLL Name
		dd rva PageSetupDlgW	; Import Address Table
__IMPORT_DESCRIPTOR_SHELL32 dd rva off_1007840 ; Import	Name Table
		dd 0FFFFFFFFh		; Time stamp
		dd 0FFFFFFFFh		; Forwarder Chain
		dd rva aShell32_dll	; DLL Name
		dd rva DragFinish	; Import Address Table
__IMPORT_DESCRIPTOR_WINSPOOL_DRV dd rva	off_1007980 ; Import Name Table
		dd 0FFFFFFFFh		; Time stamp
		dd 0FFFFFFFFh		; Forwarder Chain
		dd rva aWinspool_drv	; DLL Name
		dd rva __imp_GetPrinterDriverW ; Import	Address	Table
__IMPORT_DESCRIPTOR_COMCTL32 dd	rva off_10076EC	; Import Name Table
		dd 0FFFFFFFFh		; Time stamp
		dd 0FFFFFFFFh		; Forwarder Chain
		dd rva aComctl32_dll	; DLL Name
		dd rva CreateStatusWindowW ; Import Address Table
__IMPORT_DESCRIPTOR_msvcrt dd rva off_10079B8 ;	Import Name Table
		dd 0FFFFFFFFh		; Time stamp
		dd 0FFFFFFFFh		; Forwarder Chain
		dd rva aMsvcrt_dll	; DLL Name
		dd rva __imp__XcptFilter ; Import Address Table
__IMPORT_DESCRIPTOR_ADVAPI32 dd	rva off_10076CC	; Import Name Table
		dd 0FFFFFFFFh		; Time stamp
		dd 0FFFFFFFFh		; Forwarder Chain
		dd rva aAdvapi32_dll	; DLL Name
		dd rva RegQueryValueExW	; Import Address Table
__IMPORT_DESCRIPTOR_KERNEL32 dd	rva off_1007758	; Import Name Table
		dd 0FFFFFFFFh		; Time stamp
		dd 0FFFFFFFFh		; Forwarder Chain
		dd rva aKernel32_dll	; DLL Name
		dd rva GetCurrentThreadId ; Import Address Table
__IMPORT_DESCRIPTOR_GDI32 dd rva off_10076F4 ; Import Name Table
		dd 0FFFFFFFFh		; Time stamp
		dd 0FFFFFFFFh		; Forwarder Chain
		dd rva aGdi32_dll	; DLL Name
		dd rva EndPage		; Import Address Table
__IMPORT_DESCRIPTOR_USER32 dd rva off_1007854 ;	Import Name Table
		dd 0FFFFFFFFh		; Time stamp
		dd 0FFFFFFFFh		; Forwarder Chain
		dd rva aUser32_dll	; DLL Name
		dd rva GetClientRect	; Import Address Table
		dd 5 dup(0)
;
; Import names for ADVAPI32.dll
;
off_10076CC	dd rva word_1007CA2	; DATA XREF: .text:__IMPORT_DESCRIPTOR_ADVAPI32o
		dd rva word_1007CB6
		dd rva word_1007CC4
		dd rva word_1007CD4
		dd rva word_1007CE4
		dd rva word_1007CF8
		dd rva word_1007C90
		dd 0
;
; Import names for COMCTL32.dll
;
off_10076EC	dd rva word_1007B48	; DATA XREF: .text:__IMPORT_DESCRIPTOR_COMCTL32o
		dd 0
;
; Import names for GDI32.dll
;
off_10076F4	dd rva word_10081D0	; DATA XREF: .text:__IMPORT_DESCRIPTOR_GDI32o
		dd rva word_10081C4
		dd rva word_10081BA
		dd rva word_10081AE
		dd rva word_10081DA
		dd rva word_100818A
		dd rva word_100817E
		dd rva word_10081F2
		dd rva word_100815E
		dd rva word_10081A2
		dd rva word_10081E6
		dd rva word_1008150
		dd rva word_100813E
		dd rva word_1008130
		dd rva word_1008120
		dd rva word_100810A
		dd rva word_10080FA
		dd rva word_1008202
		dd rva word_1008214
		dd rva word_1008220
		dd rva word_100822A
		dd rva word_100823C
		dd rva word_1008250
		dd rva word_100816E
		dd 0
;
; Import names for KERNEL32.dll
;
off_1007758	dd rva word_1008024	; DATA XREF: .text:__IMPORT_DESCRIPTOR_KERNEL32o
		dd rva word_1008014
		dd rva word_1007FFA
		dd rva word_1007FEA
		dd rva word_1007FD4
		dd rva word_1007FC2
		dd rva word_1007FB0
		dd rva word_1007FA2
		dd rva word_1007F92
		dd rva word_1007F74
		dd rva word_1007F5E
		dd rva word_100803A
		dd rva word_1008054
		dd rva word_1008068
		dd rva word_1008098
		dd rva word_10080B6
		dd rva word_10080C6
		dd rva word_10080DA
		dd rva word_1007D16
		dd rva word_1007D24
		dd rva word_1007D36
		dd rva word_1007D42
		dd rva word_1007D50
		dd rva word_1007D5C
		dd rva word_1007D6A
		dd rva word_1007D7C
		dd rva word_1007D88
		dd rva word_1007D96
		dd rva word_1007DA4
		dd rva word_1007DB0
		dd rva word_1007DBC
		dd rva word_1007DCA
		dd rva word_1007DD6
		dd rva word_1007DEC
		dd rva word_1007DFE
		dd rva word_1007E10
		dd rva word_1007E1C
		dd rva word_1007E28
		dd rva word_1007E3A
		dd rva word_1007E50
		dd rva word_1007E5C
		dd rva word_1007E66
		dd rva word_1007E72
		dd rva word_1007E7E
		dd rva word_1007E8E
		dd rva word_1007E9A
		dd rva word_1007EAA
		dd rva word_1007EC0
		dd rva word_1007ED0
		dd rva word_1007EE2
		dd rva word_1007EFE
		dd rva word_1007F0E
		dd rva word_1007F1C
		dd rva word_1007F26
		dd rva word_1007F38
		dd rva word_1007F4E
		dd rva word_100807C
		dd 0
;
; Import names for SHELL32.dll
;
off_1007840	dd rva word_1007AC8	; DATA XREF: .text:__IMPORT_DESCRIPTOR_SHELL32o
		dd rva word_1007AD6
		dd rva word_1007AE8
		dd rva word_1007ABA
		dd 0
;
; Import names for USER32.dll
;
off_1007854	dd rva word_1008524	; DATA XREF: .text:__IMPORT_DESCRIPTOR_USER32o
		dd rva word_1008534
		dd rva word_1008540
		dd rva word_100854C
		dd rva word_1008554
		dd rva word_1008566
		dd rva word_1008578
		dd rva word_100858C
		dd rva word_100859E
		dd rva word_10085AE
		dd rva word_1008516
		dd rva word_10085CE
		dd rva word_10085E4
		dd rva word_10085F0
		dd rva word_1008606
		dd rva word_1008614
		dd rva word_1008622
		dd rva word_1008636
		dd rva word_1008646
		dd rva word_100865A
		dd rva word_1008668
		dd rva word_1008676
		dd rva word_100868C
		dd rva word_1008502
		dd rva word_10084F6
		dd rva word_10084EA
		dd rva word_10084D8
		dd rva word_10085BC
		dd rva word_100869E
		dd rva word_10086B8
		dd rva word_10086C8
		dd rva word_10086D8
		dd rva word_10086E6
		dd rva word_10086F6
		dd rva word_1008706
		dd rva word_1008714
		dd rva word_100872A
		dd rva word_10084C4
		dd rva word_1008268
		dd rva word_1008276
		dd rva word_1008288
		dd rva word_1008294
		dd rva word_10082A4
		dd rva word_10082BC
		dd rva word_10082CE
		dd rva word_10082DE
		dd rva word_10082F4
		dd rva word_1008304
		dd rva word_1008310
		dd rva word_1008320
		dd rva word_1008332
		dd rva word_1008350
		dd rva word_1008360
		dd rva word_1008370
		dd rva word_1008382
		dd rva word_1008390
		dd rva word_100839A
		dd rva word_10083A8
		dd rva word_10083BA
		dd rva word_10083CC
		dd rva word_10083DA
		dd rva word_10083E6
		dd rva word_10083F8
		dd rva word_1008404
		dd rva word_1008416
		dd rva word_1008422
		dd rva word_100842E
		dd rva word_1008440
		dd rva word_1008454
		dd rva word_1008468
		dd rva word_1008480
		dd rva word_1008494
		dd rva word_10084A4
		dd rva word_10084B2
		dd 0
;
; Import names for WINSPOOL.DRV
;
off_1007980	dd rva word_1007B16	; DATA XREF: .text:__IMPORT_DESCRIPTOR_WINSPOOL_DRVo
		dd rva word_1007B06
		dd rva word_1007B2A
		dd 0
;
; Import names for comdlg32.dll
;
off_1007990	dd rva word_1007A7A	; DATA XREF: .text:__IMPORT_DESCRIPTOR_comdlg32o
		dd rva word_1007A5E
		dd rva word_1007A9E
		dd rva word_1007A50
		dd rva word_1007A40
		dd rva word_1007A8A
		dd rva word_1007A6A
		dd rva word_1007A14
		dd rva word_1007A2C
		dd 0
;
; Import names for msvcrt.dll
;
off_10079B8	dd rva word_1007BDC	; DATA XREF: .text:__IMPORT_DESCRIPTOR_msvcrto
		dd rva word_1007BD4
		dd rva word_1007BCA
		dd rva word_1007BC2
		dd rva word_1007BB6
		dd rva word_1007BEA
		dd rva word_1007BA0
		dd rva word_1007B8C
		dd rva word_1007B84
		dd rva word_1007B7A
		dd rva word_1007B6C
		dd rva word_1007BF4
		dd rva word_1007BFC
		dd rva word_1007C06
		dd rva word_1007C16
		dd rva word_1007C22
		dd rva word_1007C36
		dd rva word_1007C46
		dd rva word_1007C56
		dd rva word_1007C64
		dd rva word_1007C82
		dd rva word_1007BAC
		dd 0
word_1007A14	dw 4			; DATA XREF: .text:010079ACo
		db 'CommDlgExtendedError',0
		align 4
word_1007A2C	dw 0Ch			; DATA XREF: .text:010079B0o
		db 'GetSaveFileNameW',0
		align 10h
word_1007A40	dw 8			; DATA XREF: .text:010079A0o
		db 'GetFileTitleW',0
word_1007A50	dw 3			; DATA XREF: .text:0100799Co
		db 'ChooseFontW',0
word_1007A5E	dw 6			; DATA XREF: .text:01007994o
		db 'FindTextW',0
word_1007A6A	dw 15h			; DATA XREF: .text:010079A8o
		db 'ReplaceTextW',0
		align 2
word_1007A7A	dw 0Fh			; DATA XREF: .text:off_1007990o
		db 'PageSetupDlgW',0
word_1007A8A	dw 0Ah			; DATA XREF: .text:010079A4o
		db 'GetOpenFileNameW',0
		align 2
word_1007A9E	dw 12h			; DATA XREF: .text:01007998o
		db 'PrintDlgExW',0
aComdlg32_dll	db 'comdlg32.dll',0     ; DATA XREF: .text:01007610o
		align 2
word_1007ABA	dw 103h			; DATA XREF: .text:0100784Co
		db 'ShellAboutW',0
word_1007AC8	dw 1Fh			; DATA XREF: .text:off_1007840o
		db 'DragFinish',0
		align 2
word_1007AD6	dw 23h			; DATA XREF: .text:01007844o
		db 'DragQueryFileW',0
		align 4
word_1007AE8	dw 1Eh			; DATA XREF: .text:01007848o
		db 'DragAcceptFiles',0
aShell32_dll	db 'SHELL32.dll',0      ; DATA XREF: .text:01007624o
word_1007B06	dw 1Bh			; DATA XREF: .text:01007984o
		db 'ClosePrinter',0
		align 2
word_1007B16	dw 78h			; DATA XREF: .text:off_1007980o
		db 'GetPrinterDriverW',0
word_1007B2A	dw 7Eh			; DATA XREF: .text:01007988o
		db 'OpenPrinterW',0
		align 2
aWinspool_drv	db 'WINSPOOL.DRV',0     ; DATA XREF: .text:01007638o
		align 4
word_1007B48	dw 8			; DATA XREF: .text:off_10076ECo
		db 'CreateStatusWindowW',0
aComctl32_dll	db 'COMCTL32.dll',0     ; DATA XREF: .text:0100764Co
		align 4
word_1007B6C	dw 1E4h			; DATA XREF: .text:010079E0o
		db '_snwprintf',0
		align 2
word_1007B7A	dw 32Fh			; DATA XREF: .text:010079DCo
		db 'wcsncmp',0
word_1007B84	dw 274h			; DATA XREF: .text:010079D8o
		db '_wtol',0
word_1007B8C	dw 0EDh			; DATA XREF: .text:010079D4o
		db '_except_handler3',0
		align 10h
word_1007BA0	dw 2C6h			; DATA XREF: .text:010079D0o
		db 'iswctype',0
		align 4
word_1007BAC	dw 330h			; DATA XREF: .text:01007A0Co
		db 'wcsncpy',0
word_1007BB6	dw 2D4h			; DATA XREF: .text:010079C8o
		db 'localtime',0
word_1007BC2	dw 317h			; DATA XREF: .text:010079C4o
		db 'time',0
		align 2
word_1007BCA	dw 0C5h			; DATA XREF: .text:010079C0o
		db '_c_exit',0
word_1007BD4	dw 0F6h			; DATA XREF: .text:010079BCo
		db '_exit',0
word_1007BDC	dw 4Eh			; DATA XREF: .text:off_10079B8o
		db '_XcptFilter',0
word_1007BEA	dw 0C8h			; DATA XREF: .text:010079CCo
		db '_cexit',0
		align 4
word_1007BF4	dw 290h			; DATA XREF: .text:010079E4o
		db 'exit',0
		align 4
word_1007BFC	dw 0A8h			; DATA XREF: .text:010079E8o
		db '_acmdln',0
word_1007C06	dw 6Dh			; DATA XREF: .text:010079ECo
		db '__getmainargs',0
word_1007C16	dw 13Bh			; DATA XREF: .text:010079F0o
		db '_initterm',0
word_1007C22	dw 9Ah			; DATA XREF: .text:010079F4o
		db '__setusermatherr',0
		align 2
word_1007C36	dw 0B6h			; DATA XREF: .text:010079F8o
		db '_adjust_fdiv',0
		align 2
word_1007C46	dw 80h			; DATA XREF: .text:010079FCo
		db '__p__commode',0
		align 2
word_1007C56	dw 85h			; DATA XREF: .text:01007A00o
		db '__p__fmode',0
		align 4
word_1007C64	dw 98h			; DATA XREF: .text:01007A04o
		db '__set_app_type',0
		align 2
aMsvcrt_dll	db 'msvcrt.dll',0       ; DATA XREF: .text:01007660o
		align 2
word_1007C82	dw 0D6h			; DATA XREF: .text:01007A08o
		db '_controlfp',0
		align 10h
word_1007C90	dw 1FBh			; DATA XREF: .text:010076E4o
		db 'RegSetValueExW',0
		align 2
word_1007CA2	dw 1EEh			; DATA XREF: .text:off_10076CCo
		db 'RegQueryValueExW',0
		align 2
word_1007CB6	dw 1CAh			; DATA XREF: .text:010076D0o
		db 'RegCloseKey',0
word_1007CC4	dw 1D0h			; DATA XREF: .text:010076D4o
		db 'RegCreateKeyW',0
word_1007CD4	dw 139h			; DATA XREF: .text:010076D8o
		db 'IsTextUnicode',0
word_1007CE4	dw 1EDh			; DATA XREF: .text:010076DCo
		db 'RegQueryValueExA',0
		align 4
word_1007CF8	dw 1E3h			; DATA XREF: .text:010076E0o
		db 'RegOpenKeyExA',0
aAdvapi32_dll	db 'ADVAPI32.dll',0     ; DATA XREF: .text:01007674o
		align 2
word_1007D16	dw 1F1h			; DATA XREF: .text:010077A0o
		db 'GlobalFree',0
		align 4
word_1007D24	dw 16Ch			; DATA XREF: .text:010077A4o
		db 'GetLocaleInfoW',0
		align 2
word_1007D36	dw 24Bh			; DATA XREF: .text:010077A8o
		db 'LocalFree',0
word_1007D42	dw 247h			; DATA XREF: .text:010077ACo
		db 'LocalAlloc',0
		align 10h
word_1007D50	dw 3B4h			; DATA XREF: .text:010077B0o
		db 'lstrlenW',0
		align 4
word_1007D5C	dw 251h			; DATA XREF: .text:010077B4o
		db 'LocalUnlock',0
word_1007D6A	dw 38h			; DATA XREF: .text:010077B8o
		db 'CompareStringW',0
		align 4
word_1007D7C	dw 24Dh			; DATA XREF: .text:010077BCo
		db 'LocalLock',0
word_1007D88	dw 0EAh			; DATA XREF: .text:010077C0o
		db 'FoldStringW',0
word_1007D96	dw 31h			; DATA XREF: .text:010077C4o
		db 'CloseHandle',0
word_1007DA4	dw 3AEh			; DATA XREF: .text:010077C8o
		db 'lstrcpyW',0
		align 10h
word_1007DB0	dw 2A3h			; DATA XREF: .text:010077CCo
		db 'ReadFile',0
		align 4
word_1007DBC	dw 52h			; DATA XREF: .text:010077D0o
		db 'CreateFileW',0
word_1007DCA	dw 3ABh			; DATA XREF: .text:010077D4o
		db 'lstrcmpiW',0
word_1007DD6	dw 13Ch			; DATA XREF: .text:010077D8o
		db 'GetCurrentProcessId',0
word_1007DEC	dw 197h			; DATA XREF: .text:010077DCo
		db 'GetProcAddress',0
		align 2
word_1007DFE	dw 10Ah			; DATA XREF: .text:010077E0o
		db 'GetCommandLineW',0
word_1007E10	dw 3A5h			; DATA XREF: .text:010077E4o
		db 'lstrcatW',0
		align 4
word_1007E1C	dw 0CCh			; DATA XREF: .text:010077E8o
		db 'FindClose',0
word_1007E28	dw 0D3h			; DATA XREF: .text:010077ECo
		db 'FindFirstFileW',0
		align 2
word_1007E3A	dw 159h			; DATA XREF: .text:010077F0o
		db 'GetFileAttributesW',0
		align 10h
word_1007E50	dw 3A8h			; DATA XREF: .text:010077F4o
		db 'lstrcmpW',0
		align 4
word_1007E5C	dw 263h			; DATA XREF: .text:010077F8o
		db 'MulDiv',0
		align 2
word_1007E66	dw 3B1h			; DATA XREF: .text:010077FCo
		db 'lstrcpynW',0
word_1007E72	dw 250h			; DATA XREF: .text:01007800o
		db 'LocalSize',0
word_1007E7E	dw 168h			; DATA XREF: .text:01007804o
		db 'GetLastError',0
		align 2
word_1007E8E	dw 38Bh			; DATA XREF: .text:01007808o
		db 'WriteFile',0
word_1007E9A	dw 313h			; DATA XREF: .text:0100780Co
		db 'SetLastError',0
		align 2
word_1007EAA	dw 37Eh			; DATA XREF: .text:01007810o
		db 'WideCharToMultiByte',0
word_1007EC0	dw 24Eh			; DATA XREF: .text:01007814o
		db 'LocalReAlloc',0
		align 10h
word_1007ED0	dw 0ECh			; DATA XREF: .text:01007818o
		db 'FormatMessageW',0
		align 2
word_1007EE2	dw 1D7h			; DATA XREF: .text:0100781Co
		db 'GetUserDefaultUILanguage',0
		align 2
word_1007EFE	dw 2FDh			; DATA XREF: .text:01007820o
		db 'SetEndOfFile',0
		align 2
word_1007F0E	dw 82h			; DATA XREF: .text:01007824o
		db 'DeleteFileW',0
word_1007F1C	dw 0F6h			; DATA XREF: .text:01007828o
		db 'GetACP',0
		align 2
word_1007F26	dw 35Ah			; DATA XREF: .text:0100782Co
		db 'UnmapViewOfFile',0
word_1007F38	dw 264h			; DATA XREF: .text:01007830o
		db 'MultiByteToWideChar',0
word_1007F4E	dw 257h			; DATA XREF: .text:01007834o
		db 'MapViewOfFile',0
word_1007F5E	dw 51h			; DATA XREF: .text:01007780o
		db 'CreateFileMappingW',0
		align 4
word_1007F74	dw 15Ah			; DATA XREF: .text:0100777Co
		db 'GetFileInformationByHandle',0
		align 2
word_1007F92	dw 1FCh			; DATA XREF: .text:01007778o
		db 'GlobalUnlock',0
		align 2
word_1007FA2	dw 1F5h			; DATA XREF: .text:01007774o
		db 'GlobalLock',0
		align 10h
word_1007FB0	dw 1D3h			; DATA XREF: .text:01007770o
		db 'GetTimeFormatW',0
		align 2
word_1007FC2	dw 140h			; DATA XREF: .text:0100776Co
		db 'GetDateFormatW',0
		align 4
word_1007FD4	dw 1D5h			; DATA XREF: .text:01007768o
		db 'GetUserDefaultLCID',0
		align 2
word_1007FEA	dw 16Ah			; DATA XREF: .text:01007764o
		db 'GetLocalTime',0
		align 2
word_1007FFA	dw 291h			; DATA XREF: .text:01007760o
		db 'QueryPerformanceCounter',0
word_1008014	dw 1D1h			; DATA XREF: .text:0100775Co
		db 'GetTickCount',0
		align 4
word_1008024	dw 13Eh			; DATA XREF: .text:off_1007758o
		db 'GetCurrentThreadId',0
		align 2
word_100803A	dw 1BDh			; DATA XREF: .text:01007784o
		db 'GetSystemTimeAsFileTime',0
word_1008054	dw 346h			; DATA XREF: .text:01007788o
		db 'TerminateProcess',0
		align 4
word_1008068	dw 13Bh			; DATA XREF: .text:0100778Co
		db 'GetCurrentProcess',0
word_100807C	dw 357h			; DATA XREF: .text:01007838o
		db 'UnhandledExceptionFilter',0
		align 4
word_1008098	dw 332h			; DATA XREF: .text:01007790o
		db 'SetUnhandledExceptionFilter',0
word_10080B6	dw 241h			; DATA XREF: .text:01007794o
		db 'LoadLibraryA',0
		align 2
word_10080C6	dw 175h			; DATA XREF: .text:01007798o
		db 'GetModuleHandleA',0
		align 2
word_10080DA	dw 1ACh			; DATA XREF: .text:0100779Co
		db 'GetStartupInfoA',0
aKernel32_dll	db 'KERNEL32.dll',0     ; DATA XREF: .text:01007688o
		align 2
word_10080FA	dw 8Fh			; DATA XREF: .text:01007734o
		db 'DeleteObject',0
		align 2
word_100810A	dw 3Dh			; DATA XREF: .text:01007730o
		db 'CreateFontIndirectW',0
word_1008120	dw 16Bh			; DATA XREF: .text:0100772Co
		db 'GetDeviceCaps',0
word_1008130	dw 197h			; DATA XREF: .text:01007728o
		db 'GetObjectW',0
		align 2
word_100813E	dw 1A5h			; DATA XREF: .text:01007724o
		db 'GetStockObject',0
		align 10h
word_1008150	dw 0CEh			; DATA XREF: .text:01007720o
		db 'EnumFontsW',0
		align 2
word_100815E	dw 1BBh			; DATA XREF: .text:01007714o
		db 'GetTextFaceW',0
		align 2
word_100816E	dw 20Eh			; DATA XREF: .text:01007750o
		db 'SelectObject',0
		align 2
word_100817E	dw 2Fh			; DATA XREF: .text:0100770Co
		db 'CreateDCW',0
word_100818A	dw 1B5h			; DATA XREF: .text:01007708o
		db 'GetTextExtentPoint32W',0
word_10081A2	dw 24Fh			; DATA XREF: .text:01007718o
		db 'TextOutW',0
		align 2
word_10081AE	dw 8Ch			; DATA XREF: .text:01007700o
		db 'DeleteDC',0
		align 2
word_10081BA	dw 96h			; DATA XREF: .text:010076FCo
		db 'EndDoc',0
		align 4
word_10081C4	dw 0			; DATA XREF: .text:010076F8o
		db 'AbortDoc',0
		align 10h
word_10081D0	dw 98h			; DATA XREF: .text:off_10076F4o
		db 'EndPage',0
word_10081DA	dw 248h			; DATA XREF: .text:01007704o
		db 'StartPage',0
word_10081E6	dw 246h			; DATA XREF: .text:0100771Co
		db 'StartDocW',0
word_10081F2	dw 210h			; DATA XREF: .text:01007710o
		db 'SetAbortProc',0
		align 2
word_1008202	dw 1BDh			; DATA XREF: .text:01007738o
		db 'GetTextMetricsW',0
word_1008214	dw 216h			; DATA XREF: .text:0100773Co
		db 'SetBkMode',0
word_1008220	dw 1CBh			; DATA XREF: .text:01007740o
		db 'LPtoDP',0
		align 2
word_100822A	dw 242h			; DATA XREF: .text:01007744o
		db 'SetWindowExtEx',0
		align 4
word_100823C	dw 23Eh			; DATA XREF: .text:01007748o
		db 'SetViewportExtEx',0
		align 10h
word_1008250	dw 22Bh			; DATA XREF: .text:0100774Co
		db 'SetMapMode',0
		align 2
aGdi32_dll	db 'GDI32.dll',0        ; DATA XREF: .text:0100769Co
word_1008268	dw 1E9h			; DATA XREF: .text:010078ECo
		db 'MoveWindow',0
		align 2
word_1008276	dw 193h			; DATA XREF: .text:010078F0o
		db 'InvalidateRect',0
		align 4
word_1008288	dw 2D3h			; DATA XREF: .text:010078F4o
		db 'WinHelpW',0
		align 4
word_1008294	dw 110h			; DATA XREF: .text:010078F8o
		db 'GetDlgCtrlID',0
		align 4
word_10082A4	dw 3Ch			; DATA XREF: .text:010078FCo
		db 'ChildWindowFromPoint',0
		align 4
word_10082BC	dw 231h			; DATA XREF: .text:01007900o
		db 'ScreenToClient',0
		align 2
word_10082CE	dw 10Bh			; DATA XREF: .text:01007904o
		db 'GetCursorPos',0
		align 2
word_10082DE	dw 237h			; DATA XREF: .text:01007908o
		db 'SendDlgItemMessageW',0
word_10082F4	dw 240h			; DATA XREF: .text:0100790Co
		db 'SendMessageW',0
		align 4
word_1008304	dw 2Ch			; DATA XREF: .text:01007910o
		db 'CharNextW',0
word_1008310	dw 39h			; DATA XREF: .text:01007914o
		db 'CheckMenuItem',0
word_1008320	dw 42h			; DATA XREF: .text:01007918o
		db 'CloseClipboard',0
		align 2
word_1008332	dw 19Fh			; DATA XREF: .text:0100791Co
		db 'IsClipboardFormatAvailable',0
		align 10h
word_1008350	dw 1F3h			; DATA XREF: .text:01007920o
		db 'OpenClipboard',0
word_1008360	dw 137h			; DATA XREF: .text:01007924o
		db 'GetMenuState',0
		align 10h
word_1008370	dw 0C2h			; DATA XREF: .text:01007928o
		db 'EnableMenuItem',0
		align 2
word_1008382	dw 159h			; DATA XREF: .text:0100792Co
		db 'GetSubMenu',0
		align 10h
word_1008390	dw 12Ch			; DATA XREF: .text:01007930o
		db 'GetMenu',0
word_100839A	dw 1E3h			; DATA XREF: .text:01007934o
		db 'MessageBoxW',0
word_10083A8	dw 281h			; DATA XREF: .text:01007938o
		db 'SetWindowLongW',0
		align 2
word_10083BA	dw 16Fh			; DATA XREF: .text:0100793Co
		db 'GetWindowLongW',0
		align 4
word_10083CC	dw 111h			; DATA XREF: .text:01007940o
		db 'GetDlgItem',0
		align 2
word_10083DA	dw 256h			; DATA XREF: .text:01007944o
		db 'SetFocus',0
		align 2
word_10083E6	dw 254h			; DATA XREF: .text:01007948o
		db 'SetDlgItemTextW',0
word_10083F8	dw 2D9h			; DATA XREF: .text:0100794Co
		db 'wsprintfW',0
word_1008404	dw 114h			; DATA XREF: .text:01007950o
		db 'GetDlgItemTextW',0
word_1008416	dw 0C6h			; DATA XREF: .text:01007954o
		db 'EndDialog',0
word_1008422	dw 145h			; DATA XREF: .text:01007958o
		db 'GetParent',0
word_100842E	dw 2ACh			; DATA XREF: .text:0100795Co
		db 'UnhookWinEvent',0
		align 10h
word_1008440	dw 0A2h			; DATA XREF: .text:01007960o
		db 'DispatchMessageW',0
		align 4
word_1008454	dw 2AAh			; DATA XREF: .text:01007964o
		db 'TranslateMessage',0
		align 4
word_1008468	dw 2A8h			; DATA XREF: .text:01007968o
		db 'TranslateAcceleratorW',0
word_1008480	dw 1A2h			; DATA XREF: .text:0100796Co
		db 'IsDialogMessageW',0
		align 4
word_1008494	dw 200h			; DATA XREF: .text:01007970o
		db 'PostMessageW',0
		align 4
word_10084A4	dw 13Eh			; DATA XREF: .text:01007974o
		db 'GetMessageW',0
word_10084B2	dw 27Eh			; DATA XREF: .text:01007978o
		db 'SetWinEventHook',0
word_10084C4	dw 15Dh			; DATA XREF: .text:010078E8o
		db 'GetSystemMetrics',0
		align 4
word_10084D8	dw 287h			; DATA XREF: .text:010078BCo
		db 'SetWindowTextW',0
		align 2
word_10084EA	dw 1BCh			; DATA XREF: .text:010078B8o
		db 'LoadIconW',0
word_10084F6	dw 116h			; DATA XREF: .text:010078B4o
		db 'GetFocus',0
		align 2
word_1008502	dw 10Eh			; DATA XREF: .text:010078B0o
		db 'GetDesktopWindow',0
		align 2
word_1008516	dw 292h			; DATA XREF: .text:0100787Co
		db 'ShowWindow',0
		align 4
word_1008524	dw 0FFh			; DATA XREF: .text:off_1007854o
		db 'GetClientRect',0
word_1008534	dw 24Dh			; DATA XREF: .text:01007858o
		db 'SetCursor',0
word_1008540	dw 22Ah			; DATA XREF: .text:0100785Co
		db 'ReleaseDC',0
word_100854C	dw 10Ch			; DATA XREF: .text:01007860o
		db 'GetDC',0
word_1008554	dw 9Fh			; DATA XREF: .text:01007864o
		db 'DialogBoxParamW',0
word_1008566	dw 243h			; DATA XREF: .text:01007868o
		db 'SetActiveWindow',0
word_1008578	dw 122h			; DATA XREF: .text:0100786Co
		db 'GetKeyboardLayout',0
word_100858C	dw 8Fh			; DATA XREF: .text:01007870o
		db 'DefWindowProcW',0
		align 2
word_100859E	dw 99h			; DATA XREF: .text:01007874o
		db 'DestroyWindow',0
word_10085AE	dw 1DBh			; DATA XREF: .text:01007878o
		db 'MessageBeep',0
word_10085BC	dw 201h			; DATA XREF: .text:010078C0o
		db 'PostQuitMessage',0
word_10085CE	dw 117h			; DATA XREF: .text:01007880o
		db 'GetForegroundWindow',0
word_10085E4	dw 1A6h			; DATA XREF: .text:01007884o
		db 'IsIconic',0
		align 10h
word_10085F0	dw 173h			; DATA XREF: .text:01007888o
		db 'GetWindowPlacement',0
		align 2
word_1008606	dw 37h			; DATA XREF: .text:0100788Co
		db 'CharUpperW',0
		align 4
word_1008614	dw 1C9h			; DATA XREF: .text:01007890o
		db 'LoadStringW',0
word_1008622	dw 1B4h			; DATA XREF: .text:01007894o
		db 'LoadAcceleratorsW',0
word_1008636	dw 15Ch			; DATA XREF: .text:01007898o
		db 'GetSystemMenu',0
word_1008646	dw 218h			; DATA XREF: .text:0100789Co
		db 'RegisterClassExW',0
		align 2
word_100865A	dw 1BEh			; DATA XREF: .text:010078A0o
		db 'LoadImageW',0
		align 4
word_1008668	dw 1BAh			; DATA XREF: .text:010078A4o
		db 'LoadCursorW',0
word_1008676	dw 282h			; DATA XREF: .text:010078A8o
		db 'SetWindowPlacement',0
		align 4
word_100868C	dw 61h			; DATA XREF: .text:010078ACo
		db 'CreateWindowExW',0
word_100869E	dw 228h			; DATA XREF: .text:010078C4o
		db 'RegisterWindowMessageW',0
		align 4
word_10086B8	dw 2BBh			; DATA XREF: .text:010078C8o
		db 'UpdateWindow',0
		align 4
word_10086C8	dw 26Fh			; DATA XREF: .text:010078CCo
		db 'SetScrollPos',0
		align 4
word_10086D8	dw 29h			; DATA XREF: .text:010078D0o
		db 'CharLowerW',0
		align 2
word_10086E6	dw 1FEh			; DATA XREF: .text:010078D4o
		db 'PeekMessageW',0
		align 2
word_10086F6	dw 0C4h			; DATA XREF: .text:010078D8o
		db 'EnableWindow',0
		align 2
word_1008706	dw 0BEh			; DATA XREF: .text:010078DCo
		db 'DrawTextExW',0
word_1008714	dw 56h			; DATA XREF: .text:010078E0o
		db 'CreateDialogParamW',0
		align 2
word_100872A	dw 17Ah			; DATA XREF: .text:010078E4o
		db 'GetWindowTextW',0
		align 4
aUser32_dll	db 'USER32.dll',0       ; DATA XREF: .text:010076B0o
		align 100h
		dd 200h	dup(?)
_text		ends

; Section 2. (virtual address 00009000)
; Virtual size			: 00001BA8 (   7080.)
; Section size in file		: 00000800 (   2048.)
; Offset to raw	data for section: 00007C00
; Flags	C0000040: Data Readable	Writable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
_data		segment	para public 'DATA' use32
		assume cs:_data
		;org 1009000h
unk_1009000	db    0			; DATA XREF: start+104o
		db    0
		db    0
		db    0
		db 0D4h	; �
		db  70h	; p
		db    0
		db    1
unk_1009008	db    0			; DATA XREF: start+FFo
		db    0
		db    0
		db    0
unk_100900C	db    0			; DATA XREF: start+CEo
		db    0
		db    0
		db    0
unk_1009010	db    0			; DATA XREF: start+C9o
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
; BYTE Data
Data		dd 78h			; DATA XREF: sub_1002B87+4EEr
					; sub_1002B87+5A5w ...
dword_100901C	dd 1			; DATA XREF: sub_100270F+31r
					; sub_100270F+72r ...
; const	WCHAR ClassName
ClassName:				; DATA XREF: sub_10044D7+5Bo
					; sub_1004565+129o
		unicode	0, <Notepad>,0
; int dword_1009030
dword_1009030	dd 0FFFFFFFFh		; DATA XREF: sub_1001A28+9Ar
					; sub_1002452+66w ...
; LPCWSTR dword_1009034
dword_1009034	dd 1			; DATA XREF: sub_100419E+C7r
					; sub_10042F9+100r ...
; LPCWSTR dword_1009038
dword_1009038	dd 2			; DATA XREF: sub_100419E+F6r
					; sub_10042F9:loc_100440Er ...
; LPCWSTR dword_100903C
dword_100903C	dd 3			; DATA XREF: sub_100270F+9Br
					; .data:010090F0o
; LPCWSTR lpString2
lpString2	dd 4			; DATA XREF: sub_100270F+78r
					; sub_1002A55+23r ...
; LPCWSTR dword_1009044
dword_1009044	dd 5			; DATA XREF: sub_1002A55:loc_1002B50r
					; .data:01009100o
; LPCWSTR dword_1009048
dword_1009048	dd 6			; DATA XREF: sub_100594C+169r
					; .data:010090FCo
; LPCWSTR dword_100904C
dword_100904C	dd 7			; DATA XREF: sub_100270F+1D6r
					; sub_1003429+19Cr ...
; LPCWSTR dword_1009050
dword_1009050	dd 8			; DATA XREF: sub_1005179+2BBr
					; sub_1005179+57Er ...
; LPCWSTR lpCaption
lpCaption	dd 9			; DATA XREF: sub_1001FF0+6Ar
					; sub_100270F+A7r ...
unk_1009058	db  0Ah			; DATA XREF: .data:0100910Co
		db    0
		db    0
		db    0
unk_100905C	db  0Bh			; DATA XREF: .data:01009110o
		db    0
		db    0
		db    0
; LPCWSTR dword_1009060
dword_1009060	dd 0Ch			; DATA XREF: sub_1006E4B+7Dr
					; .data:01009114o
dword_1009064	dd 0Dh			; DATA XREF: sub_100419E:loc_1004281r
					; sub_10042F9:loc_1004400r ...
; LPCWSTR dword_1009068
dword_1009068	dd 0Eh			; DATA XREF: sub_1004EAE+5Br
					; .data:0100911Co
; LPCWSTR dword_100906C
dword_100906C	dd 0Fh			; DATA XREF: sub_1002B87+5EEr
					; .data:01009120o
dword_1009070	dd 10h			; DATA XREF: sub_10040BA+8Br
					; .data:01009124o
; LPCWSTR lpszHelp
lpszHelp	dd 11h			; DATA XREF: sub_1001A28+127r
					; sub_1001A28+155r ...
; LPCWSTR dword_1009078
dword_1009078	dd 12h			; DATA XREF: sub_10040BA+6Fr
					; .data:01009170o
; LPCWSTR dword_100907C
dword_100907C	dd 13h			; DATA XREF: sub_10040BA+7Er
					; .data:01009174o
dword_1009080	dd 2Dh			; DATA XREF: sub_1006091+5Er
					; sub_1006091:loc_10063D0r ...
; LPCWSTR dword_1009084
dword_1009084	dd 14h			; DATA XREF: sub_1004458+11r
					; .data:0100912Co
; LPCWSTR dword_1009088
dword_1009088	dd 15h			; DATA XREF: sub_1004458+32r
					; .data:01009130o
dword_100908C	dd 16h			; DATA XREF: sub_1002B87+1B1r
					; .data:01009134o
dword_1009090	dd 17h			; DATA XREF: sub_100270F+164r
					; sub_1002B87+C7r ...
dword_1009094	dd 18h			; DATA XREF: sub_1003429+14Cr
					; .data:0100913Co
; LPCWSTR dword_1009098
dword_1009098	dd 19h			; DATA XREF: sub_1006428+33r
					; sub_1006428+AAr ...
dword_100909C	dd 1Ah			; DATA XREF: sub_100419E:loc_1004289r
					; sub_10042F9:loc_1004407r ...
; LPCWSTR dword_10090A0
dword_10090A0	dd 1Bh			; DATA XREF: sub_1004EAE+13Er
					; .data:01009148o
; LPCWSTR dword_10090A4
dword_10090A4	dd 1Ch			; DATA XREF: sub_1006773+608r
					; .data:01009150o
; wchar_t *dword_10090A8
dword_10090A8	dd 1Dh			; DATA XREF: sub_1001FF0+3Er
					; .data:0100914Co
; LPCWSTR dword_10090AC
dword_10090AC	dd 1Eh			; DATA XREF: DialogFunc+D7r
					; .data:01009154o
; LPCWSTR lpText
lpText		dd 1Fh			; DATA XREF: DialogFunc+DDr
					; .data:01009158o
; LPARAM lParam
lParam		dd 20h			; DATA XREF: sub_1001A28+54r
					; sub_1001A28+9Fr ...
; LPARAM dword_10090B8
dword_10090B8	dd 21h			; DATA XREF: sub_1001A28+6Dr
					; sub_1001A28:loc_1001AEBr ...
; LPARAM dword_10090BC
dword_10090BC	dd 22h			; DATA XREF: sub_1001A28+7Cr
					; sub_1001A28:loc_1001AE3r ...
; LPARAM dword_10090C0
dword_10090C0	dd 23h			; DATA XREF: sub_1001A28+8Br
					; sub_1001A28+B3r ...
; wchar_t *dword_10090C4
dword_10090C4	dd 24h			; DATA XREF: sub_1006773+498r
					; .data:0100916Co
; wchar_t *Format
Format		dd 25h			; DATA XREF: sub_1001C42+83r
					; sub_1002A55+C3r ...
unk_10090CC	db  26h	; &		; DATA XREF: .data:0100917Co
		db    0
		db    0
		db    0
unk_10090D0	db  27h	; '             ; DATA XREF: .data:01009180o
		db    0
		db    0
		db    0
unk_10090D4	db  28h	; (		; DATA XREF: .data:01009184o
		db    0
		db    0
		db    0
unk_10090D8	db  29h	; )		; DATA XREF: .data:01009188o
		db    0
		db    0
		db    0
unk_10090DC	db  2Ah	; *		; DATA XREF: .data:0100918Co
		db    0
		db    0
		db    0
unk_10090E0	db  2Bh	; +		; DATA XREF: .data:01009190o
		db    0
		db    0
		db    0
unk_10090E4	db  2Ch	; ,		; DATA XREF: .data:01009194o
		db    0
		db    0
		db    0
off_10090E8	dd offset dword_1009034	; DATA XREF: sub_1004047:loc_1004060r
					; sub_10040BA+3Ao
		dd offset dword_1009038
		dd offset dword_100903C
		dd offset lpString2
		dd offset dword_100904C
		dd offset dword_1009048
		dd offset dword_1009044
		dd offset dword_1009050
		dd offset lpCaption
		dd offset unk_1009058
		dd offset unk_100905C
		dd offset dword_1009060
		dd offset dword_1009064
		dd offset dword_1009068
		dd offset dword_100906C
		dd offset dword_1009070
		dd offset lpszHelp
		dd offset dword_1009084
		dd offset dword_1009088
		dd offset dword_100908C
		dd offset dword_1009090
		dd offset dword_1009094
		dd offset dword_1009098
		dd offset dword_100909C
		dd offset dword_10090A0
		dd offset dword_10090A8
		dd offset dword_10090A4
		dd offset dword_10090AC
		dd offset lpText
		dd offset lParam
		dd offset dword_10090B8
		dd offset dword_10090BC
		dd offset dword_10090C0
		dd offset dword_10090C4
		dd offset dword_1009078
		dd offset dword_100907C
		dd offset Format
		dd offset unk_10090CC
		dd offset unk_10090D0
		dd offset unk_10090D4
		dd offset unk_10090D8
		dd offset unk_10090DC
		dd offset unk_10090E0
		dd offset unk_10090E4
		dd offset dword_1009080
off_100919C	dd offset szOtherStuff	; DATA XREF: sub_10040BA+5Fo
dword_10091A0	dd 0FFFFh		; DATA XREF: sub_1001FF0:loc_1002011r
off_10091A4	dd offset dword_100904C	; DATA XREF: sub_1001FF0+29r
		db    2
		db    0
		db    0
		db    0
		db  58h	; X
		db  90h	; �
		db    0
		db    1
		db  0Ah
		db    0
		db    0
		db    0
		db  5Ch	; \
		db  90h	; �
		db    0
		db    1
		db    5
		db    0
		db    0
		db    0
		db  4Ch	; L
		db  90h	; �
		db    0
		db    1
		db    6
		db    0
		db    0
		db    0
		db  4Ch	; L
		db  90h	; �
		db    0
		db    1
		db    4
		db  10h
		db    0
		db    0
		db  98h	; �
		db  90h	; �
		db    0
		db    1
		db    5
		db  10h
		db    0
		db    0
		db  4Ch	; L
		db  90h	; �
		db    0
		db    1
		db    8
		db  10h
		db    0
		db    0
		db  9Ch	; �
		db  91h	; �
		db    0
		db    1
unk_10091E0	db 0EFh	; �		; DATA XREF: sub_1004EAE+E2o
		db 0BBh	; �
		db 0BFh	; �
		db    0
unk_10091E4	db 0FFh			; DATA XREF: sub_1004EAE+1C9o
		db 0FEh	; �
		db    0
		db    0
unk_10091E8	db 0FEh	; �		; DATA XREF: sub_1004EAE+17Fo
		db 0FFh
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
; const	WCHAR word_10091F0
word_10091F0	dw 59h			; DATA XREF: sub_1006091:loc_1006228o
					; sub_1006091+1BDo ...
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
; const	WCHAR word_10093F8
word_10093F8	dw 59h			; DATA XREF: sub_1006091:loc_1006255o
					; sub_1006091+1EAo ...
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
dword_1009600	dd 0FFFF44BFh		; DATA XREF: .text:0100713Bw
					; sub_1007147+E1r
___security_cookie dd 0BB40h		; DATA XREF: .text:010018E4o
					; sub_1001C42+Br ...
dword_1009608	dd 1			; DATA XREF: start+B0r
		align 20h
dword_1009620	dd 0			; DATA XREF: sub_1001C42+79r
					; sub_1001C42+BDw
dword_1009624	dd 0			; DATA XREF: sub_1001C42+71r
					; sub_1001C42+C5w
; const	WCHAR FileName
FileName	dw 0			; DATA XREF: sub_100337E+26o
					; sub_10033DC+20o
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; HWND dword_1009830
dword_1009830	dd ?			; DATA XREF: sub_1001D73+Fr
					; sub_1001FF0+71r ...
; HWND dword_1009834
dword_1009834	dd ?			; DATA XREF: sub_1001C42+98r
					; sub_1002A55+D8r ...
; HWND hWnd
hWnd		dd ?			; DATA XREF: sub_10019E0+9r
					; sub_10019E0+33r ...
; HWND hDlg
hDlg		dd ?			; DATA XREF: sub_1002936:loc_10029CCr
					; sub_1002B87:loc_1002F5Cr ...
; BYTE dword_1009840
dword_1009840	dd ?			; DATA XREF: sub_10019E0+15r
					; sub_1001D73+16Cr ...
dword_1009844	dd ?			; DATA XREF: sub_1002B87+60Fw
					; sub_1002B87+676r
dword_1009848	dd ?			; DATA XREF: sub_1003429:loc_10038E1r
					; sub_1003429+4C1w ...
dword_100984C	dd ?			; DATA XREF: sub_1003429:loc_1003842r
					; sub_1003429:loc_1003883r ...
; WPARAM dword_1009850
dword_1009850	dd ?			; DATA XREF: sub_1001D73+114r
					; sub_1001D73+14Fr ...
dword_1009854	dd ?			; DATA XREF: sub_100270F+A1w
					; sub_100270F+C1w ...
; BYTE dword_1009858
dword_1009858	dd ?			; DATA XREF: sub_1003A39+1D3r
					; sub_1003C92+29Aw ...
; WPARAM wParam
wParam		dd ?			; DATA XREF: sub_1003429+1DCr
					; sub_1003429+227o ...
; LPARAM dword_1009860
dword_1009860	dd ?			; DATA XREF: sub_1003429+1E3r
					; sub_1003429+222o ...
		align 8
; const	WCHAR String2
String2		dw ?			; DATA XREF: sub_1002452+1CDo
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; int nHeight
nHeight		dd ?			; DATA XREF: sub_1003C92+28Cw
					; sub_1004565+106r ...
; int nWidth
nWidth		dd ?			; DATA XREF: sub_1003C92+279w
					; sub_1004565+111r ...
; int X
X		dd ?			; DATA XREF: sub_1003C92+266w
					; sub_1004565+11Dr ...
; int Y
Y		dd ?			; DATA XREF: sub_1003C92+253w
					; sub_1004565+117r ...
; int dword_1009A80
dword_1009A80	dd ?			; DATA XREF: sub_100419E:loc_10042D2r
					; sub_10042F9:loc_100442Ar ...
; BYTE dword_1009A84
dword_1009A84	dd ?			; DATA XREF: sub_1003A39+13Er
					; sub_1003C92+1A8w
; LPARAM dword_1009A88
dword_1009A88	dd ?			; DATA XREF: sub_1004C49:loc_1004C6Eo
					; sub_1004CAB+34r
; WPARAM dword_1009A8C
dword_1009A8C	dd ?			; DATA XREF: sub_1004C49+2Ao
					; sub_1004CAB+3Ar
; int dword_1009A90
dword_1009A90	dd ?			; DATA XREF: sub_100207F+80r
					; sub_100207F+A2r ...
dword_1009A94	dd ?			; DATA XREF: sub_1003429+2C4w
					; sub_1003429+31Dw ...
; HMENU	dword_1009A98
dword_1009A98	dd ?			; DATA XREF: sub_10065CB+22r
					; sub_10065CB+53w
dword_1009A9C	dd ?			; DATA XREF: sub_10072C3:loc_1007332r
					; sub_10072C3+83w
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
dword_1009AA4	dd ?			; DATA XREF: sub_10072C3+26r
					; sub_10072C3:loc_100734Dw
; HMODULE hModule
hModule		dd ?			; DATA XREF: sub_10072C3+Br
					; sub_10072C3+4Dw ...
dword_1009AAC	dd ?			; DATA XREF: start+E4r
dword_1009AB0	dd ?			; DATA XREF: start+D8r
dword_1009AB4	dd ?			; DATA XREF: start+97r
dword_1009AB8	dd ?			; DATA XREF: start+89r
dword_1009ABC	dd ?			; DATA XREF: sub_1006091:loc_10062E7r
					; sub_1006773+3D1w ...
dword_1009AC0	dd ?			; DATA XREF: sub_1006657+9Cr
					; sub_1006657+F2r ...
; int x
x		dd ?			; DATA XREF: sub_1006657+68r
					; sub_1006657+A3r ...
dword_1009AC8	dd ?			; DATA XREF: sub_1006657+42r
					; sub_1006773+2A0w ...
dword_1009ACC	dd ?			; DATA XREF: sub_1006657+30r
					; sub_1006773+27Cw ...
dword_1009AD0	dd ?			; DATA XREF: sub_1005E0C+52w
					; sub_1006773+272r
dword_1009AD4	dd ?			; DATA XREF: sub_1005E0C+4Aw
					; sub_1006773+22Br
; int y
y		dd ?			; DATA XREF: sub_1005E0C+40w
					; sub_1006773+E2r ...
; int dword_1009ADC
dword_1009ADC	dd ?			; DATA XREF: sub_1005E0C+36w
					; sub_1006773+E8r ...
dword_1009AE0	dd ?			; DATA XREF: sub_1005E0C+2Cw
					; sub_1006773+A0r
dword_1009AE4	dd ?			; DATA XREF: sub_1005E0C+22w
					; sub_1006657:loc_100668Er ...
dword_1009AE8	dd ?			; DATA XREF: sub_1005E0C+18w
					; sub_1006657+97r ...
		align 10h
; struct _SYSTEMTIME SystemTime
SystemTime	_SYSTEMTIME <?>		; DATA XREF: sub_1006773+5Do
; wchar_t Dest
Dest		dw ?			; DATA XREF: sub_1006091+85w
					; sub_1006091+147w ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; const	WCHAR word_1009D08
word_1009D08	dw ?			; DATA XREF: sub_1006657:loc_10066CEr
					; sub_1006657+84o
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; const	WCHAR word_1009F10
word_1009F10	dw ?			; DATA XREF: sub_1006657:loc_1006722r
					; sub_1006657+D9o
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; struct tagPOINT pt
pt		tagPOINT <?>		; DATA XREF: sub_1006773+114o
					; sub_1006773+215r ...
dword_100A128	dd ?			; DATA XREF: sub_1006773+256r
dword_100A12C	dd ?			; DATA XREF: sub_1006773+296r
dword_100A130	dd ?			; DATA XREF: sub_1006657+3Cr
					; sub_1006773+236w ...
dword_100A134	dd ?			; DATA XREF: proc:loc_1005DEFr
					; proc+56r ...
; HWND dword_100A138
dword_100A138	dd ?			; DATA XREF: proc+20r sub_1005F3C+Er ...
dword_100A13C	dd ?			; DATA XREF: sub_1006773+226w
					; sub_1006773+4DAr
; WCHAR	pPrinterName
pPrinterName	dw ?			; DATA XREF: sub_10042F9+A9w
					; sub_10042F9:loc_10043B7w ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; const	WCHAR word_100A340
word_100A340	dw ?			; DATA XREF: sub_1002B87+2BBo
					; sub_1005F63+103o
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; const	WCHAR word_100A390
word_100A390	dw ?			; DATA XREF: sub_1002B87+2C7o
					; sub_1005F63+119o
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; WCHAR	String1
String1		dw ?			; DATA XREF: sub_1002B87+2C0o
					; sub_1003A39+163o ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; WCHAR	word_100A430
word_100A430	dw ?			; DATA XREF: sub_1002B87+2CCo
					; sub_1003A39+175o ...
		align 80h
; HANDLE hFile
hFile		dd ?			; DATA XREF: sub_1002B87+206r
					; sub_1002B87+22Fw ...
dword_100A484	dd ?			; DATA XREF: sub_1004565+47w
dword_100A488	dd ?			; DATA XREF: sub_1003429:loc_10036CAr
					; sub_1004565+33w
		align 20h
; struct tagPSDW stru_100A4A0
stru_100A4A0	tagPSDW	<?>		; DATA XREF: sub_1002B87+27Bo
					; sub_1004565+DCw ...
		align 10h
; struct tagFINDREPLACEW stru_100A500
stru_100A500	tagFINDREPLACEW	<?>	; DATA XREF: sub_1002B87:loc_1002F71o
					; sub_1002B87+450o ...
dword_100A528	dd ?			; DATA XREF: sub_1001A28+42w
					; sub_1001A28+A5w ...
		align 20h
; WCHAR	word_100A540
word_100A540	dw ?			; DATA XREF: sub_100270F+180o
					; sub_1002B87+EFo ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; WCHAR	word_100A5E0
word_100A5E0	dw ?			; DATA XREF: sub_1002B87+1C0o
					; sub_1004565:loc_1004A9Bo
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; struct tagOFNW stru_100A680
stru_100A680	tagOFNW	<?>		; DATA XREF: sub_100270F+112o
					; sub_1002B87+12Ao ...
; HACCEL hAccTable
hAccTable	dd ?			; DATA XREF: sub_1002936+B2r
					; sub_100419E+5Fw ...
; HMENU	hMenu
hMenu		dd ?			; DATA XREF: sub_1003429+43Cr
					; sub_100419E+47w
dword_100A6E0	dd ?			; DATA XREF: sub_10019E0+21r
					; sub_1004565+26Dw
		align 20h
unk_100A700	db    ?	;		; DATA XREF: sub_1002B87+3F9o
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; const	WCHAR word_100A800
word_100A800	dw ?			; DATA XREF: sub_1002B87+40Co
					; sub_1002B87:loc_1002FB6r ...
		align 100h
; const	WCHAR word_100A900
word_100A900	dw ?			; DATA XREF: sub_100270F+7Do
					; sub_100270F+14Do ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; LOGFONTW lf
lf		LOGFONTW <?>		; DATA XREF: sub_1002B87+4CBo
					; sub_1002B87+4FEw ...
; HGDIOBJ ho
ho		dd ?			; DATA XREF: sub_1002B87+57Cr
					; sub_1002B87+593w ...
; HINSTANCE hInstance
hInstance	dd ?			; DATA XREF: sub_1002B87+3B1r
					; sub_1002B87+7BCr ...
; HCURSOR hCursor
hCursor		dd ?			; DATA XREF: sub_1002B87+561r
					; sub_1003429+2D1r ...
; HCURSOR dword_100AB88
dword_100AB88	dd ?			; DATA XREF: sub_1002B87:loc_1003131r
					; sub_1003429+305r ...
; HLOCAL dword_100AB8C
dword_100AB8C	dd ?			; DATA XREF: sub_1002936+EEr
					; sub_1004565+3B0w ...
word_100AB90	dw ?			; DATA XREF: sub_1001F02+26r
					; sub_10040BA+93w
		align 4
dword_100AB94	dd ?			; DATA XREF: DialogFunc+B0w
					; DialogFunc+C6r ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
dword_100AB9C	dd ?			; DATA XREF: start+75w
dword_100ABA0	dd ?			; DATA XREF: start+7Cw
dword_100ABA4	dd ?			; DATA XREF: start+A6w
		align 800h
_data		ends


		end start
