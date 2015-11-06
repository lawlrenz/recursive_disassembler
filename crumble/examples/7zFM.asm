
_SCOPETABLE_ENTRY struc	; (sizeof=0xC) ; XREF: ...
EnclosingLevel dd ?
FilterFunc dd ?		; offset
HandlerFunc dd ?	; offset
_SCOPETABLE_ENTRY ends


CPPEH_RECORD struc ; (sizeof=0x18) ; XREF: ...
old_esp	dd ?		; XREF:	...
exc_ptr	dd ?		; XREF:	... ; offset
registration _EH3_EXCEPTION_REGISTRATION ? ; XREF: ...
CPPEH_RECORD ends


_EH3_EXCEPTION_REGISTRATION struc ; (sizeof=0x10, standard type) ; XREF: ...
Next dd	?		; XREF:	... ; offset
ExceptionHandler dd ?	; offset
ScopeTable dd ?		; offset
TryLevel dd ?		; XREF:	...
_EH3_EXCEPTION_REGISTRATION ends


_OSVERSIONINFOA	struc ;	(sizeof=0x94, standard type) ; XREF: ...
dwOSVersionInfoSize dd ?
dwMajorVersion dd ?
dwMinorVersion dd ?
dwBuildNumber dd ?
dwPlatformId dd	?
szCSDVersion db	128 dup(?)
_OSVERSIONINFOA	ends


tagMSG struc ; (sizeof=0x1C, standard type) ; XREF: ...
hwnd dd	?		; offset
message	dd ?
wParam dd ?
lParam dd ?
time dd	?
pt POINT ?
tagMSG ends


POINT struc ; (sizeof=0x8, standard type) ; XREF: ...
x dd ?
y dd ?
POINT ends


tagRECT	struc ;	(sizeof=0x10, standard type) ; XREF: ...
left dd	?
top dd ?
right dd ?
bottom dd ?
tagRECT	ends


WINDOWPLACEMENT	struc ;	(sizeof=0x2C, standard type) ; XREF: ...
length dd ?
flags dd ?
showCmd	dd ?
ptMinPosition POINT ?
ptMaxPosition POINT ?
rcNormalPosition RECT ?
WINDOWPLACEMENT	ends


RECT struc ; (sizeof=0x10, standard type) ; XREF: ...
left dd	?
top dd ?
right dd ?
bottom dd ?
RECT ends


SHFILEINFOA struc ; (sizeof=0x160, standard type) ; XREF: ...
hIcon dd ?		; offset
iIcon dd ?
dwAttributes dd	?
szDisplayName db 260 dup(?)
szTypeName db 80 dup(?)
SHFILEINFOA ends


tagPOINT struc ; (sizeof=0x8, standard type) ; XREF: ...
x dd ?
y dd ?
tagPOINT ends


_RTL_CRITICAL_SECTION struc ; (sizeof=0x18, standard type) ; XREF: ...
DebugInfo dd ?		; offset
LockCount dd ?
RecursionCount dd ?
OwningThread dd	?	; offset
LockSemaphore dd ?	; offset
SpinCount dd ?
_RTL_CRITICAL_SECTION ends


_WIN32_FIND_DATAW struc	; (sizeof=0x250, standard type)	; XREF:	...
dwFileAttributes dd ?
ftCreationTime FILETIME	?
ftLastAccessTime FILETIME ?
ftLastWriteTime	FILETIME ?
nFileSizeHigh dd ?
nFileSizeLow dd	?
dwReserved0 dd ?
dwReserved1 dd ?
cFileName dw 260 dup(?)
cAlternateFileName dw 14 dup(?)
_WIN32_FIND_DATAW ends


FILETIME struc ; (sizeof=0x8, standard type) ; XREF: ...
dwLowDateTime dd ?
dwHighDateTime dd ?
FILETIME ends


_SYSTEMTIME struc ; (sizeof=0x10, standard type) ; XREF: ...
wYear dw ?
wMonth dw ?
wDayOfWeek dw ?
wDay dw	?
wHour dw ?
wMinute	dw ?
wSecond	dw ?
wMilliseconds dw ?
_SYSTEMTIME ends


_STARTUPINFOA struc ; (sizeof=0x44, standard type) ; XREF: ...
cb dd ?
lpReserved dd ?		; offset
lpDesktop dd ?		; offset
lpTitle	dd ?		; offset
dwX dd ?
dwY dd ?
dwXSize	dd ?
dwYSize	dd ?
dwXCountChars dd ?
dwYCountChars dd ?
dwFillAttribute	dd ?
dwFlags	dd ?
wShowWindow dw ?
cbReserved2 dw ?
lpReserved2 dd ?	; offset
hStdInput dd ?		; offset
hStdOutput dd ?		; offset
hStdError dd ?		; offset
_STARTUPINFOA ends


SHELLEXECUTEINFOA struc	; (sizeof=0x3C,	standard type) ; XREF: ...
cbSize dd ?
fMask dd ?
hwnd dd	?		; offset
lpVerb dd ?		; offset
lpFile dd ?		; offset
lpParameters dd	?	; offset
lpDirectory dd ?	; offset
nShow dd ?
hInstApp dd ?		; offset
lpIDList dd ?		; offset
lpClass	dd ?		; offset
hkeyClass dd ?		; offset
dwHotKey dd ?
anonymous_0 _SHELLEXECUTEINFOA::$D915D6B2B775D926C11EEA321E8940B4 ?
hProcess dd ?		; offset
SHELLEXECUTEINFOA ends


_SHELLEXECUTEINFOA::$D915D6B2B775D926C11EEA321E8940B4 union ; (sizeof=0x4, standard type) ; XREF: ...
hIcon dd ?		; offset
hMonitor dd ?		; offset
_SHELLEXECUTEINFOA::$D915D6B2B775D926C11EEA321E8940B4 ends


_SHFILEOPSTRUCTA struc ; (sizeof=0x1E, standard	type) ;	XREF: ...
hwnd dd	?		; offset
wFunc dd ?
pFrom dd ?		; offset
pTo dd ?		; offset
fFlags dw ?
fAnyOperationsAborted dd ?
hNameMappings dd ?	; offset
lpszProgressTitle dd ?	; offset
_SHFILEOPSTRUCTA ends


tagMENUITEMINFOA struc ; (sizeof=0x30, standard	type) ;	XREF: ...
cbSize dd ?
fMask dd ?
fType dd ?
fState dd ?
wID dd ?
hSubMenu dd ?		; offset
hbmpChecked dd ?	; offset
hbmpUnchecked dd ?	; offset
dwItemData dd ?
dwTypeData dd ?		; offset
cch dd ?
hbmpItem dd ?		; offset
tagMENUITEMINFOA ends


MENUITEMINFOA struc ; (sizeof=0x30, standard type) ; XREF: ...
cbSize dd ?
fMask dd ?
fType dd ?
fState dd ?
wID dd ?
hSubMenu dd ?		; offset
hbmpChecked dd ?	; offset
hbmpUnchecked dd ?	; offset
dwItemData dd ?
dwTypeData dd ?		; offset
cch dd ?
hbmpItem dd ?		; offset
MENUITEMINFOA ends


_PROCESS_INFORMATION struc ; (sizeof=0x10, standard type) ; XREF: ...
hProcess dd ?		; offset
hThread	dd ?		; offset
dwProcessId dd ?
dwThreadId dd ?
_PROCESS_INFORMATION ends


_FILETIME struc	; (sizeof=0x8, standard	type) ;	XREF: ...
dwLowDateTime dd ?
dwHighDateTime dd ?
_FILETIME ends


WNDCLASSA struc	; (sizeof=0x28,	standard type) ; XREF: ...
style dd ?
lpfnWndProc dd ?	; offset
cbClsExtra dd ?
cbWndExtra dd ?
hInstance dd ?		; offset
hIcon dd ?		; offset
hCursor	dd ?		; offset
hbrBackground dd ?	; offset
lpszMenuName dd	?	; offset
lpszClassName dd ?	; offset
WNDCLASSA ends


PROPSHEETHEADERA struc ; (sizeof=0x34, standard	type) ;	XREF: ...
dwSize dd ?
dwFlags	dd ?
hwndParent dd ?		; offset
hInstance dd ?		; offset
anonymous_0 _PROPSHEETHEADERA::$E1AF9326B92748E8DAFEF2F13D81386D ?
pszCaption dd ?		; offset
nPages dd ?
anonymous_1 _PROPSHEETHEADERA::$B2BC7FD01B1A93973E79FDE746C43987 ?
anonymous_2 _PROPSHEETHEADERA::$FF46AEFBA3346A074103206F902E6DF5 ?
pfnCallback dd ?	; offset
anonymous_3 _PROPSHEETHEADERA::$5F49E4A18E3DDA5E827B03567227027C ?
hplWatermark dd	?	; offset
anonymous_4 _PROPSHEETHEADERA::$B1482D20F8877C2A38A76E0C7234BF42 ?
PROPSHEETHEADERA ends


_PROPSHEETHEADERA::$E1AF9326B92748E8DAFEF2F13D81386D union ; (sizeof=0x4, standard type) ; XREF: ...
hIcon dd ?		; offset
pszIcon	dd ?		; offset
_PROPSHEETHEADERA::$E1AF9326B92748E8DAFEF2F13D81386D ends


_PROPSHEETHEADERA::$B2BC7FD01B1A93973E79FDE746C43987 union ; (sizeof=0x4, standard type) ; XREF: ...
nStartPage dd ?
pStartPage dd ?		; offset
_PROPSHEETHEADERA::$B2BC7FD01B1A93973E79FDE746C43987 ends


_PROPSHEETHEADERA::$FF46AEFBA3346A074103206F902E6DF5 union ; (sizeof=0x4, standard type) ; XREF: ...
ppsp dd	?		; offset
phpage dd ?		; offset
_PROPSHEETHEADERA::$FF46AEFBA3346A074103206F902E6DF5 ends


_PROPSHEETHEADERA::$5F49E4A18E3DDA5E827B03567227027C union ; (sizeof=0x4, standard type) ; XREF: ...
hbmWatermark dd	?	; offset
pszbmWatermark dd ?	; offset
_PROPSHEETHEADERA::$5F49E4A18E3DDA5E827B03567227027C ends


_PROPSHEETHEADERA::$B1482D20F8877C2A38A76E0C7234BF42 union ; (sizeof=0x4, standard type) ; XREF: ...
hbmHeader dd ?		; offset
pszbmHeader dd ?	; offset
_PROPSHEETHEADERA::$B1482D20F8877C2A38A76E0C7234BF42 ends


PROPSHEETHEADERW struc ; (sizeof=0x34, standard	type) ;	XREF: ...
dwSize dd ?
dwFlags	dd ?
hwndParent dd ?		; offset
hInstance dd ?		; offset
anonymous_0 _PROPSHEETHEADERW::$0FB566F30614F599529D00140F4CD87D ?
pszCaption dd ?		; offset
nPages dd ?
anonymous_1 _PROPSHEETHEADERW::$6475730AE6DAD1B8D6E46E57DCE1E457 ?
anonymous_2 _PROPSHEETHEADERW::$C62D413765EFFC4667F5A15937CA2710 ?
pfnCallback dd ?	; offset
anonymous_3 _PROPSHEETHEADERW::$C635E94935336589E496FC759198B86F ?
hplWatermark dd	?	; offset
anonymous_4 _PROPSHEETHEADERW::$9C028D56AB90D7CB2840D31BA61B8779 ?
PROPSHEETHEADERW ends


_PROPSHEETHEADERW::$0FB566F30614F599529D00140F4CD87D union ; (sizeof=0x4, standard type) ; XREF: ...
hIcon dd ?		; offset
pszIcon	dd ?		; offset
_PROPSHEETHEADERW::$0FB566F30614F599529D00140F4CD87D ends


_PROPSHEETHEADERW::$6475730AE6DAD1B8D6E46E57DCE1E457 union ; (sizeof=0x4, standard type) ; XREF: ...
nStartPage dd ?
pStartPage dd ?		; offset
_PROPSHEETHEADERW::$6475730AE6DAD1B8D6E46E57DCE1E457 ends


_PROPSHEETHEADERW::$C62D413765EFFC4667F5A15937CA2710 union ; (sizeof=0x4, standard type) ; XREF: ...
ppsp dd	?		; offset
phpage dd ?		; offset
_PROPSHEETHEADERW::$C62D413765EFFC4667F5A15937CA2710 ends


_PROPSHEETHEADERW::$C635E94935336589E496FC759198B86F union ; (sizeof=0x4, standard type) ; XREF: ...
hbmWatermark dd	?	; offset
pszbmWatermark dd ?	; offset
_PROPSHEETHEADERW::$C635E94935336589E496FC759198B86F ends


_PROPSHEETHEADERW::$9C028D56AB90D7CB2840D31BA61B8779 union ; (sizeof=0x4, standard type) ; XREF: ...
hbmHeader dd ?		; offset
pszbmHeader dd ?	; offset
_PROPSHEETHEADERW::$9C028D56AB90D7CB2840D31BA61B8779 ends


tagWNDCLASSW struc ; (sizeof=0x28, standard type) ; XREF: ...
style dd ?
lpfnWndProc dd ?	; offset
cbClsExtra dd ?
cbWndExtra dd ?
hInstance dd ?		; offset
hIcon dd ?		; offset
hCursor	dd ?		; offset
hbrBackground dd ?	; offset
lpszMenuName dd	?	; offset
lpszClassName dd ?	; offset
tagWNDCLASSW ends


_NETRESOURCEA struc ; (sizeof=0x20, standard type) ; XREF: ...
dwScope	dd ?
dwType dd ?
dwDisplayType dd ?
dwUsage	dd ?
lpLocalName dd ?	; offset
lpRemoteName dd	?	; offset
lpComment dd ?		; offset
lpProvider dd ?		; offset
_NETRESOURCEA ends


_NETRESOURCEW struc ; (sizeof=0x20, standard type) ; XREF: ...
dwScope	dd ?
dwType dd ?
dwDisplayType dd ?
dwUsage	dd ?
lpLocalName dd ?	; offset
lpRemoteName dd	?	; offset
lpComment dd ?		; offset
lpProvider dd ?		; offset
_NETRESOURCEW ends


tagOFNA	struc ;	(sizeof=0x4C, standard type) ; XREF: ...
lStructSize dd ?
hwndOwner dd ?		; offset
hInstance dd ?		; offset
lpstrFilter dd ?	; offset
lpstrCustomFilter dd ?	; offset
nMaxCustFilter dd ?
nFilterIndex dd	?
lpstrFile dd ?		; offset
nMaxFile dd ?
lpstrFileTitle dd ?	; offset
nMaxFileTitle dd ?
lpstrInitialDir	dd ?	; offset
lpstrTitle dd ?		; offset
Flags dd ?
nFileOffset dw ?
nFileExtension dw ?
lpstrDefExt dd ?	; offset
lCustData dd ?
lpfnHook dd ?		; offset
lpTemplateName dd ?	; offset
tagOFNA	ends


tagOFNW	struc ;	(sizeof=0x4C, standard type) ; XREF: ...
lStructSize dd ?
hwndOwner dd ?		; offset
hInstance dd ?		; offset
lpstrFilter dd ?	; offset
lpstrCustomFilter dd ?	; offset
nMaxCustFilter dd ?
nFilterIndex dd	?
lpstrFile dd ?		; offset
nMaxFile dd ?
lpstrFileTitle dd ?	; offset
nMaxFileTitle dd ?
lpstrInitialDir	dd ?	; offset
lpstrTitle dd ?		; offset
Flags dd ?
nFileOffset dw ?
nFileExtension dw ?
lpstrDefExt dd ?	; offset
lCustData dd ?
lpfnHook dd ?		; offset
lpTemplateName dd ?	; offset
tagOFNW	ends


_WIN32_FIND_DATAA struc	; (sizeof=0x140, standard type)	; XREF:	...
dwFileAttributes dd ?
ftCreationTime FILETIME	?
ftLastAccessTime FILETIME ?
ftLastWriteTime	FILETIME ?
nFileSizeHigh dd ?
nFileSizeLow dd	?
dwReserved0 dd ?
dwReserved1 dd ?
cFileName db 260 dup(?)
cAlternateFileName db 14 dup(?)
_padding db 2 dup(?)
_WIN32_FIND_DATAA ends


STGMEDIUM struc	; (sizeof=0xC, standard	type) ;	XREF: ...
tymed dd ?
anonymous_0 tagSTGMEDIUM::$7B772CC839E5463FC51219F893F364BB ?
pUnkForRelease dd ?	; offset
STGMEDIUM ends


tagSTGMEDIUM::$7B772CC839E5463FC51219F893F364BB	union ;	(sizeof=0x4, standard type) ; XREF: ...
hBitmap	dd ?		; offset
hMetaFilePict dd ?	; offset
hEnhMetaFile dd	?	; offset
hGlobal	dd ?		; offset
lpszFileName dd	?	; offset
pstm dd	?		; offset
pstg dd	?		; offset
tagSTGMEDIUM::$7B772CC839E5463FC51219F893F364BB	ends


INITCOMMONCONTROLSEX struc ; (sizeof=0x8, standard type) ; XREF: ...
dwSize dd ?
dwICC dd ?
INITCOMMONCONTROLSEX ends


TBBUTTON struc ; (sizeof=0x14, standard	type) ;	XREF: ...
iBitmap	dd ?
idCommand dd ?
fsState	db ?
fsStyle	db ?
bReserved db 2 dup(?)
dwData dd ?
iString	dd ?
TBBUTTON ends


VARIANTARG struc ; (sizeof=0x10, standard type)	; XREF:	...
anonymous_0 tagVARIANT::$6474CD83C6657A6DABDF207000DC5FE5 ?
VARIANTARG ends


tagVARIANT::$6474CD83C6657A6DABDF207000DC5FE5 union ; (sizeof=0x10, standard type) ; XREF: ...
anonymous_0 tagVARIANT::$6474CD83C6657A6DABDF207000DC5FE5::$8749951CD3A823784AB28831F11D98F2 ?
decVal DECIMAL ?
tagVARIANT::$6474CD83C6657A6DABDF207000DC5FE5 ends


tagVARIANT::$6474CD83C6657A6DABDF207000DC5FE5::$8749951CD3A823784AB28831F11D98F2 struc ; (sizeof=0x10, standard	type) ;	XREF: ...
vt dw ?
wReserved1 dw ?
wReserved2 dw ?
wReserved3 dw ?
anonymous_0 tagVARIANT::$6474CD83C6657A6DABDF207000DC5FE5::$8749951CD3A823784AB28831F11D98F2::$1752C812EA74BB4956541A744E2B2387	?
tagVARIANT::$6474CD83C6657A6DABDF207000DC5FE5::$8749951CD3A823784AB28831F11D98F2 ends


tagVARIANT::$6474CD83C6657A6DABDF207000DC5FE5::$8749951CD3A823784AB28831F11D98F2::$1752C812EA74BB4956541A744E2B2387 union ; (sizeof=0x8, standard type)	; XREF:	...
lVal dd	?
bVal db	?
iVal dw	?
fltVal dd ?
dblVal dq ?
boolVal	dw ?
scode dd ?
cyVal CY ?
date dq	?
bstrVal	dd ?		; offset
punkVal	dd ?		; offset
pdispVal dd ?		; offset
parray dd ?		; offset
pbVal dd ?		; offset
piVal dd ?		; offset
plVal dd ?		; offset
pfltVal	dd ?		; offset
pdblVal	dd ?		; offset
pboolVal dd ?		; offset
pscode dd ?		; offset
pcyVal dd ?		; offset
pdate dd ?		; offset
pbstrVal dd ?		; offset
ppunkVal dd ?		; offset
ppdispVal dd ?		; offset
pparray	dd ?		; offset
pvarVal	dd ?		; offset
byref dd ?		; offset
cVal db	?
uiVal dw ?
ulVal dd ?
intVal dd ?
uintVal	dd ?
pdecVal	dd ?		; offset
pcVal dd ?		; offset
puiVal dd ?		; offset
pulVal dd ?		; offset
pintVal	dd ?		; offset
puintVal dd ?		; offset
anonymous_0 tagVARIANT::$6474CD83C6657A6DABDF207000DC5FE5::$8749951CD3A823784AB28831F11D98F2::$1752C812EA74BB4956541A744E2B2387::$0FDBD249F1AECD6A49409B6B82281578 ?
tagVARIANT::$6474CD83C6657A6DABDF207000DC5FE5::$8749951CD3A823784AB28831F11D98F2::$1752C812EA74BB4956541A744E2B2387 ends


CY union ; (sizeof=0x8,	standard type) ; XREF: ...
anonymous_0 tagCY::$4ADA6AE34E722E24764E0C4FBCDA3E73 ?
int64 dq ?
CY ends


tagCY::$4ADA6AE34E722E24764E0C4FBCDA3E73 struc ; (sizeof=0x8, standard type) ; XREF: ...
Lo dd ?
Hi dd ?
tagCY::$4ADA6AE34E722E24764E0C4FBCDA3E73 ends


tagVARIANT::$6474CD83C6657A6DABDF207000DC5FE5::$8749951CD3A823784AB28831F11D98F2::$1752C812EA74BB4956541A744E2B2387::$0FDBD249F1AECD6A49409B6B82281578 struc ; (sizeof=0x8, standard type) ; XREF: ...
pvRecord dd ?		; offset
pRecInfo dd ?		; offset
tagVARIANT::$6474CD83C6657A6DABDF207000DC5FE5::$8749951CD3A823784AB28831F11D98F2::$1752C812EA74BB4956541A744E2B2387::$0FDBD249F1AECD6A49409B6B82281578 ends


DECIMAL	struc ;	(sizeof=0x10, standard type) ; XREF: ...
wReserved dw ?
anonymous_0 tagDEC::$00EA3C93EAB4EAE0D94D1E8C5BA4BC26 ?
Hi32 dd	?
anonymous_1 tagDEC::$5450C884C987D55E7B3D2E94E15D6587 ?
DECIMAL	ends


tagDEC::$00EA3C93EAB4EAE0D94D1E8C5BA4BC26 union	; (sizeof=0x2, standard	type) ;	XREF: ...
anonymous_0 tagDEC::$00EA3C93EAB4EAE0D94D1E8C5BA4BC26::$7F8459940C2B08BD5D82B0F27239141B ?
signscale dw ?
tagDEC::$00EA3C93EAB4EAE0D94D1E8C5BA4BC26 ends


tagDEC::$00EA3C93EAB4EAE0D94D1E8C5BA4BC26::$7F8459940C2B08BD5D82B0F27239141B struc ; (sizeof=0x2, standard type) ; XREF: ...
scale db ?
sign db	?
tagDEC::$00EA3C93EAB4EAE0D94D1E8C5BA4BC26::$7F8459940C2B08BD5D82B0F27239141B ends


tagDEC::$5450C884C987D55E7B3D2E94E15D6587 union	; (sizeof=0x8, standard	type) ;	XREF: ...
anonymous_0 tagDEC::$5450C884C987D55E7B3D2E94E15D6587::$674876891A86A76F12C10005982BCA56 ?
Lo64 dq	?
tagDEC::$5450C884C987D55E7B3D2E94E15D6587 ends


tagDEC::$5450C884C987D55E7B3D2E94E15D6587::$674876891A86A76F12C10005982BCA56 struc ; (sizeof=0x8, standard type) ; XREF: ...
Lo32 dd	?
Mid32 dd ?
tagDEC::$5450C884C987D55E7B3D2E94E15D6587::$674876891A86A76F12C10005982BCA56 ends


_msExcInfo struc ; (sizeof=0x8)	; XREF:	...
Id dd ?			; base 10
Proc dd	?		; offset
_msExcInfo ends


_msExcept struc	; (sizeof=0x20,	variable size) ; XREF: ...
Magic dd ?		; base 16
Count dd ?		; base 10
InfoPtr	dd ?		; offset
CountDtr dd ?		; base 10
DtrPtr dd ?		; offset
_unk dd	3 dup(?)
Info _msExcInfo	0 dup(?) ; XREF: ...
_msExcept ends


_msExcExt struc	; (sizeof=0x14)	; XREF:	...
_unk dd	3 dup(?)
Count dd ?		; base 10
RttiBlkPtr dd ?		; offset
_msExcExt ends


_msRttiDscr struc ; (sizeof=0x10) ; XREF: ...
_unk dd	?		; base 16
RttiPtr	dd ?		; offset
spoff dd ?		; base 10
Dtr dd ?		; offset
_msRttiDscr ends


_ms_type_info struc ; (sizeof=0x8, variable size) ; XREF: ...
getInfoPtr dq ?		; offset
Name db	0 dup(?)	; string(C)
_ms_type_info ends


;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2013 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-3215-7394-8A			    |
; |  Universitaet Bonn/	Institut fuer Informatik Abteilung fuer	Informati   |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	1BCE2C02487972FF0D5E6702D79E7A75
; Input	CRC32 :	5DE7C507

; File Name   :	Y:\binaries\7zFM.exe
; Format      :	Portable executable for	80386 (PE)
; Imagebase   :	400000
; Section 1. (virtual address 00001000)
; Virtual size			: 000490CA ( 299210.)
; Section size in file		: 00049200 ( 299520.)
; Offset to raw	data for section: 00000400
; Flags	60000020: Text Executable Readable
; Alignment	: default
; OS type	  :  MS	Windows
; Application type:  Executable	32bit

include	uni.inc	; see unicode subdir of	ida for	info on	unicode

.686p
.mmx
.model flat


; Segment type:	Pure code
; Segment permissions: Read/Execute
_text segment para public 'CODE' use32
assume cs:_text
;org 401000h
assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing



sub_401000 proc	near
cmp	dword_45D4C8, 1
push	esi
mov	esi, ecx
jz	short loc_401025
mov	eax, [esi+8]
mov	ecx, [esi+4]
imul	eax, 188h
sub	ecx, eax
add	ecx, 20Ch
call	sub_40E5B8

loc_401025:
mov	ecx, [esi+4]
push	0
call	sub_402FBC
pop	esi
retn
sub_401000 endp




sub_401031 proc	near

arg_0= dword ptr  4

cmp	dword_45D4C8, 1
push	esi
mov	esi, [esp+4+arg_0]
push	edi
mov	edi, ecx
jnz	short loc_401048
mov	esi, dword_45D4CC

loc_401048:
mov	ecx, [edi+4]
push	0
call	sub_402FBC
imul	esi, 188h
mov	eax, [edi+4]
push	dword ptr [eax+esi+0D4h] ; hWnd
call	ds:SetFocus
mov	eax, [edi+4]
push	0		; lParam
push	1		; wParam
push	14Fh		; Msg
push	dword ptr [eax+esi+0D4h] ; hWnd
call	ds:SendMessageA
pop	edi
pop	esi
retn	4
sub_401031 endp




sub_401086 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	dword ptr [ecx+8]
mov	ecx, [ecx+4]
push	[esp+4+arg_4]
push	[esp+8+arg_0]
call	sub_401E65
retn	8
sub_401086 endp




sub_40109C proc	near
push	dword ptr [ecx+8]
mov	ecx, [ecx+4]
call	sub_402D17
retn
sub_40109C endp




sub_4010A8 proc	near
push	dword ptr [ecx+8]
mov	ecx, [ecx+4]
call	sub_402D3F
retn
sub_4010A8 endp




sub_4010B4 proc	near
mov	eax, [ecx+4]
mov	edx, [ecx+8]
push	0
mov	[eax+0Ch], edx
mov	eax, [eax+3A0h]
mov	[eax+48h], edx
push	dword ptr [ecx+8]
mov	ecx, [ecx+4]
call	sub_403064
retn
sub_4010B4 endp




sub_4010D4 proc	near
mov	edx, [ecx+8]
mov	ecx, [ecx+4]
push	1
pop	eax
cmp	[ecx+8], eax
jle	short loc_4010E6
sub	eax, edx
jmp	short loc_4010E8

loc_4010E6:
mov	eax, edx

loc_4010E8:
add	ecx, 3A0h
push	esi
mov	esi, [ecx]
mov	[esi+48h], eax
mov	eax, [ecx]
pop	esi
mov	[eax+44h], edx
retn
sub_4010D4 endp




sub_4010FB proc	near
mov	eax, [ecx+4]
mov	edx, [eax+3A0h]
lea	ecx, [eax+3A0h]
mov	eax, [eax+0Ch]
mov	[edx+48h], eax
mov	eax, [ecx]
or	dword ptr [eax+44h], 0FFFFFFFFh
retn
sub_4010FB endp




sub_401117 proc	near

arg_0= dword ptr  4

push	[esp+arg_0]
push	dword ptr [ecx+8]
mov	ecx, [ecx+4]
call	sub_403064
retn	4
sub_401117 endp




sub_401129 proc	near

var_2= byte ptr	-2
var_1= byte ptr	-1

push	ecx
push	ebx
push	ebp
push	esi
push	edi
mov	esi, ecx
call	sub_41E998
mov	[esp+14h+var_2], al
call	sub_41EA18
push	10h
mov	[esp+18h+var_1], al
pop	edi
call	sub_41EA4C
test	al, al
jz	short loc_401151
push	30h
pop	edi

loc_401151:
call	sub_41EA66
test	al, al
jz	short loc_40115D
or	edi, 1

loc_40115D:
call	sub_41EA80
mov	bl, al
call	sub_41EA9A
test	al, al
jz	short loc_401170
or	edi, 48h

loc_401170:
push	2
add	esi, 110h
pop	ebp

loc_401179:
mov	al, [esp+14h+var_2]
push	0FFFFFFF0h	; nIndex
push	dword ptr [esi-18h] ; hWnd
mov	[esi], al
mov	al, [esp+1Ch+var_1]
mov	[esi+3], bl
mov	[esi+1], al
mov	[esi-4], edi
call	ds:GetWindowLongA
test	bl, bl
jz	short loc_40119F
or	al, 4
jmp	short loc_4011A1

loc_40119F:
and	al, 0FBh

loc_4011A1:		; dwNewLong
push	eax
push	0FFFFFFF0h	; nIndex
push	dword ptr [esi-18h] ; hWnd
call	ds:SetWindowLongA
lea	ecx, [esi-8Ch]
call	sub_4011C7
add	esi, 188h
dec	ebp
jnz	short loc_401179
pop	edi
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn
sub_401129 endp




sub_4011C7 proc	near
mov	eax, [ecx+74h]
test	eax, eax
jz	short locret_4011E2
push	dword ptr [ecx+88h] ; lParam
push	0		; wParam
push	1036h		; Msg
push	eax		; hWnd
call	ds:SendMessageA

locret_4011E2:
retn
sub_4011C7 endp




sub_4011E3 proc	near
push	esi
mov	esi, ecx
call	sub_41EA32
mov	[esi+4], al
pop	esi
retn
sub_4011E3 endp



; Attributes: bp-based frame

sub_4011F0 proc	near

Memory=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h
arg_10=	dword ptr  18h

mov	eax, offset loc_442264
call	__EH_prolog
sub	esp, 0Ch
push	esi
mov	esi, [ebp+arg_0]
push	edi
mov	edi, ecx
cmp	byte ptr [esi+edi+394h], 0
lea	eax, [esi+edi+394h]
mov	[ebp+arg_0], eax
jz	short loc_40121F
xor	eax, eax
jmp	loc_4012BE

loc_40121F:
lea	eax, [esi+esi*2+1Bh]
push	ebx
push	3
lea	ecx, [ebp+Memory]
lea	ebx, [edi+eax*4]
xor	eax, eax
mov	[ebp+Memory], eax
mov	[ebp+var_14], eax
mov	[ebx+4], edi
mov	[ebx+8], esi
mov	[ebp+var_10], eax
call	sub_403396
mov	eax, [ebp+arg_4]
and	[ebp+var_4], 0
cmp	dword ptr [eax+4], 0
jnz	short loc_40126A
lea	edx, [ebp+Memory]
mov	ecx, esi
call	sub_421255
test	al, al
jnz	short loc_401273
mov	eax, [ebp+Memory]
and	[ebp+var_14], 0
and	word ptr [eax],	0
jmp	short loc_401273

loc_40126A:
push	eax
lea	ecx, [ebp+Memory]
call	sub_40312C

loc_401273:		; int
push	[ebp+arg_10]
lea	ecx, [edi+14h]
mov	eax, [edi]
push	[ebp+arg_C]	; int
push	ecx		; int
push	ebx		; int
push	[ebp+arg_8]	; int
lea	ecx, [ebp+Memory]
push	ecx		; int
lea	ecx, [esi+0Ah]
imul	ecx, 64h
imul	esi, 188h
push	ecx		; hMenu
push	eax		; hWndParent
push	eax		; int
lea	ecx, [esi+edi+84h]
call	sub_40DA7C
test	eax, eax
pop	ebx
jz	short loc_4012AB
mov	esi, eax
jmp	short loc_4012B3

loc_4012AB:
mov	eax, [ebp+arg_0]
xor	esi, esi
mov	byte ptr [eax],	1

loc_4012B3:		; Memory
push	[ebp+Memory]
call	sub_4284D8
pop	ecx
mov	eax, esi

loc_4012BE:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	14h
sub_4011F0 endp




sub_4012CE proc	near
push	ebp
push	esi
mov	esi, ecx
push	edi
mov	eax, [esi+398h]
lea	edi, [esi+398h]
test	eax, eax
jz	short loc_4012ED
and	dword ptr [edi], 0
push	eax		; himl
call	ds:ImageList_Destroy

loc_4012ED:
lea	ebp, [esi+39Ch]
mov	ecx, ebp
call	sub_40137C
cmp	byte ptr [esi+11h], 0
jnz	short loc_401306
cmp	byte ptr [esi+10h], 0
jz	short loc_401378

loc_401306:
mov	al, [esi+13h]
mov	ecx, [esi]	; hWndParent
push	ebx
push	eax		; char
push	ebp		; int
mov	edx, edi
call	sub_40139E
cmp	byte ptr [esi+11h], 0
jz	short loc_40133D
mov	ebx, offset unk_45B0B8

loc_401320:
mov	al, [esi+13h]
mov	edx, ebp
push	eax
mov	al, [esi+12h]
push	eax
push	ebx
mov	ecx, edi
call	sub_401423
add	ebx, 14h
cmp	ebx, offset a7ze ; "7zE"
jb	short loc_401320

loc_40133D:
cmp	byte ptr [esi+10h], 0
jz	short loc_401365
mov	ebx, offset unk_45B068

loc_401348:
mov	al, [esi+13h]
mov	edx, ebp
push	eax
mov	al, [esi+12h]
push	eax
push	ebx
mov	ecx, edi
call	sub_401423
add	ebx, 14h
cmp	ebx, offset unk_45B0B8
jb	short loc_401348

loc_401365:		; lParam
push	0
push	0		; wParam
push	421h		; Msg
push	dword ptr [ebp+0] ; hWnd
call	ds:SendMessageA
pop	ebx

loc_401378:
pop	edi
pop	esi
pop	ebp
retn
sub_4012CE endp




sub_40137C proc	near
push	esi
mov	esi, ecx
mov	eax, [esi]
test	eax, eax
jnz	short loc_401389
mov	al, 1
pop	esi
retn

loc_401389:		; hWnd
push	eax
call	ds:DestroyWindow
test	eax, eax
setnz	al
test	al, al
jz	short loc_40139C
and	dword ptr [esi], 0

loc_40139C:
pop	esi
retn
sub_40137C endp



; Attributes: bp-based frame

; int __thiscall sub_40139E(HWND hWndParent, int, char)
sub_40139E proc	near

var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= byte ptr	 0Ch

push	ebp
mov	ebp, esp
push	ecx
push	ebx
push	esi
xor	esi, esi
push	edi
push	esi		; lpParam
mov	[ebp+var_4], edx
push	hInstance	; hInstance
push	esi		; hMenu
push	ecx		; hWndParent
push	esi		; nHeight
push	esi		; nWidth
push	esi		; Y
push	esi		; X
push	50000B00h	; dwStyle
push	esi		; lpWindowName
push	offset ClassName ; "ToolbarWindow32"
push	esi		; dwExStyle
call	ds:CreateWindowExA
mov	ebx, [ebp+arg_0]
mov	edi, ds:SendMessageA
push	esi		; lParam
push	14h		; wParam
push	41Eh		; Msg
push	eax		; hWnd
mov	[ebx], eax
call	edi ; SendMessageA
mov	al, [ebp+arg_4]
mov	cl, al
push	esi		; cGrow
neg	cl
sbb	ecx, ecx
push	esi		; cInitial
and	ecx, 0Ch
push	21h		; flags
add	ecx, 18h
neg	al
sbb	eax, eax
push	ecx		; cy
and	eax, 18h
add	eax, 18h
push	eax		; cx
call	ds:ImageList_Create
cmp	eax, esi
jz	short loc_40140D
mov	ecx, [ebp+var_4]
mov	[ecx], eax

loc_40140D:
mov	eax, [ebp+var_4]
push	dword ptr [eax]	; lParam
push	esi		; wParam
push	430h		; Msg
push	dword ptr [ebx]	; hWnd
call	edi ; SendMessageA
pop	edi
pop	esi
pop	ebx
leave
retn	8
sub_40139E endp



; Attributes: bp-based frame

sub_401423 proc	near

lParam=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	byte ptr -1Ch
var_1B=	byte ptr -1Bh
var_18=	dword ptr -18h
var_14=	dword ptr -14h
Memory=	dword ptr -10h
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= byte ptr	 0Ch
arg_8= byte ptr	 10h

push	ebp
mov	ebp, esp
sub	esp, 24h
push	ebx
push	esi
mov	esi, [ebp+arg_0]
push	edi
mov	edi, ecx
xor	ebx, ebx
mov	eax, [esi]
mov	[ebp+var_4], edx
mov	[ebp+var_20], eax
lea	eax, [ebp+Memory]
push	eax
mov	ecx, esi
mov	[ebp+lParam], ebx
mov	[ebp+var_1C], 4
mov	[ebp+var_1B], bl
mov	[ebp+var_18], ebx
call	sub_4014C9
cmp	[ebp+arg_4], bl
mov	[ebp+var_14], ebx
jz	short loc_401461
mov	eax, [ebp+Memory]
mov	[ebp+var_14], eax

loc_401461:		; himl
push	dword ptr [edi]
call	ds:ImageList_GetImageCount
cmp	[ebp+arg_8], bl
mov	[ebp+lParam], eax
jz	short loc_401477
movzx	eax, word ptr [esi+4]
jmp	short loc_40147B

loc_401477:
movzx	eax, word ptr [esi+8]

loc_40147B:		; lpBitmapName
push	eax
push	hInstance	; hInstance
call	ds:LoadBitmapA
mov	esi, eax
cmp	esi, ebx
jz	short loc_4014A3
push	0FF00FFh	; crMask
push	esi		; hbmImage
push	dword ptr [edi]	; himl
call	ds:ImageList_AddMasked
push	esi		; ho
call	ds:DeleteObject

loc_4014A3:
lea	eax, [ebp+lParam]
push	eax		; lParam
mov	eax, [ebp+var_4]
push	1		; wParam
push	444h		; Msg
push	dword ptr [eax]	; hWnd
call	ds:SendMessageA
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
pop	edi
pop	esi
pop	ebx
leave
retn	0Ch
sub_401423 endp



; Attributes: bp-based frame

sub_4014C9 proc	near

var_4= dword ptr -4
arg_0= dword ptr  8

push	ebp
mov	ebp, esp
push	ecx
push	dword ptr [ecx+10h]
mov	edx, [ecx+0Ch]
mov	ecx, [ebp+arg_0]
and	[ebp+var_4], 0
call	sub_40B168
mov	eax, [ebp+arg_0]
leave
retn	4
sub_4014C9 endp




sub_4014E6 proc	near
push	esi
mov	esi, ecx
call	sub_4014FE
mov	ecx, esi
call	sub_4012CE
mov	ecx, esi
call	sub_4069DB
pop	esi
retn
sub_4014E6 endp




sub_4014FE proc	near

; FUNCTION CHUNK AT 004210A0 SIZE 0000005A BYTES

mov	eax, ecx
xor	edx, edx
xor	ecx, ecx
cmp	[eax+12h], dl
jz	short loc_40150C
push	1
pop	ecx

loc_40150C:
cmp	[eax+13h], dl
jz	short loc_401514
or	ecx, 2

loc_401514:
cmp	[eax+10h], dl
jz	short loc_40151C
or	ecx, 4

loc_40151C:
cmp	[eax+11h], dl
jz	short loc_401524
or	ecx, 8

loc_401524:
jmp	loc_4210A0
sub_4014FE endp



; Attributes: bp-based frame

sub_401529 proc	near

Memory=	dword ptr -2Ch
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_E= byte ptr	-0Eh
var_D= byte ptr	-0Dh
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h
arg_10=	dword ptr  18h
arg_14=	dword ptr  1Ch

mov	eax, offset loc_442287
call	__EH_prolog
sub	esp, 20h
mov	eax, [ebp+arg_0]
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
push	edi
mov	[ebp+var_14], ebx
mov	[esi], eax
call	sub_40BC70
mov	ecx, esi
call	sub_401761
mov	ecx, esi
call	sub_4012CE
lea	edi, [esi+394h]
xor	eax, eax
stosw
lea	edi, [esi+14h]
mov	ecx, edi
call	sub_4016C9
lea	ecx, [edi+2Ch]
call	sub_40170A
mov	ecx, esi
call	sub_401129
mov	ecx, esi
call	sub_4011E3
cmp	dword ptr [esi+0Ch], 2
jl	short loc_40158B
mov	[esi+0Ch], ebx

loc_40158B:
push	3
lea	ecx, [ebp+var_20]
pop	eax
mov	[ebp+var_1C], eax
mov	[ebp+var_20], eax
call	sub_42137F
mov	eax, [ebp+arg_C]
mov	[ebp+arg_0], ebx
lea	ebx, [ebp+var_20]
mov	[ebp+var_18], eax
lea	edi, [esi+154h]
sub	ebx, eax
jmp	short loc_4015B5

loc_4015B2:
mov	eax, [ebp+var_18]

loc_4015B5:
mov	ecx, [ebx+eax]
mov	[edi-4], ecx
mov	eax, [eax]
mov	ecx, [ebp+arg_0]
mov	[edi], eax
call	sub_41EC14
inc	[ebp+arg_0]
add	[ebp+var_18], 4
mov	[edi+6], al
add	edi, 188h
cmp	[ebp+arg_0], 2
jl	short loc_4015B2
lea	eax, [esi+154h]
xor	edi, edi
mov	[ebp+var_18], eax

loc_4015E8:
mov	eax, [esi+8]
cmp	eax, 1
jg	short loc_40160B
cmp	edi, [esi+0Ch]
jnz	loc_401680
cmp	eax, 1
jnz	short loc_40160B
mov	eax, [ebp+arg_C]
mov	ecx, [eax+4]
add	ecx, [eax]
mov	eax, [ebp+var_18]
mov	[eax], ecx

loc_40160B:
and	[ebp+var_D], 0
and	[ebp+var_E], 0
cmp	edi, [esi+0Ch]
setz	byte ptr [ebp+arg_0+3]
cmp	byte ptr [ebp+arg_0+3],	0
jz	short loc_401625
mov	eax, [ebp+arg_4]
jmp	short loc_40163A

loc_401625:
push	offset word_45D498
lea	ecx, [ebp+Memory]
call	sub_403091
or	[ebp+var_14], 1
and	[ebp+var_4], 0

loc_40163A:
lea	ecx, [ebp+var_E]
push	ecx
lea	ecx, [ebp+var_D]
push	ecx
mov	ecx, esi
push	[ebp+arg_8]
push	eax
push	edi
call	sub_4011F0
or	[ebp+var_4], 0FFFFFFFFh
mov	ebx, eax
test	byte ptr [ebp+var_14], 1
jz	short loc_401667
push	[ebp+Memory]	; Memory
and	[ebp+var_14], 0FFFFFFFEh
call	sub_4284D8
pop	ecx

loc_401667:
test	ebx, ebx
jnz	short loc_4016C5
cmp	byte ptr [ebp+arg_0+3],	bl
jz	short loc_401680
mov	ecx, [ebp+arg_10]
mov	al, [ebp+var_D]
mov	[ecx], al
mov	ecx, [ebp+arg_14]
mov	al, [ebp+var_E]
mov	[ecx], al

loc_401680:
add	[ebp+var_18], 188h
inc	edi
cmp	edi, 2
jl	loc_4015E8
mov	eax, [esi+3A0h]
mov	ecx, [esi+0Ch]
mov	[eax+48h], ecx
mov	eax, [esi+0Ch]
imul	eax, 188h
lea	ecx, [eax+esi+84h]
call	sub_40E5B8
xor	eax, eax

loc_4016B4:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	18h

loc_4016C5:
mov	eax, ebx
jmp	short loc_4016B4
sub_401529 endp



; Attributes: bp-based frame

sub_4016C9 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_44229C
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	esi		; lpCriticalSection
mov	[ebp+var_10], esi
call	ds:EnterCriticalSection
and	[ebp+var_4], 0
lea	ecx, [esi+18h]
call	sub_421520
push	esi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_4016C9 endp

; START	OF FUNCTION CHUNK FOR sub_442294

loc_401701:		; lpCriticalSection
push	dword ptr [ecx]
call	ds:LeaveCriticalSection
retn
; END OF FUNCTION CHUNK	FOR sub_442294


; Attributes: bp-based frame

sub_40170A proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4422B0
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	esi		; lpCriticalSection
mov	[ebp+var_10], esi
call	ds:EnterCriticalSection
and	[ebp+var_4], 0
lea	ecx, [esi+18h]
call	sub_421487
mov	ecx, esi
call	sub_401749
push	esi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40170A endp




sub_401749 proc	near
mov	eax, [ecx+20h]
cmp	eax, 64h
jle	short locret_401760
mov	edx, [ecx+18h]
add	ecx, 18h
add	eax, 0FFFFFF9Ch
push	eax
push	64h
call	dword ptr [edx+4]

locret_401760:
retn
sub_401749 endp




sub_401761 proc	near
push	esi
mov	esi, ecx
call	sub_4210FA
test	eax, 80000000h
jz	short loc_40178B
cmp	byte_45D8B7, 0
mov	byte ptr [esi+11h], 1
mov	byte ptr [esi+10h], 1
setz	al
and	byte ptr [esi+13h], 0
mov	[esi+12h], al
pop	esi
retn

loc_40178B:
mov	cl, al
and	cl, 1
mov	[esi+12h], cl
mov	ecx, eax
shr	ecx, 1
and	cl, 1
mov	[esi+13h], cl
mov	ecx, eax
shr	ecx, 2
shr	eax, 3
and	cl, 1
and	al, 1
mov	[esi+10h], cl
mov	[esi+11h], al
pop	esi
retn
sub_401761 endp



; Attributes: bp-based frame

sub_4017B2 proc	near

var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
Memory=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_E= byte ptr	-0Eh
var_D= byte ptr	-0Dh
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4422CC
call	__EH_prolog
sub	esp, 20h
push	esi
mov	esi, ecx
push	edi
mov	eax, [esi+8]
cmp	eax, 1
jnz	loc_401862
xor	edi, edi
push	3
lea	ecx, [ebp+var_2C]
mov	dword ptr [esi+8], 2
mov	[ebp+var_2C], edi
mov	[ebp+var_28], edi
mov	[ebp+var_24], edi
call	sub_403396
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+var_4], edi
mov	[ebp+Memory], edi
mov	[ebp+var_1C], edi
mov	[ebp+var_18], edi
call	sub_403396
lea	eax, [ebp+var_D]
mov	ecx, esi
push	eax
lea	eax, [ebp+var_E]
push	eax
lea	eax, [ebp+var_2C]
push	eax
lea	eax, [ebp+Memory]
push	eax
push	1
pop	eax
mov	byte ptr [ebp+var_4], 1
sub	eax, [esi+0Ch]
push	eax
call	sub_4011F0
push	[ebp+Memory]	; Memory
mov	[ebp+var_14], eax
call	sub_4284D8
push	[ebp+var_2C]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
mov	eax, [ebp+var_14]
pop	ecx
cmp	eax, edi
pop	ecx
jnz	short loc_4018A5
mov	eax, [esi+0Ch]
mov	ecx, esi
imul	eax, 188h
sub	ecx, eax
push	1		; bEnable
push	dword ptr [ecx+210h] ; hWnd
call	ds:EnableWindow
push	1
jmp	short loc_401883

loc_401862:
dec	eax
mov	ecx, esi
mov	[esi+8], eax
mov	eax, [esi+0Ch]
imul	eax, 188h
xor	edi, edi
sub	ecx, eax
push	edi		; bEnable
push	dword ptr [ecx+210h] ; hWnd
call	ds:EnableWindow
push	edi		; nCmdShow

loc_401883:
mov	eax, [esi+0Ch]
mov	ecx, esi
imul	eax, 188h
sub	ecx, eax
push	dword ptr [ecx+210h] ; hWnd
call	ds:ShowWindow
mov	ecx, esi
call	sub_4069DB
xor	eax, eax

loc_4018A5:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_4017B2 endp



; Attributes: bp-based frame

sub_4018B3 proc	near

Memory=	dword ptr -30h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4422E8
call	__EH_prolog
sub	esp, 24h
push	ebx
push	esi
mov	esi, ecx
push	edi
lea	edi, [esi+14h]
mov	ecx, edi
call	sub_401995
lea	ecx, [edi+2Ch]
call	sub_4019CD
and	[ebp+var_10], 0
push	3
pop	edi
lea	ebx, [ebp+var_18]
mov	[ebp+var_14], edi
mov	[ebp+var_18], edi
add	esi, 15Ch

loc_4018ED:
xor	eax, eax
push	edi
lea	ecx, [ebp+var_24]
mov	[ebp+var_24], eax
mov	[ebp+var_20], eax
mov	[ebp+var_1C], eax
call	sub_403396
and	[ebp+var_4], 0
cmp	dword ptr [esi+14h], 0
jnz	short loc_401916
push	esi
lea	ecx, [ebp+var_24]
call	sub_40312C
jmp	short loc_401940

loc_401916:
mov	eax, [esi+18h]
lea	ecx, [ebp+Memory]
mov	eax, [eax]
mov	edx, [eax+6Ch]
call	sub_413191
push	eax
lea	ecx, [ebp+var_24]
mov	byte ptr [ebp+var_4], 1
call	sub_40312C
push	[ebp+Memory]	; Memory
and	byte ptr [ebp+var_4], 0
call	sub_4284D8
pop	ecx

loc_401940:
mov	ecx, [ebp+var_10]
lea	edx, [ebp+var_24]
call	sub_42116B
mov	eax, [esi-0Ch]
mov	dl, [esi-2]
mov	ecx, [ebp+var_10]
mov	[ebx], eax
call	sub_41EB80
push	[ebp+var_24]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
inc	[ebp+var_10]
add	esi, 188h
add	ebx, 4
cmp	[ebp+var_10], 2
pop	ecx
jl	loc_4018ED
lea	ecx, [ebp+var_18]
call	sub_421306
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_4018B3 endp



; Attributes: bp-based frame

sub_401995 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4422FC
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	esi		; lpCriticalSection
mov	[ebp+var_10], esi
call	ds:EnterCriticalSection
and	[ebp+var_4], 0
lea	ecx, [esi+18h]
call	sub_421513
push	esi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_401995 endp



; Attributes: bp-based frame

sub_4019CD proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442310
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	esi		; lpCriticalSection
mov	[ebp+var_10], esi
call	ds:EnterCriticalSection
and	[ebp+var_4], 0
lea	ecx, [esi+18h]
call	sub_421401
push	esi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_4019CD endp




sub_401A05 proc	near
push	esi
push	edi
push	2
lea	esi, [ecx+84h]
pop	edi

loc_401A10:
mov	ecx, esi
call	sub_40D88C
add	esi, 188h
dec	edi
jnz	short loc_401A10
pop	edi
pop	esi
retn
sub_401A05 endp



; Attributes: bp-based frame

sub_401A23 proc	near

var_2C=	dword ptr -2Ch
var_24=	dword ptr -24h
Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h
arg_10=	dword ptr  18h

mov	eax, offset loc_442334
call	__EH_prolog
sub	esp, 18h
mov	eax, edx
mov	edx, [ebp+arg_0]
or	edx, [ebp+arg_4]
jz	loc_401AF8
push	esi
mov	edx, ecx
push	eax
lea	ecx, [ebp+Memory]
call	sub_40B168
mov	esi, [ebp+arg_10]
and	[ebp+var_4], 0
push	eax
mov	ecx, esi
call	sub_4031F2
or	[ebp+var_4], 0FFFFFFFFh
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	ecx, esi
mov	[esp+2Ch+var_2C], offset asc_45B128 ; "	"
call	sub_403195
lea	ecx, [ebp+Memory]
push	[ebp+arg_4]
push	[ebp+arg_0]
call	sub_418270
push	eax
mov	ecx, esi
mov	[ebp+var_4], 1
call	sub_4031F2
or	[ebp+var_4], 0FFFFFFFFh
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	eax, [ebp+arg_8]
pop	ecx
and	eax, [ebp+arg_C]
cmp	eax, 0FFFFFFFFh
jz	short loc_401AEB
push	offset asc_45B118 ; "	 ( "
mov	ecx, esi
call	sub_403195
lea	ecx, [ebp+var_24]
push	[ebp+arg_C]
push	[ebp+arg_8]
call	sub_401B06
push	eax
mov	ecx, esi
mov	[ebp+var_4], 2
call	sub_4031F2
or	[ebp+var_4], 0FFFFFFFFh
push	[ebp+var_24]	; Memory
call	sub_4284D8
mov	ecx, esi
mov	[esp+2Ch+var_2C], offset asc_45B110 ; "	)"
call	sub_403195

loc_401AEB:		; "\n"
push	offset asc_45B10C
mov	ecx, esi
call	sub_403195
pop	esi

loc_401AF8:
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn	14h
sub_401A23 endp



; Attributes: bp-based frame

sub_401B06 proc	near

Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_442348
call	__EH_prolog
sub	esp, 10h
and	[ebp+var_10], 0
push	esi
push	[ebp+arg_4]
mov	esi, ecx
lea	ecx, [ebp+Memory]
push	[ebp+arg_0]
call	sub_418270
and	[ebp+var_4], 0
push	eax
push	2000982h
mov	edx, 259h
mov	ecx, esi
call	sub_40744B
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	8
sub_401B06 endp



; Attributes: bp-based frame

sub_401B58 proc	near

var_40=	dword ptr -40h
var_3C=	dword ptr -3Ch
var_38=	dword ptr -38h
Memory=	dword ptr -34h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_442364
call	__EH_prolog
sub	esp, 34h
push	ebx
push	esi
push	edi
mov	edi, ecx
xor	ebx, ebx
push	3
lea	ecx, [ebp+var_40]
mov	[ebp+var_10], ebx
mov	[ebp+var_40], ebx
mov	[ebp+var_3C], ebx
mov	[ebp+var_38], ebx
call	sub_403396
mov	esi, [ebp+arg_4]
mov	[ebp+var_4], ebx
mov	[ebp+var_20], ebx
mov	[ebp+var_1C], ebx
mov	eax, [esi+8]
mov	[ebp+var_18], ebx
cmp	eax, ebx
mov	[ebp+var_14], ebx
mov	[ebp+var_30], ebx
mov	[ebp+var_2C], ebx
mov	[ebp+var_28], ebx
mov	[ebp+var_24], ebx
mov	[ebp+var_10], ebx
jle	short loc_401BFF

loc_401BAA:
mov	eax, [esi+0Ch]
mov	ecx, [ebp+var_10]
mov	eax, [eax+ecx*4]
mov	ecx, edi
push	eax
mov	[ebp+arg_4], eax
call	sub_41756F
mov	ecx, [edi+0FCh]
test	al, al
jz	short loc_401BDF
mov	edx, [ebp+arg_4]
lea	eax, [ebp+var_20]
push	eax
push	7
call	sub_401DEA
add	[ebp+var_28], 1
adc	[ebp+var_24], ebx
jmp	short loc_401BF4

loc_401BDF:
mov	edx, [ebp+arg_4]
lea	eax, [ebp+var_18]
push	eax
push	7
call	sub_401DEA
add	[ebp+var_30], 1
adc	[ebp+var_2C], ebx

loc_401BF4:
inc	[ebp+var_10]
mov	eax, [ebp+var_10]
cmp	eax, [esi+8]
jl	short loc_401BAA

loc_401BFF:
lea	eax, [ebp+var_40]
mov	edx, 2000321h
push	eax
mov	ecx, 8E3h
push	[ebp+var_1C]
push	[ebp+var_20]
push	[ebp+var_24]
push	[ebp+var_28]
call	sub_401A23
lea	eax, [ebp+var_40]
mov	edx, 2000320h
push	eax
mov	ecx, 8E2h
push	[ebp+var_14]
push	[ebp+var_18]
push	[ebp+var_2C]
push	[ebp+var_30]
call	sub_401A23
mov	eax, [ebp+var_20]
mov	ecx, eax
and	ecx, [ebp+var_1C]
cmp	ecx, 0FFFFFFFFh
jz	short loc_401C56
mov	ecx, eax
or	ecx, [ebp+var_1C]
jz	short loc_401C56
push	1
pop	edx
jmp	short loc_401C58

loc_401C56:
xor	edx, edx

loc_401C58:
mov	ecx, [ebp+var_18]
and	ecx, [ebp+var_14]
cmp	ecx, 0FFFFFFFFh
jz	short loc_401C70
mov	ecx, [ebp+var_18]
or	ecx, [ebp+var_14]
jz	short loc_401C70
push	1
pop	ecx
jmp	short loc_401C72

loc_401C70:
xor	ecx, ecx

loc_401C72:
add	edx, ecx
cmp	edx, 2
jnz	short loc_401C97
add	eax, [ebp+var_18]
lea	ecx, [ebp+var_40]
push	ecx
mov	ecx, [ebp+var_1C]
adc	ecx, [ebp+var_14]
mov	edx, 2000322h
push	ecx
push	eax
mov	ecx, 8E4h
call	sub_401D60

loc_401C97:		; "\n"
push	offset asc_45B10C
lea	ecx, [ebp+var_40]
call	sub_403195
lea	eax, [edi+0D8h]
lea	ecx, [ebp+var_40]
push	eax
call	sub_4031F2
cmp	[esi+8], ebx
mov	[ebp+var_10], ebx
jle	short loc_401D22

loc_401CBB:
cmp	[ebp+var_10], 5
jge	short loc_401D22
push	offset asc_45B13C ; "\n	 "
lea	ecx, [ebp+var_40]
call	sub_403195
mov	eax, [esi+0Ch]
mov	ecx, [ebp+var_10]
mov	eax, [eax+ecx*4]
mov	ecx, edi
mov	[ebp+arg_4], eax
push	eax
lea	eax, [ebp+Memory]
push	eax
call	sub_4174B8
push	eax
lea	ecx, [ebp+var_40]
mov	byte ptr [ebp+var_4], 1
call	sub_4031F2
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
pop	ecx
push	[ebp+arg_4]
mov	ecx, edi
call	sub_41756F
test	al, al
jz	short loc_401D17
push	5Ch
lea	ecx, [ebp+var_40]
call	sub_40316A

loc_401D17:
inc	[ebp+var_10]
mov	eax, [ebp+var_10]
cmp	eax, [esi+8]
jl	short loc_401CBB

loc_401D22:
mov	eax, [ebp+var_10]
pop	edi
cmp	eax, [esi+8]
pop	esi
pop	ebx
jz	short loc_401D3A
push	offset a____0	; "\n  ..."
lea	ecx, [ebp+var_40]
call	sub_403195

loc_401D3A:
mov	ecx, [ebp+arg_0]
lea	eax, [ebp+var_40]
push	eax
call	sub_4030F2
push	[ebp+var_40]	; Memory
call	sub_4284D8
mov	eax, [ebp+arg_0]
pop	ecx
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn	8
sub_401B58 endp



; Attributes: bp-based frame

sub_401D60 proc	near

var_2C=	dword ptr -2Ch
var_24=	dword ptr -24h
Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_442380
call	__EH_prolog
sub	esp, 18h
mov	eax, edx
push	esi
mov	edx, ecx
push	eax
lea	ecx, [ebp+Memory]
call	sub_40B168
mov	esi, [ebp+arg_8]
and	[ebp+var_4], 0
push	eax
mov	ecx, esi
call	sub_4031F2
or	[ebp+var_4], 0FFFFFFFFh
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	ecx, esi
mov	[esp+2Ch+var_2C], offset asc_45B128 ; "	"
call	sub_403195
lea	ecx, [ebp+var_24]
push	[ebp+arg_4]
push	[ebp+arg_0]
call	sub_401B06
push	eax
mov	ecx, esi
mov	[ebp+var_4], 1
call	sub_4031F2
or	[ebp+var_4], 0FFFFFFFFh
push	[ebp+var_24]	; Memory
call	sub_4284D8
mov	ecx, esi
mov	[esp+2Ch+var_2C], offset asc_45B10C ; "\n"
call	sub_403195
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	0Ch
sub_401D60 endp



; Attributes: bp-based frame

sub_401DEA proc	near

pvarg= VARIANTARG ptr -1Ch
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_442394
call	__EH_prolog
sub	esp, 10h
push	esi
mov	esi, [ebp+arg_4]
mov	eax, [esi]
and	eax, [esi+4]
cmp	eax, 0FFFFFFFFh
jz	short loc_401E51
xor	eax, eax
push	ebx
mov	word ptr [ebp+pvarg.anonymous_0], ax
mov	word ptr [ebp+pvarg.anonymous_0+2], ax
lea	ebx, [ebp+pvarg]
mov	[ebp+var_4], eax
mov	eax, [ecx]
push	ebx
push	[ebp+arg_0]
push	edx
push	ecx
call	dword ptr [eax+14h]
movzx	eax, word ptr [ebp+pvarg.anonymous_0]
sub	eax, 13h
pop	ebx
jz	short loc_401E38
dec	eax
dec	eax
jz	short loc_401E38
or	dword ptr [esi], 0FFFFFFFFh
or	dword ptr [esi+4], 0FFFFFFFFh
jmp	short loc_401E45

loc_401E38:
lea	ecx, [ebp+pvarg]
call	sub_42D2C6
add	[esi], eax
adc	[esi+4], edx

loc_401E45:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+pvarg] ; pvarg
call	sub_42CDE1

loc_401E51:
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	8
sub_401DEA endp



; Attributes: thunk

; int __fastcall sub_401E60(VARIANTARG *pvarg)
sub_401E60 proc	near
jmp	sub_42CDE1
sub_401E60 endp



; Attributes: bp-based frame

sub_401E65 proc	near

var_158= dword ptr -158h
var_14C= byte ptr -14Ch
var_148= dword ptr -148h
var_138= byte ptr -138h
var_124= byte ptr -124h
var_120= dword ptr -120h
var_110= byte ptr -110h
var_FC=	byte ptr -0FCh
var_F0=	byte ptr -0F0h
var_E4=	byte ptr -0E4h
var_D8=	byte ptr -0D8h
var_CC=	byte ptr -0CCh
var_C0=	byte ptr -0C0h
var_AC=	dword ptr -0ACh
var_98=	byte ptr -98h
var_94=	dword ptr -94h
var_88=	dword ptr -88h
var_84=	dword ptr -84h
var_80=	dword ptr -80h
var_7C=	dword ptr -7Ch
var_78=	dword ptr -78h
var_74=	dword ptr -74h
var_70=	dword ptr -70h
var_6C=	dword ptr -6Ch
var_64=	dword ptr -64h
var_60=	dword ptr -60h
var_58=	dword ptr -58h
var_50=	dword ptr -50h
Memory=	dword ptr -44h
var_38=	dword ptr -38h
var_34=	byte ptr -34h
var_33=	byte ptr -33h
var_30=	dword ptr -30h
var_29=	byte ptr -29h
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	byte ptr -1Ch
var_1B=	byte ptr -1Bh
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_D= byte ptr	-0Dh
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= byte ptr	 0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_4424FA
call	__EH_prolog
sub	esp, 14Ch
push	ebx
push	esi
push	edi
push	1
mov	esi, ecx
pop	eax
mov	ecx, [ebp+arg_8]
xor	ebx, ebx
cmp	[esi+8], eax
mov	[ebp+var_88], esi
mov	[ebp+var_14], ebx
jg	short loc_401E94
mov	eax, ecx
jmp	short loc_401E96

loc_401E94:
sub	eax, ecx

loc_401E96:
imul	ecx, 188h
imul	eax, 188h
lea	edi, [ecx+esi+84h]
lea	eax, [eax+esi+84h]
lea	ecx, [ebp+var_34]
mov	[ebp+var_38], eax
mov	[ebp+var_30], eax
call	sub_4028C8
lea	ecx, [ebp+var_1C]
mov	[ebp+var_4], ebx
mov	[ebp+var_18], edi
call	sub_4028C8
mov	ecx, edi
mov	byte ptr [ebp+var_4], 1
call	sub_40E872
test	al, al
jnz	short loc_401EF1
push	3020208h
push	8A0h
mov	ecx, edi
call	sub_40E58A
jmp	loc_40276C

loc_401EF1:
push	4
lea	ecx, [ebp+var_6C]
call	sub_402794
mov	[ebp+var_6C], offset off_44B518
push	3
lea	ecx, [ebp+var_28]
mov	byte ptr [ebp+var_4], 2
mov	[ebp+var_28], ebx
mov	[ebp+var_24], ebx
mov	[ebp+var_20], ebx
call	sub_403396
cmp	[ebp+arg_4], bl
mov	byte ptr [ebp+var_4], 3
mov	byte ptr [ebp+arg_8+3],	bl
jz	short loc_401F7D
push	1		; __int16
push	0FFFFFFFFh	; wParam
lea	ecx, [edi+74h]
call	sub_402821
cmp	eax, ebx
jl	loc_402757
push	eax
mov	ecx, edi
call	sub_402875
mov	esi, eax
cmp	esi, 0FFFFFFFFh
jz	loc_402757
push	esi
lea	ecx, [ebp+var_6C]
call	sub_429907
lea	eax, [ebp+Memory]
push	esi
push	eax
mov	ecx, edi
call	sub_41733B
push	eax
lea	ecx, [ebp+var_28]
mov	byte ptr [ebp+var_4], 4
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 3
call	sub_4284D8
pop	ecx
jmp	short loc_401FB0

loc_401F7D:
lea	eax, [ebp+var_6C]
mov	ecx, edi
push	eax
call	sub_41717C
cmp	[ebp+var_64], ebx
jz	loc_402757
mov	eax, [ebp+var_38]
lea	ecx, [ebp+var_28]
add	eax, 0D8h
push	eax
call	sub_40312C
cmp	dword ptr [esi+8], 1
jnz	short loc_401FB0
lea	ecx, [ebp+var_28]
call	sub_4029EB

loc_401FB0:
lea	ecx, [ebp+var_FC]
call	sub_402BA4
lea	ecx, [ebp+var_58]
mov	byte ptr [ebp+var_4], 5
call	sub_40337B
mov	esi, offset off_44B510
mov	[ebp+var_58], esi
lea	ecx, [ebp+var_58]
mov	byte ptr [ebp+var_4], 6
call	sub_42153A
lea	ecx, [ebp+var_C0]
call	sub_428327
lea	eax, [ebp+var_58]
lea	ecx, [ebp+var_C0]
push	eax
call	sub_403531
lea	eax, [ebp+var_28]
lea	ecx, [ebp+var_D8]
push	eax
call	sub_40312C
cmp	byte ptr [ebp+arg_0], bl
jz	short loc_402028
push	3020202h
mov	edx, 89Ah
lea	ecx, [ebp+var_78]
call	sub_40B168
mov	[ebp+var_14], 1
mov	byte ptr [ebp+var_4], 7
jmp	short loc_402048

loc_402028:
push	3020201h
mov	edx, 899h
lea	ecx, [ebp+Memory]
call	sub_40B168
mov	[ebp+var_14], 2
mov	[ebp+var_4], 8

loc_402048:
push	eax
lea	ecx, [ebp+var_F0]
call	sub_40312C
test	byte ptr [ebp+var_14], 2
jz	short loc_402067
push	[ebp+Memory]	; Memory
and	[ebp+var_14], 0FFFFFFFDh
call	sub_4284D8
pop	ecx

loc_402067:
test	byte ptr [ebp+var_14], 1
mov	[ebp+var_4], 6
jz	short loc_402081
push	[ebp+var_78]	; Memory
and	[ebp+var_14], 0FFFFFFFEh
call	sub_4284D8
pop	ecx

loc_402081:
cmp	byte ptr [ebp+arg_0], bl
jz	short loc_4020A2
push	3020204h
mov	edx, 89Ch
lea	ecx, [ebp+var_78]
call	sub_40B168
or	[ebp+var_14], 4
mov	byte ptr [ebp+var_4], 9
jmp	short loc_4020BF

loc_4020A2:
push	3020203h
mov	edx, 89Bh
lea	ecx, [ebp+Memory]
call	sub_40B168
or	[ebp+var_14], 8
mov	[ebp+var_4], 0Ah

loc_4020BF:
push	eax
lea	ecx, [ebp+var_E4]
call	sub_40312C
test	byte ptr [ebp+var_14], 8
jz	short loc_4020DE
push	[ebp+Memory]	; Memory
and	[ebp+var_14], 0FFFFFFF7h
call	sub_4284D8
pop	ecx

loc_4020DE:
test	byte ptr [ebp+var_14], 4
mov	[ebp+var_4], 6
jz	short loc_4020F4
push	[ebp+var_78]	; Memory
call	sub_4284D8
pop	ecx

loc_4020F4:
lea	eax, [ebp+var_6C]
mov	ecx, edi
push	eax
lea	eax, [ebp+Memory]
push	eax
call	sub_401B58
push	eax
lea	ecx, [ebp+var_CC]
mov	byte ptr [ebp+var_4], 0Bh
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 6
call	sub_4284D8
pop	ecx
mov	ecx, edi
call	sub_40DA67
push	eax		; hWndParent
push	1FAh		; lpTemplateName
lea	ecx, [ebp+var_FC]
call	sub_42FCF7
cmp	eax, 2
jnz	short loc_402149
mov	[ebp+var_58], esi
mov	byte ptr [ebp+var_4], 0Ch
jmp	loc_402351

loc_402149:
lea	eax, [ebp+var_D8]
lea	ecx, [ebp+var_28]
push	eax
call	sub_40312C
cmp	[ebp+var_24], ebx
jnz	short loc_40217A
push	3020208h
push	8A0h
mov	ecx, edi
call	sub_40E58A
mov	[ebp+var_58], esi
mov	byte ptr [ebp+var_4], 0Dh
jmp	loc_402351

loc_40217A:
lea	ecx, [ebp+var_28]
call	sub_402B79
test	al, al
jnz	short loc_4021DA
mov	ecx, edi
call	sub_40E6A6
test	al, al
jnz	short loc_4021AE
push	3020208h
push	8A0h
mov	ecx, edi
call	sub_40E58A
mov	[ebp+var_58], esi
mov	byte ptr [ebp+var_4], 0Eh
jmp	loc_402351

loc_4021AE:
lea	eax, [ebp+var_28]
lea	edx, [edi+0D8h]
push	eax
lea	ecx, [ebp+Memory]
call	sub_40356A
push	eax
lea	ecx, [ebp+var_28]
mov	byte ptr [ebp+var_4], 0Fh
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 6
call	sub_4284D8
pop	ecx

loc_4021DA:
mov	eax, [ebp+var_24]
mov	ecx, [ebp+var_28]
cmp	eax, ebx
jle	short loc_402213
cmp	word ptr [ecx],	5Ch
jnz	short loc_402213
cmp	eax, 1
jz	short loc_4021F6
cmp	word ptr [ecx+2], 5Ch
jz	short loc_402213

loc_4021F6:
push	3020208h
push	8A0h
mov	ecx, edi
call	sub_40E58A
mov	[ebp+var_58], esi
mov	byte ptr [ebp+var_4], 10h
jmp	loc_402351

loc_402213:
cmp	[ebp+var_64], 1
jg	loc_4022ED
cmp	eax, ebx
jz	short loc_40222D
cmp	word ptr [ecx+eax*2-2],	5Ch
jz	loc_4022ED

loc_40222D:
call	sub_42B630
test	al, al
jnz	loc_4022EA
mov	ecx, edi
call	sub_40E6BC
test	al, al
jnz	loc_4022EA
mov	eax, [ebp+var_24]
cmp	eax, ebx
jz	short loc_4022CB
mov	ecx, [ebp+var_28]
lea	eax, [ecx+eax*2-2]

loc_402257:
cmp	word ptr [eax],	5Ch
jz	short loc_402265
cmp	eax, ecx
jz	short loc_40226B
dec	eax
dec	eax
jmp	short loc_402257

loc_402265:
sub	eax, ecx
sar	eax, 1
jmp	short loc_40226E

loc_40226B:
or	eax, 0FFFFFFFFh

loc_40226E:
cmp	eax, ebx
jl	short loc_4022CB
inc	eax
lea	ecx, [ebp+var_28]
push	eax
lea	eax, [ebp+Memory]
push	eax
call	sub_403228
mov	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 12h
call	sub_42A264
lea	ecx, [ebp+Memory]
call	sub_402B2D
test	al, al
jnz	short loc_4022BE
push	3020208h
push	8A0h
mov	ecx, edi
call	sub_40E58A
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	[ebp+var_58], esi
mov	byte ptr [ebp+var_4], 13h
jmp	loc_402351

loc_4022BE:		; Memory
push	[ebp+Memory]
mov	byte ptr [ebp+var_4], 6
call	sub_4284D8
pop	ecx

loc_4022CB:
lea	edx, [ebp+var_28]
lea	ecx, [ebp+var_58]
call	sub_421547

loc_4022D6:
cmp	[ebp+var_50], 14h
jle	loc_402379
lea	ecx, [ebp+var_58]
call	sub_42832F
jmp	short loc_4022D6

loc_4022EA:
mov	ecx, [ebp+var_28]

loc_4022ED:
call	sub_42A264
lea	ecx, [ebp+var_28]
call	sub_42C33B
lea	ecx, [ebp+var_28]
call	sub_402B2D
test	al, al
jnz	short loc_4022CB
mov	eax, [ebp+var_88]
cmp	dword ptr [eax+8], 2
jl	short loc_402339
mov	eax, [ebp+var_38]
mov	ecx, [ebp+var_28]
mov	edx, [eax+0D8h]
call	sub_42828A
cmp	eax, ebx
jnz	short loc_402339
mov	ecx, [ebp+var_38]
call	sub_40E872
test	al, al
jz	short loc_402339
mov	byte ptr [ebp+arg_8+3],	1
jmp	short loc_4022CB

loc_402339:
push	3020208h
push	8A0h
mov	ecx, edi
call	sub_40E58A
mov	[ebp+var_58], esi
mov	byte ptr [ebp+var_4], 11h

loc_402351:
lea	ecx, [ebp+var_58]
call	sub_428327
lea	ecx, [ebp+var_58]
mov	byte ptr [ebp+var_4], 5
call	sub_4282FE
lea	ecx, [ebp+var_FC]
mov	byte ptr [ebp+var_4], 3
call	sub_402C6D
jmp	loc_402757

loc_402379:
lea	ecx, [ebp+var_58]
call	sub_42152D
mov	[ebp+var_58], esi
lea	ecx, [ebp+var_58]
mov	byte ptr [ebp+var_4], 14h
call	sub_428327
lea	ecx, [ebp+var_58]
mov	byte ptr [ebp+var_4], 5
call	sub_4282FE
lea	ecx, [ebp+var_FC]
mov	byte ptr [ebp+var_4], 3
call	sub_402C6D
cmp	byte ptr [ebp+arg_8+3],	bl
jz	short loc_4023CC
mov	ecx, edi
call	sub_4028A8
test	al, al
jz	short loc_4023CC
mov	ecx, [ebp+var_38]
call	sub_40E6A6
test	al, al
jnz	short loc_4023CC
mov	[ebp+var_29], bl
jmp	short loc_4023D9

loc_4023CC:
cmp	byte ptr [ebp+arg_8+3],	bl
mov	[ebp+var_29], 1
mov	[ebp+var_D], 1
jnz	short loc_4023DC

loc_4023D9:
mov	[ebp+var_D], bl

loc_4023DC:
lea	ecx, [ebp+var_94]
mov	[ebp+var_98], bl
call	sub_403079
push	3
lea	ecx, [ebp+var_84]
mov	byte ptr [ebp+var_4], 15h
mov	[ebp+var_84], ebx
mov	[ebp+var_80], ebx
mov	[ebp+var_7C], ebx
call	sub_403396
cmp	[ebp+var_D], bl
mov	byte ptr [ebp+var_4], 16h
jz	short loc_402441
push	off_45B060
lea	ecx, [ebp+var_98]
call	sub_42AF90
lea	eax, [ebp+var_94]
lea	ecx, [ebp+var_84]
push	eax
call	sub_40312C
lea	ecx, [ebp+var_84]
call	sub_42C33B

loc_402441:
lea	ecx, [ebp+var_14C]
call	sub_40283B
lea	ecx, [ebp+var_124]
mov	byte ptr [ebp+var_4], 17h
call	sub_40283B
lea	eax, [ebp+var_14C]
mov	ecx, edi
push	eax
mov	byte ptr [ebp+var_4], 18h
call	sub_4167F4
mov	ecx, [ebp+var_38]
lea	eax, [ebp+var_124]
push	eax
call	sub_4167F4
cmp	[ebp+var_29], bl
jz	loc_40258F
cmp	[ebp+var_D], bl
lea	eax, [ebp+var_84]
jnz	short loc_402493
lea	eax, [ebp+var_28]

loc_402493:
push	eax
lea	ecx, [ebp+Memory]
call	sub_4030F2
push	ebx
push	1
push	[ebp+arg_0]
lea	eax, [ebp+Memory]
mov	ecx, edi
mov	byte ptr [ebp+var_4], 19h
push	eax
lea	eax, [ebp+var_6C]
push	eax
call	sub_40290A
cmp	eax, ebx
mov	[ebp+var_14], eax
jz	loc_402582
mov	ecx, [ebp+var_30]
mov	al, [ebp+var_34]
mov	[ecx+184h], al
mov	eax, [ebp+var_30]
mov	cl, [ebp+var_33]
mov	[eax+185h], cl
mov	ecx, [ebp+var_18]
mov	al, [ebp+var_1C]
mov	[ecx+184h], al
mov	eax, [ebp+var_18]
mov	cl, [ebp+var_1B]
mov	[eax+185h], cl
mov	ecx, edi
call	sub_40E5B8
cmp	[ebp+var_14], 80004004h
jz	short loc_40250F
push	offset aError_0	; "Error"
mov	ecx, edi
push	[ebp+var_14]	; int
call	sub_40E54B

loc_40250F:		; Memory
push	[ebp+Memory]
call	sub_4284D8
pop	ecx
lea	ecx, [ebp+var_110]
mov	byte ptr [ebp+var_4], 1Ah
call	sub_40327C
push	[ebp+var_120]	; Memory
call	sub_4284D8
pop	ecx
lea	ecx, [ebp+var_138]
mov	byte ptr [ebp+var_4], 1Bh
call	sub_40327C
push	[ebp+var_148]	; Memory
call	sub_4284D8
push	[ebp+var_84]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx
lea	ecx, [ebp+var_98]
mov	byte ptr [ebp+var_4], 1Ch
call	sub_4027FD
push	[ebp+var_94]	; Memory
call	sub_4284D8
push	[ebp+var_28]	; Memory
call	sub_4284D8
pop	ecx
jmp	loc_40275F

loc_402582:		; Memory
push	[ebp+Memory]
mov	byte ptr [ebp+var_4], 18h
call	sub_4284D8
pop	ecx

loc_40258F:
cmp	byte ptr [ebp+arg_8+3],	bl
jz	loc_4026C7
lea	ecx, [ebp+var_AC]
call	sub_40337B
mov	[ebp+var_AC], esi
push	3
lea	ecx, [ebp+var_78]
mov	byte ptr [ebp+var_4], 1Dh
mov	[ebp+var_78], ebx
mov	[ebp+var_74], ebx
mov	[ebp+var_70], ebx
call	sub_403396
cmp	[ebp+var_D], bl
mov	byte ptr [ebp+var_4], 1Eh
lea	eax, [ebp+var_84]
jnz	short loc_4025D5
lea	eax, [edi+0D8h]

loc_4025D5:
push	eax
lea	ecx, [ebp+var_78]
call	sub_40312C
push	[ebp+var_64]
lea	ecx, [ebp+var_AC]
call	sub_428378
xor	esi, esi
cmp	[ebp+var_64], ebx
jle	short loc_40262D

loc_4025F3:
mov	eax, [ebp+var_60]
mov	ecx, edi
push	dword ptr [eax+esi*4]
lea	eax, [ebp+var_158]
push	eax
call	sub_4174B8
push	eax
lea	ecx, [ebp+var_AC]
mov	byte ptr [ebp+var_4], 1Fh
call	sub_4032B4
push	[ebp+var_158]	; Memory
mov	byte ptr [ebp+var_4], 1Eh
call	sub_4284D8
inc	esi
pop	ecx
cmp	esi, [ebp+var_64]
jl	short loc_4025F3

loc_40262D:
mov	ecx, [ebp+var_38]
push	ebx
lea	eax, [ebp+var_AC]
push	1
push	eax
lea	eax, [ebp+var_78]
push	eax
call	sub_40F8A2
mov	esi, eax
cmp	esi, ebx
jz	short loc_4026AF
mov	ecx, [ebp+var_30]
mov	al, [ebp+var_34]
mov	[ecx+184h], al
mov	eax, [ebp+var_30]
mov	cl, [ebp+var_33]
mov	[eax+185h], cl
mov	ecx, [ebp+var_18]
mov	al, [ebp+var_1C]
mov	[ecx+184h], al
mov	eax, [ebp+var_18]
mov	cl, [ebp+var_1B]
mov	[eax+185h], cl
mov	ecx, edi
call	sub_40E5B8
cmp	esi, 80004004h
jz	short loc_402695
push	offset aError_0	; "Error"
push	esi		; int
mov	ecx, edi
call	sub_40E54B

loc_402695:		; Memory
push	[ebp+var_78]
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 18h
lea	ecx, [ebp+var_AC]
call	sub_40327C
jmp	short loc_40271E

loc_4026AF:		; Memory
push	[ebp+var_78]
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 18h
lea	ecx, [ebp+var_AC]
call	sub_40327C

loc_4026C7:
mov	ecx, [ebp+var_88]
push	1
call	sub_402FBC
cmp	[ebp+arg_4], bl
jnz	short loc_4026DE
cmp	byte ptr [ebp+arg_0], bl
jz	short loc_4026F1

loc_4026DE:
lea	eax, [ebp+var_14C]
mov	ecx, edi
push	eax
call	sub_41687D
cmp	[ebp+arg_4], bl
jnz	short loc_402707

loc_4026F1:
mov	ecx, [ebp+var_38]
lea	eax, [ebp+var_124]
push	eax
call	sub_41687D
mov	ecx, edi
call	sub_41BACC

loc_402707:
lea	ecx, [ebp+var_34]
call	sub_4028F2
lea	ecx, [ebp+var_1C]
call	sub_4028F2
mov	ecx, edi
call	sub_40E5B8

loc_40271E:
lea	ecx, [ebp+var_124]
mov	byte ptr [ebp+var_4], 17h
call	sub_40299B
lea	ecx, [ebp+var_14C]
mov	byte ptr [ebp+var_4], 16h
call	sub_40299B
push	[ebp+var_84]	; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 3
lea	ecx, [ebp+var_98]
call	sub_4027CD

loc_402757:		; Memory
push	[ebp+var_28]
call	sub_4284D8

loc_40275F:
pop	ecx
mov	byte ptr [ebp+var_4], 1
lea	ecx, [ebp+var_6C]
call	sub_4282FE

loc_40276C:
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], bl
call	sub_4028F2
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_34]
call	sub_4028F2
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	0Ch
sub_401E65 endp




sub_402794 proc	near

arg_0= dword ptr  4

mov	eax, ecx
xor	ecx, ecx
mov	[eax+4], ecx
mov	[eax+8], ecx
mov	[eax+0Ch], ecx
mov	ecx, [esp+arg_0]
mov	[eax+10h], ecx
mov	dword ptr [eax], offset	off_44B520
retn	4
sub_402794 endp




; int __thiscall sub_4027B1(void *Memory, char)
sub_4027B1 proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_4282FE
test	[esp+4+arg_0], 1
jz	short loc_4027C7
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_4027C7:
mov	eax, esi
pop	esi
retn	4
sub_4027B1 endp



; Attributes: bp-based frame

sub_4027CD proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset unknown_libname_7 ;	Microsoft VisualC 2-11/net runtime
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
and	[ebp+var_4], 0
call	sub_4027FD
push	dword ptr [esi+4] ; Memory
call	sub_4284D8
pop	ecx
pop	esi
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn
sub_4027CD endp




sub_4027FD proc	near
push	esi
mov	esi, ecx
cmp	byte ptr [esi],	0
jnz	short loc_402809
mov	al, 1
pop	esi
retn

loc_402809:
lea	ecx, [esi+4]
call	sub_42A548
neg	al
sbb	al, al
push	0
inc	al
mov	[esi], al
pop	eax
setz	al
pop	esi
retn
sub_4027FD endp




; int __stdcall	sub_402821(WPARAM wParam, __int16)
sub_402821 proc	near

wParam=	dword ptr  4
arg_4= word ptr	 8

movzx	eax, [esp+arg_4]
push	eax		; lParam
push	[esp+4+wParam]	; wParam
push	100Ch		; Msg
push	dword ptr [ecx]	; hWnd
call	ds:SendMessageA
retn	8
sub_402821 endp




sub_40283B proc	near
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
push	3
or	dword ptr [esi], 0FFFFFFFFh
lea	ecx, [esi+4]
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
mov	[esi+10h], bl
mov	[esi+18h], ebx
mov	[esi+1Ch], ebx
mov	[esi+20h], ebx
mov	dword ptr [esi+24h], 4
mov	dword ptr [esi+14h], offset off_44B510
mov	eax, esi
pop	esi
pop	ebx
retn
sub_40283B endp



; Attributes: bp-based frame

sub_402875 proc	near

var_4= dword ptr -4
arg_0= dword ptr  8

push	ebp
mov	ebp, esp
push	ecx
lea	eax, [ebp+var_4]
add	ecx, 74h
push	eax
push	[ebp+arg_0]
call	sub_42FDFD
test	al, al
jnz	short loc_4028A1
lea	eax, [ebp+arg_0]
push	offset unk_44D120
push	eax
mov	[ebp+arg_0], 1
call	_CxxThrowException

loc_4028A1:
mov	eax, [ebp+var_4]
leave
retn	4
sub_402875 endp




sub_4028A8 proc	near
push	esi
mov	esi, ecx
call	sub_40E6A6
test	al, al
jnz	short loc_4028C3
mov	ecx, esi
call	sub_40E6B1
test	al, al
jnz	short loc_4028C3
xor	eax, eax
pop	esi
retn

loc_4028C3:
push	1
pop	eax
pop	esi
retn
sub_4028A8 endp




sub_4028C8 proc	near
mov	eax, [ecx+4]
push	esi
mov	dl, [eax+184h]
lea	esi, [eax+184h]
mov	[ecx], dl
mov	al, [eax+185h]
mov	[ecx+1], al
and	byte ptr [esi],	0
mov	eax, [ecx+4]
pop	esi
and	byte ptr [eax+185h], 0
retn
sub_4028C8 endp




sub_4028F2 proc	near
mov	eax, [ecx+4]
mov	dl, [ecx]
mov	[eax+184h], dl
mov	eax, [ecx+4]
mov	cl, [ecx+1]
mov	[eax+185h], cl
retn
sub_4028F2 endp



; Attributes: bp-based frame

sub_40290A proc	near

Memory=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_D= byte ptr	-0Dh
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h
arg_10=	dword ptr  18h

mov	eax, offset loc_442524
call	__EH_prolog
sub	esp, 10h
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+var_D], bl
mov	[ebp+Memory], ebx
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
call	sub_403396
cmp	[esi+0ECh], ebx
mov	[ebp+var_4], ebx
jle	short loc_402960
mov	eax, [esi+0ECh]
mov	ecx, [esi+0F0h]
mov	eax, [ecx+eax*4-4]
mov	cl, [eax+70h]
add	eax, 74h
mov	[ebp+var_D], cl
push	eax
lea	ecx, [ebp+Memory]
call	sub_40312C

loc_402960:
lea	eax, [ebp+Memory]
mov	ecx, esi
push	eax
lea	eax, [ebp+var_D]
push	eax
push	[ebp+arg_10]
push	[ebp+arg_C]
push	[ebp+arg_8]
push	[ebp+arg_4]
push	[ebp+arg_0]
call	sub_40F4C6
push	[ebp+Memory]	; Memory
mov	esi, eax
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	14h
sub_40290A endp



; Attributes: bp-based frame

sub_40299B proc	near

var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442543
call	__EH_prolog
push	ecx
push	ecx
push	esi
push	edi
mov	edi, ecx
mov	[ebp+var_10], edi
and	[ebp+var_4], 0
lea	esi, [edi+14h]
mov	[ebp+var_14], esi
mov	dword ptr [esi], offset	off_44B510
mov	ecx, esi
mov	byte ptr [ebp+var_4], 1
call	sub_428327
and	byte ptr [ebp+var_4], 0
mov	ecx, esi
call	sub_4282FE
push	dword ptr [edi+4] ; Memory
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40299B endp



; Attributes: bp-based frame

sub_4029EB proc	near

var_24=	dword ptr -24h
Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442560
call	__EH_prolog
sub	esp, 18h
push	ebx
push	esi
mov	esi, ecx
push	edi
cmp	dword ptr [esi+4], 0
jz	loc_402B1E
push	5Ch
pop	ebx

loc_402A0A:
mov	ecx, [esi]
call	sub_42B630
test	al, al
jnz	loc_402B17
mov	eax, [esi+4]
test	eax, eax
jz	short loc_402A42
mov	ecx, [esi]
lea	eax, [ecx+eax*2-2]

loc_402A26:
cmp	[eax], bx
jz	short loc_402A33
cmp	eax, ecx
jz	short loc_402A3B
dec	eax
dec	eax
jmp	short loc_402A26

loc_402A33:
sub	eax, ecx
sar	eax, 1
mov	edi, eax
jmp	short loc_402A3E

loc_402A3B:
or	edi, 0FFFFFFFFh

loc_402A3E:
test	edi, edi
jge	short loc_402A51

loc_402A42:
mov	eax, [esi]
and	dword ptr [esi+4], 0
and	word ptr [eax],	0
jmp	loc_402B0B

loc_402A51:
lea	eax, [edi+1]
mov	ecx, esi
push	eax
lea	eax, [ebp+Memory]
push	eax
call	sub_403228
and	[ebp+var_4], 0
push	eax
mov	ecx, esi
call	sub_40312C
or	[ebp+var_4], 0FFFFFFFFh
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	eax, [esi+4]
pop	ecx
cmp	eax, 3
jnz	short loc_402A8E
mov	ecx, [esi]
cmp	word ptr [ecx+2], 3Ah
jz	loc_402B1E

loc_402A8E:
cmp	eax, 2
jle	short loc_402AE3
mov	ecx, [esi]
cmp	[ecx], bx
jnz	short loc_402AE3
cmp	[ecx+2], bx
jnz	short loc_402AE3
lea	eax, [ecx+4]

loc_402AA3:
mov	dx, [eax]
cmp	dx, bx
jz	short loc_402AB4
test	dx, dx
jz	short loc_402ABA
inc	eax
inc	eax
jmp	short loc_402AA3

loc_402AB4:
sub	eax, ecx
sar	eax, 1
jmp	short loc_402ABD

loc_402ABA:
or	eax, 0FFFFFFFFh

loc_402ABD:
test	eax, eax
jle	short loc_402AE3
lea	eax, [ecx+eax*2+2]

loc_402AC5:
mov	dx, [eax]
cmp	dx, bx
jz	short loc_402AD6
test	dx, dx
jz	short loc_402ADC
inc	eax
inc	eax
jmp	short loc_402AC5

loc_402AD6:
sub	eax, ecx
sar	eax, 1
jmp	short loc_402ADF

loc_402ADC:
or	eax, 0FFFFFFFFh

loc_402ADF:
cmp	eax, edi
jz	short loc_402B1E

loc_402AE3:
lea	eax, [ebp+var_24]
push	edi
push	eax
mov	ecx, esi
call	sub_403228
push	eax
mov	ecx, esi
mov	[ebp+var_4], 1
call	sub_40312C
or	[ebp+var_4], 0FFFFFFFFh
push	[ebp+var_24]	; Memory
call	sub_4284D8
pop	ecx

loc_402B0B:
cmp	dword ptr [esi+4], 0
jnz	loc_402A0A
jmp	short loc_402B1E

loc_402B17:
mov	ecx, esi
call	sub_42C33B

loc_402B1E:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_4029EB endp



; Attributes: bp-based frame

sub_402B2D proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442574
call	__EH_prolog
sub	esp, 0Ch
push	esi
mov	esi, ecx
push	esi
lea	ecx, [ebp+Memory]
call	sub_4030F2
and	[ebp+var_4], 0
lea	ecx, [ebp+Memory]
call	sub_4029EB
mov	edx, [esi]
mov	ecx, [ebp+Memory]
call	sub_42828A
mov	esi, eax
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	ecx, [ebp+var_C]
test	esi, esi
setz	al
pop	esi
mov	large fs:0, ecx
leave
retn
sub_402B2D endp




sub_402B79 proc	near
mov	eax, [ecx+4]
cmp	eax, 1
jl	short loc_402B89
mov	edx, [ecx]
cmp	word ptr [edx],	5Ch
jz	short loc_402B9E

loc_402B89:
cmp	eax, 3
jl	short loc_402BA1
mov	ecx, [ecx]
cmp	word ptr [ecx+2], 3Ah
jnz	short loc_402BA1
cmp	word ptr [ecx+4], 5Ch
jnz	short loc_402BA1

loc_402B9E:
mov	al, 1
retn

loc_402BA1:
xor	al, al
retn
sub_402B79 endp



; Attributes: bp-based frame

sub_402BA4 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4425A9
call	__EH_prolog
push	ecx
push	esi
push	edi
mov	esi, ecx
xor	edi, edi
mov	[ebp+var_10], esi
mov	[esi+4], edi
mov	dword ptr [esi], offset	off_44B558
lea	ecx, [esi+0Ch]
mov	[esi+8], edi
push	3
mov	[ebp+var_4], edi
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
lea	ecx, [esi+18h]
push	3
mov	byte ptr [ebp+var_4], 1
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
lea	ecx, [esi+24h]
push	3
mov	byte ptr [ebp+var_4], 2
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
lea	ecx, [esi+30h]
push	3
mov	byte ptr [ebp+var_4], 3
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
mov	ecx, [ebp+var_C]
mov	[esi+40h], edi
mov	[esi+44h], edi
mov	[esi+48h], edi
mov	dword ptr [esi+4Ch], 4
mov	dword ptr [esi+3Ch], offset off_44B510
mov	dword ptr [esi], offset	off_44B528
mov	eax, esi
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_402BA4 endp




sub_402C48 proc	near
mov	al, 1
retn
sub_402C48 endp




sub_402C4B proc	near
xor	al, al
retn	0Ch
sub_402C4B endp




sub_402C50 proc	near
xor	al, al
retn	8
sub_402C50 endp




sub_402C55 proc	near
push	1		; nResult
push	dword ptr [ecx+4] ; hDlg
call	ds:EndDialog
retn
sub_402C55 endp




sub_402C61 proc	near
push	2		; nResult
push	dword ptr [ecx+4] ; hDlg
call	ds:EndDialog
retn
sub_402C61 endp



; Attributes: bp-based frame

sub_402C6D proc	near

var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4425F0
call	__EH_prolog
push	ecx
push	ecx
push	esi
mov	esi, ecx
push	edi
mov	[ebp+var_10], esi
and	[ebp+var_4], 0
lea	edi, [esi+3Ch]
mov	[ebp+var_14], edi
mov	dword ptr [edi], offset	off_44B510
mov	ecx, edi
mov	byte ptr [ebp+var_4], 5
call	sub_428327
mov	ecx, edi
mov	byte ptr [ebp+var_4], 4
call	sub_4282FE
push	dword ptr [esi+30h] ; Memory
call	sub_4284D8
push	dword ptr [esi+24h] ; Memory
call	sub_4284D8
push	dword ptr [esi+18h] ; Memory
call	sub_4284D8
push	dword ptr [esi+0Ch] ; Memory
call	sub_4284D8
mov	ecx, [ebp+var_C]
add	esp, 10h
mov	dword ptr [esi], offset	off_44B588
mov	large fs:0, ecx
pop	edi
pop	esi
leave
retn
sub_402C6D endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_4. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000001D BYTES: COLLAPSED FUNCTION unknown_libname_1. PRESS KEYPAD CTRL-"+" TO EXPAND]



; int __thiscall sub_402CFB(void *Memory, char)
sub_402CFB proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_402C6D
test	[esp+4+arg_0], 1
jz	short loc_402D11
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_402D11:
mov	eax, esi
pop	esi
retn	4
sub_402CFB endp




sub_402D17 proc	near

arg_0= dword ptr  4

cmp	dword ptr [ecx+8], 1
jle	short locret_402D3C
mov	eax, [esp+arg_0]
imul	eax, 188h
lea	edx, [eax+ecx+15Ch]
sub	ecx, eax
push	edx
add	ecx, 20Ch
call	sub_412FAA

locret_402D3C:
retn	4
sub_402D17 endp



; Attributes: bp-based frame

sub_402D3F proc	near

var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_442604
call	__EH_prolog
cmp	dword ptr [ecx+8], 1
push	ebx
push	esi
push	edi
jle	loc_402DE7
mov	eax, [ebp+arg_0]
imul	eax, 188h
lea	esi, [eax+ecx+84h]
sub	ecx, eax
add	ecx, 20Ch
mov	edi, ecx
lea	ecx, [esi+74h]
call	sub_402DF8
test	eax, eax
jl	short loc_402DE7
push	eax
mov	ecx, esi
call	sub_402875
mov	ebx, eax
mov	ecx, esi
push	ebx
call	sub_41756F
test	al, al
jz	short loc_402DE7
and	[ebp+arg_0], 0
mov	esi, [esi+0FCh]
and	[ebp+var_4], 0
lea	ecx, [ebp+arg_0]
cmp	ebx, 0FFFFFFFFh
mov	eax, [esi]
push	ecx
jnz	short loc_402DB1
push	esi
call	dword ptr [eax+20h]
jmp	short loc_402DB6

loc_402DB1:
push	ebx
push	esi
call	dword ptr [eax+1Ch]

loc_402DB6:
test	eax, eax
jnz	short loc_402DD6
mov	ecx, edi
call	sub_413EF8
push	[ebp+arg_0]
lea	ecx, [edi+0FCh]
call	sub_43D0DB
mov	ecx, edi
call	sub_4166B3

loc_402DD6:
mov	eax, [ebp+arg_0]
or	[ebp+var_4], 0FFFFFFFFh
test	eax, eax
jz	short loc_402DE7
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_402DE7:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_402D3F endp




sub_402DF8 proc	near
push	1		; lParam
push	0FFFFFFFFh	; wParam
push	100Ch		; Msg
push	dword ptr [ecx]	; hWnd
call	ds:SendMessageA
retn
sub_402DF8 endp

call	sub_402E14
jmp	loc_402E32



sub_402E14 proc	near
xor	eax, eax
push	3
mov	ecx, offset dword_45D4B0
mov	dword_45D4B0, eax
mov	dword_45D4B4, eax
mov	dword_45D4B8, eax
call	sub_403396
retn
sub_402E14 endp


loc_402E32:
push	offset loc_402E3E
call	_atexit
pop	ecx
retn

loc_402E3E:
push	dword_45D4B0
call	sub_4284D8
pop	ecx
retn
call	sub_402E55
jmp	loc_402E73



sub_402E55 proc	near
xor	eax, eax
push	3
mov	ecx, offset dword_45D4A0
mov	dword_45D4A0, eax
mov	dword_45D4A4, eax
mov	dword_45D4A8, eax
call	sub_4034E3
retn
sub_402E55 endp


loc_402E73:
push	offset loc_402E7F
call	_atexit
pop	ecx
retn

loc_402E7F:
push	dword_45D4A0
call	sub_4284D8
pop	ecx
retn


; Attributes: bp-based frame

sub_402E8C proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_4= dword ptr  0Ch

mov	eax, offset loc_442618
call	__EH_prolog
sub	esp, 0Ch
push	ebx
push	esi
mov	esi, [ebp+arg_4]
mov	eax, [esi+8]
cmp	eax, 0FFFFFDF8h
jnz	short loc_402EF7
xor	ebx, ebx
push	edi
mov	[esi+60h], ebx
mov	eax, dword_45D4B0
mov	dword_45D4B4, ebx
mov	edi, offset dword_45D4B0
mov	[eax], bx
mov	ecx, [esi+4]
mov	edx, edi
call	sub_402F39
mov	edx, edi
lea	ecx, [ebp+Memory]
call	sub_43A785
push	eax
mov	ecx, offset dword_45D4A0
mov	[ebp+var_4], ebx
call	sub_403244
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	eax, dword_45D4A0
pop	ecx
mov	[esi+0Ch], eax
pop	edi
jmp	short loc_402F29

loc_402EF7:
cmp	eax, 0FFFFFDEEh
jnz	short loc_402F29
xor	ebx, ebx
mov	edx, offset dword_45D4B0
mov	[esi+0B0h], ebx
mov	eax, dword_45D4B0
mov	dword_45D4B4, ebx
mov	[eax], bx
mov	ecx, [esi+4]
call	sub_402F39
mov	eax, dword_45D4B0
mov	[esi+0Ch], eax

loc_402F29:
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	8
sub_402E8C endp




sub_402F39 proc	near
push	esi
mov	esi, edx
push	edi
push	esi
mov	edi, ecx
push	4
mov	edx, offset unk_45B068
call	sub_402F62
test	al, al
jnz	short loc_402F5F
push	esi
push	3
mov	edx, offset unk_45B0B8
mov	ecx, edi
call	sub_402F62

loc_402F5F:
pop	edi
pop	esi
retn
sub_402F39 endp



; Attributes: bp-based frame

sub_402F62 proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_44262C
call	__EH_prolog
sub	esp, 0Ch
push	esi
xor	esi, esi
cmp	[ebp+arg_0], esi
mov	eax, edx
jle	short loc_402F86

loc_402F79:
cmp	[eax], ecx
jz	short loc_402F97
inc	esi
add	eax, 14h
cmp	esi, [ebp+arg_0]
jl	short loc_402F79

loc_402F86:
xor	al, al

loc_402F88:
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	8

loc_402F97:
lea	ecx, [ebp+Memory]
push	ecx
mov	ecx, eax
call	sub_4014C9
mov	ecx, [ebp+arg_4]
and	[ebp+var_4], 0
push	eax
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	al, 1
jmp	short loc_402F88
sub_402F62 endp



; Attributes: bp-based frame

sub_402FBC proc	near

Memory=	dword ptr -24h
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= byte ptr	 8

mov	eax, offset loc_442648
call	__EH_prolog
sub	esp, 18h
push	esi
mov	esi, ecx
lea	ecx, [ebp+var_18]
mov	eax, [esi+0Ch]
imul	eax, 188h
lea	eax, [eax+esi+15Ch]
push	eax
call	sub_4030F2
and	[ebp+var_4], 0
cmp	[ebp+var_14], 0
jnz	short loc_40301B
push	3000000h
mov	edx, 898h
lea	ecx, [ebp+Memory]
call	sub_40B168
push	eax
lea	ecx, [ebp+var_18]
mov	byte ptr [ebp+var_4], 1
call	sub_4031F2
push	[ebp+Memory]	; Memory
and	byte ptr [ebp+var_4], 0
call	sub_4284D8
pop	ecx

loc_40301B:
cmp	[ebp+arg_0], 0
jnz	short loc_403033
mov	edx, [esi+3A8h]
mov	ecx, [ebp+var_18]
call	sub_42828A
test	eax, eax
jz	short loc_40304C

loc_403033:
lea	eax, [ebp+var_18]
lea	ecx, [esi+3A8h]
push	eax
call	sub_40312C
mov	edx, [ebp+var_18]
mov	ecx, [esi]
call	sub_42E6BD

loc_40304C:		; Memory
push	[ebp+var_18]
call	sub_4284D8
pop	ecx
pop	esi
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn	4
sub_402FBC endp




sub_403064 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

mov	eax, [esp+arg_0]
cmp	eax, [ecx+0Ch]
jnz	short locret_403076
push	[esp+arg_4]
call	sub_402FBC

locret_403076:
retn	8
sub_403064 endp




sub_403079 proc	near
push	esi
mov	esi, ecx
xor	eax, eax
push	3
mov	[esi], eax
mov	[esi+4], eax
mov	[esi+8], eax
call	sub_403396
mov	eax, esi
pop	esi
retn
sub_403079 endp



; Attributes: bp-based frame

sub_403091 proc	near

var_4= dword ptr -4
arg_0= dword ptr  8

push	ebp
mov	ebp, esp
push	ecx
push	ebx
push	esi
push	edi
mov	edi, [ebp+arg_0]
mov	esi, ecx
xor	ebx, ebx
mov	[ebp+var_4], ebx
mov	[esi], ebx
mov	[esi+4], ebx
mov	[esi+8], ebx
cmp	[edi], bx
jz	short loc_4030BB
mov	eax, edi

loc_4030B1:
inc	[ebp+var_4]
inc	eax
inc	eax
cmp	[eax], bx
jnz	short loc_4030B1

loc_4030BB:
push	[ebp+var_4]
mov	ecx, esi
call	sub_403396
mov	eax, [esi]
mov	cx, [edi]
lea	edx, [edi+2]
mov	[eax], cx
inc	eax
inc	eax

loc_4030D2:
cmp	cx, bx
jz	short loc_4030E3
mov	cx, [edx]
mov	[eax], cx
inc	eax
inc	eax
inc	edx
inc	edx
jmp	short loc_4030D2

loc_4030E3:
mov	eax, [ebp+var_4]
pop	edi
mov	[esi+4], eax
mov	eax, esi
pop	esi
pop	ebx
leave
retn	4
sub_403091 endp




sub_4030F2 proc	near

arg_0= dword ptr  4

push	esi
push	edi
mov	edi, [esp+8+arg_0]
mov	esi, ecx
xor	eax, eax
mov	[esi], eax
mov	[esi+4], eax
mov	[esi+8], eax
push	dword ptr [edi+4]
call	sub_403396
mov	ecx, [edi]
mov	eax, [esi]

loc_403110:
mov	dx, [ecx]
mov	[eax], dx
inc	eax
inc	eax
inc	ecx
inc	ecx
test	dx, dx
jnz	short loc_403110
mov	eax, [edi+4]
pop	edi
mov	[esi+4], eax
mov	eax, esi
pop	esi
retn	4
sub_4030F2 endp




sub_40312C proc	near

arg_0= dword ptr  4

push	esi
push	edi
mov	edi, [esp+8+arg_0]
mov	esi, ecx
cmp	edi, esi
jz	short loc_403163
mov	eax, [esi]
and	dword ptr [esi+4], 0
and	word ptr [eax],	0
push	dword ptr [edi+4]
call	sub_403396
mov	ecx, [edi]
mov	eax, [esi]

loc_40314E:
mov	dx, [ecx]
mov	[eax], dx
inc	eax
inc	eax
inc	ecx
inc	ecx
test	dx, dx
jnz	short loc_40314E
mov	eax, [edi+4]
mov	[esi+4], eax

loc_403163:
mov	eax, esi
pop	edi
pop	esi
retn	4
sub_40312C endp




sub_40316A proc	near

arg_0= word ptr	 4

push	esi
mov	esi, ecx
push	1
call	sub_4033EA
mov	eax, [esi+4]
mov	ecx, [esi]
mov	dx, [esp+4+arg_0]
mov	[ecx+eax*2], dx
inc	dword ptr [esi+4]
mov	eax, [esi+4]
mov	ecx, [esi]
and	word ptr [ecx+eax*2], 0
mov	eax, esi
pop	esi
retn	4
sub_40316A endp



; Attributes: bp-based frame

sub_403195 proc	near

var_4= dword ptr -4
arg_0= dword ptr  8

push	ebp
mov	ebp, esp
push	ecx
push	esi
push	edi
mov	edi, [ebp+arg_0]
mov	esi, ecx
xor	ecx, ecx
cmp	[edi], cx
mov	[ebp+var_4], ecx
jz	short loc_4031B6
mov	eax, edi

loc_4031AC:
inc	[ebp+var_4]
inc	eax
inc	eax
cmp	[eax], cx
jnz	short loc_4031AC

loc_4031B6:
push	[ebp+var_4]
mov	ecx, esi
call	sub_4033EA
mov	eax, [esi+4]
mov	ecx, [esi]
lea	edx, [edi+2]
lea	eax, [ecx+eax*2]
mov	cx, [edi]
mov	[eax], cx
inc	eax
inc	eax

loc_4031D3:
test	cx, cx
jz	short loc_4031E4
mov	cx, [edx]
mov	[eax], cx
inc	eax
inc	eax
inc	edx
inc	edx
jmp	short loc_4031D3

loc_4031E4:
mov	eax, [ebp+var_4]
pop	edi
add	[esi+4], eax
mov	eax, esi
pop	esi
leave
retn	4
sub_403195 endp




sub_4031F2 proc	near

arg_0= dword ptr  4

push	esi
push	edi
mov	edi, [esp+8+arg_0]
mov	esi, ecx
push	dword ptr [edi+4]
call	sub_4033EA
mov	eax, [esi+4]
mov	edx, [esi]
mov	ecx, [edi]
lea	eax, [edx+eax*2]

loc_40320C:
mov	dx, [ecx]
mov	[eax], dx
inc	eax
inc	eax
inc	ecx
inc	ecx
test	dx, dx
jnz	short loc_40320C
mov	eax, [edi+4]
pop	edi
add	[esi+4], eax
mov	eax, esi
pop	esi
retn	4
sub_4031F2 endp



; Attributes: bp-based frame

sub_403228 proc	near

var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
push	ecx
push	[ebp+arg_4]
and	[ebp+var_4], 0
push	0
push	[ebp+arg_0]
call	sub_403434
mov	eax, [ebp+arg_0]
leave
retn	8
sub_403228 endp




sub_403244 proc	near

arg_0= dword ptr  4

push	esi
push	edi
mov	edi, [esp+8+arg_0]
mov	esi, ecx
cmp	edi, esi
jz	short loc_403275
mov	eax, [esi]
and	dword ptr [esi+4], 0
and	byte ptr [eax],	0
push	dword ptr [edi+4]
call	sub_4034E3
mov	ecx, [edi]
mov	eax, [esi]

loc_403265:
mov	dl, [ecx]
mov	[eax], dl
inc	eax
inc	ecx
test	dl, dl
jnz	short loc_403265
mov	eax, [edi+4]
mov	[esi+4], eax

loc_403275:
mov	eax, esi
pop	edi
pop	esi
retn	4
sub_403244 endp



; Attributes: bp-based frame

sub_40327C proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_44265C
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44B510
and	[ebp+var_4], 0
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40327C endp



; Attributes: bp-based frame

sub_4032B4 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset unknown_libname_8 ;	Microsoft VisualC 2-11/net runtime
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	0Ch		; Size
call	sub_4284B1
pop	ecx
mov	ecx, eax
mov	[ebp+var_10], ecx
xor	eax, eax
cmp	ecx, eax
mov	[ebp+var_4], eax
jz	short loc_4032E0
push	[ebp+arg_0]
call	sub_4030F2

loc_4032E0:
or	[ebp+var_4], 0FFFFFFFFh
push	eax
mov	ecx, esi
call	sub_429907
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_4032B4 endp



; Attributes: bp-based frame

sub_4032FB proc	near

var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
push	ecx
mov	eax, [ecx+8]
push	edi
mov	edi, [ebp+arg_0]
mov	[ebp+var_4], ecx
mov	ecx, [ebp+arg_4]
add	ecx, edi
cmp	ecx, eax
jle	short loc_403317
sub	eax, edi
mov	[ebp+arg_4], eax

loc_403317:
mov	eax, [ebp+arg_4]
test	eax, eax
jle	short loc_40334E
push	ebx
push	esi
mov	esi, edi
mov	[ebp+arg_0], eax
shl	esi, 2

loc_403328:
mov	eax, [ebp+var_4]
mov	eax, [eax+0Ch]
mov	ebx, [eax+esi]
test	ebx, ebx
jz	short loc_403344
push	dword ptr [ebx]	; Memory
call	sub_4284D8
push	ebx		; Memory
call	sub_4284D8
pop	ecx
pop	ecx

loc_403344:
add	esi, 4
dec	[ebp+arg_0]
jnz	short loc_403328
pop	esi
pop	ebx

loc_40334E:
push	[ebp+arg_4]
mov	ecx, [ebp+var_4]
push	edi
call	sub_42847F
pop	edi
leave
retn	8
sub_4032FB endp




; int __thiscall sub_40335F(void *Memory, char)
sub_40335F proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_40327C
test	[esp+4+arg_0], 1
jz	short loc_403375
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_403375:
mov	eax, esi
pop	esi
retn	4
sub_40335F endp




sub_40337B proc	near
mov	eax, ecx
xor	ecx, ecx
mov	[eax+4], ecx
mov	[eax+8], ecx
mov	[eax+0Ch], ecx
mov	dword ptr [eax+10h], 4
mov	dword ptr [eax], offset	off_44B5B8
retn
sub_40337B endp




sub_403396 proc	near

arg_0= dword ptr  4

mov	eax, [esp+arg_0]
push	ebx
push	esi
mov	esi, ecx
lea	ebx, [eax+1]
cmp	ebx, [esi+8]
jz	short loc_4033E5
lea	eax, [ebx+ebx]
push	edi
push	eax		; Size
call	sub_4284B1
mov	edi, eax
xor	eax, eax
cmp	[esi+8], eax
pop	ecx
jle	short loc_4033D7
cmp	[esi+4], eax
jle	short loc_4033CF

loc_4033BF:
mov	ecx, [esi]
mov	cx, [ecx+eax*2]
mov	[edi+eax*2], cx
inc	eax
cmp	eax, [esi+4]
jl	short loc_4033BF

loc_4033CF:		; Memory
push	dword ptr [esi]
call	sub_4284D8
pop	ecx

loc_4033D7:
mov	eax, [esi+4]
mov	[esi], edi
and	word ptr [edi+eax*2], 0
mov	[esi+8], ebx
pop	edi

loc_4033E5:
pop	esi
pop	ebx
retn	4
sub_403396 endp




sub_4033EA proc	near

arg_0= dword ptr  4

push	ebx
push	esi
push	edi
mov	edi, [ecx+8]
mov	ebx, [esp+0Ch+arg_0]
mov	esi, edi
sub	esi, [ecx+4]
dec	esi
cmp	ebx, esi
jle	short loc_40342E
cmp	edi, 40h
jle	short loc_40340C
mov	eax, edi
cdq
sub	eax, edx
sar	eax, 1
jmp	short loc_40341B

loc_40340C:
xor	eax, eax
cmp	edi, 8
setle	al
dec	eax
and	eax, 0Ch
add	eax, 4

loc_40341B:
lea	edx, [eax+esi]
cmp	edx, ebx
jge	short loc_403426
sub	ebx, esi
mov	eax, ebx

loc_403426:
add	edi, eax
push	edi
call	sub_403396

loc_40342E:
pop	edi
pop	esi
pop	ebx
retn	4
sub_4033EA endp



; Attributes: bp-based frame

sub_403434 proc	near

Memory=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_442684
call	__EH_prolog
sub	esp, 10h
push	ebx
mov	ebx, [ebp+arg_4]
push	esi
mov	esi, [ebp+arg_8]
push	edi
mov	edi, ecx
lea	edx, [ebx+esi]
xor	ecx, ecx
mov	eax, [edi+4]
mov	[ebp+var_10], ecx
cmp	edx, eax
jle	short loc_40345F
mov	esi, eax
sub	esi, ebx

loc_40345F:
cmp	ebx, ecx
jnz	short loc_403472
cmp	esi, eax
jnz	short loc_403472
mov	ecx, [ebp+arg_0]
push	edi
call	sub_4030F2
jmp	short loc_4034CF

loc_403472:
mov	[ebp+Memory], ecx
mov	[ebp+var_18], ecx
mov	[ebp+var_14], ecx
push	3
lea	ecx, [ebp+Memory]
call	sub_403396
and	[ebp+var_4], 0
push	esi
lea	ecx, [ebp+Memory]
call	sub_403396
xor	ecx, ecx
test	esi, esi
jle	short loc_4034AF
lea	eax, [ebx+ebx]

loc_40349B:
mov	edx, [edi]
mov	ebx, [ebp+Memory]
mov	dx, [eax+edx]
mov	[ebx+ecx*2], dx
inc	ecx
inc	eax
inc	eax
cmp	ecx, esi
jl	short loc_40349B

loc_4034AF:
mov	eax, [ebp+Memory]
mov	ecx, [ebp+arg_0]
and	word ptr [eax+esi*2], 0
lea	eax, [ebp+Memory]
push	eax
mov	[ebp+var_18], esi
call	sub_4030F2
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_4034CF:
mov	ecx, [ebp+var_C]
mov	eax, [ebp+arg_0]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	0Ch
sub_403434 endp




sub_4034E3 proc	near

arg_0= dword ptr  4

mov	eax, [esp+arg_0]
push	ebx
push	esi
mov	esi, ecx
lea	ebx, [eax+1]
cmp	ebx, [esi+8]
jz	short loc_40352C
push	edi
push	ebx		; Size
call	sub_4284B1
mov	edi, eax
xor	eax, eax
cmp	[esi+8], eax
pop	ecx
jle	short loc_40351F
cmp	[esi+4], eax
jle	short loc_403517

loc_403509:
mov	ecx, [esi]
mov	cl, [ecx+eax]
mov	[eax+edi], cl
inc	eax
cmp	eax, [esi+4]
jl	short loc_403509

loc_403517:		; Memory
push	dword ptr [esi]
call	sub_4284D8
pop	ecx

loc_40351F:
mov	eax, [esi+4]
mov	[esi], edi
and	byte ptr [eax+edi], 0
mov	[esi+8], ebx
pop	edi

loc_40352C:
pop	esi
pop	ebx
retn	4
sub_4034E3 endp




sub_403531 proc	near

arg_0= dword ptr  4

push	ebx
push	ebp
mov	ebp, [esp+8+arg_0]
push	esi
mov	esi, ecx
push	edi
mov	edi, [ebp+8]
mov	eax, [esi+8]
add	eax, edi
push	eax
call	sub_428378
xor	ebx, ebx
test	edi, edi
jle	short loc_403561

loc_40354F:
mov	eax, [ebp+0Ch]
mov	ecx, esi
push	dword ptr [eax+ebx*4]
call	sub_4032B4
inc	ebx
cmp	ebx, edi
jl	short loc_40354F

loc_403561:
mov	eax, esi
pop	edi
pop	esi
pop	ebp
pop	ebx
retn	4
sub_403531 endp



; Attributes: bp-based frame

sub_40356A proc	near

Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_442698
call	__EH_prolog
sub	esp, 10h
and	[ebp+var_10], 0
push	esi
mov	esi, ecx
push	edx
lea	ecx, [ebp+Memory]
call	sub_4030F2
push	[ebp+arg_0]
and	[ebp+var_4], 0
lea	ecx, [ebp+Memory]
call	sub_4031F2
lea	eax, [ebp+Memory]
mov	ecx, esi
push	eax
call	sub_4030F2
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_40356A endp




sub_4035BB proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	ebx
push	esi
push	edi
mov	edi, [esp+0Ch+arg_4]
mov	esi, ecx
xor	ebx, ebx
lea	eax, [edi+edi*4]
shl	eax, 2
mov	[esi+4], ebx
push	eax		; Size
mov	dword ptr [esi], offset	off_44B800
mov	dword ptr [esi+8], 1
mov	[esi+14h], ebx
mov	[esi+0Ch], ebx
call	sub_4284B1
cmp	eax, ebx
pop	ecx
mov	[esi+10h], eax
jz	short loc_40360E
cmp	edi, ebx
mov	[esi+0Ch], edi
jbe	short loc_40360E

loc_4035F7:
mov	eax, [esp+0Ch+arg_0]
mov	ecx, [esi+10h]
add	ecx, ebx
lea	edx, [ebx+eax]
call	sub_40368F
add	ebx, 14h
dec	edi
jnz	short loc_4035F7

loc_40360E:
mov	eax, esi
pop	edi
pop	esi
pop	ebx
retn	8
sub_4035BB endp



; Attributes: bp-based frame

; int __stdcall	sub_403616(int,	void *Buf1, int)
sub_403616 proc	near

arg_0= dword ptr  8
Buf1= dword ptr	 0Ch
arg_8= dword ptr  10h

push	ebp
mov	ebp, esp
push	10h		; Size
push	offset unk_44CCB8 ; Buf2
push	[ebp+Buf1]	; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jz	short loc_403645
push	10h		; Size
push	offset unk_44CCA8 ; Buf2
push	[ebp+Buf1]	; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_403657

loc_403645:
mov	ecx, [ebp+arg_8]
mov	eax, [ebp+arg_0]
push	eax
mov	[ecx], eax
mov	ecx, [eax]
call	dword ptr [ecx+4]
xor	eax, eax
jmp	short loc_40365C

loc_403657:
mov	eax, 80004002h

loc_40365C:
pop	ebp
retn	0Ch
sub_403616 endp




; int __stdcall	sub_403660(void	*Memory)
sub_403660 proc	near

Memory=	dword ptr  4

push	esi
push	edi
mov	edi, [esp+8+Memory]
lea	esi, [edi+4]
push	esi		; lpAddend
call	ds:InterlockedDecrement
mov	eax, [esi]
test	eax, eax
jnz	short loc_40368A
test	edi, edi
jz	short loc_403688
mov	ecx, edi
call	sub_4036BF
push	edi		; Memory
call	sub_4284D8
pop	ecx

loc_403688:
xor	eax, eax

loc_40368A:
pop	edi
pop	esi
retn	4
sub_403660 endp




sub_40368F proc	near
push	ebx
push	ebp
push	esi
push	edi
mov	ebx, edx
mov	ebp, ecx
push	5
mov	esi, ebx
pop	ecx
mov	edi, ebp
rep movsd
cmp	dword ptr [ebx+4], 0
jz	short loc_4036BA
push	10h		; cb
call	ds:CoTaskMemAlloc
mov	[ebp+4], eax
mov	esi, [ebx+4]
mov	edi, eax
movsd
movsd
movsd
movsd

loc_4036BA:
pop	edi
pop	esi
pop	ebp
pop	ebx
retn
sub_40368F endp




sub_4036BF proc	near
push	esi
mov	esi, ecx
cmp	dword ptr [esi+10h], 0
mov	dword ptr [esi], offset	off_44B800
jz	short loc_4036FF
push	ebx
xor	ebx, ebx
cmp	[esi+0Ch], ebx
jbe	short loc_4036F5
push	edi
xor	edi, edi

loc_4036D9:
mov	eax, [esi+10h]
mov	eax, [eax+edi+4]
test	eax, eax
jz	short loc_4036EB
push	eax		; pv
call	ds:CoTaskMemFree

loc_4036EB:
inc	ebx
add	edi, 14h
cmp	ebx, [esi+0Ch]
jb	short loc_4036D9
pop	edi

loc_4036F5:		; Memory
push	dword ptr [esi+10h]
call	sub_4284D8
pop	ecx
pop	ebx

loc_4036FF:
pop	esi
retn
sub_4036BF endp



; Attributes: bp-based frame

sub_403701 proc	near

arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h

push	ebp
mov	ebp, esp
push	ebx
push	edi
xor	edi, edi
cmp	[ebp+arg_4], edi
jz	short loc_403752
mov	ebx, [ebp+arg_8]
cmp	ebx, edi
jz	short loc_403752
push	esi
mov	esi, [ebp+arg_0]

loc_403718:
mov	eax, [esi+14h]
cmp	eax, [esi+0Ch]
jnb	short loc_40373E
cmp	edi, [ebp+arg_4]
jnb	short loc_40373E
mov	ecx, [esi+10h]
lea	eax, [eax+eax*4]
lea	edx, [ecx+eax*4]
mov	ecx, ebx
call	sub_40368F
inc	edi
add	ebx, 14h
inc	dword ptr [esi+14h]
jmp	short loc_403718

loc_40373E:
mov	eax, [ebp+arg_C]
pop	esi
test	eax, eax
jz	short loc_403748
mov	[eax], edi

loc_403748:
xor	eax, eax
cmp	edi, [ebp+arg_4]
setnz	al
jmp	short loc_403757

loc_403752:
mov	eax, 80070057h

loc_403757:
pop	edi
pop	ebx
pop	ebp
retn	10h
sub_403701 endp




sub_40375D proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

mov	eax, [esp+arg_0]
mov	ecx, [esp+arg_4]
add	[eax+14h], ecx
mov	ecx, [eax+14h]
cmp	[eax+0Ch], ecx
sbb	eax, eax
neg	eax
retn	8
sub_40375D endp




sub_403775 proc	near

arg_0= dword ptr  4

mov	eax, [esp+arg_0]
and	dword ptr [eax+14h], 0
xor	eax, eax
retn	4
sub_403775 endp




sub_403782 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	esi
mov	esi, [esp+4+arg_0]
push	edi
mov	edi, [esp+8+arg_4]
mov	edx, [esi+10h]
mov	ecx, [esi+0Ch]
push	edi
call	sub_4037A9
test	eax, eax
jnz	short loc_4037A4
mov	ecx, [edi]
mov	edx, [esi+14h]
mov	[ecx+14h], edx

loc_4037A4:
pop	edi
pop	esi
retn	8
sub_403782 endp



; Attributes: bp-based frame

sub_4037A9 proc	near

var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset unknown_libname_9 ;	Microsoft VisualC 2-11/net runtime
call	__EH_prolog
push	ebx
push	esi
push	edi
mov	edi, ecx
test	edi, edi
mov	esi, edx
jz	short loc_4037F8
test	esi, esi
jz	short loc_4037F8
mov	ebx, [ebp+arg_0]
test	ebx, ebx
jz	short loc_4037F8
push	18h		; Size
call	sub_4284B1
pop	ecx
mov	ecx, eax
mov	[ebp+arg_0], ecx
xor	eax, eax
cmp	ecx, eax
mov	[ebp+var_4], eax
jz	short loc_4037E6
push	edi
push	esi
call	sub_4035BB

loc_4037E6:
mov	[ebx], eax
neg	eax
sbb	eax, eax
and	eax, 7FF8FFF2h
add	eax, 8007000Eh
jmp	short loc_4037FD

loc_4037F8:
mov	eax, 80070057h

loc_4037FD:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_4037A9 endp




sub_40380E proc	near
push	esi
mov	esi, ecx
push	dword ptr [esi+64h] ; Memory
mov	dword ptr [esi], offset	off_44B87C
mov	dword ptr [esi+4], offset off_44B860
mov	dword ptr [esi+8], offset off_44B83C
mov	dword ptr [esi+0Ch], offset off_44B82C
mov	dword ptr [esi+10h], offset off_44B81C
call	sub_4284D8
push	dword ptr [esi+28h] ; Memory
call	sub_4284D8
push	dword ptr [esi+18h] ; Memory
call	sub_4284D8
add	esp, 0Ch
pop	esi
retn
sub_40380E endp



; Attributes: bp-based frame

; int __stdcall	sub_403850(int,	void *Buf1, int)
sub_403850 proc	near

arg_0= dword ptr  8
Buf1= dword ptr	 0Ch
arg_8= dword ptr  10h

push	ebp
mov	ebp, esp
push	esi
mov	esi, [ebp+Buf1]
push	10h		; Size
push	offset unk_44CCB8 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_403875

loc_40386B:
mov	eax, [ebp+arg_0]
mov	ecx, eax
lea	edx, [eax+8]
jmp	short loc_4038E1

loc_403875:		; Size
push	10h
push	offset unk_44B6B0 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jz	short loc_40386B
push	10h		; Size
push	offset unk_44B610 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_4038A7
mov	ecx, [ebp+arg_8]
mov	eax, [ebp+arg_0]
mov	[ecx], eax
jmp	short loc_4038EC

loc_4038A7:		; Size
push	10h
push	offset unk_44B700 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_4038C5
mov	eax, [ebp+arg_0]
mov	ecx, eax
lea	edx, [eax+0Ch]
jmp	short loc_4038E1

loc_4038C5:		; Size
push	10h
push	offset unk_44B720 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_4038F6
mov	eax, [ebp+arg_0]
mov	ecx, eax
lea	edx, [eax+10h]

loc_4038E1:
neg	ecx
sbb	ecx, ecx
and	ecx, edx
mov	edx, [ebp+arg_8]
mov	[edx], ecx

loc_4038EC:
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+4]
xor	eax, eax
jmp	short loc_4038FB

loc_4038F6:
mov	eax, 80004002h

loc_4038FB:
pop	esi
pop	ebp
retn	0Ch
sub_403850 endp




sub_403900 proc	near

arg_0= dword ptr  4

mov	eax, [esp+arg_0]
inc	dword ptr [eax+14h]
mov	eax, [eax+14h]
retn	4
sub_403900 endp




; int __stdcall	sub_40390D(void	*Memory)
sub_40390D proc	near

Memory=	dword ptr  4

push	esi
mov	esi, [esp+4+Memory]
dec	dword ptr [esi+14h]
mov	eax, [esi+14h]
jnz	short loc_40392E
test	esi, esi
jz	short loc_40392C
mov	ecx, esi
call	sub_40380E
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_40392C:
xor	eax, eax

loc_40392E:
pop	esi
retn	4
sub_40390D endp




sub_403932 proc	near
xor	eax, eax
mov	[ecx+48h], eax
mov	[ecx+40h], eax
mov	[ecx+54h], eax
mov	[ecx+58h], al
mov	[ecx+4Ch], eax
mov	[ecx+44h], eax
mov	[ecx+50h], al
retn
sub_403932 endp




sub_40394A proc	near

arg_0= dword ptr  4

push	[esp+arg_0]
mov	byte ptr [ecx+58h], 1
mov	ecx, [ecx+38h]
add	ecx, 0F0h
call	sub_403963
retn	4
sub_40394A endp



; Attributes: bp-based frame

sub_403963 proc	near

Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_4426C8
call	__EH_prolog
sub	esp, 10h
push	esi
mov	esi, ecx
push	edi
lea	edi, [esi+94h]
push	edi		; lpCriticalSection
mov	[ebp+var_10], edi
call	ds:EnterCriticalSection
push	[ebp+arg_0]
and	[ebp+var_4], 0
lea	ecx, [ebp+Memory]
call	sub_403091
lea	eax, [ebp+Memory]
lea	ecx, [esi+50h]
push	eax
mov	byte ptr [ebp+var_4], 1
call	sub_4032B4
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
push	edi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_403963 endp




sub_4039C3 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch

mov	eax, [esp+arg_0]
push	[esp+arg_8]
mov	ecx, [eax+30h]
push	[esp+4+arg_4]
add	ecx, 0F0h
call	sub_4039E2
xor	eax, eax
retn	0Ch
sub_4039C3 endp




sub_4039E2 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	esi
mov	esi, ecx
push	edi
lea	edi, [esi+94h]
push	edi		; lpCriticalSection
call	ds:EnterCriticalSection
mov	eax, [esp+8+arg_0]
push	edi		; lpCriticalSection
mov	[esi+18h], eax
mov	eax, [esp+0Ch+arg_4]
mov	[esi+1Ch], eax
call	ds:LeaveCriticalSection
pop	edi
pop	esi
retn	8
sub_4039E2 endp




sub_403A0D proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch

mov	eax, [esp+arg_0]
push	0
push	0
push	[esp+8+arg_8]
mov	ecx, [eax+38h]
add	ecx, 0F0h
push	[esp+0Ch+arg_4]
call	sub_403A30
xor	eax, eax
retn	0Ch
sub_403A0D endp




sub_403A30 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= dword ptr  10h

push	esi
mov	esi, ecx
push	edi
lea	edi, [esi+94h]
push	edi		; lpCriticalSection
call	ds:EnterCriticalSection
mov	eax, [esp+8+arg_0]
push	edi		; lpCriticalSection
mov	[esi+8], eax
mov	eax, [esp+0Ch+arg_4]
mov	[esi+0Ch], eax
mov	eax, [esp+0Ch+arg_8]
mov	[esi+10h], eax
mov	eax, [esp+0Ch+arg_C]
mov	[esi+14h], eax
call	ds:LeaveCriticalSection
pop	edi
pop	esi
retn	10h
sub_403A30 endp




sub_403A69 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	esi
push	edi
mov	edi, [esp+8+arg_0]
mov	esi, 0F0h
mov	ecx, [edi+38h]
add	ecx, esi
call	sub_422D48
test	eax, eax
jnz	short loc_403A9B
mov	eax, [esp+8+arg_4]
test	eax, eax
jz	short loc_403A99
push	dword ptr [eax+4]
mov	ecx, [edi+38h]
add	ecx, esi
push	dword ptr [eax]
call	sub_403AA0

loc_403A99:
xor	eax, eax

loc_403A9B:
pop	edi
pop	esi
retn	8
sub_403A69 endp




sub_403AA0 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	esi
mov	esi, ecx
push	edi
lea	edi, [esi+94h]
push	edi		; lpCriticalSection
call	ds:EnterCriticalSection
mov	eax, [esp+8+arg_0]
push	edi		; lpCriticalSection
mov	[esi+10h], eax
mov	eax, [esp+0Ch+arg_4]
mov	[esi+14h], eax
call	ds:LeaveCriticalSection
pop	edi
pop	esi
retn	8
sub_403AA0 endp




sub_403ACB proc	near
mov	ecx, [ecx+34h]
add	ecx, 0F0h
jmp	sub_422D48
sub_403ACB endp




sub_403AD9 proc	near
xor	eax, eax
retn	8
sub_403AD9 endp




sub_403ADE proc	near
mov	ecx, [ecx+34h]
add	ecx, 0F0h
call	sub_422D48
retn	8
sub_403ADE endp




sub_403AEF proc	near

arg_0= dword ptr  4

push	[esp+arg_0]
lea	eax, [ecx+0Ch]
mov	ecx, [ecx+0Ch]
push	eax
call	dword ptr [ecx+0Ch]
retn	4
sub_403AEF endp




sub_403B00 proc	near

arg_0= dword ptr  4

cmp	byte ptr [ecx+5Ch], 0
jz	short ?_Get_deleter@_Ref_count_base@std@@UBEPAXABVtype_info@@@Z_0 ; std::_Ref_count_base::_Get_deleter(type_info const &)
add	ecx, 60h
push	ecx
mov	ecx, [esp+4+arg_0]
call	sub_40312C
sub_403B00 endp	; sp-analysis failed

; [00000005 BYTES: COLLAPSED FUNCTION std::_Ref_count_base::_Get_deleter(type_info const &). PRESS KEYPAD CTRL-"+" TO EXPAND]



sub_403B18 proc	near
mov	al, [ecx+5Dh]
retn
sub_403B18 endp




sub_403B1C proc	near
and	byte ptr [ecx+5Dh], 0
retn
sub_403B1C endp




sub_403B21 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch

mov	eax, [esp+arg_0]
push	[esp+arg_8]
mov	ecx, [eax+2Ch]
push	[esp+4+arg_4]
add	ecx, 0F0h
call	sub_403B40
xor	eax, eax
retn	0Ch
sub_403B21 endp




sub_403B40 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	esi
mov	esi, ecx
push	edi
lea	edi, [esi+94h]
push	edi		; lpCriticalSection
call	ds:EnterCriticalSection
mov	eax, [esp+8+arg_0]
test	eax, eax
jz	short loc_403B64
mov	ecx, [eax]
mov	[esi+28h], ecx
mov	eax, [eax+4]
mov	[esi+2Ch], eax

loc_403B64:
mov	eax, [esp+8+arg_4]
test	eax, eax
jz	short loc_403B77
mov	ecx, [eax]
mov	[esi+30h], ecx
mov	eax, [eax+4]
mov	[esi+34h], eax

loc_403B77:		; lpCriticalSection
push	edi
call	ds:LeaveCriticalSection
pop	edi
pop	esi
retn	8
sub_403B40 endp



; Attributes: bp-based frame

sub_403B83 proc	near

var_6C=	byte ptr -6Ch
var_64=	byte ptr -64h
var_5C=	byte ptr -5Ch
var_5B=	byte ptr -5Bh
var_54=	dword ptr -54h
var_50=	dword ptr -50h
var_4C=	dword ptr -4Ch
var_48=	dword ptr -48h
var_44=	byte ptr -44h
var_34=	byte ptr -34h
var_33=	byte ptr -33h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	byte ptr -1Ch
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h
arg_10=	dword ptr  18h
arg_14=	dword ptr  1Ch
arg_18=	dword ptr  20h
arg_1C=	dword ptr  24h

mov	eax, offset loc_4426DC
call	__EH_prolog
sub	esp, 60h
push	ebx
push	esi
lea	ecx, [ebp+var_6C]
call	sub_403CDF
mov	eax, [ebp+arg_8]
xor	ebx, ebx
cmp	eax, ebx
mov	[ebp+var_4], ebx
jnz	short loc_403BAB
mov	[ebp+var_5B], bl
jmp	short loc_403BBA

loc_403BAB:
mov	ecx, [eax]
mov	eax, [eax+4]
mov	[ebp+var_5B], 1
mov	[ebp+var_4C], ecx
mov	[ebp+var_48], eax

loc_403BBA:
mov	eax, [ebp+arg_C]
cmp	eax, ebx
jnz	short loc_403BC6
mov	[ebp+var_5C], bl
jmp	short loc_403BD5

loc_403BC6:
mov	ecx, [eax]
mov	eax, [eax+4]
mov	[ebp+var_5C], 1
mov	[ebp+var_54], ecx
mov	[ebp+var_50], eax

loc_403BD5:
push	[ebp+arg_4]
lea	ecx, [ebp+var_44]
call	sub_404722
mov	eax, [ebp+arg_14]
cmp	eax, ebx
jnz	short loc_403BEC
mov	[ebp+var_33], bl
jmp	short loc_403BFB

loc_403BEC:
mov	ecx, [eax]
mov	eax, [eax+4]
mov	[ebp+var_33], 1
mov	[ebp+var_24], ecx
mov	[ebp+var_20], eax

loc_403BFB:
mov	eax, [ebp+arg_18]
cmp	eax, ebx
jnz	short loc_403C07
mov	[ebp+var_34], bl
jmp	short loc_403C16

loc_403C07:
mov	ecx, [eax]
mov	eax, [eax+4]
mov	[ebp+var_34], 1
mov	[ebp+var_2C], ecx
mov	[ebp+var_28], eax

loc_403C16:
push	edi
lea	ecx, [ebp+var_1C]
push	[ebp+arg_10]
call	sub_404722
mov	edi, [ebp+arg_0]
mov	esi, [edi+38h]
lea	ecx, [esi+0E4h]
call	sub_4418F0
mov	ecx, [esi+0E8h]	; hHandle
call	sub_441880
mov	edi, [edi+38h]
cmp	edi, ebx
jz	short loc_403C4A
lea	eax, [edi+4]
jmp	short loc_403C4C

loc_403C4A:
xor	eax, eax

loc_403C4C:
mov	eax, [eax]
lea	ecx, [ebp+var_6C]
push	eax		; hWndParent
push	1F6h		; lpTemplateName
mov	[ebp+var_64], 1
call	sub_42FCF7
push	2
pop	ecx
pop	edi
sub	eax, ecx
jz	short loc_403CB3
push	4
pop	edx
sub	eax, edx
jz	short loc_403CAA
dec	eax
jz	short loc_403CA3
sub	eax, 3EBh
jz	short loc_403C98
dec	eax
jz	short loc_403C8D
dec	eax
jz	short loc_403C86
mov	esi, 80004005h
jmp	short loc_403CC1

loc_403C86:
mov	eax, [ebp+arg_1C]
mov	[eax], edx
jmp	short loc_403CAF

loc_403C8D:
mov	eax, [ebp+arg_1C]
mov	dword ptr [eax], 3
jmp	short loc_403CAF

loc_403C98:
mov	eax, [ebp+arg_1C]
mov	dword ptr [eax], 1
jmp	short loc_403CAF

loc_403CA3:
mov	eax, [ebp+arg_1C]
mov	[eax], ecx
jmp	short loc_403CAF

loc_403CAA:
mov	eax, [ebp+arg_1C]
mov	[eax], ebx

loc_403CAF:
xor	esi, esi
jmp	short loc_403CC1

loc_403CB3:
mov	eax, [ebp+arg_1C]
mov	esi, 80004004h
mov	dword ptr [eax], 5

loc_403CC1:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_6C]
call	sub_403D27
mov	ecx, [ebp+var_C]
mov	eax, esi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	20h
sub_403B83 endp



; Attributes: bp-based frame

sub_403CDF proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4426FB
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
and	dword ptr [esi+4], 0
mov	dword ptr [esi], offset	off_44B558
and	[ebp+var_4], 0
lea	ecx, [esi+10h]
call	sub_403D60
lea	ecx, [esi+38h]
mov	byte ptr [ebp+var_4], 1
call	sub_403D60
mov	ecx, [ebp+var_C]
mov	dword ptr [esi], offset	off_44B8B4
mov	eax, esi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_403CDF endp




sub_403D27 proc	near
push	esi
mov	esi, ecx
push	dword ptr [esi+50h] ; Memory
call	sub_4284D8
push	dword ptr [esi+28h] ; Memory
call	sub_4284D8
pop	ecx
mov	dword ptr [esi], offset	off_44B588
pop	ecx
pop	esi
retn
sub_403D27 endp




; int __thiscall sub_403D44(void *Memory, char)
sub_403D44 proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_403D27
test	[esp+4+arg_0], 1
jz	short loc_403D5A
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_403D5A:
mov	eax, esi
pop	esi
retn	4
sub_403D44 endp




sub_403D60 proc	near
push	esi
mov	esi, ecx
xor	eax, eax
push	3
lea	ecx, [esi+18h]
mov	[ecx], eax
mov	[ecx+4], eax
mov	[ecx+8], eax
call	sub_403396
mov	eax, esi
pop	esi
retn
sub_403D60 endp

; START	OF FUNCTION CHUNK FOR sub_4426F0

loc_403D7B:		; Memory
push	dword ptr [ecx+18h]
call	sub_4284D8
pop	ecx
retn
; END OF FUNCTION CHUNK	FOR sub_4426F0



sub_403D85 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= byte ptr	 0Ch

mov	ecx, [esp+arg_0]
mov	al, [esp+arg_8]
push	[esp+arg_4]
mov	[ecx+34h], al
call	sub_403F90
retn	14h
sub_403D85 endp




sub_403D9C proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	[esp+arg_4]
mov	ecx, [esp+4+arg_0]
call	sub_40394A
xor	eax, eax
retn	8
sub_403D9C endp




sub_403DAE proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

mov	eax, [esp+arg_0]
push	[esp+arg_4]
lea	ecx, [eax-8]
call	sub_40394A
xor	eax, eax
retn	8
sub_403DAE endp



; Attributes: bp-based frame

sub_403DC3 proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= byte ptr	 10h

mov	eax, offset loc_442710
call	__EH_prolog
sub	esp, 0Ch
mov	eax, [ebp+arg_4]
push	ebx
push	esi
mov	esi, [ebp+arg_0]
test	eax, eax
push	edi
jz	loc_403E87
dec	eax
jz	short loc_403E3A
dec	eax
jz	short loc_403E18
dec	eax
jz	short loc_403DF4
mov	eax, 80004005h
jmp	loc_403EB5

loc_403DF4:
mov	al, [ebp+arg_8]
mov	cl, al
neg	cl
sbb	ecx, ecx
and	ecx, 3
add	ecx, 0CAh
neg	al
sbb	eax, eax
mov	edi, ecx
and	eax, 2
add	eax, 2000A93h

loc_403E14:
mov	ebx, eax
jmp	short loc_403E44

loc_403E18:
mov	al, [ebp+arg_8]
mov	cl, al
neg	cl
sbb	ecx, ecx
and	ecx, 3
add	ecx, 0CBh
neg	al
sbb	eax, eax
mov	edi, ecx
and	eax, 2
add	eax, 2000A92h
jmp	short loc_403E14

loc_403E3A:
mov	edi, 0CCh
mov	ebx, 2000A91h

loc_403E44:
cmp	byte ptr [esi+24h], 0
jz	short loc_403E5E
cmp	dword ptr [esi+1Ch], 0
jz	short loc_403E5A
push	dword ptr [esi+18h]
mov	ecx, esi
call	sub_40394A

loc_403E5A:
and	byte ptr [esi+24h], 0

loc_403E5E:
lea	eax, [esi+28h]
mov	edx, edi
push	eax
push	ebx
lea	ecx, [ebp+Memory]
call	sub_40744B
push	dword ptr [eax]
and	[ebp+var_4], 0
mov	ecx, esi
call	sub_40394A
push	[ebp+Memory]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
pop	ecx

loc_403E87:
cmp	byte ptr [esi+34h], 0
jz	short loc_403E97
add	dword ptr [esi+40h], 1
adc	dword ptr [esi+44h], 0
jmp	short loc_403E9F

loc_403E97:
add	dword ptr [esi+48h], 1
adc	dword ptr [esi+4Ch], 0

loc_403E9F:
push	dword ptr [esi+4Ch]
mov	ecx, [esi+38h]
add	ecx, 0F0h
push	dword ptr [esi+48h]
call	sub_403EC6
xor	eax, eax

loc_403EB5:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	0Ch
sub_403DC3 endp




sub_403EC6 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	esi
mov	esi, ecx
push	edi
lea	edi, [esi+94h]
push	edi		; lpCriticalSection
call	ds:EnterCriticalSection
mov	eax, [esp+8+arg_0]
push	edi		; lpCriticalSection
mov	[esi+20h], eax
mov	eax, [esp+0Ch+arg_4]
mov	[esi+24h], eax
call	ds:LeaveCriticalSection
pop	edi
pop	esi
retn	8
sub_403EC6 endp



; Attributes: bp-based frame

sub_403EF1 proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_442724
call	__EH_prolog
sub	esp, 0Ch
push	esi
mov	esi, ecx
push	[ebp+arg_0]
lea	ecx, [ebp+Memory]
call	sub_403091
mov	ecx, [esi+38h]
and	[ebp+var_4], 0
lea	eax, [ebp+Memory]
add	ecx, 0F0h
push	eax
call	sub_403F4B
push	[ebp+Memory]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
pop	ecx
push	[ebp+arg_0]
lea	ecx, [esi+18h]
call	sub_404722
mov	ecx, [ebp+var_C]
xor	eax, eax
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_403EF1 endp



; Attributes: bp-based frame

sub_403F4B proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_442738
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	edi
lea	edi, [esi+94h]
push	edi		; lpCriticalSection
mov	[ebp+var_10], edi
call	ds:EnterCriticalSection
push	[ebp+arg_0]
and	[ebp+var_4], 0
lea	ecx, [esi+38h]
call	sub_40312C
push	edi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_403F4B endp



; Attributes: bp-based frame

sub_403F90 proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_44274C
call	__EH_prolog
sub	esp, 0Ch
push	esi
mov	esi, ecx
push	[ebp+arg_0]
lea	ecx, [esi+28h]
call	sub_404722
push	[ebp+arg_0]
lea	ecx, [ebp+Memory]
call	sub_403091
mov	ecx, [esi+38h]
and	[ebp+var_4], 0
lea	eax, [ebp+Memory]
add	ecx, 0F0h
push	eax
call	sub_403FE6
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
xor	eax, eax
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_403F90 endp



; Attributes: bp-based frame

sub_403FE6 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_442760
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	edi
lea	edi, [esi+94h]
push	edi		; lpCriticalSection
mov	[ebp+var_10], edi
call	ds:EnterCriticalSection
push	[ebp+arg_0]
and	[ebp+var_4], 0
lea	ecx, [esi+44h]
call	sub_40312C
push	edi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_403FE6 endp




sub_40402B proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	esi
mov	esi, [esp+4+arg_0]
cmp	byte ptr [esi+48h], 0
jz	short loc_40403E
add	dword ptr [esi+40h], 1
adc	dword ptr [esi+44h], 0

loc_40403E:
mov	byte ptr [esi+48h], 1
push	dword ptr [esi+44h]
mov	ecx, [esi+30h]
push	dword ptr [esi+40h]
add	ecx, 0F0h
call	sub_403EC6
lea	ecx, [esi-8]
push	[esp+4+arg_4]
call	sub_403F90
pop	esi
retn	8
sub_40402B endp



; Attributes: bp-based frame

sub_404066 proc	near

Memory=	dword ptr -30h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= byte ptr	 10h

mov	eax, offset loc_442794
call	__EH_prolog
sub	esp, 24h
push	ebx
push	esi
push	edi
mov	edi, [ebp+arg_4]
xor	ebx, ebx
mov	esi, ecx
cmp	edi, ebx
jz	loc_404195
push	3
lea	ecx, [ebp+var_18]
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
mov	[ebp+var_10], ebx
call	sub_403396
push	[ebp+arg_0]
cmp	edi, 1
mov	[ebp+var_4], ebx
jnz	short loc_4040FA
lea	ecx, [ebp+var_24]
call	sub_403091
lea	eax, [ebp+var_24]
lea	ecx, [ebp+Memory]
push	eax
xor	eax, eax
cmp	[ebp+arg_8], bl
mov	byte ptr [ebp+var_4], 1
setnz	al
add	eax, 2000609h
xor	edx, edx
cmp	[ebp+arg_8], bl
push	eax
setnz	dl
add	edx, 67h
call	sub_40744B
push	eax
lea	ecx, [ebp+var_18]
mov	byte ptr [ebp+var_4], 2
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_24]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
pop	ecx
jmp	loc_40417B

loc_4040FA:
lea	ecx, [ebp+var_18]
call	sub_404722
push	offset asc_45B15C ; ": "
lea	ecx, [ebp+var_18]
call	sub_403195
push	3
lea	ecx, [ebp+var_24]
mov	[ebp+var_24], ebx
mov	[ebp+var_20], ebx
mov	[ebp+var_1C], ebx
call	sub_403396
cmp	edi, 8007000Eh
mov	byte ptr [ebp+var_4], 3
jnz	short loc_40415A
push	200060Bh
push	69h
pop	edx
lea	ecx, [ebp+Memory]
call	sub_40B168
push	eax
lea	ecx, [ebp+var_24]
mov	byte ptr [ebp+var_4], 4
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 3
call	sub_4284D8
pop	ecx
jmp	short loc_404164

loc_40415A:
lea	edx, [ebp+var_24]
mov	ecx, edi
call	sub_429BE4

loc_404164:
lea	eax, [ebp+var_24]
lea	ecx, [ebp+var_18]
push	eax
call	sub_4031F2
push	[ebp+var_24]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8

loc_40417B:
mov	eax, [esi]
pop	ecx
push	[ebp+var_18]
push	esi
call	dword ptr [eax+1Ch]
push	[ebp+var_18]	; Memory
inc	dword ptr [esi+54h]
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
pop	ecx

loc_404195:
push	[ebp+arg_0]
lea	ecx, [esi+18h]
call	sub_404722
mov	ecx, [ebp+var_C]
mov	byte ptr [esi+24h], 1
pop	edi
pop	esi
xor	eax, eax
pop	ebx
mov	large fs:0, ecx
leave
retn	0Ch
sub_404066 endp



; Attributes: bp-based frame

sub_4041B7 proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_4427A8
call	__EH_prolog
sub	esp, 0Ch
push	esi
push	edi
mov	edi, [ebp+arg_0]
mov	esi, ecx
test	edi, edi
jz	short loc_404208
inc	dword ptr [esi+54h]
cmp	edi, 80004004h
jz	short loc_40420C
cmp	edi, 70h
jz	short loc_40420C
mov	eax, [esi+28h]
mov	ecx, [esi]
push	eax
push	esi
call	dword ptr [ecx+1Ch]
mov	edx, edi
lea	ecx, [ebp+Memory]
call	sub_40421E
push	dword ptr [eax]
mov	ecx, [esi]
and	[ebp+var_4], 0
push	esi
call	dword ptr [ecx+1Ch]
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_404208:
xor	eax, eax
jmp	short loc_40420E

loc_40420C:
mov	eax, edi

loc_40420E:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_4041B7 endp



; Attributes: bp-based frame

sub_40421E proc	near

Memory=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4427BC
call	__EH_prolog
sub	esp, 10h
push	ebx
push	esi
push	edi
mov	edi, ecx
xor	esi, esi
mov	ebx, edx
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+var_10], esi
mov	[ebp+Memory], esi
mov	[ebp+var_18], esi
mov	[ebp+var_14], esi
call	sub_403396
lea	edx, [ebp+Memory]
mov	ecx, ebx
mov	[ebp+var_4], esi
call	sub_429BE4
lea	eax, [ebp+Memory]
mov	ecx, edi
push	eax
call	sub_4030F2
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, edi
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40421E endp




sub_40427C proc	near

arg_0= dword ptr  4

push	[esp+arg_0]
mov	byte ptr [ecx+60h], 1
add	ecx, 64h
call	sub_40312C
xor	eax, eax
retn	4
sub_40427C endp



; Attributes: bp-based frame

sub_404291 proc	near

var_24=	byte ptr -24h
Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_4427D0
call	__EH_prolog
sub	esp, 18h
push	esi
mov	esi, [ebp+arg_0]
mov	byte ptr [esi+51h], 1
cmp	byte ptr [esi+50h], 0
jnz	short loc_40431E
push	edi
lea	ecx, [ebp+var_24]
call	sub_404349
mov	edi, [esi+28h]
and	[ebp+var_4], 0
lea	ecx, [edi+0E4h]
call	sub_4418F0
mov	ecx, [edi+0E8h]	; hHandle
call	sub_441880
mov	eax, [esi+28h]
pop	edi
test	eax, eax
jz	short loc_4042DF
add	eax, 4
jmp	short loc_4042E1

loc_4042DF:
xor	eax, eax

loc_4042E1:		; hWndParent
push	dword ptr [eax]
lea	ecx, [ebp+var_24]
push	1F5h		; lpTemplateName
call	sub_42FCF7
cmp	eax, 2
jnz	short loc_404305
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, 80004004h
jmp	short loc_40433A

loc_404305:
lea	eax, [ebp+Memory]
lea	ecx, [esi+54h]
push	eax
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [esi+50h], 1
call	sub_4284D8
pop	ecx

loc_40431E:		; psz
push	dword ptr [esi+54h]
call	ds:SysAllocString
mov	ecx, [ebp+arg_4]
mov	[ecx], eax
neg	eax
sbb	eax, eax
and	eax, 7FF8FFF2h
add	eax, 8007000Eh

loc_40433A:
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	8
sub_404291 endp



; Attributes: bp-based frame

sub_404349 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4427E4
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
xor	eax, eax
mov	[ebp+var_10], esi
mov	[esi+4], eax
mov	dword ptr [esi], offset	off_44B558
lea	ecx, [esi+0Ch]
mov	[esi+8], eax
push	3
mov	[ebp+var_4], eax
mov	[ecx], eax
mov	[ecx+4], eax
mov	[ecx+8], eax
call	sub_403396
mov	ecx, [ebp+var_C]
mov	dword ptr [esi], offset	off_44B8E4
mov	eax, esi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_404349 endp




; int __thiscall sub_404392(void *Memory, char)
sub_404392 proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_40D710
test	[esp+4+arg_0], 1
jz	short loc_4043A8
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_4043A8:
mov	eax, esi
pop	esi
retn	4
sub_404392 endp



; Attributes: bp-based frame

sub_4043AE proc	near

var_98=	byte ptr -98h
var_80=	byte ptr -80h
var_78=	dword ptr -78h
var_70=	dword ptr -70h
var_60=	dword ptr -60h
Memory=	dword ptr -54h
var_48=	dword ptr -48h
psz= dword ptr -3Ch
var_30=	dword ptr -30h
var_24=	dword ptr -24h
lpFileName= dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h
arg_10=	dword ptr  18h
arg_14=	dword ptr  1Ch
arg_18=	dword ptr  20h
arg_1C=	dword ptr  24h

mov	eax, offset loc_442873
call	__EH_prolog
sub	esp, 8Ch
push	ebx
push	esi
push	edi
lea	ecx, [ebp+psz]
push	[ebp+arg_14]
call	sub_403091
mov	eax, [ebp+arg_18]
mov	edi, [ebp+arg_1C]
push	[ebp+arg_14]
xor	ebx, ebx
mov	[eax], ebx
lea	ecx, [ebp+var_30]
mov	[ebp+var_4], ebx
mov	[edi], ebx
call	sub_403091
lea	eax, [ebp+var_30]
lea	ecx, [ebp+lpFileName]
push	eax
mov	byte ptr [ebp+var_4], 1
call	sub_4030F2
cmp	[ebp+arg_8], ebx
lea	ecx, [ebp+var_70]
mov	byte ptr [ebp+var_4], 2
setnz	byte ptr [ebp+arg_14+3]
call	sub_403079
push	[ebp+lpFileName] ; lpFileName
lea	ecx, [ebp+var_98]
mov	byte ptr [ebp+var_4], 3
call	sub_42B49E
test	al, al
jz	loc_404647
cmp	byte ptr [ebp+arg_14+3], bl
mov	eax, [ebp+var_78]
jz	loc_4044C3
shr	eax, 4
test	al, 1
jnz	loc_4044BC
push	offset aWithFolderWith ; "' with folder with same name"
lea	ecx, [ebp+var_48]
call	sub_403091
mov	esi, eax
push	offset aCanNotReplaceF ; "can not replace file '"
lea	ecx, [ebp+var_60]
mov	byte ptr [ebp+var_4], 4
call	sub_403091
lea	ecx, [ebp+var_30]
mov	edx, eax
push	ecx
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 5
call	sub_40356A
push	esi
mov	edx, eax
lea	ecx, [ebp+var_24]
mov	byte ptr [ebp+var_4], 6
call	sub_40356A
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_60]	; Memory
call	sub_4284D8
push	[ebp+var_48]	; Memory
mov	byte ptr [ebp+var_4], 8
call	sub_4284D8
mov	eax, [ebp+arg_0]
add	esp, 0Ch
add	eax, 0FFFFFFF8h
push	[ebp+var_24]
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+1Ch]
cmp	eax, ebx
mov	esi, eax
jnz	short loc_4044B4
mov	esi, 80004004h

loc_4044B4:
push	[ebp+var_24]
jmp	loc_4046F3

loc_4044BC:
mov	[edi], ebx
jmp	loc_40466B

loc_4044C3:
shr	eax, 4
test	al, 1
jz	loc_404550
push	offset aWithFileWithSa ; "' with file with same name"
lea	ecx, [ebp+Memory]
call	sub_403091
mov	esi, eax
push	offset aCanNotReplac_0 ; "can not replace folder '"
lea	ecx, [ebp+var_60]
mov	byte ptr [ebp+var_4], 0Bh
call	sub_403091
lea	ecx, [ebp+var_30]
mov	edx, eax
push	ecx
lea	ecx, [ebp+var_48]
mov	byte ptr [ebp+var_4], 0Ch
call	sub_40356A
push	esi
mov	edx, eax
lea	ecx, [ebp+var_24]
mov	byte ptr [ebp+var_4], 0Dh
call	sub_40356A
push	[ebp+var_48]	; Memory
call	sub_4284D8
push	[ebp+var_60]	; Memory
call	sub_4284D8
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 0Fh
call	sub_4284D8
mov	eax, [ebp+arg_0]
add	esp, 0Ch
add	eax, 0FFFFFFF8h
push	[ebp+var_24]
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+1Ch]
cmp	eax, ebx
mov	esi, eax
jnz	short loc_404548
mov	esi, 80004005h

loc_404548:
push	[ebp+var_24]
jmp	loc_4046F3

loc_404550:
mov	esi, [ebp+arg_0]
mov	eax, [esi+54h]
sub	eax, ebx
jz	short loc_404563
dec	eax
dec	eax
jnz	short loc_4045DA
jmp	loc_40466B

loc_404563:
lea	edx, [ebp+arg_0]
mov	ecx, [esi-8]
push	edx
lea	edx, [ebp+var_98]
push	[ebp+arg_10]
lea	eax, [esi-8]
push	[ebp+arg_C]
push	[ebp+arg_4]
push	edx
lea	edx, [ebp+var_80]
push	edx
push	[ebp+var_30]
push	eax
call	dword ptr [ecx+14h]
cmp	eax, ebx
jnz	loc_404669
mov	eax, [ebp+arg_0]
sub	eax, ebx
jz	short loc_4045DA
dec	eax
jz	short loc_4045D3
dec	eax
jz	loc_40466B
dec	eax
jz	short loc_4045C7
dec	eax
jz	short loc_4045BE
dec	eax
jz	short loc_4045B4
mov	ebx, 80004005h
jmp	loc_40466B

loc_4045B4:
mov	ebx, 80004004h
jmp	loc_40466B

loc_4045BE:
mov	dword ptr [esi+54h], 3
jmp	short loc_4045DA

loc_4045C7:
mov	dword ptr [esi+54h], 2
jmp	loc_40466B

loc_4045D3:
mov	dword ptr [esi+54h], 1

loc_4045DA:
cmp	dword ptr [esi+54h], 3
jnz	loc_4046A1
lea	ecx, [ebp+lpFileName]
call	sub_4305D0
test	al, al
jnz	short loc_40463B
push	offset aCanNotCreateNa ; "can not create name of file "
lea	ecx, [ebp+var_48]
call	sub_403091
lea	ecx, [ebp+lpFileName]
mov	edx, eax
push	ecx
lea	ecx, [ebp+var_24]
mov	byte ptr [ebp+var_4], 12h
call	sub_40356A
push	[ebp+var_48]	; Memory
mov	byte ptr [ebp+var_4], 14h
call	sub_4284D8
pop	ecx
lea	eax, [esi-8]
push	[ebp+var_24]
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+1Ch]
cmp	eax, ebx
mov	esi, eax
jnz	short loc_404633
mov	esi, 80004004h

loc_404633:
push	[ebp+var_24]
jmp	loc_4046F3

loc_40463B:
lea	eax, [ebp+lpFileName]
lea	ecx, [ebp+psz]
push	eax
call	sub_40312C

loc_404647:		; psz
push	[ebp+psz]
mov	dword ptr [edi], 1
call	ds:SysAllocString
mov	ecx, [ebp+arg_18]
mov	[ecx], eax
neg	eax
sbb	eax, eax
and	eax, 7FF8FFF2h
add	eax, 8007000Eh

loc_404669:
mov	ebx, eax

loc_40466B:		; Memory
push	[ebp+var_70]
call	sub_4284D8
push	[ebp+lpFileName] ; Memory
call	sub_4284D8
push	[ebp+var_30]	; Memory
call	sub_4284D8
push	[ebp+psz]	; Memory
call	sub_4284D8
add	esp, 10h
mov	eax, ebx

loc_404690:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	20h

loc_4046A1:
mov	ecx, [ebp+lpFileName]
call	sub_42A481
test	al, al
jnz	short loc_404647
push	offset aCanNotDeleteOu ; "can not delete output	file "
lea	ecx, [ebp+var_48]
call	sub_403091
lea	ecx, [ebp+lpFileName]
mov	edx, eax
push	ecx
lea	ecx, [ebp+var_24]
mov	byte ptr [ebp+var_4], 15h
call	sub_40356A
push	[ebp+var_48]	; Memory
mov	byte ptr [ebp+var_4], 17h
call	sub_4284D8
pop	ecx
lea	eax, [esi-8]
push	[ebp+var_24]
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+1Ch]
cmp	eax, ebx
mov	esi, eax
jnz	short loc_4046F0
mov	esi, 80004004h

loc_4046F0:		; Memory
push	[ebp+var_24]

loc_4046F3:
call	sub_4284D8
push	[ebp+var_70]	; Memory
call	sub_4284D8
push	[ebp+lpFileName] ; Memory
call	sub_4284D8
push	[ebp+var_30]	; Memory
call	sub_4284D8
push	[ebp+psz]	; Memory
call	sub_4284D8
add	esp, 14h
mov	eax, esi
jmp	loc_404690
sub_4043AE endp



; Attributes: bp-based frame

sub_404722 proc	near

var_4= dword ptr -4
arg_0= dword ptr  8

push	ebp
mov	ebp, esp
push	ecx
push	esi
mov	esi, ecx
push	edi
mov	edi, [ebp+arg_0]
mov	eax, [esi]
xor	ecx, ecx
mov	[esi+4], ecx
mov	[ebp+var_4], ecx
mov	[eax], cx
cmp	[edi], cx
jz	short loc_40474B
mov	eax, edi

loc_404741:
inc	[ebp+var_4]
inc	eax
inc	eax
cmp	[eax], cx
jnz	short loc_404741

loc_40474B:
push	[ebp+var_4]
mov	ecx, esi
call	sub_403396
mov	eax, [esi]
mov	cx, [edi]
lea	edx, [edi+2]
mov	[eax], cx
inc	eax
inc	eax

loc_404762:
test	cx, cx
jz	short loc_404773
mov	cx, [edx]
mov	[eax], cx
inc	eax
inc	eax
inc	edx
inc	edx
jmp	short loc_404762

loc_404773:
mov	eax, [ebp+var_4]
pop	edi
mov	[esi+4], eax
mov	eax, esi
pop	esi
leave
retn	4
sub_404722 endp




sub_404781 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 8
jmp	sub_403850
sub_404781 endp




sub_40478B proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 8
jmp	sub_40390D
sub_40478B endp




sub_404795 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch

sub	[esp+arg_0], 8
jmp	sub_403A0D
sub_404795 endp




sub_40479F proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

sub	[esp+arg_0], 8
jmp	sub_403A69
sub_40479F endp




sub_4047A9 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 0Ch
jmp	sub_403850
sub_4047A9 endp




sub_4047B3 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 0Ch
jmp	sub_40390D
sub_4047B3 endp




sub_4047BD proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 10h
jmp	sub_403850
sub_4047BD endp




sub_4047C7 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 10h
jmp	sub_40390D
sub_4047C7 endp



; Attributes: bp-based frame

sub_4047D1 proc	near

var_E8=	dword ptr -0E8h
var_D8=	dword ptr -0D8h
var_CC=	dword ptr -0CCh
var_C0=	dword ptr -0C0h
var_B4=	dword ptr -0B4h
var_AC=	dword ptr -0ACh
var_A8=	dword ptr -0A8h
var_A0=	dword ptr -0A0h
var_9C=	byte ptr -9Ch
var_90=	byte ptr -90h
var_84=	byte ptr -84h
var_80=	byte ptr -80h
var_7C=	byte ptr -7Ch
var_78=	dword ptr -78h
var_74=	dword ptr -74h
var_70=	dword ptr -70h
var_6C=	dword ptr -6Ch
var_68=	dword ptr -68h
var_64=	dword ptr -64h
var_60=	dword ptr -60h
var_5C=	dword ptr -5Ch
var_58=	dword ptr -58h
var_54=	dword ptr -54h
var_50=	dword ptr -50h
var_4C=	dword ptr -4Ch
var_48=	dword ptr -48h
var_44=	dword ptr -44h
var_40=	dword ptr -40h
var_3C=	dword ptr -3Ch
var_38=	dword ptr -38h
var_34=	dword ptr -34h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
Memory=	dword ptr -28h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h
arg_10=	dword ptr  18h
arg_14=	dword ptr  1Ch

mov	eax, offset loc_442919
call	__EH_prolog
sub	esp, 0CCh
push	ebx
push	esi
push	edi
mov	[ebp+var_3C], ecx
mov	edi, edx
lea	ecx, [ebp+var_B4]
mov	[ebp+var_A0], edi
call	sub_40337B
mov	[ebp+var_B4], offset off_44B92C
xor	ebx, ebx
lea	ecx, [ebp+var_B4]
mov	[ebp+var_4], ebx
call	sub_41E687
lea	ecx, [ebp+var_60]
mov	[ebp+var_60], ebx
push	3
mov	[ebp+var_5C], ebx
pop	esi
mov	[ebp+var_58], ebx
push	esi
call	sub_403396
push	esi
lea	ecx, [ebp+var_6C]
mov	byte ptr [ebp+var_4], 1
mov	[ebp+var_6C], ebx
mov	[ebp+var_68], ebx
mov	[ebp+var_64], ebx
call	sub_403396
push	esi
lea	ecx, [ebp+var_48]
mov	byte ptr [ebp+var_4], 2
mov	[ebp+var_48], ebx
mov	[ebp+var_44], ebx
mov	[ebp+var_40], ebx
call	sub_403396
push	esi
lea	ecx, [ebp+var_54]
mov	byte ptr [ebp+var_4], 3
mov	[ebp+var_54], ebx
mov	[ebp+var_50], ebx
mov	[ebp+var_4C], ebx
call	sub_403396
mov	eax, [edi+4]
mov	byte ptr [ebp+var_4], 4
cmp	eax, ebx
jz	short loc_404892
mov	ecx, [edi]
lea	eax, [ecx+eax*2-2]

loc_40487C:
cmp	word ptr [eax],	5Ch
jz	short loc_40488A
cmp	eax, ecx
jz	short loc_404892
dec	eax
dec	eax
jmp	short loc_40487C

loc_40488A:
sub	eax, ecx
sar	eax, 1
mov	esi, eax
jmp	short loc_404895

loc_404892:
or	esi, 0FFFFFFFFh

loc_404895:
push	3
lea	ecx, [ebp+var_38]
mov	[ebp+var_38], ebx
mov	[ebp+var_34], ebx
mov	[ebp+var_30], ebx
call	sub_403396
push	3
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 5
mov	[ebp+var_1C], ebx
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
call	sub_403396
cmp	esi, ebx
mov	byte ptr [ebp+var_4], 6
jl	short loc_404916
inc	esi
lea	eax, [ebp+Memory]
push	esi
push	eax
mov	ecx, edi
call	sub_403228
push	eax
lea	ecx, [ebp+var_38]
mov	byte ptr [ebp+var_4], 7
call	sub_40312C
mov	byte ptr [ebp+var_4], 6
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
lea	eax, [ebp+Memory]
push	esi
push	eax
mov	ecx, edi
call	sub_405246
push	eax
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 8
call	sub_40312C
mov	byte ptr [ebp+var_4], 6
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
jmp	short loc_40491F

loc_404916:
push	edi
lea	ecx, [ebp+var_1C]
call	sub_40312C

loc_40491F:
lea	eax, [ebp+var_60]
lea	edx, [ebp+var_48]
push	eax
lea	eax, [ebp+var_54]
push	eax
lea	ecx, [ebp+var_1C]
call	sub_42C35E
xor	eax, eax
cmp	[ebp+var_AC], ebx
mov	[ebp+var_2C], eax
jle	loc_404BCB
mov	edi, [ebp+arg_C]

loc_404946:
mov	ecx, [ebp+var_A8]
mov	esi, [ecx+eax*4]
cmp	[esi+3Ch], bl
jz	loc_404BB8
mov	[ebp+arg_C], ebx
lea	ecx, [ebp+var_9C]
mov	byte ptr [ebp+var_4], 9
call	sub_40517C
cmp	[esi+4], ebx
mov	byte ptr [ebp+var_4], 0Ah
jnz	short loc_40499D
push	10h		; Size
call	sub_4284B1
cmp	eax, ebx
pop	ecx
jz	short loc_404990
mov	[eax+4], ebx
mov	[eax+8], ebx
mov	[eax+0Ch], ebx
mov	dword ptr [eax], offset	off_44B914
jmp	short loc_404992

loc_404990:
xor	eax, eax

loc_404992:
push	eax
lea	ecx, [ebp+var_80]
call	sub_43D0DB
jmp	short loc_4049CB

loc_40499D:		; lpLibFileName
push	dword ptr [esi]
lea	ecx, [ebp+arg_C]
call	sub_429A47
test	al, al
jnz	short loc_4049B3
call	ds:GetLastError
jmp	short loc_4049C3

loc_4049B3:
lea	eax, [ebp+var_80]
add	esi, 1Ch
push	eax
push	esi
lea	ecx, [ebp+arg_C]
call	sub_4050C9

loc_4049C3:
cmp	eax, ebx
jnz	loc_404B9D

loc_4049CB:		; Size
push	268h
call	sub_4284B1
pop	ecx
mov	ecx, eax
mov	[ebp+var_10], ecx
cmp	ecx, ebx
mov	byte ptr [ebp+var_4], 0Bh
jz	short loc_4049EA
call	sub_404DBF
jmp	short loc_4049EC

loc_4049EA:
xor	eax, eax

loc_4049EC:
mov	[ebp+var_78], eax
mov	ecx, eax
add	eax, 0Ch
mov	byte ptr [ebp+var_4], 0Ah
neg	ecx
sbb	ecx, ecx
and	ecx, eax
push	ecx
lea	ecx, [ebp+var_7C]
call	sub_43D0DB
mov	eax, [ebp+arg_10]
mov	ecx, [ebp+var_78]
push	[ebp+arg_14]
mov	al, [eax]
mov	[ecx+88h], al
mov	eax, [ebp+var_78]
lea	ecx, [eax+8Ch]
call	sub_40312C
mov	eax, [ebp+var_78]
cmp	[ebp+var_3C], ebx
mov	[eax+98h], edi
jz	short loc_404A45
mov	eax, [ebp+var_78]
push	[ebp+var_1C]
add	eax, 8
push	eax
mov	ecx, [eax]
call	dword ptr [ecx+0Ch]
jmp	short loc_404A55

loc_404A45:
mov	ecx, [ebp+var_78]
lea	eax, [ebp+var_1C]
push	eax
lea	eax, [ebp+var_38]
push	eax
call	sub_404FD3

loc_404A55:
push	[ebp+var_3C]
lea	ecx, [ebp+var_84]
call	sub_43D0DB
lea	ecx, [ebp+var_9C]
push	[ebp+var_A0]
call	sub_40312C
lea	ecx, [ebp+var_90]
push	[ebp+arg_0]
call	sub_40312C
mov	edx, 8EBh
lea	ecx, [ebp+Memory]
push	3020283h
call	sub_40B168
mov	eax, [ebp+var_78]
push	3000000h
mov	edx, 898h
lea	ecx, [ebp+var_C0]
mov	byte ptr [ebp+var_4], 0Ch
mov	[eax+248h], edi
call	sub_40B168
push	eax
mov	eax, [ebp+var_78]
mov	byte ptr [ebp+var_4], 0Dh
lea	ecx, [eax+24Ch]
call	sub_40312C
mov	byte ptr [ebp+var_4], 0Ch
push	[ebp+var_C0]	; Memory
call	sub_4284D8
lea	ecx, [ebp+var_D8]
mov	[esp+0E8h+var_E8], offset asc_45B128 ; " "
call	sub_403091
push	eax
lea	edx, [ebp+Memory]
lea	ecx, [ebp+var_CC]
mov	byte ptr [ebp+var_4], 0Eh
call	sub_40356A
push	eax
mov	eax, [ebp+var_78]
mov	byte ptr [ebp+var_4], 0Fh
lea	ecx, [eax+258h]
call	sub_40312C
push	[ebp+var_CC]	; Memory
call	sub_4284D8
push	[ebp+var_D8]	; Memory
call	sub_4284D8
mov	eax, [ebp+var_78]
pop	ecx
pop	ecx
mov	[ebp+var_10], ebx
mov	byte ptr [eax+241h], 1
lea	eax, [ebp+var_9C]
mov	edx, offset sub_4050F4
push	eax
lea	ecx, [ebp+var_10]
mov	byte ptr [ebp+var_4], 10h
call	sub_441890
mov	esi, eax
cmp	esi, ebx
jnz	loc_404C21
mov	ecx, [ebp+var_78]
lea	eax, [ebp+var_10]
push	eax
lea	eax, [ebp+Memory]
push	eax
call	sub_40504C
lea	ecx, [ebp+var_10]
mov	byte ptr [ebp+var_4], 0Ch
call	sub_441850
mov	ecx, [ebp+var_70]
mov	eax, 80004004h
cmp	ecx, eax
jz	loc_404C96
cmp	ecx, ebx
jz	loc_404C9A
cmp	ecx, 1
jnz	loc_404CCE
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_404B9D:
lea	ecx, [ebp+var_9C]
mov	byte ptr [ebp+var_4], 9
call	sub_4051D0
lea	ecx, [ebp+arg_C]
mov	byte ptr [ebp+var_4], 6
call	sub_429929

loc_404BB8:
mov	eax, [ebp+var_2C]
inc	eax
cmp	eax, [ebp+var_AC]
mov	[ebp+var_2C], eax
jl	loc_404946

loc_404BCB:		; Memory
push	[ebp+var_1C]
call	sub_4284D8
push	[ebp+var_38]	; Memory
call	sub_4284D8
push	[ebp+var_54]	; Memory
call	sub_4284D8
push	[ebp+var_48]	; Memory
call	sub_4284D8
push	[ebp+var_6C]	; Memory
call	sub_4284D8
push	[ebp+var_60]	; Memory
call	sub_4284D8
or	[ebp+var_4], 0FFFFFFFFh
add	esp, 18h
lea	ecx, [ebp+var_B4]
call	sub_405267
push	1
pop	eax

loc_404C10:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	18h

loc_404C21:
lea	ecx, [ebp+var_10]
call	sub_441850
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 9
lea	ecx, [ebp+var_9C]
call	sub_4051D0
lea	ecx, [ebp+arg_C]
mov	byte ptr [ebp+var_4], 6
call	sub_429929
push	[ebp+var_1C]	; Memory
call	sub_4284D8
push	[ebp+var_38]	; Memory
call	sub_4284D8
push	[ebp+var_54]	; Memory
call	sub_4284D8
push	[ebp+var_48]	; Memory
call	sub_4284D8
push	[ebp+var_6C]	; Memory
call	sub_4284D8
push	[ebp+var_60]	; Memory
call	sub_4284D8
or	[ebp+var_4], 0FFFFFFFFh
add	esp, 18h
lea	ecx, [ebp+var_B4]
call	sub_405267
mov	eax, esi
jmp	loc_404C10

loc_404C96:
mov	ebx, eax
jmp	short loc_404CD0

loc_404C9A:
mov	eax, [ebp+var_78]
mov	edx, [ebp+arg_10]
mov	cl, [eax+88h]
add	eax, 8Ch
mov	[edx], cl
mov	ecx, [ebp+arg_14]
push	eax
call	sub_40312C
mov	ecx, [ebp+arg_4]
mov	eax, [ebp+arg_C]
mov	[ebp+arg_C], ebx
mov	[ecx], eax
mov	ecx, [ebp+arg_8]
mov	eax, [ebp+var_74]
mov	[ebp+var_74], ebx
mov	[ecx], eax
jmp	short loc_404CD0

loc_404CCE:
mov	ebx, ecx

loc_404CD0:		; Memory
push	[ebp+Memory]
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 9
lea	ecx, [ebp+var_9C]
call	sub_4051D0
lea	ecx, [ebp+arg_C]
mov	byte ptr [ebp+var_4], 6
call	sub_429929
push	[ebp+var_1C]	; Memory
call	sub_4284D8
push	[ebp+var_38]	; Memory
call	sub_4284D8
push	[ebp+var_54]	; Memory
call	sub_4284D8
push	[ebp+var_48]	; Memory
call	sub_4284D8
push	[ebp+var_6C]	; Memory
call	sub_4284D8
push	[ebp+var_60]	; Memory
call	sub_4284D8
or	[ebp+var_4], 0FFFFFFFFh
add	esp, 18h
lea	ecx, [ebp+var_B4]
call	sub_405267
mov	eax, ebx
jmp	loc_404C10
sub_4047D1 endp



; Attributes: thunk

sub_404D3D proc	near
jmp	sub_441850
sub_404D3D endp



; Attributes: bp-based frame

; int __stdcall	sub_404D42(int,	void *Buf1, int)
sub_404D42 proc	near

arg_0= dword ptr  8
Buf1= dword ptr	 0Ch
arg_8= dword ptr  10h

push	ebp
mov	ebp, esp
push	10h		; Size
push	offset unk_44CCB8 ; Buf2
push	[ebp+Buf1]	; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jz	short loc_404D71
push	10h		; Size
push	offset unk_44B620 ; Buf2
push	[ebp+Buf1]	; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_404D83

loc_404D71:
mov	ecx, [ebp+arg_8]
mov	eax, [ebp+arg_0]
push	eax
mov	[ecx], eax
mov	ecx, [eax]
call	dword ptr [ecx+4]
xor	eax, eax
jmp	short loc_404D88

loc_404D83:
mov	eax, 80004002h

loc_404D88:
pop	ebp
retn	0Ch
sub_404D42 endp




; int __stdcall	sub_404D8C(void	*Memory)
sub_404D8C proc	near

Memory=	dword ptr  4

push	esi
mov	esi, [esp+4+Memory]
dec	dword ptr [esi+4]
mov	eax, [esi+4]
jnz	short loc_404DAD
test	esi, esi
jz	short loc_404DAB
mov	ecx, esi
call	sub_404DB1
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_404DAB:
xor	eax, eax

loc_404DAD:
pop	esi
retn	4
sub_404D8C endp




sub_404DB1 proc	near
mov	eax, [ecx+0Ch]
test	eax, eax
jz	short locret_404DBE
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

locret_404DBE:
retn
sub_404DB1 endp



; Attributes: bp-based frame

sub_404DBF proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_44295E
call	__EH_prolog
push	ecx
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
push	3
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44B9D8
mov	dword ptr [esi+4], offset off_44B9C4
mov	dword ptr [esi+8], offset off_44B9B4
mov	dword ptr [esi+0Ch], offset off_44B9A0
lea	ecx, [esi+18h]
mov	dword ptr [esi+10h], offset off_44B990
mov	[esi+14h], ebx
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
lea	ecx, [esi+28h]
mov	[ebp+var_4], ebx
call	sub_404EA2
lea	ecx, [esi+60h]	; lpCriticalSection
call	sub_441910
lea	ecx, [esi+7Ch]
push	3
mov	byte ptr [ebp+var_4], 2
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
lea	ecx, [esi+8Ch]
push	3
mov	byte ptr [ebp+var_4], 3
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
lea	ecx, [esi+0A0h]
mov	byte ptr [ebp+var_4], 4
mov	[esi+98h], ebx
call	sub_422DDA
mov	ecx, [ebp+var_C]
mov	dword ptr [esi], offset	off_44B97C
mov	dword ptr [esi+4], offset off_44B968
mov	dword ptr [esi+8], offset off_44B958
mov	dword ptr [esi+0Ch], offset off_44B944
mov	dword ptr [esi+10h], offset off_44B934
mov	[esi+78h], bl
mov	[esi+88h], bl
mov	[esi+89h], bl
mov	eax, esi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_404DBF endp




sub_404EA2 proc	near
push	esi
mov	esi, ecx
xor	eax, eax
push	3
lea	ecx, [esi+28h]
mov	[ecx], eax
mov	[ecx+4], eax
mov	[ecx+8], eax
call	sub_403396
mov	eax, esi
pop	esi
retn
sub_404EA2 endp

; START	OF FUNCTION CHUNK FOR sub_44293A

loc_404EBD:		; lpCriticalSection
push	ecx
call	ds:DeleteCriticalSection
retn
; END OF FUNCTION CHUNK	FOR sub_44293A


; Attributes: bp-based frame

; int __stdcall	sub_404EC5(int,	void *Buf1, int)
sub_404EC5 proc	near

arg_0= dword ptr  8
Buf1= dword ptr	 0Ch
arg_8= dword ptr  10h

push	ebp
mov	ebp, esp
push	esi
mov	esi, [ebp+Buf1]
push	edi
push	10h
pop	edi
push	edi		; Size
push	offset unk_44CCB8 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_404EF0

loc_404EE3:
mov	ecx, [ebp+arg_8]
mov	eax, [ebp+arg_0]
mov	[ecx], eax
jmp	loc_404F80

loc_404EF0:		; Size
push	edi
push	offset unk_44B7B0 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jz	short loc_404EE3
push	edi		; Size
push	offset unk_44B7A0 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_404F20
mov	eax, [ebp+arg_0]
mov	ecx, eax
lea	edx, [eax+4]
jmp	short loc_404F75

loc_404F20:		; Size
push	edi
push	offset unk_44B780 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_404F3D
mov	eax, [ebp+arg_0]
mov	ecx, eax
lea	edx, [eax+8]
jmp	short loc_404F75

loc_404F3D:		; Size
push	edi
push	offset unk_44B7F0 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_404F5A
mov	eax, [ebp+arg_0]
mov	ecx, eax
lea	edx, [eax+0Ch]
jmp	short loc_404F75

loc_404F5A:		; Size
push	edi
push	offset unk_44B720 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_404F8A
mov	eax, [ebp+arg_0]
mov	ecx, eax
lea	edx, [eax+10h]

loc_404F75:
neg	ecx
sbb	ecx, ecx
and	ecx, edx
mov	edx, [ebp+arg_8]
mov	[edx], ecx

loc_404F80:
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+4]
xor	eax, eax
jmp	short loc_404F8F

loc_404F8A:
mov	eax, 80004002h

loc_404F8F:
pop	edi
pop	esi
pop	ebp
retn	0Ch
sub_404EC5 endp




; int __stdcall	sub_404F95(void	*Memory)
sub_404F95 proc	near

Memory=	dword ptr  4

push	esi
mov	esi, [esp+4+Memory]
dec	dword ptr [esi+14h]
mov	eax, [esi+14h]
jnz	short loc_404FB6
test	esi, esi
jz	short loc_404FB4
mov	ecx, esi
call	sub_405068
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_404FB4:
xor	eax, eax

loc_404FB6:
pop	esi
retn	4
sub_404F95 endp




sub_404FBA proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

mov	eax, [esp+arg_0]
push	[esp+arg_4]
lea	ecx, [eax+74h]
mov	byte ptr [eax+70h], 1
call	sub_404722
xor	eax, eax
retn	8
sub_404FBA endp



; Attributes: bp-based frame

sub_404FD3 proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_442970
call	__EH_prolog
sub	esp, 0Ch
push	ebx
push	esi
mov	esi, ecx
push	edi
push	[ebp+arg_0]
lea	edi, [esi+18h]
mov	ecx, edi
call	sub_40312C
push	[ebp+arg_4]
mov	edx, edi
lea	ecx, [ebp+Memory]
call	sub_40356A
push	dword ptr [eax]	; lpFileName
and	[ebp+var_4], 0
lea	ecx, [esi+28h]
call	sub_42B49E
push	[ebp+Memory]	; Memory
mov	bl, al
neg	bl
sbb	bl, bl
or	[ebp+var_4], 0FFFFFFFFh
inc	bl
call	sub_4284D8
pop	ecx
pop	edi
pop	esi
test	bl, bl
pop	ebx
jz	short loc_40503E
lea	eax, [ebp+arg_0]
push	offset unk_44D120
push	eax
mov	[ebp+arg_0], 1
call	_CxxThrowException

loc_40503E:
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn	8
sub_404FD3 endp




sub_40504C proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	dword ptr [ecx+98h] ; hWndParent
add	ecx, 0A0h
push	[esp+4+arg_4]	; int
push	[esp+8+arg_0]	; int
call	sub_424624
retn	8
sub_40504C endp



; Attributes: bp-based frame

sub_405068 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4429B6
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
lea	ecx, [esi+0A0h]
mov	[ebp+var_4], 4
call	sub_423175
push	dword ptr [esi+8Ch] ; Memory
call	sub_4284D8
push	dword ptr [esi+7Ch] ; Memory
call	sub_4284D8
pop	ecx
lea	eax, [esi+60h]
pop	ecx
push	eax		; lpCriticalSection
call	ds:DeleteCriticalSection
push	dword ptr [esi+50h] ; Memory
call	sub_4284D8
push	dword ptr [esi+18h] ; Memory
call	sub_4284D8
pop	ecx
pop	ecx
pop	esi
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn
sub_405068 endp




sub_4050C9 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	offset ProcName	; "CreateObject"
push	dword ptr [ecx]	; hModule
call	ds:GetProcAddress
test	eax, eax
jnz	short loc_4050E2
call	ds:GetLastError
jmp	short locret_4050F1

loc_4050E2:
push	[esp+arg_4]
push	offset unk_44B620
push	[esp+8+arg_0]
call	eax

locret_4050F1:
retn	8
sub_4050C9 endp




sub_4050F4 proc	near

arg_0= dword ptr  4

mov	ecx, [esp+arg_0]
call	sub_405102
xor	eax, eax
retn	4
sub_4050F4 endp



; Attributes: bp-based frame

sub_405102 proc	near

var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4429C8
call	__EH_prolog
sub	esp, 0Ch
push	ebx
push	esi
and	[ebp+var_4], 0
mov	esi, ecx
push	edi
mov	[ebp+var_14], esi
mov	edi, [esi+24h]
mov	[ebp+var_10], esp
add	edi, 0A0h
mov	[ebp+var_18], edi
mov	ecx, [esi+20h]
mov	edx, [esi+0Ch]
mov	eax, [esi+1Ch]
push	ecx
lea	ecx, [esi+28h]
mov	byte ptr [ebp+var_4], 1
mov	ebx, [eax]
push	ecx
push	edx
push	dword ptr [esi]
push	dword ptr [esi+18h]
push	eax
call	dword ptr [ebx+0Ch]
and	byte ptr [ebp+var_4], 0
mov	ecx, edi
mov	[esi+2Ch], eax
call	sub_424FA1

loc_405156:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
pop	ebx
leave
retn
sub_405102 endp




sub_405165 proc	near
mov	eax, [ebp-14h]
mov	dword ptr [eax+2Ch], 80004005h
mov	eax, offset loc_405156
retn
sub_405165 endp

; START	OF FUNCTION CHUNK FOR sub_4429C0

loc_405175:
mov	ecx, [ecx]
jmp	sub_424FA1
; END OF FUNCTION CHUNK	FOR sub_4429C0


; Attributes: bp-based frame

sub_40517C proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4429DC
call	__EH_prolog
push	ecx
push	esi
push	edi
mov	esi, ecx
xor	edi, edi
push	3
mov	[ebp+var_10], esi
mov	[esi], edi
mov	[esi+4], edi
mov	[esi+8], edi
call	sub_403396
lea	ecx, [esi+0Ch]
push	3
mov	[ebp+var_4], edi
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
mov	ecx, [ebp+var_C]
mov	[esi+18h], edi
mov	[esi+1Ch], edi
mov	[esi+20h], edi
mov	[esi+28h], edi
mov	eax, esi
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40517C endp



; Attributes: bp-based frame

sub_4051D0 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442A1C
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	eax, [esi+28h]
mov	[ebp+var_4], 4
test	eax, eax
jz	short loc_4051F5
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_4051F5:
mov	eax, [esi+20h]
mov	byte ptr [ebp+var_4], 3
test	eax, eax
jz	short loc_405206
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_405206:
mov	eax, [esi+1Ch]
mov	byte ptr [ebp+var_4], 2
test	eax, eax
jz	short loc_405217
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_405217:
mov	eax, [esi+18h]
mov	byte ptr [ebp+var_4], 1
test	eax, eax
jz	short loc_405228
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_405228:		; Memory
push	dword ptr [esi+0Ch]
call	sub_4284D8
push	dword ptr [esi]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx
pop	esi
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn
sub_4051D0 endp



; Attributes: bp-based frame

sub_405246 proc	near

var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
push	ecx
mov	eax, [ecx+4]
and	[ebp+var_4], 0
sub	eax, [ebp+arg_4]
push	eax
push	[ebp+arg_4]
push	[ebp+arg_0]
call	sub_403434
mov	eax, [ebp+arg_0]
leave
retn	8
sub_405246 endp



; Attributes: bp-based frame

sub_405267 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442A30
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44B92C
and	[ebp+var_4], 0
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_405267 endp




; int __thiscall sub_40529F(void *Memory, char)
sub_40529F proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_405267
test	[esp+4+arg_0], 1
jz	short loc_4052B5
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_4052B5:
mov	eax, esi
pop	esi
retn	4
sub_40529F endp




sub_4052BB proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 4
jmp	sub_404EC5
sub_4052BB endp




sub_4052C5 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 4
jmp	sub_404F95
sub_4052C5 endp




sub_4052CF proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 8
jmp	sub_404EC5
sub_4052CF endp




sub_4052D9 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 8
jmp	sub_404F95
sub_4052D9 endp




sub_4052E3 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 0Ch
jmp	sub_404EC5
sub_4052E3 endp




sub_4052ED proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 0Ch
jmp	sub_404F95
sub_4052ED endp




sub_4052F7 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 10h
jmp	sub_404EC5
sub_4052F7 endp




sub_405301 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 10h
jmp	sub_404F95
sub_405301 endp




sub_40530B proc	near

arg_0= dword ptr  4

push	esi
push	edi
mov	esi, ecx
xor	edi, edi
cmp	[esi+8], edi
jle	short loc_405333

loc_405316:
mov	eax, [esi+0Ch]
mov	ecx, [esp+8+arg_0]
mov	eax, [eax+edi*4]
mov	edx, [ecx]
mov	ecx, [eax]
call	sub_4282B1
test	eax, eax
jz	short loc_40533B
inc	edi
cmp	edi, [esi+8]
jl	short loc_405316

loc_405333:
or	eax, 0FFFFFFFFh

loc_405336:
pop	edi
pop	esi
retn	4

loc_40533B:
mov	eax, edi
jmp	short loc_405336
sub_40530B endp



; Attributes: bp-based frame

sub_40533F proc	near

Memory=	dword ptr -78h
var_6C=	byte ptr -6Ch
var_68=	byte ptr -68h
var_54=	dword ptr -54h
var_4C=	dword ptr -4Ch
var_48=	dword ptr -48h
var_40=	dword ptr -40h
var_30=	dword ptr -30h
var_28=	dword ptr -28h
bstrString= dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442A84
call	__EH_prolog
sub	esp, 6Ch
push	ebx
push	esi
push	edi
mov	edi, ecx
lea	ecx, [edi+14h]
call	sub_41E687
xor	ebx, ebx
cmp	[edi+1Ch], ebx
mov	[ebp+var_10], ebx
jle	loc_405577

loc_405367:
mov	eax, [edi+20h]
mov	ecx, [ebp+var_10]
mov	esi, [eax+ecx*4]
mov	[ebp+var_18], ebx
mov	[ebp+var_4], ebx
mov	[ebp+var_14], ebx
cmp	[esi+4], ebx
mov	byte ptr [ebp+var_4], 1
jnz	short loc_4053AC
push	10h		; Size
call	sub_4284B1
cmp	eax, ebx
pop	ecx
jz	short loc_40539F
mov	[eax+4], ebx
mov	[eax+8], ebx
mov	[eax+0Ch], ebx
mov	dword ptr [eax], offset	off_44B914
jmp	short loc_4053A1

loc_40539F:
xor	eax, eax

loc_4053A1:
push	eax
lea	ecx, [ebp+var_14]
call	sub_43D0DB
jmp	short loc_4053DA

loc_4053AC:		; lpLibFileName
push	dword ptr [esi]
lea	ecx, [ebp+var_18]
call	sub_429A47
test	al, al
jnz	short loc_4053C2
call	ds:GetLastError
jmp	short loc_4053D2

loc_4053C2:
lea	eax, [ebp+var_14]
add	esi, 1Ch
push	eax
push	esi
lea	ecx, [ebp+var_18]
call	sub_4050C9

loc_4053D2:
cmp	eax, ebx
jnz	loc_405520

loc_4053DA:
mov	[ebp+bstrString], ebx
mov	eax, [ebp+var_14]
lea	edx, [ebp+bstrString]
push	edx
push	eax
mov	ecx, [eax]
mov	byte ptr [ebp+var_4], 2
call	dword ptr [ecx+10h]
push	[ebp+bstrString]
test	eax, eax
jnz	loc_405555
lea	ecx, [ebp+var_40]
call	sub_403091
lea	ecx, [ebp+var_54]
mov	byte ptr [ebp+var_4], 3
call	sub_40337B
mov	[ebp+var_54], offset off_44B510
lea	edx, [ebp+var_54]
lea	ecx, [ebp+var_40]
mov	byte ptr [ebp+var_4], 4
call	sub_41F8A7
cmp	[ebp+var_4C], ebx
mov	[ebp+var_20], ebx
jle	loc_4054EF

loc_40542F:
mov	eax, [ebp+var_48]
mov	ecx, [ebp+var_20]
mov	esi, [eax+ecx*4]
mov	ecx, edi
push	esi
call	sub_40530B
cmp	eax, ebx
jge	short loc_40549F
lea	ecx, [ebp+Memory]
call	sub_403079
lea	ecx, [ebp+var_68]
mov	byte ptr [ebp+var_4], 5
call	sub_4055C1
mov	byte ptr [ebp+var_28], bl
push	[ebp+var_28]
lea	ecx, [ebp+var_68]
mov	byte ptr [ebp+var_4], 6
push	[ebp+var_10]
call	sub_43D102
push	esi
lea	ecx, [ebp+Memory]
mov	[ebp+var_6C], bl
call	sub_40312C
lea	eax, [ebp+Memory]
mov	ecx, edi
push	eax
call	sub_4055DC
lea	ecx, [ebp+var_68]
mov	byte ptr [ebp+var_4], 7
call	sub_4282FE
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 4
call	sub_4284D8
pop	ecx
jmp	short loc_4054E0

loc_40549F:
mov	ecx, [edi+0Ch]
mov	[ebp+var_1C], ebx
mov	eax, [ecx+eax*4]
mov	ecx, [eax+18h]
cmp	ecx, ebx
jle	short loc_4054C8
mov	edx, [eax+1Ch]

loc_4054B2:
mov	esi, [edx]
cmp	esi, [ebp+var_10]
jz	loc_40554D
inc	[ebp+var_1C]
add	edx, 8
cmp	[ebp+var_1C], ecx
jl	short loc_4054B2

loc_4054C8:
or	ecx, 0FFFFFFFFh

loc_4054CB:
cmp	ecx, ebx
jge	short loc_4054E0
mov	byte ptr [ebp+var_30], bl
push	[ebp+var_30]
lea	ecx, [eax+10h]
push	[ebp+var_10]
call	sub_43D102

loc_4054E0:
inc	[ebp+var_20]
mov	eax, [ebp+var_20]
cmp	eax, [ebp+var_4C]
jl	loc_40542F

loc_4054EF:
mov	[ebp+var_54], offset off_44B510
lea	ecx, [ebp+var_54]
mov	byte ptr [ebp+var_4], 8
call	sub_428327
lea	ecx, [ebp+var_54]
mov	byte ptr [ebp+var_4], 3
call	sub_4282FE
push	[ebp+var_40]	; Memory
call	sub_4284D8
pop	ecx
push	[ebp+bstrString] ; bstrString
call	ds:SysFreeString

loc_405520:
mov	eax, [ebp+var_14]
mov	byte ptr [ebp+var_4], bl
cmp	eax, ebx
jz	short loc_405530
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_405530:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_18]
call	sub_429929
inc	[ebp+var_10]
mov	eax, [ebp+var_10]
cmp	eax, [edi+1Ch]
jl	loc_405367
jmp	short loc_405577

loc_40554D:
mov	ecx, [ebp+var_1C]
jmp	loc_4054CB

loc_405555:
call	ds:SysFreeString
mov	eax, [ebp+var_14]
mov	byte ptr [ebp+var_4], bl
cmp	eax, ebx
jz	short loc_40556B
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_40556B:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_18]
call	sub_429929

loc_405577:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40533F endp

; START	OF FUNCTION CHUNK FOR sub_442A4C

loc_405586:		; bstrString
push	dword ptr [ecx]
call	ds:SysFreeString
retn
; END OF FUNCTION CHUNK	FOR sub_442A4C


; Attributes: bp-based frame

sub_40558F proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442A98
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
and	[ebp+var_4], 0
lea	ecx, [esi+10h]
call	sub_4282FE
push	dword ptr [esi]	; Memory
call	sub_4284D8
pop	ecx
pop	esi
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn
sub_40558F endp




sub_4055C1 proc	near
mov	eax, ecx
xor	ecx, ecx
mov	[eax+4], ecx
mov	[eax+8], ecx
mov	[eax+0Ch], ecx
mov	dword ptr [eax+10h], 8
mov	dword ptr [eax], offset	off_44B9EC
retn
sub_4055C1 endp



; Attributes: bp-based frame

sub_4055DC proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset unknown_libname_11 ; Microsoft VisualC 2-11/net runtime
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	24h		; Size
call	sub_4284B1
pop	ecx
mov	ecx, eax
mov	[ebp+var_10], ecx
xor	eax, eax
cmp	ecx, eax
mov	[ebp+var_4], eax
jz	short loc_405608
push	[ebp+arg_0]
call	sub_405623

loc_405608:
or	[ebp+var_4], 0FFFFFFFFh
push	eax
mov	ecx, esi
call	sub_429907
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_4055DC endp



; Attributes: bp-based frame

sub_405623 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_442AC0
call	__EH_prolog
push	ecx
push	esi
push	edi
mov	edi, [ebp+arg_0]
mov	esi, ecx
push	edi
mov	[ebp+var_10], esi
call	sub_4030F2
mov	al, [edi+0Ch]
and	[ebp+var_4], 0
add	edi, 10h
lea	ecx, [esi+10h]
push	edi
mov	[esi+0Ch], al
call	sub_405666
mov	ecx, [ebp+var_C]
mov	eax, esi
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_405623 endp



; Attributes: bp-based frame

sub_405666 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_442AD4
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
xor	eax, eax
mov	[ebp+var_10], esi
mov	[esi+4], eax
mov	[esi+8], eax
mov	[esi+0Ch], eax
mov	dword ptr [esi+10h], 8
mov	[ebp+var_4], eax
mov	dword ptr [esi], offset	off_44B9EC
call	sub_428327
push	[ebp+arg_0]
mov	ecx, esi
call	sub_41D70E
mov	ecx, [ebp+var_C]
mov	eax, esi
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_405666 endp

call	sub_4056BC
jmp	loc_4056DA



sub_4056BC proc	near
xor	eax, eax
push	3
mov	ecx, offset dword_45D8A0
mov	dword_45D8A0, eax
mov	dword_45D8A4, eax
mov	dword_45D8A8, eax
call	sub_403396
retn
sub_4056BC endp


loc_4056DA:
push	offset loc_4056E6
call	_atexit
pop	ecx
retn

loc_4056E6:
push	dword_45D8A0
call	sub_4284D8
pop	ecx
retn
call	sub_4056FD
jmp	loc_40571B



sub_4056FD proc	near
xor	eax, eax
push	3
mov	ecx, offset dword_45D890
mov	dword_45D890, eax
mov	dword_45D894, eax
mov	dword_45D898, eax
call	sub_403396
retn
sub_4056FD endp


loc_40571B:
push	offset loc_405727
call	_atexit
pop	ecx
retn

loc_405727:
push	dword_45D890
call	sub_4284D8
pop	ecx
retn
call	sub_40573E
jmp	loc_405C27



sub_40573E proc	near
mov	ecx, offset dword_45D4C0
jmp	$+5

loc_405748:
mov	eax, offset loc_442B22
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	edi
xor	edi, edi
lea	ecx, [esi+14h]
mov	[ebp-10h], esi
mov	[esi], edi
mov	dword ptr [esi+8], 2
mov	[esi+0Ch], edi
call	sub_405B00
push	2
mov	[ebp-4], edi
lea	eax, [esi+6Ch]
pop	ecx

loc_405779:
mov	dword ptr [eax], offset	off_44B9F4
add	eax, 0Ch
dec	ecx
jnz	short loc_405779
push	offset sub_40D8CA ; void (__thiscall *)(void *)
push	offset loc_4057EE ; int
push	2		; int
lea	eax, [esi+84h]
push	188h		; unsigned int
push	eax		; void *
call	??_L@YGXPAXIHP6EX0@Z1@Z	; `eh vector constructor iterator'(void *,uint,int,void (*)(void *),void (*)(void *))
mov	[esi+398h], edi
mov	[esi+39Ch], edi
mov	[esi+3A4h], edi
lea	ecx, [esi+3A8h]
push	3
mov	byte ptr [ebp-4], 3
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
mov	ecx, [ebp-0Ch]
mov	eax, esi
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40573E endp

; START	OF FUNCTION CHUNK FOR sub_442B06

loc_4057DD:
mov	eax, [ecx]
test	eax, eax
jz	short locret_4057ED
and	dword ptr [ecx], 0
push	eax		; himl
call	ds:ImageList_Destroy

locret_4057ED:
retn
; END OF FUNCTION CHUNK	FOR sub_442B06

loc_4057EE:
mov	eax, offset loc_442BDE
call	__EH_prolog
push	ecx
push	ecx
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
push	edi
mov	[ebp-10h], esi
mov	[esi+4], ebx
mov	dword ptr [esi], offset	off_44BA5C
lea	edi, [esi+8]
mov	[ebp-4], ebx
mov	ecx, edi
mov	[ebp-14h], edi
call	sub_406ADC
lea	ecx, [edi+14h]
mov	byte ptr [ebp-4], 1
call	sub_406B90
mov	[esi+48h], ebx
mov	[esi+4Ch], ebx
lea	ecx, [esi+54h]
push	4
mov	byte ptr [ebp-4], 2
mov	[esi+50h], ebx
call	sub_402794
mov	edi, offset off_44B510
mov	[esi+54h], edi
mov	[esi+68h], ebx
mov	[esi+74h], ebx
lea	eax, [esi+90h]
mov	[esi+80h], ebx
mov	[esi+88h], ebx
mov	[esi+8Ch], bl
mov	[esi+8Dh], bl
mov	byte ptr [esi+8Eh], 1
mov	[esi+8Fh], bl
mov	[eax+4], ebx
mov	[eax+8], ebx
mov	[eax+0Ch], ebx
mov	dword ptr [eax+10h], 1
mov	dword ptr [eax], offset	off_44BA54
lea	ecx, [esi+0A4h]
mov	byte ptr [ebp-4], 4
call	sub_40283B
push	3
lea	ecx, [esi+0D8h]
pop	eax
mov	dword ptr [esi+0D0h], 12Ch
mov	[esi+0CCh], eax
mov	[esi+0D4h], bl
mov	[esi+0D5h], bl
mov	[esi+0D6h], bl
mov	[esi+0D7h], bl
push	eax
mov	byte ptr [ebp-4], 5
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
lea	ecx, [esi+0E4h]
push	4
mov	byte ptr [ebp-4], 6
call	sub_402794
mov	dword ptr [esi+0E4h], offset off_44BA4C
mov	[esi+0F8h], ebx
mov	[esi+0FCh], ebx
lea	ecx, [esi+100h]
push	4
mov	byte ptr [ebp-4], 9
call	sub_402794
mov	[esi+100h], edi
mov	byte ptr [ebp-4], 0Ah
lea	ecx, [esi+118h]
mov	[esi+114h], bl
push	3
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
lea	edi, [esi+124h]
mov	byte ptr [ebp-4], 0Bh
mov	ecx, edi
call	sub_40337B
mov	dword ptr [edi], offset	off_44BA44
lea	ecx, [esi+140h]
mov	byte ptr [ebp-4], 0Ch
call	sub_40337B
mov	edi, offset off_44BA3C
mov	[esi+140h], edi
lea	ecx, [esi+154h]
mov	byte ptr [ebp-4], 0Dh
call	sub_40337B
mov	ecx, [ebp-0Ch]
mov	[esi+154h], edi
mov	[esi+170h], ebx
mov	[esi+174h], ebx
mov	[esi+178h], ebx
mov	[esi+17Ch], bl
mov	dword ptr [esi], offset	off_44BA18
mov	eax, esi
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn


; Attributes: thunk

sub_4059B3 proc	near
jmp	sub_429929
sub_4059B3 endp

; START	OF FUNCTION CHUNK FOR sub_442B2C

loc_4059B8:
mov	dword ptr [ecx], offset	off_44BA5C
retn
; END OF FUNCTION CHUNK	FOR sub_442B2C
; [00000005 BYTES: COLLAPSED FUNCTION Concurrency::details::_ContextCallback::operator==(Concurrency::details::_ContextCallback	const &). PRESS	KEYPAD CTRL-"+"	TO EXPAND]



sub_4059C4 proc	near
push	0		; nExitCode
call	ds:PostQuitMessage
retn
sub_4059C4 endp




sub_4059CD proc	near
add	ecx, 4
jmp	sub_40137C
sub_4059CD endp

; [0000001D BYTES: COLLAPSED FUNCTION unknown_libname_2. PRESS KEYPAD CTRL-"+" TO EXPAND]



; int __thiscall sub_4059F2(void *Memory, char)
sub_4059F2 proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_40D8CA
test	[esp+4+arg_0], 1
jz	short loc_405A08
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_405A08:
mov	eax, esi
pop	esi
retn	4
sub_4059F2 endp



; Attributes: bp-based frame

sub_405A0E proc	near

var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442C00
call	__EH_prolog
push	ecx
push	ecx
push	esi
mov	esi, ecx
push	edi
mov	[ebp+var_10], esi
and	[ebp+var_4], 0
lea	edi, [esi+14h]
mov	[ebp+var_14], edi
mov	dword ptr [edi], offset	off_44BA88
mov	ecx, edi
mov	byte ptr [ebp+var_4], 1
call	sub_428327
and	byte ptr [ebp+var_4], 0
mov	ecx, edi
call	sub_4282FE
mov	dword ptr [esi], offset	off_44BA80
mov	ecx, esi
mov	[ebp+var_4], 2
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_405A0E endp

; START	OF FUNCTION CHUNK FOR sub_442BC2

loc_405A74:
mov	eax, offset loc_442C14
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp-10h], esi
mov	dword ptr [esi], offset	off_44BA44
and	dword ptr [ebp-4], 0
call	sub_428327
or	dword ptr [ebp-4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp-0Ch]
pop	esi
mov	large fs:0, ecx
leave
retn
; END OF FUNCTION CHUNK	FOR sub_442BC2


; Attributes: bp-based frame

sub_405AAC proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442C28
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44BA90
and	[ebp+var_4], 0
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_405AAC endp




; int __thiscall sub_405AE4(void *Memory, char)
sub_405AE4 proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_405AAC
test	[esp+4+arg_0], 1
jz	short loc_405AFA
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_405AFA:
mov	eax, esi
pop	esi
retn	4
sub_405AE4 endp



; Attributes: bp-based frame

sub_405B00 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442C3C
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
call	sub_405BB4
and	[ebp+var_4], 0
lea	ecx, [esi+2Ch]
call	sub_405BB4
mov	ecx, [ebp+var_C]
mov	eax, esi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_405B00 endp

; START	OF FUNCTION CHUNK FOR sub_442AE0

loc_405B31:
mov	eax, offset loc_442C50
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp-10h], esi
and	dword ptr [ebp-4], 0
lea	ecx, [esi+2Ch]
call	sub_405BD9
or	dword ptr [ebp-4], 0FFFFFFFFh
mov	ecx, esi
call	sub_405B66
mov	ecx, [ebp-0Ch]
pop	esi
mov	large fs:0, ecx
leave
retn
; END OF FUNCTION CHUNK	FOR sub_442AE0


; Attributes: bp-based frame

sub_405B66 proc	near

var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442C6C
call	__EH_prolog
push	ecx
push	ecx
push	esi
push	edi
mov	edi, ecx
mov	[ebp+var_10], edi
and	[ebp+var_4], 0
lea	esi, [edi+18h]
mov	[ebp+var_14], esi
mov	dword ptr [esi], offset	off_44B510
mov	ecx, esi
mov	byte ptr [ebp+var_4], 1
call	sub_428327
and	byte ptr [ebp+var_4], 0
mov	ecx, esi
call	sub_4282FE
push	edi		; lpCriticalSection
call	ds:DeleteCriticalSection
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_405B66 endp




sub_405BB4 proc	near
push	esi
mov	esi, ecx
call	sub_441910
xor	eax, eax
mov	dword ptr [esi+28h], 4
mov	[esi+1Ch], eax
mov	[esi+20h], eax
mov	[esi+24h], eax
mov	dword ptr [esi+18h], offset off_44B510
mov	eax, esi
pop	esi
retn
sub_405BB4 endp



; Attributes: bp-based frame

sub_405BD9 proc	near

var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442C88
call	__EH_prolog
push	ecx
push	ecx
push	esi
push	edi
mov	edi, ecx
mov	[ebp+var_10], edi
and	[ebp+var_4], 0
lea	esi, [edi+18h]
mov	[ebp+var_14], esi
mov	dword ptr [esi], offset	off_44B510
mov	ecx, esi
mov	byte ptr [ebp+var_4], 1
call	sub_428327
and	byte ptr [ebp+var_4], 0
mov	ecx, esi
call	sub_4282FE
push	edi		; lpCriticalSection
call	ds:DeleteCriticalSection
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_405BD9 endp


loc_405C27:
push	offset loc_405C33
call	_atexit
pop	ecx
retn

loc_405C33:
mov	ecx, offset dword_45D4C0
jmp	$+5

loc_405C3D:
mov	eax, offset loc_442CD0
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp-10h], esi
push	dword ptr [esi+3A8h]
mov	dword ptr [ebp-4], 2
call	sub_4284D8
mov	eax, [esi+3A4h]
pop	ecx
test	eax, eax
jz	short loc_405C71
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_405C71:
mov	ecx, [esi+398h]
lea	eax, [esi+398h]
test	ecx, ecx
jz	short loc_405C8B
and	dword ptr [eax], 0
push	ecx
call	ds:ImageList_Destroy

loc_405C8B:
and	byte ptr [ebp-4], 0
push	offset sub_40D8CA
push	2
lea	eax, [esi+84h]
push	188h
push	eax
call	??_M@YGXPAXIHP6EX0@Z@Z ; `eh vector destructor iterator'(void *,uint,int,void (*)(void *))
add	esi, 14h
mov	[ebp-10h], esi
lea	ecx, [esi+2Ch]
mov	dword ptr [ebp-4], 3
call	sub_405BD9
or	dword ptr [ebp-4], 0FFFFFFFFh
mov	ecx, esi
call	sub_405B66
mov	ecx, [ebp-0Ch]
pop	esi
mov	large fs:0, ecx
leave
retn


; Attributes: bp-based frame

sub_405CD4 proc	near

wndpl= WINDOWPLACEMENT ptr -9Ch
lpWindowName= dword ptr	-70h
var_64=	dword ptr -64h
var_60=	dword ptr -60h
var_5C=	dword ptr -5Ch
var_58=	dword ptr -58h
var_54=	dword ptr -54h
var_50=	dword ptr -50h
var_4C=	dword ptr -4Ch
var_48=	dword ptr -48h
var_44=	dword ptr -44h
var_40=	dword ptr -40h
var_3C=	dword ptr -3Ch
var_38=	dword ptr -38h
var_34=	dword ptr -34h
var_30=	dword ptr -30h
nHeight= dword ptr -2Ch
nWidth=	dword ptr -28h
var_24=	dword ptr -24h
hWnd= dword ptr	-20h
var_1C=	dword ptr -1Ch
var_15=	byte ptr -15h
nCmdShow= dword	ptr -14h
var_D= byte ptr	-0Dh
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442CE4
call	__EH_prolog
sub	esp, 90h
push	ebx
push	esi
push	edi
mov	edi, ecx
xor	ebx, ebx
mov	[ebp+nCmdShow],	edx
mov	[ebp+hWnd], ebx
mov	hInstance, edi
call	sub_40B56E
mov	edx, 898h
lea	ecx, [ebp+lpWindowName]
push	3000000h
call	sub_40B168
push	1		; lpIconName
push	edi		; hInstance
mov	[ebp+var_4], ebx
mov	[ebp+var_64], ebx
mov	[ebp+var_60], offset sub_406218
mov	[ebp+var_5C], ebx
mov	[ebp+var_58], ebx
mov	[ebp+var_54], edi
call	ds:LoadIconA
mov	[ebp+var_50], eax
push	7F84h		; lpCursorName
push	ebx		; hInstance
call	ds:LoadCursorA
mov	[ebp+var_4C], eax
mov	eax, lpClassName
lea	ecx, [ebp+var_64]
mov	[ebp+var_48], 10h
mov	[ebp+var_44], 67h
mov	[ebp+var_40], eax
call	sub_42E31E
mov	esi, 80000000h
lea	edx, [ebp+var_D]
lea	ecx, [ebp+var_3C]
mov	[ebp+var_D], bl
mov	[ebp+nHeight], esi
mov	[ebp+nWidth], esi
call	sub_420D67
cmp	al, bl
mov	[ebp+var_15], al
jz	short loc_405D8F
mov	eax, [ebp+var_34]
sub	eax, [ebp+var_3C]
mov	[ebp+nWidth], eax
mov	eax, [ebp+var_30]
sub	eax, [ebp+var_38]
mov	[ebp+nHeight], eax

loc_405D8F:
push	offset dword_45D8BC
lea	edx, [ebp+var_24]
lea	ecx, [ebp+var_1C]
call	sub_420F9E
cmp	al, bl
mov	byte_45D8C0, al
jz	short loc_405DC1
push	1
pop	eax
cmp	[ebp+var_1C], eax
jb	short loc_405DB6
cmp	[ebp+var_1C], 2
jbe	short loc_405DB9

loc_405DB6:
mov	[ebp+var_1C], eax

loc_405DB9:
cmp	[ebp+var_24], 2
jb	short loc_405DCB
jmp	short loc_405DC8

loc_405DC1:
mov	[ebp+var_1C], 1

loc_405DC8:
mov	[ebp+var_24], ebx

loc_405DCB:		; lpParam
push	ebx
push	edi		; hInstance
push	ebx		; hMenu
push	ebx		; hWndParent
push	[ebp+nHeight]	; nHeight
mov	eax, [ebp+var_1C]
mov	dword_45D4C8, eax
mov	eax, [ebp+var_24]
push	[ebp+nWidth]	; nWidth
lea	ecx, [ebp+hWnd]
mov	dword_45D4CC, eax
push	esi		; Y
push	esi		; X
push	0CF0000h	; dwStyle
push	[ebp+lpWindowName] ; lpWindowName
push	lpClassName	; lpClassName
call	sub_42E468
test	al, al
jz	loc_405E8E
push	1
pop	eax
cmp	[ebp+nCmdShow],	eax
jz	short loc_405E19
cmp	[ebp+nCmdShow],	5
jz	short loc_405E19
cmp	[ebp+nCmdShow],	0Ah
jnz	short loc_405E2A

loc_405E19:
cmp	[ebp+var_D], bl
jz	short loc_405E27
mov	[ebp+nCmdShow],	3
jmp	short loc_405E30

loc_405E27:
mov	[ebp+nCmdShow],	eax

loc_405E2A:
cmp	[ebp+nCmdShow],	3
jnz	short loc_405E37

loc_405E30:
mov	byte_45D8B6, 1

loc_405E37:
lea	eax, [ebp+wndpl]
mov	[ebp+wndpl.length], 2Ch
push	eax		; lpwndpl
push	[ebp+hWnd]	; hWnd
call	ds:GetWindowPlacement
test	eax, eax
jz	short loc_405E7F
cmp	[ebp+var_15], bl
jz	short loc_405E64
lea	esi, [ebp+var_3C]
lea	edi, [ebp+wndpl.rcNormalPosition]
movsd
movsd
movsd
movsd

loc_405E64:
mov	eax, [ebp+nCmdShow]
mov	[ebp+wndpl.showCmd], eax
lea	eax, [ebp+wndpl]
push	eax		; lpwndpl
push	[ebp+hWnd]	; hWnd
call	ds:SetWindowPlacement
jmp	short loc_405E8B

loc_405E7F:		; nCmdShow
push	[ebp+nCmdShow]
push	[ebp+hWnd]	; hWnd
call	ds:ShowWindow

loc_405E8B:
push	1
pop	ebx

loc_405E8E:		; Memory
push	[ebp+lpWindowName]
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
mov	eax, ebx
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_405CD4 endp



; Attributes: bp-based frame

sub_405EA8 proc	near

VersionInformation= _OSVERSIONINFOA ptr	-94h

push	ebp
mov	ebp, esp
sub	esp, 94h
lea	eax, [ebp+VersionInformation]
mov	[ebp+VersionInformation.dwOSVersionInfoSize], 94h
push	eax		; lpVersionInformation
call	ds:GetVersionExA
test	eax, eax
jz	short loc_405EF2
cmp	[ebp+VersionInformation.dwPlatformId], 2
jnz	short loc_405EF2
cmp	[ebp+VersionInformation.dwMajorVersion], 5
jb	short loc_405EF2
jbe	short loc_405EE4
mov	al, 1
leave
retn

loc_405EE4:
cmp	[ebp+VersionInformation.dwMinorVersion], 1
jb	short loc_405EF2
setnbe	al
leave
retn

loc_405EF2:
xor	al, al
leave
retn
sub_405EA8 endp



; Attributes: bp-based frame

; int __stdcall	WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nShowCmd)
_WinMain@16 proc near

Msg= tagMSG ptr	-58h
Memory=	dword ptr -3Ch
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4
hInstance= dword ptr  8
hPrevInstance= dword ptr  0Ch
lpCmdLine= dword ptr  10h
nShowCmd= dword	ptr  14h

push	ebp
mov	ebp, esp
sub	esp, 58h
push	ebx
push	esi
call	_IsThisWindowsNT
mov	byte_45D8B4, al
call	nullsub_1
call	ds:InitCommonControls
mov	ecx, offset aComctl32_dll_0 ; "comctl32.dll"
call	sub_406193
cmp	eax, 40047h
mov	dword_45D88C, eax
sbb	al, al
mov	ecx, 0C8h
inc	al
mov	edx, ecx
mov	byte_45B2C0, al
call	sub_42FB0B
neg	al
sbb	al, al
xor	ebx, ebx
inc	al
push	ebx		; pvReserved
mov	byte_45D8B7, al
call	ds:OleInitialize
push	3
lea	ecx, [ebp+var_24]
pop	esi
mov	[ebp+var_24], ebx
push	esi
mov	[ebp+var_20], ebx
mov	[ebp+var_1C], ebx
call	sub_403396
push	esi
lea	ecx, [ebp+var_30]
mov	[ebp+var_30], ebx
mov	[ebp+var_2C], ebx
mov	[ebp+var_28], ebx
call	sub_403396
call	ds:GetCommandLineW
push	eax
lea	ecx, [ebp+Memory]
call	sub_403091
lea	eax, [ebp+var_24]
lea	edx, [ebp+var_30]
push	eax
lea	ecx, [ebp+Memory]
call	sub_41F806
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
lea	ecx, [ebp+var_24]
call	sub_406F3F
lea	ecx, [ebp+var_24]
call	sub_406F04
push	esi
lea	ecx, [ebp+var_18]
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
mov	[ebp+var_10], ebx
call	sub_403396
push	esi
lea	ecx, [ebp+var_C]
mov	[ebp+var_C], ebx
mov	[ebp+var_8], ebx
mov	[ebp+var_4], ebx
call	sub_403396
lea	eax, [ebp+var_C]
lea	edx, [ebp+var_18]
push	eax
lea	ecx, [ebp+var_24]
call	sub_41F806
lea	ecx, [ebp+var_18]
call	sub_406F3F
lea	ecx, [ebp+var_18]
call	sub_406F04
lea	ecx, [ebp+var_C]
call	sub_406F3F
lea	ecx, [ebp+var_C]
call	sub_406F04
lea	eax, [ebp+Memory]
push	2
push	eax
lea	ecx, [ebp+var_C]
call	sub_403228
mov	ecx, [eax]
mov	edx, offset aT	; "-t"
call	sub_42828A
push	[ebp+Memory]	; Memory
mov	esi, eax
call	sub_4284D8
cmp	esi, ebx
pop	ecx
jnz	short loc_40604C
lea	eax, [ebp+Memory]
push	2
push	eax
lea	ecx, [ebp+var_C]
call	sub_405246
push	eax
mov	ecx, offset dword_45D890
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_40604C:
cmp	[ebp+var_14], ebx
jz	short loc_40605F
lea	eax, [ebp+var_18]
mov	ecx, offset dword_45D8A0
push	eax
call	sub_40312C

loc_40605F:
call	sub_4061F9
mov	edx, [ebp+nShowCmd]
mov	ecx, [ebp+hInstance]
call	sub_405CD4
test	eax, eax
jz	loc_406132
cmp	byte_45D8B4, bl
push	edi
push	0D1h		; lpTableName
push	[ebp+hInstance]	; hInstance
jz	short loc_4060D5
call	ds:LoadAcceleratorsW
mov	esi, ds:GetMessageW
mov	edi, eax
push	ebx		; wMsgFilterMax
push	ebx		; wMsgFilterMin
lea	eax, [ebp+Msg]
push	ebx		; hWnd
push	eax		; lpMsg

loc_40609D:
call	esi ; GetMessageW
test	eax, eax
jz	short loc_406122
lea	eax, [ebp+Msg]
push	eax		; lpMsg
push	edi		; hAccTable
push	hWnd		; hWnd
call	ds:TranslateAcceleratorW
test	eax, eax
jnz	short loc_4060CC
lea	eax, [ebp+Msg]
push	eax		; lpMsg
call	ds:TranslateMessage
lea	eax, [ebp+Msg]
push	eax		; lpMsg
call	ds:DispatchMessageW

loc_4060CC:		; lpTableName
push	ebx
push	ebx		; hInstance
lea	eax, [ebp+Msg]
push	ebx
push	eax
jmp	short loc_40609D

loc_4060D5:
call	ds:LoadAcceleratorsA
mov	esi, ds:GetMessageA
mov	edi, eax
push	ebx		; wMsgFilterMax
push	ebx		; wMsgFilterMin
lea	eax, [ebp+Msg]
push	ebx		; hWnd
push	eax		; lpMsg

loc_4060EA:
call	esi ; GetMessageA
test	eax, eax
jz	short loc_406122
lea	eax, [ebp+Msg]
push	eax		; lpMsg
push	edi		; hAccTable
push	hWnd		; hWnd
call	ds:TranslateAcceleratorA
test	eax, eax
jnz	short loc_406119
lea	eax, [ebp+Msg]
push	eax		; lpMsg
call	ds:TranslateMessage
lea	eax, [ebp+Msg]
push	eax		; lpMsg
call	ds:DispatchMessageA

loc_406119:
push	ebx
push	ebx
lea	eax, [ebp+Msg]
push	ebx
push	eax
jmp	short loc_4060EA

loc_406122:
mov	hWnd, ebx
call	ds:OleUninitialize
mov	ebx, [ebp+Msg.wParam]
pop	edi

loc_406132:		; Memory
push	[ebp+var_C]
call	sub_4284D8
push	[ebp+var_18]	; Memory
call	sub_4284D8
push	[ebp+var_30]	; Memory
call	sub_4284D8
push	[ebp+var_24]	; Memory
call	sub_4284D8
add	esp, 10h
mov	eax, ebx
pop	esi
pop	ebx
leave
retn	10h
_WinMain@16 endp

; [00000036 BYTES: COLLAPSED FUNCTION _IsThisWindowsNT.	PRESS KEYPAD CTRL-"+" TO EXPAND]


; Attributes: bp-based frame

; int __fastcall sub_406193(LPCSTR lpLibFileName)
sub_406193 proc	near

Dst= dword ptr -18h
var_14=	word ptr -14h
var_10=	word ptr -10h
hLibModule= dword ptr -4

push	ebp
mov	ebp, esp
sub	esp, 18h
push	ebx
push	ecx		; lpLibFileName
xor	ebx, ebx
call	ds:LoadLibraryA
cmp	eax, ebx
mov	[ebp+hLibModule], eax
jz	short loc_4061F4
push	edi
push	offset aDllgetversion ;	"DllGetVersion"
push	eax		; hModule
call	ds:GetProcAddress
mov	edi, eax
cmp	edi, ebx
jz	short loc_4061EA
push	14h		; Size
lea	eax, [ebp+Dst]
push	ebx		; Val
push	eax		; Dst
call	memset
add	esp, 0Ch
lea	eax, [ebp+Dst]
mov	[ebp+Dst], 14h
push	eax
call	edi
test	eax, eax
jl	short loc_4061EA
movzx	ebx, [ebp+var_14]
movzx	eax, [ebp+var_10]
shl	ebx, 10h
or	ebx, eax

loc_4061EA:		; hLibModule
push	[ebp+hLibModule]
call	ds:FreeLibrary
pop	edi

loc_4061F4:
mov	eax, ebx
pop	ebx
leave
retn
sub_406193 endp




sub_4061F9 proc	near
call	sub_405EA8
test	al, al
jz	short locret_406217
call	sub_42F751
call	sub_41EB0D
test	al, al
jz	short locret_406217
mov	cl, 1
jmp	sub_42C4C5

locret_406217:
retn
sub_4061F9 endp



; Attributes: bp-based frame

; int __stdcall	sub_406218(HWND	hWnd, UINT Msg,	WPARAM wParam, LPARAM lParam)
sub_406218 proc	near

Rect= tagRECT ptr -58h
Memory=	dword ptr -48h
var_3C=	dword ptr -3Ch
var_30=	dword ptr -30h
lpText=	dword ptr -24h
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_F= byte ptr	-0Fh
var_E= byte ptr	-0Eh
var_D= byte ptr	-0Dh
var_C= dword ptr -0Ch
var_4= dword ptr -4
hWnd= dword ptr	 8
Msg= dword ptr	0Ch
wParam=	dword ptr  10h
lParam=	dword ptr  14h

mov	eax, offset loc_442D10
call	__EH_prolog
sub	esp, 4Ch
mov	ecx, [ebp+Msg]
mov	eax, 111h
push	ebx
push	esi
cmp	ecx, eax
push	edi
ja	loc_406535
jz	loc_4064F4
mov	eax, ecx
dec	eax
jz	loc_406335
dec	eax
jz	loc_4062EE
sub	eax, 3
jz	short loc_406291
dec	eax
dec	eax
jz	short loc_406275
sub	eax, 47h
jnz	loc_4065BC
push	[ebp+lParam]
mov	ecx, offset dword_45D4C0
push	[ebp+wParam]
call	sub_402E8C
jmp	loc_4065BC

loc_406275:
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, offset unk_45D544
call	sub_40E5C2
jmp	loc_4065BC

loc_406291:
cmp	byte_45D8B8, 0
jz	short loc_4062A9
push	[ebp+hWnd]	; hWnd
mov	ecx, offset dword_45D880
call	sub_40685A
jmp	short loc_4062C3

loc_4062A9:		; int
push	dword_45D8BC
mov	ecx, offset dword_45D880
push	[ebp+hWnd]	; hWnd
call	sub_4067B6
mov	byte_45D8B8, 1

loc_4062C3:
cmp	[ebp+wParam], 2
jz	short loc_4062D8
cmp	[ebp+wParam], 3
jz	short loc_4062D8
and	byte_45D8B6, 0
jmp	short loc_4062DF

loc_4062D8:
mov	byte_45D8B6, 1

loc_4062DF:
mov	ecx, offset dword_45D4C0
call	sub_4069DB
jmp	loc_40651A

loc_4062EE:		; hwnd
push	[ebp+hWnd]
call	ds:RevokeDragDrop
mov	eax, pDropTarget
test	eax, eax
jz	short loc_40630D
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
and	pDropTarget, 0

loc_40630D:
mov	esi, offset dword_45D4C0
mov	ecx, esi
call	sub_4018B3
mov	ecx, esi
call	sub_401A05
mov	ecx, [ebp+hWnd]	; hWnd
call	sub_4068AB
push	0		; nExitCode
call	ds:PostQuitMessage
jmp	loc_4065BC

loc_406335:
mov	ebx, [ebp+hWnd]
cmp	byte_45D8C0, 0
mov	hWnd, ebx
jz	short loc_40635A
push	dword_45D8BC	; int
mov	ecx, offset dword_45D880
push	ebx		; hWnd
call	sub_4067B6
jmp	short loc_40637E

loc_40635A:
mov	eax, dword_45B2C4
push	ebx		; hWnd
cdq
sub	eax, edx
mov	ecx, offset dword_45D880
sar	eax, 1
mov	dword_45D880, eax
call	sub_40685A
mov	eax, nWidth
mov	dword_45D8BC, eax

loc_40637E:
lea	eax, [ebp+Rect]
push	eax		; lpRect
push	ebx		; hWnd
call	ds:GetClientRect
mov	eax, nWidth
mov	ecx, [ebp+Rect.right]
sub	ecx, eax
mov	[ebp+var_18], eax
sub	ecx, 4
mov	[ebp+var_14], ecx
jns	short loc_4063A2
and	[ebp+var_14], 0

loc_4063A2:
mov	esi, offset dword_45D4C0
mov	ecx, esi
call	sub_4065F0
and	[ebp+var_D], 0
cmp	dword_45D8A4, 0
jz	short loc_4063CE
mov	ecx, dword_45D8A0
call	sub_42B5DF
test	al, al
jz	short loc_4063CE
mov	[ebp+var_D], 1

loc_4063CE:
lea	eax, [ebp+var_F]
mov	edi, offset dword_45D8A0
push	eax
lea	eax, [ebp+var_E]
push	eax
lea	eax, [ebp+var_18]
push	eax
push	offset dword_45D890
push	edi
push	ebx
mov	ecx, esi
call	sub_401529
mov	ebx, eax
cmp	ebx, 80004004h
jnz	short loc_4063FF

loc_4063F7:
or	eax, 0FFFFFFFFh
jmp	loc_4065DF

loc_4063FF:
cmp	[ebp+var_D], 0
jz	short loc_40640B
cmp	[ebp+var_E], 0
jz	short loc_406413

loc_40640B:
test	ebx, ebx
jz	loc_4064E0

loc_406413:		; "Error"
mov	esi, offset aError_0
lea	ecx, [ebp+lpText]
push	esi
call	sub_403091
and	[ebp+var_4], 0
cmp	ebx, 1
jz	short loc_406471
test	ebx, ebx
jz	short loc_406471
cmp	ebx, 8007000Eh
jnz	short loc_406458
push	200060Bh
push	69h
pop	edx
lea	ecx, [ebp+var_30]
call	sub_40B168
push	eax
lea	ecx, [ebp+lpText]
mov	byte ptr [ebp+var_4], 3
call	sub_40312C
push	[ebp+var_30]
jmp	short loc_4064BA

loc_406458:
lea	edx, [ebp+lpText]
mov	ecx, ebx
call	sub_429BE4
test	al, al
jnz	short loc_4064C0
push	esi
lea	ecx, [ebp+lpText]
call	sub_404722
jmp	short loc_4064C0

loc_406471:
cmp	[ebp+var_F], 0
push	edi
jz	short loc_40649A
push	200060Ah
push	68h
pop	edx
lea	ecx, [ebp+var_3C]
call	sub_40744B
push	eax
lea	ecx, [ebp+lpText]
mov	byte ptr [ebp+var_4], 1
call	sub_40312C
push	[ebp+var_3C]
jmp	short loc_4064BA

loc_40649A:
push	2000609h
push	67h
pop	edx
lea	ecx, [ebp+Memory]
call	sub_40744B
push	eax
lea	ecx, [ebp+lpText]
mov	byte ptr [ebp+var_4], 2
call	sub_40312C
push	[ebp+Memory]	; Memory

loc_4064BA:
call	sub_4284D8
pop	ecx

loc_4064C0:		; uType
push	10h
push	offset Caption	; "7-zip"
push	[ebp+lpText]	; lpText
push	0		; hWnd
call	ds:MessageBoxW
push	[ebp+lpText]	; Memory
call	sub_4284D8
pop	ecx
jmp	loc_4063F7

loc_4064E0:		; pDropTarget
push	pDropTarget
push	[ebp+hWnd]	; hwnd
call	ds:RegisterDragDrop
jmp	loc_4065BC

loc_4064F4:
cmp	[ebp+lParam], 0
movzx	ecx, word ptr [ebp+wParam]
jz	short loc_40650D
mov	eax, [ebp+wParam]
shr	eax, 10h
test	ax, ax
jnz	loc_4065BC

loc_40650D:
cmp	ecx, 7D0h
jl	short loc_406521
call	sub_4068F8

loc_40651A:
xor	eax, eax
jmp	loc_4065DF

loc_406521:
mov	edx, ecx
mov	ecx, [ebp+hWnd]
call	sub_40C806
test	al, al
jz	loc_4065BC
jmp	short loc_40651A

loc_406535:
mov	eax, ecx
sub	eax, 117h
jz	short loc_4065AC
sub	eax, 0E9h
jz	short loc_406571
dec	eax
jz	short loc_406553
dec	eax
jnz	short loc_4065BC
call	ds:ReleaseCapture
jmp	short loc_4065BC

loc_406553:
movzx	eax, word ptr [ebp+lParam]
push	[ebp+hWnd]	; hWnd
mov	dword_45D878, eax
mov	eax, nWidth
mov	dword_45D874, eax
call	ds:SetCapture
jmp	short loc_4065BC

loc_406571:
test	byte ptr [ebp+wParam], 1
jz	short loc_4065BC
call	ds:GetCapture
cmp	eax, [ebp+hWnd]
jnz	short loc_4065BC
movsx	eax, word ptr [ebp+lParam]
sub	eax, dword_45D878
mov	ecx, offset dword_45D880
add	eax, dword_45D874
push	eax		; int
push	[ebp+hWnd]	; hWnd
call	sub_4067B6
mov	ecx, offset dword_45D4C0
call	sub_4069DB
jmp	short loc_4065BC

loc_4065AC:
movzx	eax, word ptr [ebp+lParam]
mov	edx, [ebp+wParam]
mov	ecx, [ebp+hWnd]
push	eax		; nPos
call	sub_40C01C

loc_4065BC:		; lParam
push	[ebp+lParam]
cmp	byte_45D8B4, 0
push	[ebp+wParam]	; wParam
push	[ebp+Msg]	; Msg
push	[ebp+hWnd]	; hWnd
jz	short loc_4065D9
call	ds:DefWindowProcW
jmp	short loc_4065DF

loc_4065D9:
call	ds:DefWindowProcA

loc_4065DF:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	10h
sub_406218 endp



; Attributes: bp-based frame

sub_4065F0 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset unknown_libname_12 ; Microsoft VisualC 2-11/net runtime
call	__EH_prolog
push	ecx
push	esi
push	edi
mov	edi, ecx
push	4Ch		; Size
call	sub_4284B1
pop	ecx
mov	ecx, eax
mov	[ebp+var_10], ecx
xor	eax, eax
cmp	ecx, eax
mov	[ebp+var_4], eax
jz	short loc_40661A
call	sub_406645

loc_40661A:
or	[ebp+var_4], 0FFFFFFFFh
lea	esi, [edi+3A0h]
push	eax
lea	ecx, [edi+3A4h]
mov	[esi], eax
call	sub_43D0DB
mov	eax, [esi]
mov	ecx, [ebp+var_C]
mov	[eax+40h], edi
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_4065F0 endp



; Attributes: bp-based frame

sub_406645 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442D46
call	__EH_prolog
push	ecx
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
mov	[ebp+var_10], esi
mov	[esi+4], ebx
mov	[esi+8], ebx
mov	[ebp+var_4], ebx
mov	[esi+10h], ebx
mov	[esi+14h], ebx
mov	[esi+18h], ebx
mov	dword ptr [esi+1Ch], 4
mov	dword ptr [esi+0Ch], offset off_44B510
or	dword ptr [esi+20h], 0FFFFFFFFh
or	dword ptr [esi+28h], 0FFFFFFFFh
lea	ecx, [esi+2Ch]
mov	[esi+24h], bl
mov	[esi+25h], bl
push	3
mov	byte ptr [ebp+var_4], 1
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
or	dword ptr [esi+44h], 0FFFFFFFFh
or	dword ptr [esi+48h], 0FFFFFFFFh
mov	ecx, [ebp+var_C]
mov	[esi+38h], ebx
mov	[esi+3Ch], bl
mov	[esi+3Dh], bl
mov	[esi+40h], ebx
mov	dword ptr [esi], offset	off_44BA98
mov	eax, esi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_406645 endp



; Attributes: bp-based frame

; int __stdcall	sub_4066C7(int,	void *Buf1, int)
sub_4066C7 proc	near

arg_0= dword ptr  8
Buf1= dword ptr	 0Ch
arg_8= dword ptr  10h

push	ebp
mov	ebp, esp
push	10h		; Size
push	offset unk_44CCB8 ; Buf2
push	[ebp+Buf1]	; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jz	short loc_4066F6
push	10h		; Size
push	offset unk_44CCC8 ; Buf2
push	[ebp+Buf1]	; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_406708

loc_4066F6:
mov	ecx, [ebp+arg_8]
mov	eax, [ebp+arg_0]
push	eax
mov	[ecx], eax
mov	ecx, [eax]
call	dword ptr [ecx+4]
xor	eax, eax
jmp	short loc_40670D

loc_406708:
mov	eax, 80004002h

loc_40670D:
pop	ebp
retn	0Ch
sub_4066C7 endp




sub_406711 proc	near

arg_0= dword ptr  4

mov	eax, [esp+arg_0]
push	esi
lea	esi, [eax+4]
push	esi		; lpAddend
call	ds:InterlockedIncrement
mov	eax, [esi]
pop	esi
retn	4
sub_406711 endp




; int __stdcall	sub_406726(void	*Memory)
sub_406726 proc	near

Memory=	dword ptr  4

push	esi
push	edi
mov	edi, [esp+8+Memory]
lea	esi, [edi+4]
push	esi		; lpAddend
call	ds:InterlockedDecrement
mov	eax, [esi]
test	eax, eax
jnz	short loc_406750
test	edi, edi
jz	short loc_40674E
mov	ecx, edi
call	sub_406755
push	edi		; Memory
call	sub_4284D8
pop	ecx

loc_40674E:
xor	eax, eax

loc_406750:
pop	edi
pop	esi
retn	4
sub_406726 endp



; Attributes: bp-based frame

sub_406755 proc	near

var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442D63
call	__EH_prolog
push	ecx
push	ecx
push	esi
mov	esi, ecx
push	edi
mov	[ebp+var_10], esi
push	dword ptr [esi+2Ch] ; Memory
and	[ebp+var_4], 0
call	sub_4284D8
lea	edi, [esi+0Ch]
pop	ecx
mov	[ebp+var_14], edi
mov	dword ptr [edi], offset	off_44B510
mov	ecx, edi
mov	byte ptr [ebp+var_4], 1
call	sub_428327
and	byte ptr [ebp+var_4], 0
mov	ecx, edi
call	sub_4282FE
mov	esi, [esi+8]
or	[ebp+var_4], 0FFFFFFFFh
test	esi, esi
jz	short loc_4067A8
mov	eax, [esi]
push	esi
call	dword ptr [eax+8]

loc_4067A8:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_406755 endp



; Attributes: bp-based frame

; int __stdcall	sub_4067B6(HWND	hWnd, int)
sub_4067B6 proc	near

Rect= tagRECT ptr -10h
hWnd= dword ptr	 8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
sub	esp, 10h
push	esi
mov	esi, ds:GetClientRect
lea	eax, [ebp+Rect]
push	edi
push	eax		; lpRect
mov	edi, ecx
push	[ebp+hWnd]	; hWnd
call	esi ; GetClientRect
push	[ebp+arg_4]	; int
mov	eax, [ebp+Rect.right]
mov	ecx, edi
mov	[edi+8], eax
push	[ebp+hWnd]	; hWnd
call	sub_40680D
lea	eax, [ebp+Rect]
push	eax		; lpRect
push	[ebp+hWnd]	; hWnd
call	esi ; GetClientRect
mov	ecx, [ebp+Rect.right]
cmp	ecx, 1
jg	short loc_4067F6
push	1
pop	ecx

loc_4067F6:
mov	eax, [edi+4]
inc	eax
inc	eax
imul	eax, dword_45B2C4
cdq
idiv	ecx
mov	[edi], eax
pop	edi
pop	esi
leave
retn	8
sub_4067B6 endp



; Attributes: bp-based frame

; int __stdcall	sub_40680D(HWND	hWnd, int)
sub_40680D proc	near

Rect= tagRECT ptr -10h
hWnd= dword ptr	 8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
sub	esp, 10h
lea	eax, [ebp+Rect]
push	esi
push	eax		; lpRect
mov	esi, ecx
push	[ebp+hWnd]	; hWnd
call	ds:GetClientRect
mov	ecx, dword_45B2C8
mov	eax, [ebp+Rect.right]
add	eax, 0FFFFFFFCh
lea	edx, [ecx+ecx]
cmp	eax, edx
jge	short loc_40683D
cdq
sub	eax, edx
sar	eax, 1
jmp	short loc_406852

loc_40683D:
mov	edx, eax
mov	eax, [ebp+arg_4]
sub	edx, ecx
cmp	eax, edx
jle	short loc_40684C
mov	eax, edx
jmp	short loc_406852

loc_40684C:
cmp	eax, ecx
jge	short loc_406852
mov	eax, ecx

loc_406852:
mov	[esi+4], eax
pop	esi
leave
retn	8
sub_40680D endp



; Attributes: bp-based frame

; int __stdcall	sub_40685A(HWND	hWnd)
sub_40685A proc	near

Rect= tagRECT ptr -10h
hWnd= dword ptr	 8

push	ebp
mov	ebp, esp
sub	esp, 10h
push	esi
lea	eax, [ebp+Rect]
push	edi
mov	edi, ds:GetClientRect
push	eax		; lpRect
mov	esi, ecx
push	[ebp+hWnd]	; hWnd
call	edi ; GetClientRect
mov	eax, [ebp+Rect.right]
cmp	[esi+8], eax
jz	short loc_4068A5
test	eax, eax
jz	short loc_4068A5
mov	[esi+8], eax
lea	eax, [ebp+Rect]
push	eax		; lpRect
push	[ebp+hWnd]	; hWnd
call	edi ; GetClientRect
mov	eax, [esi]
mov	ecx, esi
imul	eax, [ebp+Rect.right]
cdq
idiv	dword_45B2C4
dec	eax
dec	eax
push	eax		; int
push	[ebp+hWnd]	; hWnd
call	sub_40680D

loc_4068A5:
pop	edi
pop	esi
leave
retn	4
sub_40685A endp



; Attributes: bp-based frame

; int __fastcall sub_4068AB(HWND hWnd)
sub_4068AB proc	near

wndpl= WINDOWPLACEMENT ptr -2Ch

push	ebp
mov	ebp, esp
sub	esp, 2Ch
push	esi
lea	eax, [ebp+wndpl]
mov	esi, ecx
push	eax		; lpwndpl
push	esi		; hWnd
mov	[ebp+wndpl.length], 2Ch
call	ds:GetWindowPlacement
test	eax, eax
jz	short loc_4068F5
push	esi		; hWnd
call	ds:IsZoomed
test	eax, eax
setnz	dl
lea	ecx, [ebp+wndpl.rcNormalPosition]
call	sub_420C2D
mov	edx, dword_45D4CC
mov	ecx, dword_45D4C8
push	nWidth
call	sub_420E83

loc_4068F5:
pop	esi
leave
retn
sub_4068AB endp



; Attributes: bp-based frame

sub_4068F8 proc	near

var_1C=	byte ptr -1Ch
var_1B=	byte ptr -1Bh
var_18=	dword ptr -18h
var_14=	byte ptr -14h
var_13=	byte ptr -13h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442D80
call	__EH_prolog
sub	esp, 10h
mov	al, byte_45D6C9
push	ebx
mov	bl, byte_45D6C8
mov	[ebp+var_1B], al
xor	eax, eax
push	esi
mov	esi, ecx
mov	[ebp+var_18], offset unk_45D544
mov	[ebp+var_1C], bl
mov	byte_45D6C8, al
mov	byte_45D6C9, al
mov	cl, byte_45D850
mov	[ebp+var_4], eax
mov	[ebp+var_14], cl
mov	cl, byte_45D851
mov	[ebp+var_10], offset unk_45D6CC
mov	[ebp+var_13], cl
mov	byte_45D850, al
mov	byte_45D851, al
mov	eax, esi
mov	byte ptr [ebp+var_4], 1
sub	eax, 7D0h
jz	short loc_406998
dec	eax
jz	short loc_40697F
dec	eax
jnz	short loc_4069AF
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, offset unk_45D544
call	sub_40EF7C
jmp	short loc_4069AF

loc_40697F:
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, offset unk_45D544
call	sub_40EBB3
jmp	short loc_4069AF

loc_406998:
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, offset unk_45D544
call	sub_40E943

loc_4069AF:
mov	al, [ebp+var_14]
mov	ecx, [ebp+var_C]
mov	byte_45D850, al
mov	al, [ebp+var_13]
mov	byte_45D851, al
mov	al, [ebp+var_1B]
mov	byte_45D6C8, bl
pop	esi
mov	byte_45D6C9, al
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_4068F8 endp



; Attributes: bp-based frame

sub_4069DB proc	near

Rect= tagRECT ptr -18h
nHeight= dword ptr -8
Y= dword ptr -4

push	ebp
mov	ebp, esp
sub	esp, 18h
push	ebx
push	esi
mov	esi, ecx
push	edi
mov	eax, [esi]
test	eax, eax
jz	loc_406AA2
lea	ecx, [ebp+Rect]
push	ecx		; lpRect
push	eax		; hWnd
call	ds:GetClientRect
mov	ebx, [ebp+Rect.right]
test	ebx, ebx
jz	loc_406AA2
mov	eax, [esi+39Ch]
and	[ebp+Y], 0
lea	edi, [esi+39Ch]
xor	ecx, ecx
cmp	eax, ecx
jz	short loc_406A36
push	ecx		; lParam
push	ecx		; wParam
push	421h		; Msg
push	eax		; hWnd
call	ds:SendMessageA
mov	ecx, edi
call	sub_406AA7
mov	[ebp+Y], eax
xor	ecx, ecx

loc_406A36:
mov	eax, [ebp+Rect.bottom]
sub	eax, [ebp+Y]
cmp	eax, ecx
mov	[ebp+nHeight], eax
jg	short loc_406A46
mov	[ebp+nHeight], ecx

loc_406A46:
cmp	dword ptr [esi+8], 1
push	1		; bRepaint
push	[ebp+nHeight]	; nHeight
jle	short loc_406A87
push	nWidth		; nWidth
mov	edi, ds:MoveWindow
push	[ebp+Y]		; Y
push	ecx		; X
push	dword ptr [esi+88h] ; hWnd
call	edi ; MoveWindow
mov	eax, nWidth
push	1		; bRepaint
push	[ebp+nHeight]	; nHeight
add	eax, 4
sub	ebx, eax
push	ebx		; nWidth
push	[ebp+Y]		; Y
push	eax		; X
push	dword ptr [esi+210h] ; hWnd
call	edi ; MoveWindow
jmp	short loc_406AA2

loc_406A87:
mov	eax, [esi+0Ch]
push	ebx		; nWidth
push	[ebp+Y]		; Y
imul	eax, 188h
push	ecx		; X
push	dword ptr [eax+esi+88h]	; hWnd
call	ds:MoveWindow

loc_406AA2:
pop	edi
pop	esi
pop	ebx
leave
retn
sub_4069DB endp



; Attributes: bp-based frame

sub_406AA7 proc	near

wndpl= WINDOWPLACEMENT ptr -3Ch
Rect= tagRECT ptr -10h

push	ebp
mov	ebp, esp
sub	esp, 3Ch
push	esi
push	edi
lea	eax, [ebp+Rect]
mov	edi, ecx
push	eax		; lpRect
push	dword ptr [edi]	; hWnd
call	ds:GetWindowRect
mov	esi, [ebp+Rect.bottom]
lea	eax, [ebp+wndpl]
sub	esi, [ebp+Rect.top]
push	eax		; lpwndpl
push	dword ptr [edi]	; hWnd
call	ds:GetWindowPlacement
test	eax, eax
jz	short loc_406AD6
add	esi, [ebp+wndpl.rcNormalPosition.top]

loc_406AD6:
mov	eax, esi
pop	edi
pop	esi
leave
retn
sub_406AA7 endp




sub_406ADC proc	near
mov	eax, ecx
xor	ecx, ecx
mov	[eax+4], ecx
mov	[eax+8], ecx
mov	[eax+0Ch], ecx
mov	dword ptr [eax+10h], 4
mov	dword ptr [eax], offset	off_44BA80
retn
sub_406ADC endp



; Attributes: bp-based frame

sub_406AF7 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442D94
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44BA80
and	[ebp+var_4], 0
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_406AF7 endp



; Attributes: bp-based frame

sub_406B2F proc	near

Memory=	dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
push	ecx
push	ebx
mov	ebx, ecx
mov	ecx, [ebp+arg_4]
push	edi
mov	edi, [ebp+arg_0]
mov	eax, [ebx+8]
add	ecx, edi
cmp	ecx, eax
jle	short loc_406B4B
sub	eax, edi
mov	[ebp+arg_4], eax

loc_406B4B:
mov	eax, [ebp+arg_4]
test	eax, eax
jle	short loc_406B7F
push	esi
mov	esi, edi
shl	esi, 2
mov	[ebp+arg_0], eax

loc_406B5B:
mov	eax, [ebx+0Ch]
mov	ecx, [eax+esi]
test	ecx, ecx
mov	[ebp+Memory], ecx
jz	short loc_406B76
call	sub_406E56
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_406B76:
add	esi, 4
dec	[ebp+arg_0]
jnz	short loc_406B5B
pop	esi

loc_406B7F:
push	[ebp+arg_4]
mov	ecx, ebx
push	edi
call	sub_42847F
pop	edi
pop	ebx
leave
retn	8
sub_406B2F endp




sub_406B90 proc	near
mov	eax, ecx
xor	ecx, ecx
mov	[eax+4], ecx
mov	[eax+8], ecx
mov	[eax+0Ch], ecx
mov	dword ptr [eax+10h], 4
mov	dword ptr [eax], offset	off_44BA88
retn
sub_406B90 endp



; Attributes: bp-based frame

sub_406BAB proc	near

Memory=	dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
push	ecx
push	ebx
mov	ebx, ecx
mov	ecx, [ebp+arg_4]
push	edi
mov	edi, [ebp+arg_0]
mov	eax, [ebx+8]
add	ecx, edi
cmp	ecx, eax
jle	short loc_406BC7
sub	eax, edi
mov	[ebp+arg_4], eax

loc_406BC7:
mov	eax, [ebp+arg_4]
test	eax, eax
jle	short loc_406BFB
push	esi
mov	esi, edi
shl	esi, 2
mov	[ebp+arg_0], eax

loc_406BD7:
mov	eax, [ebx+0Ch]
mov	ecx, [eax+esi]
test	ecx, ecx
mov	[ebp+Memory], ecx
jz	short loc_406BF2
call	sub_406E6C
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_406BF2:
add	esi, 4
dec	[ebp+arg_0]
jnz	short loc_406BD7
pop	esi

loc_406BFB:
push	[ebp+arg_4]
mov	ecx, ebx
push	edi
call	sub_42847F
pop	edi
pop	ebx
leave
retn	8
sub_406BAB endp



; Attributes: bp-based frame

sub_406C0C proc	near

Memory=	dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
push	ecx
push	ebx
mov	ebx, ecx
mov	ecx, [ebp+arg_4]
push	edi
mov	edi, [ebp+arg_0]
mov	eax, [ebx+8]
add	ecx, edi
cmp	ecx, eax
jle	short loc_406C28
sub	eax, edi
mov	[ebp+arg_4], eax

loc_406C28:
mov	eax, [ebp+arg_4]
test	eax, eax
jle	short loc_406C5C
push	esi
mov	esi, edi
shl	esi, 2
mov	[ebp+arg_0], eax

loc_406C38:
mov	eax, [ebx+0Ch]
mov	ecx, [eax+esi]	; void *
test	ecx, ecx
mov	[ebp+Memory], ecx
jz	short loc_406C53
call	sub_406E76
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_406C53:
add	esi, 4
dec	[ebp+arg_0]
jnz	short loc_406C38
pop	esi

loc_406C5C:
push	[ebp+arg_4]
mov	ecx, ebx
push	edi
call	sub_42847F
pop	edi
pop	ebx
leave
retn	8
sub_406C0C endp



; Attributes: bp-based frame

sub_406C6D proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442DA8
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44BA4C
and	[ebp+var_4], 0
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_406C6D endp



; Attributes: bp-based frame

sub_406CA5 proc	near

Memory=	dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
push	ecx
push	ebx
mov	ebx, ecx
mov	ecx, [ebp+arg_4]
push	edi
mov	edi, [ebp+arg_0]
mov	eax, [ebx+8]
add	ecx, edi
cmp	ecx, eax
jle	short loc_406CC1
sub	eax, edi
mov	[ebp+arg_4], eax

loc_406CC1:
mov	eax, [ebp+arg_4]
test	eax, eax
jle	short loc_406CF5
push	esi
mov	esi, edi
shl	esi, 2
mov	[ebp+arg_0], eax

loc_406CD1:
mov	eax, [ebx+0Ch]
mov	ecx, [eax+esi]
test	ecx, ecx
mov	[ebp+Memory], ecx
jz	short loc_406CEC
call	sub_406E7F
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_406CEC:
add	esi, 4
dec	[ebp+arg_0]
jnz	short loc_406CD1
pop	esi

loc_406CF5:
push	[ebp+arg_4]
mov	ecx, ebx
push	edi
call	sub_42847F
pop	edi
pop	ebx
leave
retn	8
sub_406CA5 endp




; int __thiscall sub_406D06(void *Memory, char)
sub_406D06 proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_406D22
test	[esp+4+arg_0], 1
jz	short loc_406D1C
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_406D1C:
mov	eax, esi
pop	esi
retn	4
sub_406D06 endp



; Attributes: bp-based frame

sub_406D22 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442DBC
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44BA44
and	[ebp+var_4], 0
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_406D22 endp




; int __thiscall sub_406D5A(void *Memory, char)
sub_406D5A proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_406AF7
test	[esp+4+arg_0], 1
jz	short loc_406D70
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_406D70:
mov	eax, esi
pop	esi
retn	4
sub_406D5A endp




; int __thiscall sub_406D76(void *Memory, char)
sub_406D76 proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_406D92
test	[esp+4+arg_0], 1
jz	short loc_406D8C
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_406D8C:
mov	eax, esi
pop	esi
retn	4
sub_406D76 endp



; Attributes: bp-based frame

sub_406D92 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442DD0
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44BA88
and	[ebp+var_4], 0
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_406D92 endp




; int __thiscall sub_406DCA(void *Memory, char)
sub_406DCA proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_406DE6
test	[esp+4+arg_0], 1
jz	short loc_406DE0
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_406DE0:
mov	eax, esi
pop	esi
retn	4
sub_406DCA endp



; Attributes: bp-based frame

sub_406DE6 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442DE4
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44BA90
and	[ebp+var_4], 0
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_406DE6 endp




; int __thiscall sub_406E1E(void *Memory, char)
sub_406E1E proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_4302FB
test	[esp+4+arg_0], 1
jz	short loc_406E34
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_406E34:
mov	eax, esi
pop	esi
retn	4
sub_406E1E endp




; int __thiscall sub_406E3A(void *Memory, char)
sub_406E3A proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_406C6D
test	[esp+4+arg_0], 1
jz	short loc_406E50
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_406E50:
mov	eax, esi
pop	esi
retn	4
sub_406E3A endp




sub_406E56 proc	near
push	esi
mov	esi, ecx
push	dword ptr [esi+10h] ; Memory
call	sub_4284D8
push	dword ptr [esi]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx
pop	esi
retn
sub_406E56 endp




sub_406E6C proc	near
push	dword ptr [ecx+8] ; Memory
call	sub_4284D8
pop	ecx
retn
sub_406E6C endp




; void __thiscall sub_406E76(void *)
sub_406E76 proc	near
push	dword ptr [ecx]	; Memory
call	sub_4284D8
pop	ecx
retn
sub_406E76 endp



; Attributes: bp-based frame

sub_406E7F proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442E03
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
push	dword ptr [esi+84h] ; Memory
mov	[ebp+var_4], 1
call	sub_4284D8
push	dword ptr [esi+74h] ; Memory
call	sub_4284D8
mov	eax, [esi+6Ch]
pop	ecx
test	eax, eax
pop	ecx
jz	short loc_406EB9
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_406EB9:
and	byte ptr [ebp+var_4], 0
lea	ecx, [esi+68h]
call	sub_429929
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_406EDD
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_406E7F endp




sub_406EDD proc	near
push	esi
mov	esi, ecx
push	dword ptr [esi+50h] ; Memory
call	sub_4284D8
push	dword ptr [esi+18h] ; Memory
call	sub_4284D8
push	dword ptr [esi+0Ch] ; Memory
call	sub_4284D8
push	dword ptr [esi]	; Memory
call	sub_4284D8
add	esp, 10h
pop	esi
retn
sub_406EDD endp



; Attributes: bp-based frame

sub_406F04 proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442E18
call	__EH_prolog
sub	esp, 0Ch
lea	eax, [ebp+Memory]
push	esi
mov	esi, ecx
push	eax
call	sub_406FFD
and	[ebp+var_4], 0
push	eax
mov	ecx, esi
call	sub_406F7A
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
pop	esi
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn
sub_406F04 endp



; Attributes: bp-based frame

sub_406F3F proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442E2C
call	__EH_prolog
sub	esp, 0Ch
lea	eax, [ebp+Memory]
push	esi
mov	esi, ecx
push	eax
call	sub_406FFD
and	[ebp+var_4], 0
push	eax
mov	ecx, esi
call	sub_406FAE
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
pop	esi
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn
sub_406F3F endp




sub_406F7A proc	near

arg_0= dword ptr  4

push	esi
push	edi
mov	edi, ecx
mov	esi, [edi]

loc_406F80:
mov	ax, [esi]
mov	ecx, [esp+8+arg_0]
push	eax
call	sub_40706B
test	eax, eax
jl	short loc_406F9B
cmp	word ptr [esi],	0
jz	short loc_406F9B
inc	esi
inc	esi
jmp	short loc_406F80

loc_406F9B:
sub	esi, [edi]
mov	ecx, edi
sar	esi, 1
push	esi
push	0
call	sub_40708E
pop	edi
pop	esi
retn	4
sub_406F7A endp




sub_406FAE proc	near

arg_0= dword ptr  4

push	ebx
mov	ebx, ecx
push	esi
push	edi
mov	edi, [ebx]
xor	esi, esi
mov	ax, [edi]
test	ax, ax
jz	short loc_406FF7

loc_406FBF:
mov	ecx, [esp+0Ch+arg_0]
push	eax
call	sub_40706B
test	eax, eax
jl	short loc_406FD5
test	esi, esi
jnz	short loc_406FD7
mov	esi, edi
jmp	short loc_406FD7

loc_406FD5:
xor	esi, esi

loc_406FD7:
inc	edi
inc	edi
mov	ax, [edi]
test	ax, ax
jnz	short loc_406FBF
test	esi, esi
jz	short loc_406FF7
sub	esi, [ebx]
mov	eax, [ebx+4]
mov	ecx, ebx
sar	esi, 1
sub	eax, esi
push	eax
push	esi
call	sub_40708E

loc_406FF7:
pop	edi
pop	esi
pop	ebx
retn	4
sub_406FAE endp



; Attributes: bp-based frame

sub_406FFD proc	near

Memory=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_442E40
call	__EH_prolog
sub	esp, 10h
push	esi
xor	esi, esi
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+var_10], esi
mov	[ebp+Memory], esi
mov	[ebp+var_18], esi
mov	[ebp+var_14], esi
call	sub_403396
push	20h
lea	ecx, [ebp+Memory]
mov	[ebp+var_4], esi
call	sub_40316A
push	0Ah
lea	ecx, [ebp+Memory]
call	sub_40316A
push	9
lea	ecx, [ebp+Memory]
call	sub_40316A
mov	ecx, [ebp+arg_0]
lea	eax, [ebp+Memory]
push	eax
call	sub_4030F2
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	eax, [ebp+arg_0]
pop	ecx
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_406FFD endp




sub_40706B proc	near

arg_0= word ptr	 4

mov	edx, [ecx]
mov	eax, edx

loc_40706F:
mov	cx, [eax]
cmp	cx, [esp+arg_0]
jz	short loc_407082
test	cx, cx
jz	short loc_407088
inc	eax
inc	eax
jmp	short loc_40706F

loc_407082:
sub	eax, edx
sar	eax, 1
jmp	short locret_40708B

loc_407088:
or	eax, 0FFFFFFFFh

locret_40708B:
retn	4
sub_40706B endp




sub_40708E proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	ebx
push	esi
mov	esi, [esp+8+arg_4]
push	edi
mov	edi, ecx
mov	ecx, [esp+0Ch+arg_0]
mov	ebx, [edi+4]
lea	eax, [ecx+esi]
cmp	eax, ebx
jle	short loc_4070A9
mov	esi, ebx
sub	esi, ecx

loc_4070A9:
test	esi, esi
jle	short loc_4070D6
lea	edx, [ecx+esi]
mov	eax, [edi]
imul	edx, 7FFFFFFFh
add	edx, ebx
lea	edx, [edx+edx+2]
push	edx		; Size
lea	edx, [ecx+esi]
lea	edx, [eax+edx*2]
lea	eax, [eax+ecx*2]
push	edx		; Src
push	eax		; Dst
call	ds:memmove
add	esp, 0Ch
sub	[edi+4], esi

loc_4070D6:
mov	eax, [edi+4]
pop	edi
pop	esi
pop	ebx
retn	8
sub_40708E endp




sub_4070DF proc	near
push	ebx
push	esi
mov	esi, ecx
push	edi
mov	eax, esi
push	5
neg	eax
lea	edi, [esi+4]
mov	edx, offset unk_45B310
sbb	eax, eax
and	eax, edi
mov	ecx, [eax]
call	sub_40B00D
lea	ebx, [esi+8]
mov	ecx, ebx
call	sub_438795
xor	eax, eax
cmp	[esi+18h], al
setnz	al
push	eax		; uCheck
push	3F9h		; nIDButton
push	dword ptr [edi]	; hDlg
call	ds:CheckDlgButton
mov	eax, [ebx]
push	ds:nIDFirstButton[eax*4] ; nIDCheckButton
push	ds:nIDLastButton ; nIDLastButton
push	ds:nIDFirstButton ; nIDFirstButton
push	dword ptr [edi]	; hDlg
call	ds:CheckRadioButton
mov	ebx, ds:GetDlgItem
mov	eax, 3F6h
push	eax		; nIDDlgItem
mov	[esi+20h], eax
push	dword ptr [edi]	; hDlg
call	ebx ; GetDlgItem
mov	[esi+1Ch], eax
mov	eax, 3F7h
push	eax		; nIDDlgItem
mov	[esi+28h], eax
push	dword ptr [edi]	; hDlg
call	ebx ; GetDlgItem
mov	[esi+24h], eax
mov	edx, [esi+0Ch]
mov	ecx, [esi+1Ch]
call	sub_42E6BD
mov	ecx, esi
call	sub_4071BD
pop	edi
pop	esi
mov	al, 1
pop	ebx
retn
sub_4070DF endp



; Attributes: bp-based frame

sub_407178 proc	near

var_4= dword ptr -4

push	ebp
mov	ebp, esp
push	ecx
push	ebx
push	esi
push	edi
mov	edi, ecx
xor	ebx, ebx
mov	esi, offset nIDFirstButton

loc_407188:		; nIDButton
push	dword ptr [esi]
push	dword ptr [edi+4] ; hDlg
call	ds:IsDlgButtonChecked
cmp	eax, 1
jz	short loc_4071B6
add	esi, 4
inc	ebx
cmp	esi, offset off_44BAC0
jl	short loc_407188
and	[ebp+var_4], 0
lea	eax, [ebp+var_4]
push	offset unk_44D120
push	eax
call	_CxxThrowException

loc_4071B6:
pop	edi
mov	eax, ebx
pop	esi
pop	ebx
leave
retn
sub_407178 endp




sub_4071BD proc	near
push	ebx
push	esi
push	edi
mov	esi, ecx
call	sub_407178
cmp	eax, 2
mov	edi, ds:EnableWindow
setz	al
xor	ebx, ebx
test	al, al
setnz	bl
push	ebx		; bEnable
push	dword ptr [esi+1Ch] ; hWnd
call	edi ; EnableWindow
push	ebx		; bEnable
push	dword ptr [esi+24h] ; hWnd
call	edi ; EnableWindow
pop	edi
pop	esi
pop	ebx
retn
sub_4071BD endp




sub_4071EA proc	near

arg_0= dword ptr  4

push	esi
push	edi
mov	edi, [esp+8+arg_0]
mov	esi, ecx
lea	eax, [edi+4]
lea	ecx, [esi+1Ch]
push	eax
call	sub_42E799
push	3F9h		; nIDButton
push	dword ptr [esi+4] ; hDlg
call	ds:IsDlgButtonChecked
dec	eax
mov	ecx, esi
neg	eax
sbb	al, al
inc	al
mov	[edi+10h], al
call	sub_407178
mov	[edi], eax
pop	edi
pop	esi
retn	4
sub_4071EA endp



; Attributes: thunk

sub_407224 proc	near
jmp	$+5
sub_407224 endp




sub_407229 proc	near
lea	eax, [ecx+4]
push	esi
neg	ecx
push	dword ptr [eax]	; hWnd
sbb	ecx, ecx
and	ecx, eax
mov	esi, [ecx]
call	ds:GetParent
push	0		; lParam
push	esi		; wParam
push	468h		; Msg
push	eax		; hWnd
call	ds:SendMessageA
pop	esi
retn
sub_407229 endp




sub_40724E proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	esi
mov	esi, ecx
mov	ecx, [esp+4+arg_0]
mov	eax, offset nIDFirstButton

loc_40725A:
cmp	ecx, [eax]
jz	short loc_407283
add	eax, 4
cmp	eax, offset off_44BAC0
jl	short loc_40725A
mov	eax, ecx
sub	eax, 3F7h
jz	short loc_40728C
dec	eax
dec	eax
jz	short loc_407293
push	[esp+4+arg_4]
push	ecx
mov	ecx, esi
call	sub_42FAE0
jmp	short loc_40729C

loc_407283:
mov	ecx, esi
call	sub_4071BD
jmp	short loc_407293

loc_40728C:
mov	ecx, esi
call	sub_4072D0

loc_407293:
mov	ecx, esi
call	sub_407224
mov	al, 1

loc_40729C:
pop	esi
retn	8
sub_40724E endp



; Attributes: bp-based frame

sub_4072A0 proc	near

arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

push	ebp
mov	ebp, esp
cmp	[ebp+arg_0], 300h
jnz	short loc_4072BE
cmp	[ebp+arg_4], 3F6h
jnz	short loc_4072BE
call	sub_407224
mov	al, 1
jmp	short loc_4072CC

loc_4072BE:
push	[ebp+arg_8]
push	[ebp+arg_4]
push	[ebp+arg_0]
call	sub_42FAC5

loc_4072CC:
pop	ebp
retn	0Ch
sub_4072A0 endp



; Attributes: bp-based frame

sub_4072D0 proc	near

var_30=	dword ptr -30h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
Memory=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442E64
call	__EH_prolog
sub	esp, 24h
push	ebx
push	esi
push	edi
mov	esi, ecx
xor	edi, edi
push	3
lea	ecx, [ebp+var_24]
mov	[ebp+var_24], edi
mov	[ebp+var_20], edi
mov	[ebp+var_1C], edi
call	sub_403396
lea	ebx, [esi+1Ch]
lea	eax, [ebp+var_24]
push	eax
mov	ecx, ebx
mov	[ebp+var_4], edi
call	sub_42E799
push	1000281h
mov	edx, 36Dh
lea	ecx, [ebp+var_30]
call	sub_40B168
push	3
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 1
mov	[ebp+Memory], edi
mov	[ebp+var_14], edi
mov	[ebp+var_10], edi
call	sub_403396
mov	eax, esi
add	esi, 4
neg	eax
sbb	eax, eax
mov	edx, [ebp+var_30]
and	eax, esi
mov	byte ptr [ebp+var_4], 2
mov	ecx, [eax]
lea	eax, [ebp+Memory]
push	eax
push	[ebp+var_24]
call	sub_42E0C7
test	al, al
jz	short loc_40735F
mov	edx, [ebp+Memory]
mov	ecx, [ebx]
call	sub_42E6BD

loc_40735F:		; Memory
push	[ebp+Memory]
call	sub_4284D8
push	[ebp+var_30]	; Memory
call	sub_4284D8
push	[ebp+var_24]	; Memory
call	sub_4284D8
mov	ecx, [ebp+var_C]
add	esp, 0Ch
mov	large fs:0, ecx
pop	edi
pop	esi
pop	ebx
leave
retn
sub_4072D0 endp




sub_407389 proc	near
push	esi
lea	esi, [ecx+8]
push	esi
call	sub_4071EA
mov	ecx, esi
call	sub_438708
xor	eax, eax
pop	esi
retn
sub_407389 endp




sub_40739E proc	near
mov	edx, off_45B338
xor	ecx, ecx
jmp	sub_40AD1B
sub_40739E endp



; Attributes: bp-based frame

sub_4073AB proc	near

var_44=	byte ptr -44h
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
sub	esp, 44h
and	[ebp+var_4], 0
push	esi
push	[ebp+arg_4]
mov	esi, ecx
lea	ecx, [ebp+var_44]
push	[ebp+arg_0]
call	sub_427B10
lea	eax, [ebp+var_44]
mov	ecx, esi
push	eax
call	sub_403091
mov	eax, esi
pop	esi
leave
retn	8
sub_4073AB endp



; Attributes: bp-based frame

sub_4073D8 proc	near

Memory=	dword ptr -28h
var_1C=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_442E80
call	__EH_prolog
sub	esp, 1Ch
and	[ebp+var_10], 0
push	esi
mov	esi, ecx
push	edx
lea	ecx, [ebp+var_1C]
call	sub_4030F2
and	[ebp+var_4], 0
push	offset a0	; "{0}"
lea	ecx, [ebp+Memory]
call	sub_403091
push	[ebp+arg_0]
lea	eax, [ebp+Memory]
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 1
push	eax
call	sub_407494
and	byte ptr [ebp+var_4], 0
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_1C]
push	eax
mov	ecx, esi
call	sub_4030F2
push	[ebp+var_1C]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_4073D8 endp



; Attributes: bp-based frame

sub_40744B proc	near

Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_442E94
call	__EH_prolog
sub	esp, 10h
and	[ebp+var_10], 0
push	esi
push	[ebp+arg_0]
mov	esi, ecx
lea	ecx, [ebp+Memory]
call	sub_40B168
push	[ebp+arg_4]
and	[ebp+var_4], 0
mov	edx, eax
mov	ecx, esi
call	sub_4073D8
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	8
sub_40744B endp



; Attributes: bp-based frame

sub_407494 proc	near

var_8= dword ptr -8
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
push	ecx
push	ecx
push	ebx
mov	ebx, [ebp+arg_0]
push	esi
push	edi
cmp	dword ptr [ebx+4], 0
mov	esi, ecx
jz	short loc_4074B7
mov	edi, [ebp+arg_4]
mov	ecx, [ebx]
mov	edx, [edi]
call	sub_42828A
test	eax, eax
jnz	short loc_4074BB

loc_4074B7:
xor	eax, eax
jmp	short loc_407504

loc_4074BB:
mov	eax, [ebx+4]
mov	[ebp+var_4], eax
mov	eax, [edi+4]
xor	edi, edi
mov	[ebp+var_8], eax
cmp	[esi+4], edi
mov	[ebp+arg_0], edi
jle	short loc_407501

loc_4074D1:
push	edi
push	ebx
mov	ecx, esi
call	sub_40750B
mov	edi, eax
test	edi, edi
jl	short loc_407501
push	[ebp+var_4]
mov	ecx, esi
push	edi
call	sub_40708E
push	[ebp+arg_4]
mov	ecx, esi
push	edi
call	sub_407571
add	edi, [ebp+var_8]
inc	[ebp+arg_0]
cmp	edi, [esi+4]
jl	short loc_4074D1

loc_407501:
mov	eax, [ebp+arg_0]

loc_407504:
pop	edi
pop	esi
pop	ebx
leave
retn	8
sub_407494 endp



; Attributes: bp-based frame

sub_40750B proc	near

arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
mov	eax, [ebp+arg_0]
push	ebx
push	esi
push	edi
mov	esi, [eax+4]
test	esi, esi
jnz	short loc_407520
mov	eax, [ebp+arg_4]
jmp	short loc_40756A

loc_407520:
mov	edx, [ecx+4]
mov	eax, [ebp+arg_4]
cmp	eax, edx
jge	short loc_407567

loc_40752A:
xor	edx, edx
test	esi, esi
jle	short loc_407557
lea	esi, [eax+eax]

loc_407533:
lea	edi, [edx+eax]
cmp	edi, [ecx+4]
jge	short loc_407557
mov	edi, [ebp+arg_0]
mov	ebx, [ecx]
mov	edi, [edi]
mov	bx, [esi+ebx]
cmp	bx, [edi+edx*2]
jnz	short loc_407557
mov	edi, [ebp+arg_0]
inc	edx
inc	esi
inc	esi
cmp	edx, [edi+4]
jl	short loc_407533

loc_407557:
mov	esi, [ebp+arg_0]
mov	esi, [esi+4]
cmp	edx, esi
jz	short loc_40756A
inc	eax
cmp	eax, [ecx+4]
jl	short loc_40752A

loc_407567:
or	eax, 0FFFFFFFFh

loc_40756A:
pop	edi
pop	esi
pop	ebx
pop	ebp
retn	8
sub_40750B endp



; Attributes: bp-based frame

sub_407571 proc	near

arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
push	esi
mov	esi, ecx
push	edi
mov	eax, [esi+4]
cmp	[ebp+arg_0], eax
jle	short loc_407583
mov	[ebp+arg_0], eax

loc_407583:
mov	ecx, [ebp+arg_4]
mov	edi, [ecx+4]
test	edi, edi
jz	short loc_4075C0
lea	eax, [ebp+arg_0]
push	edi
push	eax
mov	ecx, esi
call	sub_4075C6
xor	eax, eax
test	edi, edi
jle	short loc_4075BA
push	ebx

loc_4075A0:
mov	ecx, [ebp+arg_4]
mov	edx, [ebp+arg_0]
mov	ebx, [esi]
add	edx, eax
mov	ecx, [ecx]
mov	cx, [ecx+eax*2]
inc	eax
cmp	eax, edi
mov	[ebx+edx*2], cx
jl	short loc_4075A0
pop	ebx

loc_4075BA:
add	[esi+4], edi
mov	eax, [esi+4]

loc_4075C0:
pop	edi
pop	esi
pop	ebp
retn	8
sub_407571 endp




sub_4075C6 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	ebx
push	esi
mov	esi, ecx
push	edi
mov	edi, [esp+0Ch+arg_0]
mov	eax, [esi+4]
cmp	[edi], eax
jle	short loc_4075D8
mov	[edi], eax

loc_4075D8:
mov	ebx, [esp+0Ch+arg_4]
mov	ecx, esi
push	ebx
call	sub_4033EA
mov	eax, [edi]
mov	ecx, [esi]
mov	edx, eax
imul	edx, 7FFFFFFFh
add	edx, [esi+4]
lea	edx, [edx+edx+2]
push	edx		; Size
lea	edx, [ecx+eax*2]
add	eax, ebx
push	edx		; Src
lea	eax, [ecx+eax*2]
push	eax		; Dst
call	ds:memmove
add	esp, 0Ch
pop	edi
pop	esi
pop	ebx
retn	8
sub_4075C6 endp



; Attributes: bp-based frame

sub_407611 proc	near

var_5C=	dword ptr -5Ch
var_34=	dword ptr -34h
var_24=	dword ptr -24h
Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_442EC0
call	__EH_prolog
sub	esp, 50h
push	esi
push	edi
push	[ebp+arg_4]
mov	esi, ecx
lea	ecx, [esi+0A4h]
call	sub_43D0DB
push	[ebp+arg_0]
lea	edi, [esi+20h]
mov	ecx, edi
call	sub_40312C
mov	eax, [edi]
add	esi, 0C4h
push	1Fh		; dwNotifyFilter
push	0		; bWatchSubtree
push	eax		; lpPathName
mov	ecx, esi
call	sub_42B7CB
mov	eax, [esi]
or	esi, 0FFFFFFFFh
cmp	eax, esi
jz	short loc_407662
test	eax, eax
jnz	loc_4076F7

loc_407662:
push	ebx
call	ds:GetLastError
mov	[ebp+arg_0], eax
mov	[ebp+arg_4], esi
and	[ebp+var_4], 0
lea	ecx, [ebp+var_5C]
call	sub_404EA2
push	offset asc_45B41C ; "*"
lea	ecx, [ebp+var_24]
mov	byte ptr [ebp+var_4], 1
call	sub_403091
push	eax
mov	edx, edi
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 2
call	sub_40356A
mov	eax, [eax]
lea	ecx, [ebp+var_5C]
push	ecx		; int
push	eax		; lpFileName
lea	ecx, [ebp+arg_4]
mov	byte ptr [ebp+var_4], 3
call	sub_42B10B
push	[ebp+Memory]	; Memory
mov	bl, al
neg	bl
sbb	bl, bl
inc	bl
call	sub_4284D8
push	[ebp+var_24]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx
test	bl, bl
pop	ebx
push	[ebp+var_34]	; Memory
jz	short loc_4076E6
call	sub_4284D8
pop	ecx
mov	[ebp+var_4], esi
lea	ecx, [ebp+arg_4]
call	sub_42B047
mov	eax, [ebp+arg_0]
jmp	short loc_4076F9

loc_4076E6:
call	sub_4284D8
pop	ecx
mov	[ebp+var_4], esi
lea	ecx, [ebp+arg_4]
call	sub_42B047

loc_4076F7:
xor	eax, eax

loc_4076F9:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	8
sub_407611 endp



; Attributes: thunk

sub_407709 proc	near
jmp	sub_42B047
sub_407709 endp



; Attributes: bp-based frame

sub_40770E proc	near

var_AC=	dword ptr -0ACh
var_A8=	dword ptr -0A8h
var_8C=	dword ptr -8Ch
var_84=	dword ptr -84h
var_74=	dword ptr -74h
Memory=	dword ptr -68h
var_5C=	dword ptr -5Ch
var_50=	dword ptr -50h
var_44=	dword ptr -44h
var_38=	dword ptr -38h
var_34=	dword ptr -34h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_442F0F
call	__EH_prolog
sub	esp, 0A0h
mov	eax, [ebp+arg_8]
push	ebx
push	esi
mov	[ebp+var_10], ecx
mov	ecx, [eax]
xor	ebx, ebx
push	edi
push	ebx
mov	esi, edx
push	eax
call	dword ptr [ecx+10h]
cmp	eax, ebx
jnz	loc_4078C7
mov	edi, [ebp+arg_4]
push	offset asc_45B420 ; "\\*"
lea	ecx, [ebp+var_44]
mov	[edi], ebx
mov	[edi+4], ebx
mov	[esi], ebx
mov	[esi+4], ebx
mov	ebx, [ebp+arg_0]
and	dword ptr [ebx], 0
and	dword ptr [ebx+4], 0
call	sub_403091
mov	edx, [ebp+var_10]
and	[ebp+var_4], 0
push	eax
lea	ecx, [ebp+Memory]
call	sub_40356A
or	[ebp+var_20], 0FFFFFFFFh
push	eax
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 2
call	sub_4030F2
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_44]	; Memory
mov	byte ptr [ebp+var_4], 4
call	sub_4284D8
pop	ecx
pop	ecx
lea	ecx, [ebp+var_AC]
call	sub_404EA2
mov	byte ptr [ebp+var_4], 6

loc_4077A4:
lea	eax, [ebp+var_AC]
lea	ecx, [ebp+var_20]
push	eax
call	sub_42B72E
test	al, al
jz	loc_4078A4
mov	eax, [ebp+var_8C]
shr	eax, 4
test	al, 1
jz	loc_407861
push	5Ch
lea	ecx, [ebp+var_50]
call	sub_409516
mov	edx, [ebp+var_10]
push	eax
lea	ecx, [ebp+var_74]
mov	byte ptr [ebp+var_4], 7
call	sub_40356A
lea	ecx, [ebp+var_84]
mov	edx, eax
push	ecx
lea	ecx, [ebp+var_5C]
mov	byte ptr [ebp+var_4], 8
call	sub_40356A
push	[ebp+arg_8]
lea	ecx, [ebp+var_30]
lea	edx, [ebp+var_38]
mov	byte ptr [ebp+var_4], 9
push	ecx
lea	ecx, [ebp+var_28]
push	ecx
mov	ecx, eax
call	sub_40770E
mov	[ebp+arg_4], eax
push	[ebp+var_5C]	; Memory
call	sub_4284D8
push	[ebp+var_74]	; Memory
call	sub_4284D8
push	[ebp+var_50]	; Memory
mov	byte ptr [ebp+var_4], 6
call	sub_4284D8
add	esp, 0Ch
cmp	[ebp+arg_4], 0
jnz	short loc_40787E
mov	eax, [ebp+var_38]
mov	ecx, [ebp+var_34]
add	[esi], eax
mov	eax, [ebp+var_28]
adc	[esi+4], ecx
add	dword ptr [esi], 1
mov	ecx, [ebp+var_24]
adc	dword ptr [esi+4], 0
add	[ebx], eax
mov	eax, [ebp+var_30]
adc	[ebx+4], ecx
mov	ecx, [ebp+var_2C]
jmp	short loc_407874

loc_407861:
add	dword ptr [ebx], 1
mov	eax, [ebp+var_AC]
mov	ecx, [ebp+var_A8]
adc	dword ptr [ebx+4], 0

loc_407874:
add	[edi], eax
adc	[edi+4], ecx
jmp	loc_4077A4

loc_40787E:		; Memory
push	[ebp+var_84]
call	sub_4284D8
push	[ebp+var_1C]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
pop	ecx
pop	ecx
lea	ecx, [ebp+var_20]
call	sub_42B047
mov	eax, [ebp+arg_4]
jmp	short loc_4078C7

loc_4078A4:		; Memory
push	[ebp+var_84]
call	sub_4284D8
push	[ebp+var_1C]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
pop	ecx
pop	ecx
lea	ecx, [ebp+var_20]
call	sub_42B047
xor	eax, eax

loc_4078C7:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	0Ch
sub_40770E endp




sub_4078D8 proc	near
push	esi
mov	esi, ecx
push	dword ptr [esi+4] ; Memory
call	sub_4284D8
pop	ecx
mov	ecx, esi
call	sub_42B047
pop	esi
retn
sub_4078D8 endp



; Attributes: bp-based frame

sub_4078ED proc	near

var_A4=	dword ptr -0A4h
var_A0=	dword ptr -0A0h
var_84=	dword ptr -84h
var_6C=	byte ptr -6Ch
var_5C=	dword ptr -5Ch
var_58=	byte ptr -58h
var_44=	dword ptr -44h
Memory=	dword ptr -38h
var_2C=	dword ptr -2Ch
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset __ehhandler$?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@ABA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AAVios_base@2@DPADI@Z
call	__EH_prolog
sub	esp, 98h
mov	edx, [ebp+arg_4]
push	ebx
push	esi
mov	esi, ecx
push	edi
push	offset asc_45B41C ; "*"
lea	ecx, [ebp+Memory]
mov	[ebp+var_10], esi
call	sub_409948
or	[ebp+var_20], 0FFFFFFFFh
xor	ebx, ebx
mov	[ebp+var_4], ebx
push	eax
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 1
call	sub_4030F2
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 3
call	sub_4284D8
pop	ecx
lea	ecx, [ebp+var_A4]
call	sub_404EA2
lea	ecx, [ebp+var_58]
mov	byte ptr [ebp+var_4], 4
mov	[ebp+var_5C], ebx
call	sub_4095AA
lea	eax, [ebp+var_A4]
lea	ecx, [ebp+var_20]
push	eax
mov	byte ptr [ebp+var_4], 5
call	sub_42B72E
mov	edi, [ebp+arg_0]
test	al, al
jz	short loc_4079AA

loc_40796C:
mov	eax, [ebp+var_84]
mov	[ebp+var_6C], bl
shr	eax, 4
test	al, 1
jz	short loc_407988
mov	[ebp+var_A4], ebx
mov	[ebp+var_A0], ebx

loc_407988:
lea	eax, [ebp+var_A4]
lea	ecx, [edi+4Ch]
push	eax
call	sub_4095C5
lea	eax, [ebp+var_A4]
lea	ecx, [ebp+var_20]
push	eax
call	sub_42B72E
test	al, al
jnz	short loc_40796C

loc_4079AA:
lea	ecx, [ebp+var_A4]
mov	byte ptr [ebp+var_4], 3
call	sub_407A54
push	[ebp+var_1C]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
pop	ecx
lea	ecx, [ebp+var_20]
call	sub_42B047
cmp	[esi+0C0h], bl
jz	short loc_407A37
cmp	[edi+54h], ebx
jle	short loc_407A37

loc_4079DB:
mov	eax, [edi+58h]
mov	esi, [eax+ebx*4]
mov	eax, [esi+20h]
shr	eax, 4
test	al, 1
jz	short loc_407A31
mov	edx, [ebp+arg_4]
lea	eax, [esi+28h]
push	eax
lea	ecx, [ebp+var_44]
call	sub_40356A
push	5Ch
mov	edx, eax
lea	ecx, [ebp+var_2C]
mov	[ebp+var_4], 6
call	sub_409999
mov	ecx, [ebp+var_10]
push	eax
push	esi
mov	byte ptr [ebp+var_4], 7
call	sub_4078ED
push	[ebp+var_2C]	; Memory
call	sub_4284D8
push	[ebp+var_44]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
pop	ecx
pop	ecx

loc_407A31:
inc	ebx
cmp	ebx, [edi+54h]
jl	short loc_4079DB

loc_407A37:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
xor	eax, eax
pop	ebx
mov	large fs:0, ecx
leave
retn	8
sub_4078ED endp

; START	OF FUNCTION CHUNK FOR sub_442808

loc_407A4A:		; Memory
push	dword ptr [ecx+28h]
call	sub_4284D8
pop	ecx
retn
; END OF FUNCTION CHUNK	FOR sub_442808


; Attributes: bp-based frame

sub_407A54 proc	near

var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442F74
call	__EH_prolog
push	ecx
push	ecx
push	esi
push	edi
mov	edi, ecx
mov	[ebp+var_10], edi
and	[ebp+var_4], 0
lea	esi, [edi+4Ch]
mov	[ebp+var_14], esi
mov	dword ptr [esi], offset	off_44BAC0
mov	ecx, esi
mov	byte ptr [ebp+var_4], 1
call	sub_428327
and	byte ptr [ebp+var_4], 0
mov	ecx, esi
call	sub_4282FE
push	dword ptr [edi+28h] ; Memory
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_407A54 endp



; Attributes: bp-based frame

sub_407AA4 proc	near

var_4= dword ptr -4
arg_0= dword ptr  8

push	ebp
mov	ebp, esp
push	ecx
push	esi
mov	esi, [ebp+arg_0]
push	edi
xor	edi, edi
cmp	[esi+54h], edi
mov	[ebp+var_4], ecx
jle	short loc_407AD6
push	ebx
lea	ebx, [ecx+90h]

loc_407ABE:
mov	eax, [esi+58h]
mov	ecx, ebx
mov	eax, [eax+edi*4]
push	eax
mov	[eax+48h], esi
call	sub_429907
inc	edi
cmp	edi, [esi+54h]
jl	short loc_407ABE
pop	ebx

loc_407AD6:
mov	eax, [ebp+var_4]
cmp	byte ptr [eax+0C0h], 0
jz	short loc_407B09
xor	edi, edi
cmp	[esi+54h], edi
jle	short loc_407B09

loc_407AE9:
mov	eax, [esi+58h]
mov	eax, [eax+edi*4]
mov	ecx, [eax+20h]
shr	ecx, 4
test	cl, 1
jz	short loc_407B03
mov	ecx, [ebp+var_4]
push	eax
call	sub_407AA4

loc_407B03:
inc	edi
cmp	edi, [esi+54h]
jl	short loc_407AE9

loc_407B09:
pop	edi
pop	esi
leave
retn	4
sub_407AA4 endp



; Attributes: bp-based frame

sub_407B0F proc	near

arg_0= dword ptr  8

push	ebp
mov	ebp, esp
push	esi
mov	esi, [ebp+arg_0]
lea	edx, [ebp+arg_0]
push	edi
mov	ecx, [esi+4]
lea	eax, [esi+4]
push	edx
push	eax
call	dword ptr [ecx+0Ch]
mov	ecx, esi
call	sub_407B56
lea	eax, [esi+20h]
lea	edi, [esi+30h]
push	eax
push	edi
mov	ecx, esi
call	sub_4078ED
test	eax, eax
jnz	short loc_407B50
push	edi
mov	ecx, esi
call	sub_407AA4
and	byte ptr [esi+0A8h], 0
xor	eax, eax

loc_407B50:
pop	edi
pop	esi
pop	ebp
retn	4
sub_407B0F endp




sub_407B56 proc	near
push	esi
mov	esi, ecx
lea	ecx, [esi+7Ch]
call	sub_428327
and	dword ptr [esi+78h], 0
lea	ecx, [esi+90h]
call	sub_428327
pop	esi
retn
sub_407B56 endp



; Attributes: bp-based frame

sub_407B72 proc	near

var_50=	dword ptr -50h
Memory=	dword ptr -40h
var_34=	dword ptr -34h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
lpBuffer= dword	ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
nNumberOfBytesToRead= dword ptr	-1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442FA0
call	__EH_prolog
sub	esp, 44h
push	esi
mov	esi, ecx
cmp	byte ptr [esi+0A8h], 0
jz	short loc_407B92
mov	al, 1
jmp	loc_407CDE

loc_407B92:
push	ebx
lea	ecx, [esi+0ACh]
push	edi
mov	[ebp+var_14], ecx
call	sub_428327
or	[ebp+var_50], 0FFFFFFFFh
mov	byte ptr [esi+0A8h], 1
push	off_45B3FC
xor	edi, edi
lea	edx, [esi+20h]
lea	ecx, [ebp+Memory]
mov	[ebp+var_4], edi
call	sub_409948
push	dword ptr [eax]	; lpFileName
lea	ecx, [ebp+var_50]
mov	byte ptr [ebp+var_4], 1
call	sub_42C145
push	[ebp+Memory]	; Memory
mov	bl, al
neg	bl
sbb	bl, bl
and	byte ptr [ebp+var_4], 0
inc	bl
call	sub_4284D8
test	bl, bl
pop	ecx
jz	short loc_407BF1

loc_407BEA:
xor	bl, bl
jmp	loc_407CCE

loc_407BF1:
lea	eax, [ebp+nNumberOfBytesToRead]
lea	ecx, [ebp+var_50]
push	eax
call	sub_42BEDB
test	al, al
jz	short loc_407BEA
cmp	[ebp+var_18], edi
ja	short loc_407BEA
cmp	[ebp+nNumberOfBytesToRead], 10000000h
jnb	short loc_407BEA
push	3
lea	ecx, [ebp+lpBuffer]
mov	[ebp+lpBuffer],	edi
mov	[ebp+var_24], edi
mov	[ebp+var_20], edi
call	sub_4034E3
mov	eax, [ebp+nNumberOfBytesToRead]
mov	byte ptr [ebp+var_4], 2
inc	eax
cmp	eax, [ebp+var_20]
jl	short loc_407C38
push	eax
lea	ecx, [ebp+lpBuffer]
call	sub_4034E3

loc_407C38:
mov	esi, [ebp+lpBuffer]
lea	eax, [ebp+var_10]
push	eax		; int
lea	ecx, [ebp+var_50]
push	[ebp+nNumberOfBytesToRead] ; nNumberOfBytesToRead
push	esi		; lpBuffer
call	sub_42C1A2
mov	eax, [ebp+nNumberOfBytesToRead]
and	byte ptr [eax+esi], 0
mov	ecx, [ebp+lpBuffer]
xor	eax, eax
cmp	[ecx], al
jz	short loc_407C62

loc_407C5B:
inc	eax
cmp	byte ptr [eax+ecx], 0
jnz	short loc_407C5B

loc_407C62:
and	byte ptr [eax+ecx], 0
mov	[ebp+var_24], eax
mov	eax, [ebp+var_10]
xor	ecx, ecx
cmp	eax, [ebp+nNumberOfBytesToRead]
jnz	short loc_407C78
cmp	ecx, [ebp+var_18]
jz	short loc_407C7C

loc_407C78:
xor	bl, bl
jmp	short loc_407CC5

loc_407C7C:
lea	ecx, [ebp+var_50]
call	sub_42BEBB
push	3
lea	ecx, [ebp+var_34]
mov	[ebp+var_34], edi
mov	[ebp+var_30], edi
mov	[ebp+var_2C], edi
call	sub_403396
lea	edx, [ebp+var_34]
lea	ecx, [ebp+lpBuffer]
mov	byte ptr [ebp+var_4], 3
call	sub_428A33
test	al, al
jnz	short loc_407CAE
xor	bl, bl
jmp	short loc_407CBC

loc_407CAE:
mov	ecx, [ebp+var_14]
lea	eax, [ebp+var_34]
push	eax
call	sub_42015E
mov	bl, al

loc_407CBC:		; Memory
push	[ebp+var_34]
call	sub_4284D8
pop	ecx

loc_407CC5:		; Memory
push	[ebp+lpBuffer]
call	sub_4284D8
pop	ecx

loc_407CCE:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_50]
call	sub_42BD78
mov	al, bl
pop	edi
pop	ebx

loc_407CDE:
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_407B72 endp



; Attributes: bp-based frame

sub_407CEB proc	near

var_4C=	dword ptr -4Ch
Memory=	dword ptr -3Ch
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
lpBuffer= dword	ptr -24h
nNumberOfBytesToWrite= dword ptr -20h
var_1C=	dword ptr -1Ch
Buffer=	byte ptr -18h
var_17=	byte ptr -17h
var_16=	byte ptr -16h
var_15=	byte ptr -15h
var_14=	byte ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_442FCC
call	__EH_prolog
sub	esp, 40h
or	[ebp+var_4C], 0FFFFFFFFh
push	ebx
push	esi
push	edi
mov	esi, ecx
push	off_45B3FC
xor	edi, edi
lea	edx, [esi+20h]
lea	ecx, [ebp+Memory]
mov	[ebp+var_4], edi
call	sub_409948
mov	eax, [eax]
push	1		; char
push	eax		; lpFileName
lea	ecx, [ebp+var_4C]
mov	byte ptr [ebp+var_4], 1
call	sub_42C21B
push	[ebp+Memory]	; Memory
mov	bl, al
neg	bl
sbb	bl, bl
and	byte ptr [ebp+var_4], 0
inc	bl
call	sub_4284D8
test	bl, bl
pop	ecx
jz	short loc_407D48
xor	bl, bl
jmp	loc_407DEF

loc_407D48:
push	3
lea	ecx, [ebp+var_30]
mov	[ebp+var_30], edi
mov	[ebp+var_2C], edi
mov	[ebp+var_28], edi
call	sub_403396
lea	eax, [ebp+var_30]
lea	ecx, [esi+0ACh]
push	eax
mov	byte ptr [ebp+var_4], 2
call	sub_420446
push	3
lea	ecx, [ebp+lpBuffer]
mov	[ebp+lpBuffer],	edi
mov	[ebp+nNumberOfBytesToWrite], edi
mov	[ebp+var_1C], edi
call	sub_4034E3
lea	edx, [ebp+lpBuffer]
lea	ecx, [ebp+var_30]
mov	byte ptr [ebp+var_4], 3
call	sub_428B8B
lea	ecx, [ebp+var_30]
call	sub_407E0C
test	al, al
jnz	short loc_407DC2
lea	eax, [ebp+var_10]
lea	ecx, [ebp+var_4C]
push	eax		; int
lea	eax, [ebp+Buffer]
push	5		; nNumberOfBytesToWrite
push	eax		; lpBuffer
mov	[ebp+Buffer], 0EFh
mov	[ebp+var_17], 0BBh
mov	[ebp+var_16], 0BFh
mov	[ebp+var_15], 0Dh
mov	[ebp+var_14], 0Ah
call	sub_42C289

loc_407DC2:
lea	eax, [ebp+var_10]
lea	ecx, [ebp+var_4C]
push	eax		; int
push	[ebp+nNumberOfBytesToWrite] ; nNumberOfBytesToWrite
push	[ebp+lpBuffer]	; lpBuffer
call	sub_42C289
push	[ebp+lpBuffer]	; Memory
and	byte ptr [esi+0A8h], 0
call	sub_4284D8
push	[ebp+var_30]	; Memory
call	sub_4284D8
pop	ecx
mov	bl, 1
pop	ecx

loc_407DEF:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_4C]
call	sub_42BD78
mov	ecx, [ebp+var_C]
pop	edi
mov	al, bl
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_407CEB endp




sub_407E0C proc	near
mov	eax, [ecx+4]
xor	edx, edx
test	eax, eax
jle	short loc_407E25
mov	ecx, [ecx]

loc_407E17:
cmp	word ptr [ecx],	80h
jnb	short loc_407E28
inc	edx
inc	ecx
inc	ecx
cmp	edx, eax
jl	short loc_407E17

loc_407E25:
mov	al, 1
retn

loc_407E28:
xor	al, al
retn
sub_407E0C endp



; Attributes: thunk

sub_407E2B proc	near
jmp	sub_42BD78
sub_407E2B endp




sub_407E30 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

mov	eax, [esp+arg_0]
mov	ecx, [esp+arg_4]
mov	eax, [eax+98h]
mov	[ecx], eax
xor	eax, eax
retn	8
sub_407E30 endp



; Attributes: bp-based frame

sub_407E45 proc	near

pvarg= VARIANTARG ptr -58h
var_48=	dword ptr -48h
var_3C=	dword ptr -3Ch
var_30=	dword ptr -30h
Memory=	dword ptr -24h
psz= dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h

mov	eax, offset loc_443008
call	__EH_prolog
sub	esp, 4Ch
push	ebx
push	esi
push	edi
xor	edi, edi
mov	word ptr [ebp+pvarg.anonymous_0], di
mov	word ptr [ebp+pvarg.anonymous_0+2], di
mov	ebx, [ebp+arg_0]
mov	eax, [ebp+arg_4]
mov	[ebp+var_4], edi
mov	ecx, [ebx+98h]
cmp	eax, ecx
jb	short loc_407E7C
mov	esi, 80070057h
jmp	loc_408062

loc_407E7C:
mov	ecx, [ebx+9Ch]
mov	esi, [ecx+eax*4]
mov	eax, [ebp+arg_8]
cmp	eax, 0Ah
ja	loc_407F8C
jz	loc_407F84
sub	eax, 4
jz	loc_407F74
dec	eax
dec	eax
jz	loc_407F5E
dec	eax
jz	loc_407F49
dec	eax
jz	short loc_407EC9
dec	eax
jnz	loc_408055
push	dword ptr [esi+20h]
lea	ecx, [ebp+pvarg]
call	sub_42CD72
jmp	loc_408055

loc_407EC9:
cmp	byte ptr [esi+38h], 0
jnz	short loc_407F36
mov	eax, [esi+20h]
mov	byte ptr [esi+38h], 1
shr	eax, 4
test	al, 1
jnz	short loc_407F2B
lea	eax, [ebp+var_30]
push	esi
push	eax
mov	ecx, ebx
call	sub_4085D1
push	eax
lea	edx, [ebx+20h]
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 1
call	sub_40356A
mov	eax, [eax]
lea	edx, [esi+40h]
mov	ecx, eax
mov	byte ptr [ebp+var_4], 2
call	sub_408081
push	[ebp+Memory]	; Memory
mov	bl, al
neg	bl
sbb	bl, bl
inc	bl
call	sub_4284D8
push	[ebp+var_30]	; Memory
and	byte ptr [ebp+var_4], 0
call	sub_4284D8
pop	ecx
test	bl, bl
pop	ecx
jz	short loc_407F36

loc_407F2B:
mov	eax, [esi]
mov	[esi+40h], eax
mov	eax, [esi+4]
mov	[esi+44h], eax

loc_407F36:
push	dword ptr [esi+44h]
push	dword ptr [esi+40h]

loc_407F3C:
lea	ecx, [ebp+pvarg]
call	sub_42CD92
jmp	loc_408055

loc_407F49:
mov	eax, [esi+20h]
shr	eax, 4
test	al, 1
jnz	loc_408055
push	dword ptr [esi+4]
push	dword ptr [esi]
jmp	short loc_407F3C

loc_407F5E:
mov	eax, [esi+20h]
lea	ecx, [ebp+pvarg]
shr	eax, 4
and	al, 1
push	eax
call	sub_42CD4D
jmp	loc_408055

loc_407F74:		; psz
push	dword ptr [esi+28h]
lea	ecx, [ebp+pvarg]
call	sub_42CC9E
jmp	loc_408055

loc_407F84:
add	esi, 8
jmp	loc_40804C

loc_407F8C:
sub	eax, 0Bh
jz	loc_408049
dec	eax
jz	loc_408044
sub	eax, 10h
jz	short loc_407FDF
dec	eax
dec	eax
jnz	loc_408055
cmp	byte ptr [ebx+0C0h], 0
jz	loc_408055
lea	eax, [ebp+var_3C]
push	esi
push	eax
mov	ecx, ebx
call	sub_408518
push	dword ptr [eax]	; psz
lea	ecx, [ebp+pvarg]
mov	byte ptr [ebp+var_4], 5
call	sub_42CC9E
and	byte ptr [ebp+var_4], 0
push	[ebp+var_3C]	; Memory

loc_407FD7:
call	sub_4284D8
pop	ecx
jmp	short loc_408055

loc_407FDF:
mov	ecx, ebx
call	sub_407B72
push	3
lea	ecx, [ebp+psz]
mov	[ebp+psz], edi
mov	[ebp+var_14], edi
mov	[ebp+var_10], edi
call	sub_403396
lea	eax, [ebp+var_48]
push	esi
push	eax
mov	ecx, ebx
mov	byte ptr [ebp+var_4], 3
call	sub_4085D1
lea	ecx, [ebp+psz]
mov	byte ptr [ebp+var_4], 4
push	ecx
push	eax
lea	ecx, [ebx+0ACh]
call	sub_420123
push	[ebp+var_48]	; Memory
mov	bl, al
mov	byte ptr [ebp+var_4], 3
call	sub_4284D8
test	bl, bl
pop	ecx
jz	short loc_40803B
push	[ebp+psz]	; psz
lea	ecx, [ebp+pvarg]
call	sub_42CC9E

loc_40803B:
and	byte ptr [ebp+var_4], 0
push	[ebp+psz]
jmp	short loc_407FD7

loc_408044:
add	esi, 18h
jmp	short loc_40804C

loc_408049:
add	esi, 10h

loc_40804C:
push	esi
lea	ecx, [ebp+pvarg]
call	sub_42CDB9

loc_408055:		; pvarg
push	[ebp+arg_C]
lea	ecx, [ebp+pvarg] ; Src
call	sub_42CE85
xor	esi, esi

loc_408062:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+pvarg] ; pvarg
call	sub_42CDE1
mov	ecx, [ebp+var_C]
mov	eax, esi
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	10h
sub_407E45 endp



; Attributes: bp-based frame

sub_408081 proc	near

Memory=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
FileSizeHigh= dword ptr	-10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_44301C
call	__EH_prolog
sub	esp, 14h
push	ebx
push	esi
mov	esi, ds:GetCompressedFileSizeW
lea	eax, [ebp+FileSizeHigh]
push	edi
mov	ebx, ecx
push	eax		; lpFileSizeHigh
mov	[ebp+var_14], edx
push	ebx		; lpFileName
call	esi ; GetCompressedFileSizeW
mov	edi, eax
cmp	edi, 0FFFFFFFFh
jnz	short loc_408102
call	ds:GetLastError
test	eax, eax
jz	short loc_408102
xor	eax, eax
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+Memory], eax
mov	[ebp+var_1C], eax
mov	[ebp+var_18], eax
call	sub_403396
and	[ebp+var_4], 0
lea	edx, [ebp+Memory]
mov	ecx, ebx
call	sub_42BD5E
test	al, al
jz	short loc_4080E6
lea	eax, [ebp+FileSizeHigh]
push	eax		; lpFileSizeHigh
push	[ebp+Memory]	; lpFileName
call	esi ; GetCompressedFileSizeW
mov	edi, eax

loc_4080E6:		; Memory
push	[ebp+Memory]
call	sub_4284D8
cmp	edi, 0FFFFFFFFh
pop	ecx
jnz	short loc_408102
call	ds:GetLastError
test	eax, eax
jz	short loc_408102
xor	al, al
jmp	short loc_408117

loc_408102:
mov	edx, [ebp+FileSizeHigh]
xor	ecx, ecx
xor	eax, eax
or	ecx, edi
or	edx, eax
mov	eax, [ebp+var_14]
mov	[eax], ecx
mov	[eax+4], edx
mov	al, 1

loc_408117:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_408081 endp



; Attributes: bp-based frame

sub_408126 proc	near

var_34=	dword ptr -34h
var_28=	dword ptr -28h
Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_443052
call	__EH_prolog
sub	esp, 28h
mov	eax, [ebp+arg_4]
push	esi
push	edi
mov	edi, ecx
and	dword ptr [eax], 0
push	0C8h		; Size
call	sub_4284B1
pop	ecx
mov	[ebp+var_10], eax
and	[ebp+var_4], 0
test	eax, eax
jz	short loc_40815E
mov	ecx, eax
call	sub_4081FF
mov	esi, eax
jmp	short loc_408160

loc_40815E:
xor	esi, esi

loc_408160:
or	[ebp+var_4], 0FFFFFFFFh
mov	[ebp+var_10], esi
test	esi, esi
jz	short loc_408171
mov	eax, [esi]
push	esi
call	dword ptr [eax+4]

loc_408171:
push	ebx
push	5Ch
lea	ecx, [ebp+var_34]
mov	[ebp+var_4], 1
call	sub_409516
mov	ebx, eax
push	[ebp+arg_0]
lea	edx, [edi+20h]
lea	ecx, [ebp+var_28]
mov	byte ptr [ebp+var_4], 2
call	sub_409948
push	ebx
mov	edx, eax
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 3
call	sub_40356A
push	0
push	eax
mov	ecx, esi
mov	byte ptr [ebp+var_4], 4
call	sub_407611
push	[ebp+Memory]	; Memory
mov	edi, eax
call	sub_4284D8
push	[ebp+var_28]	; Memory
call	sub_4284D8
push	[ebp+var_34]	; Memory
call	sub_4284D8
add	esp, 0Ch
test	edi, edi
pop	ebx
jz	short loc_4081E8
or	[ebp+var_4], 0FFFFFFFFh
test	esi, esi
jz	short loc_4081E4
mov	eax, [esi]
push	esi
call	dword ptr [eax+8]

loc_4081E4:
mov	eax, edi
jmp	short loc_4081EF

loc_4081E8:
mov	eax, [ebp+arg_4]
mov	[eax], esi
xor	eax, eax

loc_4081EF:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	8
sub_408126 endp



; Attributes: bp-based frame

sub_4081FF proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443067
call	__EH_prolog
push	ecx
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
push	3
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44BC00
mov	dword ptr [esi+4], offset off_44BBF0
mov	dword ptr [esi+8], offset off_44BBC4
mov	dword ptr [esi+0Ch], offset off_44BBB4
mov	dword ptr [esi+10h], offset off_44BBA4
mov	dword ptr [esi+14h], offset off_44BB94
lea	ecx, [esi+20h]
mov	dword ptr [esi+18h], offset off_44BB84
mov	[esi+1Ch], ebx
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
lea	ecx, [esi+30h]
mov	[ebp+var_4], ebx
call	sub_4082E9
push	4
lea	eax, [esi+90h]
pop	ecx
mov	[eax+4], ebx
mov	[eax+8], ebx
mov	[eax+0Ch], ebx
mov	[eax+10h], ecx
mov	dword ptr [eax], offset	off_44BB7C
lea	eax, [esi+0ACh]
mov	[esi+0A4h], ebx
mov	[eax+4], ebx
mov	[eax+8], ebx
mov	[eax+0Ch], ebx
mov	[eax+10h], ecx
mov	ecx, [ebp+var_C]
mov	dword ptr [eax], offset	off_44BB74
mov	[esi+0C0h], bl
or	dword ptr [esi+0C4h], 0FFFFFFFFh
mov	dword ptr [esi], offset	off_44BB44
mov	dword ptr [esi+4], offset off_44BB34
mov	dword ptr [esi+8], offset off_44BB08
mov	dword ptr [esi+0Ch], offset off_44BAF8
mov	dword ptr [esi+10h], offset off_44BAE8
mov	dword ptr [esi+14h], offset off_44BAD8
mov	dword ptr [esi+18h], offset off_44BAC8
mov	eax, esi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_4081FF endp




sub_4082E9 proc	near
push	esi
mov	esi, ecx
call	sub_404EA2
xor	eax, eax
mov	[esi+48h], eax
mov	[esi+50h], eax
mov	[esi+54h], eax
mov	[esi+58h], eax
mov	dword ptr [esi+5Ch], 4
mov	dword ptr [esi+4Ch], offset off_44BAC0
mov	eax, esi
pop	esi
retn
sub_4082E9 endp



; Attributes: bp-based frame

; int __stdcall	sub_408311(int,	void *Buf1, int)
sub_408311 proc	near

arg_0= dword ptr  8
Buf1= dword ptr	 0Ch
arg_8= dword ptr  10h

push	ebp
mov	ebp, esp
push	esi
mov	esi, [ebp+Buf1]
push	edi
push	10h
pop	edi
push	edi		; Size
push	offset unk_44CCB8 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_40833C

loc_40832F:
mov	ecx, [ebp+arg_8]
mov	eax, [ebp+arg_0]
mov	[ecx], eax
jmp	loc_408409

loc_40833C:		; Size
push	edi
push	offset unk_44B6D0 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jz	short loc_40832F
push	edi		; Size
push	offset unk_44B6C0 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_40836F
mov	eax, [ebp+arg_0]
mov	ecx, eax
lea	edx, [eax+4]
jmp	loc_4083FE

loc_40836F:		; Size
push	edi
push	offset unk_44B6A0 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_40838C
mov	eax, [ebp+arg_0]
mov	ecx, eax
lea	edx, [eax+8]
jmp	short loc_4083FE

loc_40838C:		; Size
push	edi
push	offset unk_44B680 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_4083A9
mov	eax, [ebp+arg_0]
mov	ecx, eax
lea	edx, [eax+0Ch]
jmp	short loc_4083FE

loc_4083A9:		; Size
push	edi
push	offset unk_44B670 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_4083C6
mov	eax, [ebp+arg_0]
mov	ecx, eax
lea	edx, [eax+10h]
jmp	short loc_4083FE

loc_4083C6:		; Size
push	edi
push	offset unk_44B690 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_4083E3
mov	eax, [ebp+arg_0]
mov	ecx, eax
lea	edx, [eax+14h]
jmp	short loc_4083FE

loc_4083E3:		; Size
push	edi
push	offset unk_44B660 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_408413
mov	eax, [ebp+arg_0]
mov	ecx, eax
lea	edx, [eax+18h]

loc_4083FE:
neg	ecx
sbb	ecx, ecx
and	ecx, edx
mov	edx, [ebp+arg_8]
mov	[edx], ecx

loc_408409:
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+4]
xor	eax, eax
jmp	short loc_408418

loc_408413:
mov	eax, 80004002h

loc_408418:
pop	edi
pop	esi
pop	ebp
retn	0Ch
sub_408311 endp




sub_40841E proc	near

arg_0= dword ptr  4

mov	eax, [esp+arg_0]
inc	dword ptr [eax+1Ch]
mov	eax, [eax+1Ch]
retn	4
sub_40841E endp




; int __stdcall	sub_40842B(void	*Memory)
sub_40842B proc	near

Memory=	dword ptr  4

push	esi
mov	esi, [esp+4+Memory]
dec	dword ptr [esi+1Ch]
mov	eax, [esi+1Ch]
jnz	short loc_40844C
test	esi, esi
jz	short loc_40844A
mov	ecx, esi
call	sub_408450
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_40844A:
xor	eax, eax

loc_40844C:
pop	esi
retn	4
sub_40842B endp



; Attributes: bp-based frame

sub_408450 proc	near

var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4430BC
call	__EH_prolog
push	ecx
push	ecx
push	esi
mov	esi, ecx
push	edi
mov	[ebp+var_10], esi
lea	ecx, [esi+0C4h]
mov	[ebp+var_4], 4
call	sub_42B786
lea	edi, [esi+0ACh]
mov	[ebp+var_14], edi
mov	dword ptr [edi], offset	off_44BB74
mov	ecx, edi
mov	byte ptr [ebp+var_4], 5
call	sub_428327
mov	ecx, edi
mov	byte ptr [ebp+var_4], 3
call	sub_4282FE
mov	eax, [esi+0A4h]
mov	byte ptr [ebp+var_4], 2
test	eax, eax
jz	short loc_4084AE
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_4084AE:
lea	ecx, [esi+90h]
mov	byte ptr [ebp+var_4], 1
call	sub_4282FE
and	byte ptr [ebp+var_4], 0
lea	ecx, [esi+30h]
call	sub_407A54
push	dword ptr [esi+20h] ; Memory
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_408450 endp

; START	OF FUNCTION CHUNK FOR sub_4430A6

loc_4084E0:
mov	eax, offset loc_4430D0
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp-10h], esi
mov	dword ptr [esi], offset	off_44BB74
and	dword ptr [ebp-4], 0
call	sub_428327
or	dword ptr [ebp-4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp-0Ch]
pop	esi
mov	large fs:0, ecx
leave
retn
; END OF FUNCTION CHUNK	FOR sub_4430A6


; Attributes: bp-based frame

sub_408518 proc	near

var_40=	dword ptr -40h
var_34=	dword ptr -34h
Memory=	dword ptr -28h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_4430FC
call	__EH_prolog
sub	esp, 34h
push	ebx
push	esi
xor	ebx, ebx
push	3
lea	ecx, [ebp+var_1C]
mov	[ebp+var_10], ebx
mov	[ebp+var_1C], ebx
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
call	sub_403396
mov	eax, [ebp+arg_4]
mov	[ebp+var_4], ebx
mov	esi, [eax+48h]

loc_408548:
cmp	[esi+48h], ebx
jz	short loc_4085A9
push	5Ch
lea	ecx, [ebp+var_40]
call	sub_409516
push	eax
lea	edx, [esi+28h]
lea	ecx, [ebp+var_34]
mov	byte ptr [ebp+var_4], 1
call	sub_40356A
lea	ecx, [ebp+var_1C]
mov	edx, eax
push	ecx
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 2
call	sub_40356A
push	eax
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 3
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_34]	; Memory
call	sub_4284D8
push	[ebp+var_40]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
mov	esi, [esi+48h]
add	esp, 0Ch
jmp	short loc_408548

loc_4085A9:
mov	ecx, [ebp+arg_0]
lea	eax, [ebp+var_1C]
push	eax
call	sub_4030F2
push	[ebp+var_1C]	; Memory
call	sub_4284D8
mov	eax, [ebp+arg_0]
pop	ecx
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	8
sub_408518 endp



; Attributes: bp-based frame

sub_4085D1 proc	near

Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_443110
call	__EH_prolog
sub	esp, 10h
and	[ebp+var_10], 0
push	esi
mov	esi, [ebp+arg_4]
lea	eax, [ebp+Memory]
push	esi
push	eax
call	sub_408518
mov	ecx, [ebp+arg_0]
and	[ebp+var_4], 0
add	esi, 28h
mov	edx, eax
push	esi
call	sub_40356A
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	eax, [ebp+arg_0]
pop	ecx
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	8
sub_4085D1 endp



; Attributes: bp-based frame

sub_40861D proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_443124
call	__EH_prolog
sub	esp, 0Ch
mov	ecx, [ebp+arg_4]
push	esi
mov	esi, [ebp+arg_0]
push	edi
mov	edi, [ebp+arg_8]
and	dword ptr [edi], 0
mov	eax, [esi+9Ch]
mov	eax, [eax+ecx*4]
mov	ecx, [eax+20h]
shr	ecx, 4
test	cl, 1
jnz	short loc_408653
mov	eax, 80070057h
jmp	short loc_40867B

loc_408653:
push	eax
lea	eax, [ebp+Memory]
push	eax
mov	ecx, esi
call	sub_4085D1
mov	eax, [eax]
and	[ebp+var_4], 0
push	edi
push	eax
mov	ecx, esi
call	sub_408126
push	[ebp+Memory]	; Memory
mov	esi, eax
call	sub_4284D8
pop	ecx
mov	eax, esi

loc_40867B:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	0Ch
sub_40861D endp




sub_40868B proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch

push	[esp+arg_8]
mov	ecx, [esp+4+arg_0]
push	[esp+4+arg_4]
call	sub_408126
retn	0Ch
sub_40868B endp



; Attributes: bp-based frame

sub_40869F proc	near

Memory=	dword ptr -30h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_443176
call	__EH_prolog
sub	esp, 24h
mov	eax, [ebp+arg_0]
push	ebx
push	esi
push	edi
mov	edi, [ebp+arg_4]
xor	ebx, ebx
mov	[edi], ebx
mov	esi, [eax+0A4h]
cmp	esi, ebx
jz	short loc_4086D2
mov	eax, [esi]
push	esi
call	dword ptr [eax+4]
mov	[edi], esi
xor	eax, eax
jmp	loc_4088C7

loc_4086D2:
mov	esi, [eax+24h]
cmp	esi, ebx
jnz	short loc_4086E3
mov	eax, 80070057h
jmp	loc_4088C7

loc_4086E3:
lea	ecx, [eax+20h]
mov	eax, [eax+24h]
cmp	eax, ebx
jz	loc_4088C2
mov	edx, [ecx]
push	5Ch
pop	edi
lea	eax, [edx+eax*2-2]

loc_4086FA:
cmp	[eax], di
jz	short loc_408707
cmp	eax, edx
jz	short loc_40870D
dec	eax
dec	eax
jmp	short loc_4086FA

loc_408707:
sub	eax, edx
sar	eax, 1
jmp	short loc_408710

loc_40870D:
or	eax, 0FFFFFFFFh

loc_408710:
cmp	eax, ebx
jl	loc_4088C2
dec	esi
cmp	eax, esi
jnz	loc_4088C2
push	eax
lea	eax, [ebp+var_18]
push	eax
call	sub_403228
mov	eax, [ebp+var_14]
mov	[ebp+var_4], ebx
cmp	eax, ebx
jz	short loc_408758
mov	ecx, [ebp+var_18]
lea	eax, [ecx+eax*2-2]

loc_40873C:
cmp	[eax], di
jz	short loc_408749
cmp	eax, ecx
jz	short loc_408751
dec	eax
dec	eax
jmp	short loc_40873C

loc_408749:
sub	eax, ecx
sar	eax, 1
mov	esi, eax
jmp	short loc_408754

loc_408751:
or	esi, 0FFFFFFFFh

loc_408754:
cmp	esi, ebx
jge	short loc_408794

loc_408758:		; Size
push	28h
call	sub_4284B1
pop	ecx
mov	ecx, eax
mov	[ebp+arg_0], ecx
cmp	ecx, ebx
mov	byte ptr [ebp+var_4], 1
jz	short loc_408776
call	sub_408A5B
mov	esi, eax
jmp	short loc_408778

loc_408776:
xor	esi, esi

loc_408778:
cmp	esi, ebx
mov	byte ptr [ebp+var_4], bl
jz	short loc_408785
mov	eax, [esi]
push	esi
call	dword ptr [eax+4]

loc_408785:
mov	eax, [ebp+arg_4]
mov	[esi+24h], bl
mov	[eax], esi
xor	esi, esi
jmp	loc_408859

loc_408794:
lea	eax, [ebp+var_24]
push	esi
push	eax
lea	ecx, [ebp+var_18]
call	sub_403228
inc	esi
lea	eax, [ebp+Memory]
push	esi
push	eax
lea	ecx, [ebp+var_18]
mov	byte ptr [ebp+var_4], 2
call	sub_403228
push	eax
lea	ecx, [ebp+var_18]
mov	byte ptr [ebp+var_4], 3
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 2
call	sub_4284D8
mov	eax, [ebp+var_20]
pop	ecx
cmp	eax, ebx
jz	loc_408866
mov	ecx, [ebp+var_24]
lea	eax, [ecx+eax*2-2]

loc_4087DF:
cmp	[eax], di
jz	short loc_4087EC
cmp	eax, ecx
jz	short loc_4087F2
dec	eax
dec	eax
jmp	short loc_4087DF

loc_4087EC:
sub	eax, ecx
sar	eax, 1
jmp	short loc_4087F5

loc_4087F2:
or	eax, 0FFFFFFFFh

loc_4087F5:
cmp	eax, 1
jnz	short loc_408866
mov	eax, [ebp+var_18]
cmp	[eax], di
jz	short loc_408809
mov	esi, 80004005h
jmp	short loc_408850

loc_408809:		; Size
push	78h
call	sub_4284B1
pop	ecx
mov	ecx, eax
mov	[ebp+arg_0], ecx
cmp	ecx, ebx
mov	byte ptr [ebp+var_4], 4
jz	short loc_408827
call	sub_4088D8
mov	esi, eax
jmp	short loc_408829

loc_408827:
xor	esi, esi

loc_408829:
cmp	esi, ebx
mov	byte ptr [ebp+var_4], 2
mov	[ebp+arg_0], esi
jz	short loc_40883A
mov	eax, [esi]
push	esi
call	dword ptr [eax+4]

loc_40883A:
lea	eax, [ebp+var_18]
mov	ecx, esi
push	eax
mov	byte ptr [ebp+var_4], 5
call	sub_42725A

loc_408849:
mov	eax, [ebp+arg_4]
mov	[eax], esi
xor	esi, esi

loc_408850:		; Memory
push	[ebp+var_24]
call	sub_4284D8
pop	ecx

loc_408859:		; Memory
push	[ebp+var_18]
call	sub_4284D8
pop	ecx
mov	eax, esi
jmp	short loc_4088C7

loc_408866:		; Size
push	0C8h
call	sub_4284B1
pop	ecx
mov	ecx, eax
mov	[ebp+arg_0], ecx
cmp	ecx, ebx
mov	byte ptr [ebp+var_4], 6
jz	short loc_408887
call	sub_4081FF
mov	esi, eax
jmp	short loc_408889

loc_408887:
xor	esi, esi

loc_408889:
cmp	esi, ebx
mov	byte ptr [ebp+var_4], 2
mov	[ebp+arg_0], esi
jz	short loc_40889A
mov	eax, [esi]
push	esi
call	dword ptr [eax+4]

loc_40889A:
lea	eax, [ebp+var_18]
push	ebx
push	eax
mov	ecx, esi
mov	byte ptr [ebp+var_4], 7
call	sub_407611
mov	edi, eax
cmp	edi, ebx
jz	short loc_408849
cmp	esi, ebx
mov	byte ptr [ebp+var_4], 2
jz	short loc_4088BE
mov	eax, [esi]
push	esi
call	dword ptr [eax+8]

loc_4088BE:
mov	esi, edi
jmp	short loc_408850

loc_4088C2:
mov	eax, 80004005h

loc_4088C7:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	8
sub_40869F endp



; Attributes: bp-based frame

sub_4088D8 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4431A1
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	edi
xor	edi, edi
mov	dword ptr [esi], offset	off_44BC00
mov	dword ptr [esi+4], offset off_44BB94
lea	ecx, [esi+0Ch]
mov	[ebp+var_10], esi
mov	[esi+8], edi
call	sub_40897C
mov	[esi+50h], edi
mov	[ebp+var_4], edi
mov	[esi+58h], edi
mov	[esi+5Ch], edi
mov	[esi+60h], edi
mov	dword ptr [esi+64h], 4
mov	dword ptr [esi+54h], offset off_44BC70
mov	[esi+68h], edi
lea	ecx, [esi+6Ch]
push	3
mov	byte ptr [ebp+var_4], 2
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
mov	ecx, [ebp+var_C]
mov	dword ptr [esi], offset	off_44BC40
mov	dword ptr [esi+4], offset off_44BC30
mov	eax, esi
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_4088D8 endp




; int __stdcall	sub_408957(void	*Memory)
sub_408957 proc	near

Memory=	dword ptr  4

push	esi
mov	esi, [esp+4+Memory]
dec	dword ptr [esi+8]
mov	eax, [esi+8]
jnz	short loc_408978
test	esi, esi
jz	short loc_408976
mov	ecx, esi
call	sub_4089F3
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_408976:
xor	eax, eax

loc_408978:
pop	esi
retn	4
sub_408957 endp



; Attributes: bp-based frame

sub_40897C proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4431CD
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	edi
xor	edi, edi
lea	ecx, [esi+14h]
push	3
mov	[ebp+var_10], esi
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
lea	ecx, [esi+20h]
push	3
mov	[ebp+var_4], edi
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
lea	ecx, [esi+2Ch]
push	3
mov	byte ptr [ebp+var_4], 1
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
lea	ecx, [esi+38h]
push	3
mov	byte ptr [ebp+var_4], 2
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
mov	ecx, [ebp+var_C]
mov	eax, esi
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40897C endp



; Attributes: bp-based frame

sub_4089F3 proc	near

var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4431F6
call	__EH_prolog
push	ecx
push	ecx
push	esi
mov	esi, ecx
push	edi
mov	[ebp+var_10], esi
push	dword ptr [esi+6Ch] ; Memory
mov	[ebp+var_4], 1
call	sub_4284D8
mov	eax, [esi+68h]
pop	ecx
test	eax, eax
jz	short loc_408A23
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_408A23:
lea	edi, [esi+54h]
mov	[ebp+var_14], edi
mov	dword ptr [edi], offset	off_44BC70
mov	ecx, edi
mov	byte ptr [ebp+var_4], 2
call	sub_428327
and	byte ptr [ebp+var_4], 0
mov	ecx, edi
call	sub_4282FE
lea	ecx, [esi+0Ch]
call	sub_42EEC8
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_4089F3 endp




sub_408A5B proc	near
mov	eax, ecx
xor	ecx, ecx
mov	dword ptr [eax+4], offset off_44BBC4
mov	dword ptr [eax+8], offset off_44BB94
mov	[eax+0Ch], ecx
mov	[eax+14h], ecx
mov	[eax+18h], ecx
mov	[eax+1Ch], ecx
mov	dword ptr [eax+20h], 4
mov	dword ptr [eax+10h], offset off_44BCE4
mov	dword ptr [eax], offset	off_44BCB4
mov	dword ptr [eax+4], offset off_44BC88
mov	dword ptr [eax+8], offset off_44BC78
retn
sub_408A5B endp



; Attributes: bp-based frame

; int __stdcall	sub_408A9C(int,	void *Buf1, int)
sub_408A9C proc	near

arg_0= dword ptr  8
Buf1= dword ptr	 0Ch
arg_8= dword ptr  10h

push	ebp
mov	ebp, esp
push	10h		; Size
push	offset unk_44CCB8 ; Buf2
push	[ebp+Buf1]	; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_408ABF

loc_408AB5:
mov	eax, [ebp+arg_0]
mov	ecx, eax
lea	edx, [eax+8]
jmp	short loc_408AF3

loc_408ABF:		; Size
push	10h
push	offset unk_44B690 ; Buf2
push	[ebp+Buf1]	; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jz	short loc_408AB5
push	10h		; Size
push	offset unk_44B6A0 ; Buf2
push	[ebp+Buf1]	; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_408B08
mov	eax, [ebp+arg_0]
mov	ecx, eax
lea	edx, [eax+4]

loc_408AF3:
neg	ecx
sbb	ecx, ecx
push	eax
and	ecx, edx
mov	edx, [ebp+arg_8]
mov	[edx], ecx
mov	ecx, [eax]
call	dword ptr [ecx+4]
xor	eax, eax
jmp	short loc_408B0D

loc_408B08:
mov	eax, 80004002h

loc_408B0D:
pop	ebp
retn	0Ch
sub_408A9C endp




sub_408B11 proc	near

arg_0= dword ptr  4

mov	eax, [esp+arg_0]
inc	dword ptr [eax+0Ch]
mov	eax, [eax+0Ch]
retn	4
sub_408B11 endp




; int __stdcall	sub_408B1E(void	*Memory)
sub_408B1E proc	near

Memory=	dword ptr  4

push	esi
mov	esi, [esp+4+Memory]
dec	dword ptr [esi+0Ch]
mov	eax, [esi+0Ch]
jnz	short loc_408B3F
test	esi, esi
jz	short loc_408B3D
mov	ecx, esi
call	sub_408B43
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_408B3D:
xor	eax, eax

loc_408B3F:
pop	esi
retn	4
sub_408B1E endp



; Attributes: bp-based frame

sub_408B43 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443208
call	__EH_prolog
push	ecx
push	esi
lea	esi, [ecx+10h]
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44BCE4
and	[ebp+var_4], 0
mov	ecx, esi
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_408B43 endp




sub_408B7E proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

mov	eax, [esp+arg_4]
mov	ecx, [esp+arg_0]
mov	dword ptr [eax], 9
cmp	byte ptr [ecx+0C0h], 0
jnz	short loc_408B9B
mov	dword ptr [eax], 8

loc_408B9B:
xor	eax, eax
retn	8
sub_408B7E endp




sub_408BA0 proc	near

arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= dword ptr  10h
arg_10=	dword ptr  14h

mov	eax, [esp+arg_4]
cmp	eax, 9
jb	short loc_408BB0
mov	eax, 80070057h
jmp	short locret_408BDB

loc_408BB0:
mov	edx, [esp+arg_C]
lea	eax, [eax+eax*2]
mov	ecx, dword_45B394[eax*4]
lea	eax, ds:45B390h[eax*4]
mov	[edx], ecx
mov	ecx, [esp+arg_10]
mov	ax, [eax+8]
mov	[ecx], ax
mov	eax, [esp+arg_8]
and	dword ptr [eax], 0
xor	eax, eax

locret_408BDB:
retn	14h
sub_408BA0 endp



; Attributes: bp-based frame

sub_408BDE proc	near

pvarg= VARIANTARG ptr -20h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_44321C
call	__EH_prolog
sub	esp, 14h
push	ebx
push	esi
push	edi
xor	ebx, ebx
mov	[ebp+var_10], esp
mov	[ebp+var_4], ebx
mov	word ptr [ebp+pvarg.anonymous_0], bx
mov	word ptr [ebp+pvarg.anonymous_0+2], bx
cmp	[ebp+arg_4], 3
mov	byte ptr [ebp+var_4], 1
jz	short loc_408C1D
cmp	[ebp+arg_4], 14h
jnz	short loc_408C2B
push	offset aFsfolder ; "FSFolder"
lea	ecx, [ebp+pvarg]
call	sub_42CC8C
jmp	short loc_408C2B

loc_408C1D:
mov	eax, [ebp+arg_0]
lea	ecx, [ebp+pvarg]
push	dword ptr [eax+20h] ; psz
call	sub_42CC9E

loc_408C2B:		; pvarg
push	[ebp+arg_8]
lea	ecx, [ebp+pvarg] ; Src
call	sub_42CE85
lea	ecx, [ebp+pvarg] ; pvarg
mov	byte ptr [ebp+var_4], bl
call	sub_42CDE1
xor	eax, eax
jmp	short loc_408C50

loc_408C45:
mov	eax, offset loc_408C4B
retn

loc_408C4B:
mov	eax, 8007000Eh

loc_408C50:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
pop	ebx
leave
retn	0Ch
sub_408BDE endp




sub_408C61 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	ebx
push	esi
mov	esi, [esp+8+arg_0]
xor	bl, bl

loc_408C69:
mov	eax, [esi+0C0h]
cmp	eax, 0FFFFFFFFh
jz	short loc_408C95
test	eax, eax
jz	short loc_408C95
push	0		; dwMilliseconds
push	eax		; hHandle
call	ds:WaitForSingleObject
test	eax, eax
jnz	short loc_408C9E
push	dword ptr [esi+0C0h] ; hChangeHandle
call	ds:FindNextChangeNotification
mov	bl, 1
jmp	short loc_408C69

loc_408C95:
mov	eax, [esp+8+arg_4]
and	dword ptr [eax], 0
jmp	short loc_408CAB

loc_408C9E:
mov	ecx, [esp+8+arg_4]
xor	eax, eax
test	bl, bl
setnz	al
mov	[ecx], eax

loc_408CAB:
pop	esi
xor	eax, eax
pop	ebx
retn	8
sub_408C61 endp



; Attributes: bp-based frame

sub_408CB2 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_44323A
call	__EH_prolog
push	ecx
push	esi
push	0C8h		; Size
call	sub_4284B1
pop	ecx
mov	ecx, eax
mov	[ebp+var_10], ecx
and	[ebp+var_4], 0
test	ecx, ecx
jz	short loc_408CDF
call	sub_4081FF
mov	esi, eax
jmp	short loc_408CE1

loc_408CDF:
xor	esi, esi

loc_408CE1:
or	[ebp+var_4], 0FFFFFFFFh
mov	[ebp+var_10], esi
test	esi, esi
jz	short loc_408CF2
mov	eax, [esi]
push	esi
call	dword ptr [eax+4]

loc_408CF2:
mov	eax, [ebp+arg_0]
push	0
add	eax, 10h
mov	ecx, esi
push	eax
mov	[ebp+var_4], 1
call	sub_407611
mov	eax, [ebp+arg_4]
mov	ecx, [ebp+var_C]
mov	[eax], esi
xor	eax, eax
pop	esi
mov	large fs:0, ecx
leave
retn	8
sub_408CB2 endp



; Attributes: bp-based frame

sub_408D1F proc	near

var_40=	dword ptr -40h
Memory=	dword ptr -34h
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h
arg_10=	dword ptr  18h
arg_14=	dword ptr  1Ch

mov	eax, offset loc_443254
call	__EH_prolog
sub	esp, 34h
push	ebx
mov	ebx, [ebp+arg_8]
push	esi
mov	esi, [ebp+arg_10]
xor	edx, edx
push	edi
mov	edi, [ebp+arg_C]
cmp	[ebp+arg_4], edx
mov	[esi], edx
mov	[esi+4], edx
mov	[ebx], edx
mov	[ebx+4], edx
mov	[edi], edx
mov	[ebp+var_10], ecx
mov	[edi+4], edx
mov	[ebp+arg_8], edx
jbe	loc_408E34
mov	eax, [ebp+arg_0]
mov	[ebp+arg_10], eax
jmp	short loc_408D63

loc_408D60:
mov	ecx, [ebp+var_10]

loc_408D63:
mov	eax, [ebp+arg_10]
mov	eax, [eax]
cmp	eax, [ecx+98h]
jge	loc_408E47
mov	ecx, [ecx+9Ch]
mov	eax, [ecx+eax*4]
mov	ecx, [eax+20h]
shr	ecx, 4
test	cl, 1
jz	loc_408E11
mov	ecx, [ebp+var_10]
push	eax
lea	eax, [ebp+var_40]
push	eax
call	sub_4085D1
and	[ebp+var_4], 0
push	eax
mov	eax, [ebp+var_10]
lea	ecx, [ebp+Memory]
lea	edx, [eax+20h]
call	sub_40356A
push	[ebp+arg_14]
lea	ecx, [ebp+var_28]
lea	edx, [ebp+var_18]
mov	byte ptr [ebp+var_4], 1
push	ecx
lea	ecx, [ebp+var_20]
push	ecx
mov	ecx, eax
call	sub_40770E
push	[ebp+Memory]	; Memory
mov	[ebp+arg_C], eax
call	sub_4284D8
push	[ebp+var_40]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
mov	eax, [ebp+arg_C]
pop	ecx
test	eax, eax
pop	ecx
jnz	short loc_408E36
mov	eax, [ebp+var_18]
mov	ecx, [ebp+var_14]
add	[ebx], eax
mov	eax, [ebp+var_20]
adc	[ebx+4], ecx
add	dword ptr [ebx], 1
mov	ecx, [ebp+var_1C]
adc	dword ptr [ebx+4], 0
add	[edi], eax
mov	eax, [ebp+var_28]
adc	[edi+4], ecx
add	[esi], eax
mov	ecx, [ebp+var_24]
adc	[esi+4], ecx
xor	edx, edx
jmp	short loc_408E21

loc_408E11:
add	dword ptr [edi], 1
adc	[edi+4], edx
mov	ecx, [eax]
mov	eax, [eax+4]
add	[esi], ecx
adc	[esi+4], eax

loc_408E21:
inc	[ebp+arg_8]
add	[ebp+arg_10], 4
mov	eax, [ebp+arg_8]
cmp	eax, [ebp+arg_4]
jb	loc_408D60

loc_408E34:
xor	eax, eax

loc_408E36:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	18h

loc_408E47:
mov	eax, 80070057h
jmp	short loc_408E36
sub_408D1F endp



; Attributes: bp-based frame

sub_408E4E proc	near

var_34=	dword ptr -34h
Memory=	dword ptr -28h
var_1C=	byte ptr -1Ch
var_14=	byte ptr -14h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_443270
call	__EH_prolog
sub	esp, 28h
push	esi
mov	esi, ecx
mov	ecx, [ebp+arg_0]
mov	eax, [esi+9Ch]
mov	eax, [eax+ecx*4]
mov	ecx, [eax+20h]
shr	ecx, 4
test	cl, 1
jz	short loc_408EC1
push	eax
lea	eax, [ebp+var_34]
push	eax
mov	ecx, esi
call	sub_4085D1
and	[ebp+var_4], 0
push	eax
lea	edx, [esi+20h]
lea	ecx, [ebp+Memory]
call	sub_40356A
push	[ebp+arg_8]
lea	ecx, [ebp+var_14]
lea	edx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 1
push	[ebp+arg_4]
push	ecx
mov	ecx, eax
call	sub_40770E
push	[ebp+Memory]	; Memory
mov	esi, eax
call	sub_4284D8
push	[ebp+var_34]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, esi
pop	ecx
jmp	short loc_408ED0

loc_408EC1:
mov	ecx, [ebp+arg_4]
mov	edx, [eax]
mov	[ecx], edx
mov	eax, [eax+4]
mov	[ecx+4], eax
xor	eax, eax

loc_408ED0:
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	0Ch
sub_408E4E endp



; Attributes: bp-based frame

sub_408EDF proc	near

pvarg= VARIANTARG ptr -24h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h

mov	eax, offset loc_443284
call	__EH_prolog
sub	esp, 18h
xor	ecx, ecx
push	esi
mov	word ptr [ebp+pvarg.anonymous_0], cx
mov	word ptr [ebp+pvarg.anonymous_0+2], cx
mov	eax, [ebp+arg_0]
mov	[ebp+var_4], ecx
mov	edx, [eax+8Ch]
cmp	[ebp+arg_4], edx
jb	short loc_408F0F
mov	esi, 80070057h
jmp	short loc_408F42

loc_408F0F:
push	[ebp+arg_C]
mov	[ebp+var_14], ecx
mov	[ebp+var_10], ecx
lea	ecx, [ebp+var_14]
push	ecx
lea	ecx, [eax-0Ch]
push	[ebp+arg_4]
call	sub_408E4E
push	[ebp+var_10]
lea	ecx, [ebp+pvarg]
mov	esi, eax
push	[ebp+var_14]
call	sub_42CD92
push	[ebp+arg_8]	; pvarg
lea	ecx, [ebp+pvarg] ; Src
call	sub_42CE85

loc_408F42:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+pvarg] ; pvarg
call	sub_42CDE1
mov	ecx, [ebp+var_C]
mov	eax, esi
pop	esi
mov	large fs:0, ecx
leave
retn	10h
sub_408EDF endp



; Attributes: bp-based frame

sub_408F5F proc	near

Memory=	dword ptr -24h
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_4432A0
call	__EH_prolog
sub	esp, 18h
push	esi
mov	esi, ecx
push	[ebp+arg_0]
lea	ecx, [ebp+var_18]
call	sub_403091
and	[ebp+var_4], 0
lea	eax, [ebp+var_18]
push	eax
lea	edx, [esi+20h]
lea	ecx, [ebp+Memory]
call	sub_40356A
mov	ecx, [ebp+arg_4]
push	eax
mov	byte ptr [ebp+var_4], 1
call	sub_40312C
push	[ebp+Memory]	; Memory
and	byte ptr [ebp+var_4], 0
call	sub_4284D8
mov	eax, [ebp+var_14]
pop	ecx
cmp	eax, 1
pop	esi
jl	short loc_408FC5
mov	ecx, [ebp+var_18]
cmp	word ptr [ecx],	5Ch
jnz	short loc_408FCA
mov	ecx, [ebp+arg_4]
lea	eax, [ebp+var_18]
push	eax
call	sub_40312C

loc_408FC5:
push	[ebp+var_18]
jmp	short loc_408FE6

loc_408FCA:
cmp	eax, 2
jl	short loc_408FE5
cmp	word ptr [ecx+2], 3Ah
jnz	short loc_408FE5
mov	ecx, [ebp+arg_4]
lea	eax, [ebp+var_18]
push	eax
call	sub_40312C
mov	ecx, [ebp+var_18]

loc_408FE5:		; Memory
push	ecx

loc_408FE6:
call	sub_4284D8
pop	ecx
xor	eax, eax
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn	8
sub_408F5F endp



; Attributes: bp-based frame

sub_408FFC proc	near

Memory=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_4432B4
call	__EH_prolog
sub	esp, 0Ch
and	[ebp+Memory], 0
and	[ebp+var_14], 0
and	[ebp+var_10], 0
push	esi
push	3
lea	ecx, [ebp+Memory]
call	sub_403396
and	[ebp+var_4], 0
lea	eax, [ebp+Memory]
push	eax
mov	eax, [ebp+arg_0]
push	[ebp+arg_4]
lea	ecx, [eax-8]
call	sub_408F5F
test	eax, eax
jz	short loc_40903E

loc_40903A:
mov	esi, eax
jmp	short loc_40906B

loc_40903E:
mov	ecx, [ebp+Memory]
call	sub_42A1B3
test	al, al
jnz	short loc_409069
mov	esi, ds:GetLastError
call	esi ; GetLastError
cmp	eax, 0B7h
jz	short loc_409065
mov	ecx, [ebp+Memory]
call	sub_42A264
test	al, al
jnz	short loc_409069

loc_409065:
call	esi ; GetLastError
jmp	short loc_40903A

loc_409069:
xor	esi, esi

loc_40906B:		; Memory
push	[ebp+Memory]
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	0Ch
sub_408FFC endp



; Attributes: bp-based frame

sub_409085 proc	near

var_28=	dword ptr -28h
lpFileName= dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_4432D0
call	__EH_prolog
sub	esp, 1Ch
push	ebx
push	esi
xor	ebx, ebx
push	3
lea	ecx, [ebp+lpFileName]
mov	[ebp+lpFileName], ebx
mov	[ebp+var_14], ebx
mov	[ebp+var_10], ebx
call	sub_403396
lea	eax, [ebp+lpFileName]
mov	[ebp+var_4], ebx
push	eax
mov	eax, [ebp+arg_0]
push	[ebp+arg_4]
lea	ecx, [eax-8]
call	sub_408F5F
cmp	eax, ebx
jz	short loc_4090C6
mov	esi, eax
jmp	short loc_4090F5

loc_4090C6:
or	[ebp+var_28], 0FFFFFFFFh
push	ebx		; char
lea	ecx, [ebp+var_28]
push	[ebp+lpFileName] ; lpFileName
mov	byte ptr [ebp+var_4], 1
call	sub_42C21B
test	al, al
jnz	short loc_4090E8
call	ds:GetLastError
mov	esi, eax
jmp	short loc_4090EA

loc_4090E8:
xor	esi, esi

loc_4090EA:
lea	ecx, [ebp+var_28]
mov	byte ptr [ebp+var_4], bl
call	sub_42BD78

loc_4090F5:		; Memory
push	[ebp+lpFileName]
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	0Ch
sub_409085 endp



; Attributes: bp-based frame

sub_409110 proc	near

var_3C=	dword ptr -3Ch
var_30=	dword ptr -30h
Memory=	dword ptr -24h
var_18=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_4432FC
call	__EH_prolog
sub	esp, 30h
mov	ecx, [ebp+arg_4]
push	ebx
push	esi
mov	esi, [ebp+arg_0]
push	edi
mov	eax, [esi+94h]
mov	edi, [eax+ecx*4]
lea	eax, [ebp+Memory]
push	edi
push	eax
lea	ecx, [esi-8]
call	sub_408518
and	[ebp+var_4], 0
push	eax
lea	edx, [esi+18h]
lea	ecx, [ebp+var_18]
call	sub_40356A
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 2
call	sub_4284D8
pop	ecx
lea	edx, [ebp+var_18]
push	[ebp+arg_8]
lea	ecx, [ebp+var_3C]
call	sub_409948
mov	esi, [eax]
add	edi, 28h
push	edi
lea	edx, [ebp+var_18]
lea	ecx, [ebp+var_30]
mov	byte ptr [ebp+var_4], 3
call	sub_40356A
mov	eax, [eax]
mov	edx, esi
mov	ecx, eax
mov	byte ptr [ebp+var_4], 4
call	sub_42A0AB
push	[ebp+var_30]	; Memory
mov	bl, al
neg	bl
sbb	bl, bl
inc	bl
call	sub_4284D8
push	[ebp+var_3C]	; Memory
call	sub_4284D8
pop	ecx
test	bl, bl
pop	ecx
jz	short loc_4091B3
call	ds:GetLastError
mov	esi, eax
jmp	short loc_4091B5

loc_4091B3:
xor	esi, esi

loc_4091B5:		; Memory
push	[ebp+var_18]
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	10h
sub_409110 endp



; Attributes: bp-based frame

sub_4091D1 proc	near

Memory=	dword ptr -30h
var_24=	dword ptr -24h
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h

mov	eax, offset loc_443318
call	__EH_prolog
sub	esp, 24h
mov	eax, [ebp+arg_C]
push	ebx
push	esi
xor	esi, esi
mov	ecx, [eax]
push	edi
push	esi
push	[ebp+arg_8]
push	eax
call	dword ptr [ecx+0Ch]
cmp	eax, esi
jnz	loc_409299
cmp	[ebp+arg_8], esi
mov	[ebp+var_10], esi
jbe	loc_409297
mov	edi, [ebp+arg_0]
mov	ebx, [ebp+arg_4]

loc_40920A:
mov	eax, [ebx]
mov	ecx, [edi+94h]
mov	esi, [ecx+eax*4]
lea	eax, [ebp+Memory]
push	esi
push	eax
lea	ecx, [edi-8]
call	sub_4085D1
and	[ebp+var_4], 0
push	eax
lea	edx, [edi+18h]
lea	ecx, [ebp+var_24]
call	sub_40356A
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 2
call	sub_4284D8
mov	eax, [esi+20h]
pop	ecx
shr	eax, 4
test	al, 1
jz	short loc_409253
lea	ecx, [ebp+var_24]
call	sub_42A548
jmp	short loc_40925B

loc_409253:
mov	ecx, [ebp+var_24]
call	sub_42A481

loc_40925B:
test	al, al
jz	short loc_4092AA
mov	eax, [ebp+arg_C]
mov	esi, [ebp+var_10]
and	[ebp+var_14], 0
lea	edx, [ebp+var_18]
mov	ecx, [eax]
push	edx
push	eax
mov	[ebp+var_18], esi
call	dword ptr [ecx+10h]
test	eax, eax
jnz	short loc_4092B0
push	[ebp+var_24]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
inc	esi
add	ebx, 4
cmp	esi, [ebp+arg_8]
pop	ecx
mov	[ebp+var_10], esi
jb	loc_40920A

loc_409297:
xor	eax, eax

loc_409299:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	10h

loc_4092AA:
call	ds:GetLastError

loc_4092B0:		; Memory
push	[ebp+var_24]
mov	esi, eax
call	sub_4284D8
pop	ecx
mov	eax, esi
jmp	short loc_409299
sub_4091D1 endp



; Attributes: bp-based frame

sub_4092BF proc	near

var_30=	dword ptr -30h
Memory=	dword ptr -24h
var_20=	dword ptr -20h
var_18=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h

mov	eax, offset loc_443334
call	__EH_prolog
sub	esp, 24h
mov	eax, [ebp+arg_4]
push	ebx
push	esi
mov	esi, [ebp+arg_0]
mov	ecx, [esi+90h]
cmp	eax, ecx
jb	short loc_4092E8
mov	eax, 80070057h
jmp	loc_4093EC

loc_4092E8:
mov	ecx, [esi+94h]
xor	ebx, ebx
mov	eax, [ecx+eax*4]
mov	ecx, [eax+48h]
cmp	[ecx+48h], ebx
jnz	short loc_409301
cmp	[ebp+arg_8], 1Ch
jz	short loc_40930B

loc_409301:
mov	eax, 80004001h
jmp	loc_4093EC

loc_40930B:
add	eax, 28h
push	edi
push	eax
lea	ecx, [ebp+var_18]
call	sub_4030F2
lea	ecx, [ebp+var_18]
mov	[ebp+var_4], ebx
call	sub_406F3F
lea	ecx, [ebp+var_18]
call	sub_406F04
mov	edi, [ebp+arg_C]
mov	ax, [edi]
cmp	ax, bx
jnz	short loc_40934A
lea	eax, [ebp+var_18]
lea	ecx, [esi+0A4h]
push	eax
call	sub_420105
jmp	loc_4093D1

loc_40934A:
cmp	ax, 8
jnz	loc_4093DB
lea	ecx, [ebp+var_30]
call	sub_4093FC
lea	eax, [ebp+var_18]
lea	ecx, [ebp+var_30]
push	eax
mov	byte ptr [ebp+var_4], 1
call	sub_40312C
lea	ecx, [ebp+var_30]
call	sub_406F3F
lea	ecx, [ebp+var_30]
call	sub_406F04
push	dword ptr [edi+8]
lea	ecx, [ebp+Memory]
call	sub_404722
lea	ecx, [ebp+Memory]
call	sub_406F3F
lea	ecx, [ebp+Memory]
call	sub_406F04
cmp	[ebp+var_20], ebx
jnz	short loc_4093AD
lea	eax, [ebp+var_18]
lea	ecx, [esi+0A4h]
push	eax
call	sub_420105
jmp	short loc_4093BC

loc_4093AD:
lea	eax, [ebp+var_30]
lea	ecx, [esi+0A4h]
push	eax
call	sub_4200C0

loc_4093BC:		; Memory
push	[ebp+Memory]
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
push	[ebp+var_30]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx

loc_4093D1:
lea	ecx, [esi-8]
call	sub_407CEB
jmp	short loc_4093E0

loc_4093DB:
mov	ebx, 80070057h

loc_4093E0:		; Memory
push	[ebp+var_18]
call	sub_4284D8
pop	ecx
mov	eax, ebx
pop	edi

loc_4093EC:
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	14h
sub_4092BF endp



; Attributes: bp-based frame

sub_4093FC proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443348
call	__EH_prolog
push	ecx
push	esi
push	edi
mov	esi, ecx
xor	edi, edi
push	3
mov	[ebp+var_10], esi
mov	[esi], edi
mov	[esi+4], edi
mov	[esi+8], edi
call	sub_403396
lea	ecx, [esi+0Ch]
push	3
mov	[ebp+var_4], edi
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
mov	ecx, [ebp+var_C]
mov	eax, esi
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_4093FC endp




sub_409444 proc	near
push	esi
mov	esi, ecx
push	dword ptr [esi+0Ch] ; Memory
call	sub_4284D8
push	dword ptr [esi]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx
pop	esi
retn
sub_409444 endp



; Attributes: bp-based frame

sub_40945A proc	near

var_24=	dword ptr -24h
Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_443364
call	__EH_prolog
sub	esp, 18h
mov	eax, [ebp+arg_4]
push	ebx
push	esi
mov	esi, [ebp+arg_0]
mov	ecx, [esi+84h]
cmp	eax, ecx
jb	short loc_409480
mov	eax, 80070057h
jmp	short loc_4094EF

loc_409480:
mov	ecx, [esi+88h]
mov	ebx, [ebp+arg_8]
push	edi
mov	edi, [ecx+eax*4]
and	dword ptr [ebx], 0
lea	eax, [ebp+var_24]
push	edi
push	eax
lea	ecx, [esi-14h]
call	sub_4085D1
and	[ebp+var_4], 0
push	eax
lea	edx, [esi+0Ch]
lea	ecx, [ebp+Memory]
call	sub_40356A
mov	eax, [eax]
mov	edx, [edi+20h]
lea	ecx, [ebp+arg_4]
mov	byte ptr [ebp+var_4], 1
push	ecx
mov	ecx, eax
call	sub_41FA10
push	[ebp+Memory]	; Memory
test	eax, eax
setnz	byte ptr [ebp+arg_0+3]
call	sub_4284D8
push	[ebp+var_24]	; Memory
call	sub_4284D8
cmp	byte ptr [ebp+arg_0+3],	0
pop	ecx
pop	ecx
pop	edi
jz	short loc_4094E9
mov	eax, [ebp+arg_4]
mov	[ebx], eax
xor	eax, eax
jmp	short loc_4094EF

loc_4094E9:
call	ds:GetLastError

loc_4094EF:
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	0Ch
sub_40945A endp




sub_4094FF proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

cmp	[esp+arg_4], 0
mov	ecx, [esp+arg_0]
setnz	al
mov	[ecx+0A8h], al
xor	eax, eax
retn	8
sub_4094FF endp




sub_409516 proc	near

arg_0= word ptr	 4

push	esi
mov	esi, ecx
push	1
and	dword ptr [esi], 0
and	dword ptr [esi+4], 0
and	dword ptr [esi+8], 0
call	sub_403396
mov	eax, [esi]
mov	cx, [esp+4+arg_0]
mov	[eax], cx
mov	eax, [esi]
and	word ptr [eax+2], 0
mov	dword ptr [esi+4], 1
mov	eax, esi
pop	esi
retn	4
sub_409516 endp



; Attributes: bp-based frame

sub_409549 proc	near

Memory=	dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
push	ecx
push	ebx
mov	ebx, ecx
mov	ecx, [ebp+arg_4]
push	edi
mov	edi, [ebp+arg_0]
mov	eax, [ebx+8]
add	ecx, edi
cmp	ecx, eax
jle	short loc_409565
sub	eax, edi
mov	[ebp+arg_4], eax

loc_409565:
mov	eax, [ebp+arg_4]
test	eax, eax
jle	short loc_409599
push	esi
mov	esi, edi
shl	esi, 2
mov	[ebp+arg_0], eax

loc_409575:
mov	eax, [ebx+0Ch]
mov	ecx, [eax+esi]
test	ecx, ecx
mov	[ebp+Memory], ecx
jz	short loc_409590
call	sub_409887
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_409590:
add	esi, 4
dec	[ebp+arg_0]
jnz	short loc_409575
pop	esi

loc_409599:
push	[ebp+arg_4]
mov	ecx, ebx
push	edi
call	sub_42847F
pop	edi
pop	ebx
leave
retn	8
sub_409549 endp




sub_4095AA proc	near
mov	eax, ecx
xor	ecx, ecx
mov	[eax+4], ecx
mov	[eax+8], ecx
mov	[eax+0Ch], ecx
mov	dword ptr [eax+10h], 4
mov	dword ptr [eax], offset	off_44BAC0
retn
sub_4095AA endp



; Attributes: bp-based frame

sub_4095C5 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset unknown_libname_14 ; Microsoft VisualC 2-11/net runtime
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	60h		; Size
call	sub_4284B1
pop	ecx
mov	ecx, eax
mov	[ebp+var_10], ecx
xor	eax, eax
cmp	ecx, eax
mov	[ebp+var_4], eax
jz	short loc_4095F1
push	[ebp+arg_0]
call	sub_409802

loc_4095F1:
or	[ebp+var_4], 0FFFFFFFFh
push	eax
mov	ecx, esi
call	sub_429907
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_4095C5 endp



; Attributes: bp-based frame

sub_40960C proc	near

Memory=	dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
push	ecx
push	ebx
mov	ebx, ecx
mov	ecx, [ebp+arg_4]
push	edi
mov	edi, [ebp+arg_0]
mov	eax, [ebx+8]
add	ecx, edi
cmp	ecx, eax
jle	short loc_409628
sub	eax, edi
mov	[ebp+arg_4], eax

loc_409628:
mov	eax, [ebp+arg_4]
test	eax, eax
jle	short loc_40965C
push	esi
mov	esi, edi
shl	esi, 2
mov	[ebp+arg_0], eax

loc_409638:
mov	eax, [ebx+0Ch]
mov	ecx, [eax+esi]
test	ecx, ecx
mov	[ebp+Memory], ecx
jz	short loc_409653
call	sub_407A54
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_409653:
add	esi, 4
dec	[ebp+arg_0]
jnz	short loc_409638
pop	esi

loc_40965C:
push	[ebp+arg_4]
mov	ecx, ebx
push	edi
call	sub_42847F
pop	edi
pop	ebx
leave
retn	8
sub_40960C endp



; Attributes: bp-based frame

sub_40966D proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_44338C
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44BC70
and	[ebp+var_4], 0
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40966D endp



; Attributes: bp-based frame

sub_4096A5 proc	near

Memory=	dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
push	ecx
push	ebx
mov	ebx, ecx
mov	ecx, [ebp+arg_4]
push	edi
mov	edi, [ebp+arg_0]
mov	eax, [ebx+8]
add	ecx, edi
cmp	ecx, eax
jle	short loc_4096C1
sub	eax, edi
mov	[ebp+arg_4], eax

loc_4096C1:
mov	eax, [ebp+arg_4]
test	eax, eax
jle	short loc_4096F5
push	esi
mov	esi, edi
shl	esi, 2
mov	[ebp+arg_0], eax

loc_4096D1:
mov	eax, [ebx+0Ch]
mov	ecx, [eax+esi]
test	ecx, ecx
mov	[ebp+Memory], ecx
jz	short loc_4096EC
call	sub_4098AE
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_4096EC:
add	esi, 4
dec	[ebp+arg_0]
jnz	short loc_4096D1
pop	esi

loc_4096F5:
push	[ebp+arg_4]
mov	ecx, ebx
push	edi
call	sub_42847F
pop	edi
pop	ebx
leave
retn	8
sub_4096A5 endp




; int __thiscall sub_409706(void *Memory, char)
sub_409706 proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_409722
test	[esp+4+arg_0], 1
jz	short loc_40971C
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_40971C:
mov	eax, esi
pop	esi
retn	4
sub_409706 endp



; Attributes: bp-based frame

sub_409722 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4433A0
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44BCE4
and	[ebp+var_4], 0
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_409722 endp




; int __thiscall sub_40975A(void *Memory, char)
sub_40975A proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_409776
test	[esp+4+arg_0], 1
jz	short loc_409770
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_409770:
mov	eax, esi
pop	esi
retn	4
sub_40975A endp



; Attributes: bp-based frame

sub_409776 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4433B4
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44BB74
and	[ebp+var_4], 0
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_409776 endp




; int __thiscall sub_4097AE(void *Memory, char)
sub_4097AE proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_4097CA
test	[esp+4+arg_0], 1
jz	short loc_4097C4
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_4097C4:
mov	eax, esi
pop	esi
retn	4
sub_4097AE endp



; Attributes: bp-based frame

sub_4097CA proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4433C8
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44BAC0
and	[ebp+var_4], 0
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_4097CA endp



; Attributes: bp-based frame

sub_409802 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_4433DC
call	__EH_prolog
push	ecx
mov	eax, [ebp+arg_0]
push	ebx
push	esi
push	edi
mov	ebx, ecx
push	0Ah
pop	ecx
mov	esi, eax
mov	edi, ebx
add	eax, 28h
rep movsd
push	eax
lea	ecx, [ebx+28h]
mov	[ebp+var_10], ebx
call	sub_4030F2
mov	eax, [ebp+arg_0]
mov	cl, [eax+38h]
mov	[ebx+38h], cl
mov	ecx, [eax+40h]
mov	[ebx+40h], ecx
mov	ecx, [eax+44h]
mov	[ebx+44h], ecx
mov	ecx, [eax+48h]
and	[ebp+var_4], 0
add	eax, 4Ch
mov	[ebx+48h], ecx
push	eax
lea	ecx, [ebx+4Ch]
call	sub_4098C3
mov	ecx, [ebp+var_C]
pop	edi
mov	eax, ebx
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_409802 endp




; int __thiscall sub_40986B(void *Memory, char)
sub_40986B proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_40966D
test	[esp+4+arg_0], 1
jz	short loc_409881
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_409881:
mov	eax, esi
pop	esi
retn	4
sub_40986B endp




sub_409887 proc	near
push	esi
mov	esi, ecx
push	dword ptr [esi+44h] ; Memory
call	sub_4284D8
push	dword ptr [esi+38h] ; Memory
call	sub_4284D8
push	dword ptr [esi+0Ch] ; Memory
call	sub_4284D8
push	dword ptr [esi]	; Memory
call	sub_4284D8
add	esp, 10h
pop	esi
retn
sub_409887 endp




sub_4098AE proc	near
push	esi
mov	esi, ecx
push	dword ptr [esi+44h] ; Memory
call	sub_4284D8
pop	ecx
mov	ecx, esi
call	sub_42EEC8
pop	esi
retn
sub_4098AE endp



; Attributes: bp-based frame

sub_4098C3 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_4433F0
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
xor	eax, eax
mov	[ebp+var_10], esi
mov	[esi+4], eax
mov	[esi+8], eax
mov	[esi+0Ch], eax
mov	dword ptr [esi+10h], 4
mov	[ebp+var_4], eax
mov	dword ptr [esi], offset	off_44BAC0
call	sub_428327
push	[ebp+arg_0]
mov	ecx, esi
call	sub_40990F
mov	ecx, [ebp+var_C]
mov	eax, esi
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_4098C3 endp




sub_40990F proc	near

arg_0= dword ptr  4

push	ebx
push	ebp
mov	ebp, [esp+8+arg_0]
push	esi
mov	esi, ecx
push	edi
mov	edi, [ebp+8]
mov	eax, [esi+8]
add	eax, edi
push	eax
call	sub_428378
xor	ebx, ebx
test	edi, edi
jle	short loc_40993F

loc_40992D:
mov	eax, [ebp+0Ch]
mov	ecx, esi
push	dword ptr [eax+ebx*4]
call	sub_4095C5
inc	ebx
cmp	ebx, edi
jl	short loc_40992D

loc_40993F:
mov	eax, esi
pop	edi
pop	esi
pop	ebp
pop	ebx
retn	4
sub_40990F endp



; Attributes: bp-based frame

sub_409948 proc	near

Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_443404
call	__EH_prolog
sub	esp, 10h
and	[ebp+var_10], 0
push	esi
mov	esi, ecx
push	edx
lea	ecx, [ebp+Memory]
call	sub_4030F2
push	[ebp+arg_0]
and	[ebp+var_4], 0
lea	ecx, [ebp+Memory]
call	sub_403195
lea	eax, [ebp+Memory]
mov	ecx, esi
push	eax
call	sub_4030F2
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_409948 endp



; Attributes: bp-based frame

sub_409999 proc	near

Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_443418
call	__EH_prolog
sub	esp, 10h
and	[ebp+var_10], 0
push	esi
mov	esi, ecx
push	edx
lea	ecx, [ebp+Memory]
call	sub_4030F2
push	[ebp+arg_0]
and	[ebp+var_4], 0
lea	ecx, [ebp+Memory]
call	sub_40316A
lea	eax, [ebp+Memory]
mov	ecx, esi
push	eax
call	sub_4030F2
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_409999 endp




sub_4099EA proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 4
jmp	sub_408311
sub_4099EA endp




sub_4099F4 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 4
jmp	sub_40841E
sub_4099F4 endp




sub_4099FE proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 4
jmp	sub_40842B
sub_4099FE endp




sub_409A08 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 8
jmp	sub_408311
sub_409A08 endp




sub_409A12 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 8
jmp	sub_40841E
sub_409A12 endp




sub_409A1C proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 8
jmp	sub_40842B
sub_409A1C endp




sub_409A26 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 0Ch
jmp	sub_408311
sub_409A26 endp




sub_409A30 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 0Ch
jmp	sub_40841E
sub_409A30 endp




sub_409A3A proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 0Ch
jmp	sub_40842B
sub_409A3A endp




sub_409A44 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 10h
jmp	sub_408311
sub_409A44 endp




sub_409A4E proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 10h
jmp	sub_40841E
sub_409A4E endp




sub_409A58 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 10h
jmp	sub_40842B
sub_409A58 endp




sub_409A62 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 14h
jmp	sub_408311
sub_409A62 endp




sub_409A6C proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 14h
jmp	sub_40841E
sub_409A6C endp




sub_409A76 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 14h
jmp	sub_40842B
sub_409A76 endp




sub_409A80 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 18h
jmp	sub_408311
sub_409A80 endp




sub_409A8A proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 18h
jmp	sub_40841E
sub_409A8A endp




sub_409A94 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 18h
jmp	sub_40842B
sub_409A94 endp




sub_409A9E proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 4
jmp	sub_408A9C
sub_409A9E endp




sub_409AA8 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 4
jmp	sub_408B11
sub_409AA8 endp




sub_409AB2 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 4
jmp	sub_408B1E
sub_409AB2 endp




sub_409ABC proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 8
jmp	sub_408A9C
sub_409ABC endp




sub_409AC6 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 8
jmp	sub_408B11
sub_409AC6 endp




sub_409AD0 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 8
jmp	sub_408B1E
sub_409AD0 endp




sub_409ADA proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 4
jmp	sub_408957
sub_409ADA endp



; Attributes: bp-based frame

sub_409AE4 proc	near

var_68=	dword ptr -68h
Memory=	dword ptr -5Ch
var_50=	dword ptr -50h
var_44=	dword ptr -44h
var_40=	dword ptr -40h
bstrString= word ptr -38h
var_2C=	byte ptr -2Ch
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h
arg_10=	dword ptr  18h

mov	eax, offset loc_44344C
call	__EH_prolog
sub	esp, 5Ch
push	ebx
push	esi
mov	esi, [ebp+arg_8]
push	edi
test	esi, esi
jnz	short loc_409B02
xor	eax, eax
jmp	loc_409C88

loc_409B02:
mov	edi, [ebp+arg_10]
lea	eax, [ebp+var_1C]
mov	ebx, [ebp+arg_0]
push	edi
push	eax
lea	eax, [ebp+var_24]
push	eax
lea	eax, [ebp+var_2C]
push	eax
push	esi
push	[ebp+arg_4]
lea	ecx, [ebx-8]
call	sub_408D1F
push	[ebp+var_18]
mov	eax, [edi]
push	[ebp+var_1C]
push	edi
call	dword ptr [eax+0Ch]
test	eax, eax
jnz	loc_409C88
push	[ebp+var_20]
mov	eax, [edi]
push	[ebp+var_24]
push	edi
call	dword ptr [eax+20h]
test	eax, eax
jnz	loc_409C88
push	[ebp+arg_C]
lea	ecx, [ebp+var_44]
call	sub_403091
mov	eax, [ebp+var_40]
xor	ecx, ecx
cmp	eax, ecx
mov	[ebp+var_4], ecx
jnz	short loc_409B6A

loc_409B60:
mov	esi, 80070057h
jmp	loc_409C7D

loc_409B6A:
mov	edx, [ebp+var_44]
cmp	word ptr [edx+eax*2-2],	5Ch
setnz	byte ptr [ebp+arg_0+3]
cmp	byte ptr [ebp+arg_0+3],	0
jz	short loc_409B82
cmp	esi, 1
ja	short loc_409B60

loc_409B82:
mov	eax, [edi]
mov	[ebp+var_14], ecx
mov	[ebp+var_10], ecx
lea	ecx, [ebp+var_14]
push	ecx
push	edi
call	dword ptr [eax+10h]
test	eax, eax
jz	short loc_409B9D
mov	esi, eax
jmp	loc_409C7D

loc_409B9D:
and	[ebp+arg_10], 0
test	esi, esi
jbe	loc_409C7B
mov	eax, [ebp+arg_4]
mov	[ebp+arg_4], eax

loc_409BAF:
mov	eax, [ebp+arg_4]
mov	ecx, [ebx+94h]
mov	eax, [eax]
mov	esi, [ecx+eax*4]
lea	eax, [ebp+var_44]
push	eax
lea	ecx, [ebp+bstrString]
call	sub_4030F2
cmp	byte ptr [ebp+arg_0+3],	0
mov	byte ptr [ebp+var_4], 1
jnz	short loc_409BDF
lea	eax, [esi+28h]
lea	ecx, [ebp+bstrString]
push	eax
call	sub_4031F2

loc_409BDF:
lea	eax, [ebp+var_68]
push	esi
push	eax
lea	ecx, [ebx-8]
call	sub_408518
push	eax
lea	edx, [ebx+18h]
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 2
call	sub_40356A
lea	ecx, [esi+28h]
mov	edx, eax
push	ecx
lea	ecx, [ebp+var_50]
mov	byte ptr [ebp+var_4], 3
call	sub_40356A
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_68]	; Memory
mov	byte ptr [ebp+var_4], 5
call	sub_4284D8
mov	eax, [esi+20h]
pop	ecx
shr	eax, 4
test	al, 1
pop	ecx
lea	eax, [ebp+var_14]
push	eax
push	edi
jz	short loc_409C40
lea	edx, [ebp+bstrString]
lea	ecx, [ebp+var_50]
call	sub_40A17F
jmp	short loc_409C4E

loc_409C40:
lea	eax, [ebp+bstrString]
mov	edx, esi
push	eax		; bstrString
lea	ecx, [ebp+var_50]
call	sub_409CB8

loc_409C4E:
test	eax, eax
jnz	short loc_409C99
push	[ebp+var_50]	; Memory
call	sub_4284D8
push	dword ptr [ebp+bstrString] ; Memory
and	byte ptr [ebp+var_4], 0
call	sub_4284D8
inc	[ebp+arg_10]
add	[ebp+arg_4], 4
mov	eax, [ebp+arg_10]
pop	ecx
cmp	eax, [ebp+arg_8]
pop	ecx
jb	loc_409BAF

loc_409C7B:
xor	esi, esi

loc_409C7D:		; Memory
push	[ebp+var_44]
call	sub_4284D8
pop	ecx

loc_409C86:
mov	eax, esi

loc_409C88:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	14h

loc_409C99:		; Memory
push	[ebp+var_50]
mov	esi, eax
call	sub_4284D8
push	dword ptr [ebp+bstrString] ; Memory
call	sub_4284D8
push	[ebp+var_44]	; Memory
call	sub_4284D8
add	esp, 0Ch
jmp	short loc_409C86
sub_409AE4 endp



; Attributes: bp-based frame

; int __stdcall	sub_409CB8(BSTR	bstrString, int, int)
sub_409CB8 proc	near

var_80=	dword ptr -80h
var_74=	dword ptr -74h
var_68=	dword ptr -68h
var_5C=	dword ptr -5Ch
var_50=	dword ptr -50h
var_44=	dword ptr -44h
Memory=	dword ptr -38h
var_2C=	dword ptr -2Ch
var_20=	dword ptr -20h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
bstrString= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_4434C8
call	__EH_prolog
sub	esp, 74h
push	ebx
push	esi
push	edi
mov	edi, ecx
push	[ebp+bstrString]
mov	ebx, edx
lea	ecx, [ebp+var_20]
mov	[ebp+var_14], ebx
call	sub_4030F2
mov	edx, [edi]
mov	ecx, [ebp+var_20]
and	[ebp+var_4], 0
call	sub_4282B1
test	eax, eax
jnz	loc_409D7D
push	offset aOntoItself ; "' onto itself"
lea	ecx, [ebp+var_50]
call	sub_403091
mov	esi, eax
push	offset aCanNotMoveFile ; "can not move file '"
lea	ecx, [ebp+var_44]
mov	byte ptr [ebp+var_4], 1
call	sub_403091
lea	ecx, [ebp+var_20]
mov	edx, eax
push	ecx
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 2
call	sub_40356A
push	esi
mov	edx, eax
lea	ecx, [ebp+var_2C]
mov	byte ptr [ebp+var_4], 3
call	sub_40356A
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_44]	; Memory
call	sub_4284D8
push	[ebp+var_50]	; Memory
mov	byte ptr [ebp+var_4], 5
call	sub_4284D8
mov	eax, [ebp+arg_4]
add	esp, 0Ch
push	[ebp+var_2C]
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+18h]
test	eax, eax
mov	esi, eax
jnz	short loc_409D67
mov	esi, 80004004h

loc_409D67:		; Memory
push	[ebp+var_2C]
call	sub_4284D8
push	[ebp+var_20]	; Memory
call	sub_4284D8
pop	ecx
jmp	loc_409F18

loc_409D7D:
and	[ebp+bstrString], 0
lea	edx, [ebp+var_10]
mov	esi, [ebp+arg_4]
push	edx
lea	edx, [ebp+bstrString]
mov	eax, [edi]
push	edx
push	[ebp+var_20]
mov	ecx, [esi]
mov	byte ptr [ebp+var_4], 8
push	ebx
add	ebx, 18h
push	ebx
push	0
push	eax
push	esi
call	dword ptr [ecx+14h]
test	eax, eax
jnz	loc_409F05
cmp	[ebp+var_10], eax
mov	ebx, [ebp+arg_8]
jz	loc_409EF1
push	[ebp+bstrString]
lea	ecx, [ebp+var_2C]
call	sub_403091
mov	eax, [edi]
mov	ecx, [esi]
push	eax
push	esi
mov	byte ptr [ebp+var_4], 9
call	dword ptr [ecx+1Ch]
test	eax, eax
mov	[ebp+arg_4], eax
jz	short loc_409DF9
push	[ebp+var_2C]	; Memory
call	sub_4284D8
pop	ecx
push	[ebp+bstrString] ; bstrString
call	ds:SysFreeString
push	[ebp+var_20]	; Memory
call	sub_4284D8
mov	eax, [ebp+arg_4]
pop	ecx
jmp	loc_409F1B

loc_409DF9:
mov	ecx, [edi]
mov	edx, [ebp+var_2C]
push	ebx
push	esi
call	sub_409F2C
test	al, al
jnz	loc_409EE4
push	offset asc_45B444 ; "'"
lea	ecx, [ebp+var_80]
call	sub_403091
mov	edi, eax
lea	eax, [ebp+var_2C]
lea	ecx, [ebp+var_74]
push	eax
mov	byte ptr [ebp+var_4], 0Ah
call	sub_4030F2
mov	ebx, eax
push	offset asc_45B43C ; " '"
lea	ecx, [ebp+var_68]
mov	byte ptr [ebp+var_4], 0Bh
call	sub_403091
mov	[ebp+arg_4], eax
mov	byte ptr [ebp+var_4], 0Ch
call	ds:GetLastError
mov	edx, eax
lea	ecx, [ebp+var_5C]
call	sub_40421E
push	[ebp+arg_4]
mov	edx, eax
lea	ecx, [ebp+var_44]
mov	byte ptr [ebp+var_4], 0Dh
call	sub_40356A
push	ebx
mov	edx, eax
lea	ecx, [ebp+var_50]
mov	byte ptr [ebp+var_4], 0Eh
call	sub_40356A
push	edi
mov	edx, eax
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 0Fh
call	sub_40356A
push	[ebp+var_50]	; Memory
call	sub_4284D8
push	[ebp+var_44]	; Memory
call	sub_4284D8
push	[ebp+var_5C]	; Memory
call	sub_4284D8
push	[ebp+var_68]	; Memory
call	sub_4284D8
push	[ebp+var_74]	; Memory
call	sub_4284D8
push	[ebp+var_80]	; Memory
mov	byte ptr [ebp+var_4], 11h
call	sub_4284D8
mov	eax, [esi]
add	esp, 18h
push	[ebp+Memory]
push	esi
call	dword ptr [eax+18h]
test	eax, eax
mov	esi, eax
jnz	short loc_409ED0
mov	esi, 80004004h

loc_409ED0:		; Memory
push	[ebp+Memory]
call	sub_4284D8
push	[ebp+var_2C]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx
jmp	short loc_409F07

loc_409EE4:		; Memory
push	[ebp+var_2C]
mov	byte ptr [ebp+var_4], 8
call	sub_4284D8
pop	ecx

loc_409EF1:
mov	eax, [ebp+var_14]
push	ebx
push	esi
mov	ecx, [eax]
mov	eax, [eax+4]
add	[ebx], ecx
adc	[ebx+4], eax
mov	eax, [esi]
call	dword ptr [eax+10h]

loc_409F05:
mov	esi, eax

loc_409F07:		; bstrString
push	[ebp+bstrString]
call	ds:SysFreeString
push	[ebp+var_20]	; Memory
call	sub_4284D8

loc_409F18:
pop	ecx
mov	eax, esi

loc_409F1B:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	0Ch
sub_409CB8 endp



; Attributes: bp-based frame

sub_409F2C proc	near

var_50=	dword ptr -50h
var_4C=	dword ptr -4Ch
var_48=	dword ptr -48h
var_40=	dword ptr -40h
var_34=	dword ptr -34h
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
Memory=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
lpExistingFileName= dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_4434FC
call	__EH_prolog
sub	esp, 44h
mov	eax, [ebp+arg_0]
mov	[ebp+lpExistingFileName], ecx
mov	[ebp+var_48], eax
mov	eax, [ebp+arg_4]
push	ebx
xor	ebx, ebx
mov	ecx, [eax]
mov	eax, [eax+4]
cmp	byte_45D8B4, bl
push	esi
push	edi
mov	edi, edx
mov	[ebp+var_50], ecx
mov	[ebp+var_4C], eax
mov	[ebp+arg_0], ebx
jz	loc_40A029
push	offset aCopyfileexw ; "CopyFileExW"
push	offset aKernel32_dll_1 ; "kernel32.dll"
call	ds:GetModuleHandleW
push	eax		; hModule
call	ds:GetProcAddress
cmp	eax, ebx
mov	[ebp+arg_4], eax
push	1		; bFailIfExists
jnz	short loc_409F9B
push	edi		; lpNewFileName
push	[ebp+lpExistingFileName] ; lpExistingFileName
call	ds:CopyFileW
neg	eax
sbb	eax, eax
neg	eax
jmp	loc_40A0F1

loc_409F9B:
lea	ecx, [ebp+arg_0]
mov	esi, offset sub_40A102
push	ecx
lea	ecx, [ebp+var_50]
push	ecx
push	esi
push	edi
push	[ebp+lpExistingFileName]
call	eax
test	eax, eax
jz	short loc_409FBA

loc_409FB3:
mov	al, 1
jmp	loc_40A0F1

loc_409FBA:
push	3
lea	ecx, [ebp+var_28]
mov	[ebp+var_28], ebx
mov	[ebp+var_24], ebx
mov	[ebp+var_20], ebx
call	sub_403396
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+var_4], ebx
mov	[ebp+Memory], ebx
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
call	sub_403396
mov	ecx, [ebp+lpExistingFileName]
lea	eax, [ebp+Memory]
push	eax
lea	eax, [ebp+var_28]
push	eax
mov	edx, edi
mov	byte ptr [ebp+var_4], 1
call	sub_429EA3
test	al, al
jnz	short loc_40A00D

loc_409FFD:		; Memory
push	[ebp+Memory]
call	sub_4284D8
push	[ebp+var_28]
jmp	loc_40A0E8

loc_40A00D:
lea	eax, [ebp+arg_0]
push	1
push	eax
lea	eax, [ebp+var_50]
push	eax
push	esi
push	[ebp+Memory]
push	[ebp+var_28]
call	[ebp+arg_4]
test	eax, eax
jz	short loc_409FFD
mov	bl, 1
jmp	short loc_409FFD

loc_40A029:		; "CopyFileExA"
push	offset aCopyfileexa
push	offset aKernel32_dll_0 ; "kernel32.dll"
call	ds:GetModuleHandleA
push	eax		; hModule
call	ds:GetProcAddress
cmp	eax, ebx
mov	[ebp+arg_4], eax
jz	short loc_40A0AE
mov	edx, edi
lea	ecx, [ebp+Memory]
call	sub_40A130
mov	edx, [ebp+lpExistingFileName]
mov	esi, [eax]
lea	ecx, [ebp+var_28]
mov	[ebp+var_4], 2
call	sub_40A130
mov	eax, [eax]
lea	ecx, [ebp+arg_0]
push	1
push	ecx
lea	ecx, [ebp+var_50]
mov	byte ptr [ebp+var_4], 3
push	ecx
push	offset sub_40A102
push	esi
push	eax
call	[ebp+arg_4]
mov	esi, eax
push	[ebp+var_28]	; Memory
call	sub_4284D8
push	[ebp+Memory]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
pop	ecx
cmp	esi, ebx
pop	ecx
jnz	loc_409FB3
call	ds:GetLastError
cmp	eax, 78h
jz	short loc_40A0AE
xor	al, al
jmp	short loc_40A0F1

loc_40A0AE:
mov	edx, edi
lea	ecx, [ebp+var_40]
call	sub_40A130
mov	edx, [ebp+lpExistingFileName]
mov	esi, [eax]
lea	ecx, [ebp+var_34]
mov	[ebp+var_4], 4
call	sub_40A130
mov	eax, [eax]
push	1		; bFailIfExists
push	esi		; lpNewFileName
push	eax		; lpExistingFileName
call	ds:CopyFileA
test	eax, eax
push	[ebp+var_34]	; Memory
setnz	bl
call	sub_4284D8
push	[ebp+var_40]	; Memory

loc_40A0E8:
call	sub_4284D8
pop	ecx
mov	al, bl
pop	ecx

loc_40A0F1:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	8
sub_409F2C endp



; Attributes: bp-based frame

sub_40A102 proc	near

arg_8= dword ptr  10h
arg_C= dword ptr  14h
arg_30=	dword ptr  38h

push	ebp
mov	ebp, esp
mov	eax, [ebp+arg_30]
mov	ecx, [eax]
mov	edx, [eax+4]
add	ecx, [ebp+arg_8]
mov	eax, [eax+8]
adc	edx, [ebp+arg_C]
mov	[ebp+arg_8], ecx
mov	[ebp+arg_C], edx
mov	ecx, [eax]
lea	edx, [ebp+arg_8]
push	edx
push	eax
call	dword ptr [ecx+10h]
neg	eax
sbb	eax, eax
neg	eax
pop	ebp
retn	34h
sub_40A102 endp



; Attributes: bp-based frame

sub_40A130 proc	near

Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443510
call	__EH_prolog
sub	esp, 10h
and	[ebp+var_10], 0
push	esi
mov	esi, ecx
push	edx
lea	ecx, [ebp+Memory]
call	sub_403091
and	[ebp+var_4], 0
call	ds:AreFileApisANSI
neg	eax
sbb	eax, eax
lea	edx, [ebp+Memory]
inc	eax
mov	ecx, esi
push	eax
call	sub_428673
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40A130 endp



; Attributes: bp-based frame

sub_40A17F proc	near

var_A0=	byte ptr -0A0h
var_80=	dword ptr -80h
var_78=	dword ptr -78h
var_58=	dword ptr -58h
var_4C=	dword ptr -4Ch
var_40=	dword ptr -40h
var_3C=	dword ptr -3Ch
bstrString= word ptr -30h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_443597
call	__EH_prolog
sub	esp, 94h
push	ebx
push	esi
mov	esi, [ebp+arg_0]
push	edi
push	[ebp+arg_4]
mov	edi, edx
mov	eax, [esi]
mov	ebx, ecx
push	esi
call	dword ptr [eax+10h]
test	eax, eax
jnz	loc_40A42C
push	edi
lea	ecx, [ebp+var_24]
call	sub_4030F2
mov	edi, [ebx+4]
and	[ebp+var_4], 0
cmp	[ebp+var_20], edi
jl	loc_40A297
lea	eax, [ebp+Memory]
push	edi
push	eax
lea	ecx, [ebp+var_24]
call	sub_403228
mov	edx, [eax]
mov	ecx, [ebx]
mov	byte ptr [ebp+var_4], 1
call	sub_4282B1
test	eax, eax
push	[ebp+Memory]	; Memory
setz	byte ptr [ebp+arg_0+3]
and	byte ptr [ebp+var_4], 0
call	sub_4284D8
cmp	byte ptr [ebp+arg_0+3],	0
pop	ecx
jz	loc_40A297
cmp	[ebp+var_20], edi
jz	short loc_40A20D
mov	eax, [ebp+var_24]
cmp	word ptr [eax+edi*2], 5Ch
jnz	loc_40A297

loc_40A20D:		; "' onto itself"
push	offset aOntoItself
lea	ecx, [ebp+var_4C]
call	sub_403091
mov	edi, eax
push	offset aCanNotCopyFold ; "can not copy folder '"
lea	ecx, [ebp+var_58]
mov	byte ptr [ebp+var_4], 2
call	sub_403091
lea	ecx, [ebp+var_24]
mov	edx, eax
push	ecx
lea	ecx, [ebp+bstrString]
mov	byte ptr [ebp+var_4], 3
call	sub_40356A
push	edi
mov	edx, eax
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 4
call	sub_40356A
push	dword ptr [ebp+bstrString] ; Memory
call	sub_4284D8
push	[ebp+var_58]	; Memory
call	sub_4284D8
push	[ebp+var_4C]	; Memory
mov	byte ptr [ebp+var_4], 6
call	sub_4284D8
mov	eax, [esi]
add	esp, 0Ch
push	[ebp+Memory]
push	esi
call	dword ptr [eax+18h]
test	eax, eax
mov	esi, eax
jnz	short loc_40A281
mov	esi, 80004004h

loc_40A281:		; Memory
push	[ebp+Memory]

loc_40A284:
call	sub_4284D8
push	[ebp+var_24]	; Memory
call	sub_4284D8
pop	ecx
jmp	loc_40A3FE

loc_40A297:
mov	ecx, [ebp+var_24]
call	sub_42A264
test	al, al
jnz	short loc_40A2E8
push	offset aCanNotCreateFo ; "can not create folder	"
lea	ecx, [ebp+var_4C]
call	sub_403091
lea	ecx, [ebp+var_24]
mov	edx, eax
push	ecx
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 9
call	sub_40356A
push	[ebp+var_4C]	; Memory
mov	byte ptr [ebp+var_4], 0Bh
call	sub_4284D8
mov	eax, [esi]
pop	ecx
push	[ebp+Memory]
push	esi
call	dword ptr [eax+18h]
test	eax, eax
mov	esi, eax
jnz	short loc_40A2E3
mov	esi, 80004004h

loc_40A2E3:
push	[ebp+Memory]
jmp	short loc_40A284

loc_40A2E8:		; "*"
push	offset asc_45B41C
lea	ecx, [ebp+Memory]
call	sub_403091
lea	eax, [ebp+Memory]
mov	edx, ebx
push	eax
lea	ecx, [ebp+var_4C]
mov	byte ptr [ebp+var_4], 0Ch
call	sub_40A43D
or	[ebp+var_40], 0FFFFFFFFh
push	eax
lea	ecx, [ebp+var_3C]
mov	byte ptr [ebp+var_4], 0Eh
call	sub_4030F2
push	[ebp+var_4C]	; Memory
call	sub_4284D8
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 10h
call	sub_4284D8
pop	ecx
pop	ecx
lea	ecx, [ebp+var_A0]
call	sub_404EA2
mov	byte ptr [ebp+var_4], 12h

loc_40A33D:
lea	eax, [ebp+var_A0]
lea	ecx, [ebp+var_40]
push	eax
call	sub_42B72E
test	al, al
jz	loc_40A403
lea	eax, [ebp+var_78]
mov	edx, ebx
push	eax
lea	ecx, [ebp+Memory]
call	sub_40A43D
lea	eax, [ebp+var_78]
lea	edx, [ebp+var_24]
push	eax
lea	ecx, [ebp+bstrString]
mov	byte ptr [ebp+var_4], 13h
call	sub_40A43D
mov	eax, [ebp+var_80]
push	[ebp+arg_4]
shr	eax, 4
test	al, 1
mov	byte ptr [ebp+var_4], 14h
push	esi
jz	short loc_40A394
lea	edx, [ebp+bstrString]
lea	ecx, [ebp+Memory]
call	sub_40A17F
jmp	short loc_40A3A6

loc_40A394:
lea	eax, [ebp+bstrString]
lea	edx, [ebp+var_A0]
push	eax		; bstrString
lea	ecx, [ebp+Memory]
call	sub_409CB8

loc_40A3A6:
test	eax, eax
jnz	short loc_40A3C5
push	dword ptr [ebp+bstrString] ; Memory
call	sub_4284D8
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 12h
call	sub_4284D8
pop	ecx
pop	ecx
jmp	loc_40A33D

loc_40A3C5:		; Memory
push	dword ptr [ebp+bstrString]
mov	esi, eax
call	sub_4284D8
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_78]	; Memory
call	sub_4284D8
push	[ebp+var_3C]	; Memory
and	byte ptr [ebp+var_4], 0
call	sub_4284D8
add	esp, 10h
lea	ecx, [ebp+var_40]
call	sub_42B047
push	[ebp+var_24]	; Memory
call	sub_4284D8

loc_40A3FE:
pop	ecx
mov	eax, esi
jmp	short loc_40A42C

loc_40A403:		; Memory
push	[ebp+var_78]
call	sub_4284D8
push	[ebp+var_3C]	; Memory
and	byte ptr [ebp+var_4], 0
call	sub_4284D8
pop	ecx
pop	ecx
lea	ecx, [ebp+var_40]
call	sub_42B047
push	[ebp+var_24]	; Memory
call	sub_4284D8
pop	ecx
xor	eax, eax

loc_40A42C:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	8
sub_40A17F endp



; Attributes: bp-based frame

sub_40A43D proc	near

var_28=	dword ptr -28h
Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_4435B4
call	__EH_prolog
sub	esp, 1Ch
and	[ebp+var_10], 0
push	esi
mov	esi, ecx
push	edi
mov	edi, edx
push	5Ch
lea	ecx, [ebp+var_28]
call	sub_409516
and	[ebp+var_4], 0
push	eax
mov	edx, edi
lea	ecx, [ebp+Memory]
call	sub_40356A
push	[ebp+arg_0]
mov	edx, eax
mov	ecx, esi
mov	byte ptr [ebp+var_4], 1
call	sub_40356A
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_28]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, esi
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_40A43D endp



; Attributes: bp-based frame

; int __stdcall	sub_40A4A1(BSTR	bstrString, int, int)
sub_40A4A1 proc	near

var_50=	dword ptr -50h
var_44=	dword ptr -44h
var_38=	dword ptr -38h
Memory=	dword ptr -2Ch
var_20=	dword ptr -20h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
bstrString= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_443608
call	__EH_prolog
sub	esp, 44h
push	ebx
push	esi
push	edi
mov	edi, ecx
push	[ebp+bstrString]
mov	ebx, edx
lea	ecx, [ebp+var_20]
mov	[ebp+var_14], ebx
call	sub_4030F2
mov	edx, [edi]
mov	ecx, [ebp+var_20]
and	[ebp+var_4], 0
call	sub_4282B1
test	eax, eax
jnz	loc_40A566
push	offset aOntoItself ; "' onto itself"
lea	ecx, [ebp+var_50]
call	sub_403091
mov	esi, eax
push	offset aCanNotMoveFile ; "can not move file '"
lea	ecx, [ebp+var_44]
mov	byte ptr [ebp+var_4], 1
call	sub_403091
lea	ecx, [ebp+var_20]
mov	edx, eax
push	ecx
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 2
call	sub_40356A
push	esi
mov	edx, eax
lea	ecx, [ebp+var_38]
mov	byte ptr [ebp+var_4], 3
call	sub_40356A
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_44]	; Memory
call	sub_4284D8
push	[ebp+var_50]	; Memory
mov	byte ptr [ebp+var_4], 5
call	sub_4284D8
mov	eax, [ebp+arg_4]
add	esp, 0Ch
push	[ebp+var_38]
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+18h]
test	eax, eax
mov	esi, eax
jnz	short loc_40A550
mov	esi, 80004004h

loc_40A550:		; Memory
push	[ebp+var_38]
call	sub_4284D8
push	[ebp+var_20]	; Memory
call	sub_4284D8
pop	ecx
jmp	loc_40A69B

loc_40A566:
and	[ebp+bstrString], 0
lea	edx, [ebp+var_10]
mov	esi, [ebp+arg_4]
push	edx
lea	edx, [ebp+bstrString]
mov	eax, [edi]
push	edx
push	[ebp+var_20]
mov	ecx, [esi]
mov	byte ptr [ebp+var_4], 8
push	ebx
add	ebx, 18h
push	ebx
push	0
push	eax
push	esi
call	dword ptr [ecx+14h]
test	eax, eax
jz	short loc_40A597

loc_40A590:
mov	esi, eax
jmp	loc_40A68A

loc_40A597:
cmp	[ebp+var_10], 0
mov	ebx, [ebp+arg_8]
jz	loc_40A66C
push	[ebp+bstrString]
lea	ecx, [ebp+Memory]
call	sub_403091
mov	eax, [edi]
mov	ecx, [esi]
push	eax
push	esi
mov	byte ptr [ebp+var_4], 9
call	dword ptr [ecx+1Ch]
test	eax, eax
mov	[ebp+arg_4], eax
jz	short loc_40A5E6
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
push	[ebp+bstrString] ; bstrString
call	ds:SysFreeString
push	[ebp+var_20]	; Memory
call	sub_4284D8
mov	eax, [ebp+arg_4]
pop	ecx
jmp	loc_40A69E

loc_40A5E6:
mov	ecx, [edi]
mov	edx, [ebp+Memory]
push	ebx
push	esi
call	sub_40A6AF
test	al, al
jnz	short loc_40A65F
push	offset aCanNotMoveToFi ; "can not move to file "
lea	ecx, [ebp+var_50]
call	sub_403091
lea	ecx, [ebp+Memory]
mov	edx, eax
push	ecx
lea	ecx, [ebp+var_38]
mov	byte ptr [ebp+var_4], 0Ah
call	sub_40356A
push	[ebp+var_50]	; Memory
mov	byte ptr [ebp+var_4], 0Ch
call	sub_4284D8
mov	eax, [esi]
pop	ecx
push	[ebp+var_38]
push	esi
call	dword ptr [eax+18h]
mov	edi, eax
push	[ebp+var_38]	; Memory
test	edi, edi
jz	short loc_40A659
call	sub_4284D8
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx
push	[ebp+bstrString] ; bstrString
call	ds:SysFreeString
push	[ebp+var_20]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, edi
jmp	short loc_40A69E

loc_40A659:
call	sub_4284D8
pop	ecx

loc_40A65F:		; Memory
push	[ebp+Memory]
mov	byte ptr [ebp+var_4], 8
call	sub_4284D8
pop	ecx

loc_40A66C:
mov	eax, [ebp+var_14]
push	ebx
push	esi
mov	ecx, [eax]
mov	eax, [eax+4]
add	[ebx], ecx
adc	[ebx+4], eax
mov	eax, [esi]
call	dword ptr [eax+10h]
test	eax, eax
jnz	loc_40A590
xor	esi, esi

loc_40A68A:		; bstrString
push	[ebp+bstrString]
call	ds:SysFreeString
push	[ebp+var_20]	; Memory
call	sub_4284D8

loc_40A69B:
pop	ecx
mov	eax, esi

loc_40A69E:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	0Ch
sub_40A4A1 endp



; Attributes: bp-based frame

sub_40A6AF proc	near

var_3C=	dword ptr -3Ch
var_38=	dword ptr -38h
var_34=	dword ptr -34h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
Memory=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_443624
call	__EH_prolog
sub	esp, 30h
mov	eax, [ebp+arg_0]
push	ebx
mov	[ebp+var_34], eax
mov	eax, [ebp+arg_4]
mov	[ebp+var_14], ecx
push	esi
mov	ecx, [eax]
mov	eax, [eax+4]
push	edi
push	offset aMovefilewithpr ; "MoveFileWithProgressW"
mov	[ebp+var_10], edx
push	offset aKernel32_dll_0 ; "kernel32.dll"
mov	[ebp+var_3C], ecx
mov	[ebp+var_38], eax
call	ds:GetModuleHandleA
push	eax		; hModule
call	ds:GetProcAddress
mov	edi, eax
xor	ebx, ebx
cmp	edi, ebx
jz	loc_40A7BC
lea	eax, [ebp+var_3C]
push	2
mov	esi, offset sub_40A102
push	eax
push	esi
push	[ebp+var_10]
push	[ebp+var_14]
call	edi
test	eax, eax
jz	short loc_40A71B
mov	al, 1
jmp	loc_40A7C7

loc_40A71B:
call	ds:GetLastError
cmp	eax, 78h
jz	loc_40A7BC
push	3
lea	ecx, [ebp+var_2C]
mov	[ebp+var_2C], ebx
mov	[ebp+var_28], ebx
mov	[ebp+var_24], ebx
call	sub_403396
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+var_4], ebx
mov	[ebp+Memory], ebx
mov	[ebp+var_1C], ebx
mov	[ebp+var_18], ebx
call	sub_403396
mov	edx, [ebp+var_10]
mov	ecx, [ebp+var_14]
lea	eax, [ebp+Memory]
mov	byte ptr [ebp+var_4], 1
push	eax
lea	eax, [ebp+var_2C]
push	eax
call	sub_429EA3
test	al, al
jz	short loc_40A790
lea	eax, [ebp+var_3C]
push	2
push	eax
push	esi
push	[ebp+Memory]
push	[ebp+var_2C]
call	edi
test	eax, eax
jz	short loc_40A785
mov	bl, 1
jmp	short loc_40A790

loc_40A785:
call	ds:GetLastError
cmp	eax, 78h
jz	short loc_40A7A6

loc_40A790:		; Memory
push	[ebp+Memory]
call	sub_4284D8
push	[ebp+var_2C]	; Memory
call	sub_4284D8
pop	ecx
mov	al, bl
pop	ecx
jmp	short loc_40A7C7

loc_40A7A6:		; Memory
push	[ebp+Memory]
call	sub_4284D8
push	[ebp+var_2C]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
pop	ecx
pop	ecx

loc_40A7BC:
mov	edx, [ebp+var_10]
mov	ecx, [ebp+var_14]
call	sub_42A0AB

loc_40A7C7:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	8
sub_40A6AF endp



; Attributes: bp-based frame

sub_40A7D8 proc	near

var_94=	byte ptr -94h
var_74=	dword ptr -74h
var_6C=	dword ptr -6Ch
bstrString= word ptr -4Ch
var_40=	dword ptr -40h
var_3C=	dword ptr -3Ch
var_30=	dword ptr -30h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_4436BB
call	__EH_prolog
sub	esp, 88h
push	esi
mov	esi, ecx
push	edi
push	edx
lea	ecx, [ebp+var_24]
call	sub_4030F2
mov	edi, [esi+4]
and	[ebp+var_4], 0
cmp	[ebp+var_20], edi
jl	loc_40A8C9
push	ebx
lea	eax, [ebp+Memory]
push	edi
push	eax
lea	ecx, [ebp+var_24]
call	sub_403228
mov	edx, [eax]
mov	ecx, [esi]
mov	byte ptr [ebp+var_4], 1
call	sub_4282B1
test	eax, eax
push	[ebp+Memory]	; Memory
setz	bl
and	byte ptr [ebp+var_4], 0
call	sub_4284D8
pop	ecx
test	bl, bl
pop	ebx
jz	loc_40A8C9
cmp	[ebp+var_20], edi
jz	short loc_40A84A
mov	eax, [ebp+var_24]
cmp	word ptr [eax+edi*2], 5Ch
jnz	short loc_40A8C9

loc_40A84A:		; "' onto itself"
push	offset aOntoItself
lea	ecx, [ebp+var_30]
call	sub_403091
mov	esi, eax
push	offset aCanNotMoveFold ; "can not move folder '"
lea	ecx, [ebp+var_3C]
mov	byte ptr [ebp+var_4], 2
call	sub_403091
lea	ecx, [ebp+var_24]
mov	edx, eax
push	ecx
lea	ecx, [ebp+bstrString]
mov	byte ptr [ebp+var_4], 3
call	sub_40356A
push	esi
mov	edx, eax
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 4
call	sub_40356A
push	dword ptr [ebp+bstrString] ; Memory
call	sub_4284D8
push	[ebp+var_3C]	; Memory
call	sub_4284D8
push	[ebp+var_30]	; Memory
mov	byte ptr [ebp+var_4], 6
call	sub_4284D8
mov	eax, [ebp+arg_0]
add	esp, 0Ch
push	[ebp+Memory]
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+18h]
test	eax, eax
mov	esi, eax
jnz	short loc_40A8C1
mov	esi, 80004004h

loc_40A8C1:
push	[ebp+Memory]
jmp	loc_40AAB7

loc_40A8C9:
push	[ebp+arg_4]
mov	edi, [ebp+arg_0]
mov	ecx, [esi]
mov	edx, [ebp+var_24]
push	edi
call	sub_40A6AF
test	al, al
jnz	loc_40AACA
mov	ecx, [ebp+var_24]
call	sub_42A264
test	al, al
jnz	short loc_40A936
push	offset aCanNotCreateFo ; "can not create folder	"
lea	ecx, [ebp+var_30]
call	sub_403091
lea	ecx, [ebp+var_24]
mov	edx, eax
push	ecx
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 9
call	sub_40356A
push	[ebp+var_30]	; Memory
mov	byte ptr [ebp+var_4], 0Bh
call	sub_4284D8
mov	eax, [edi]
pop	ecx
push	[ebp+Memory]
push	edi
call	dword ptr [eax+18h]
test	eax, eax
mov	esi, eax
jnz	short loc_40A92E
mov	esi, 80004004h

loc_40A92E:
push	[ebp+Memory]
jmp	loc_40AAB7

loc_40A936:		; "*"
push	offset asc_45B41C
lea	ecx, [ebp+Memory]
call	sub_403091
lea	eax, [ebp+Memory]
mov	edx, esi
push	eax
lea	ecx, [ebp+var_30]
mov	byte ptr [ebp+var_4], 0Ch
call	sub_40A43D
or	[ebp+var_40], 0FFFFFFFFh
push	eax
lea	ecx, [ebp+var_3C]
mov	byte ptr [ebp+var_4], 0Eh
call	sub_4030F2
push	[ebp+var_30]	; Memory
call	sub_4284D8
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 10h
call	sub_4284D8
pop	ecx
pop	ecx
lea	ecx, [ebp+var_94]
call	sub_404EA2
mov	byte ptr [ebp+var_4], 12h

loc_40A98B:
lea	eax, [ebp+var_94]
lea	ecx, [ebp+var_40]
push	eax
call	sub_42B72E
test	al, al
jz	loc_40AA4E
lea	eax, [ebp+var_6C]
mov	edx, esi
push	eax
lea	ecx, [ebp+Memory]
call	sub_40A43D
lea	eax, [ebp+var_6C]
lea	edx, [ebp+var_24]
push	eax
lea	ecx, [ebp+bstrString]
mov	byte ptr [ebp+var_4], 13h
call	sub_40A43D
mov	eax, [ebp+var_74]
push	[ebp+arg_4]
shr	eax, 4
test	al, 1
mov	byte ptr [ebp+var_4], 14h
push	edi
jz	short loc_40A9E2
lea	edx, [ebp+bstrString]
lea	ecx, [ebp+Memory]
call	sub_40A7D8
jmp	short loc_40A9F4

loc_40A9E2:
lea	eax, [ebp+bstrString]
lea	edx, [ebp+var_94]
push	eax		; bstrString
lea	ecx, [ebp+Memory]
call	sub_40A4A1

loc_40A9F4:
test	eax, eax
jnz	short loc_40AA13
push	dword ptr [ebp+bstrString] ; Memory
call	sub_4284D8
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 12h
call	sub_4284D8
pop	ecx
pop	ecx
jmp	loc_40A98B

loc_40AA13:		; Memory
push	dword ptr [ebp+bstrString]
mov	esi, eax
call	sub_4284D8
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_6C]	; Memory
call	sub_4284D8
push	[ebp+var_3C]	; Memory
and	byte ptr [ebp+var_4], 0
call	sub_4284D8
add	esp, 10h
lea	ecx, [ebp+var_40]
call	sub_42B047
push	[ebp+var_24]	; Memory
call	sub_4284D8
jmp	short loc_40AAC5

loc_40AA4E:		; Memory
push	[ebp+var_6C]
call	sub_4284D8
push	[ebp+var_3C]	; Memory
and	byte ptr [ebp+var_4], 0
call	sub_4284D8
pop	ecx
pop	ecx
lea	ecx, [ebp+var_40]
call	sub_42B047
mov	ecx, [esi]
call	sub_42A00C
test	al, al
jnz	short loc_40AACA
push	offset aCanNotRemoveFo ; "can not remove folder"
lea	ecx, [ebp+var_30]
call	sub_403091
push	esi
mov	edx, eax
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 15h
call	sub_40356A
push	[ebp+var_30]	; Memory
mov	byte ptr [ebp+var_4], 17h
call	sub_4284D8
mov	eax, [edi]
pop	ecx
push	[ebp+Memory]
push	edi
call	dword ptr [eax+18h]
test	eax, eax
mov	esi, eax
jnz	short loc_40AAB4
mov	esi, 80004004h

loc_40AAB4:		; Memory
push	[ebp+Memory]

loc_40AAB7:
call	sub_4284D8
push	[ebp+var_24]	; Memory
call	sub_4284D8
pop	ecx

loc_40AAC5:
pop	ecx
mov	eax, esi
jmp	short loc_40AAD5

loc_40AACA:		; Memory
push	[ebp+var_24]
call	sub_4284D8
pop	ecx
xor	eax, eax

loc_40AAD5:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	8
sub_40A7D8 endp



; Attributes: bp-based frame

sub_40AAE5 proc	near

var_68=	dword ptr -68h
var_5C=	dword ptr -5Ch
Memory=	dword ptr -50h
bstrString= dword ptr -44h
var_38=	dword ptr -38h
var_34=	dword ptr -34h
var_2C=	byte ptr -2Ch
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h
arg_10=	dword ptr  18h

mov	eax, offset loc_443700
call	__EH_prolog
sub	esp, 5Ch
push	ebx
push	esi
mov	esi, [ebp+arg_8]
push	edi
test	esi, esi
jnz	short loc_40AB03
xor	eax, eax
jmp	loc_40ACEB

loc_40AB03:
mov	eax, [ebp+arg_0]
mov	edi, [ebp+arg_10]
mov	ebx, [ebp+arg_4]
push	edi
lea	ecx, [eax-8]
lea	eax, [ebp+var_1C]
push	eax
lea	eax, [ebp+var_24]
push	eax
lea	eax, [ebp+var_2C]
push	eax
push	esi
push	ebx
call	sub_408D1F
push	[ebp+var_18]
mov	eax, [edi]
push	[ebp+var_1C]
push	edi
call	dword ptr [eax+0Ch]
test	eax, eax
jnz	loc_40ACEB
push	[ebp+var_20]
mov	eax, [edi]
push	[ebp+var_24]
push	edi
call	dword ptr [eax+20h]
test	eax, eax
jnz	loc_40ACEB
push	[ebp+arg_C]
lea	ecx, [ebp+var_38]
call	sub_403091
mov	eax, [ebp+var_34]
and	[ebp+var_4], 0
test	eax, eax
jnz	short loc_40AB6B

loc_40AB61:
mov	esi, 80070057h
jmp	loc_40ACE0

loc_40AB6B:
mov	ecx, [ebp+var_38]
cmp	word ptr [ecx+eax*2-2],	5Ch
setnz	byte ptr [ebp+arg_10+3]
cmp	byte ptr [ebp+arg_10+3], 0
jz	short loc_40AB85
cmp	esi, 1
jbe	short loc_40ABE4
jmp	short loc_40AB61

loc_40AB85:
call	sub_42A264
test	al, al
jnz	short loc_40ABE4
push	offset aCanNotCreateFo ; "can not create folder	"
lea	ecx, [ebp+bstrString]
call	sub_403091
lea	ecx, [ebp+var_38]
mov	edx, eax
push	ecx
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 1
call	sub_40356A
push	[ebp+bstrString] ; Memory
mov	byte ptr [ebp+var_4], 3
call	sub_4284D8
mov	eax, [edi]
pop	ecx
push	[ebp+Memory]
push	edi
call	dword ptr [eax+18h]
test	eax, eax
mov	esi, eax
jnz	short loc_40ABCE
mov	esi, 80004004h

loc_40ABCE:		; Memory
push	[ebp+Memory]
call	sub_4284D8
push	[ebp+var_38]	; Memory
call	sub_4284D8
pop	ecx
jmp	loc_40ACE8

loc_40ABE4:
mov	eax, [edi]
and	[ebp+var_14], 0
and	[ebp+var_10], 0
lea	ecx, [ebp+var_14]
push	ecx
push	edi
call	dword ptr [eax+10h]
test	eax, eax
jz	short loc_40AC01
mov	esi, eax
jmp	loc_40ACE0

loc_40AC01:
and	[ebp+arg_4], 0
test	esi, esi
jbe	loc_40ACDE

loc_40AC0D:
mov	ecx, [ebp+arg_0]
mov	eax, [ebx]
mov	ecx, [ecx+94h]
mov	esi, [ecx+eax*4]
lea	eax, [ebp+var_38]
push	eax
lea	ecx, [ebp+bstrString]
call	sub_4030F2
cmp	byte ptr [ebp+arg_10+3], 0
mov	byte ptr [ebp+var_4], 4
jnz	short loc_40AC3D
lea	eax, [esi+28h]
lea	ecx, [ebp+bstrString]
push	eax
call	sub_4031F2

loc_40AC3D:
lea	eax, [ebp+var_68]
push	esi
push	eax
mov	eax, [ebp+arg_0]
lea	ecx, [eax-8]
call	sub_408518
push	eax
mov	eax, [ebp+arg_0]
lea	ecx, [ebp+var_5C]
mov	byte ptr [ebp+var_4], 5
lea	edx, [eax+18h]
call	sub_40356A
lea	ecx, [esi+28h]
mov	edx, eax
push	ecx
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 6
call	sub_40356A
push	[ebp+var_5C]	; Memory
call	sub_4284D8
push	[ebp+var_68]	; Memory
mov	byte ptr [ebp+var_4], 8
call	sub_4284D8
mov	eax, [esi+20h]
pop	ecx
shr	eax, 4
test	al, 1
pop	ecx
lea	eax, [ebp+var_14]
push	eax
push	edi
jz	short loc_40ACA4
lea	edx, [ebp+bstrString]
lea	ecx, [ebp+Memory]
call	sub_40A7D8
jmp	short loc_40ACB2

loc_40ACA4:
lea	eax, [ebp+bstrString]
mov	edx, esi
push	eax		; bstrString
lea	ecx, [ebp+Memory]
call	sub_40A4A1

loc_40ACB2:
test	eax, eax
jnz	short loc_40ACFC
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+bstrString] ; Memory
and	byte ptr [ebp+var_4], 0
call	sub_4284D8
inc	[ebp+arg_4]
pop	ecx
mov	eax, [ebp+arg_4]
add	ebx, 4
cmp	eax, [ebp+arg_8]
pop	ecx
jb	loc_40AC0D

loc_40ACDE:
xor	esi, esi

loc_40ACE0:		; Memory
push	[ebp+var_38]
call	sub_4284D8

loc_40ACE8:
pop	ecx

loc_40ACE9:
mov	eax, esi

loc_40ACEB:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	14h

loc_40ACFC:		; Memory
push	[ebp+Memory]
mov	esi, eax
call	sub_4284D8
push	[ebp+bstrString] ; Memory
call	sub_4284D8
push	[ebp+var_38]	; Memory
call	sub_4284D8
add	esp, 0Ch
jmp	short loc_40ACE9
sub_40AAE5 endp



; Attributes: bp-based frame

sub_40AD1B proc	near

var_24=	dword ptr -24h
Memory=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443714
call	__EH_prolog
sub	esp, 18h
push	ebx
push	esi
mov	ebx, ecx
push	edi
xor	esi, esi
mov	edi, edx
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+Memory], esi
mov	[ebp+var_14], esi
mov	[ebp+var_10], esi
call	sub_403396
lea	ecx, [ebp+Memory]
mov	[ebp+var_4], esi
call	sub_41D79C
test	al, al
jnz	short loc_40AD5D
push	[ebp+Memory]	; Memory
call	sub_4284D8
jmp	short loc_40AD9A

loc_40AD5D:
push	off_45B5C8
lea	ecx, [ebp+Memory]
call	sub_403195
lea	ecx, [ebp+Memory]
push	edi
call	sub_403195
lea	edx, [ebp+Memory]
lea	ecx, [ebp+var_24]
call	sub_43A785
push	esi
push	esi
push	dword ptr [eax]
push	ebx
call	sub_441A9D
push	[ebp+var_24]	; Memory
call	sub_4284D8
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_40AD9A:
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40AD1B endp

call	sub_40ADB4
jmp	loc_40ADBE



sub_40ADB4 proc	near
mov	ecx, offset unk_45D8F0
jmp	sub_40AE0C
sub_40ADB4 endp


loc_40ADBE:
push	offset loc_40ADCA
call	_atexit
pop	ecx
retn

loc_40ADCA:
mov	ecx, offset unk_45D8F0
jmp	$+5
; START	OF FUNCTION CHUNK FOR sub_4437F7

loc_40ADD4:
mov	eax, offset sub_443728
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp-10h], esi
mov	dword ptr [esi], offset	off_44BCEC
and	dword ptr [ebp-4], 0
call	sub_428327
or	dword ptr [ebp-4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp-0Ch]
pop	esi
mov	large fs:0, ecx
leave
retn
; END OF FUNCTION CHUNK	FOR sub_4437F7



sub_40AE0C proc	near
mov	eax, ecx
xor	ecx, ecx
mov	[eax+4], ecx
mov	[eax+8], ecx
mov	[eax+0Ch], ecx
mov	dword ptr [eax+10h], 4
mov	dword ptr [eax], offset	off_44BCEC
retn
sub_40AE0C endp

call	sub_40AE31
jmp	loc_40AE4F



sub_40AE31 proc	near
xor	eax, eax
push	3
mov	ecx, offset dword_45D8E0
mov	dword_45D8E0, eax
mov	dword_45D8E4, eax
mov	dword_45D8E8, eax
call	sub_403396
retn
sub_40AE31 endp


loc_40AE4F:
push	offset loc_40AE5B
call	_atexit
pop	ecx
retn

loc_40AE5B:
push	dword_45D8E0
call	sub_4284D8
pop	ecx
retn


; Attributes: bp-based frame

sub_40AE68 proc	near

var_48=	dword ptr -48h
var_3C=	dword ptr -3Ch
Memory=	dword ptr -30h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
lpFileName= dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_44375C
call	__EH_prolog
sub	esp, 3Ch
push	ebx
push	esi
mov	esi, offset dword_45D8E0
push	edi
mov	ecx, esi	; cbData
call	sub_41E873
mov	edi, offset unk_45D8F0
mov	ecx, edi
call	sub_428327
xor	ebx, ebx
cmp	dword_45D8E4, ebx
jz	loc_40AF8A
mov	ecx, dword_45D8E0
mov	edx, offset asc_45B600 ; "-"
call	sub_42828A
cmp	eax, ebx
jz	loc_40AF8A
push	esi
lea	ecx, [ebp+lpFileName]
call	sub_4030F2
push	ebx
push	5Ch
lea	ecx, [ebp+lpFileName]
mov	[ebp+var_4], ebx
call	sub_40B7E1
test	eax, eax
jge	loc_40AF77
push	ebx
push	2Eh
lea	ecx, [ebp+lpFileName]
call	sub_40B7E1
test	eax, eax
jge	short loc_40AEF1
push	offset a_txt_0	; ".txt"
lea	ecx, [ebp+lpFileName]
call	sub_403195

loc_40AEF1:
push	3
lea	ecx, [ebp+var_24]
mov	[ebp+var_24], ebx
mov	[ebp+var_20], ebx
mov	[ebp+var_1C], ebx
call	sub_403396
lea	ecx, [ebp+var_24]
mov	byte ptr [ebp+var_4], 1
call	sub_41D79C
test	al, al
jz	short loc_40AF6B
push	offset aLang	; "Lang\\"
lea	ecx, [ebp+var_48]
call	sub_403091
push	eax
lea	edx, [ebp+var_24]
lea	ecx, [ebp+var_3C]
mov	byte ptr [ebp+var_4], 2
call	sub_40356A
lea	ecx, [ebp+lpFileName]
mov	edx, eax
push	ecx
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 3
call	sub_40356A
push	eax
lea	ecx, [ebp+lpFileName]
mov	byte ptr [ebp+var_4], 4
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_3C]	; Memory
call	sub_4284D8
push	[ebp+var_48]	; Memory
call	sub_4284D8
add	esp, 0Ch

loc_40AF6B:		; Memory
push	[ebp+var_24]
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
pop	ecx

loc_40AF77:		; lpFileName
push	[ebp+lpFileName]
mov	ecx, edi
call	sub_427BC6
push	[ebp+lpFileName] ; Memory
call	sub_4284D8
pop	ecx

loc_40AF8A:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40AE68 endp

call	sub_40AFA3
jmp	loc_40AFAD



sub_40AFA3 proc	near
mov	ecx, offset stru_45D8C8	; lpCriticalSection
jmp	sub_441910
sub_40AFA3 endp


loc_40AFAD:
push	offset loc_40AFB9
call	_atexit
pop	ecx
retn

loc_40AFB9:
push	offset stru_45D8C8
call	ds:DeleteCriticalSection
retn


; Attributes: bp-based frame

sub_40AFC5 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443770
call	__EH_prolog
push	ecx
push	esi
mov	esi, offset stru_45D8C8
push	esi		; lpCriticalSection
mov	[ebp+var_10], esi
call	ds:EnterCriticalSection
and	[ebp+var_4], 0
cmp	byte_45D904, 0
jnz	short loc_40AFF9
mov	byte_45D904, 1
call	sub_40AE68

loc_40AFF9:		; lpCriticalSection
push	esi
call	ds:LeaveCriticalSection
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40AFC5 endp



; Attributes: bp-based frame

sub_40B00D proc	near

Memory=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_443784
call	__EH_prolog
sub	esp, 0Ch
push	ebx
push	edi
mov	edi, [ebp+arg_0]
mov	ebx, ecx
test	edi, edi
jle	short loc_40B07D
push	esi
mov	esi, edx

loc_40B028:
xor	eax, eax
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+Memory], eax
mov	[ebp+var_14], eax
mov	[ebp+var_10], eax
call	sub_403396
and	[ebp+var_4], 0
lea	eax, [ebp+Memory]
push	eax
mov	ecx, offset unk_45D8F0
push	dword ptr [esi+4]
call	sub_427F75
test	al, al
jz	short loc_40B069
push	dword ptr [esi]	; nIDDlgItem
push	ebx		; hDlg
call	ds:GetDlgItem
mov	edx, [ebp+Memory]
mov	ecx, eax
call	sub_42E6BD

loc_40B069:		; Memory
push	[ebp+Memory]
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
add	esi, 8
dec	edi
pop	ecx
jnz	short loc_40B028
pop	esi

loc_40B07D:
mov	ecx, [ebp+var_C]
pop	edi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_40B00D endp



; Attributes: bp-based frame

sub_40B08D proc	near

Memory=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443798
call	__EH_prolog
sub	esp, 0Ch
and	[ebp+Memory], 0
and	[ebp+var_14], 0
and	[ebp+var_10], 0
push	ebx
mov	ebx, ecx
push	edi
mov	edi, edx
push	3
lea	ecx, [ebp+Memory]
call	sub_403396
and	[ebp+var_4], 0
lea	eax, [ebp+Memory]
push	eax
push	edi
mov	ecx, offset unk_45D8F0
call	sub_427F75
test	al, al
jz	short loc_40B0D7
mov	edx, [ebp+Memory]
mov	ecx, ebx
call	sub_42E6BD

loc_40B0D7:		; Memory
push	[ebp+Memory]
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40B08D endp



; Attributes: bp-based frame

sub_40B0EE proc	near

Memory=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4437AC
call	__EH_prolog
sub	esp, 10h
push	ebx
push	esi
push	edi
mov	esi, ecx
xor	edi, edi
mov	ebx, edx
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+var_10], edi
mov	[ebp+Memory], edi
mov	[ebp+var_18], edi
mov	[ebp+var_14], edi
call	sub_403396
lea	eax, [ebp+Memory]
mov	ecx, offset unk_45D8F0
push	eax
push	ebx
mov	[ebp+var_4], edi
call	sub_427F75
test	al, al
jz	short loc_40B13D
lea	eax, [ebp+Memory]
mov	ecx, esi
push	eax
call	sub_4030F2
jmp	short loc_40B14E

loc_40B13D:
push	3
mov	ecx, esi
mov	[esi], edi
mov	[esi+4], edi
mov	[esi+8], edi
call	sub_403396

loc_40B14E:		; Memory
push	[ebp+Memory]
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40B0EE endp



; Attributes: bp-based frame

sub_40B168 proc	near

Memory=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_4437C0
call	__EH_prolog
sub	esp, 10h
push	ebx
push	esi
push	edi
mov	edi, ecx
xor	esi, esi
mov	ebx, edx
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+var_10], esi
mov	[ebp+Memory], esi
mov	[ebp+var_18], esi
mov	[ebp+var_14], esi
call	sub_403396
lea	eax, [ebp+Memory]
mov	ecx, offset unk_45D8F0
push	eax
mov	[ebp+var_4], esi
push	[ebp+arg_0]
call	sub_427F75
test	al, al
jz	short loc_40B1B9
lea	eax, [ebp+Memory]
mov	ecx, edi
push	eax
call	sub_4030F2
jmp	short loc_40B1C2

loc_40B1B9:
mov	edx, ebx
mov	ecx, edi
call	sub_42DBF9

loc_40B1C2:		; Memory
push	[ebp+Memory]
call	sub_4284D8
pop	ecx
mov	eax, edi
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_40B168 endp



; Attributes: bp-based frame

sub_40B1DE proc	near

var_A4=	byte ptr -0A4h
var_84=	dword ptr -84h
var_7C=	dword ptr -7Ch
var_78=	dword ptr -78h
Memory=	dword ptr -6Ch
var_60=	byte ptr -60h
var_4C=	dword ptr -4Ch
var_40=	dword ptr -40h
var_34=	dword ptr -34h
var_30=	dword ptr -30h
lpFileName= dword ptr -24h
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_44381F
call	__EH_prolog
sub	esp, 98h
push	ebx
push	esi
mov	esi, ecx
call	sub_428327
xor	ebx, ebx
lea	ecx, [ebp+var_18]
push	3
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
mov	[ebp+var_10], ebx
call	sub_403396
lea	ecx, [ebp+var_18]
mov	[ebp+var_4], ebx
call	sub_41D79C
test	al, al
jz	loc_40B368
push	offset aLang	; "Lang\\"
lea	ecx, [ebp+var_18]
call	sub_403195
lea	edx, [ebp+var_18]
lea	ecx, [ebp+lpFileName]
push	offset a_txt	; "*.txt"
call	sub_409948
or	[ebp+var_34], 0FFFFFFFFh
push	eax
lea	ecx, [ebp+var_30]
mov	byte ptr [ebp+var_4], 2
call	sub_4030F2
push	[ebp+lpFileName] ; Memory
mov	byte ptr [ebp+var_4], 4
call	sub_4284D8
pop	ecx
lea	ecx, [ebp+var_7C]
call	sub_403079
mov	byte ptr [ebp+var_4], 5

loc_40B266:
lea	eax, [ebp+var_A4]
lea	ecx, [ebp+var_34]
push	eax
call	sub_42B72E
test	al, al
jz	loc_40B34B
mov	eax, [ebp+var_84]
shr	eax, 4
test	al, 1
jnz	short loc_40B266
lea	ecx, [ebp+var_60]
call	sub_40AE0C
lea	ecx, [ebp+var_4C]
mov	byte ptr [ebp+var_4], 6
call	sub_403079
lea	eax, [ebp+var_7C]
lea	edx, [ebp+var_18]
push	eax
lea	ecx, [ebp+lpFileName]
mov	byte ptr [ebp+var_4], 7
call	sub_40356A
lea	eax, [ebp+var_40]
push	4
push	eax
lea	ecx, [ebp+var_7C]
mov	byte ptr [ebp+var_4], 8
call	sub_40B5EF
mov	ecx, [ebp+var_40]
mov	edx, offset a_txt_0 ; ".txt"
mov	byte ptr [ebp+var_4], 9
call	sub_4282B1
cmp	eax, ebx
jnz	short loc_40B31F
mov	eax, [ebp+var_78]
lea	ecx, [ebp+var_7C]
add	eax, 0FFFFFFFCh
push	eax
lea	eax, [ebp+Memory]
push	eax
call	sub_403228
push	eax
lea	ecx, [ebp+var_4C]
mov	byte ptr [ebp+var_4], 0Ah
call	sub_40312C
mov	byte ptr [ebp+var_4], 9
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
push	[ebp+lpFileName] ; lpFileName
lea	ecx, [ebp+var_60]
call	sub_427BC6
test	al, al
jz	short loc_40B31F
lea	eax, [ebp+var_60]
mov	ecx, esi
push	eax
call	sub_40B6E7

loc_40B31F:		; Memory
push	[ebp+var_40]
call	sub_4284D8
push	[ebp+lpFileName] ; Memory
call	sub_4284D8
push	[ebp+var_4C]	; Memory
mov	byte ptr [ebp+var_4], 5
call	sub_4284D8
add	esp, 0Ch
lea	ecx, [ebp+var_60]
call	sub_40B616
jmp	loc_40B266

loc_40B34B:		; Memory
push	[ebp+var_7C]
call	sub_4284D8
push	[ebp+var_30]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
pop	ecx
pop	ecx
lea	ecx, [ebp+var_34]
call	sub_42B047

loc_40B368:		; Memory
push	[ebp+var_18]
call	sub_4284D8
pop	ecx
pop	esi
mov	ecx, [ebp+var_C]
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40B1DE endp



; Attributes: bp-based frame

sub_40B37F proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443834
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
push	dword ptr [esi+14h] ; Memory
call	sub_4284D8
pop	ecx
mov	dword ptr [esi], offset	off_44BCEC
and	[ebp+var_4], 0
mov	ecx, esi
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40B37F endp



; Attributes: bp-based frame

sub_40B3C2 proc	near

var_4= dword ptr -4
arg_0= dword ptr  8

push	ebp
mov	ebp, esp
push	ecx
push	ecx
push	ebx
mov	ebx, [ebp+arg_0]
push	esi
mov	esi, edx
push	edi
lea	edx, [ebp+arg_0]
and	word ptr [esi],	0
and	word ptr [ebx],	0
mov	edi, [ecx]
mov	ecx, edi
call	sub_428693
mov	ecx, [ebp+arg_0]
mov	[ebp+var_4], edx
cmp	edi, ecx
jz	short loc_40B419
mov	[esi], ax
mov	ax, [ecx]
test	ax, ax
jnz	short loc_40B3FC
mov	al, 1
jmp	short loc_40B428

loc_40B3FC:
cmp	ax, 2Dh
jnz	short loc_40B419
lea	esi, [ecx+2]
lea	edx, [ebp+arg_0]
mov	ecx, esi
call	sub_428693
mov	ecx, [ebp+arg_0]
mov	[ebp+var_4], edx
cmp	esi, ecx
jnz	short loc_40B41D

loc_40B419:
xor	al, al
jmp	short loc_40B428

loc_40B41D:
mov	[ebx], ax
xor	eax, eax
cmp	[ecx], ax
setz	al

loc_40B428:
pop	edi
pop	esi
pop	ebx
leave
retn	4
sub_40B3C2 endp



; Attributes: bp-based frame

sub_40B42F proc	near

var_3C=	dword ptr -3Ch
var_34=	dword ptr -34h
var_30=	dword ptr -30h
Memory=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	word ptr -10h
var_E= word ptr	-0Eh
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443860
call	__EH_prolog
sub	esp, 30h
mov	eax, [ecx]
push	ebx
push	esi
push	edi
xor	edi, edi
mov	[ebp+var_18], ecx
mov	[ecx+4], edi
mov	[eax], di
call	ds:GetSystemDefaultLangID
mov	esi, eax
call	ds:GetUserDefaultLangID
cmp	si, ax
jnz	loc_40B53E
mov	esi, eax
push	4
shr	ax, 0Ah
lea	ecx, [ebp+var_3C]
and	esi, 3FFh
mov	[ebp+var_1C], eax
call	sub_402794
mov	ebx, offset off_44BCF4
mov	[ebp+var_3C], ebx
lea	ecx, [ebp+var_3C]
mov	[ebp+var_4], edi
call	sub_40B1DE
cmp	[ebp+var_34], edi
mov	[ebp+var_14], edi
jle	loc_40B520

loc_40B49B:
mov	eax, [ebp+var_30]
mov	ecx, [ebp+var_14]
push	3
mov	edi, [eax+ecx*4]
xor	eax, eax
lea	ecx, [ebp+Memory]
mov	[ebp+Memory], eax
mov	[ebp+var_24], eax
mov	[ebp+var_20], eax
call	sub_403396
lea	eax, [ebp+Memory]
mov	ecx, edi
push	eax
push	2
mov	byte ptr [ebp+var_4], 1
call	sub_427F75
test	al, al
jz	short loc_40B504
lea	eax, [ebp+var_E]
lea	edx, [ebp+var_10]
push	eax
lea	ecx, [ebp+Memory]
call	sub_40B3C2
test	al, al
jz	short loc_40B504
cmp	[ebp+var_10], si
jnz	short loc_40B504
cmp	[ebp+var_E], 0
jnz	short loc_40B4FA
mov	ecx, [ebp+var_18]
lea	eax, [edi+14h]
push	eax
call	sub_40312C

loc_40B4FA:
mov	ax, [ebp+var_E]
cmp	word ptr [ebp+var_1C], ax
jz	short loc_40B54D

loc_40B504:		; Memory
push	[ebp+Memory]
and	byte ptr [ebp+var_4], 0
call	sub_4284D8
inc	[ebp+var_14]
pop	ecx
mov	eax, [ebp+var_14]
cmp	eax, [ebp+var_34]
jl	loc_40B49B

loc_40B520:
mov	[ebp+var_3C], ebx
mov	[ebp+var_4], 3

loc_40B52A:
lea	ecx, [ebp+var_3C]
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_3C]
call	sub_4282FE

loc_40B53E:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn

loc_40B54D:
mov	ecx, [ebp+var_18]
add	edi, 14h
push	edi
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	[ebp+var_3C], ebx
mov	[ebp+var_4], 2
jmp	short loc_40B52A
sub_40B42F endp



; Attributes: bp-based frame

sub_40B56E proc	near

Memory=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443874
call	__EH_prolog
sub	esp, 0Ch
push	ebx
xor	ebx, ebx
cmp	byte_45D8B4, bl
jz	short loc_40B5DD
mov	ecx, offset dword_45D8E0 ; cbData
call	sub_41E873
cmp	dword_45D8E4, ebx
jnz	short loc_40B5DD
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+Memory], ebx
mov	[ebp+var_14], ebx
mov	[ebp+var_10], ebx
call	sub_403396
lea	ecx, [ebp+Memory]
mov	[ebp+var_4], ebx
call	sub_40B42F
cmp	[ebp+var_14], ebx
jnz	short loc_40B5C8
push	offset asc_45B600 ; "-"
lea	ecx, [ebp+Memory]
call	sub_404722

loc_40B5C8:
lea	ecx, [ebp+Memory]
call	sub_41E80B
or	[ebp+var_4], 0FFFFFFFFh
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_40B5DD:
call	sub_40AE68
mov	ecx, [ebp+var_C]
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40B56E endp



; Attributes: bp-based frame

sub_40B5EF proc	near

var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
push	ecx
mov	eax, [ecx+4]
mov	edx, [ebp+arg_4]
and	[ebp+var_4], 0
cmp	edx, eax
jle	short loc_40B603
mov	edx, eax

loc_40B603:
sub	eax, edx
push	edx
push	eax
push	[ebp+arg_0]
call	sub_403434
mov	eax, [ebp+arg_0]
leave
retn	8
sub_40B5EF endp



; Attributes: bp-based frame

sub_40B616 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443888
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44BCEC
and	[ebp+var_4], 0
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40B616 endp



; Attributes: bp-based frame

sub_40B64E proc	near

Memory=	dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
push	ecx
push	ebx
mov	ebx, ecx
mov	ecx, [ebp+arg_4]
push	edi
mov	edi, [ebp+arg_0]
mov	eax, [ebx+8]
add	ecx, edi
cmp	ecx, eax
jle	short loc_40B66A
sub	eax, edi
mov	[ebp+arg_4], eax

loc_40B66A:
mov	eax, [ebp+arg_4]
test	eax, eax
jle	short loc_40B69E
push	esi
mov	esi, edi
shl	esi, 2
mov	[ebp+arg_0], eax

loc_40B67A:
mov	eax, [ebx+0Ch]
mov	ecx, [eax+esi]
test	ecx, ecx
mov	[ebp+Memory], ecx
jz	short loc_40B695
call	sub_4408D4
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_40B695:
add	esi, 4
dec	[ebp+arg_0]
jnz	short loc_40B67A
pop	esi

loc_40B69E:
push	[ebp+arg_4]
mov	ecx, ebx
push	edi
call	sub_42847F
pop	edi
pop	ebx
leave
retn	8
sub_40B64E endp



; Attributes: bp-based frame

sub_40B6AF proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_44389C
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44BCF4
and	[ebp+var_4], 0
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40B6AF endp



; Attributes: bp-based frame

sub_40B6E7 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_4438BA
call	__EH_prolog
push	ecx
push	ebx
push	esi
mov	ebx, ecx
push	20h		; Size
call	sub_4284B1
mov	esi, eax
pop	ecx
mov	[ebp+var_10], esi
and	[ebp+var_4], 0
test	esi, esi
jz	short loc_40B72A
push	edi
mov	edi, [ebp+arg_0]
push	edi
mov	ecx, esi
call	sub_40B809
add	edi, 14h
lea	ecx, [esi+14h]
push	edi
mov	byte ptr [ebp+var_4], 1
call	sub_4030F2
pop	edi
jmp	short loc_40B72C

loc_40B72A:
xor	esi, esi

loc_40B72C:
or	[ebp+var_4], 0FFFFFFFFh
push	esi
mov	ecx, ebx
call	sub_429907
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_40B6E7 endp



; Attributes: bp-based frame

sub_40B748 proc	near

Memory=	dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
push	ecx
push	ebx
mov	ebx, ecx
mov	ecx, [ebp+arg_4]
push	edi
mov	edi, [ebp+arg_0]
mov	eax, [ebx+8]
add	ecx, edi
cmp	ecx, eax
jle	short loc_40B764
sub	eax, edi
mov	[ebp+arg_4], eax

loc_40B764:
mov	eax, [ebp+arg_4]
test	eax, eax
jle	short loc_40B798
push	esi
mov	esi, edi
shl	esi, 2
mov	[ebp+arg_0], eax

loc_40B774:
mov	eax, [ebx+0Ch]
mov	ecx, [eax+esi]
test	ecx, ecx
mov	[ebp+Memory], ecx
jz	short loc_40B78F
call	sub_40B37F
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_40B78F:
add	esi, 4
dec	[ebp+arg_0]
jnz	short loc_40B774
pop	esi

loc_40B798:
push	[ebp+arg_4]
mov	ecx, ebx
push	edi
call	sub_42847F
pop	edi
pop	ebx
leave
retn	8
sub_40B748 endp




; int __thiscall sub_40B7A9(void *Memory, char)
sub_40B7A9 proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_40B616
test	[esp+4+arg_0], 1
jz	short loc_40B7BF
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_40B7BF:
mov	eax, esi
pop	esi
retn	4
sub_40B7A9 endp




; int __thiscall sub_40B7C5(void *Memory, char)
sub_40B7C5 proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_40B6AF
test	[esp+4+arg_0], 1
jz	short loc_40B7DB
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_40B7DB:
mov	eax, esi
pop	esi
retn	4
sub_40B7C5 endp




sub_40B7E1 proc	near

arg_0= word ptr	 4
arg_4= dword ptr  8

mov	edx, [ecx]
mov	eax, [esp+arg_4]
lea	eax, [edx+eax*2]

loc_40B7EA:
mov	cx, [eax]
cmp	cx, [esp+arg_0]
jz	short loc_40B7FD
test	cx, cx
jz	short loc_40B803
inc	eax
inc	eax
jmp	short loc_40B7EA

loc_40B7FD:
sub	eax, edx
sar	eax, 1
jmp	short locret_40B806

loc_40B803:
or	eax, 0FFFFFFFFh

locret_40B806:
retn	8
sub_40B7E1 endp



; Attributes: bp-based frame

sub_40B809 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_4438CC
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
xor	eax, eax
mov	[ebp+var_10], esi
mov	[esi+4], eax
mov	[esi+8], eax
mov	[esi+0Ch], eax
mov	dword ptr [esi+10h], 4
mov	[ebp+var_4], eax
mov	dword ptr [esi], offset	off_44BCEC
call	sub_428327
push	[ebp+arg_0]
mov	ecx, esi
call	sub_40B855
mov	ecx, [ebp+var_C]
mov	eax, esi
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_40B809 endp




sub_40B855 proc	near

arg_0= dword ptr  4

push	ebx
push	ebp
mov	ebp, [esp+8+arg_0]
push	esi
mov	esi, ecx
push	edi
mov	edi, [ebp+8]
mov	eax, [esi+8]
add	eax, edi
push	eax
call	sub_428378
xor	ebx, ebx
test	edi, edi
jle	short loc_40B885

loc_40B873:
mov	eax, [ebp+0Ch]
mov	ecx, esi
push	dword ptr [eax+ebx*4]
call	sub_40B88E
inc	ebx
cmp	ebx, edi
jl	short loc_40B873

loc_40B885:
mov	eax, esi
pop	edi
pop	esi
pop	ebp
pop	ebx
retn	4
sub_40B855 endp



; Attributes: bp-based frame

sub_40B88E proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset unknown_libname_15 ; Microsoft VisualC 2-11/net runtime
call	__EH_prolog
push	ecx
push	esi
push	edi
mov	edi, ecx
push	10h		; Size
call	sub_4284B1
mov	esi, eax
pop	ecx
mov	[ebp+var_10], esi
and	[ebp+var_4], 0
test	esi, esi
jz	short loc_40B8C7
mov	eax, [ebp+arg_0]
mov	ecx, [eax]
add	eax, 4
mov	[esi], ecx
push	eax
lea	ecx, [esi+4]
call	sub_4030F2
jmp	short loc_40B8C9

loc_40B8C7:
xor	esi, esi

loc_40B8C9:
or	[ebp+var_4], 0FFFFFFFFh
push	esi
mov	ecx, edi
call	sub_429907
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_40B88E endp



; Attributes: bp-based frame

sub_40B8E5 proc	near

lParam=	dword ptr -80h
var_74=	dword ptr -74h
var_70=	dword ptr -70h
var_58=	dword ptr -58h
var_4C=	dword ptr -4Ch
Memory=	dword ptr -40h
var_34=	dword ptr -34h
var_28=	dword ptr -28h
var_1C=	byte ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443914
call	__EH_prolog
sub	esp, 74h
push	ebx
push	esi
push	edi
mov	edi, ecx
mov	eax, edi
push	3
neg	eax
lea	esi, [edi+4]
mov	byte ptr [edi+8], 1
sbb	eax, eax
mov	edx, offset unk_45B610
and	eax, esi
mov	ecx, [eax]
call	sub_40B00D
call	sub_43A8E0
xor	ecx, ecx
mov	ebx, ds:CheckDlgButton
test	al, al
setnz	cl
push	ecx		; uCheck
push	3F2h		; nIDButton
push	dword ptr [esi]	; hDlg
call	ebx ; CheckDlgButton
lea	ecx, [ebp+var_1C]
call	sub_4388DF
xor	eax, eax
cmp	[ebp+var_1C], al
setnz	al
push	eax		; uCheck
push	3F3h		; nIDButton
push	dword ptr [esi]	; hDlg
call	ebx ; CheckDlgButton
push	3FEh		; nIDDlgItem
push	dword ptr [esi]	; hDlg
call	ds:GetDlgItem
mov	ebx, ds:SendMessageA
push	24h		; lParam
lea	esi, [edi+0Ch]
push	24h		; wParam
push	1036h		; Msg
push	eax		; hWnd
mov	[esi], eax
call	ebx ; SendMessageA
push	64h		; int
push	offset word_45D498 ; int
push	0		; wParam
mov	ecx, esi
call	sub_42FE38
and	[ebp+var_14], 0
mov	eax, offset unk_45B638
mov	[ebp+var_10], eax
jmp	short loc_40B98F

loc_40B98C:
mov	eax, [ebp+var_10]

loc_40B98F:
push	dword ptr [eax-4]
mov	edx, [eax-8]
lea	ecx, [ebp+var_28]
call	sub_40B168
mov	eax, [ebp+var_10]
and	[ebp+var_4], 0
cmp	dword ptr [eax], 40h
jnz	short loc_40B9B6
push	offset asc_45B71C ; " >"
lea	ecx, [ebp+var_28]
call	sub_403195

loc_40B9B6:
mov	eax, [ebp+var_10]
mov	eax, [eax-8]
sub	eax, 9Ah
jz	loc_40BA4C
dec	eax
dec	eax
jz	short loc_40B9D4
sub	eax, 4
jnz	loc_40BA91

loc_40B9D4:
push	2000141h
mov	edx, 0ABh
lea	ecx, [ebp+var_34]
call	sub_40B168
mov	eax, [ebp+var_10]
mov	byte ptr [ebp+var_4], 3
mov	eax, [eax]
cmp	eax, 200h
jz	short loc_40BA12
cmp	eax, 800h
jz	short loc_40BA12
cmp	eax, 1000h
jz	short loc_40BA0B
cmp	eax, 2000h
jnz	short loc_40BA1F

loc_40BA0B:		; ".zip"
push	offset a_zip
jmp	short loc_40BA17

loc_40BA12:		; ".7z"
push	offset a_7z

loc_40BA17:
lea	ecx, [ebp+var_34]
call	sub_403195

loc_40BA1F:
lea	eax, [ebp+var_34]
lea	edx, [ebp+var_28]
push	eax
lea	ecx, [ebp+Memory]
call	sub_4073D8
push	eax
lea	ecx, [ebp+var_28]
mov	byte ptr [ebp+var_4], 4
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
and	byte ptr [ebp+var_4], 0
push	[ebp+var_34]
jmp	short loc_40BA8A

loc_40BA4C:
push	2000140h
mov	edx, 0AAh
lea	ecx, [ebp+var_58]
call	sub_40B168
push	eax
lea	edx, [ebp+var_28]
lea	ecx, [ebp+var_4C]
mov	byte ptr [ebp+var_4], 1
call	sub_4073D8
push	eax
lea	ecx, [ebp+var_28]
mov	byte ptr [ebp+var_4], 2
call	sub_40312C
push	[ebp+var_4C]	; Memory
call	sub_4284D8
and	byte ptr [ebp+var_4], 0
push	[ebp+var_58]	; Memory

loc_40BA8A:
call	sub_4284D8
pop	ecx
pop	ecx

loc_40BA91:
push	[ebp+var_28]
mov	ecx, esi
push	[ebp+var_14]
call	sub_42FE6D
mov	edx, [ebp+var_10]
mov	ecx, [ebp+var_18]
mov	[ebp+var_70], 0F000h
test	[edx], ecx
setnz	cl
xor	edx, edx
test	cl, cl
lea	ecx, [ebp+lParam]
setnz	dl
push	ecx		; lParam
push	eax		; wParam
inc	edx
push	102Bh		; Msg
push	dword ptr [esi]	; hWnd
shl	edx, 0Ch
mov	[ebp+var_74], edx
call	ebx ; SendMessageA
push	[ebp+var_28]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
add	[ebp+var_10], 0Ch
inc	[ebp+var_14]
cmp	[ebp+var_10], offset aLugins7ZipOpti ; "lugins/7-zip/options.htm#system"
pop	ecx
jl	loc_40B98C
push	0FFFFh		; lParam
push	0		; wParam
push	101Eh		; Msg
push	dword ptr [esi]	; hWnd
call	ebx ; SendMessageA
and	byte ptr [edi+8], 0
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	al, 1
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40B8E5 endp



; Attributes: bp-based frame

sub_40BB12 proc	near

var_8= byte ptr	-8
var_4= dword ptr -4

push	ebp
mov	ebp, esp
push	ecx
push	ecx
push	ebx
mov	ebx, ecx
mov	eax, ebx
push	esi
neg	eax
lea	esi, [ebx+4]
push	edi
sbb	eax, eax
mov	edi, ds:IsDlgButtonChecked
and	eax, esi
push	3F2h		; nIDButton
mov	eax, [eax]
mov	dword_45D908, eax
push	dword ptr [esi]	; hDlg
call	edi ; IsDlgButtonChecked
cmp	eax, 1
jnz	short loc_40BB4E
call	sub_40D0D1
call	sub_43AD0F
jmp	short loc_40BB58

loc_40BB4E:
call	sub_40D1D2
call	sub_43AB05

loc_40BB58:		; nIDButton
push	3F3h
push	dword ptr [esi]	; hDlg
call	edi ; IsDlgButtonChecked
dec	eax
mov	esi, offset unk_45B638
neg	eax
sbb	al, al
inc	al
xor	edi, edi
mov	[ebp+var_8], al
mov	[ebp+var_4], edi

loc_40BB75:		; lParam
push	0F000h
push	edi		; wParam
push	102Ch		; Msg
push	dword ptr [ebx+0Ch] ; hWnd
call	ds:SendMessageA
shr	eax, 0Ch
dec	eax
jz	short loc_40BB94
mov	eax, [esi]
or	[ebp+var_4], eax

loc_40BB94:
add	esi, 0Ch
inc	edi
cmp	esi, offset aLugins7ZipOpti ; "lugins/7-zip/options.htm#system"
jl	short loc_40BB75
lea	ecx, [ebp+var_8]
call	sub_438863
pop	edi
pop	esi
xor	eax, eax
pop	ebx
leave
retn
sub_40BB12 endp




sub_40BBAF proc	near
mov	edx, off_45B628
xor	ecx, ecx
jmp	sub_40AD1B
sub_40BBAF endp




sub_40BBBC proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

cmp	[esp+arg_0], 3F2h
jl	short loc_40BBD9
cmp	[esp+arg_0], 3F3h
jg	short loc_40BBD9
call	sub_407229
mov	al, 1
jmp	short locret_40BBE6

loc_40BBD9:
push	[esp+arg_4]
push	[esp+4+arg_0]
call	sub_42FAE0

locret_40BBE6:
retn	8
sub_40BBBC endp




sub_40BBE9 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

mov	eax, [esp+arg_4]
mov	edx, [eax]
cmp	edx, [ecx+0Ch]
jnz	short loc_40BC02
cmp	dword ptr [eax+8], 0FFFFFF9Bh
jnz	short loc_40BC02
mov	edx, [ecx]
push	eax
call	dword ptr [edx+58h]
jmp	short locret_40BC0C

loc_40BC02:
push	eax
push	[esp+4+arg_0]
call	sub_42FF89

locret_40BC0C:
retn	8
sub_40BBE9 endp




sub_40BC0F proc	near

arg_0= dword ptr  4

cmp	byte ptr [ecx+8], 0
jnz	short ??8_ContextCallback@details@Concurrency@@QBE_NABV012@@Z_0	; Concurrency::details::_ContextCallback::operator==(Concurrency::details::_ContextCallback const &)
mov	eax, [esp+arg_0]
test	byte ptr [eax+1Ch], 8
jz	short ??8_ContextCallback@details@Concurrency@@QBE_NABV012@@Z_0	; Concurrency::details::_ContextCallback::operator==(Concurrency::details::_ContextCallback const &)
mov	edx, [eax+18h]
xor	edx, [eax+14h]
test	dh, 0F0h
jz	short ??8_ContextCallback@details@Concurrency@@QBE_NABV012@@Z_0	; Concurrency::details::_ContextCallback::operator==(Concurrency::details::_ContextCallback const &)
call	sub_407229
sub_40BC0F endp	; sp-analysis failed

; [00000005 BYTES: COLLAPSED FUNCTION Concurrency::details::_ContextCallback::operator==(Concurrency::details::_ContextCallback	const &). PRESS	KEYPAD CTRL-"+"	TO EXPAND]
jmp	$+5

loc_40BC39:
and	hMenu, 0
retn
call	nullsub_3
jmp	loc_40BC4C
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_3. PRESS KEYPAD CTRL-"+" TO EXPAND]

loc_40BC4C:
push	offset loc_40BC58
call	_atexit
pop	ecx
retn

loc_40BC58:
mov	eax, hMenu
test	eax, eax
jz	short locret_40BC6F
and	hMenu, 0
push	eax
call	ds:DestroyMenu

locret_40BC6F:
retn



sub_40BC70 proc	near

; FUNCTION CHUNK AT 0040BF80 SIZE 0000009C BYTES

push	ebx
push	esi
mov	esi, hWnd
push	edi
mov	edi, ds:GetMenu
push	esi		; hWnd
call	edi ; GetMenu
mov	ebx, eax
push	67h		; lpMenuName
push	hInstance	; hInstance
call	ds:LoadMenuA
push	eax		; hMenu
push	esi		; hWnd
call	ds:SetMenu
push	ebx		; hMenu
mov	ebx, ds:DestroyMenu
call	ebx ; DestroyMenu
push	esi		; hWnd
call	edi ; GetMenu
cmp	dword_45D8E4, 0
mov	edi, eax
jz	short loc_40BCBC
push	0
xor	edx, edx
mov	ecx, edi
call	sub_40BCF8

loc_40BCBC:		; hWnd
push	esi
call	ds:DrawMenuBar
mov	eax, hMenu
test	eax, eax
jz	short loc_40BCD6
and	hMenu, 0
push	eax		; hMenu
call	ebx ; DestroyMenu

loc_40BCD6:
call	ds:CreatePopupMenu
mov	hMenu, eax
mov	esi, eax
push	0		; nPos
push	edi		; hMenu
call	ds:GetSubMenu
mov	edx, esi
mov	ecx, eax
pop	edi
pop	esi
pop	ebx
jmp	loc_40BF80
sub_40BC70 endp



; Attributes: bp-based frame

sub_40BCF8 proc	near

var_84=	dword ptr -84h
var_78=	dword ptr -78h
var_74=	dword ptr -74h
var_6C=	dword ptr -6Ch
var_68=	dword ptr -68h
var_58=	dword ptr -58h
var_4C=	dword ptr -4Ch
Memory=	dword ptr -40h
var_34=	dword ptr -34h
var_30=	dword ptr -30h
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
item= dword ptr	-10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_443953
call	__EH_prolog
sub	esp, 78h
push	esi
mov	[ebp+var_1C], ecx
xor	esi, esi
push	edi
mov	[ebp+var_14], edx
lea	ecx, [ebp+var_84]
mov	[ebp+item], esi
call	sub_40BF33
push	16h
lea	eax, [ebp+var_84]
pop	edi
lea	ecx, [ebp+var_1C]
push	eax		; int
push	1		; char
push	esi		; item
mov	[ebp+var_4], esi
mov	[ebp+var_78], edi
mov	[ebp+var_74], esi
call	sub_42C5B2
test	al, al
jz	loc_40BF17
mov	[ebp+var_18], offset unk_44BD00

loc_40BD4A:
push	3
lea	ecx, [ebp+var_28]
mov	[ebp+var_28], esi
mov	[ebp+var_24], esi
mov	[ebp+var_20], esi
call	sub_403396
mov	ecx, [ebp+var_68]
mov	byte ptr [ebp+var_4], 1
cmp	ecx, esi
jz	loc_40BDEC
mov	eax, [ebp+var_14]
cmp	eax, 1
jnz	short loc_40BD81
cmp	[ebp+arg_0], 3
jnz	short loc_40BD81
mov	edx, 3000710h
jmp	short loc_40BDBC

loc_40BD81:
push	[ebp+item]
lea	edx, [eax+1]
call	sub_40BCF8
cmp	[ebp+var_14], 1
jnz	short loc_40BDA3
cmp	[ebp+arg_0], 2
jnz	loc_40BEC7
mov	edx, 3000451h
jmp	short loc_40BDBC

loc_40BDA3:
cmp	[ebp+var_14], esi
jnz	loc_40BEC7
mov	eax, [ebp+var_18]
cmp	eax, offset unk_44BD18
jnb	loc_40BEC7
mov	edx, [eax]

loc_40BDBC:
lea	ecx, [ebp+Memory]
call	sub_40B0EE
push	eax
lea	ecx, [ebp+var_28]
mov	byte ptr [ebp+var_4], 2
call	sub_40312C
mov	byte ptr [ebp+var_4], 1
push	[ebp+Memory]	; Memory
call	sub_4284D8
cmp	[ebp+var_24], esi
pop	ecx
jnz	loc_40BE9A
jmp	loc_40BEC7

loc_40BDEC:
mov	ecx, [ebp+var_6C]
call	sub_40BF65
cmp	eax, esi
jl	loc_40BEC7
mov	edx, ds:dword_44BD1C[eax*8]
lea	ecx, [ebp+var_4C]
call	sub_40B0EE
push	eax
lea	ecx, [ebp+var_28]
mov	byte ptr [ebp+var_4], 3
call	sub_40312C
mov	byte ptr [ebp+var_4], 1
push	[ebp+var_4C]	; Memory
call	sub_4284D8
cmp	[ebp+var_24], esi
pop	ecx
jz	loc_40BEC7
lea	eax, [ebp+var_84]
lea	ecx, [ebp+var_34]
push	eax
call	sub_4030F2
mov	eax, [ebp+var_30]
mov	byte ptr [ebp+var_4], 4
cmp	eax, esi
jz	short loc_40BE8D
mov	ecx, [ebp+var_34]
lea	eax, [ecx+eax*2-2]

loc_40BE4F:
cmp	word ptr [eax],	9
jz	short loc_40BE5D
cmp	eax, ecx
jz	short loc_40BE63
dec	eax
dec	eax
jmp	short loc_40BE4F

loc_40BE5D:
sub	eax, ecx
sar	eax, 1
jmp	short loc_40BE66

loc_40BE63:
or	eax, 0FFFFFFFFh

loc_40BE66:
cmp	eax, esi
jl	short loc_40BE8D
push	eax
lea	eax, [ebp+var_58]
push	eax
lea	ecx, [ebp+var_34]
call	sub_405246
push	eax
lea	ecx, [ebp+var_28]
mov	byte ptr [ebp+var_4], 5
call	sub_4031F2
push	[ebp+var_58]	; Memory
call	sub_4284D8
pop	ecx

loc_40BE8D:		; Memory
push	[ebp+var_34]
mov	byte ptr [ebp+var_4], 1
call	sub_4284D8
pop	ecx

loc_40BE9A:
lea	eax, [ebp+var_28]
lea	ecx, [ebp+var_84]
push	eax
call	sub_40312C
lea	eax, [ebp+var_84]
lea	ecx, [ebp+var_1C]
push	eax		; int
push	1		; char
push	[ebp+item]	; item
mov	[ebp+var_78], 10h
mov	[ebp+var_74], esi
call	sub_42C772

loc_40BEC7:		; Memory
push	[ebp+var_28]
call	sub_4284D8
push	[ebp+var_84]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
inc	[ebp+item]
add	[ebp+var_18], 4
pop	ecx
pop	ecx
lea	ecx, [ebp+var_84]
call	sub_40BF33
lea	eax, [ebp+var_84]
lea	ecx, [ebp+var_1C]
push	eax		; int
push	1		; char
push	[ebp+item]	; item
mov	[ebp+var_4], esi
mov	[ebp+var_78], edi
mov	[ebp+var_74], esi
call	sub_42C5B2
test	al, al
jnz	loc_40BD4A

loc_40BF17:		; Memory
push	[ebp+var_84]
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_40BCF8 endp




sub_40BF33 proc	near
push	esi
push	edi
mov	esi, ecx
xor	edi, edi
push	3
mov	[esi], edi
mov	[esi+4], edi
mov	[esi+8], edi
call	sub_403396
mov	[esi+0Ch], edi
mov	[esi+10h], edi
mov	[esi+14h], edi
mov	[esi+18h], edi
mov	[esi+1Ch], edi
mov	[esi+20h], edi
mov	[esi+24h], edi
mov	[esi+28h], edi
mov	eax, esi
pop	edi
pop	esi
retn
sub_40BF33 endp




sub_40BF65 proc	near
xor	eax, eax
mov	edx, offset unk_44BD18

loc_40BF6C:
cmp	[edx], ecx
jz	short locret_40BF7F
add	edx, 8
inc	eax
cmp	edx, offset off_44BEB0
jb	short loc_40BF6C
or	eax, 0FFFFFFFFh

locret_40BF7F:
retn
sub_40BF65 endp

; START	OF FUNCTION CHUNK FOR sub_40BC70

loc_40BF80:
mov	eax, offset loc_443968
call	__EH_prolog
sub	esp, 38h
push	ebx
push	esi
push	edi
mov	[ebp-14h], ecx
xor	edi, edi
lea	ecx, [ebp-44h]
mov	[ebp-18h], edx
mov	[ebp-10h], edi
xor	ebx, ebx
call	sub_40BF33
push	13h
lea	eax, [ebp-44h]
pop	esi
mov	[ebp-4], edi
push	eax		; int
push	1		; char
mov	[ebp-38h], esi
mov	[ebp-34h], edi
push	edi		; item

loc_40BFB8:
lea	ecx, [ebp-14h]
call	sub_42C5B2
test	al, al
jz	short loc_40C004
lea	eax, [ebp-44h]
lea	ecx, [ebp-18h]
push	eax		; int
push	1		; char
push	dword ptr [ebp-10h] ; item
call	sub_42C858
test	al, al
jz	short loc_40BFDC
inc	dword ptr [ebp-10h]

loc_40BFDC:		; Memory
push	dword ptr [ebp-44h]
or	dword ptr [ebp-4], 0FFFFFFFFh
call	sub_4284D8
pop	ecx
inc	ebx
lea	ecx, [ebp-44h]
call	sub_40BF33
lea	eax, [ebp-44h]
mov	[ebp-4], edi
push	eax
push	1
mov	[ebp-38h], esi
mov	[ebp-34h], edi
push	ebx
jmp	short loc_40BFB8

loc_40C004:		; Memory
push	dword ptr [ebp-44h]
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp-0Ch]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
; END OF FUNCTION CHUNK	FOR sub_40BC70


; Attributes: bp-based frame

; int __stdcall	sub_40C01C(int nPos)
sub_40C01C proc	near

var_74=	dword ptr -74h
var_68=	dword ptr -68h
var_5C=	dword ptr -5Ch
var_50=	dword ptr -50h
Memory=	dword ptr -44h
var_38=	dword ptr -38h
var_34=	dword ptr -34h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
lpNewItem= dword ptr -20h
hMenu= dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
nPos= dword ptr	 8

mov	eax, offset __ehhandler$?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@ABA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AAVios_base@2@DPADI@Z_0
call	__EH_prolog
sub	esp, 68h
push	ebx
push	esi
push	edi
mov	edi, edx
push	hWnd		; hWnd
call	ds:GetMenu
mov	esi, ds:GetSubMenu
push	[ebp+nPos]	; nPos
push	eax		; hMenu
call	esi ; GetSubMenu
cmp	eax, edi
jnz	loc_40C357
mov	eax, [ebp+nPos]
xor	ebx, ebx
cmp	eax, ebx
jnz	short loc_40C086
mov	esi, 400h

loc_40C05C:		; uFlags
push	esi
push	ebx		; uPosition
push	edi		; hMenu
call	ds:RemoveMenu
test	eax, eax
jnz	short loc_40C05C
mov	ecx, dword_45D4CC
push	edi		; hMenu
imul	ecx, 188h
add	ecx, offset unk_45D544
call	sub_4195DB
jmp	loc_40C357

loc_40C086:
cmp	eax, 1
jz	loc_40C357
cmp	eax, 2
jnz	loc_40C17D
mov	eax, dword_45D4CC
mov	esi, ds:CheckMenuRadioItem
imul	eax, 188h
push	ebx		; flags
mov	ecx, dword_45D610[eax]
mov	eax, 19Ah
add	ecx, eax
push	ecx		; check
push	19Dh		; last
push	eax		; first
push	edi		; hmenu
call	esi ; CheckMenuRadioItem
mov	eax, dword_45D4CC
imul	eax, 188h
mov	ecx, dword_45D6AC[eax]
call	sub_40C3DA
push	ebx		; flags
push	eax		; check
push	1A8h		; last
push	1A4h		; first
push	edi		; hmenu
call	esi ; CheckMenuRadioItem
cmp	dword_45D4C8, 2
mov	esi, ds:CheckMenuItem
push	8
setz	al
neg	al
sbb	eax, eax
pop	ebx
and	eax, ebx
push	eax		; uCheck
push	1C2h		; uIDCheckItem
push	edi		; hMenu
call	esi ; CheckMenuItem
mov	eax, dword_45D4CC
imul	eax, 188h
mov	al, byte_45D618[eax]
neg	al
sbb	eax, eax
and	eax, ebx
push	eax		; uCheck
push	1C1h		; uIDCheckItem
push	edi		; hMenu
call	esi ; CheckMenuItem
mov	al, byte_45D4D1
neg	al
sbb	eax, eax
and	eax, ebx
push	eax		; uCheck
push	1CDh		; uIDCheckItem
push	edi		; hMenu
call	esi ; CheckMenuItem
mov	al, byte_45D4D0
neg	al
sbb	eax, eax
and	eax, ebx
push	eax		; uCheck
push	1CCh		; uIDCheckItem
push	edi		; hMenu
call	esi ; CheckMenuItem
mov	al, byte_45D4D3
neg	al
sbb	eax, eax
and	eax, ebx
push	eax		; uCheck
push	1CEh		; uIDCheckItem
push	edi		; hMenu
call	esi ; CheckMenuItem
mov	al, byte_45D4D2
neg	al
sbb	eax, eax
and	eax, ebx
push	eax		; uCheck
push	1CFh		; uIDCheckItem
push	edi		; hMenu
call	esi ; CheckMenuItem
jmp	loc_40C357

loc_40C17D:
cmp	eax, 3
jnz	loc_40C357
push	ebx		; nPos
push	edi		; hMenu
mov	[ebp+hMenu], edi
mov	[ebp+var_10], ebx
call	esi ; GetSubMenu
mov	edi, ds:RemoveMenu
mov	esi, 400h
push	esi		; uFlags
push	ebx		; uPosition
mov	[ebp+var_10], eax
push	eax		; hMenu

loc_40C1A1:
call	edi ; RemoveMenu
cmp	eax, ebx
jz	short loc_40C1AE
push	esi
push	ebx
push	[ebp+var_10]
jmp	short loc_40C1A1

loc_40C1AE:
mov	[ebp+nPos], ebx

loc_40C1B1:
push	3000720h
mov	edx, 2D0h
lea	ecx, [ebp+lpNewItem]
call	sub_40B168
push	offset asc_45B128 ; " "
lea	ecx, [ebp+lpNewItem]
mov	[ebp+var_4], ebx
call	sub_403195
mov	eax, [ebp+nPos]
lea	ecx, [ebp+lpNewItem]
add	eax, 30h
push	eax
call	sub_40316A
lea	ecx, [ebp+lpNewItem]
push	offset off_45B75C
call	sub_403195
mov	eax, [ebp+nPos]
lea	ecx, [ebp+lpNewItem]
add	eax, 30h
push	eax
call	sub_40316A
mov	eax, [ebp+nPos]
lea	ecx, [ebp+var_10]
push	[ebp+lpNewItem]	; lpNewItem
add	eax, 2E4h
push	eax		; uIDNewItem
push	ebx		; uFlags
call	sub_42C93E
or	[ebp+var_4], 0FFFFFFFFh
push	[ebp+lpNewItem]	; Memory
call	sub_4284D8
inc	[ebp+nPos]
pop	ecx
cmp	[ebp+nPos], 0Ah
jl	short loc_40C1B1

loc_40C229:		; uFlags
push	esi
push	2		; uPosition
push	[ebp+hMenu]	; hMenu
call	edi ; RemoveMenu
cmp	eax, ebx
jnz	short loc_40C229
xor	esi, esi

loc_40C237:
lea	eax, [ebp+var_38]
push	esi
push	eax
mov	ecx, offset unk_45D4D4
call	sub_40C368
cmp	[ebp+var_34], 64h
mov	[ebp+var_4], 1
jle	loc_40C2E9
lea	eax, [ebp+var_74]
push	32h
push	eax
lea	ecx, [ebp+var_38]
call	sub_40B5EF
mov	edi, eax
push	offset a___	; " ...	"
lea	ecx, [ebp+var_68]
mov	byte ptr [ebp+var_4], 2
call	sub_403091
mov	[ebp+nPos], eax
lea	eax, [ebp+var_5C]
push	32h
push	eax
lea	ecx, [ebp+var_38]
mov	byte ptr [ebp+var_4], 3
call	sub_403228
push	[ebp+nPos]
mov	edx, eax
lea	ecx, [ebp+var_50]
mov	byte ptr [ebp+var_4], 4
call	sub_40356A
push	edi
mov	edx, eax
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 5
call	sub_40356A
push	eax
lea	ecx, [ebp+var_38]
mov	byte ptr [ebp+var_4], 6
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_50]	; Memory
call	sub_4284D8
push	[ebp+var_5C]	; Memory
call	sub_4284D8
push	[ebp+var_68]	; Memory
call	sub_4284D8
push	[ebp+var_74]	; Memory
mov	byte ptr [ebp+var_4], 1
call	sub_4284D8
add	esp, 14h

loc_40C2E9:
lea	eax, [ebp+var_38]
lea	ecx, [ebp+var_2C]
push	eax
call	sub_4030F2
cmp	[ebp+var_28], ebx
mov	byte ptr [ebp+var_4], 7
jnz	short loc_40C30B
push	offset asc_45B600 ; "-"
lea	ecx, [ebp+var_2C]
call	sub_404722

loc_40C30B:
push	offset off_45B744
lea	ecx, [ebp+var_2C]
call	sub_403195
lea	eax, [esi+30h]
lea	ecx, [ebp+var_2C]
push	eax
call	sub_40316A
lea	eax, [esi+2DAh]
lea	ecx, [ebp+hMenu]
push	[ebp+var_2C]	; lpNewItem
push	eax		; uIDNewItem
push	ebx		; uFlags
call	sub_42C93E
push	[ebp+var_2C]	; Memory
call	sub_4284D8
push	[ebp+var_38]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
inc	esi
pop	ecx
cmp	esi, 0Ah
pop	ecx
jl	loc_40C237

loc_40C357:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_40C01C endp



; Attributes: bp-based frame

sub_40C368 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_4439C8
call	__EH_prolog
push	ecx
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
mov	[ebp+var_10], ebx
push	esi		; lpCriticalSection
mov	[ebp+var_10], esi
call	ds:EnterCriticalSection
mov	eax, [ebp+arg_4]
mov	[ebp+var_4], ebx
cmp	eax, [esi+20h]
jl	short loc_40C3B2
push	edi
mov	edi, [ebp+arg_0]
push	3
mov	ecx, edi
mov	[edi], ebx
mov	[edi+4], ebx
mov	[edi+8], ebx
call	sub_403396
push	esi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	eax, edi
pop	edi
jmp	short loc_40C3CA

loc_40C3B2:
mov	ecx, [esi+24h]
push	dword ptr [ecx+eax*4]
mov	ecx, [ebp+arg_0]
call	sub_4030F2
push	esi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	eax, [ebp+arg_0]

loc_40C3CA:
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	8
sub_40C368 endp




sub_40C3DA proc	near
sub	ecx, 0
jz	short loc_40C40C
sub	ecx, 4
jz	short loc_40C406
dec	ecx
jz	short loc_40C400
dec	ecx
dec	ecx
jz	short loc_40C3FA
sub	ecx, 5
jz	short loc_40C3F4
or	eax, 0FFFFFFFFh
retn

loc_40C3F4:
mov	eax, 1A6h
retn

loc_40C3FA:
mov	eax, 1A7h
retn

loc_40C400:
mov	eax, 1A5h
retn

loc_40C406:
mov	eax, 1A4h
retn

loc_40C40C:
mov	eax, 1A8h
retn
sub_40C3DA endp



; Attributes: bp-based frame

sub_40C412 proc	near

Memory=	dword ptr -58h
var_4C=	dword ptr -4Ch
var_48=	dword ptr -48h
var_40=	dword ptr -40h
cbData=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
uPosition= dword ptr -20h
var_1C=	dword ptr -1Ch
hMenu= dword ptr -18h
item= dword ptr	-14h
var_D= byte ptr	-0Dh
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= byte ptr	 8
arg_4= byte ptr	 0Ch
arg_8= dword ptr  10h
arg_C= byte ptr	 14h

mov	eax, offset loc_4439E4
call	__EH_prolog
sub	esp, 4Ch
push	ebx
push	esi
push	edi
mov	esi, edx
mov	[ebp+hMenu], ecx
xor	ebx, ebx
push	3
lea	ecx, [ebp+cbData]
mov	[ebp+item], esi
mov	[ebp+cbData], ebx
mov	[ebp+var_28], ebx
mov	[ebp+var_24], ebx
call	sub_403396
lea	ecx, [ebp+cbData] ; cbData
mov	[ebp+var_4], ebx
call	sub_41E91F
lea	ecx, [ebp+Memory]
mov	[ebp+uPosition], esi
mov	[ebp+var_1C], ebx
call	sub_40BF33
push	13h
lea	eax, [ebp+Memory]
pop	edi
mov	byte ptr [ebp+var_4], 1
push	eax		; int
push	1		; char
mov	[ebp+var_4C], edi
mov	[ebp+var_48], ebx
push	ebx		; item
mov	esi, offset hMenu

loc_40C471:
mov	ecx, esi
call	sub_42C5B2
test	al, al
jz	loc_40C560
cmp	[ebp+arg_0], bl
mov	ecx, [ebp+var_40]
jnz	short loc_40C491
cmp	ecx, 8
jz	loc_40C531

loc_40C491:
cmp	ecx, 0F3h
jnz	short loc_40C4A2
cmp	[ebp+var_28], ebx
jz	loc_40C531

loc_40C4A2:
cmp	[ebp+arg_4], bl
jz	short loc_40C4B6
cmp	[ebp+arg_8], 1
jnz	short loc_40C4B6
cmp	[ebp+arg_C], bl
jz	short loc_40C4B6
mov	al, 1
jmp	short loc_40C4B8

loc_40C4B6:
xor	al, al

loc_40C4B8:
cmp	ecx, 0EEh
jz	short loc_40C4C8
cmp	ecx, 0EFh
jnz	short loc_40C4D0

loc_40C4C8:
cmp	al, bl
mov	[ebp+var_D], 1
jz	short loc_40C4D3

loc_40C4D0:
mov	[ebp+var_D], bl

loc_40C4D3:
push	28h
mov	edx, 0C8h
pop	ecx
call	sub_42FB0B
cmp	al, bl
jnz	short loc_40C4F2
cmp	[ebp+var_D], bl
jnz	short loc_40C531
cmp	[ebp+var_48], 800h
jz	short loc_40C531

loc_40C4F2:
lea	eax, [ebp+Memory]
lea	ecx, [ebp+hMenu]
push	eax		; int
push	1		; char
push	[ebp+item]	; item
call	sub_42C858
test	al, al
jz	short loc_40C50A
inc	[ebp+item]

loc_40C50A:
cmp	[ebp+var_D], bl
jz	short loc_40C522
mov	eax, [ebp+item]
push	401h		; uEnable
dec	eax
push	eax		; uIDEnableItem
push	[ebp+hMenu]	; hMenu
call	ds:EnableMenuItem

loc_40C522:
cmp	[ebp+var_48], 800h
jz	short loc_40C531
mov	eax, [ebp+item]
mov	[ebp+uPosition], eax

loc_40C531:		; Memory
push	[ebp+Memory]
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
inc	[ebp+var_1C]
pop	ecx
lea	ecx, [ebp+Memory]
call	sub_40BF33
lea	eax, [ebp+Memory]
mov	byte ptr [ebp+var_4], 1
push	eax
push	1
push	[ebp+var_1C]
mov	[ebp+var_4C], edi
mov	[ebp+var_48], ebx
jmp	loc_40C471

loc_40C560:		; Memory
push	[ebp+Memory]
call	sub_4284D8
mov	esi, ds:RemoveMenu
pop	ecx
mov	ebx, 400h
push	ebx		; uFlags
push	[ebp+uPosition]	; uPosition
push	[ebp+hMenu]	; hMenu

loc_40C57B:
call	esi ; RemoveMenu
test	eax, eax
jz	short loc_40C58A
push	ebx
push	[ebp+uPosition]
push	[ebp+hMenu]
jmp	short loc_40C57B

loc_40C58A:		; Memory
push	[ebp+cbData]
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	10h
sub_40C412 endp




sub_40C5A4 proc	near

var_1= byte ptr	-1

push	ecx
cmp	ecx, 3E8h
jl	short loc_40C60E
push	esi
push	ecx
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, offset unk_45D544
call	sub_41988C
mov	eax, dword_45D4CC
mov	esi, eax
imul	esi, 188h
add	esi, offset unk_45D6B4
mov	ecx, [esi]
test	ecx, ecx
jz	short loc_40C5ED
mov	eax, [ecx]
push	ecx
call	dword ptr [eax+8]
and	dword ptr [esi], 0
mov	eax, dword_45D4CC

loc_40C5ED:
imul	eax, 188h
add	eax, offset unk_45D6B8
mov	esi, eax
mov	eax, [esi]
test	eax, eax
jz	short loc_40C609
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
and	dword ptr [esi], 0

loc_40C609:
mov	al, 1
pop	esi
pop	ecx
retn

loc_40C60E:
lea	eax, [ecx-0D2h]
cmp	eax, 29h	; switch 42 cases
ja	loc_40C790	; jumptable 0040C624 default case
movzx	eax, ds:byte_40C7DC[eax]
jmp	ds:off_40C794[eax*4] ; switch jump

loc_40C62B:		; jumptable 0040C624 case 0
push	1
jmp	short loc_40C64D

loc_40C62F:		; jumptable 0040C624 case 1
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, offset unk_45D544
call	sub_4171E1
jmp	loc_40C78C	; jumptable 0040C624 case 10

loc_40C64B:		; jumptable 0040C624 case 2
push	0

loc_40C64D:
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, offset unk_45D544
call	sub_417220
jmp	loc_40C78C	; jumptable 0040C624 case 10

loc_40C669:		; jumptable 0040C624 case 11
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, offset unk_45D544
call	sub_4171AB
jmp	loc_40C78C	; jumptable 0040C624 case 10

loc_40C685:		; jumptable 0040C624 case 20
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, offset unk_45D544
call	sub_41AE8D
jmp	loc_40C78C	; jumptable 0040C624 case 10

loc_40C6A1:		; jumptable 0040C624 case 21
push	dword_45D4CC
push	0
push	0
jmp	short loc_40C6B7

loc_40C6AD:		; jumptable 0040C624 case 22
push	dword_45D4CC
push	0
push	1

loc_40C6B7:
mov	ecx, offset dword_45D4C0
call	sub_401E65
jmp	loc_40C78C	; jumptable 0040C624 case 10

loc_40C6C6:		; jumptable 0040C624 case 23
push	10h
call	ds:GetKeyState
mov	ecx, dword_45D4CC
shr	eax, 0Fh
and	al, 1
mov	[esp+4+var_1], al
setz	al
imul	ecx, 188h
push	eax
add	ecx, offset unk_45D544
call	sub_419DE1
jmp	loc_40C78C	; jumptable 0040C624 case 10

loc_40C6F7:		; jumptable 0040C624 case 32
mov	ecx, offset dword_45D4C0
call	sub_410BFA
jmp	loc_40C78C	; jumptable 0040C624 case 10

loc_40C706:		; jumptable 0040C624 case 33
mov	ecx, offset dword_45D4C0
call	sub_41496D
jmp	short loc_40C78C ; jumptable 0040C624 case 10

loc_40C712:		; jumptable 0040C624 case 28
mov	ecx, offset dword_45D4C0
call	sub_41C3F6
jmp	short loc_40C78C ; jumptable 0040C624 case 10

loc_40C71E:		; jumptable 0040C624 case 29
mov	ecx, offset dword_45D4C0
call	sub_41CD07
jmp	short loc_40C78C ; jumptable 0040C624 case 10

loc_40C72A:		; jumptable 0040C624 case 30
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, offset unk_45D544
call	sub_418B0B
jmp	short loc_40C78C ; jumptable 0040C624 case 10

loc_40C743:		; jumptable 0040C624 case 31
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, offset unk_45D544
call	sub_41AEAE
jmp	short loc_40C78C ; jumptable 0040C624 case 10

loc_40C75C:		; jumptable 0040C624 case 40
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, offset unk_45D544
call	sub_41A83F
jmp	short loc_40C78C ; jumptable 0040C624 case 10

loc_40C775:		; jumptable 0040C624 case 41
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, offset unk_45D544
call	sub_41AC27

loc_40C78C:		; jumptable 0040C624 case 10
mov	al, 1
pop	ecx
retn

loc_40C790:		; jumptable 0040C624 default case
xor	al, al
pop	ecx
retn
sub_40C5A4 endp

off_40C794 dd offset loc_40C62B	; jump table for switch	statement
dd offset loc_40C62F
dd offset loc_40C64B
dd offset loc_40C78C
dd offset loc_40C669
dd offset loc_40C685
dd offset loc_40C6A1
dd offset loc_40C6AD
dd offset loc_40C6C6
dd offset loc_40C712
dd offset loc_40C71E
dd offset loc_40C72A
dd offset loc_40C743
dd offset loc_40C6F7
dd offset loc_40C706
dd offset loc_40C75C
dd offset loc_40C775
dd offset loc_40C790
byte_40C7DC db	    0,	   1,	  2,   11h ; indirect table for	switch statement
db    11h,   11h,   11h,   11h
db    11h,   11h,     3,     4
db    11h,   11h,   11h,   11h
db    11h,   11h,   11h,   11h
db	5,     6,     7,     8
db    11h,   11h,   11h,   11h
db	9,   0Ah,   0Bh,   0Ch
db    0Dh,   0Eh,   11h,   11h
db    11h,   11h,   11h,   11h
db    0Fh,   10h


; Attributes: bp-based frame

sub_40C806 proc	near

var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	byte ptr -14h
var_13=	byte ptr -13h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443A08
call	__EH_prolog
sub	esp, 10h
push	ebx
push	esi
push	edi
mov	esi, edx
mov	edi, ecx
mov	ecx, esi
call	sub_40C5A4
test	al, al
jnz	loc_40CCA9
mov	eax, 1A7h
cmp	esi, eax
jg	loc_40C9FF
jz	loc_40C9F8
add	eax, 0FFFFFFA6h
cmp	esi, eax
jg	loc_40C943
jz	loc_40C927
mov	eax, esi
sub	eax, 8
jz	loc_40C90C
sub	eax, 138h
jz	loc_40C8F0
dec	eax
jz	short loc_40C8D4
dec	eax
jz	short loc_40C8B8
sub	eax, 8
jz	short loc_40C899
dec	eax
jz	short loc_40C895
dec	eax
jnz	loc_40CB45
mov	ecx, dword_45D4CC
mov	esi, offset unk_45D544
imul	ecx, 188h
add	ecx, esi
call	sub_41BA46
jmp	loc_40C984

loc_40C895:
push	0
jmp	short loc_40C89B

loc_40C899:
push	1

loc_40C89B:
mov	ecx, dword_45D4CC
mov	esi, offset unk_45D544
imul	ecx, 188h
add	ecx, esi
call	sub_41BA14
jmp	loc_40C984

loc_40C8B8:
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, offset unk_45D544
call	nullsub_2
jmp	loc_40CCA9

loc_40C8D4:
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, offset unk_45D544
call	sub_41913D
jmp	loc_40CCA9

loc_40C8F0:
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, offset unk_45D544
call	nullsub_2
jmp	loc_40CCA9

loc_40C90C:
mov	esi, ds:SendMessageA
xor	ebx, ebx
push	edi		; lParam
push	ebx		; wParam
push	6		; Msg
push	edi		; hWnd
call	esi ; SendMessageA
push	ebx		; lParam
push	ebx		; wParam
push	10h		; Msg
push	edi		; hWnd
call	esi ; SendMessageA
jmp	loc_40CCA9

loc_40C927:
push	1

loc_40C929:
mov	ecx, dword_45D4CC
mov	esi, offset unk_45D544
imul	ecx, 188h
add	ecx, esi
call	sub_41B6E1
jmp	short loc_40C984

loc_40C943:
cmp	esi, 19Dh
jg	loc_40C9D0
cmp	esi, 19Ah
jge	short loc_40C9A4
mov	eax, esi
sub	eax, 14Eh
jz	short loc_40C9A0
dec	eax
jz	short loc_40C99C
dec	eax
jnz	loc_40CB45
push	0

loc_40C96C:
mov	ecx, dword_45D4CC
mov	esi, offset unk_45D544
imul	ecx, 188h
add	ecx, esi
call	sub_41B832

loc_40C984:
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, esi
call	sub_40E930
jmp	loc_40CCA9

loc_40C99C:
push	1
jmp	short loc_40C96C

loc_40C9A0:
push	0
jmp	short loc_40C929

loc_40C9A4:
lea	eax, [esi-19Ah]
cmp	eax, 4
jnb	loc_40CCA9
mov	ecx, dword_45D4CC
push	eax
imul	ecx, 188h
add	ecx, offset unk_45D544
call	sub_40E8BF
jmp	loc_40CCA9

loc_40C9D0:
mov	eax, esi
sub	eax, 1A4h
jz	short loc_40C9F1
dec	eax
jz	short loc_40C9EA
dec	eax
jnz	loc_40CB45
push	0Ch
jmp	loc_40CADC

loc_40C9EA:
push	5
jmp	loc_40CADC

loc_40C9F1:
push	4
jmp	loc_40CADC

loc_40C9F8:
push	7
jmp	loc_40CADC

loc_40C9FF:
mov	eax, 1CCh
cmp	esi, eax
jg	loc_40CB0C
jz	loc_40CAF8
mov	eax, esi
sub	eax, 1A8h
jz	loc_40CADA
sub	eax, 6
jz	loc_40CABE
dec	eax
jz	short loc_40CAA2
dec	eax
jz	short loc_40CA86
sub	eax, 8
jz	short loc_40CA6A
sub	eax, 9
jz	short loc_40CA4E
dec	eax
jnz	loc_40CB45
mov	ecx, offset dword_45D4C0
call	sub_4017B2
jmp	loc_40CCA9

loc_40CA4E:
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, offset unk_45D544
call	sub_40E902
jmp	loc_40CCA9

loc_40CA6A:
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, offset unk_45D544
call	sub_417B11
jmp	loc_40CCA9

loc_40CA86:
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, offset unk_45D544
call	sub_413A0F
jmp	loc_40CCA9

loc_40CAA2:
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, offset unk_45D544
call	sub_413C6E
jmp	loc_40CCA9

loc_40CABE:
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, offset unk_45D544
call	sub_413FB8
jmp	loc_40CCA9

loc_40CADA:		; int
push	0

loc_40CADC:
mov	ecx, dword_45D4CC
imul	ecx, 188h
add	ecx, offset unk_45D544 ; wParam
call	sub_41BE7A
jmp	loc_40CCA9

loc_40CAF8:
cmp	byte_45D4D0, 0
setz	al
mov	byte_45D4D0, al
jmp	loc_40CC9F

loc_40CB0C:
mov	eax, esi
sub	eax, 1CDh
jz	loc_40CC90
dec	eax
jz	loc_40CC7F
dec	eax
jz	loc_40CC6E
sub	eax, 2Fh
jz	loc_40CC5F
dec	eax
jz	loc_40CBE9
sub	eax, 63h
jz	loc_40CBD7
sub	eax, 0Ah
jz	short loc_40CBB2

loc_40CB45:
cmp	esi, 2DAh
jb	short loc_40CB78
cmp	esi, 2E3h
ja	short loc_40CB78
mov	ecx, dword_45D4CC
add	esi, 0FFFFFD26h
imul	ecx, 188h
push	esi
add	ecx, offset unk_45D544
call	sub_41314E
jmp	loc_40CCA9

loc_40CB78:
cmp	esi, 2E4h
jb	short loc_40CBAB
cmp	esi, 2EDh
ja	short loc_40CBAB
mov	ecx, dword_45D4CC
add	esi, 0FFFFFD1Ch
imul	ecx, 188h
push	esi
add	ecx, offset unk_45D544
call	sub_4130B3
jmp	loc_40CCA9

loc_40CBAB:
xor	al, al
jmp	loc_40CCAB

loc_40CBB2:
and	[ebp+var_18], 0
mov	[ebp+var_1C], offset off_44BEB0
push	edi		; hWndParent
push	1FBh		; lpTemplateName
lea	ecx, [ebp+var_1C]
mov	[ebp+var_4], 2
call	sub_42FCF7
jmp	loc_40CCA9

loc_40CBD7:
mov	edx, off_45B724
xor	ecx, ecx
call	sub_40AD1B
jmp	loc_40CCA9

loc_40CBE9:
mov	al, byte_45D6C8
xor	ebx, ebx
mov	byte ptr [ebp+var_1C], al
mov	al, byte_45D6C9
mov	[ebp+var_18], offset unk_45D544
mov	byte ptr [ebp+var_1C+1], al
mov	byte_45D6C8, bl
mov	byte_45D6C9, bl
mov	al, byte_45D850
mov	[ebp+var_4], ebx
mov	[ebp+var_14], al
mov	al, byte_45D851
mov	[ebp+var_10], offset unk_45D6CC
mov	[ebp+var_13], al
mov	byte_45D850, bl
mov	byte_45D851, bl
mov	byte ptr [ebp+var_4], 1
call	sub_433355
mov	al, [ebp+var_14]
mov	byte_45D850, al
mov	al, [ebp+var_13]
mov	byte_45D851, al
mov	al, byte ptr [ebp+var_1C]
mov	byte_45D6C8, al
mov	al, byte ptr [ebp+var_1C+1]
mov	byte_45D6C9, al
jmp	short loc_40CCA9

loc_40CC5F:
mov	edx, hInstance
mov	ecx, edi
call	sub_40D1DC
jmp	short loc_40CCA9

loc_40CC6E:
cmp	byte_45D4D2, 0
setz	al
mov	byte_45D4D2, al
jmp	short loc_40CC9F

loc_40CC7F:
cmp	byte_45D4D3, 0
setz	al
mov	byte_45D4D3, al
jmp	short loc_40CC9F

loc_40CC90:
cmp	byte_45D4D1, 0
setz	al
mov	byte_45D4D1, al

loc_40CC9F:
mov	ecx, offset dword_45D4C0
call	sub_4014E6

loc_40CCA9:
mov	al, 1

loc_40CCAB:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40C806 endp



; Attributes: bp-based frame

sub_40CCBA proc	near

var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_443A1C
call	__EH_prolog
push	esi
mov	esi, [ebp+arg_0]
push	edi
lea	edi, [esi+190h]
mov	ecx, edi
call	sub_422D48
test	eax, eax
jnz	short loc_40CD23
add	esi, 60h
push	esi		; lpCriticalSection
mov	[ebp+arg_0], esi
call	ds:EnterCriticalSection
mov	eax, [ebp+arg_4]
and	[ebp+var_4], 0
test	eax, eax
jz	short loc_40CD07
push	dword ptr [eax+4]
mov	ecx, edi
push	dword ptr [eax]
call	sub_4039E2
push	0
mov	ecx, edi
call	sub_40CD33

loc_40CD07:
mov	eax, [ebp+arg_8]
test	eax, eax
jz	short loc_40CD1A
push	dword ptr [eax+4]
mov	ecx, edi
push	dword ptr [eax]
call	sub_40CD57

loc_40CD1A:		; lpCriticalSection
push	esi
call	ds:LeaveCriticalSection
xor	eax, eax

loc_40CD23:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	0Ch
sub_40CCBA endp




sub_40CD33 proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
push	edi
lea	edi, [esi+94h]
push	edi		; lpCriticalSection
call	ds:EnterCriticalSection
mov	al, [esp+8+arg_0]
push	edi		; lpCriticalSection
mov	[esi+2], al
call	ds:LeaveCriticalSection
pop	edi
pop	esi
retn	4
sub_40CD33 endp




sub_40CD57 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	esi
mov	esi, ecx
push	edi
lea	edi, [esi+94h]
push	edi		; lpCriticalSection
call	ds:EnterCriticalSection
mov	eax, [esp+8+arg_0]
push	edi		; lpCriticalSection
mov	[esi+8], eax
mov	eax, [esp+0Ch+arg_4]
mov	[esi+0Ch], eax
call	ds:LeaveCriticalSection
pop	edi
pop	esi
retn	8
sub_40CD57 endp



; Attributes: bp-based frame

sub_40CD82 proc	near

var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_443A30
call	__EH_prolog
push	esi
mov	esi, [ebp+arg_0]
push	edi
lea	edi, [esi+190h]
mov	ecx, edi
call	sub_422D48
test	eax, eax
jnz	short loc_40CDE2
add	esi, 60h
push	esi		; lpCriticalSection
mov	[ebp+arg_0], esi
call	ds:EnterCriticalSection
mov	eax, [ebp+arg_4]
and	[ebp+var_4], 0
test	eax, eax
jz	short loc_40CDC6
push	dword ptr [eax+4]
mov	ecx, edi
push	dword ptr [eax]
call	sub_403EC6

loc_40CDC6:
mov	eax, [ebp+arg_8]
test	eax, eax
jz	short loc_40CDD9
push	dword ptr [eax+4]
mov	ecx, edi
push	dword ptr [eax]
call	sub_403AA0

loc_40CDD9:		; lpCriticalSection
push	esi
call	ds:LeaveCriticalSection
xor	eax, eax

loc_40CDE2:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	0Ch
sub_40CD82 endp




sub_40CDF2 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch

mov	eax, [esp+arg_0]
push	esi
lea	esi, [eax+184h]
mov	ecx, esi
call	sub_422D48
test	eax, eax
jnz	short loc_40CE19
push	[esp+4+arg_8]
mov	ecx, esi
push	[esp+8+arg_4]
call	sub_40CD57
xor	eax, eax

loc_40CE19:
pop	esi
retn	0Ch
sub_40CDF2 endp




sub_40CE1D proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

mov	eax, [esp+arg_0]
push	esi
lea	esi, [eax+184h]
mov	ecx, esi
call	sub_422D48
test	eax, eax
jnz	short loc_40CE49
mov	eax, [esp+4+arg_4]
test	eax, eax
jz	short loc_40CE47
push	dword ptr [eax+4]
mov	ecx, esi
push	dword ptr [eax]
call	sub_403AA0

loc_40CE47:
xor	eax, eax

loc_40CE49:
pop	esi
retn	8
sub_40CE1D endp



; Attributes: bp-based frame

sub_40CE4D proc	near

pvarg= VARIANTARG ptr -1Ch
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_443A44
call	__EH_prolog
sub	esp, 10h
xor	ecx, ecx
mov	word ptr [ebp+pvarg.anonymous_0], cx
mov	word ptr [ebp+pvarg.anonymous_0+2], cx
mov	eax, [ebp+arg_0]
mov	[ebp+var_4], ecx
cmp	[eax+74h], cl
jz	short loc_40CE7A
cmp	[ebp+arg_4], 4
jnz	short loc_40CEE9
push	dword ptr [eax+78h]
jmp	short loc_40CEE1

loc_40CE7A:
mov	ecx, [ebp+arg_4]
sub	ecx, 4
jz	short loc_40CEDE
dec	ecx
dec	ecx
jz	short loc_40CECB
dec	ecx
jz	short loc_40CEBB
dec	ecx
dec	ecx
jz	short loc_40CEAE
dec	ecx
jz	short loc_40CEA9
dec	ecx
jz	short loc_40CEA4
dec	ecx
jnz	short loc_40CEE9
add	eax, 3Ch

loc_40CE99:
push	eax
lea	ecx, [ebp+pvarg]
call	sub_42CDB9
jmp	short loc_40CEE9

loc_40CEA4:
add	eax, 34h
jmp	short loc_40CE99

loc_40CEA9:
add	eax, 2Ch
jmp	short loc_40CE99

loc_40CEAE:
push	dword ptr [eax+44h]
lea	ecx, [ebp+pvarg]
call	sub_42CD72
jmp	short loc_40CEE9

loc_40CEBB:
push	dword ptr [eax+28h]
lea	ecx, [ebp+pvarg]
push	dword ptr [eax+24h]
call	sub_42CD92
jmp	short loc_40CEE9

loc_40CECB:
mov	eax, [eax+44h]
lea	ecx, [ebp+pvarg]
shr	eax, 4
and	al, 1
push	eax
call	sub_42CD4D
jmp	short loc_40CEE9

loc_40CEDE:		; psz
push	dword ptr [eax+4Ch]

loc_40CEE1:
lea	ecx, [ebp+pvarg]
call	sub_42CC9E

loc_40CEE9:		; pvarg
push	[ebp+arg_8]
lea	ecx, [ebp+pvarg] ; Src
call	sub_42CE85
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+pvarg] ; pvarg
call	sub_42CDE1
mov	ecx, [ebp+var_C]
xor	eax, eax
mov	large fs:0, ecx
leave
retn	0Ch
sub_40CE4D endp



; Attributes: bp-based frame

sub_40CF10 proc	near

var_50=	byte ptr -50h
Memory=	dword ptr -28h
lpFileName= dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_443A72
call	__EH_prolog
sub	esp, 44h
mov	eax, [ebp+arg_8]
push	ebx
mov	ebx, [ebp+arg_0]
and	dword ptr [eax], 0
cmp	byte ptr [ebx+74h], 0
jz	short loc_40CF35
push	1
pop	eax
jmp	loc_40D009

loc_40CF35:
push	esi
push	edi
lea	ecx, [ebp+Memory]
call	sub_403079
push	[ebp+arg_4]
and	[ebp+var_4], 0
lea	edx, [ebx+14h]
lea	ecx, [ebp+lpFileName]
call	sub_409948
push	[ebp+lpFileName] ; lpFileName
lea	ecx, [ebp+var_50]
mov	byte ptr [ebp+var_4], 1
call	sub_42B49E
test	al, al
jnz	short loc_40CF6C

loc_40CF64:
push	1
pop	esi
jmp	loc_40CFF3

loc_40CF6C:
lea	eax, [ebx+24h]
push	0Ah
pop	ecx
lea	esi, [ebp+var_50]
mov	edi, eax
rep movsd
lea	ecx, [ebp+Memory]
push	ecx
lea	ecx, [eax+28h]
call	sub_40312C
mov	eax, [ebx+44h]
shr	eax, 4
test	al, 1
jnz	short loc_40CF64
push	40h		; Size
call	sub_4284B1
pop	ecx
mov	[ebp+arg_0], eax
test	eax, eax
mov	byte ptr [ebp+var_4], 2
jz	short loc_40CFAD
mov	ecx, eax
call	sub_4307E3
mov	esi, eax
jmp	short loc_40CFAF

loc_40CFAD:
xor	esi, esi

loc_40CFAF:
test	esi, esi
mov	byte ptr [ebp+var_4], 1
mov	[ebp+arg_0], esi
jz	short loc_40CFC0
mov	eax, [esi]
push	esi
call	dword ptr [eax+4]

loc_40CFC0:		; lpFileName
push	[ebp+lpFileName]
mov	ecx, esi
mov	byte ptr [ebp+var_4], 3
call	sub_4307C1
test	al, al
jnz	short loc_40CFEC
call	ds:GetLastError
test	esi, esi
mov	edi, eax
mov	byte ptr [ebp+var_4], 1
jz	short loc_40CFE8
mov	eax, [esi]
push	esi
call	dword ptr [eax+8]

loc_40CFE8:
mov	esi, edi
jmp	short loc_40CFF3

loc_40CFEC:
mov	eax, [ebp+arg_8]
mov	[eax], esi
xor	esi, esi

loc_40CFF3:		; Memory
push	[ebp+lpFileName]
call	sub_4284D8
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, esi
pop	ecx
pop	edi
pop	esi

loc_40D009:
mov	ecx, [ebp+var_C]
pop	ebx
mov	large fs:0, ecx
leave
retn	0Ch
sub_40CF10 endp



; Attributes: bp-based frame

sub_40D018 proc	near

var_24=	byte ptr -24h
Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_443A84
call	__EH_prolog
sub	esp, 18h
push	edi
mov	edi, [ebp+arg_0]
mov	byte ptr [edi+79h], 1
cmp	byte ptr [edi+78h], 0
jnz	short loc_40D0A6
push	esi
lea	ecx, [ebp+var_24]
call	sub_404349
and	[ebp+var_4], 0
lea	esi, [edi+90h]
lea	ecx, [esi+0E4h]
call	sub_4418F0
mov	ecx, [esi+0E8h]	; hHandle
call	sub_441880
neg	esi
lea	eax, [edi+94h]
lea	ecx, [ebp+var_24]
sbb	esi, esi
and	esi, eax
push	dword ptr [esi]	; hWndParent
push	1F5h		; lpTemplateName
call	sub_42FCF7
cmp	eax, 2
pop	esi
jnz	short loc_40D08D
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, 80004004h
jmp	short loc_40D0C2

loc_40D08D:
lea	eax, [ebp+Memory]
lea	ecx, [edi+7Ch]
push	eax
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [edi+78h], 1
call	sub_4284D8
pop	ecx

loc_40D0A6:		; psz
push	dword ptr [edi+7Ch]
call	ds:SysAllocString
mov	ecx, [ebp+arg_4]
mov	[ecx], eax
neg	eax
sbb	eax, eax
and	eax, 7FF8FFF2h
add	eax, 8007000Eh

loc_40D0C2:
mov	ecx, [ebp+var_C]
pop	edi
mov	large fs:0, ecx
leave
retn	8
sub_40D018 endp




sub_40D0D1 proc	near
mov	ecx, offset aDllregisterser ; "DllRegisterServer"
jmp	$+5

loc_40D0DB:
mov	eax, offset loc_443AB0
call	__EH_prolog
sub	esp, 1Ch
push	ebx
push	esi
xor	esi, esi
push	edi
mov	edi, ecx
mov	[ebp-10h], esi
push	3
lea	ecx, [ebp-1Ch]
mov	[ebp-4], esi
mov	[ebp-1Ch], esi
mov	[ebp-18h], esi
mov	[ebp-14h], esi
call	sub_403396
lea	ecx, [ebp-1Ch]
mov	byte ptr [ebp-4], 1
call	sub_41D79C
lea	edx, [ebp-1Ch]
lea	ecx, [ebp-28h]
push	offset a7Zip_dll ; "7-zip.dll"
call	sub_409948
push	dword ptr [eax]	; lpLibFileName
lea	ecx, [ebp-10h]
mov	byte ptr [ebp-4], 2
call	sub_429A47
mov	bl, al
mov	byte ptr [ebp-4], 1
push	dword ptr [ebp-28h] ; Memory
neg	bl
sbb	bl, bl
inc	bl
call	sub_4284D8
test	bl, bl
pop	ecx
jz	short loc_40D15C
mov	ecx, offset a7ZipCannotLoad ; "7-Zip cannot load 7-zip.dll"

loc_40D150:
call	sub_40D1BD
mov	edi, 80004005h
jmp	short loc_40D197

loc_40D15C:		; lpProcName
push	edi
push	dword ptr [ebp-10h] ; hModule
call	ds:GetProcAddress
cmp	eax, esi
jnz	short loc_40D171
mov	ecx, offset aIncorrectPlugi ; "Incorrect plugin"
jmp	short loc_40D150

loc_40D171:
call	eax
mov	edi, eax
cmp	edi, esi
jz	short loc_40D197
mov	edx, edi
lea	ecx, [ebp-28h]
call	sub_425088
mov	ecx, [eax]	; lpText
mov	byte ptr [ebp-4], 3
call	sub_40D1BD
push	dword ptr [ebp-28h] ; Memory
call	sub_4284D8
pop	ecx

loc_40D197:		; Memory
push	dword ptr [ebp-1Ch]
call	sub_4284D8
or	dword ptr [ebp-4], 0FFFFFFFFh
pop	ecx
lea	ecx, [ebp-10h]
call	sub_429929
mov	ecx, [ebp-0Ch]
mov	eax, edi
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40D0D1 endp




; int __fastcall sub_40D1BD(LPCWSTR lpText)
sub_40D1BD proc	near
push	10h		; uType
push	offset a7Zip	; "7-Zip"
push	ecx		; lpText
push	dword_45D908	; hWnd
call	ds:MessageBoxW
retn
sub_40D1BD endp




sub_40D1D2 proc	near
mov	ecx, offset aDllunregisters ; "DllUnregisterServer"
jmp	loc_40D0DB
sub_40D1D2 endp



; Attributes: bp-based frame

sub_40D1DC proc	near

var_144= byte ptr -144h
var_104= dword ptr -104h
var_F8=	dword ptr -0F8h
var_D8=	dword ptr -0D8h
var_CC=	byte ptr -0CCh
var_B8=	byte ptr -0B8h
var_B4=	dword ptr -0B4h
var_A4=	dword ptr -0A4h
var_A0=	dword ptr -0A0h
var_9C=	dword ptr -9Ch
var_98=	dword ptr -98h
var_94=	dword ptr -94h
var_90=	dword ptr -90h
var_8C=	dword ptr -8Ch
var_88=	dword ptr -88h
var_84=	dword ptr -84h
var_80=	dword ptr -80h
var_7C=	dword ptr -7Ch
var_78=	dword ptr -78h
var_74=	dword ptr -74h
var_70=	dword ptr -70h
var_6C=	dword ptr -6Ch
var_68=	dword ptr -68h
var_64=	dword ptr -64h
var_60=	dword ptr -60h
var_5C=	dword ptr -5Ch
var_58=	dword ptr -58h
var_4C=	dword ptr -4Ch
var_48=	dword ptr -48h
var_3C=	dword ptr -3Ch
var_38=	dword ptr -38h
var_24=	dword ptr -24h
var_1C=	dword ptr -1Ch
Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443B33
call	__EH_prolog
sub	esp, 138h
push	ebx
mov	[ebp+var_1C], ecx
push	esi
push	edi
lea	ecx, [ebp+var_144]
call	sub_40D557
xor	ebx, ebx
lea	ecx, [ebp+var_B4]
mov	[ebp+var_4], ebx
call	sub_40D6B1
push	ebx
lea	ecx, [ebp+var_24]
mov	byte ptr [ebp+var_4], 1
call	sub_40D483
mov	[ebp+var_24], offset off_44BF44
lea	ecx, [ebp+var_D8]
mov	byte ptr [ebp+var_4], 2
call	sub_40D4C3
push	ebx
lea	ecx, [ebp+var_48]
mov	byte ptr [ebp+var_4], 3
call	sub_40D483
mov	[ebp+var_3C], ebx
mov	[ebp+var_48], offset off_44BEE8
lea	ecx, [ebp+var_104]
mov	byte ptr [ebp+var_4], 4
call	sub_40D6CC
lea	ecx, [ebp+var_38]
mov	byte ptr [ebp+var_4], 5
call	sub_40337B
mov	edi, offset off_44BEE0
mov	[ebp+var_38], edi
lea	eax, [ebp+var_144]
or	[ebp+var_88], 0FFFFFFFFh
mov	[ebp+var_74], eax
lea	eax, [ebp+var_48]
mov	[ebp+var_70], eax
lea	eax, [ebp+var_104]
mov	[ebp+var_6C], eax
lea	eax, [ebp+var_B4]
mov	[ebp+var_68], eax
lea	eax, [ebp+var_24]
mov	[ebp+var_64], eax
lea	eax, [ebp+var_D8]
mov	byte ptr [ebp+var_4], 6
mov	[ebp+var_8C], 3010300h
mov	[ebp+var_84], 1000200h
mov	[ebp+var_80], 3010200h
mov	[ebp+var_7C], 3010400h
mov	[ebp+var_78], 1000400h
mov	[ebp+var_A4], 21Ch
mov	[ebp+var_A0], 23Ah
mov	[ebp+var_9C], 23Bh
mov	[ebp+var_98], 21Eh
mov	[ebp+var_94], 21Fh
mov	[ebp+var_90], 220h
mov	[ebp+var_60], eax
xor	esi, esi

loc_40D30C:
lea	ecx, [ebp+var_58]
call	sub_403079
mov	edx, [ebp+esi+var_8C]
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 7
call	sub_40B0EE
push	eax
lea	ecx, [ebp+var_58]
mov	byte ptr [ebp+var_4], 8
call	sub_40312C
mov	byte ptr [ebp+var_4], 7
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	eax, [ebp+esi+var_A4]
pop	ecx
mov	[ebp+var_4C], eax
mov	eax, [ebp+esi+var_74]
mov	[ebp+var_5C], eax
lea	eax, [ebp+var_5C]
push	eax
lea	ecx, [ebp+var_38]
call	sub_40D7F5
mov	byte ptr [ebp+var_4], 6
push	[ebp+var_58]	; Memory
call	sub_4284D8
add	esi, 4
pop	ecx
cmp	esi, 18h
jl	short loc_40D30C
push	3010000h
mov	edx, 0FA0h
lea	ecx, [ebp+Memory]
call	sub_40B168
mov	edx, [ebp+var_1C]
push	eax
lea	ecx, [ebp+var_38]
mov	byte ptr [ebp+var_4], 9
call	sub_430009
mov	esi, eax
mov	byte ptr [ebp+var_4], 6
push	[ebp+Memory]	; Memory
call	sub_4284D8
cmp	esi, 0FFFFFFFFh
pop	ecx
jz	short loc_40D412
cmp	esi, ebx
jz	short loc_40D412
cmp	[ebp+var_B8], bl
mov	esi, offset dword_45D4C0
jz	short loc_40D3FD
push	3000000h
mov	edx, 898h
lea	ecx, [ebp+Memory]
call	sub_40B168
mov	edx, [eax]
mov	ecx, dword_45D4C0
mov	byte ptr [ebp+var_4], 0Ah
call	sub_42E6BD
mov	byte ptr [ebp+var_4], 6
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
call	sub_40BC70
mov	ecx, esi
call	sub_4012CE
mov	ecx, esi
call	sub_4069DB

loc_40D3FD:
mov	ecx, esi
call	sub_401129
mov	ecx, esi
call	sub_4011E3
mov	ecx, esi
call	sub_40D67D

loc_40D412:
mov	[ebp+var_38], edi
lea	ecx, [ebp+var_38]
mov	byte ptr [ebp+var_4], 0Bh
call	sub_428327
lea	ecx, [ebp+var_38]
mov	byte ptr [ebp+var_4], 5
call	sub_4282FE
push	[ebp+var_F8]	; Memory
call	sub_4284D8
mov	esi, offset off_44B588
pop	ecx
mov	[ebp+var_104], esi
mov	[ebp+var_48], esi
lea	ecx, [ebp+var_CC]
mov	byte ptr [ebp+var_4], 0Ch
call	sub_40327C
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_144]
mov	[ebp+var_D8], esi
mov	[ebp+var_24], esi
mov	[ebp+var_B4], esi
call	sub_40D5E7
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40D1DC endp




sub_40D483 proc	near

arg_0= dword ptr  4

mov	eax, ecx
mov	ecx, [esp+arg_0]
mov	[eax+4], ecx
mov	dword ptr [eax], offset	off_44BF9C
retn	4
sub_40D483 endp




sub_40D495 proc	near
xor	al, al
retn
sub_40D495 endp




sub_40D498 proc	near
mov	eax, [ecx]
call	dword ptr [eax+34h]
retn	4
sub_40D498 endp




sub_40D4A0 proc	near
mov	eax, [ecx]
call	dword ptr [eax+3Ch]
retn	4
sub_40D4A0 endp




sub_40D4A8 proc	near
xor	eax, eax
retn
sub_40D4A8 endp




sub_40D4AB proc	near
mov	eax, [ecx]
call	dword ptr [eax+44h]
retn	4
sub_40D4AB endp




sub_40D4B3 proc	near
mov	eax, [ecx]
call	dword ptr [eax+4Ch]
retn	4
sub_40D4B3 endp




sub_40D4BB proc	near
mov	eax, [ecx]
call	dword ptr [eax+54h]
retn	4
sub_40D4BB endp




sub_40D4C3 proc	near
mov	eax, ecx
xor	ecx, ecx
mov	[eax+4], ecx
mov	[eax+8], ecx
mov	[eax+10h], ecx
mov	[eax+14h], ecx
mov	[eax+18h], ecx
mov	dword ptr [eax+1Ch], 4
mov	dword ptr [eax+0Ch], offset off_44B510
mov	dword ptr [eax], offset	off_44BFF4
mov	[eax+20h], cl
retn
sub_40D4C3 endp




; int __thiscall sub_40D4EE(void *Memory, char)
sub_40D4EE proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_40D50A
test	[esp+4+arg_0], 1
jz	short loc_40D504
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_40D504:
mov	eax, esi
pop	esi
retn	4
sub_40D4EE endp



; Attributes: bp-based frame

sub_40D50A proc	near

var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443B50
call	__EH_prolog
push	ecx
push	ecx
push	esi
push	edi
mov	edi, ecx
mov	[ebp+var_10], edi
and	[ebp+var_4], 0
lea	esi, [edi+0Ch]
mov	[ebp+var_14], esi
mov	dword ptr [esi], offset	off_44B510
mov	ecx, esi
mov	byte ptr [ebp+var_4], 1
call	sub_428327
and	byte ptr [ebp+var_4], 0
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
mov	dword ptr [edi], offset	off_44B588
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40D50A endp



; Attributes: bp-based frame

sub_40D557 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443B64
call	__EH_prolog
push	ecx
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
mov	[ebp+var_10], esi
mov	[esi+4], ebx
mov	dword ptr [esi], offset	off_44BF9C
lea	ecx, [esi+0Ch]
mov	[ebp+var_4], ebx
call	sub_40D5BA
mov	ecx, [ebp+var_C]
mov	[esi+34h], ebx
mov	[esi+38h], ebx
mov	[esi+3Ch], bl
mov	dword ptr [esi], offset	off_44C04C
mov	eax, esi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40D557 endp




; int __thiscall sub_40D59E(void *Memory, char)
sub_40D59E proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_40D5E7
test	[esp+4+arg_0], 1
jz	short loc_40D5B4
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_40D5B4:
mov	eax, esi
pop	esi
retn	4
sub_40D59E endp




sub_40D5BA proc	near
mov	eax, ecx
push	4
xor	edx, edx
pop	ecx
mov	[eax+4], edx
mov	[eax+8], edx
mov	[eax+0Ch], edx
mov	[eax+10h], ecx
mov	dword ptr [eax], offset	off_44C0A8
mov	[eax+18h], edx
mov	[eax+1Ch], edx
mov	[eax+20h], edx
mov	[eax+24h], ecx
mov	dword ptr [eax+14h], offset off_44B92C
retn
sub_40D5BA endp



; Attributes: bp-based frame

sub_40D5E7 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443B78
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
and	[ebp+var_4], 0
lea	ecx, [esi+0Ch]
call	sub_40D617
mov	ecx, [ebp+var_C]
mov	dword ptr [esi], offset	off_44B588
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40D5E7 endp



; Attributes: bp-based frame

sub_40D617 proc	near

var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443B9C
call	__EH_prolog
push	ecx
push	ecx
push	esi
mov	esi, ecx
push	edi
mov	[ebp+var_10], esi
and	[ebp+var_4], 0
lea	edi, [esi+14h]
mov	[ebp+var_14], edi
mov	dword ptr [edi], offset	off_44B92C
mov	ecx, edi
mov	byte ptr [ebp+var_4], 1
call	sub_428327
and	byte ptr [ebp+var_4], 0
mov	ecx, edi
call	sub_4282FE
mov	dword ptr [esi], offset	off_44C0A8
mov	ecx, esi
mov	[ebp+var_4], 2
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40D617 endp




sub_40D67D proc	near
push	esi
mov	esi, ecx
push	edi
xor	edi, edi
mov	ecx, [esi+8]
test	ecx, ecx
jle	short loc_40D6AE

loc_40D68A:
cmp	ecx, 1
mov	eax, edi
jnz	short loc_40D694
mov	eax, [esi+0Ch]

loc_40D694:
imul	eax, 188h
lea	ecx, [eax+esi+84h]
call	sub_417B11
mov	ecx, [esi+8]
inc	edi
cmp	edi, ecx
jl	short loc_40D68A

loc_40D6AE:
pop	edi
pop	esi
retn
sub_40D67D endp




sub_40D6B1 proc	near
mov	eax, ecx
xor	ecx, ecx
mov	[eax+4], ecx
mov	[eax+8], ecx
mov	[eax+0Ch], ecx
mov	dword ptr [eax], offset	off_44C0B0
retn
sub_40D6B1 endp




sub_40D6C5 proc	near
mov	dword ptr [ecx], offset	off_44B588
retn
sub_40D6C5 endp



; Attributes: bp-based frame

sub_40D6CC proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443BB0
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
and	dword ptr [esi+4], 0
mov	dword ptr [esi], offset	off_44BF9C
and	[ebp+var_4], 0
lea	ecx, [esi+8]
call	sub_43C9A9
and	dword ptr [esi+1Ch], 0
and	dword ptr [esi+24h], 0
mov	ecx, [ebp+var_C]
mov	dword ptr [esi], offset	off_44C108
mov	eax, esi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40D6CC endp




sub_40D710 proc	near
push	esi
mov	esi, ecx
push	dword ptr [esi+0Ch] ; Memory
call	sub_4284D8
pop	ecx
mov	dword ptr [esi], offset	off_44B588
pop	esi
retn
sub_40D710 endp



; Attributes: bp-based frame

sub_40D724 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443BC4
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44C0A8
and	[ebp+var_4], 0
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40D724 endp



; Attributes: bp-based frame

sub_40D75C proc	near

Memory=	dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
push	ecx
push	ebx
mov	ebx, ecx
mov	ecx, [ebp+arg_4]
push	edi
mov	edi, [ebp+arg_0]
mov	eax, [ebx+8]
add	ecx, edi
cmp	ecx, eax
jle	short loc_40D778
sub	eax, edi
mov	[ebp+arg_4], eax

loc_40D778:
mov	eax, [ebp+arg_4]
test	eax, eax
jle	short loc_40D7AC
push	esi
mov	esi, edi
shl	esi, 2
mov	[ebp+arg_0], eax

loc_40D788:
mov	eax, [ebx+0Ch]
mov	ecx, [eax+esi]
test	ecx, ecx
mov	[ebp+Memory], ecx
jz	short loc_40D7A3
call	sub_40558F
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_40D7A3:
add	esi, 4
dec	[ebp+arg_0]
jnz	short loc_40D788
pop	esi

loc_40D7AC:
push	[ebp+arg_4]
mov	ecx, ebx
push	edi
call	sub_42847F
pop	edi
pop	ebx
leave
retn	8
sub_40D75C endp



; Attributes: bp-based frame

sub_40D7BD proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443BD8
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44BEE0
and	[ebp+var_4], 0
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40D7BD endp



; Attributes: bp-based frame

sub_40D7F5 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset unknown_libname_16 ; Microsoft VisualC 2-11/net runtime
call	__EH_prolog
push	ecx
push	ebx
push	esi
mov	ebx, ecx
push	14h		; Size
call	sub_4284B1
mov	esi, eax
pop	ecx
mov	[ebp+var_10], esi
and	[ebp+var_4], 0
test	esi, esi
jz	short loc_40D836
push	edi
mov	edi, [ebp+arg_0]
lea	ecx, [esi+4]
mov	eax, [edi]
mov	[esi], eax
lea	eax, [edi+4]
push	eax
call	sub_4030F2
mov	eax, [edi+10h]
pop	edi
mov	[esi+10h], eax
jmp	short loc_40D838

loc_40D836:
xor	esi, esi

loc_40D838:
or	[ebp+var_4], 0FFFFFFFFh
push	esi
mov	ecx, ebx
call	sub_429907
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_40D7F5 endp




; int __thiscall sub_40D854(void *Memory, char)
sub_40D854 proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_40D724
test	[esp+4+arg_0], 1
jz	short loc_40D86A
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_40D86A:
mov	eax, esi
pop	esi
retn	4
sub_40D854 endp




; int __thiscall sub_40D870(void *Memory, char)
sub_40D870 proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_40D7BD
test	[esp+4+arg_0], 1
jz	short loc_40D886
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_40D886:
mov	eax, esi
pop	esi
retn	4
sub_40D870 endp




sub_40D88C proc	near
push	esi
push	edi
mov	esi, ecx
call	sub_413EF8
mov	eax, [esi+170h]
lea	edi, [esi+170h]
test	eax, eax
jz	short loc_40D8AE
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
and	dword ptr [edi], 0

loc_40D8AE:
mov	eax, [esi+174h]
add	esi, 174h
test	eax, eax
jz	short loc_40D8C7
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
and	dword ptr [esi], 0

loc_40D8C7:
pop	edi
pop	esi
retn
sub_40D88C endp



; Attributes: bp-based frame

; void __thiscall sub_40D8CA(void *)
sub_40D8CA proc	near

var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443CFC
call	__EH_prolog
push	ecx
push	ecx
push	ebx
push	esi
mov	esi, ecx
push	edi
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44BA18
mov	[ebp+var_4], 0Fh
call	sub_413EF8
mov	eax, [esi+174h]
mov	byte ptr [ebp+var_4], 0Eh
test	eax, eax
jz	short loc_40D904
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_40D904:
mov	eax, [esi+170h]
mov	byte ptr [ebp+var_4], 0Dh
test	eax, eax
jz	short loc_40D918
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_40D918:
lea	edi, [esi+154h]
mov	ebx, offset off_44BA90
mov	[ebp+var_14], edi
mov	[edi], ebx
mov	ecx, edi
mov	byte ptr [ebp+var_4], 10h
call	sub_428327
mov	ecx, edi
mov	byte ptr [ebp+var_4], 0Ch
call	sub_4282FE
lea	edi, [esi+140h]
mov	[ebp+var_14], edi
mov	[edi], ebx
mov	ecx, edi
mov	byte ptr [ebp+var_4], 11h
call	sub_428327
mov	ecx, edi
mov	byte ptr [ebp+var_4], 0Bh
call	sub_4282FE
lea	edi, [esi+124h]
mov	[ebp+var_14], edi
mov	dword ptr [edi], offset	off_44BA44
mov	ecx, edi
mov	byte ptr [ebp+var_4], 12h
call	sub_428327
mov	ecx, edi
mov	byte ptr [ebp+var_4], 0Ah
call	sub_4282FE
push	dword ptr [esi+118h] ; Memory
call	sub_4284D8
lea	edi, [esi+100h]
mov	ebx, offset off_44B510
pop	ecx
mov	[ebp+var_14], edi
mov	[edi], ebx
mov	ecx, edi
mov	byte ptr [ebp+var_4], 13h
call	sub_428327
mov	ecx, edi
mov	byte ptr [ebp+var_4], 8
call	sub_4282FE
mov	eax, [esi+0FCh]
mov	byte ptr [ebp+var_4], 7
test	eax, eax
jz	short loc_40D9CA
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_40D9CA:
lea	ecx, [esi+0F8h]
mov	byte ptr [ebp+var_4], 6
call	sub_429929
lea	edi, [esi+0E4h]
mov	[ebp+var_14], edi
mov	dword ptr [edi], offset	off_44BA4C
mov	ecx, edi
mov	byte ptr [ebp+var_4], 14h
call	sub_428327
mov	ecx, edi
mov	byte ptr [ebp+var_4], 5
call	sub_4282FE
push	dword ptr [esi+0D8h] ; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 3
lea	ecx, [esi+0A4h]
call	sub_40299B
lea	ecx, [esi+90h]
mov	byte ptr [ebp+var_4], 2
call	sub_4282FE
lea	edi, [esi+54h]
mov	[ebp+var_14], edi
mov	[edi], ebx
mov	ecx, edi
mov	byte ptr [ebp+var_4], 15h
call	sub_428327
mov	ecx, edi
mov	byte ptr [ebp+var_4], 1
call	sub_4282FE
and	byte ptr [ebp+var_4], 0
lea	ecx, [esi+8]
call	sub_405A0E
mov	ecx, [ebp+var_C]
mov	dword ptr [esi], offset	off_44BA5C
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40D8CA endp




sub_40DA67 proc	near
push	esi
mov	esi, ecx
push	dword ptr [esi+4] ; hWnd
call	ds:GetParent
test	eax, eax
jnz	short loc_40DA7A
mov	eax, [esi+40h]

loc_40DA7A:
pop	esi
retn
sub_40DA67 endp



; Attributes: bp-based frame

; int __stdcall	sub_40DA7C(int,	HWND hWndParent, HMENU hMenu, int, int,	int, int, int, int)
sub_40DA7C proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
hWndParent= dword ptr  0Ch
hMenu= dword ptr  10h
arg_C= dword ptr  14h
arg_10=	dword ptr  18h
arg_14=	dword ptr  1Ch
arg_18=	dword ptr  20h
arg_1C=	dword ptr  24h
arg_20=	dword ptr  28h

mov	eax, offset loc_443D10
call	__EH_prolog
sub	esp, 0Ch
mov	eax, [ebp+arg_0]
push	ebx
push	esi
mov	esi, ecx
mov	ebx, [ebp+arg_C]
push	edi
mov	edi, [ebp+hMenu]
mov	[esi+40h], eax
mov	eax, [ebp+arg_14]
push	ebx
mov	[esi+44h], eax
mov	eax, [ebp+arg_18]
mov	[esi+3Ch], eax
lea	eax, [edi+3]
mov	[esi+34h], eax
inc	eax
lea	ecx, [ebp+Memory]
mov	byte ptr [esi+184h], 1
mov	byte ptr [esi+185h], 1
mov	[esi+30h], edi
mov	[esi+38h], eax
call	sub_4030F2
and	[ebp+var_4], 0
cmp	dword ptr [ebx+4], 0
jz	short loc_40DAF1
mov	ecx, [ebx]
cmp	word ptr [ecx],	2Eh
jnz	short loc_40DAF1
lea	edx, [ebp+Memory]
call	sub_42AA9A
test	al, al
jnz	short loc_40DAF1
push	ebx
lea	ecx, [ebp+Memory]
call	sub_40312C

loc_40DAF1:
push	[ebp+arg_20]
lea	eax, [ebp+Memory]
mov	ecx, esi
push	[ebp+arg_1C]
push	[ebp+arg_10]
push	eax
call	sub_412AC8
xor	ebx, ebx
cmp	eax, ebx
jz	short loc_40DB0F
mov	ebx, eax
jmp	short loc_40DB43

loc_40DB0F:		; hInstance
push	hInstance
mov	ecx, esi
push	edi		; hMenu
push	[ebp+hWndParent] ; hWndParent
push	104h		; nHeight
push	dword ptr [esi+0D0h] ; nWidth
push	ebx		; Y
push	ebx		; X
push	50000000h	; dwStyle
push	ebx		; lpWindowName
push	off_45B828	; lpClassName
push	ebx		; dwExStyle
call	sub_43039A
test	al, al
jnz	short loc_40DB43
mov	ebx, 80004005h

loc_40DB43:		; Memory
push	[ebp+Memory]
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
mov	eax, ebx
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	24h
sub_40DA7C endp



; Attributes: bp-based frame

; int __stdcall	sub_40DB5F(UINT	Msg, WPARAM wParam, LPARAM lParam)
sub_40DB5F proc	near

Msg= dword ptr	8
wParam=	dword ptr  0Ch
lParam=	dword ptr  10h

push	ebp
mov	ebp, esp
push	esi
push	edi
mov	edi, [ebp+Msg]
mov	eax, 403h
cmp	edi, eax
mov	esi, ecx
ja	short loc_40DBD8
jz	short loc_40DBCD
mov	eax, edi
sub	eax, 7Bh
jz	short loc_40DBAC
sub	eax, 98h
jz	short loc_40DBA3
sub	eax, 2EEh
jz	short loc_40DB9A
dec	eax
jnz	short loc_40DBE7
lea	eax, [esi+0A4h]
push	eax
call	sub_41687D
jmp	short loc_40DBC9

loc_40DB9A:
mov	ecx, esi
call	sub_41B3DC
jmp	short loc_40DBC9

loc_40DBA3:
mov	ecx, esi
call	sub_417B2E
jmp	short loc_40DBC9

loc_40DBAC:
mov	eax, [ebp+lParam]
mov	ecx, esi
shr	eax, 10h
movsx	eax, ax
push	eax		; int
movsx	eax, word ptr [ebp+lParam]
push	eax		; int
push	[ebp+wParam]	; hWnd
call	sub_419991
test	al, al
jz	short loc_40DBE7

loc_40DBC9:
xor	eax, eax
jmp	short loc_40DC13

loc_40DBCD:		; hWnd
push	dword ptr [esi+74h]
call	ds:SetFocus
jmp	short loc_40DBC9

loc_40DBD8:
mov	eax, edi
sub	eax, 404h
jz	short loc_40DC09
dec	eax
jz	short loc_40DC00
dec	eax
jz	short loc_40DBF7

loc_40DBE7:		; lParam
push	[ebp+lParam]
mov	ecx, esi
push	[ebp+wParam]	; wParam
push	edi		; Msg
call	sub_43050D
jmp	short loc_40DC13

loc_40DBF7:
mov	ecx, esi
call	sub_4132CA
jmp	short loc_40DBC9

loc_40DC00:
mov	ecx, esi
call	sub_41877A
jmp	short loc_40DBC9

loc_40DC09:
push	[ebp+lParam]
mov	ecx, esi
call	sub_415692

loc_40DC13:
pop	edi
pop	esi
pop	ebp
retn	0Ch
sub_40DB5F endp



; Attributes: bp-based frame

; int __stdcall	sub_40DC19(UINT	Msg, WPARAM wParam, __int16)
sub_40DC19 proc	near

var_1= byte ptr	-1
Msg= dword ptr	8
wParam=	dword ptr  0Ch
arg_A= byte ptr	 12h

push	ebp
mov	ebp, esp
push	ecx
mov	eax, [ebp+Msg]
push	ebx
push	edi
cmp	eax, 102h
mov	edi, ecx
jnz	short loc_40DC77
xor	eax, eax
push	1		; uMapType
mov	al, [ebp+arg_A]
push	eax		; uCode
call	ds:MapVirtualKeyA
cmp	eax, 6Ah
jz	short loc_40DC70
cmp	eax, 6Bh
jz	short loc_40DC70
cmp	eax, 6Dh
jz	short loc_40DC70
cmp	[ebp+wParam], 2Fh
jnz	short loc_40DC58
mov	eax, [ebp+10h]
shr	eax, 18h
test	al, 1
jnz	short loc_40DC68

loc_40DC58:
cmp	[ebp+wParam], 5Ch
jz	short loc_40DC68
cmp	[ebp+wParam], 2Fh
jnz	loc_40DD32

loc_40DC68:
mov	ecx, [edi+8]
call	sub_413FB8

loc_40DC70:
xor	eax, eax
jmp	loc_40DD58

loc_40DC77:
cmp	eax, 106h
jnz	short loc_40DCA6
xor	eax, eax
push	1		; uMapType
mov	al, [ebp+arg_A]
push	eax		; uCode
call	ds:MapVirtualKeyA
cmp	eax, 0Dh
jz	short loc_40DC70
cmp	eax, 6Ah
jz	short loc_40DC70
cmp	eax, 6Bh
jz	short loc_40DC70
cmp	eax, 6Dh
jnz	loc_40DD32
jmp	short loc_40DC70

loc_40DCA6:
cmp	eax, 100h
jnz	short loc_40DD18
push	esi
mov	esi, ds:GetKeyState
push	12h		; nVirtKey
call	esi ; GetKeyState
shr	eax, 0Fh
and	al, 1
push	11h		; nVirtKey
mov	[ebp+var_1], al
call	esi ; GetKeyState
mov	bx, ax
push	10h		; nVirtKey
shr	ebx, 0Fh
and	bl, 1
call	esi ; GetKeyState
mov	ecx, [ebp+wParam]
pop	esi
shr	eax, 0Fh
and	al, 1
sub	ecx, 21h
jz	short loc_40DCFD
dec	ecx
jnz	short loc_40DD32
test	bl, bl
jz	short loc_40DD32
cmp	[ebp+var_1], 0
jnz	short loc_40DD32
test	al, al
jnz	short loc_40DD32
mov	ecx, [edi+8]
call	sub_4171E1
jmp	loc_40DC70

loc_40DCFD:
test	bl, bl
jz	short loc_40DD32
cmp	[ebp+var_1], 0
jnz	short loc_40DD32
test	al, al
jnz	short loc_40DD32
mov	ecx, [edi+8]
call	sub_413C6E
jmp	loc_40DC70

loc_40DD18:
cmp	eax, 7
jnz	short loc_40DD32
mov	eax, [edi+8]
mov	byte ptr [eax+84h], 1
mov	eax, [edi+8]
mov	ecx, [eax+44h]
mov	eax, [ecx]
call	dword ptr [eax+14h]

loc_40DD32:		; lParam
push	dword ptr [ebp+10h]
mov	eax, [edi]
cmp	byte_45D8B4, 0
push	[ebp+wParam]	; wParam
push	[ebp+Msg]	; Msg
push	eax		; hWnd
push	dword ptr [edi+4] ; lpPrevWndFunc
jz	short loc_40DD52
call	ds:CallWindowProcW
jmp	short loc_40DD58

loc_40DD52:
call	ds:CallWindowProcA

loc_40DD58:
pop	edi
pop	ebx
leave
retn	0Ch
sub_40DC19 endp



; Attributes: bp-based frame

; int __stdcall	sub_40DD5E(UINT	Msg, WPARAM wParam, __int16)
sub_40DD5E proc	near

var_1= byte ptr	-1
Msg= dword ptr	8
wParam=	dword ptr  0Ch
arg_B= byte ptr	 13h

push	ebp
mov	ebp, esp
push	ecx
mov	eax, [ebp+Msg]
push	ebx
push	esi
push	edi
sub	eax, 100h
mov	edi, ecx
jz	loc_40DE05
dec	eax
dec	eax
jz	short loc_40DDF3
dec	eax
dec	eax
jnz	loc_40DE52
cmp	[ebp+wParam], 70h
jb	loc_40DE52
cmp	[ebp+wParam], 71h
ja	loc_40DE52
test	[ebp+arg_B], 20h
jz	loc_40DE52
mov	esi, ds:GetKeyState
push	12h		; nVirtKey
call	esi ; GetKeyState
mov	bx, ax
push	11h		; nVirtKey
shr	ebx, 0Fh
and	bl, 1
call	esi ; GetKeyState
shr	eax, 0Fh
and	al, 1
push	10h		; nVirtKey
mov	[ebp+var_1], al
call	esi ; GetKeyState
shr	eax, 0Fh
and	al, 1
test	bl, bl
jz	loc_40DE52
cmp	[ebp+var_1], 0
jnz	short loc_40DE52
test	al, al
jnz	short loc_40DE52
mov	eax, [edi+8]
xor	edx, edx
cmp	[ebp+wParam], 70h
mov	ecx, [eax+44h]
setnz	dl
mov	eax, [ecx]
push	edx
call	dword ptr [eax+4]
jmp	loc_40DE82

loc_40DDF3:
cmp	[ebp+wParam], 9
jz	loc_40DE82
cmp	[ebp+wParam], 1Bh
jnz	short loc_40DE52
jmp	short loc_40DE82

loc_40DE05:
cmp	[ebp+wParam], 9
jz	short loc_40DE7A
cmp	[ebp+wParam], 78h
jnz	short loc_40DE52
mov	esi, ds:GetKeyState
push	12h		; nVirtKey
call	esi ; GetKeyState
mov	bx, ax
push	11h		; nVirtKey
shr	ebx, 0Fh
and	bl, 1
call	esi ; GetKeyState
shr	eax, 0Fh
and	al, 1
push	10h		; nVirtKey
mov	[ebp+var_1], al
call	esi ; GetKeyState
shr	eax, 0Fh
and	al, 1
test	bl, bl
jnz	short loc_40DE52
cmp	[ebp+var_1], bl
jnz	short loc_40DE52
test	al, al
jnz	short loc_40DE52
mov	ecx, offset dword_45D4C0
call	sub_4017B2
jmp	short loc_40DE82

loc_40DE52:		; lParam
push	dword ptr [ebp+10h]
mov	eax, [edi]
cmp	byte_45D8B4, 0
push	[ebp+wParam]	; wParam
push	[ebp+Msg]	; Msg
push	eax		; hWnd
push	dword ptr [edi+4] ; lpPrevWndFunc
jz	short loc_40DE72
call	ds:CallWindowProcW
jmp	short loc_40DE84

loc_40DE72:
call	ds:CallWindowProcA
jmp	short loc_40DE84

loc_40DE7A:
mov	ecx, [edi+8]
call	sub_40E5B8

loc_40DE82:
xor	eax, eax

loc_40DE84:
pop	edi
pop	esi
pop	ebx
leave
retn	0Ch
sub_40DD5E endp



; Attributes: bp-based frame

sub_40DE8B proc	near

var_A4=	dword ptr -0A4h
var_A0=	dword ptr -0A0h
var_9C=	dword ptr -9Ch
var_84=	dword ptr -84h
var_80=	dword ptr -80h
var_7C=	dword ptr -7Ch
var_78=	dword ptr -78h
var_6C=	dword ptr -6Ch
Rect= tagRECT ptr -54h
var_44=	dword ptr -44h
var_40=	dword ptr -40h
var_3C=	dword ptr -3Ch
var_38=	dword ptr -38h
lParam=	dword ptr -34h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
Buttons= TBBUTTON ptr -20h
picce= INITCOMMONCONTROLSEX ptr	-0Ch
var_4= dword ptr -4

push	ebp
mov	ebp, esp
sub	esp, 0A4h
push	ebx
push	esi
mov	esi, ecx
push	edi
push	4
lea	eax, [esi+0CCh]
pop	edx
mov	[esi+168h], edx
mov	byte ptr [esi+16Ch], 1
cmp	[eax], edx
mov	byte ptr [esi+84h], 1
jb	short loc_40DEC0
mov	dword ptr [eax], 3

loc_40DEC0:
mov	eax, [eax]
mov	ecx, dword_45B818[eax*4]
or	ecx, 56010240h
cmp	byte ptr [esi+8Fh], 0
jz	short loc_40DEDA
or	ecx, edx

loc_40DEDA:
mov	eax, esi
lea	edx, [esi+4]
neg	eax
sbb	eax, eax
xor	ebx, ebx
and	eax, edx
mov	edx, [esi+30h]
push	ebx		; lpParam
mov	[ebp+var_4], eax
push	hInstance	; hInstance
mov	eax, [eax]
inc	edx
lea	edi, [esi+74h]
push	edx		; hMenu
push	eax		; hWndParent
push	104h		; nHeight
push	74h		; nWidth
push	ebx		; Y
push	ebx		; X
push	ecx		; dwStyle
push	200h		; dwExStyle
mov	ecx, edi
call	sub_42FDB9
test	al, al
jz	loc_40E25D
push	ebx		; lParam
mov	ebx, ds:SendMessageA
push	1		; wParam
push	2005h		; Msg
push	dword ptr [edi]	; hWnd
call	ebx ; SendMessageA
push	edi		; dwNewLong
push	0FFFFFFEBh	; nIndex
push	dword ptr [edi]	; hWnd
call	ds:SetWindowLongA
push	offset sub_40E29E ; dwNewLong
mov	[esi+7Ch], esi
cmp	byte_45D8B4, 0
push	0FFFFFFFCh	; nIndex
push	dword ptr [edi]	; hWnd
jz	short loc_40DF54
call	ds:SetWindowLongW
jmp	short loc_40DF5A

loc_40DF54:
call	ds:SetWindowLongA

loc_40DF5A:
mov	cl, 1
mov	[esi+78h], eax
call	sub_40E264
push	eax		; lParam
push	1		; wParam
push	1003h		; Msg
push	dword ptr [edi]	; hWnd
call	ebx ; SendMessageA
xor	cl, cl
call	sub_40E264
push	eax		; lParam
push	0		; wParam
push	1003h		; Msg
push	dword ptr [edi]	; hWnd
call	ebx ; SendMessageA
mov	ecx, esi
call	sub_4011C7
push	5		; nCmdShow
push	dword ptr [edi]	; hWnd
call	ds:ShowWindow
push	1		; bErase
push	0		; lpRect
push	dword ptr [edi]	; hWnd
call	ds:InvalidateRect
push	dword ptr [edi]	; hWnd
call	ds:UpdateWindow
push	8
lea	eax, [ebp+picce]
pop	edi
mov	[ebp+picce.dwICC], 4
push	eax		; picce
mov	[ebp+picce.dwSize], edi
call	ds:InitCommonControlsEx
and	[ebp+Buttons.fsStyle], 0
and	[ebp+Buttons.bReserved], 0
and	[ebp+Buttons.bReserved+1], 0
mov	[ebp+Buttons.iBitmap], edi
xor	eax, eax
cmp	dword_45D88C, 40047h
lea	edi, [ebp+Buttons.dwData]
mov	[ebp+Buttons.idCommand], 64h
mov	[ebp+Buttons.fsState], 4
stosd
stosd
jb	short loc_40E033
lea	eax, [ebp+picce]
mov	[ebp+picce.dwSize], 8
push	eax		; picce
mov	[ebp+picce.dwICC], 404h
call	ds:InitCommonControlsEx
mov	eax, [ebp+var_4]
xor	edi, edi
push	edi		; lpParam
push	hInstance	; hInstance
mov	eax, [eax]
push	edi		; hMenu
push	eax		; hWndParent
push	edi		; nHeight
push	edi		; nWidth
push	edi		; Y
push	edi		; X
push	56800641h	; dwStyle
push	edi		; lpWindowName
push	offset aRebarwindow32 ;	"ReBarWindow32"
push	80h		; dwExStyle
call	ds:CreateWindowExA
mov	[esi+48h], eax
jmp	short loc_40E035

loc_40E033:
xor	edi, edi

loc_40E035:
cmp	[esi+48h], edi
mov	ecx, 50000000h
jz	short loc_40E044
mov	ecx, 50000944h

loc_40E044:		; uStructSize
push	14h
push	edi		; dyBitmap
mov	eax, [ebp+var_4]
push	edi		; dxBitmap
push	edi		; dyButton
push	edi		; dxButton
lea	edx, [ebp+Buttons]
mov	eax, [eax]
push	1		; iNumButtons
push	edx		; lpButtons
mov	edx, [esi+30h]
push	4		; wBMID
inc	edx
push	0FFFFFFFFh	; hBMInst
inc	edx
push	0Bh		; nBitmaps
push	edx		; wID
push	ecx		; ws
push	eax		; hwnd
call	ds:CreateToolbarEx
mov	[esi+4Ch], eax
lea	eax, [ebp+picce]
push	eax		; picce
mov	[ebp+picce.dwSize], 8
mov	[ebp+picce.dwICC], 200h
call	ds:InitCommonControlsEx
cmp	[esi+48h], edi
jnz	short loc_40E090
mov	eax, [ebp+var_4]
mov	ecx, [eax]
jmp	short loc_40E093

loc_40E090:
mov	ecx, [esi+4Ch]

loc_40E093:
xor	eax, eax
lea	edi, [esi+50h]
push	eax		; lpParam
push	hInstance	; hInstance
push	dword ptr [esi+34h] ; hMenu
push	ecx		; hWndParent
push	208h		; nHeight
push	64h		; nWidth
push	eax		; Y
push	eax		; X
push	50800042h	; dwStyle
push	eax		; lpWindowName
push	offset aComboboxex32 ; "ComboBoxEx32"
push	eax		; dwExStyle
mov	ecx, edi
call	sub_42E558
push	0		; lParam
push	1		; wParam
push	2005h		; Msg
push	dword ptr [edi]	; hWnd
call	ebx ; SendMessageA
mov	cl, 1
call	sub_40E264
push	eax		; lParam
push	0		; wParam
push	402h		; Msg
push	dword ptr [edi]	; hWnd
call	ebx ; SendMessageA
push	4		; lParam
push	4		; wParam
push	40Eh		; Msg
push	dword ptr [edi]	; hWnd
call	ebx ; SendMessageA
push	0		; lParam
push	0		; wParam
push	407h		; Msg
push	dword ptr [edi]	; hWnd
call	ebx ; SendMessageA
lea	ecx, [esi+68h]
push	ecx		; dwNewLong
push	0FFFFFFEBh	; nIndex
push	eax		; hWnd
mov	[ecx], eax
call	ds:SetWindowLongA
push	offset sub_40E2C4 ; dwNewLong
mov	[esi+70h], esi
cmp	byte_45D8B4, 0
push	0FFFFFFFCh	; nIndex
push	dword ptr [esi+68h] ; hWnd
jz	short loc_40E126
call	ds:SetWindowLongW
jmp	short loc_40E12C

loc_40E126:
call	ds:SetWindowLongA

loc_40E12C:
mov	[esi+6Ch], eax
mov	eax, [esi+48h]
xor	ecx, ecx
cmp	eax, ecx
jz	loc_40E1F0
lea	edx, [ebp+lParam]
mov	[ebp+lParam], 0Ch
push	edx		; lParam
push	ecx		; wParam
push	404h		; Msg
push	eax		; hWnd
mov	[ebp+var_30], ecx
mov	[ebp+var_2C], ecx
call	ebx ; SendMessageA
lea	eax, [ebp+var_28]
push	eax		; lParam
push	0		; wParam
push	453h		; Msg
push	dword ptr [esi+4Ch] ; hWnd
call	ebx ; SendMessageA
mov	eax, [ebp+var_28]
mov	ecx, [ebp+var_24]
mov	[ebp+var_80], eax
mov	[ebp+var_78], eax
mov	eax, [esi+4Ch]
mov	[ebp+var_A4], 50h
mov	[ebp+var_84], eax
lea	eax, [ebp+var_A4]
push	eax		; lParam
push	0FFFFFFFFh	; wParam
push	401h		; Msg
mov	[ebp+var_A0], 71h
push	dword ptr [esi+48h] ; hWnd
mov	[ebp+var_9C], 100h
mov	[ebp+var_7C], ecx
mov	[ebp+var_6C], ecx
call	ebx ; SendMessageA
lea	eax, [ebp+Rect]
push	eax		; lpRect
push	dword ptr [edi]	; hWnd
call	ds:GetWindowRect
mov	eax, [ebp+Rect.bottom]
mov	[ebp+var_80], 1Eh
sub	eax, [ebp+Rect.top]
mov	[ebp+var_78], 3E8h
mov	[ebp+var_7C], eax
mov	eax, [edi]
mov	[ebp+var_84], eax
lea	eax, [ebp+var_A4]
push	eax		; lParam
push	0FFFFFFFFh	; wParam
push	401h		; Msg
push	dword ptr [esi+48h] ; hWnd
call	ebx ; SendMessageA

loc_40E1F0:
mov	eax, [ebp+var_4]
push	dword ptr [esi+38h] ; wID
mov	eax, [eax]
push	eax		; hwndParent
push	offset szText	; "Status"
push	50000000h	; style
call	ds:CreateStatusWindowW
mov	[esi+80h], eax
or	[ebp+var_38], 0FFFFFFFFh
lea	eax, [ebp+var_44]
mov	[ebp+var_44], 96h
push	eax		; lParam
push	4		; wParam
push	404h		; Msg
mov	[ebp+var_40], 0FAh
push	dword ptr [esi+80h] ; hWnd
mov	[ebp+var_3C], 15Eh
call	ebx ; SendMessageA
push	0		; lpTimerFunc
push	3E8h		; uElapse
push	1		; nIDEvent
push	dword ptr [esi+4] ; hWnd
call	ds:SetTimer
mov	ecx, esi
call	sub_4166B3
mov	ecx, esi
call	sub_40E930
mov	al, 1

loc_40E25D:
pop	edi
pop	esi
pop	ebx
leave
retn	4
sub_40DE8B endp




sub_40E264 proc	near

psfi= SHFILEINFOA ptr -160h

sub	esp, 160h
lea	eax, [esp+160h+psfi]
neg	cl
sbb	ecx, ecx
and	cl, 1
add	ecx, 100h
or	cx, 4010h
push	ecx		; uFlags
push	160h		; cbFileInfo
push	eax		; psfi
push	90h		; dwFileAttributes
push	offset pszPath	; pszPath
call	ds:SHGetFileInfoA
add	esp, 160h
retn
sub_40E264 endp




; int __stdcall	sub_40E29E(HWND	hWnd, UINT Msg,	WPARAM wParam, __int16)
sub_40E29E proc	near

hWnd= dword ptr	 4
Msg= dword ptr	8
wParam=	dword ptr  0Ch
arg_C= word ptr	 10h

push	0FFFFFFEBh	; nIndex
push	[esp+4+hWnd]	; hWnd
call	ds:GetWindowLongA
test	eax, eax
jz	short locret_40E2C1
push	dword ptr [esp+arg_C] ;	__int16
mov	ecx, eax
push	[esp+4+wParam]	; wParam
push	[esp+8+Msg]	; Msg
call	sub_40DC19

locret_40E2C1:
retn	10h
sub_40E29E endp




; int __stdcall	sub_40E2C4(HWND	hWnd, UINT Msg,	WPARAM wParam, __int16)
sub_40E2C4 proc	near

hWnd= dword ptr	 4
Msg= dword ptr	8
wParam=	dword ptr  0Ch
arg_C= word ptr	 10h

push	0FFFFFFEBh	; nIndex
push	[esp+4+hWnd]	; hWnd
call	ds:GetWindowLongA
test	eax, eax
jz	short locret_40E2E7
push	dword ptr [esp+arg_C] ;	__int16
mov	ecx, eax
push	[esp+4+wParam]	; wParam
push	[esp+8+Msg]	; Msg
call	sub_40DD5E

locret_40E2E7:
retn	10h
sub_40E2C4 endp




sub_40E2EA proc	near
call	sub_4176F6
push	0		; nExitCode
call	ds:PostQuitMessage
retn
sub_40E2EA endp



; Attributes: bp-based frame

; int __stdcall	sub_40E2F8(int nWidth, int nHeight)
sub_40E2F8 proc	near

Rect= tagRECT ptr -14h
var_4= dword ptr -4
nWidth=	dword ptr  8
nHeight= dword ptr  0Ch

push	ebp
mov	ebp, esp
sub	esp, 14h
push	esi
mov	esi, ecx
mov	eax, esi
push	edi
neg	eax
lea	ecx, [esi+4]
sbb	eax, eax
xor	edi, edi
and	eax, ecx
cmp	[eax], edi
jz	loc_40E3C2
mov	eax, [esi+48h]
cmp	eax, edi
jz	short loc_40E325
lea	ecx, [ebp+Rect]
push	ecx
push	eax
jmp	short loc_40E32C

loc_40E325:
lea	eax, [ebp+Rect]
push	eax		; lpRect
push	dword ptr [esi+4Ch] ; hWnd

loc_40E32C:
call	ds:GetWindowRect
lea	eax, [ebp+Rect]
push	ebx
mov	ebx, [ebp+Rect.bottom]
push	eax		; lpRect
push	dword ptr [esi+80h] ; hWnd
sub	ebx, [ebp+Rect.top]
call	ds:GetWindowRect
mov	ecx, [ebp+Rect.bottom]
mov	eax, [ebp+nHeight]
sub	ecx, [ebp+Rect.top]
sub	eax, ecx
mov	[ebp+var_4], ecx
sub	eax, ebx
cmp	eax, edi
mov	[ebp+nHeight], eax
jg	short loc_40E363
mov	[ebp+nHeight], edi

loc_40E363:
cmp	[esi+48h], edi
mov	edi, ds:MoveWindow
jnz	short loc_40E399
xor	eax, eax
push	1		; bRepaint
push	eax		; nHeight
push	[ebp+nWidth]	; nWidth
push	eax		; Y
push	eax		; X
push	dword ptr [esi+4Ch] ; hWnd
call	edi ; MoveWindow
mov	eax, [ebp+nWidth]
add	eax, 0FFFFFFD6h
cmp	eax, 20h
jg	short loc_40E38B
push	20h
pop	eax

loc_40E38B:		; bRepaint
push	1
push	0		; nHeight
push	eax		; nWidth
push	2		; Y
push	20h		; X
push	dword ptr [esi+50h] ; hWnd
call	edi ; MoveWindow

loc_40E399:		; bRepaint
push	1
push	[ebp+nHeight]	; nHeight
push	[ebp+nWidth]	; nWidth
push	ebx		; Y
push	0		; X
push	dword ptr [esi+74h] ; hWnd
call	edi ; MoveWindow
mov	eax, [ebp+nHeight]
push	1		; bRepaint
push	[ebp+var_4]	; nHeight
add	eax, ebx
push	[ebp+nWidth]	; nWidth
push	eax		; Y
push	0		; X
push	dword ptr [esi+80h] ; hWnd
call	edi ; MoveWindow
pop	ebx

loc_40E3C2:
pop	edi
pop	esi
leave
retn	8
sub_40E2F8 endp




; int __stdcall	sub_40E3C8(int,	int nWidth, int	nHeight)
sub_40E3C8 proc	near

nWidth=	dword ptr  8
nHeight= dword ptr  0Ch

push	esi
mov	esi, ecx
mov	eax, esi
neg	eax
lea	ecx, [esi+4]
sbb	eax, eax
and	eax, ecx
xor	ecx, ecx
cmp	[eax], ecx
jz	short loc_40E402
mov	eax, [esi+48h]
cmp	eax, ecx
jz	short loc_40E3F3
push	1		; bRepaint
push	ecx		; nHeight
push	[esp+0Ch+nWidth] ; nWidth
push	ecx		; Y
push	ecx		; X
push	eax		; hWnd
call	ds:MoveWindow

loc_40E3F3:		; nHeight
push	[esp+4+nHeight]
mov	ecx, esi
push	[esp+8+nWidth]	; nWidth
call	sub_40E2F8

loc_40E402:
mov	al, 1
pop	esi
retn	0Ch
sub_40E3C8 endp



; Attributes: bp-based frame

sub_40E408 proc	near

Rect= tagRECT ptr -10h
arg_0= dword ptr  8

push	ebp
mov	ebp, esp
sub	esp, 10h
mov	eax, [ebp+arg_0]
push	esi
mov	esi, ecx
cmp	dword ptr [eax+8], 0FFFFFCC1h
jnz	short loc_40E43F
lea	eax, [ebp+Rect]
push	eax		; lpRect
push	dword ptr [esi+4] ; hWnd
call	ds:GetWindowRect
mov	eax, [ebp+Rect.bottom]
mov	ecx, esi
sub	eax, [ebp+Rect.top]
push	eax		; nHeight
mov	eax, [ebp+Rect.right]
sub	eax, [ebp+Rect.left]
push	eax		; nWidth
call	sub_40E2F8

loc_40E43F:
xor	al, al
pop	esi
leave
retn	8
sub_40E408 endp



; Attributes: bp-based frame

sub_40E446 proc	near

arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

push	ebp
mov	ebp, esp
push	ebx
push	esi
mov	esi, ecx
push	edi
cmp	byte ptr [esi+185h], 0
jz	short loc_40E4B0
mov	ebx, [ebp+arg_4]
mov	eax, [ebx]
cmp	eax, [esi+50h]
jnz	short loc_40E46C
push	[ebp+arg_8]
push	ebx
call	sub_4139C7
jmp	short loc_40E4B2

loc_40E46C:
cmp	eax, [esi+48h]
jnz	short loc_40E47E
push	[ebp+arg_8]
mov	ecx, esi
push	ebx
call	sub_40E408
jmp	short loc_40E4B2

loc_40E47E:
mov	edi, [esi+74h]
cmp	eax, edi
jnz	short loc_40E492
push	[ebp+arg_8]
mov	ecx, esi
push	ebx
call	sub_4185BD
jmp	short loc_40E4B2

loc_40E492:		; hWnd
push	eax
call	ds:GetParent
cmp	eax, edi
jnz	short loc_40E4B0
cmp	dword ptr [ebx+8], 0FFFFFFFBh
jnz	short loc_40E4B0
push	[ebp+arg_8]
mov	ecx, esi
push	ebx
call	sub_417958
jmp	short loc_40E4B2

loc_40E4B0:
xor	al, al

loc_40E4B2:
pop	edi
pop	esi
pop	ebx
pop	ebp
retn	0Ch
sub_40E446 endp



; Attributes: bp-based frame

sub_40E4B9 proc	near

arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h

push	ebp
mov	ebp, esp
push	esi
push	edi
mov	edi, [ebp+arg_4]
mov	esi, ecx
cmp	edi, 64h
jnz	short loc_40E4D5
call	sub_413C6E
mov	eax, [ebp+arg_C]
and	dword ptr [eax], 0
jmp	short loc_40E4EE

loc_40E4D5:
cmp	edi, [esi+34h]
jnz	short loc_40E4F2
push	[ebp+arg_C]
mov	ecx, esi
push	[ebp+arg_8]
push	[ebp+arg_0]
call	sub_413612
test	al, al
jz	short loc_40E4F2

loc_40E4EE:
mov	al, 1
jmp	short loc_40E503

loc_40E4F2:
push	[ebp+arg_C]
mov	ecx, esi
push	[ebp+arg_8]
push	edi
push	[ebp+arg_0]
call	sub_4305CB

loc_40E503:
pop	edi
pop	esi
pop	ebp
retn	10h
sub_40E4B9 endp




; int __stdcall	sub_40E509(LPCWSTR lpText, LPCWSTR lpCaption)
sub_40E509 proc	near

lpText=	dword ptr  4
lpCaption= dword ptr  8

mov	eax, ecx
push	10h		; uType
push	[esp+4+lpCaption] ; lpCaption
add	ecx, 4
neg	eax
push	[esp+8+lpText]	; lpText
sbb	eax, eax
and	eax, ecx
push	dword ptr [eax]	; hWnd
call	ds:MessageBoxW
retn	8
sub_40E509 endp




; int __stdcall	sub_40E529(LPCWSTR lpText)
sub_40E529 proc	near

lpText=	dword ptr  4

push	offset a7Zip	; "7-Zip"
push	[esp+4+lpText]	; lpText
call	sub_40E509
retn	4
sub_40E529 endp




; int __stdcall	sub_40E53A(LPCWSTR lpText)
sub_40E53A proc	near

lpText=	dword ptr  4

push	offset aError_0	; "Error"
push	[esp+4+lpText]	; lpText
call	sub_40E509
retn	4
sub_40E53A endp



; Attributes: bp-based frame

; int __stdcall	sub_40E54B(int,	LPCWSTR	lpCaption)
sub_40E54B proc	near

Memory=	dword ptr -0Ch
arg_0= dword ptr  8
lpCaption= dword ptr  0Ch

push	ebp
mov	ebp, esp
sub	esp, 0Ch
mov	edx, [ebp+arg_0]
push	esi
mov	esi, ecx
lea	ecx, [ebp+Memory]
call	sub_425088
push	[ebp+lpCaption]	; lpCaption
mov	ecx, esi
push	dword ptr [eax]	; lpText
call	sub_40E509
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
pop	esi
leave
retn	8
sub_40E54B endp




sub_40E579 proc	near

arg_0= dword ptr  4

push	offset a7Zip	; "7-Zip"
push	[esp+4+arg_0]	; int
call	sub_40E54B
retn	4
sub_40E579 endp



; Attributes: bp-based frame

sub_40E58A proc	near

Memory=	dword ptr -0Ch
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
sub	esp, 0Ch
mov	edx, [ebp+arg_0]
push	esi
push	[ebp+arg_4]
mov	esi, ecx
lea	ecx, [ebp+Memory]
call	sub_40B168
push	dword ptr [eax]	; lpText
mov	ecx, esi
call	sub_40E529
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
pop	esi
leave
retn	8
sub_40E58A endp




sub_40E5B8 proc	near
push	dword ptr [ecx+74h] ; hWnd
call	ds:SetFocus
retn
sub_40E5B8 endp




sub_40E5C2 proc	near
cmp	byte ptr [ecx+84h], 0
jz	short loc_40E5D0
jmp	sub_40E5B8

loc_40E5D0:		; hWnd
push	dword ptr [ecx+50h]
call	ds:SetFocus
retn
sub_40E5C2 endp



; Attributes: bp-based frame

sub_40E5DA proc	near

pvarg= VARIANTARG ptr -20h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_443D3B
call	__EH_prolog
sub	esp, 14h
push	ebx
xor	ebx, ebx
push	esi
mov	[ebp+var_10], ebx
mov	word ptr [ebp+pvarg.anonymous_0], bx
mov	word ptr [ebp+pvarg.anonymous_0+2], bx
mov	eax, [ecx+0FCh]
push	1
pop	esi
lea	edx, [ebp+pvarg]
mov	ecx, [eax]
push	edx
push	14h
push	eax
mov	[ebp+var_4], esi
call	dword ptr [ecx+2Ch]
test	eax, eax
jnz	short loc_40E629
cmp	word ptr [ebp+pvarg.anonymous_0], 8
jnz	short loc_40E629
push	dword ptr [ebp+pvarg.anonymous_0+8]
mov	ecx, [ebp+arg_0]
call	sub_403091
mov	[ebp+var_10], esi
jmp	short loc_40E639

loc_40E629:
mov	ecx, [ebp+arg_0]
push	offset word_45D498
call	sub_403091
mov	[ebp+var_10], esi

loc_40E639:		; pvarg
lea	ecx, [ebp+pvarg]
mov	byte ptr [ebp+var_4], bl
call	sub_42CDE1
mov	ecx, [ebp+var_C]
mov	eax, [ebp+arg_0]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_40E5DA endp



; Attributes: bp-based frame

sub_40E657 proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_443D50
call	__EH_prolog
sub	esp, 0Ch
lea	eax, [ebp+Memory]
push	esi
push	eax
call	sub_40E5DA
mov	edx, [ebp+arg_0]
mov	ecx, [eax]
and	[ebp+var_4], 0
call	sub_42828A
push	[ebp+Memory]	; Memory
mov	esi, eax
call	sub_4284D8
pop	ecx
mov	ecx, [ebp+var_C]
test	esi, esi
setz	al
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_40E657 endp




sub_40E69B proc	near
push	offset aRootfolder ; "RootFolder"
call	sub_40E657
retn
sub_40E69B endp




sub_40E6A6 proc	near
push	offset aFsfolder ; "FSFolder"
call	sub_40E657
retn
sub_40E6A6 endp




sub_40E6B1 proc	near
push	offset aFsdrives ; "FSDrives"
call	sub_40E657
retn
sub_40E6B1 endp



; Attributes: bp-based frame

sub_40E6BC proc	near

Memory=	dword ptr -24h
var_18=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443D6C
call	__EH_prolog
sub	esp, 18h
lea	eax, [ebp+var_18]
push	esi
push	eax
call	sub_40E5DA
and	[ebp+var_4], 0
lea	eax, [ebp+Memory]
push	5
push	eax
lea	ecx, [ebp+var_18]
call	sub_403228
mov	ecx, [eax]
mov	edx, offset a7Zip ; "7-Zip"
mov	byte ptr [ebp+var_4], 1
call	sub_42828A
push	[ebp+Memory]	; Memory
mov	esi, eax
call	sub_4284D8
push	[ebp+var_18]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx
mov	ecx, [ebp+var_C]
test	esi, esi
setz	al
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40E6BC endp



; Attributes: bp-based frame

sub_40E71B proc	near

var_4= dword ptr -4
arg_0= dword ptr  8

push	ebp
mov	ebp, esp
push	ecx
and	[ebp+var_4], 0
push	esi
mov	esi, ecx
call	sub_40E6B1
test	al, al
jz	short loc_40E75E
mov	ecx, [esi+0D8h]
mov	edx, offset a_	; "\\\\.\\"
call	sub_42828A
test	eax, eax
jz	short loc_40E75E
mov	esi, [ebp+arg_0]
push	3
mov	ecx, esi
and	dword ptr [esi], 0
and	dword ptr [esi+4], 0
and	dword ptr [esi+8], 0
call	sub_403396
mov	eax, esi
jmp	short loc_40E770

loc_40E75E:
mov	ecx, [ebp+arg_0]
add	esi, 0D8h
push	esi
call	sub_4030F2
mov	eax, [ebp+arg_0]

loc_40E770:
pop	esi
leave
retn	4
sub_40E71B endp



; Attributes: bp-based frame

sub_40E775 proc	near

Memory=	dword ptr -1Ch
var_18=	dword ptr -18h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_443D80
call	__EH_prolog
sub	esp, 10h
push	ebx
push	esi
push	edi
xor	edi, edi
mov	esi, ecx
mov	[ebp+var_10], edi
call	sub_40E6A6
test	al, al
jnz	short loc_40E7AE
mov	esi, [ebp+arg_0]
push	3
mov	ecx, esi
mov	[esi], edi
mov	[esi+4], edi
mov	[esi+8], edi
call	sub_403396
jmp	loc_40E85F

loc_40E7AE:
lea	eax, [ebp+Memory]
mov	ecx, esi
push	eax
call	sub_40E71B
push	3
mov	[ebp+var_4], edi
pop	ebx
cmp	[ebp+var_18], ebx
jl	short loc_40E843
mov	ecx, [ebp+Memory]
push	5Ch
pop	esi
cmp	[ecx], si
jnz	short loc_40E81C
cmp	[ecx+2], si
jnz	short loc_40E81C
lea	eax, [ecx+4]

loc_40E7D8:
mov	dx, [eax]
cmp	dx, si
jz	short loc_40E7E9
cmp	dx, di
jz	short loc_40E7EF
inc	eax
inc	eax
jmp	short loc_40E7D8

loc_40E7E9:
sub	eax, ecx
sar	eax, 1
jmp	short loc_40E7F2

loc_40E7EF:
or	eax, 0FFFFFFFFh

loc_40E7F2:
cmp	eax, edi
jl	short loc_40E843
lea	eax, [ecx+eax*2+2]

loc_40E7FA:
mov	dx, [eax]
cmp	dx, si
jz	short loc_40E80B
cmp	dx, di
jz	short loc_40E811
inc	eax
inc	eax
jmp	short loc_40E7FA

loc_40E80B:
sub	eax, ecx
sar	eax, 1
jmp	short loc_40E814

loc_40E811:
or	eax, 0FFFFFFFFh

loc_40E814:
cmp	eax, edi
jl	short loc_40E843
inc	eax
push	eax
jmp	short loc_40E82A

loc_40E81C:
cmp	word ptr [ecx+2], 3Ah
jnz	short loc_40E843
cmp	[ecx+4], si
jnz	short loc_40E843
push	ebx

loc_40E82A:
push	[ebp+arg_0]
lea	ecx, [ebp+Memory]
call	sub_403228
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	eax, [ebp+arg_0]
pop	ecx
jmp	short loc_40E861

loc_40E843:
mov	esi, [ebp+arg_0]
push	ebx
mov	ecx, esi
mov	[esi], edi
mov	[esi+4], edi
mov	[esi+8], edi
call	sub_403396
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_40E85F:
mov	eax, esi

loc_40E861:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_40E775 endp



; Attributes: bp-based frame

sub_40E872 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443D94
call	__EH_prolog
push	ecx
and	[ebp+var_10], 0
push	ebx
mov	eax, [ecx+0FCh]
and	[ebp+var_4], 0
lea	edx, [ebp+var_10]
mov	ecx, [eax]
push	edx
push	offset unk_44B6A0
push	eax
call	dword ptr [ecx]
test	eax, eax
mov	eax, [ebp+var_10]
setz	bl
or	[ebp+var_4], 0FFFFFFFFh
test	eax, eax
jz	short loc_40E8B0
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_40E8B0:
mov	ecx, [ebp+var_C]
mov	al, bl
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40E872 endp




sub_40E8BF proc	near

arg_0= dword ptr  4

push	esi
push	edi
mov	edi, [esp+8+arg_0]
mov	esi, ecx
cmp	edi, 4
jnb	short loc_40E8FD
push	0FFFFFFF0h	; nIndex
mov	[esi+0CCh], edi
push	dword ptr [esi+74h] ; hWnd
call	ds:GetWindowLongA
mov	edi, dword_45B818[edi*4]
mov	ecx, eax
and	ecx, 3
cmp	ecx, edi
jz	short loc_40E8FD
and	al, 0FCh
or	eax, edi
push	eax		; dwNewLong
push	0FFFFFFF0h	; nIndex
push	dword ptr [esi+74h] ; hWnd
call	ds:SetWindowLongA

loc_40E8FD:
pop	edi
pop	esi
retn	4
sub_40E8BF endp




sub_40E902 proc	near
cmp	byte ptr [ecx+0D4h], 0
lea	eax, [ecx+0D4h]
setz	dl
mov	[eax], dl
cmp	dword ptr [ecx+0ECh], 0
jle	short loc_40E925
mov	[ecx+0D6h], dl
jmp	short loc_40E92B

loc_40E925:
mov	[ecx+0D5h], dl

loc_40E92B:
jmp	sub_4168AC
sub_40E902 endp




sub_40E930 proc	near
push	0		; lParam
push	0		; wParam
push	405h		; Msg
push	dword ptr [ecx+4] ; hWnd
call	ds:PostMessageA
retn
sub_40E930 endp



; Attributes: bp-based frame

sub_40E943 proc	near

var_70=	dword ptr -70h
var_68=	dword ptr -68h
var_64=	dword ptr -64h
var_5C=	dword ptr -5Ch
var_54=	dword ptr -54h
var_50=	dword ptr -50h
var_48=	dword ptr -48h
var_3C=	dword ptr -3Ch
Memory=	dword ptr -30h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443DE8
call	__EH_prolog
sub	esp, 64h
push	ebx
push	edi
mov	edi, ecx
push	4
lea	ecx, [ebp+var_5C]
call	sub_402794
mov	[ebp+var_5C], offset off_44B518
lea	eax, [ebp+var_5C]
xor	ebx, ebx
push	eax
mov	ecx, edi
mov	[ebp+var_4], ebx
call	sub_4170D3
mov	ecx, edi
call	sub_4028A8
test	al, al
jnz	short loc_40E98C
push	3020208h
push	8A0h
jmp	short loc_40E99B

loc_40E98C:
cmp	[ebp+var_54], ebx
jnz	short loc_40E9A7
push	3020A03h
push	10CFh

loc_40E99B:
mov	ecx, edi
call	sub_40E58A
jmp	loc_40EB06

loc_40E9A7:
push	esi
lea	ecx, [ebp+var_70]
call	sub_40337B
mov	[ebp+var_70], offset off_44B510
lea	esi, [edi+0D8h]
lea	ecx, [ebp+var_24]
push	esi
mov	byte ptr [ebp+var_4], 1
call	sub_4030F2
push	esi
lea	ecx, [ebp+var_18]
mov	byte ptr [ebp+var_4], 2
call	sub_4030F2
mov	ecx, edi
mov	byte ptr [ebp+var_4], 3
call	sub_40E6B1
test	al, al
jz	short loc_40EA0C
push	offset aC	; "C:\\\\"
lea	ecx, [ebp+var_18]
call	sub_404722
mov	ecx, [esi]
mov	edx, offset a_	; "\\\\.\\"
call	sub_42828A
cmp	eax, ebx
jz	short loc_40EA0C
mov	eax, [ebp+var_24]
mov	[ebp+var_20], ebx
mov	[eax], bx

loc_40EA0C:
xor	esi, esi
cmp	[ebp+var_54], ebx
jle	short loc_40EA5D

loc_40EA13:
mov	eax, [ebp+var_50]
mov	ecx, edi
push	dword ptr [eax+esi*4]
lea	eax, [ebp+var_48]
push	eax
call	sub_4174B8
push	eax
lea	edx, [ebp+var_24]
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 4
call	sub_40356A
push	eax
lea	ecx, [ebp+var_70]
mov	byte ptr [ebp+var_4], 5
call	sub_4032B4
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_48]	; Memory
mov	byte ptr [ebp+var_4], 3
call	sub_4284D8
inc	esi
pop	ecx
cmp	esi, [ebp+var_54]
pop	ecx
jl	short loc_40EA13

loc_40EA5D:
mov	eax, [ebp+var_64]
cmp	[ebp+var_68], 1
push	ebx
lea	ecx, [ebp+var_3C]
mov	edx, [eax]
setnle	al
push	eax
call	sub_432457
push	offset word_45D498
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 6
call	sub_403091
push	ebx
push	1
lea	eax, [ebp+var_70]
push	ebx
push	eax
lea	eax, [ebp+Memory]
push	eax
lea	edx, [ebp+var_3C]
lea	ecx, [ebp+var_18]
mov	byte ptr [ebp+var_4], 7
call	sub_432B68
push	[ebp+Memory]	; Memory
mov	esi, eax
mov	byte ptr [ebp+var_4], 6
call	sub_4284D8
pop	ecx
cmp	esi, ebx
pop	esi
jz	short loc_40EACD
cmp	[ebp+var_14], 104h
jl	short loc_40EACD
push	3020A01h
push	10CDh
mov	ecx, edi
call	sub_40E58A

loc_40EACD:		; Memory
push	[ebp+var_3C]
call	sub_4284D8
push	[ebp+var_18]	; Memory
call	sub_4284D8
push	[ebp+var_24]	; Memory
call	sub_4284D8
add	esp, 0Ch
mov	[ebp+var_70], offset off_44B510
lea	ecx, [ebp+var_70]
mov	byte ptr [ebp+var_4], 8
call	sub_428327
lea	ecx, [ebp+var_70]
mov	byte ptr [ebp+var_4], bl
call	sub_4282FE

loc_40EB06:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_5C]
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	edi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40E943 endp



; Attributes: bp-based frame

sub_40EB20 proc	near

Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_443DFC
call	__EH_prolog
sub	esp, 10h
push	ebx
push	esi
mov	esi, [ebp+arg_0]
push	edi
xor	edi, edi
mov	[ebp+var_10], ecx
cmp	[esi+8], edi
jle	short loc_40EB87

loc_40EB3D:
mov	eax, [esi+0Ch]
mov	ecx, [ebp+var_10]
mov	ebx, [eax+edi*4]
push	ebx
call	sub_41756F
test	al, al
jnz	short loc_40EB7F
mov	ecx, [ebp+var_10]
lea	eax, [ebp+Memory]
push	ebx
push	eax
call	sub_417521
mov	ecx, [ebp+arg_4]
and	[ebp+var_4], 0
push	eax
call	sub_4032B4
push	[ebp+Memory]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
inc	edi
pop	ecx
cmp	edi, [esi+8]
jl	short loc_40EB3D
jmp	short loc_40EB87

loc_40EB7F:
mov	ecx, [ebp+arg_4]
call	sub_428327

loc_40EB87:
mov	eax, [ebp+arg_4]
pop	edi
pop	esi
pop	ebx
cmp	dword ptr [eax+8], 0
jnz	short loc_40EBA5
mov	ecx, [ebp+var_10]
push	3020A03h
push	10CFh
call	sub_40E58A

loc_40EBA5:
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn	8
sub_40EB20 endp



; Attributes: bp-based frame

sub_40EBB3 proc	near

var_68=	dword ptr -68h
var_60=	dword ptr -60h
var_5C=	dword ptr -5Ch
var_54=	dword ptr -54h
var_4C=	dword ptr -4Ch
var_40=	dword ptr -40h
var_34=	dword ptr -34h
Memory=	dword ptr -28h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443E58
call	__EH_prolog
sub	esp, 5Ch
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
push	edi
mov	eax, [esi+0ECh]
cmp	eax, ebx
jle	short loc_40EBE0
mov	ecx, [esi+44h]
push	ebx
push	ebx
mov	eax, [ecx]
call	dword ptr [eax+8]
jmp	loc_40ED2D

loc_40EBE0:
push	4
lea	ecx, [ebp+var_68]
call	sub_402794
mov	[ebp+var_68], offset off_44B518
lea	eax, [ebp+var_68]
mov	ecx, esi
push	eax
mov	[ebp+var_4], ebx
call	sub_4170D3
lea	ecx, [ebp+var_54]
call	sub_40337B
mov	edi, offset off_44B510
mov	[ebp+var_54], edi
lea	eax, [ebp+var_54]
mov	ecx, esi
push	eax
lea	eax, [ebp+var_68]
push	eax
mov	byte ptr [ebp+var_4], 1
call	sub_40EB20
cmp	[ebp+var_4C], ebx
jnz	short loc_40EC33
mov	[ebp+var_54], edi
mov	byte ptr [ebp+var_4], 2
jmp	loc_40ED0E

loc_40EC33:
push	3
lea	ecx, [ebp+var_1C]
mov	[ebp+var_1C], ebx
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
call	sub_403396
cmp	[ebp+var_60], 1
mov	byte ptr [ebp+var_4], 3
jnz	short loc_40EC93
mov	eax, [ebp+var_5C]
mov	ecx, esi
push	dword ptr [eax]
lea	eax, [ebp+var_34]
push	eax
call	sub_4174B8
mov	edx, eax
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 4
call	sub_40ED3C
push	eax
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 5
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_34]	; Memory
mov	byte ptr [ebp+var_4], 3
call	sub_4284D8
pop	ecx
pop	ecx
jmp	short loc_40ECA0

loc_40EC93:		; "*"
push	offset asc_45B41C
lea	ecx, [ebp+var_1C]
call	sub_404722

loc_40ECA0:
push	5Ch
lea	ecx, [ebp+var_40]
call	sub_409516
mov	[ebp+var_10], eax
lea	eax, [ebp+var_1C]
lea	edx, [esi+0D8h]
push	eax
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 6
call	sub_40356A
push	[ebp+var_10]
mov	edx, eax
lea	ecx, [ebp+var_34]
mov	byte ptr [ebp+var_4], 7
call	sub_40356A
push	1
mov	edx, eax
lea	ecx, [ebp+var_54]
mov	byte ptr [ebp+var_4], 8
call	sub_433186
push	[ebp+var_34]	; Memory
call	sub_4284D8
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_40]	; Memory
call	sub_4284D8
push	[ebp+var_1C]	; Memory
call	sub_4284D8
add	esp, 10h
mov	[ebp+var_54], edi
mov	byte ptr [ebp+var_4], 9

loc_40ED0E:
lea	ecx, [ebp+var_54]
call	sub_428327
lea	ecx, [ebp+var_54]
mov	byte ptr [ebp+var_4], bl
call	sub_4282FE
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_68]
call	sub_4282FE

loc_40ED2D:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40EBB3 endp



; Attributes: bp-based frame

sub_40ED3C proc	near

Memory=	dword ptr -28h
var_1C=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443E74
call	__EH_prolog
sub	esp, 1Ch
and	[ebp+var_10], 0
push	ebx
push	esi
mov	esi, edx
mov	ebx, ecx
push	edi
mov	ecx, [esi+4]
test	ecx, ecx
jz	short loc_40ED77
mov	edx, [esi]
lea	eax, [edx+ecx*2-2]

loc_40ED61:
cmp	word ptr [eax],	5Ch
jz	short loc_40ED6F
cmp	eax, edx
jz	short loc_40ED77
dec	eax
dec	eax
jmp	short loc_40ED61

loc_40ED6F:
sub	eax, edx
sar	eax, 1
mov	edi, eax
jmp	short loc_40ED7A

loc_40ED77:
or	edi, 0FFFFFFFFh

loc_40ED7A:
test	ecx, ecx
jz	short loc_40EDCE
mov	edx, [esi]
lea	eax, [edx+ecx*2-2]

loc_40ED84:
cmp	word ptr [eax],	2Eh
jz	short loc_40ED92
cmp	eax, edx
jz	short loc_40ED98
dec	eax
dec	eax
jmp	short loc_40ED84

loc_40ED92:
sub	eax, edx
sar	eax, 1
jmp	short loc_40ED9B

loc_40ED98:
or	eax, 0FFFFFFFFh

loc_40ED9B:
test	eax, eax
jl	short loc_40EDCE
cmp	edi, eax
jg	short loc_40EDCE
push	eax
lea	eax, [ebp+var_1C]
push	eax
mov	ecx, esi
call	sub_403228
lea	ecx, [ebp+var_1C]
mov	[ebp+var_4], 1
call	sub_406F3F
lea	eax, [ebp+var_1C]
mov	ecx, ebx
push	eax
call	sub_4030F2
push	[ebp+var_1C]
jmp	short loc_40EDEC

loc_40EDCE:		; "~"
push	offset asc_45B8C8
lea	ecx, [ebp+Memory]
call	sub_403091
and	[ebp+var_4], 0
push	eax
mov	edx, esi
mov	ecx, ebx
call	sub_40356A
push	[ebp+Memory]	; Memory

loc_40EDEC:
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
mov	eax, ebx
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40ED3C endp



; Attributes: bp-based frame

sub_40EE03 proc	near

Memory=	dword ptr -24h
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443E90
call	__EH_prolog
sub	esp, 18h
push	ebx
push	esi
mov	esi, ecx
push	edi
xor	ebx, ebx
mov	ecx, [esi+230h]
mov	edx, [esi+220h]
mov	eax, [esi+234h]
push	ecx
push	1
push	ebx
mov	edi, [eax]
push	ebx
push	ebx
push	edx
push	dword ptr [esi+224h]
push	eax
call	dword ptr [edi+0Ch]
cmp	eax, ebx
jnz	loc_40EEFC
mov	eax, [esi+22Ch]
cmp	[eax+54h], ebx
jnz	loc_40EEFA
cmp	[eax+58h], bl
jnz	loc_40EEFA
push	3
lea	ecx, [ebp+var_18]
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
mov	[ebp+var_10], ebx
call	sub_403396
lea	eax, [ebp+var_18]
mov	edx, 2000321h
push	eax
mov	eax, [esi+22Ch]
mov	ecx, 8E3h
mov	[ebp+var_4], ebx
push	dword ptr [eax+44h]
push	dword ptr [eax+40h]
call	sub_40EF0B
lea	eax, [ebp+var_18]
mov	edx, 2000320h
push	eax
mov	eax, [esi+22Ch]
mov	ecx, 8E2h
push	dword ptr [eax+4Ch]
push	dword ptr [eax+48h]
call	sub_40EF0B
push	0Ah
lea	ecx, [ebp+var_18]
call	sub_40316A
push	2000608h
mov	edx, 1068h
lea	ecx, [ebp+Memory]
call	sub_40B168
push	eax
lea	ecx, [ebp+var_18]
mov	byte ptr [ebp+var_4], 1
call	sub_4031F2
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_18]
push	eax
lea	ecx, [esi+2Ch]
call	sub_40312C
push	[ebp+var_18]	; Memory
call	sub_4284D8
pop	ecx

loc_40EEFA:
xor	eax, eax

loc_40EEFC:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40EE03 endp



; Attributes: bp-based frame

sub_40EF0B proc	near

var_58=	byte ptr -58h
Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_443EA4
call	__EH_prolog
sub	esp, 4Ch
mov	eax, edx
push	esi
mov	edx, ecx
push	eax
lea	ecx, [ebp+Memory]
call	sub_40B168
mov	esi, [ebp+arg_8]
and	[ebp+var_4], 0
push	eax
mov	ecx, esi
call	sub_4031F2
or	[ebp+var_4], 0FFFFFFFFh
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
push	20h
mov	ecx, esi
call	sub_40316A
lea	ecx, [ebp+var_58]
push	[ebp+arg_4]
push	[ebp+arg_0]
call	sub_427B10
lea	eax, [ebp+var_58]
mov	ecx, esi
push	eax
call	sub_403195
mov	ecx, esi
push	0Ah
call	sub_40316A
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	0Ch
sub_40EF0B endp



; Attributes: bp-based frame

sub_40EF7C proc	near

var_298= byte ptr -298h
var_248= byte ptr -248h
var_A8=	byte ptr -0A8h
var_A0=	dword ptr -0A0h
var_9C=	byte ptr -9Ch
var_90=	byte ptr -90h
var_80=	byte ptr -80h
var_6C=	dword ptr -6Ch
var_68=	byte ptr -68h
var_64=	byte ptr -64h
Memory=	dword ptr -60h
var_54=	dword ptr -54h
var_50=	dword ptr -50h
var_44=	dword ptr -44h
var_38=	dword ptr -38h
var_30=	dword ptr -30h
var_24=	dword ptr -24h
var_1C=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443F05
call	__EH_prolog
sub	esp, 28Ch
push	ebx
push	esi
mov	esi, ecx
push	edi
push	4
lea	ecx, [ebp+var_24]
call	sub_402794
mov	[ebp+var_24], offset off_44B518
lea	eax, [ebp+var_24]
xor	ebx, ebx
push	eax
mov	ecx, esi
mov	[ebp+var_4], ebx
call	sub_41717C
mov	[ebp+var_10], ebx
mov	eax, [esi+0FCh]
lea	edx, [ebp+var_10]
push	edx
push	offset unk_44B600
mov	ecx, [eax]
push	eax
mov	byte ptr [ebp+var_4], 1
call	dword ptr [ecx]
cmp	[ebp+var_10], ebx
jz	loc_40F13C
lea	ecx, [ebp+var_298]
call	sub_40F2A9
push	[ebp+var_10]
lea	ecx, [ebp+var_64]
mov	byte ptr [ebp+var_4], 2
call	sub_43D0DB
push	70h		; Size
call	sub_4284B1
pop	ecx
mov	ecx, eax
mov	[ebp+var_54], ecx
cmp	ecx, ebx
mov	byte ptr [ebp+var_4], 3
jz	short loc_40F00C
call	sub_40F1F8
jmp	short loc_40F00E

loc_40F00C:
xor	eax, eax

loc_40F00E:
push	eax
lea	ecx, [ebp+var_68]
mov	byte ptr [ebp+var_4], 2
mov	[ebp+var_6C], eax
call	sub_43D0DB
mov	ecx, [ebp+var_6C]
lea	eax, [ebp+var_248]
mov	[ecx+38h], eax
cmp	[ebp+var_1C], ebx
jnz	short loc_40F043

loc_40F02F:
lea	ecx, [ebp+var_298]
mov	byte ptr [ebp+var_4], 1
call	sub_40F38E
jmp	loc_40F19D

loc_40F043:
lea	ecx, [ebp+var_80]
call	sub_428327
lea	eax, [ebp+var_24]
lea	ecx, [ebp+var_80]
push	eax
call	sub_40F449
push	2000F90h
mov	edx, 1004h
lea	ecx, [ebp+var_44]
call	sub_40B168
push	3000000h
mov	edx, 898h
lea	ecx, [ebp+var_50]
mov	byte ptr [ebp+var_4], 4
call	sub_40B168
mov	ecx, esi
mov	byte ptr [ebp+var_4], 5
mov	[ebp+var_A8], bl
call	sub_40DA67
mov	[ebp+var_A0], eax
lea	eax, [ebp+var_50]
push	eax
lea	ecx, [ebp+var_9C]
call	sub_40312C
push	offset asc_45B128 ; " "
lea	edx, [ebp+var_44]
lea	ecx, [ebp+Memory]
call	sub_409948
push	eax
lea	ecx, [ebp+var_90]
mov	byte ptr [ebp+var_4], 6
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 5
call	sub_4284D8
mov	eax, [ebp+var_6C]
pop	ecx
mov	[eax+5Ch], ebx
mov	ecx, [ebp+var_6C]
call	sub_403932
mov	ecx, esi
call	sub_40DA67
push	eax		; hWndParent
lea	eax, [ebp+var_44]
push	eax		; int
lea	ecx, [ebp+var_298]
call	sub_424FE9
push	[ebp+var_50]	; Memory
test	eax, eax
jz	short loc_40F112
call	sub_4284D8
push	[ebp+var_44]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx
jmp	loc_40F02F

loc_40F112:
call	sub_4284D8
push	[ebp+var_44]	; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 1
pop	ecx
lea	ecx, [ebp+var_298]
call	sub_40F38E
mov	ecx, [esi+44h]
push	1
mov	eax, [ecx]
call	dword ptr [eax+20h]
jmp	short loc_40F19D

loc_40F13C:
mov	ecx, esi
call	sub_40E6A6
test	al, al
jnz	short loc_40F15A
push	3020208h
push	8A0h
mov	ecx, esi
call	sub_40E58A
jmp	short loc_40F19D

loc_40F15A:
lea	ecx, [ebp+var_38]
call	sub_40337B
mov	edi, offset off_44B510
mov	[ebp+var_38], edi
lea	eax, [ebp+var_38]
mov	ecx, esi
push	eax
lea	eax, [ebp+var_24]
push	eax
mov	byte ptr [ebp+var_4], 7
call	sub_40EB20
cmp	[ebp+var_30], ebx
jnz	short loc_40F1AF
mov	[ebp+var_38], edi
lea	ecx, [ebp+var_38]
mov	byte ptr [ebp+var_4], 8
call	sub_428327
lea	ecx, [ebp+var_38]
mov	byte ptr [ebp+var_4], 1
call	sub_4282FE

loc_40F19D:
mov	eax, [ebp+var_10]
mov	byte ptr [ebp+var_4], bl
cmp	eax, ebx
jz	short loc_40F1DD
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
jmp	short loc_40F1DD

loc_40F1AF:
lea	ecx, [ebp+var_38]
call	sub_4332EF
mov	[ebp+var_38], edi
lea	ecx, [ebp+var_38]
mov	byte ptr [ebp+var_4], 9
call	sub_428327
lea	ecx, [ebp+var_38]
mov	byte ptr [ebp+var_4], 1
call	sub_4282FE
lea	ecx, [ebp+var_10]
mov	byte ptr [ebp+var_4], bl
call	sub_4370A0

loc_40F1DD:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_24]
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40EF7C endp



; Attributes: bp-based frame

sub_40F1F8 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443F26
call	__EH_prolog
push	ecx
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
push	3
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44C1B0
mov	dword ptr [esi+4], offset off_44C194
mov	dword ptr [esi+8], offset off_44C170
mov	dword ptr [esi+0Ch], offset off_44C160
lea	ecx, [esi+18h]
mov	dword ptr [esi+10h], offset off_44B990
mov	[esi+14h], ebx
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
lea	ecx, [esi+28h]
push	3
mov	[ebp+var_4], ebx
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
lea	ecx, [esi+64h]
mov	[esi+5Ch], ebx
mov	[esi+60h], bl
mov	[esi+61h], bl
push	3
mov	byte ptr [ebp+var_4], 1
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
mov	ecx, [ebp+var_C]
mov	dword ptr [esi], offset	off_44B87C
mov	dword ptr [esi+4], offset off_44B860
mov	dword ptr [esi+8], offset off_44B83C
mov	dword ptr [esi+0Ch], offset off_44B82C
mov	dword ptr [esi+10h], offset off_44B81C
mov	eax, esi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40F1F8 endp




sub_40F2A9 proc	near
push	esi
mov	esi, ecx
call	sub_40F2E5
lea	eax, [esi+218h]
xor	ecx, ecx
mov	[eax+4], ecx
mov	[eax+8], ecx
mov	[eax+0Ch], ecx
mov	dword ptr [eax+10h], 4
mov	dword ptr [eax], offset	off_44B518
mov	[esi+230h], ecx
mov	[esi+234h], ecx
mov	dword ptr [esi], offset	off_44C1E8
mov	eax, esi
pop	esi
retn
sub_40F2A9 endp



; Attributes: bp-based frame

sub_40F2E5 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443F67
call	__EH_prolog
push	ecx
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
push	3
mov	[ebp+var_10], esi
lea	ecx, [esi+8]
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
lea	ecx, [esi+14h]
push	3
mov	[ebp+var_4], ebx
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
lea	ecx, [esi+20h]
push	3
mov	byte ptr [ebp+var_4], 1
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
lea	ecx, [esi+2Ch]
push	3
mov	byte ptr [ebp+var_4], 2
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
lea	ecx, [esi+38h]
push	3
mov	byte ptr [ebp+var_4], 3
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
lea	ecx, [esi+50h]
mov	byte ptr [ebp+var_4], 4
mov	dword ptr [esi+44h], 80004005h
mov	[esi+48h], bl
call	sub_422DDA
mov	ecx, [ebp+var_C]
mov	dword ptr [esi], offset	off_44C1EC
mov	eax, esi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40F2E5 endp



; Attributes: bp-based frame

sub_40F38E proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443F98
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	eax, [esi+234h]
mov	[ebp+var_4], 2
test	eax, eax
jz	short loc_40F3B6
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_40F3B6:
mov	eax, [esi+230h]
mov	byte ptr [ebp+var_4], 1
test	eax, eax
jz	short loc_40F3CA
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_40F3CA:
and	byte ptr [ebp+var_4], 0
lea	ecx, [esi+218h]
call	sub_4282FE
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_40F3F1
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40F38E endp



; Attributes: bp-based frame

sub_40F3F1 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_443FDB
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
lea	ecx, [esi+50h]
mov	[ebp+var_4], 4
call	sub_423175
push	dword ptr [esi+38h] ; Memory
call	sub_4284D8
push	dword ptr [esi+2Ch] ; Memory
call	sub_4284D8
push	dword ptr [esi+20h] ; Memory
call	sub_4284D8
push	dword ptr [esi+14h] ; Memory
call	sub_4284D8
push	dword ptr [esi+8] ; Memory
call	sub_4284D8
mov	ecx, [ebp+var_C]
add	esp, 14h
mov	large fs:0, ecx
pop	esi
leave
retn
sub_40F3F1 endp




sub_40F449 proc	near

arg_0= dword ptr  4

push	ebx
push	ebp
mov	ebp, [esp+8+arg_0]
push	esi
mov	esi, ecx
push	edi
mov	edi, [ebp+8]
mov	eax, [esi+8]
add	eax, edi
push	eax
call	sub_428378
xor	ebx, ebx
test	edi, edi
jle	short loc_40F479

loc_40F467:
mov	eax, [ebp+0Ch]
mov	ecx, esi
push	dword ptr [eax+ebx*4]
call	sub_429907
inc	ebx
cmp	ebx, edi
jl	short loc_40F467

loc_40F479:
mov	eax, esi
pop	edi
pop	esi
pop	ebp
pop	ebx
retn	4
sub_40F449 endp




sub_40F482 proc	near
push	ebx
push	esi
mov	esi, ecx
push	edi
mov	ecx, [esi+240h]
mov	edx, [esi+230h]
mov	edi, [esi+224h]
mov	eax, [esi+218h]
cmp	byte ptr [esi+248h], 0
push	ecx
mov	ebx, [eax]
push	edx
push	edi
push	dword ptr [esi+228h]
push	eax
jz	short loc_40F4B9
call	dword ptr [ebx+20h]
jmp	short loc_40F4BC

loc_40F4B9:
call	dword ptr [ebx+1Ch]

loc_40F4BC:
mov	[esi+244h], eax
pop	edi
pop	esi
pop	ebx
retn
sub_40F482 endp



; Attributes: bp-based frame

sub_40F4C6 proc	near

var_294= byte ptr -294h
var_244= byte ptr -244h
var_104= byte ptr -104h
var_A4=	byte ptr -0A4h
var_9C=	dword ptr -9Ch
var_98=	byte ptr -98h
var_8C=	byte ptr -8Ch
var_7C=	byte ptr -7Ch
var_78=	byte ptr -78h
var_64=	byte ptr -64h
var_58=	dword ptr -58h
var_54=	byte ptr -54h
var_50=	dword ptr -50h
var_4C=	byte ptr -4Ch
var_44=	dword ptr -44h
var_38=	dword ptr -38h
var_2C=	dword ptr -2Ch
Memory=	dword ptr -20h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= byte ptr	 10h
arg_C= dword ptr  14h
arg_10=	dword ptr  18h
arg_14=	dword ptr  1Ch
arg_18=	dword ptr  20h

mov	eax, offset loc_444053
call	__EH_prolog
sub	esp, 288h
push	ebx
push	esi
xor	esi, esi
push	edi
mov	edi, ecx
mov	[ebp+var_10], esi
mov	[ebp+var_14], esi
mov	eax, [edi+0FCh]
lea	edx, [ebp+var_14]
push	edx
push	offset unk_44B6A0
mov	ecx, [eax]
push	eax
mov	[ebp+var_4], esi
call	dword ptr [ecx]
cmp	eax, esi
jz	short loc_40F55A
push	3020208h
mov	edx, 8A0h
lea	ecx, [ebp+Memory]
call	sub_40B168
cmp	byte ptr [ebp+arg_C], 0
mov	byte ptr [ebp+var_4], 1
jz	short loc_40F526
push	[ebp+Memory]	; lpText
mov	ecx, edi
call	sub_40E529
jmp	short loc_40F536

loc_40F526:
mov	ecx, [ebp+arg_10]
cmp	ecx, esi
jz	short loc_40F536
lea	eax, [ebp+Memory]
push	eax
call	sub_4032B4

loc_40F536:		; Memory
push	[ebp+Memory]
call	sub_4284D8
mov	eax, [ebp+var_14]
or	[ebp+var_4], 0FFFFFFFFh
cmp	eax, esi
pop	ecx
jz	short loc_40F550
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_40F550:
mov	eax, 80004005h
jmp	loc_40F79F

loc_40F55A:
lea	ecx, [ebp+var_294]
call	sub_40F7B0
push	70h		; Size
mov	byte ptr [ebp+var_4], 2
call	sub_4284B1
pop	ecx
mov	[ebp+arg_C], eax
cmp	eax, esi
mov	byte ptr [ebp+var_4], 3
jz	short loc_40F585
mov	ecx, eax
call	sub_40F1F8
jmp	short loc_40F587

loc_40F585:
xor	eax, eax

loc_40F587:
mov	[ebp+var_58], eax
mov	ecx, eax
add	eax, 8
mov	byte ptr [ebp+var_4], 2
neg	ecx
sbb	ecx, ecx
and	ecx, eax
push	ecx
lea	ecx, [ebp+var_54]
call	sub_43D0DB
mov	ecx, [ebp+var_58]
mov	bl, [ebp+arg_8]
lea	eax, [ebp+var_244]
mov	[ecx+38h], eax
and	[ebp+var_A4], 0
test	bl, bl
jz	short loc_40F5DB
push	3020206h
mov	edx, 89Eh
lea	ecx, [ebp+var_44]
call	sub_40B168
mov	[ebp+var_10], 1
mov	byte ptr [ebp+var_4], 4
jmp	short loc_40F5FB

loc_40F5DB:
push	3020205h
mov	edx, 89Dh
lea	ecx, [ebp+Memory]
call	sub_40B168
mov	[ebp+var_10], 2
mov	[ebp+var_4], 5

loc_40F5FB:
push	eax
lea	ecx, [ebp+var_2C]
call	sub_4030F2
test	byte ptr [ebp+var_10], 2
jz	short loc_40F617
push	[ebp+Memory]	; Memory
and	[ebp+var_10], 0FFFFFFFDh
call	sub_4284D8
pop	ecx

loc_40F617:
test	byte ptr [ebp+var_10], 1
mov	[ebp+var_4], 7
jz	short loc_40F62D
push	[ebp+var_44]	; Memory
call	sub_4284D8
pop	ecx

loc_40F62D:
push	3000000h
mov	edx, 898h
lea	ecx, [ebp+var_38]
call	sub_40B168
mov	ecx, edi
mov	byte ptr [ebp+var_4], 9
call	sub_40DA67
mov	[ebp+var_9C], eax
lea	eax, [ebp+var_38]
push	eax
lea	ecx, [ebp+var_98]
call	sub_40312C
push	offset asc_45B128 ; " "
lea	edx, [ebp+var_2C]
lea	ecx, [ebp+var_44]
call	sub_409948
push	eax
lea	ecx, [ebp+var_8C]
mov	byte ptr [ebp+var_4], 0Ah
call	sub_40312C
push	[ebp+var_44]	; Memory
mov	byte ptr [ebp+var_4], 9
call	sub_4284D8
mov	eax, [ebp+var_58]
pop	ecx
mov	[eax+5Ch], esi
mov	ecx, [ebp+var_58]
call	sub_403932
lea	ecx, [ebp+var_78]
call	sub_428327
push	[ebp+arg_0]
lea	ecx, [ebp+var_78]
call	sub_40F449
push	[ebp+arg_4]
lea	ecx, [ebp+var_64]
call	sub_40312C
push	[ebp+var_14]
lea	ecx, [ebp+var_7C]
call	sub_43D0DB
mov	esi, [ebp+arg_14]
mov	ecx, [ebp+var_58]
push	[ebp+arg_18]
mov	[ebp+var_4C], bl
mov	al, [esi]
mov	[ecx+60h], al
mov	eax, [ebp+var_58]
lea	ecx, [eax+64h]
call	sub_40312C
mov	ecx, edi
call	sub_40DA67
push	eax		; hWndParent
lea	eax, [ebp+var_2C]
push	eax		; int
lea	ecx, [ebp+var_294]
call	sub_424FE9
mov	ebx, eax
test	ebx, ebx
jz	short loc_40F71F
push	[ebp+var_38]	; Memory
call	sub_4284D8
push	[ebp+var_2C]	; Memory
call	sub_4284D8
and	byte ptr [ebp+var_4], 0
pop	ecx
pop	ecx
lea	ecx, [ebp+var_294]
call	sub_40F833
jmp	short loc_40F78C

loc_40F71F:
cmp	[ebp+arg_10], 0
jz	short loc_40F73C
mov	ecx, [ebp+arg_10]
call	sub_428327
mov	ecx, [ebp+arg_10]
lea	eax, [ebp+var_104]
push	eax
call	sub_403531

loc_40F73C:
mov	ebx, [ebp+var_50]
test	ebx, ebx
jnz	short loc_40F761
mov	eax, [ebp+var_58]
cmp	[eax+54h], ebx
jnz	short loc_40F761
cmp	[eax+58h], bl
jnz	short loc_40F761
mov	cl, [eax+60h]
add	eax, 64h
mov	[esi], cl
mov	ecx, [ebp+arg_18]
push	eax
call	sub_40312C

loc_40F761:		; Memory
push	[ebp+var_38]
call	sub_4284D8
push	[ebp+var_2C]	; Memory
call	sub_4284D8
and	byte ptr [ebp+var_4], 0
pop	ecx
pop	ecx
lea	ecx, [ebp+var_294]
call	sub_40F833
mov	ecx, [edi+44h]
push	1
mov	eax, [ecx]
call	dword ptr [eax+20h]

loc_40F78C:
mov	eax, [ebp+var_14]
or	[ebp+var_4], 0FFFFFFFFh
test	eax, eax
jz	short loc_40F79D
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_40F79D:
mov	eax, ebx

loc_40F79F:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	1Ch
sub_40F4C6 endp



; Attributes: bp-based frame

sub_40F7B0 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444084
call	__EH_prolog
push	ecx
push	ebx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
call	sub_40F2E5
xor	ebx, ebx
mov	[ebp+var_4], ebx
mov	[esi+218h], ebx
lea	eax, [esi+21Ch]
mov	[eax+4], ebx
mov	[eax+8], ebx
mov	[eax+0Ch], ebx
mov	dword ptr [eax+10h], 4
mov	dword ptr [eax], offset	off_44B518
lea	ecx, [esi+230h]
push	3
mov	byte ptr [ebp+var_4], 2
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
mov	ecx, [ebp+var_C]
mov	[esi+240h], ebx
mov	dword ptr [esi+244h], 80004005h
mov	[esi+248h], bl
mov	dword ptr [esi], offset	off_44C1F0
mov	eax, esi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_40F7B0 endp



; Attributes: bp-based frame

sub_40F833 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4440C2
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	eax, [esi+240h]
mov	[ebp+var_4], 3
test	eax, eax
jz	short loc_40F85B
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_40F85B:		; Memory
push	dword ptr [esi+230h]
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 1
lea	ecx, [esi+21Ch]
call	sub_4282FE
mov	eax, [esi+218h]
and	byte ptr [ebp+var_4], 0
test	eax, eax
jz	short loc_40F88A
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_40F88A:
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_40F3F1
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40F833 endp



; Attributes: bp-based frame

sub_40F8A2 proc	near

var_25C= byte ptr -25Ch
var_258= byte ptr -258h
var_24C= byte ptr -24Ch
var_244= dword ptr -244h
var_240= dword ptr -240h
var_238= byte ptr -238h
var_224= byte ptr -224h
var_E4=	byte ptr -0E4h
var_7C=	dword ptr -7Ch
var_78=	byte ptr -78h
var_6C=	byte ptr -6Ch
var_5C=	byte ptr -5Ch
var_58=	dword ptr -58h
var_54=	dword ptr -54h
var_4C=	dword ptr -4Ch
var_40=	dword ptr -40h
var_3C=	dword ptr -3Ch
var_30=	dword ptr -30h
Memory=	dword ptr -24h
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= byte ptr	 10h
arg_C= dword ptr  14h

mov	eax, offset loc_444121
call	__EH_prolog
sub	esp, 250h
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
mov	[ebp+var_18], esi
mov	[ebp+var_10], ebx
mov	eax, [esi+0FCh]
lea	edx, [ebp+var_10]
push	edx
push	offset unk_44B6A0
mov	ecx, [eax]
push	eax
mov	[ebp+var_4], ebx
call	dword ptr [ecx]
cmp	[ebp+var_10], ebx
jz	loc_40FB1F
lea	ecx, [ebp+var_25C]
call	sub_40FD90
push	38h		; Size
mov	byte ptr [ebp+var_4], 1
call	sub_4284B1
pop	ecx
mov	[ebp+var_40], eax
cmp	eax, ebx
mov	byte ptr [ebp+var_4], 2
jz	short loc_40F909
mov	ecx, eax
call	sub_40FBA8
jmp	short loc_40F90B

loc_40F909:
xor	eax, eax

loc_40F90B:
push	edi
push	eax
lea	ecx, [ebp+var_5C]
mov	byte ptr [ebp+var_4], 1
mov	[ebp+var_58], eax
call	sub_43D0DB
mov	ecx, [ebp+var_58]
lea	eax, [ebp+var_224]
push	3020205h
mov	edx, 89Dh
mov	[ecx+30h], eax
lea	ecx, [ebp+var_30]
call	sub_40B168
push	3000000h
mov	edx, 898h
lea	ecx, [ebp+var_3C]
mov	byte ptr [ebp+var_4], 3
call	sub_40B168
mov	ecx, esi
mov	byte ptr [ebp+var_4], 4
call	sub_40DA67
mov	[ebp+var_7C], eax
lea	eax, [ebp+var_3C]
push	eax
lea	ecx, [ebp+var_78]
call	sub_40312C
push	offset asc_45B128 ; " "
lea	ecx, [ebp+var_4C]
call	sub_403091
push	eax
lea	edx, [ebp+var_30]
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 5
call	sub_40356A
push	eax
lea	ecx, [ebp+var_6C]
mov	byte ptr [ebp+var_4], 6
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_4C]	; Memory
mov	byte ptr [ebp+var_4], 4
call	sub_4284D8
pop	ecx
pop	ecx
push	offset word_45D498
lea	ecx, [ebp+Memory]
call	sub_403091
mov	esi, [ebp+var_58]
lea	eax, [ebp+Memory]
push	eax
mov	byte ptr [ebp+var_4], 7
lea	ecx, [esi+1Ch]
mov	[esi+18h], bl
call	sub_40312C
mov	[esi+28h], ebx
mov	[esi+2Ch], ebx
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 4
call	sub_4284D8
pop	ecx
push	[ebp+var_10]
lea	ecx, [ebp+var_25C]
call	sub_43D0DB
push	[ebp+arg_0]
lea	ecx, [ebp+var_258]
call	sub_40312C
mov	esi, [ebp+arg_4]
lea	ecx, [ebp+var_24C]
push	dword ptr [esi+8]
call	sub_428378
xor	edi, edi
cmp	[esi+8], ebx
jle	short loc_40FA2B

loc_40FA14:
mov	eax, [esi+0Ch]
lea	ecx, [ebp+var_24C]
push	dword ptr [eax+edi*4]
call	sub_4032B4
inc	edi
cmp	edi, [esi+8]
jl	short loc_40FA14

loc_40FA2B:
push	[ebp+var_244]
lea	ecx, [ebp+var_238]
call	sub_428378
xor	esi, esi
cmp	[ebp+var_244], ebx
pop	edi
jle	short loc_40FA66

loc_40FA47:
mov	eax, [ebp+var_240]
lea	ecx, [ebp+var_238]
mov	eax, [eax+esi*4]
push	dword ptr [eax]
call	sub_429907
inc	esi
cmp	esi, [ebp+var_244]
jl	short loc_40FA47

loc_40FA66:
mov	[ebp+var_14], ebx
lea	eax, [ebp+var_25C]
mov	edx, offset loc_40FD0E
push	eax
lea	ecx, [ebp+var_14]
mov	byte ptr [ebp+var_4], 8
call	sub_441890
mov	esi, eax
cmp	esi, ebx
jz	short loc_40FAB4
lea	ecx, [ebp+var_14]
call	sub_441850
push	[ebp+var_3C]	; Memory
call	sub_4284D8
push	[ebp+var_30]	; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], bl
pop	ecx
lea	ecx, [ebp+var_25C]
call	sub_40FE06
jmp	loc_40FB85

loc_40FAB4:
mov	ecx, [ebp+var_18]
call	sub_40DA67
push	eax		; hWndParent
lea	eax, [ebp+var_14]
push	eax		; int
lea	eax, [ebp+var_30]
push	eax		; int
lea	ecx, [ebp+var_224]
call	sub_424624
cmp	[ebp+arg_C], ebx
jz	short loc_40FAEC
mov	ecx, [ebp+arg_C]
call	sub_428327
mov	ecx, [ebp+arg_C]
lea	eax, [ebp+var_E4]
push	eax
call	sub_403531

loc_40FAEC:
mov	esi, [ebp+var_54]
lea	ecx, [ebp+var_14]
call	sub_441850
push	[ebp+var_3C]	; Memory
call	sub_4284D8
push	[ebp+var_30]	; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], bl
pop	ecx
lea	ecx, [ebp+var_25C]
call	sub_40FE06
cmp	esi, 80004002h
jnz	short loc_40FB78

loc_40FB1F:
push	3020208h
mov	edx, 8A0h
lea	ecx, [ebp+Memory]
call	sub_40B168
cmp	[ebp+arg_8], bl
mov	byte ptr [ebp+var_4], 9
jz	short loc_40FB47
push	[ebp+Memory]	; lpText
mov	ecx, [ebp+var_18]
call	sub_40E529
jmp	short loc_40FB57

loc_40FB47:
mov	ecx, [ebp+arg_C]
cmp	ecx, ebx
jz	short loc_40FB57
lea	eax, [ebp+Memory]
push	eax
call	sub_4032B4

loc_40FB57:		; Memory
push	[ebp+Memory]
call	sub_4284D8
mov	eax, [ebp+var_10]
or	[ebp+var_4], 0FFFFFFFFh
cmp	eax, ebx
pop	ecx
jz	short loc_40FB71
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_40FB71:
mov	eax, 80004004h
jmp	short loc_40FB98

loc_40FB78:
mov	eax, [ebp+var_18]
push	1
mov	ecx, [eax+44h]
mov	eax, [ecx]
call	dword ptr [eax+20h]

loc_40FB85:
mov	eax, [ebp+var_10]
or	[ebp+var_4], 0FFFFFFFFh
cmp	eax, ebx
jz	short loc_40FB96
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_40FB96:
mov	eax, esi

loc_40FB98:
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	10h
sub_40F8A2 endp




sub_40FBA8 proc	near
push	esi
mov	esi, ecx
push	edi
xor	edi, edi
mov	dword ptr [esi], offset	off_44C270
mov	dword ptr [esi+4], offset off_44C260
mov	dword ptr [esi+8], offset off_44B990
mov	dword ptr [esi+0Ch], offset off_44B9D8
lea	ecx, [esi+1Ch]
mov	dword ptr [esi+10h], offset off_44C160
mov	[esi+14h], edi
push	3
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
mov	[esi+30h], edi
mov	dword ptr [esi], offset	off_44C238
mov	dword ptr [esi+4], offset off_44C228
mov	dword ptr [esi+8], offset off_44C218
mov	dword ptr [esi+0Ch], offset off_44C204
mov	dword ptr [esi+10h], offset off_44C1F4
mov	eax, esi
pop	edi
pop	esi
retn
sub_40FBA8 endp



; Attributes: bp-based frame

; int __stdcall	sub_40FC0F(int,	void *Buf1, int)
sub_40FC0F proc	near

arg_0= dword ptr  8
Buf1= dword ptr	 0Ch
arg_8= dword ptr  10h

push	ebp
mov	ebp, esp
push	esi
mov	esi, [ebp+Buf1]
push	edi
push	10h
pop	edi
push	edi		; Size
push	offset unk_44CCB8 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_40FC3A

loc_40FC2D:
mov	ecx, [ebp+arg_8]
mov	eax, [ebp+arg_0]
mov	[ecx], eax
jmp	loc_40FCCA

loc_40FC3A:		; Size
push	edi
push	offset unk_44B5E0 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jz	short loc_40FC2D
push	edi		; Size
push	offset unk_44B710 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_40FC6A
mov	eax, [ebp+arg_0]
mov	ecx, eax
lea	edx, [eax+4]
jmp	short loc_40FCBF

loc_40FC6A:		; Size
push	edi
push	offset unk_44B720 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_40FC87
mov	eax, [ebp+arg_0]
mov	ecx, eax
lea	edx, [eax+8]
jmp	short loc_40FCBF

loc_40FC87:		; Size
push	edi
push	offset unk_44B7B0 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_40FCA4
mov	eax, [ebp+arg_0]
mov	ecx, eax
lea	edx, [eax+0Ch]
jmp	short loc_40FCBF

loc_40FCA4:		; Size
push	edi
push	offset unk_44B700 ; Buf2
push	esi		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_40FCD4
mov	eax, [ebp+arg_0]
mov	ecx, eax
lea	edx, [eax+10h]

loc_40FCBF:
neg	ecx
sbb	ecx, ecx
and	ecx, edx
mov	edx, [ebp+arg_8]
mov	[edx], ecx

loc_40FCCA:
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+4]
xor	eax, eax
jmp	short loc_40FCD9

loc_40FCD4:
mov	eax, 80004002h

loc_40FCD9:
pop	edi
pop	esi
pop	ebp
retn	0Ch
sub_40FC0F endp




; int __stdcall	sub_40FCDF(void	*Memory)
sub_40FCDF proc	near

Memory=	dword ptr  4

push	esi
mov	esi, [esp+4+Memory]
dec	dword ptr [esi+14h]
mov	eax, [esi+14h]
jnz	short loc_40FD00
test	esi, esi
jz	short loc_40FCFE
mov	ecx, esi
call	sub_40FD04
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_40FCFE:
xor	eax, eax

loc_40FD00:
pop	esi
retn	4
sub_40FCDF endp




sub_40FD04 proc	near
push	dword ptr [ecx+1Ch] ; Memory
call	sub_4284D8
pop	ecx
retn
sub_40FD04 endp


loc_40FD0E:
mov	ecx, [esp+4]
call	sub_40FD1C
xor	eax, eax
retn	4


; Attributes: bp-based frame

sub_40FD1C proc	near

var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444134
call	__EH_prolog
sub	esp, 0Ch
and	[ebp+var_4], 0
push	ebx
push	esi
mov	esi, ecx
push	edi
mov	[ebp+var_18], esi
lea	eax, [esi+38h]
mov	[ebp+var_10], esp
mov	[ebp+var_14], eax
mov	ecx, [esi+200h]
mov	edx, [esi+2Ch]
mov	eax, [esi]
mov	edi, [esi+4]
push	ecx
push	edx
push	dword ptr [esi+30h]
mov	ebx, [eax]
mov	byte ptr [ebp+var_4], 1
push	edi
push	eax
call	dword ptr [ebx+24h]
mov	ecx, [ebp+var_14]
and	byte ptr [ebp+var_4], 0
mov	[esi+208h], eax
call	sub_424FA1

loc_40FD6E:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
pop	ebx
leave
retn
sub_40FD1C endp




sub_40FD7D proc	near
mov	eax, [ebp-18h]
mov	dword ptr [eax+208h], 80004005h
mov	eax, offset loc_40FD6E
retn
sub_40FD7D endp



; Attributes: bp-based frame

sub_40FD90 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444169
call	__EH_prolog
push	ecx
push	esi
push	edi
mov	esi, ecx
xor	edi, edi
mov	[ebp+var_10], esi
mov	[esi], edi
lea	ecx, [esi+4]
push	3
mov	[ebp+var_4], edi
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
push	4
mov	[esi+14h], edi
pop	eax
mov	[esi+18h], edi
mov	[esi+1Ch], edi
mov	[esi+20h], eax
mov	dword ptr [esi+10h], offset off_44B510
mov	[esi+28h], edi
mov	[esi+2Ch], edi
mov	[esi+30h], edi
mov	[esi+34h], eax
mov	dword ptr [esi+24h], offset off_44C298
lea	ecx, [esi+38h]
mov	byte ptr [ebp+var_4], 3
call	sub_422DDA
mov	ecx, [ebp+var_C]
mov	[esi+200h], edi
mov	eax, esi
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40FD90 endp



; Attributes: bp-based frame

sub_40FE06 proc	near

var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4441B0
call	__EH_prolog
push	ecx
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	eax, [esi+200h]
mov	[ebp+var_4], 4
test	eax, eax
jz	short loc_40FE2F
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_40FE2F:
push	edi
lea	ecx, [esi+38h]
mov	byte ptr [ebp+var_4], 3
call	sub_423175
lea	ecx, [esi+24h]
mov	byte ptr [ebp+var_4], 2
call	sub_4282FE
lea	edi, [esi+10h]
mov	[ebp+var_14], edi
mov	dword ptr [edi], offset	off_44B510
mov	ecx, edi
mov	byte ptr [ebp+var_4], 5
call	sub_428327
mov	ecx, edi
mov	byte ptr [ebp+var_4], 1
call	sub_4282FE
push	dword ptr [esi+4] ; Memory
call	sub_4284D8
mov	esi, [esi]
or	[ebp+var_4], 0FFFFFFFFh
pop	ecx
pop	edi
test	esi, esi
jz	short loc_40FE84
mov	eax, [esi]
push	esi
call	dword ptr [eax+8]

loc_40FE84:
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_40FE06 endp



; Attributes: bp-based frame

sub_40FE91 proc	near

var_48=	byte ptr -48h
Memory=	dword ptr -20h
var_14=	byte ptr -14h
var_13=	byte ptr -13h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_4441D4
call	__EH_prolog
sub	esp, 3Ch
push	ebx
push	esi
mov	esi, ecx
push	edi
mov	[ebp+var_10], esi
mov	bl, [esi+184h]
mov	al, [esi+185h]
and	byte ptr [esi+184h], 0
and	byte ptr [esi+185h], 0
mov	[ebp+var_14], bl
mov	[ebp+var_13], al
and	[ebp+var_4], 0
lea	ecx, [ebp+var_48]
call	sub_40283B
lea	eax, [ebp+var_48]
mov	ecx, esi
push	eax
mov	byte ptr [ebp+var_4], 1
call	sub_4167F4
push	offset word_45D498
lea	ecx, [ebp+Memory]
call	sub_403091
push	0
push	1
push	[ebp+arg_0]
lea	eax, [ebp+Memory]
mov	ecx, esi
mov	byte ptr [ebp+var_4], 2
push	eax
call	sub_40F8A2
push	[ebp+Memory]	; Memory
mov	edi, eax
mov	byte ptr [ebp+var_4], 1
call	sub_4284D8
test	edi, edi
pop	ecx
jz	short loc_40FF3F
mov	al, [ebp+var_13]
mov	[esi+184h], bl
mov	ecx, esi
mov	[esi+185h], al
call	sub_40E5B8
cmp	edi, 80004004h
jz	short loc_40FF60
push	edi
mov	ecx, esi
call	sub_40E579
jmp	short loc_40FF60

loc_40FF3F:
lea	eax, [ebp+var_48]
mov	ecx, esi
push	eax
call	sub_41687D
mov	al, [ebp+var_13]
mov	[esi+184h], bl
mov	ecx, esi
mov	[esi+185h], al
call	sub_40E5B8

loc_40FF60:
and	byte ptr [ebp+var_4], 0
lea	ecx, [ebp+var_48]
call	sub_40299B
mov	al, [ebp+var_13]
mov	ecx, [ebp+var_C]
mov	[esi+184h], bl
mov	[esi+185h], al
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_40FE91 endp


loc_40FF8C:
mov	eax, offset loc_4441F0
call	__EH_prolog
sub	esp, 18h
push	esi
mov	esi, ecx
push	3020222h
mov	edx, 8AEh
lea	ecx, [ebp-24h]
call	sub_40B168
and	dword ptr [ebp-4], 0
push	3020223h
mov	edx, 8AFh
lea	ecx, [ebp-18h]
call	sub_40B168
push	offset asc_45B8D4 ; "\n'"
lea	ecx, [ebp-18h]
mov	byte ptr [ebp-4], 1
call	sub_403195
lea	eax, [esi+0D8h]
lea	ecx, [ebp-18h]
push	eax
call	sub_4031F2
push	offset a?_1	; "' ?"
lea	ecx, [ebp-18h]
call	sub_403195
mov	eax, esi
push	23h
push	dword ptr [ebp-24h]
lea	ecx, [esi+4]
neg	eax
push	dword ptr [ebp-18h]
sbb	eax, eax
and	eax, ecx
mov	eax, [eax]
push	eax
db 0FFh
db 15h
off_410009 dd offset MessageBoxW
cmp	eax, 6
jnz	short loc_41001C
push	dword ptr [ebp+8]
mov	ecx, esi
call	sub_40FE91

loc_41001C:
push	dword ptr [ebp-18h]

loc_41001F:
call	sub_4284D8
push	dword ptr [ebp-24h]
call	sub_4284D8
pop	ecx
pop	ecx
pop	esi
mov	ecx, [ebp-0Ch]
mov	large fs:0, ecx
leave
retn	4



sub_41003D proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 4

loc_410042:
jmp	sub_40FC0F
sub_41003D endp




sub_410047 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 4
jmp	sub_403900
sub_410047 endp




sub_410051 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 4

loc_410056:
jmp	sub_40FCDF
sub_410051 endp




sub_41005B proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 8
jmp	sub_40FC0F
sub_41005B endp




sub_410065 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 8
jmp	sub_403900
sub_410065 endp




sub_41006F proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 8
jmp	sub_40FCDF
sub_41006F endp




sub_410079 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 0Ch
jmp	sub_40FC0F
sub_410079 endp




sub_410083 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 0Ch
jmp	sub_403900
sub_410083 endp




sub_41008D proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 0Ch
jmp	sub_40FCDF
sub_41008D endp




sub_410097 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 10h
jmp	sub_40FC0F
sub_410097 endp




sub_4100A1 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 10h
jmp	sub_403900
sub_4100A1 endp




sub_4100AB proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 10h
jmp	sub_40FCDF
sub_4100AB endp




sub_4100B5 proc	near
push	esi
mov	esi, ecx
lea	ecx, [esi+24h]
call	sub_428327
lea	ecx, [esi+38h]
call	sub_428327
and	dword ptr [esi+4Ch], 0
pop	esi
retn
sub_4100B5 endp



; Attributes: bp-based frame

sub_4100CE proc	near

var_5C=	dword ptr -5Ch
var_58=	dword ptr -58h
var_4C=	dword ptr -4Ch
var_40=	dword ptr -40h
var_34=	dword ptr -34h
Memory=	dword ptr -28h
var_1C=	dword ptr -1Ch
var_D= byte ptr	-0Dh
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_44423C
call	__EH_prolog
sub	esp, 50h
mov	eax, [ebp+arg_4]
push	ebx
push	esi
mov	esi, ecx
and	byte ptr [eax],	0
push	edi
cmp	dword ptr [esi+2Ch], 0
jz	short loc_41012F
lea	edi, [esi+24h]

loc_4100EF:
mov	eax, [edi+8]
mov	ecx, [edi+0Ch]
mov	ebx, [ebp+arg_0]
mov	ecx, [ecx+eax*4-4]
lea	eax, [ebp+var_D]
push	eax
push	ebx
call	sub_42B75A
test	al, al
jz	loc_410224
cmp	[ebp+var_D], 0
jnz	loc_410244
mov	ecx, edi
call	sub_42832F
lea	ecx, [esi+38h]
call	sub_42832F
cmp	dword ptr [esi+2Ch], 0
jnz	short loc_4100EF
jmp	short loc_410132

loc_41012F:
mov	ebx, [ebp+arg_0]

loc_410132:
mov	ecx, [esi+18h]
mov	eax, [esi+4Ch]
cmp	eax, ecx
jge	loc_41032B
mov	ecx, [esi+1Ch]
mov	edi, [ecx+eax*4]
mov	eax, [edi+4]
test	eax, eax
jz	short loc_410167
mov	ecx, [edi]
lea	eax, [ecx+eax*2-2]

loc_410153:
cmp	word ptr [eax],	5Ch
jz	short loc_410161
cmp	eax, ecx
jz	short loc_410167
dec	eax
dec	eax
jmp	short loc_410153

loc_410161:
sub	eax, ecx
sar	eax, 1
jmp	short loc_41016A

loc_410167:
or	eax, 0FFFFFFFFh

loc_41016A:
mov	ecx, [ebp+arg_8]
and	dword ptr [ecx+4], 0
mov	ecx, [ecx]
and	word ptr [ecx],	0
test	eax, eax
jl	short loc_4101A2
inc	eax
mov	ecx, edi
push	eax
lea	eax, [ebp+Memory]
push	eax
call	sub_403228
mov	ecx, [ebp+arg_8]
and	[ebp+var_4], 0
push	eax
call	sub_40312C
push	[ebp+Memory]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
pop	ecx

loc_4101A2:
cmp	dword ptr [esi+8], 0
jnz	short loc_4101D0
cmp	dword ptr [edi+4], 2
jnz	short loc_4101D0
mov	eax, [edi]
cmp	word ptr [eax+2], 3Ah
jnz	short loc_4101D0
push	edi
lea	ecx, [ebx+28h]
call	sub_40312C
and	dword ptr [ebx], 0
and	dword ptr [ebx+4], 0
mov	dword ptr [ebx+20h], 10h
jmp	short loc_41021F

loc_4101D0:
push	edi
lea	edx, [esi+4]
lea	ecx, [ebp+Memory]
call	sub_40356A
push	dword ptr [eax]	; lpFileName
mov	ecx, ebx
mov	[ebp+var_4], 1
call	sub_42B49E
push	[ebp+Memory]	; Memory
mov	bl, al
neg	bl
sbb	bl, bl
or	[ebp+var_4], 0FFFFFFFFh
inc	bl
call	sub_4284D8
test	bl, bl
pop	ecx
jz	short loc_41021C
call	sub_41033E
mov	ecx, [ebp+arg_8]
push	edi
mov	esi, eax
call	sub_40312C
mov	eax, esi
jmp	loc_41032D

loc_41021C:
mov	ebx, [ebp+arg_0]

loc_41021F:
inc	dword ptr [esi+4Ch]
jmp	short loc_410256

loc_410224:
call	sub_41033E
mov	ecx, [esi+44h]
mov	edi, eax
mov	eax, [esi+40h]
push	dword ptr [ecx+eax*4-4]
mov	ecx, [ebp+arg_8]
call	sub_40312C
mov	eax, edi
jmp	loc_41032D

loc_410244:
mov	eax, [esi+40h]
mov	ecx, [esi+44h]
push	dword ptr [ecx+eax*4-4]
mov	ecx, [ebp+arg_8]
call	sub_40312C

loc_410256:
mov	ecx, [ebp+arg_8]
lea	eax, [ebx+28h]
push	eax
call	sub_4031F2
cmp	byte ptr [esi],	0
jnz	loc_410325
mov	eax, [ebx+20h]
shr	eax, 4
test	al, 1
jz	loc_410325
mov	edx, [ebp+arg_8]
push	5Ch
lea	ecx, [ebp+var_1C]
call	sub_409999
push	2Ah
lea	ecx, [ebp+var_4C]
mov	[ebp+var_4], 2
call	sub_409516
mov	edi, eax
lea	eax, [ebp+var_1C]
lea	edx, [esi+4]
push	eax
lea	ecx, [ebp+var_40]
mov	byte ptr [ebp+var_4], 3
call	sub_40356A
push	edi
mov	edx, eax
lea	ecx, [ebp+var_34]
mov	byte ptr [ebp+var_4], 4
call	sub_40356A
or	[ebp+var_5C], 0FFFFFFFFh
push	eax
lea	ecx, [ebp+var_58]
mov	byte ptr [ebp+var_4], 6
call	sub_4030F2
lea	eax, [ebp+var_5C]
lea	ecx, [esi+24h]
push	eax
mov	byte ptr [ebp+var_4], 7
call	sub_410F7F
push	[ebp+var_58]	; Memory
mov	byte ptr [ebp+var_4], 5
call	sub_4284D8
pop	ecx
lea	ecx, [ebp+var_5C]
call	sub_42B047
push	[ebp+var_34]	; Memory
call	sub_4284D8
push	[ebp+var_40]	; Memory
call	sub_4284D8
push	[ebp+var_4C]	; Memory
mov	byte ptr [ebp+var_4], 2
call	sub_4284D8
add	esp, 0Ch
lea	eax, [ebp+var_1C]
lea	ecx, [esi+38h]
push	eax
call	sub_4032B4
push	[ebp+var_1C]	; Memory
call	sub_4284D8
pop	ecx

loc_410325:
mov	eax, [ebp+arg_4]
mov	byte ptr [eax],	1

loc_41032B:
xor	eax, eax

loc_41032D:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	0Ch
sub_4100CE endp




sub_41033E proc	near
call	ds:GetLastError
test	eax, eax
jnz	short locret_41034D
mov	eax, 80004005h

locret_41034D:
retn
sub_41033E endp



; Attributes: bp-based frame

sub_41034E proc	near

var_74=	byte ptr -74h
var_34=	dword ptr -34h
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
Memory=	dword ptr -1Ch
var_18=	byte ptr -18h
var_14=	word ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_444288
call	__EH_prolog
sub	esp, 68h
push	ebx
push	esi
mov	esi, ecx
push	edi
xor	ebx, ebx
push	3
lea	ecx, [ebp+var_28]
mov	[ebp+var_10], ebx
mov	[ebp+var_28], ebx
mov	[ebp+var_24], ebx
mov	[ebp+var_20], ebx
call	sub_403396
push	2000320h
mov	edx, 8E2h
lea	ecx, [ebp+Memory]
mov	[ebp+var_4], ebx
call	sub_40B168
push	eax
lea	ecx, [ebp+var_28]
mov	byte ptr [ebp+var_4], 1
call	sub_4031F2
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
pop	ecx
push	20h
lea	ecx, [ebp+var_28]
call	sub_40316A
push	dword ptr [esi+224h]
lea	ecx, [ebp+var_74]
push	dword ptr [esi+220h]
call	sub_427B10
lea	eax, [ebp+var_74]
lea	ecx, [ebp+var_28]
push	eax
call	sub_403195
push	0Ah
lea	ecx, [ebp+var_28]
pop	edi
push	edi
call	sub_40316A
push	2000321h
mov	edx, 8E3h
lea	ecx, [ebp+Memory]
call	sub_40B168
push	eax
lea	ecx, [ebp+var_28]
mov	byte ptr [ebp+var_4], 2
call	sub_4031F2
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
pop	ecx
push	20h
lea	ecx, [ebp+var_28]
call	sub_40316A
push	dword ptr [esi+22Ch]
lea	ecx, [ebp+var_74]
push	dword ptr [esi+228h]
call	sub_427B10
lea	eax, [ebp+var_74]
lea	ecx, [ebp+var_28]
push	eax
call	sub_403195
push	edi
lea	ecx, [ebp+var_28]
call	sub_40316A
push	2000322h
mov	edx, 8E4h
lea	ecx, [ebp+Memory]
call	sub_40B168
push	eax
lea	ecx, [ebp+var_28]
mov	byte ptr [ebp+var_4], 3
call	sub_4031F2
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
pop	ecx
push	20h
lea	ecx, [ebp+var_28]
call	sub_40316A
push	dword ptr [esi+234h]
lea	ecx, [ebp+var_74]
push	dword ptr [esi+230h]
call	sub_427B10
lea	eax, [ebp+var_74]
lea	ecx, [ebp+Memory]
push	eax
call	sub_403091
lea	eax, [ebp+Memory]
mov	edx, 259h
push	eax
push	2000982h
lea	ecx, [ebp+var_34]
mov	byte ptr [ebp+var_4], 4
call	sub_40744B
push	eax
lea	ecx, [ebp+var_28]
mov	byte ptr [ebp+var_4], 5
call	sub_4031F2
push	[ebp+var_34]	; Memory
call	sub_4284D8
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
pop	ecx
pop	ecx
push	edi
lea	ecx, [ebp+var_28]
call	sub_40316A
push	3020721h
mov	edx, 0FCAh
lea	ecx, [ebp+var_34]
call	sub_40B168
push	eax
lea	ecx, [ebp+var_28]
mov	byte ptr [ebp+var_4], 6
call	sub_4031F2
push	[ebp+var_34]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
pop	ecx
push	20h
lea	ecx, [ebp+var_28]
call	sub_40316A
mov	ecx, [esi+238h]
lea	edx, [ebp+var_74]
call	sub_437180
lea	eax, [ebp+var_74]
lea	ecx, [ebp+var_28]
push	eax
call	sub_403195
push	edi
lea	ecx, [ebp+var_28]
call	sub_40316A
push	3020722h
mov	edx, 0FCBh
lea	ecx, [ebp+var_34]
call	sub_40B168
push	eax
lea	ecx, [ebp+var_28]
mov	byte ptr [ebp+var_4], 7
call	sub_4031F2
push	[ebp+var_34]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
pop	ecx
push	20h
lea	ecx, [ebp+var_28]
call	sub_40316A
mov	ecx, [esi+25Ch]
lea	edx, [ebp+var_74]
call	sub_437180
lea	eax, [ebp+var_74]
lea	ecx, [ebp+var_28]
push	eax
call	sub_403195
push	edi
lea	ecx, [ebp+var_28]
call	sub_40316A
cmp	dword ptr [esi+220h], 1
jnz	short loc_4105DE
cmp	[esi+224h], ebx
jnz	short loc_4105DE
cmp	dword ptr [esi+218h], 1
lea	eax, [esi+218h]
jnz	short loc_4105DE
cmp	[eax+4], ebx
jnz	short loc_4105DE
push	offset aSha256	; "SHA-256: "
lea	ecx, [ebp+var_28]
call	sub_403195
xor	edi, edi

loc_4105B8:
movzx	ecx, byte ptr [esi+edi+23Ch]
lea	edx, [ebp+var_18]
call	sub_410607
lea	eax, [ebp+var_18]
lea	ecx, [ebp+var_28]
push	eax
mov	[ebp+var_14], bx
call	sub_403195
inc	edi
cmp	edi, 20h
jl	short loc_4105B8

loc_4105DE:
mov	ecx, [ebp+arg_0]
lea	eax, [ebp+var_28]
push	eax
call	sub_4030F2
push	[ebp+var_28]	; Memory
call	sub_4284D8
mov	eax, [ebp+arg_0]
pop	ecx
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_41034E endp




sub_410607 proc	near
push	esi
push	2
add	edx, 2
pop	esi

loc_41060E:
mov	eax, ecx
and	eax, 0Fh
shr	ecx, 4
cmp	eax, 0Ah
jnb	short loc_410620
add	eax, 30h
jmp	short loc_410623

loc_410620:
add	eax, 37h

loc_410623:
mov	[edx], ax
dec	edx
dec	edx
dec	esi
jnz	short loc_41060E
pop	esi
retn
sub_410607 endp



; Attributes: bp-based frame

sub_41062D proc	near

var_110= dword ptr -110h
var_100= byte ptr -100h
var_98=	dword ptr -98h
var_94=	dword ptr -94h
var_78=	dword ptr -78h
var_70=	dword ptr -70h
var_60=	dword ptr -60h
Memory=	dword ptr -50h
var_44=	dword ptr -44h
var_38=	dword ptr -38h
var_34=	dword ptr -34h
var_2D=	byte ptr -2Dh
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
lpAddress= dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_D= byte ptr	-0Dh
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4442F2
call	__EH_prolog
sub	esp, 0F4h
push	ebx
push	esi
mov	esi, ecx
push	edi
xor	ebx, ebx
push	20h		; Size
lea	eax, [esi+23Ch]
push	ebx		; Val
mov	[esi+218h], ebx
mov	[esi+220h], ebx
mov	[esi+228h], ebx
mov	[esi+230h], ebx
push	eax		; Dst
mov	[esi+25Ch], ebx
mov	[esi+238h], ebx
mov	[esi+21Ch], ebx
mov	[esi+224h], ebx
mov	[esi+22Ch], ebx
mov	[esi+234h], ebx
call	memset
add	esp, 0Ch
mov	ecx, 8000h	; dwSize
mov	[ebp+var_4], ebx
call	sub_4411B0
cmp	eax, ebx
mov	[ebp+lpAddress], eax
setnz	al
cmp	al, bl
jnz	short loc_4106B5
mov	ebx, 8007000Eh
jmp	loc_410B39

loc_4106B5:
lea	ecx, [esi+260h]
mov	[ebp+var_28], ebx
mov	[ebp+var_24], ebx
call	sub_4100B5
push	3020800h
mov	edx, 0FD2h
lea	ecx, [ebp+var_44]
call	sub_40B168
push	20h
lea	ecx, [ebp+var_44]
mov	byte ptr [ebp+var_4], 1
call	sub_40316A
lea	ecx, [ebp+var_70]
lea	edi, [esi+140h]
call	sub_403079
push	3
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 2
mov	[ebp+var_1C], ebx
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
call	sub_403396

loc_41070B:
lea	eax, [ebp+var_1C]
lea	ecx, [esi+260h]
push	eax
lea	eax, [ebp+var_D]
push	eax
lea	eax, [ebp+var_98]
push	eax
mov	byte ptr [ebp+var_4], 3
call	sub_4100CE
cmp	eax, ebx
mov	[ebp+var_34], eax
jnz	loc_4107E8
cmp	[ebp+var_D], bl
jz	loc_4107FC
mov	eax, [ebp+var_78]
shr	eax, 4
test	al, 1
jnz	short loc_410766
mov	eax, [ebp+var_98]
mov	ecx, [ebp+var_94]
add	[ebp+var_28], eax
adc	[ebp+var_24], ecx
add	dword ptr [esi+218h], 1
adc	[esi+21Ch], ebx

loc_410766:
lea	eax, [ebp+var_1C]
lea	edx, [ebp+var_44]
push	eax
lea	ecx, [ebp+Memory]
call	sub_40356A
push	eax
mov	ecx, edi
mov	byte ptr [ebp+var_4], 4
call	sub_403FE6
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 3
call	sub_4284D8
pop	ecx
push	ebx
push	ebx
push	[ebp+var_24]
mov	ecx, edi
push	[ebp+var_28]
call	sub_403A30
push	ebx
push	ebx
mov	ecx, edi
call	sub_422DB9
cmp	eax, ebx
jnz	loc_410BC4
push	[ebp+var_1C]	; Memory
call	sub_4284D8
push	[ebp+var_70]	; Memory
mov	byte ptr [ebp+var_4], 1
call	sub_4284D8
pop	ecx
pop	ecx
lea	ecx, [ebp+var_70]
call	sub_403079
push	3
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 2
mov	[ebp+var_1C], ebx
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
call	sub_403396
jmp	loc_41070B

loc_4107E8:
lea	eax, [ebp+var_1C]
lea	ecx, [esi+14h]
push	eax
call	sub_40312C
mov	esi, [ebp+var_34]
jmp	loc_410BC6

loc_4107FC:		; Memory
push	[ebp+var_1C]
call	sub_4284D8
push	[ebp+var_70]	; Memory
mov	byte ptr [ebp+var_4], 1
call	sub_4284D8
pop	ecx
pop	ecx
push	dword ptr [esi+21Ch]
mov	ecx, edi
push	dword ptr [esi+218h]
call	sub_4039E2
push	ebx
push	ebx
push	[ebp+var_24]
mov	ecx, edi
push	[ebp+var_28]
call	sub_403A30
lea	ecx, [esi+260h]
call	sub_4100B5
lea	ecx, [ebp+var_70]
call	sub_403079
push	3
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 5
mov	[ebp+var_1C], ebx
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
call	sub_403396

loc_41085E:
lea	eax, [ebp+var_1C]
lea	ecx, [esi+260h]
push	eax
lea	eax, [ebp+var_D]
push	eax
lea	eax, [ebp+var_98]
push	eax
mov	byte ptr [ebp+var_4], 6
call	sub_4100CE
cmp	eax, ebx
mov	[ebp+var_24], eax
jnz	loc_410AA5
cmp	[ebp+var_D], bl
jz	loc_410AB9
or	[ebp+var_2C], 0FFFFFFFFh
lea	ecx, [ebp+var_100]
call	sub_4413A0
mov	eax, [ebp+var_78]
shr	eax, 4
test	al, 1
jz	short loc_4108BB
add	dword ptr [esi+228h], 1
adc	[esi+22Ch], ebx
jmp	loc_4109E6

loc_4108BB:
or	[ebp+var_60], 0FFFFFFFFh
lea	eax, [ebp+var_1C]
lea	edx, [esi+264h]
push	eax
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 7
call	sub_40356A
push	dword ptr [eax]	; lpFileName
lea	ecx, [ebp+var_60]
mov	byte ptr [ebp+var_4], 8
call	sub_42C145
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 7
neg	al
sbb	al, al
inc	al
mov	[ebp+var_2D], al
call	sub_4284D8
cmp	[ebp+var_2D], bl
pop	ecx
jnz	loc_410B48
lea	eax, [ebp+var_1C]
mov	ecx, edi
push	eax
call	sub_403FE6
push	dword ptr [esi+224h]
mov	ecx, edi
push	dword ptr [esi+220h]
call	sub_403EC6
add	dword ptr [esi+220h], 1
adc	[esi+224h], ebx

loc_41092D:
lea	eax, [ebp+var_38]
lea	ecx, [ebp+var_60]
push	eax		; int
push	8000h		; nNumberOfBytesToRead
push	[ebp+lpAddress]	; lpBuffer
call	sub_42C1A2
test	al, al
jz	loc_410B8E
cmp	[ebp+var_38], ebx
jz	short loc_4109AD
push	[ebp+var_38]
mov	edx, [ebp+lpAddress]
mov	ecx, [ebp+var_2C]
call	sub_441990
cmp	dword ptr [esi+218h], 1
mov	[ebp+var_2C], eax
jnz	short loc_410981
cmp	[esi+21Ch], ebx
jnz	short loc_410981
push	[ebp+var_38]
mov	edx, [ebp+lpAddress]
lea	ecx, [ebp+var_100]
call	sub_4413E0

loc_410981:
mov	eax, [ebp+var_38]
mov	ecx, edi
add	[esi+230h], eax
adc	[esi+234h], ebx
push	dword ptr [esi+234h]
push	dword ptr [esi+230h]
call	sub_422DB9
cmp	eax, ebx
jnz	loc_410BA9
jmp	short loc_41092D

loc_4109AD:
mov	eax, [ebp+var_2C]
not	eax
add	[esi+238h], eax
cmp	dword ptr [esi+218h], 1
jnz	short loc_4109DA
cmp	[esi+21Ch], ebx
jnz	short loc_4109DA
lea	edx, [esi+23Ch]
lea	ecx, [ebp+var_100]
call	sub_441670

loc_4109DA:
lea	ecx, [ebp+var_60]
mov	byte ptr [ebp+var_4], 6
call	sub_42BD78

loc_4109E6:
mov	eax, [ebp+var_18]
cmp	eax, ebx
jle	short loc_410A3F
mov	ecx, [ebp+var_1C]
mov	[ebp+var_24], eax
mov	[ebp+var_34], ecx

loc_4109F6:
mov	eax, [ebp+var_34]
mov	edx, [ebp+var_2C]
add	[ebp+var_34], 2
mov	cx, [eax]
mov	eax, 0FFh
movzx	edi, cl
and	edx, eax
xor	edx, edi
mov	edi, dword_45DAA0[edx*4]
mov	edx, [ebp+var_2C]
shr	edx, 8
xor	edi, edx
xor	edx, edx
mov	dl, ch
movzx	ecx, dl
mov	edx, edi
and	edx, eax
xor	ecx, edx
shr	edi, 8
mov	eax, dword_45DAA0[ecx*4]
xor	eax, edi
dec	[ebp+var_24]
mov	[ebp+var_2C], eax
jnz	short loc_4109F6

loc_410A3F:
push	dword ptr [esi+234h]
mov	eax, [ebp+var_2C]
lea	edi, [esi+140h]
push	dword ptr [esi+230h]
mov	ecx, edi
not	eax
add	[esi+25Ch], eax
call	sub_422DB9
cmp	eax, ebx
jnz	loc_410BA5
push	[ebp+var_1C]	; Memory
call	sub_4284D8
push	[ebp+var_70]	; Memory
mov	byte ptr [ebp+var_4], 1
call	sub_4284D8
pop	ecx
pop	ecx
lea	ecx, [ebp+var_70]
call	sub_403079
push	3
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 5
mov	[ebp+var_1C], ebx
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
call	sub_403396
jmp	loc_41085E

loc_410AA5:
lea	eax, [ebp+var_1C]
lea	ecx, [esi+14h]
push	eax
call	sub_40312C
mov	esi, [ebp+var_24]
jmp	loc_410BB7

loc_410AB9:		; Memory
push	[ebp+var_1C]
call	sub_4284D8
push	[ebp+var_70]	; Memory
mov	byte ptr [ebp+var_4], 1
call	sub_4284D8
pop	ecx
pop	ecx
push	dword ptr [esi+224h]
mov	ecx, edi
push	dword ptr [esi+220h]
call	sub_403EC6
lea	eax, [ebp+Memory]
mov	ecx, esi
push	eax
call	sub_41034E
push	eax
lea	ecx, [esi+2Ch]
mov	byte ptr [ebp+var_4], 9
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 1
call	sub_4284D8
mov	edx, 0FC9h
lea	ecx, [ebp+Memory]
mov	[esp+110h+var_110], 3020720h
call	sub_40B168
push	eax
lea	ecx, [esi+38h]
mov	byte ptr [ebp+var_4], 0Ah
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_44]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx

loc_410B39:		; lpAddress
mov	ecx, [ebp+lpAddress]
call	sub_4411D0
mov	eax, ebx
jmp	loc_410BEB

loc_410B48:
call	sub_41033E
mov	edi, eax
lea	eax, [ebp+var_1C]
push	eax
lea	ecx, [esi+14h]
call	sub_40312C
lea	ecx, [ebp+var_60]
mov	byte ptr [ebp+var_4], 6
call	sub_42BD78
push	[ebp+var_1C]	; Memory
call	sub_4284D8
push	[ebp+var_70]	; Memory
call	sub_4284D8
push	[ebp+var_44]	; Memory
call	sub_4284D8
mov	ecx, [ebp+lpAddress] ; lpAddress
add	esp, 0Ch
call	sub_4411D0
mov	eax, edi
jmp	short loc_410BEB

loc_410B8E:
call	sub_41033E
mov	edi, eax
lea	eax, [ebp+var_1C]
push	eax
lea	ecx, [esi+14h]
call	sub_40312C
mov	esi, edi
jmp	short loc_410BAB

loc_410BA5:
mov	esi, eax
jmp	short loc_410BB7

loc_410BA9:
mov	esi, eax

loc_410BAB:
lea	ecx, [ebp+var_60]
mov	byte ptr [ebp+var_4], 6
call	sub_42BD78

loc_410BB7:		; Memory
push	[ebp+var_1C]
call	sub_4284D8
push	[ebp+var_70]
jmp	short loc_410BD1

loc_410BC4:
mov	esi, eax

loc_410BC6:		; Memory
push	[ebp+var_1C]
call	sub_4284D8
push	[ebp+var_70]	; Memory

loc_410BD1:
call	sub_4284D8
push	[ebp+var_44]	; Memory
call	sub_4284D8
mov	ecx, [ebp+lpAddress] ; lpAddress
add	esp, 0Ch
call	sub_4411D0
mov	eax, esi

loc_410BEB:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_41062D endp



; Attributes: bp-based frame

sub_410BFA proc	near

var_304= dword ptr -304h
var_2F4= dword ptr -2F4h
var_102= byte ptr -102h
var_FC=	dword ptr -0FCh
var_F8=	byte ptr -0F8h
var_EC=	byte ptr -0ECh
var_94=	byte ptr -94h
var_90=	byte ptr -90h
var_84=	byte ptr -84h
var_44=	dword ptr -44h
var_38=	dword ptr -38h
var_2C=	dword ptr -2Ch
var_24=	dword ptr -24h
var_20=	dword ptr -20h
Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444360
call	__EH_prolog
sub	esp, 2E8h
push	ebx
push	esi
mov	esi, ecx
push	edi
mov	eax, [esi+0Ch]
imul	eax, 188h
lea	ebx, [eax+esi+84h]
mov	ecx, ebx
call	sub_4028A8
test	al, al
jnz	short loc_410C40
push	3020208h
push	8A0h
mov	ecx, ebx
call	sub_40E58A
jmp	loc_410E15

loc_410C40:
push	4
lea	ecx, [ebp+var_2C]
call	sub_402794
mov	[ebp+var_2C], offset off_44B518
lea	eax, [ebp+var_2C]
xor	edi, edi
push	eax
mov	ecx, ebx
mov	[ebp+var_4], edi
call	sub_4170D3
cmp	[ebp+var_24], edi
jz	loc_410E09
lea	ecx, [ebp+var_2F4]
call	sub_40F2E5
lea	ecx, [ebp+var_94]
mov	byte ptr [ebp+var_4], 1
call	sub_410E24
mov	[ebp+var_2F4], offset off_44C2A0
cmp	[ebp+var_24], edi
mov	byte ptr [ebp+var_4], 2
jle	short loc_410CCB

loc_410C97:
mov	eax, [ebp+var_20]
mov	ecx, ebx
push	dword ptr [eax+edi*4]
lea	eax, [ebp+Memory]
push	eax
call	sub_4174B8
push	eax
lea	ecx, [ebp+var_84]
mov	byte ptr [ebp+var_4], 3
call	sub_4032B4
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 2
call	sub_4284D8
inc	edi
pop	ecx
cmp	edi, [ebp+var_24]
jl	short loc_410C97

loc_410CCB:
lea	eax, [ebp+Memory]
mov	ecx, ebx
push	eax
call	sub_40E71B
push	eax
lea	ecx, [ebp+var_90]
mov	byte ptr [ebp+var_4], 4
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 2
call	sub_4284D8
mov	eax, [esi+0Ch]
mov	edx, 0FC8h
imul	eax, 188h
lea	ecx, [ebp+var_38]
mov	[esp+304h+var_304], 3020710h
mov	al, [eax+esi+158h]
and	[ebp+var_102], 0
mov	[ebp+var_94], al
call	sub_40B168
mov	eax, [esi]
push	3000000h
mov	edx, 898h
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 5
mov	[ebp+var_FC], eax
call	sub_40B168
push	eax
lea	ecx, [ebp+var_F8]
mov	byte ptr [ebp+var_4], 6
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 5
call	sub_4284D8
pop	ecx
push	20h
lea	ecx, [ebp+var_44]
call	sub_409516
push	eax
lea	edx, [ebp+var_38]
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 7
call	sub_40356A
push	eax
lea	ecx, [ebp+var_EC]
mov	byte ptr [ebp+var_4], 8
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_44]	; Memory
mov	byte ptr [ebp+var_4], 5
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_38]
pop	ecx
push	dword ptr [esi]	; hWndParent
lea	ecx, [ebp+var_2F4]
push	eax		; int
call	sub_424FE9
push	[ebp+var_38]	; Memory
test	eax, eax
jz	short loc_410DDC
call	sub_4284D8
pop	ecx
lea	ecx, [ebp+var_94]
mov	byte ptr [ebp+var_4], 9
call	sub_410EB4
and	byte ptr [ebp+var_4], 0
lea	ecx, [ebp+var_2F4]
call	sub_40F3F1
jmp	short loc_410E09

loc_410DDC:
call	sub_4284D8
pop	ecx
lea	ecx, [ebp+var_94]
mov	byte ptr [ebp+var_4], 0Ah
call	sub_410EB4
and	byte ptr [ebp+var_4], 0
lea	ecx, [ebp+var_2F4]
call	sub_40F3F1
push	1
mov	ecx, esi
call	sub_402FBC

loc_410E09:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_2C]
call	sub_4282FE

loc_410E15:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_410BFA endp




sub_410E24 proc	near
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
push	3
lea	ecx, [esi+4]
mov	[esi], bl
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
push	4
mov	ecx, offset off_44B510
pop	eax
mov	[esi+14h], ebx
mov	[esi+18h], ebx
mov	[esi+1Ch], ebx
mov	[esi+20h], eax
mov	[esi+10h], ecx
mov	[esi+28h], ebx
mov	[esi+2Ch], ebx
mov	[esi+30h], ebx
mov	[esi+34h], eax
mov	dword ptr [esi+24h], offset off_44C2A4
mov	[esi+48h], eax
mov	[esi+3Ch], ebx
mov	[esi+40h], ebx
mov	[esi+44h], ebx
mov	[esi+38h], ecx
mov	eax, esi
pop	esi
pop	ebx
retn
sub_410E24 endp

; START	OF FUNCTION CHUNK FOR sub_44430F

loc_410E7C:
mov	eax, offset loc_444374
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp-10h], esi
and	dword ptr [ebp-4], 0
lea	ecx, [esi+260h]
call	sub_410EB4
or	dword ptr [ebp-4], 0FFFFFFFFh
mov	ecx, esi
call	sub_40F3F1
mov	ecx, [ebp-0Ch]
pop	esi
mov	large fs:0, ecx
leave
retn
; END OF FUNCTION CHUNK	FOR sub_44430F


; Attributes: bp-based frame

sub_410EB4 proc	near

var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4443B9
call	__EH_prolog
push	ecx
push	ecx
push	ebx
push	esi
mov	esi, ecx
push	edi
mov	[ebp+var_10], esi
and	[ebp+var_4], 0
lea	edi, [esi+38h]
mov	ebx, offset off_44B510
mov	[ebp+var_14], edi
mov	[edi], ebx
mov	ecx, edi
mov	byte ptr [ebp+var_4], 3
call	sub_428327
mov	ecx, edi
mov	byte ptr [ebp+var_4], 2
call	sub_4282FE
lea	edi, [esi+24h]
mov	[ebp+var_14], edi
mov	dword ptr [edi], offset	off_44C2A4
mov	ecx, edi
mov	byte ptr [ebp+var_4], 4
call	sub_428327
mov	ecx, edi
mov	byte ptr [ebp+var_4], 1
call	sub_4282FE
lea	edi, [esi+10h]
mov	[ebp+var_14], edi
mov	[edi], ebx
mov	ecx, edi
mov	byte ptr [ebp+var_4], 5
call	sub_428327
and	byte ptr [ebp+var_4], 0
mov	ecx, edi
call	sub_4282FE
push	dword ptr [esi+4] ; Memory
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_410EB4 endp



; Attributes: bp-based frame

sub_410F47 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4443CC
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44C2A4
and	[ebp+var_4], 0
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_410F47 endp



; Attributes: bp-based frame

sub_410F7F proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_4443EA
call	__EH_prolog
push	ecx
push	esi
push	edi
mov	edi, ecx
push	10h		; Size
call	sub_4284B1
mov	esi, eax
pop	ecx
mov	[ebp+var_10], esi
and	[ebp+var_4], 0
test	esi, esi
jz	short loc_410FBC
mov	eax, [ebp+arg_0]
mov	ecx, [eax]
mov	[esi], ecx
add	eax, 4
lea	ecx, [esi+4]
push	eax
mov	byte ptr [ebp+var_4], 1
call	sub_4030F2
jmp	short loc_410FBE

loc_410FBC:
xor	esi, esi

loc_410FBE:
or	[ebp+var_4], 0FFFFFFFFh
push	esi
mov	ecx, edi
call	sub_429907
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_410F7F endp



; Attributes: bp-based frame

sub_410FDA proc	near

Memory=	dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
push	ecx
push	ebx
mov	ebx, ecx
mov	ecx, [ebp+arg_4]
push	edi
mov	edi, [ebp+arg_0]
mov	eax, [ebx+8]
add	ecx, edi
cmp	ecx, eax
jle	short loc_410FF6
sub	eax, edi
mov	[ebp+arg_4], eax

loc_410FF6:
mov	eax, [ebp+arg_4]
test	eax, eax
jle	short loc_41102A
push	esi
mov	esi, edi
shl	esi, 2
mov	[ebp+arg_0], eax

loc_411006:
mov	eax, [ebx+0Ch]
mov	ecx, [eax+esi]
test	ecx, ecx
mov	[ebp+Memory], ecx
jz	short loc_411021
call	sub_4078D8
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_411021:
add	esi, 4
dec	[ebp+arg_0]
jnz	short loc_411006
pop	esi

loc_41102A:
push	[ebp+arg_4]
mov	ecx, ebx
push	edi
call	sub_42847F
pop	edi
pop	ebx
leave
retn	8
sub_410FDA endp




; int __thiscall sub_41103B(void *Memory, char)
sub_41103B proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_410F47
test	[esp+4+arg_0], 1
jz	short loc_411051
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_411051:
mov	eax, esi
pop	esi
retn	4
sub_41103B endp



; Attributes: bp-based frame

sub_411057 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4443FF
call	__EH_prolog
push	ecx
push	esi
push	edi
mov	esi, ecx
xor	edi, edi
mov	[ebp+var_10], esi
mov	[esi+4], edi
mov	[esi+20h], edi
lea	ecx, [esi+24h]
push	3
mov	[ebp+var_4], edi
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
mov	dword ptr [esi], offset	off_44C2AC
push	lpszFormat	; lpszFormat
call	ds:RegisterClipboardFormatA
mov	ecx, [ebp+var_C]
or	dword ptr [esi+14h], 0FFFFFFFFh
push	1
mov	[esi+1Ch], eax
pop	eax
mov	[esi+0Ch], edi
mov	[esi+10h], eax
mov	[esi+18h], eax
mov	word ptr [esi+8], 0Fh
mov	eax, esi
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_411057 endp



; Attributes: thunk

sub_4110C1 proc	near
jmp	sub_42C4A4
sub_4110C1 endp



; Attributes: bp-based frame

; int __stdcall	sub_4110C6(int,	void *Buf1, int)
sub_4110C6 proc	near

arg_0= dword ptr  8
Buf1= dword ptr	 0Ch
arg_8= dword ptr  10h

push	ebp
mov	ebp, esp
push	10h		; Size
push	offset unk_44CCB8 ; Buf2
push	[ebp+Buf1]	; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jz	short loc_4110F5
push	10h		; Size
push	offset unk_44CC98 ; Buf2
push	[ebp+Buf1]	; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_411107

loc_4110F5:
mov	ecx, [ebp+arg_8]
mov	eax, [ebp+arg_0]
push	eax
mov	[ecx], eax
mov	ecx, [eax]
call	dword ptr [ecx+4]
xor	eax, eax
jmp	short loc_41110C

loc_411107:
mov	eax, 80004002h

loc_41110C:
pop	ebp
retn	0Ch
sub_4110C6 endp




; int __stdcall	sub_411110(void	*Memory)
sub_411110 proc	near

Memory=	dword ptr  4

push	esi
push	edi
mov	edi, [esp+8+Memory]
lea	esi, [edi+4]
push	esi		; lpAddend
call	ds:InterlockedDecrement
mov	eax, [esi]
test	eax, eax
jnz	short loc_41113A
test	edi, edi
jz	short loc_411138
mov	ecx, edi
call	sub_41115F
push	edi		; Memory
call	sub_4284D8
pop	ecx

loc_411138:
xor	eax, eax

loc_41113A:
pop	edi
pop	esi
retn	4
sub_411110 endp




sub_41113F proc	near

arg_8= dword ptr  0Ch

mov	eax, [esp+arg_8]
and	dword ptr [eax+4], 0
mov	eax, 80004001h
retn	0Ch
sub_41113F endp




sub_41114F proc	near
mov	eax, 80040003h
retn	14h
sub_41114F endp




sub_411157 proc	near
mov	eax, 80040003h
retn	8
sub_411157 endp




sub_41115F proc	near
push	esi
mov	esi, ecx
push	dword ptr [esi+24h] ; Memory
call	sub_4284D8
pop	ecx
lea	ecx, [esi+20h]
call	sub_42C4A4
pop	esi
retn
sub_41115F endp



; Attributes: bp-based frame

sub_411175 proc	near

arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

push	ebp
mov	ebp, esp
mov	eax, [ebp+arg_4]
push	ebx
push	esi
push	edi
movzx	ecx, word ptr [eax]
mov	edi, [ebp+arg_0]
cmp	ecx, [edi+1Ch]
jnz	short loc_411201
cmp	dword ptr [eax+10h], 1
jnz	short loc_411201
cmp	dword ptr [eax+8], 1
jnz	short loc_411201
mov	ebx, [ebp+arg_8]
cmp	dword ptr [ebx], 1
jnz	short loc_411201
mov	eax, [edi+24h]
and	dword ptr [edi+28h], 0
add	edi, 24h
and	word ptr [eax],	0
mov	eax, [ebx+4]
test	eax, eax
jz	short loc_4111FD
push	eax		; hMem
call	ds:GlobalSize
push	dword ptr [ebx+4] ; hMem
mov	esi, eax
shr	esi, 1
call	ds:GlobalLock
test	eax, eax
jz	short loc_411201
and	[ebp+arg_0], 0
test	esi, esi
jbe	short loc_4111F4
mov	[ebp+arg_4], eax

loc_4111D5:
mov	eax, [ebp+arg_4]
mov	ax, [eax]
test	ax, ax
jz	short loc_4111F4
push	eax
mov	ecx, edi
call	sub_40316A
inc	[ebp+arg_0]
add	[ebp+arg_4], 2
cmp	[ebp+arg_0], esi
jb	short loc_4111D5

loc_4111F4:		; hMem
push	dword ptr [ebx+4]
call	ds:GlobalUnlock

loc_4111FD:
xor	eax, eax
jmp	short loc_411206

loc_411201:
mov	eax, 80004001h

loc_411206:
pop	edi
pop	esi
pop	ebx
pop	ebp
retn	10h
sub_411175 endp




sub_41120D proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch

push	edi
mov	edi, [esp+4+arg_0]
push	[esp+4+arg_4]
mov	eax, [edi]
push	edi
call	dword ptr [eax+14h]
test	eax, eax
jnz	short loc_411248
mov	eax, [edi+18h]
push	esi
mov	esi, [esp+8+arg_8]
and	dword ptr [esi+8], 0
mov	[esi], eax
mov	ecx, [edi+20h]	; hMem
call	sub_41124C
mov	[esi+4], eax
pop	esi
neg	eax
sbb	eax, eax
and	eax, 7FF8FFF2h
add	eax, 8007000Eh

loc_411248:
pop	edi
retn	0Ch
sub_41120D endp




; int __fastcall sub_41124C(HGLOBAL hMem)
sub_41124C proc	near

Src= dword ptr -8
hMem= dword ptr	-4

push	ecx
push	ecx
push	ebp
push	esi
mov	esi, ecx
push	edi
push	esi		; hMem
mov	[esp+18h+hMem],	esi
call	ds:GlobalSize
mov	edi, ds:GlobalLock
mov	ebp, eax
push	esi		; hMem
call	edi ; GlobalLock
test	eax, eax
mov	[esp+14h+Src], eax
jz	short loc_4112B6
push	ebx
push	ebp		; dwBytes
push	2042h		; uFlags
call	ds:GlobalAlloc
mov	ebx, ds:GlobalUnlock
mov	esi, eax
test	esi, esi
jz	short loc_4112AD
push	esi		; hMem
call	edi ; GlobalLock
test	eax, eax
jnz	short loc_41129C
push	esi		; hMem
call	ds:GlobalFree
xor	esi, esi
jmp	short loc_4112AD

loc_41129C:		; Size
push	ebp
push	[esp+1Ch+Src]	; Src
push	eax		; Dst
call	memcpy
add	esp, 0Ch
push	esi		; hMem
call	ebx ; GlobalUnlock

loc_4112AD:		; hMem
push	[esp+18h+hMem]
call	ebx ; GlobalUnlock
mov	eax, esi
pop	ebx

loc_4112B6:
pop	edi
pop	esi
pop	ebp
pop	ecx
pop	ecx
retn
sub_41124C endp




sub_4112BC proc	near
mov	eax, 8000FFFFh
retn	0Ch
sub_4112BC endp




sub_4112C4 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

mov	eax, [esp+arg_4]
mov	ecx, [esp+arg_0]
mov	edx, [eax+10h]
test	[ecx+18h], edx
jz	short loc_4112E9
mov	dx, [ecx+8]
cmp	dx, [eax]
jnz	short loc_4112E9
mov	ecx, [ecx+10h]
cmp	ecx, [eax+8]
jnz	short loc_4112E9
xor	eax, eax
jmp	short locret_4112EE

loc_4112E9:
mov	eax, 80040064h

locret_4112EE:
retn	8
sub_4112C4 endp




sub_4112F1 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch

push	1
pop	ecx
cmp	[esp+arg_4], ecx
jz	short loc_411301
mov	eax, 80004001h
jmp	short locret_411311

loc_411301:
mov	eax, [esp+arg_0]
push	[esp+arg_8]
lea	edx, [eax+8]
call	sub_4037A9

locret_411311:
retn	0Ch
sub_4112F1 endp




sub_411314 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= byte ptr	 0Ch

cmp	[esp+arg_4], 1
push	ebx
push	esi
jz	short loc_411369
test	[esp+8+arg_8], 1
jnz	short loc_411377
mov	esi, [esp+8+arg_0]
xor	ebx, ebx
cmp	[esi+8], ebx
jz	short loc_411369
mov	ecx, [esi+34h]
mov	al, [esi+0Ch]
mov	[esi+40h], ebx
cmp	[ecx+28h], ebx
jz	short loc_411343
xor	al, al
mov	byte ptr [esi+3Ch], 1

loc_411343:
cmp	al, bl
jz	short loc_411370
lea	eax, [esi+44h]
mov	ecx, [esi+10h]
push	eax
push	ebx
lea	eax, [esi+28h]
push	ebx
push	eax
lea	eax, [esi+14h]
push	eax
call	sub_40290A
cmp	eax, ebx
mov	[esi+40h], eax
jnz	short loc_411369
cmp	[esi+4Ch], ebx
jz	short loc_411370

loc_411369:
mov	eax, 40101h
jmp	short loc_411379

loc_411370:
mov	eax, 40100h
jmp	short loc_411379

loc_411377:
xor	eax, eax

loc_411379:
pop	esi
pop	ebx
retn	0Ch
sub_411314 endp




sub_41137E proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

mov	eax, [esp+arg_0]
mov	ecx, [esp+arg_4]
mov	[eax+8], ecx
mov	eax, 40102h
retn	8
sub_41137E endp



; Attributes: bp-based frame

sub_411391 proc	near

Memory=	dword ptr -0A4h
var_98=	dword ptr -98h
var_8C=	dword ptr -8Ch
var_88=	dword ptr -88h
var_84=	dword ptr -84h
var_80=	dword ptr -80h
var_7C=	dword ptr -7Ch
var_78=	dword ptr -78h
var_74=	dword ptr -74h
var_60=	byte ptr -60h
var_5C=	dword ptr -5Ch
pdwEffect= dword ptr -50h
var_4C=	dword ptr -4Ch
var_44=	dword ptr -44h
var_40=	dword ptr -40h
var_38=	dword ptr -38h
var_34=	dword ptr -34h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	byte ptr -20h
var_1F=	byte ptr -1Fh
var_1C=	dword ptr -1Ch
pDataObj= dword	ptr -18h
dwOKEffects= dword ptr -14h
var_D= byte ptr	-0Dh
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4444AF
call	__EH_prolog
sub	esp, 98h
push	ebx
push	esi
push	edi
mov	edi, ecx
lea	ecx, [ebp+var_20]
mov	[ebp+var_1C], edi
call	sub_4028C8
xor	ebx, ebx
mov	ecx, edi
mov	[ebp+var_4], ebx
call	sub_40E872
test	al, al
jz	short loc_4113F1
push	4
lea	ecx, [ebp+var_4C]
call	sub_402794
mov	[ebp+var_4C], offset off_44B518
lea	eax, [ebp+var_4C]
mov	ecx, edi
push	eax
mov	byte ptr [ebp+var_4], 1
call	sub_4170D3
cmp	[ebp+var_44], ebx
jnz	short loc_411402
and	byte ptr [ebp+var_4], bl
lea	ecx, [ebp+var_4C]
call	sub_4282FE

loc_4113F1:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_20]
call	sub_4028F2
jmp	loc_4117C6

loc_411402:
push	3
lea	ecx, [ebp+var_2C]
mov	[ebp+var_2C], ebx
mov	[ebp+var_28], ebx
mov	[ebp+var_24], ebx
call	sub_403396
and	[ebp+var_60], 0
lea	ecx, [ebp+var_5C]
mov	byte ptr [ebp+var_4], 2
call	sub_403079
mov	ecx, edi
mov	byte ptr [ebp+var_4], 3
call	sub_40E6A6
test	al, al
mov	[ebp+var_D], al
jz	short loc_411448
lea	eax, [edi+0D8h]
lea	ecx, [ebp+var_2C]
push	eax
call	sub_40312C
jmp	short loc_41146A

loc_411448:
push	off_45B8F0
lea	ecx, [ebp+var_60]
call	sub_42AF90
lea	eax, [ebp+var_5C]
lea	ecx, [ebp+var_2C]
push	eax
call	sub_40312C
lea	ecx, [ebp+var_2C]
call	sub_42C33B

loc_41146A:		; Size
push	30h
call	sub_4284B1
pop	ecx
mov	[ebp+pDataObj],	eax
cmp	eax, ebx
mov	byte ptr [ebp+var_4], 4
jz	short loc_411489
mov	ecx, eax
call	sub_411057
mov	[ebp+pDataObj],	eax
jmp	short loc_41148E

loc_411489:
mov	[ebp+pDataObj],	ebx
mov	eax, ebx

loc_41148E:
cmp	eax, ebx
mov	byte ptr [ebp+var_4], 3
mov	[ebp+var_8C], eax
jz	short loc_4114A2
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+4]

loc_4114A2:
lea	ecx, [ebp+var_74]
mov	byte ptr [ebp+var_4], 5
call	sub_40337B
mov	esi, offset off_44B510
mov	[ebp+var_74], esi
cmp	[ebp+var_44], 0
mov	byte ptr [ebp+var_4], 6
jle	loc_41157D

loc_4114C4:
mov	eax, [ebp+var_40]
push	3
lea	ecx, [ebp+var_38]
mov	eax, [eax+ebx*4]
mov	[ebp+dwOKEffects], eax
xor	eax, eax
mov	[ebp+var_38], eax
mov	[ebp+var_34], eax
mov	[ebp+var_30], eax
call	sub_403396
cmp	[ebp+var_D], 0
push	[ebp+dwOKEffects]
mov	byte ptr [ebp+var_4], 7
jz	short loc_411516
lea	eax, [ebp+var_98]
mov	ecx, edi
push	eax
call	sub_4174B8
push	eax
lea	ecx, [ebp+var_38]
mov	byte ptr [ebp+var_4], 8
call	sub_40312C
push	[ebp+var_98]
mov	byte ptr [ebp+var_4], 7
jmp	short loc_41153B

loc_411516:
lea	eax, [ebp+Memory]
mov	ecx, edi
push	eax
call	sub_41733B
push	eax
lea	ecx, [ebp+var_38]
mov	byte ptr [ebp+var_4], 9
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 7

loc_41153B:
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_38]
push	eax
lea	edx, [ebp+var_2C]
lea	ecx, [ebp+var_80]
call	sub_40356A
push	eax
lea	ecx, [ebp+var_74]
mov	byte ptr [ebp+var_4], 0Ah
call	sub_4032B4
push	[ebp+var_80]	; Memory
call	sub_4284D8
push	[ebp+var_38]	; Memory
mov	byte ptr [ebp+var_4], 6
call	sub_4284D8
inc	ebx
pop	ecx
cmp	ebx, [ebp+var_44]
pop	ecx
jl	loc_4114C4

loc_41157D:
mov	ebx, [ebp+pDataObj]
lea	edx, [ebp+var_74]
lea	ecx, [ebx+20h]
call	sub_41194B
test	al, al
mov	[ebp+var_74], esi
jnz	short loc_4115C1
lea	ecx, [ebp+var_74]
mov	byte ptr [ebp+var_4], 0Bh
call	sub_428327
lea	ecx, [ebp+var_74]
mov	byte ptr [ebp+var_4], 5
call	sub_4282FE
test	ebx, ebx
mov	byte ptr [ebp+var_4], 3
jz	short loc_4115B8
mov	eax, [ebx]
push	ebx
call	dword ptr [eax+8]

loc_4115B8:
mov	byte ptr [ebp+var_4], 0Ch
jmp	loc_411788

loc_4115C1:
lea	ecx, [ebp+var_74]
mov	byte ptr [ebp+var_4], 0Dh
call	sub_428327
lea	ecx, [ebp+var_74]
mov	byte ptr [ebp+var_4], 5
call	sub_4282FE
push	58h		; Size
call	sub_4284B1
pop	ecx
mov	[ebp+dwOKEffects], eax
test	eax, eax
mov	byte ptr [ebp+var_4], 0Eh
jz	short loc_4115F7
mov	ecx, eax
call	sub_4117E9
mov	esi, eax
jmp	short loc_4115F9

loc_4115F7:
xor	esi, esi

loc_4115F9:
test	esi, esi
mov	byte ptr [ebp+var_4], 5
mov	[ebp+var_88], esi
jz	short loc_41160D
mov	eax, [esi]
push	esi
call	dword ptr [eax+4]

loc_41160D:
cmp	[ebp+var_D], 0
lea	ebx, [esi+14h]
mov	ecx, ebx
mov	byte ptr [ebp+var_4], 0Fh
setz	al
mov	[esi+0Ch], al
mov	[esi+10h], edi
call	sub_428327
lea	eax, [ebp+var_4C]
mov	ecx, ebx
push	eax
call	sub_40F449
lea	eax, [ebp+var_2C]
lea	ecx, [esi+28h]
push	eax
call	sub_40312C
mov	ebx, [ebp+pDataObj]
lea	ecx, [esi+38h]
push	ebx
mov	[esi+34h], ebx
call	sub_43D0DB
cmp	[ebp+var_D], 0
mov	[ebp+dwOKEffects], 1
jz	short loc_411662
mov	[ebp+dwOKEffects], 3

loc_411662:
mov	ecx, [edi+44h]
mov	eax, [ecx]
call	dword ptr [eax+18h]
lea	eax, [ebp+pdwEffect]
push	eax		; pdwEffect
push	[ebp+dwOKEffects] ; dwOKEffects
push	esi		; pDropSource
push	ebx		; pDataObj
call	ds:DoDragDrop
mov	ecx, [edi+44h]
mov	[ebp+dwOKEffects], eax
mov	eax, [ecx]
call	dword ptr [eax+1Ch]
mov	ecx, [ebp+dwOKEffects]
mov	eax, 40101h
cmp	ecx, eax
setz	[ebp+var_D]
cmp	ecx, 40100h
jnz	short loc_4116D8
mov	eax, [esi+40h]
cmp	byte ptr [esi+3Ch], 0
mov	[ebp+dwOKEffects], eax
jz	short loc_4116EE
cmp	dword ptr [ebx+28h], 0
jz	short loc_4116EE
add	ebx, 24h
mov	ecx, ebx
call	sub_42C33B
cmp	[ebp+pdwEffect], 2
lea	eax, [esi+44h]
push	eax
push	0
setz	al
push	eax
lea	eax, [ebp+var_4C]
push	ebx
push	eax
mov	ecx, edi
call	sub_40290A
mov	ebx, [ebp+pDataObj]
mov	[ebp+dwOKEffects], eax
jmp	short loc_4116EE

loc_4116D8:
cmp	ecx, eax
jz	short loc_4116E8
test	ecx, ecx
jz	short loc_4116E8
push	ecx
mov	ecx, edi
call	sub_40E579

loc_4116E8:
mov	eax, [esi+40h]
mov	[ebp+dwOKEffects], eax

loc_4116EE:
cmp	dword ptr [esi+4Ch], 0
jz	short loc_41173A
push	0
lea	ecx, [ebp+var_84]
call	sub_4117D7
and	[ebp+var_7C], 0
mov	[ebp+var_84], offset off_44C2DC
lea	eax, [esi+44h]
lea	ecx, [edi+4]
mov	[ebp+var_78], eax
mov	eax, edi
neg	eax
sbb	eax, eax
mov	byte ptr [ebp+var_4], 10h
and	eax, ecx
lea	ecx, [ebp+var_84]
push	dword ptr [eax]	; hWndParent
push	1F7h		; lpTemplateName
call	sub_42FCF7
mov	byte ptr [ebp+var_4], 0Fh

loc_41173A:
cmp	[ebp+dwOKEffects], 0
jz	short loc_411755
cmp	[ebp+dwOKEffects], 80004004h
jz	short loc_411768
push	[ebp+dwOKEffects]
mov	ecx, edi
call	sub_40E579
jmp	short loc_411768

loc_411755:
cmp	dword ptr [esi+4Ch], 0
jnz	short loc_411768
cmp	[ebp+var_D], 0
jnz	short loc_411768
mov	ecx, edi
call	sub_41BACC

loc_411768:
test	esi, esi
mov	byte ptr [ebp+var_4], 5
jz	short loc_411776
mov	eax, [esi]
push	esi
call	dword ptr [eax+8]

loc_411776:
test	ebx, ebx
mov	byte ptr [ebp+var_4], 3
jz	short loc_411784
mov	eax, [ebx]
push	ebx
call	dword ptr [eax+8]

loc_411784:
mov	byte ptr [ebp+var_4], 11h

loc_411788:
lea	ecx, [ebp+var_60]
call	sub_4027FD
push	[ebp+var_5C]	; Memory
call	sub_4284D8
push	[ebp+var_2C]	; Memory
call	sub_4284D8
and	byte ptr [ebp+var_4], 0
pop	ecx
pop	ecx
lea	ecx, [ebp+var_4C]
call	sub_4282FE
mov	ecx, [ebp+var_1C]
mov	al, [ebp+var_20]
mov	[ecx+184h], al
mov	eax, [ebp+var_1C]
mov	cl, [ebp+var_1F]
mov	[eax+185h], cl

loc_4117C6:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_411391 endp




sub_4117D7 proc	near

arg_0= dword ptr  4

mov	eax, ecx
mov	ecx, [esp+arg_0]
mov	[eax+4], ecx
mov	dword ptr [eax], offset	off_44B588
retn	4
sub_4117D7 endp



; Attributes: bp-based frame

sub_4117E9 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4444C7
call	__EH_prolog
push	ecx
push	ebx
push	esi
push	edi
mov	esi, ecx
xor	ebx, ebx
push	4
mov	[esi+4], ebx
pop	edi
mov	[esi+8], ebx
mov	[esi+10h], ebx
mov	[ebp+var_10], esi
mov	[esi+18h], ebx
mov	[esi+1Ch], ebx
mov	[esi+20h], ebx
mov	[esi+24h], edi
mov	dword ptr [esi+14h], offset off_44B518
lea	ecx, [esi+28h]
push	3
mov	[ebp+var_4], ebx
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
mov	ecx, [ebp+var_C]
mov	[esi+38h], ebx
mov	[esi+3Ch], bl
mov	[esi+40h], ebx
mov	[esi+48h], ebx
mov	[esi+4Ch], ebx
mov	[esi+50h], ebx
mov	[esi+54h], edi
mov	dword ptr [esi+44h], offset off_44B510
mov	dword ptr [esi], offset	off_44C30C
mov	eax, esi
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_4117E9 endp



; Attributes: bp-based frame

; int __stdcall	sub_411865(int,	void *Buf1, int)
sub_411865 proc	near

arg_0= dword ptr  8
Buf1= dword ptr	 0Ch
arg_8= dword ptr  10h

push	ebp
mov	ebp, esp
push	10h		; Size
push	offset unk_44CCB8 ; Buf2
push	[ebp+Buf1]	; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jz	short loc_411894
push	10h		; Size
push	offset unk_44CCD8 ; Buf2
push	[ebp+Buf1]	; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_4118A6

loc_411894:
mov	ecx, [ebp+arg_8]
mov	eax, [ebp+arg_0]
push	eax
mov	[ecx], eax
mov	ecx, [eax]
call	dword ptr [ecx+4]
xor	eax, eax
jmp	short loc_4118AB

loc_4118A6:
mov	eax, 80004002h

loc_4118AB:
pop	ebp
retn	0Ch
sub_411865 endp




; int __stdcall	sub_4118AF(void	*Memory)
sub_4118AF proc	near

Memory=	dword ptr  4

push	esi
push	edi
mov	edi, [esp+8+Memory]
lea	esi, [edi+4]
push	esi		; lpAddend
call	ds:InterlockedDecrement
mov	eax, [esi]
test	eax, eax
jnz	short loc_4118D9
test	edi, edi
jz	short loc_4118D7
mov	ecx, edi
call	sub_4118DE
push	edi		; Memory
call	sub_4284D8
pop	ecx

loc_4118D7:
xor	eax, eax

loc_4118D9:
pop	edi
pop	esi
retn	4
sub_4118AF endp



; Attributes: bp-based frame

sub_4118DE proc	near

var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4444FD
call	__EH_prolog
push	ecx
push	ecx
push	esi
mov	esi, ecx
push	edi
mov	[ebp+var_10], esi
and	[ebp+var_4], 0
lea	edi, [esi+44h]
mov	[ebp+var_14], edi
mov	dword ptr [edi], offset	off_44B510
mov	ecx, edi
mov	byte ptr [ebp+var_4], 3
call	sub_428327
mov	ecx, edi
mov	byte ptr [ebp+var_4], 2
call	sub_4282FE
mov	eax, [esi+38h]
mov	byte ptr [ebp+var_4], 1
test	eax, eax
jz	short loc_411928
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_411928:		; Memory
push	dword ptr [esi+28h]
call	sub_4284D8
or	[ebp+var_4], 0FFFFFFFFh
pop	ecx
lea	ecx, [esi+14h]
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_4118DE endp



; Attributes: bp-based frame

sub_41194B proc	near

var_38=	dword ptr -38h
var_2C=	dword ptr -2Ch
Memory=	dword ptr -24h
hMem= dword ptr	-18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444538
call	__EH_prolog
sub	esp, 2Ch
cmp	byte_45D8B4, 0
push	ebx
push	esi
push	edi
push	1
mov	esi, edx
pop	ebx
mov	[ebp+var_10], ecx
mov	[ebp+var_14], ebx
jnz	loc_411AC2
lea	ecx, [ebp+var_38]
call	sub_40337B
mov	[ebp+var_38], offset off_44C320
xor	edi, edi
cmp	[esi+8], edi
mov	[ebp+var_4], edi
jle	short loc_4119BA

loc_41198C:
mov	eax, [esi+0Ch]
lea	ecx, [ebp+Memory]
mov	edx, [eax+edi*4]
call	sub_43A785
push	eax
lea	ecx, [ebp+var_38]
mov	byte ptr [ebp+var_4], 1
call	sub_4128A8
and	byte ptr [ebp+var_4], 0
push	[ebp+Memory]	; Memory
call	sub_4284D8
inc	edi
pop	ecx
cmp	edi, [esi+8]
jl	short loc_41198C

loc_4119BA:
mov	edx, [esi+8]
xor	edi, edi
test	edx, edx
jle	short loc_4119D7
mov	ecx, [ebp+var_2C]

loc_4119C6:
mov	eax, [ecx]
inc	edi
add	ecx, 4
cmp	edi, edx
mov	eax, [eax+4]
lea	ebx, [ebx+eax+1]
jl	short loc_4119C6

loc_4119D7:
mov	edi, [ebp+var_10]
lea	eax, [ebx+14h]
push	eax		; dwBytes
push	2042h		; uFlags
mov	ecx, edi
call	sub_42C483
test	al, al
jnz	short loc_411A15
mov	[ebp+var_38], offset off_44C320
mov	[ebp+var_4], 2

loc_4119FC:
lea	ecx, [ebp+var_38]
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_38]
call	sub_4282FE
jmp	loc_411B09

loc_411A15:
mov	edi, [edi]
push	edi		; hMem
mov	[ebp+hMem], edi
call	ds:GlobalLock
xor	ecx, ecx
cmp	eax, ecx
jnz	short loc_411A37
mov	[ebp+var_38], offset off_44C320
mov	[ebp+var_4], 4
jmp	short loc_4119FC

loc_411A37:
mov	[eax+0Ch], ecx
mov	[eax+4], ecx
mov	[eax+8], ecx
mov	dword ptr [eax], 14h
mov	[eax+10h], ecx
add	eax, 14h
cmp	[esi+8], ecx
mov	[ebp+var_10], ecx
jle	short loc_411A8F

loc_411A54:
mov	ecx, [ebp+var_2C]
mov	edx, [ebp+var_10]
lea	edi, [eax+1]
mov	ecx, [ecx+edx*4]
mov	edx, [ecx+4]
mov	ecx, [ecx]
inc	edx
mov	[ebp+var_14], edx
mov	dl, [ecx]
test	dl, dl
mov	[eax], dl
jz	short loc_411A7E
sub	ecx, edi
inc	ecx

loc_411A74:
mov	dl, [ecx+edi]
mov	[edi], dl
inc	edi
test	dl, dl
jnz	short loc_411A74

loc_411A7E:
add	eax, [ebp+var_14]
sub	ebx, [ebp+var_14]
inc	[ebp+var_10]
mov	ecx, [ebp+var_10]
cmp	ecx, [esi+8]
jl	short loc_411A54

loc_411A8F:		; hMem
push	[ebp+hMem]
and	byte ptr [eax],	0
call	ds:GlobalUnlock
mov	[ebp+var_38], offset off_44C320
lea	ecx, [ebp+var_38]
mov	[ebp+var_4], 5
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_38]
call	sub_4282FE
jmp	loc_411B76

loc_411AC2:
mov	ecx, [esi+8]
xor	edi, edi
cmp	ecx, edi
jle	short loc_411AE0
mov	eax, [esi+0Ch]

loc_411ACE:
mov	edx, [eax]
add	eax, 4
dec	ecx
mov	edx, [edx+4]
lea	ebx, [ebx+edx+1]
jnz	short loc_411ACE
mov	[ebp+var_14], ebx

loc_411AE0:
mov	ecx, [ebp+var_10]
lea	eax, [ebx+ebx+14h]
push	eax		; dwBytes
push	2042h		; uFlags
call	sub_42C483
test	al, al
jz	short loc_411B09
mov	eax, [ebp+var_10]
mov	eax, [eax]
push	eax		; hMem
mov	[ebp+hMem], eax
call	ds:GlobalLock
cmp	eax, edi
jnz	short loc_411B0D

loc_411B09:
xor	al, al
jmp	short loc_411B78

loc_411B0D:
mov	[eax+0Ch], edi
mov	[eax+4], edi
mov	[eax+8], edi
mov	dword ptr [eax], 14h
mov	dword ptr [eax+10h], 1
add	eax, 14h
cmp	[esi+8], edi
mov	[ebp+var_10], edi
jle	short loc_411B6A

loc_411B2E:
mov	ecx, [esi+0Ch]
mov	edx, [ebp+var_10]
lea	ebx, [eax+2]
mov	edx, [ecx+edx*4]
mov	ecx, [edx+4]
mov	edx, [edx]
inc	ecx
mov	di, [edx]
mov	[eax], di

loc_411B46:
inc	edx
inc	edx
test	di, di
jz	short loc_411B57
mov	di, [edx]
mov	[ebx], di
inc	ebx
inc	ebx
jmp	short loc_411B46

loc_411B57:
sub	[ebp+var_14], ecx
inc	[ebp+var_10]
lea	eax, [eax+ecx*2]
mov	ecx, [ebp+var_10]
cmp	ecx, [esi+8]
jl	short loc_411B2E
xor	edi, edi

loc_411B6A:		; hMem
push	[ebp+hMem]
mov	[eax], di
call	ds:GlobalUnlock

loc_411B76:
mov	al, 1

loc_411B78:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_41194B endp

; START	OF FUNCTION CHUNK FOR sub_444520

loc_411B87:
cmp	dword ptr [ecx+4], 0
jz	short locret_411B95
push	dword ptr [ecx]	; hMem
call	ds:GlobalUnlock

locret_411B95:
retn
; END OF FUNCTION CHUNK	FOR sub_444520



; int __thiscall sub_411B96(void *Memory, char)
sub_411B96 proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_40D6C5
test	[esp+4+arg_0], 1
jz	short loc_411BAC
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_411BAC:
mov	eax, esi
pop	esi
retn	4
sub_411B96 endp



; Attributes: bp-based frame

sub_411BB2 proc	near

var_14=	word ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4
arg_0= dword ptr  8

push	ebp
mov	ebp, esp
sub	esp, 14h
push	esi
push	1
and	[ebp+var_10], 0
pop	eax
or	[ebp+var_8], 0FFFFFFFFh
mov	[ebp+var_C], eax
mov	[ebp+var_4], eax
mov	eax, [ebp+arg_0]
mov	esi, ecx
lea	edx, [ebp+var_14]
mov	ecx, [eax]
push	edx
push	eax
mov	[ebp+var_14], 0Fh
call	dword ptr [ecx+14h]
neg	eax
sbb	al, al
inc	al
mov	[esi+24h], al
pop	esi
leave
retn	4
sub_411BB2 endp




sub_411BED proc	near
push	esi
mov	esi, ecx
mov	edx, [esi+20h]
test	edx, edx
jl	short loc_411C08
mov	eax, [esi+38h]
test	eax, eax
jz	short loc_411C08
mov	ecx, [eax+74h]	; hWnd
push	0		; char
call	sub_411C0E

loc_411C08:
or	dword ptr [esi+20h], 0FFFFFFFFh
pop	esi
retn
sub_411BED endp



; Attributes: bp-based frame

; int __thiscall sub_411C0E(HWND hWnd, char)
sub_411C0E proc	near

lParam=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
arg_0= byte ptr	 8

push	ebp
mov	ebp, esp
sub	esp, 28h
push	esi
mov	esi, ecx
mov	cl, [ebp+arg_0]
mov	[ebp+var_24], edx
xor	edx, edx
push	8
neg	cl
pop	eax
mov	[ebp+var_20], edx
sbb	ecx, ecx
mov	[ebp+lParam], eax
and	ecx, eax
mov	[ebp+var_18], eax
lea	eax, [ebp+lParam]
mov	[ebp+var_1C], ecx
push	eax		; lParam
push	edx		; wParam
push	1006h		; Msg
push	esi		; hWnd
mov	[ebp+var_14], edx
call	ds:SendMessageA
pop	esi
leave
retn	4
sub_411C0E endp



; Attributes: bp-based frame

sub_411C4D proc	near

lParam=	dword ptr -34h
var_30=	dword ptr -30h
Memory=	dword ptr -20h
Point= tagPOINT	ptr -1Ch
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_44454C
call	__EH_prolog
sub	esp, 28h
mov	eax, [ebp+arg_0]
push	ebx
push	esi
mov	esi, ecx
mov	[ebp+var_14], eax
mov	eax, [ebp+arg_4]
or	dword ptr [esi+28h], 0FFFFFFFFh
push	edi
mov	[ebp+var_10], eax
call	sub_411BED
xor	edi, edi
cmp	byte ptr [esi+24h], 0
mov	byte ptr [esi+3Ch], 1
mov	[esi+38h], edi
mov	byte ptr [esi+25h], 1
jz	loc_411E21
mov	eax, [ebp+var_14]
lea	ecx, [ebp+Point]
mov	[ebp+Point.x], eax
mov	eax, [ebp+var_10]
mov	[ebp+Point.y], eax
mov	eax, [esi+40h]
push	ecx		; lpPoint
push	dword ptr [eax]	; hWnd
call	ds:ScreenToClient
mov	[ebp+arg_4], edi

loc_411CA9:
mov	eax, [esi+40h]
cmp	dword ptr [eax+8], 1
jg	short loc_411CBA
mov	ecx, [ebp+arg_4]
cmp	ecx, [eax+0Ch]
jnz	short loc_411D02

loc_411CBA:		; hWnd
push	dword ptr [edi+eax+88h]
lea	eax, [edi+eax+88h]
call	ds:IsWindowEnabled
test	eax, eax
jz	short loc_411D02
mov	eax, [esi+40h]
lea	ecx, [edi+eax+84h]
test	ecx, ecx
jz	short loc_411CE9
lea	ecx, [edi+eax+88h]
jmp	short loc_411CEB

loc_411CE9:
xor	ecx, ecx

loc_411CEB:
mov	eax, [eax]
push	3		; flags
push	[ebp+Point.y]
mov	ebx, [ecx]
push	[ebp+Point.x]	; pt
push	eax		; hwnd
call	ds:ChildWindowFromPointEx
cmp	eax, ebx
jz	short loc_411D3C

loc_411D02:
inc	[ebp+arg_4]
add	edi, 188h
cmp	edi, 310h
jl	short loc_411CA9

loc_411D13:
cmp	byte ptr [esi+3Ch], 0
jz	short loc_411D66
mov	eax, [esi+48h]
test	eax, eax
jl	loc_411E21
imul	eax, 188h
mov	ecx, [esi+40h]
lea	eax, [eax+ecx+84h]
mov	[esi+38h], eax
jmp	loc_411E21

loc_411D3C:
mov	eax, [ebp+arg_4]
mov	edx, [esi+40h]
mov	ecx, eax
and	byte ptr [esi+3Ch], 0
imul	ecx, 188h
cmp	eax, [esi+44h]
lea	ecx, [ecx+edx+84h]
mov	[esi+38h], ecx
jnz	short loc_411D13
and	byte ptr [esi+25h], 0
jmp	loc_411E21

loc_411D66:
mov	ecx, [esi+38h]
call	sub_411E32
test	al, al
jz	loc_411E21
push	[ebp+var_10]
mov	eax, [esi+38h]
push	[ebp+var_14]	; Point
mov	edi, [eax+74h]
call	ds:WindowFromPoint
cmp	eax, edi
jnz	loc_411E21
mov	eax, [esi+38h]
lea	ecx, [ebp+var_14]
add	eax, 74h
push	ecx		; lpPoint
push	dword ptr [eax]	; hWnd
call	ds:ScreenToClient
mov	eax, [ebp+var_14]
lea	ecx, [ebp+lParam]
mov	[ebp+lParam], eax
mov	eax, [ebp+var_10]
mov	[ebp+var_30], eax
mov	eax, [esi+38h]
push	ecx		; lParam
push	0		; wParam
mov	eax, [eax+74h]
push	1012h		; Msg
push	eax		; hWnd
call	ds:SendMessageA
mov	edi, eax
test	edi, edi
jl	short loc_411E21
mov	ecx, [esi+38h]
push	edi
call	sub_402875
mov	ebx, eax
cmp	ebx, 0FFFFFFFFh
jz	short loc_411E21
mov	ecx, [esi+38h]
push	ebx
call	sub_41756F
test	al, al
jz	short loc_411E21
mov	ecx, [esi+38h]
lea	eax, [ebp+Memory]
push	ebx
push	eax
mov	[esi+28h], ebx
call	sub_41733B
and	[ebp+var_4], 0
push	eax
lea	ecx, [esi+2Ch]
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	eax, [esi+38h]
pop	ecx
push	1		; char
mov	edx, edi
mov	ecx, [eax+74h]	; hWnd
call	sub_411C0E
mov	[esi+20h], edi

loc_411E21:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	8
sub_411C4D endp




sub_411E32 proc	near
push	esi
mov	esi, ecx
call	sub_40E6A6
test	al, al
jnz	short loc_411E61
mov	ecx, esi
call	sub_40E6B1
test	al, al
jz	short loc_411E5D
mov	ecx, [esi+0D8h]
mov	edx, offset a_	; "\\\\.\\"
call	sub_42828A
test	eax, eax
jnz	short loc_411E61

loc_411E5D:
xor	eax, eax
pop	esi
retn

loc_411E61:
push	1
pop	eax
pop	esi
retn
sub_411E32 endp




sub_411E66 proc	near
push	esi
mov	esi, ecx
cmp	byte ptr [esi+3Ch], 0
jnz	short loc_411E9A
mov	ecx, [esi+38h]
test	ecx, ecx
jz	short loc_411E9A
call	sub_40E6A6
test	al, al
jnz	short loc_411E95
mov	ecx, [esi+38h]
call	sub_40E6B1
test	al, al
jz	short loc_411E91
cmp	dword ptr [esi+20h], 0
jge	short loc_411E95

loc_411E91:
xor	eax, eax
pop	esi
retn

loc_411E95:
push	1
pop	eax
pop	esi
retn

loc_411E9A:
xor	al, al
pop	esi
retn
sub_411E66 endp



; Attributes: bp-based frame

sub_411E9E proc	near

Memory=	dword ptr -28h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_D= byte ptr	-0Dh
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444578
call	__EH_prolog
sub	esp, 1Ch
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
cmp	[esi+38h], ebx
jz	short loc_411EBF
call	sub_411E66
test	al, al
jnz	short loc_411EC6

loc_411EBF:
xor	al, al
jmp	loc_411FA7

loc_411EC6:
push	edi
push	3
lea	ecx, [ebp+var_1C]
mov	[ebp+var_1C], ebx
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
call	sub_403396
mov	ecx, [esi+38h]
mov	[ebp+var_4], ebx
call	sub_40E6A6
test	al, al
jz	short loc_411F18
mov	ecx, [esi+38h]
lea	eax, [ebp+Memory]
push	eax
call	sub_40E775
push	eax
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 1
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
cmp	[ebp+var_18], ebx
pop	ecx
jnz	short loc_411F4F
jmp	loc_411F9B

loc_411F18:
mov	ecx, [esi+38h]
call	sub_40E6B1
test	al, al
jz	short loc_411F9B
cmp	[esi+20h], ebx
jl	short loc_411F9B
push	5Ch
lea	edx, [esi+2Ch]
lea	ecx, [ebp+Memory]
call	sub_409999
push	eax
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 2
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
pop	ecx

loc_411F4F:
mov	eax, [esi+14h]
cmp	eax, ebx
jz	short loc_411F9B
xor	edi, edi
cmp	eax, ebx
jle	short loc_411F99

loc_411F5C:
mov	eax, [esi+18h]
push	[ebp+var_18]
mov	ecx, [eax+edi*4]
lea	eax, [ebp+Memory]
push	eax
call	sub_403228
mov	edx, [eax]
mov	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 3
call	sub_4282B1
push	[ebp+Memory]	; Memory
cmp	eax, ebx
setnz	[ebp+var_D]
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
cmp	[ebp+var_D], bl
pop	ecx
jnz	short loc_411F9B
inc	edi
cmp	edi, [esi+14h]
jl	short loc_411F5C

loc_411F99:
mov	bl, 1

loc_411F9B:		; Memory
push	[ebp+var_1C]
call	sub_4284D8
pop	ecx
mov	al, bl
pop	edi

loc_411FA7:
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_411E9E endp



; Attributes: bp-based frame

sub_411FB5 proc	near

arg_0= byte ptr	 8
arg_C= dword ptr  14h

push	ebp
mov	ebp, esp
push	esi
push	edi
mov	edi, ecx
cmp	byte ptr [edi+24h], 0
jz	short loc_412020
cmp	byte ptr [edi+25h], 0
jz	short loc_412020
call	sub_411E66
test	al, al
jz	short loc_411FD7
cmp	byte ptr [edi+3Dh], 0
jnz	short loc_411FDB

loc_411FD7:
and	[ebp+arg_C], 0FFFFFFFDh

loc_411FDB:
xor	esi, esi
test	[ebp+arg_0], 8
jz	short loc_411FEB
mov	esi, [ebp+arg_C]
and	esi, 1
jmp	short loc_411FF7

loc_411FEB:
test	[ebp+arg_0], 4
jz	short loc_411FFB
mov	esi, [ebp+arg_C]
and	esi, 2

loc_411FF7:
test	esi, esi
jnz	short loc_41201C

loc_411FFB:
test	byte ptr [ebp+arg_C], 1
jz	short loc_412004
push	1
pop	esi

loc_412004:
test	byte ptr [ebp+arg_C], 2
jz	short loc_412018
mov	ecx, edi
call	sub_411E9E
test	al, al
jz	short loc_412018
push	2
pop	esi

loc_412018:
test	esi, esi
jz	short loc_412020

loc_41201C:
mov	eax, esi
jmp	short loc_412022

loc_412020:
xor	eax, eax

loc_412022:
pop	edi
pop	esi
pop	ebp
retn	10h
sub_411FB5 endp



; Attributes: bp-based frame

sub_412028 proc	near

Memory=	dword ptr -1Ch
var_18=	dword ptr -18h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_44458C
call	__EH_prolog
sub	esp, 10h
push	esi
push	edi
xor	edi, edi
mov	esi, ecx
mov	[ebp+var_10], edi
call	sub_411E66
test	al, al
jnz	short loc_41205F
mov	esi, [ebp+arg_0]
push	3
mov	ecx, esi
mov	[esi], edi
mov	[esi+4], edi
mov	[esi+8], edi
call	sub_403396
mov	eax, esi
jmp	short loc_4120C0

loc_41205F:
mov	eax, [esi+38h]
lea	ecx, [ebp+Memory]
add	eax, 0D8h
push	eax
call	sub_4030F2
mov	ecx, [esi+38h]
mov	[ebp+var_4], edi
call	sub_40E6B1
test	al, al
jz	short loc_412088
mov	eax, [ebp+Memory]
mov	[ebp+var_18], edi
mov	[eax], di

loc_412088:
cmp	[esi+28h], edi
jl	short loc_4120A8
cmp	[esi+30h], edi
jz	short loc_4120A8
add	esi, 2Ch
lea	ecx, [ebp+Memory]
push	esi
call	sub_4031F2
push	5Ch
lea	ecx, [ebp+Memory]
call	sub_40316A

loc_4120A8:
mov	ecx, [ebp+arg_0]
lea	eax, [ebp+Memory]
push	eax
call	sub_4030F2
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	eax, [ebp+arg_0]
pop	ecx

loc_4120C0:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_412028 endp



; Attributes: bp-based frame

sub_4120D0 proc	near

var_44=	word ptr -44h
var_40=	dword ptr -40h
var_3C=	dword ptr -3Ch
var_38=	dword ptr -38h
var_34=	dword ptr -34h
Memory=	dword ptr -30h
var_24=	dword ptr -24h
hMem= dword ptr	-20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= byte ptr	 8

mov	eax, offset loc_4445A8
call	__EH_prolog
sub	esp, 38h
push	ebx
push	esi
push	lpszFormat	; lpszFormat
mov	esi, ecx
call	ds:RegisterClipboardFormatA
or	[ebp+var_38], 0FFFFFFFFh
push	1
mov	[ebp+var_44], ax
pop	eax
xor	ebx, ebx
push	3
lea	ecx, [ebp+var_18]
mov	[ebp+var_40], ebx
mov	[ebp+var_3C], eax
mov	[ebp+var_34], eax
mov	[ebp+var_24], eax
mov	[ebp+var_1C], ebx
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
mov	[ebp+var_10], ebx
call	sub_403396
cmp	[ebp+arg_0], bl
mov	[ebp+var_4], ebx
jz	short loc_412148
lea	eax, [ebp+Memory]
mov	ecx, esi
push	eax
call	sub_412028
push	eax
lea	ecx, [ebp+var_18]
mov	byte ptr [ebp+var_4], 1
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
pop	ecx

loc_412148:
mov	eax, [ebp+var_14]
lea	eax, [eax+eax+2]
push	eax		; dwBytes
push	2042h		; uFlags
call	ds:GlobalAlloc
cmp	eax, ebx
mov	[ebp+hMem], eax
jz	short loc_4121C1
push	eax		; hMem
call	ds:GlobalLock
cmp	eax, ebx
jnz	short loc_412178
push	[ebp+hMem]	; hMem
call	ds:GlobalUnlock
jmp	short loc_4121C1

loc_412178:
mov	edx, [ebp+var_18]
mov	cx, [edx]
mov	[eax], cx
add	eax, 2

loc_412184:
inc	edx
inc	edx
cmp	cx, bx
jz	short loc_412195
mov	cx, [edx]
mov	[eax], cx
inc	eax
inc	eax
jmp	short loc_412184

loc_412195:		; hMem
push	[ebp+hMem]
call	ds:GlobalUnlock
mov	eax, [esi+8]
lea	edx, [ebp+var_24]
push	ebx
push	edx
mov	ecx, [eax]
lea	edx, [ebp+var_44]
push	edx
push	eax
call	dword ptr [ecx+1Ch]
push	[ebp+hMem]	; hMem
mov	ebx, eax
neg	ebx
sbb	bl, bl
inc	bl
call	ds:GlobalFree

loc_4121C1:		; Memory
push	[ebp+var_18]
call	sub_4284D8
pop	ecx
mov	al, bl
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_4120D0 endp




sub_4121DC proc	near
push	esi
mov	esi, ecx
cmp	byte ptr [esi+24h], 0
jz	short loc_4121F9
cmp	byte ptr [esi+25h], 0
jz	short loc_4121F9
call	sub_411E66
test	al, al
jz	short loc_4121F9
push	1
pop	eax
jmp	short loc_4121FB

loc_4121F9:
xor	eax, eax

loc_4121FB:
push	eax
mov	ecx, esi
call	sub_4120D0
mov	[esi+3Dh], al
pop	esi
retn
sub_4121DC endp



; Attributes: bp-based frame

sub_412208 proc	near

arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h
arg_10=	dword ptr  18h
arg_14=	dword ptr  1Ch

push	ebp
mov	ebp, esp
mov	ecx, [ebp+arg_4]
push	esi
mov	esi, [ebp+arg_0]
lea	edx, [esi+0Ch]
call	sub_412246
push	[ebp+arg_4]
mov	ecx, esi
call	sub_411BB2
push	[ebp+arg_4]
lea	ecx, [esi+8]
call	sub_43D0DB
push	[ebp+arg_14]
mov	eax, [esi]
push	[ebp+arg_10]
push	[ebp+arg_C]
push	[ebp+arg_8]
push	esi
call	dword ptr [eax+10h]
pop	esi
pop	ebp
retn	18h
sub_412208 endp



; Attributes: bp-based frame

sub_412246 proc	near

var_3C=	word ptr -3Ch
var_38=	dword ptr -38h
var_34=	dword ptr -34h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
hMem= dword ptr	-24h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4445C4
call	__EH_prolog
sub	esp, 30h
push	ebx
push	esi
mov	esi, ecx
mov	[ebp+var_14], edx
mov	ecx, edx
call	sub_428327
mov	eax, [esi]
and	[ebp+var_38], 0
push	1
or	[ebp+var_30], 0FFFFFFFFh
pop	ebx
lea	ecx, [ebp+var_28]
push	ecx
lea	ecx, [ebp+var_3C]
push	ecx
push	esi
mov	[ebp+var_3C], 0Fh
mov	[ebp+var_34], ebx
mov	[ebp+var_2C], ebx
call	dword ptr [eax+0Ch]
test	eax, eax
jnz	short loc_4122FD
cmp	[ebp+var_28], ebx
jnz	short loc_4122FD
and	[ebp+var_10], eax
and	[ebp+var_4], eax
mov	esi, [ebp+hMem]
lea	ecx, [ebp+var_10]
call	sub_42C4A4
mov	[ebp+var_10], esi
push	[ebp+hMem]	; hMem
call	ds:GlobalSize
mov	esi, eax
mov	eax, [ebp+hMem]
push	eax		; hMem
mov	[ebp+var_1C], eax
call	ds:GlobalLock
mov	[ebp+var_18], eax
test	eax, eax
mov	byte ptr [ebp+var_4], bl
jz	short loc_4122F1
mov	ecx, [eax]
cmp	esi, ecx
jb	short loc_4122E8
push	[ebp+var_14]
sub	esi, ecx
add	ecx, eax
cmp	dword ptr [eax+10h], 0
mov	edx, esi
jz	short loc_4122E3
shr	edx, 1
call	sub_41230B
jmp	short loc_4122E8

loc_4122E3:
call	sub_41238F

loc_4122E8:		; hMem
push	[ebp+var_1C]
call	ds:GlobalUnlock

loc_4122F1:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_10]
call	sub_42C4A4

loc_4122FD:
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_412246 endp



; Attributes: bp-based frame

sub_41230B proc	near

Memory=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_4445D8
call	__EH_prolog
sub	esp, 0Ch
push	ebx
push	esi
push	edi
mov	edi, ecx
mov	ecx, [ebp+arg_0]
mov	ebx, edx
call	sub_428327
xor	esi, esi
lea	ecx, [ebp+Memory]
push	3
mov	[ebp+Memory], esi
mov	[ebp+var_14], esi
mov	[ebp+var_10], esi
call	sub_403396
cmp	ebx, esi
mov	[ebp+var_4], esi
jbe	short loc_412375

loc_412343:
mov	ax, [edi]
inc	edi
inc	edi
cmp	ax, si
jnz	short loc_412369
cmp	[ebp+var_14], esi
jz	short loc_412375
mov	ecx, [ebp+arg_0]
lea	eax, [ebp+Memory]
push	eax
call	sub_4032B4
mov	eax, [ebp+Memory]
mov	[ebp+var_14], esi
mov	[eax], si
jmp	short loc_412372

loc_412369:
push	eax
lea	ecx, [ebp+Memory]
call	sub_40316A

loc_412372:
dec	ebx
jnz	short loc_412343

loc_412375:		; Memory
push	[ebp+Memory]
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_41230B endp



; Attributes: bp-based frame

sub_41238F proc	near

Memory=	dword ptr -28h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_4445F4
call	__EH_prolog
sub	esp, 1Ch
push	ebx
push	esi
mov	esi, ecx
push	edi
mov	ecx, [ebp+arg_0]
mov	edi, edx
call	sub_428327
xor	ebx, ebx
lea	ecx, [ebp+var_1C]
push	3
mov	[ebp+var_1C], ebx
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
call	sub_4034E3
cmp	edi, ebx
mov	[ebp+var_4], ebx
jbe	short loc_412412

loc_4123C7:
mov	al, [esi]
inc	esi
cmp	al, bl
mov	byte ptr [ebp+var_10], al
jnz	short loc_412404
cmp	[ebp+var_18], ebx
jz	short loc_412412
lea	edx, [ebp+var_1C]
lea	ecx, [ebp+Memory]
call	sub_41242C
mov	ecx, [ebp+arg_0]
push	eax
mov	byte ptr [ebp+var_4], 1
call	sub_4032B4
mov	byte ptr [ebp+var_4], bl
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	eax, [ebp+var_1C]
mov	[ebp+var_18], ebx
pop	ecx
mov	[eax], bl
jmp	short loc_41240F

loc_412404:
push	[ebp+var_10]
lea	ecx, [ebp+var_1C]
call	sub_412848

loc_41240F:
dec	edi
jnz	short loc_4123C7

loc_412412:		; Memory
push	[ebp+var_1C]
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_41238F endp




sub_41242C proc	near

var_4= dword ptr -4

push	ecx
and	[esp+4+var_4], 0
push	esi
mov	esi, ecx
push	0		; CodePage
call	sub_42850B
mov	eax, esi
pop	esi
pop	ecx
retn
sub_41242C endp



; Attributes: bp-based frame

sub_412441 proc	near

arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h
arg_10=	dword ptr  18h

push	ebp
mov	ebp, esp
mov	ecx, [ebp+arg_0]
push	esi
push	[ebp+arg_C]
push	[ebp+arg_8]
call	sub_411C4D
mov	ecx, [ebp+arg_0]
call	sub_4121DC
mov	esi, [ebp+arg_10]
mov	ecx, [ebp+arg_0]
push	dword ptr [esi]
push	[ebp+arg_C]
push	[ebp+arg_8]
push	[ebp+arg_4]
call	sub_411FB5
mov	[esi], eax
xor	eax, eax
pop	esi
pop	ebp
retn	14h
sub_412441 endp




sub_41247A proc	near

arg_0= dword ptr  4

push	esi
mov	esi, [esp+4+arg_0]
mov	ecx, esi
call	sub_411BED
push	0
mov	ecx, esi
call	sub_4120D0
mov	eax, [esi+8]
test	eax, eax
jz	short loc_4124A0
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
and	dword ptr [esi+8], 0

loc_4124A0:
xor	eax, eax
pop	esi
retn	4
sub_41247A endp



; Attributes: bp-based frame

sub_4124A6 proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h
arg_10=	dword ptr  18h
arg_14=	dword ptr  1Ch

mov	eax, offset loc_444608
call	__EH_prolog
sub	esp, 0Ch
push	ebx
push	esi
mov	esi, [ebp+arg_0]
push	[ebp+arg_4]
mov	ecx, esi
call	sub_411BB2
push	[ebp+arg_10]
mov	ecx, esi
push	[ebp+arg_C]
call	sub_411C4D
push	[ebp+arg_4]
lea	ecx, [esi+8]
mov	[ebp+arg_0], ecx
call	sub_43D0DB
cmp	byte ptr [esi+24h], 0
mov	bl, 1
jz	short loc_412505
cmp	byte ptr [esi+25h], 0
jz	short loc_412505
mov	ecx, esi
call	sub_411E66
test	al, al
jz	short loc_412505
mov	ecx, esi
call	sub_4121DC
mov	bl, al
neg	bl
sbb	bl, bl
inc	bl

loc_412505:
push	edi
mov	edi, [ebp+arg_14]
mov	ecx, esi
push	dword ptr [edi]
push	[ebp+arg_10]
push	[ebp+arg_C]
push	[ebp+arg_8]
call	sub_411FB5
mov	[edi], eax
cmp	byte ptr [esi+24h], 0
pop	edi
jz	short loc_412580
cmp	byte ptr [esi+25h], 0
jz	short loc_412580
test	bl, bl
jz	short loc_412580
lea	eax, [ebp+Memory]
mov	ecx, esi
push	eax
call	sub_412028
and	[ebp+var_4], 0
cmp	byte ptr [esi+3Ch], 0
jz	short loc_412564
mov	ecx, [esi+38h]
test	ecx, ecx
jz	short loc_412564
call	sub_40E6A6
test	al, al
jz	short loc_412564
mov	eax, [esi+38h]
lea	ecx, [ebp+Memory]
add	eax, 0D8h
push	eax
call	sub_40312C

loc_412564:
mov	ecx, [esi+38h]
lea	eax, [ebp+Memory]
push	eax
push	[ebp+arg_4]
call	sub_4125AB
push	[ebp+Memory]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
pop	ecx

loc_412580:
mov	ecx, esi
call	sub_411BED
mov	esi, [ebp+arg_0]
mov	eax, [esi]
test	eax, eax
jz	short loc_412599
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
and	dword ptr [esi], 0

loc_412599:
mov	ecx, [ebp+var_C]
pop	esi
xor	eax, eax
pop	ebx
mov	large fs:0, ecx
leave
retn	18h
sub_4124A6 endp



; Attributes: bp-based frame

sub_4125AB proc	near

var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_444624
call	__EH_prolog
sub	esp, 14h
push	esi
xor	eax, eax
mov	esi, offset off_44B510
push	edi
mov	edi, ecx
mov	[ebp+var_1C], eax
mov	[ebp+var_18], eax
mov	[ebp+var_14], eax
mov	[ebp+var_10], 4
mov	[ebp+var_20], esi
mov	ecx, [ebp+arg_0]
lea	edx, [ebp+var_20]
mov	[ebp+var_4], eax
call	sub_412246
push	[ebp+arg_4]
lea	eax, [ebp+var_20]
mov	ecx, edi
push	eax
call	sub_412620
mov	[ebp+var_20], esi
lea	ecx, [ebp+var_20]
mov	[ebp+var_4], 1
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_20]
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	8
sub_4125AB endp



; Attributes: bp-based frame

sub_412620 proc	near

var_30=	dword ptr -30h
Memory=	dword ptr -24h
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_444648
call	__EH_prolog
sub	esp, 24h
push	esi
mov	esi, [ebp+arg_0]
push	edi
mov	edi, ecx
mov	eax, [esi+8]
test	eax, eax
jz	loc_41270C
call	sub_40E6A6
test	al, al
jnz	short loc_41265E
mov	ecx, edi
call	sub_40E872
neg	al
sbb	al, al
inc	al
mov	byte ptr [ebp+arg_0+3],	al
jz	loc_412704

loc_41265E:
push	[ebp+arg_4]
lea	ecx, [ebp+var_18]
call	sub_4030F2
and	[ebp+var_4], 0
cmp	[ebp+var_14], 0
jnz	short loc_41269D
mov	eax, [esi+0Ch]
lea	edx, [ebp+var_18]
mov	eax, [eax]
mov	eax, [eax]
mov	ecx, eax
call	sub_42AAF6
lea	ecx, [ebp+var_18]
call	sub_41271C
test	al, al
jz	short loc_41269D
push	offset aC	; "C:\\\\"
lea	ecx, [ebp+var_18]
call	sub_404722

loc_41269D:
mov	eax, [esi+8]
mov	ecx, [esi+0Ch]
cmp	eax, 1
push	0
mov	edx, [ecx]
lea	ecx, [ebp+var_30]
setnle	al
push	eax
call	sub_432457
push	offset word_45D498
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 1
call	sub_403091
mov	ecx, esi
mov	byte ptr [ebp+var_4], 2
call	sub_4127A6
push	eax
push	1
push	0
lea	eax, [ebp+Memory]
push	esi
push	eax
lea	edx, [ebp+var_30]
lea	ecx, [ebp+var_18]
call	sub_432B68
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_30]	; Memory
call	sub_4284D8
push	[ebp+var_18]	; Memory
call	sub_4284D8
add	esp, 0Ch
jmp	short loc_41270C

loc_412704:
push	esi
mov	ecx, edi
call	loc_40FF8C

loc_41270C:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	8
sub_412620 endp



; Attributes: bp-based frame

sub_41271C proc	near

var_24=	dword ptr -24h
Memory=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444664
call	__EH_prolog
sub	esp, 18h
push	esi
push	edi
mov	esi, ecx
xor	edi, edi
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+Memory], edi
mov	[ebp+var_14], edi
mov	[ebp+var_10], edi
call	sub_403396
lea	ecx, [ebp+Memory]
mov	[ebp+var_4], edi
call	sub_42AB81
test	al, al
jz	short loc_412756
cmp	[ebp+var_14], edi
jnz	short loc_412763

loc_412756:		; Memory
push	[ebp+Memory]
call	sub_4284D8
pop	ecx
xor	al, al
jmp	short loc_412798

loc_412763:
push	[ebp+var_14]
lea	eax, [ebp+var_24]
mov	ecx, esi
push	eax
call	sub_403228
mov	edx, [eax]
mov	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 1
call	sub_4282B1
mov	esi, eax
push	[ebp+var_24]	; Memory
call	sub_4284D8
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
cmp	esi, edi
pop	ecx
setz	al

loc_412798:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41271C endp



; Attributes: bp-based frame

sub_4127A6 proc	near

Memory=	dword ptr -24h
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444680
call	__EH_prolog
sub	esp, 18h
push	ebx
push	esi
mov	esi, ecx
push	edi
xor	ebx, ebx
push	3
lea	ecx, [ebp+var_18]
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
mov	[ebp+var_10], ebx
call	sub_403396
lea	ecx, [ebp+var_18]
mov	[ebp+var_4], ebx
call	sub_42AB81
test	al, al
jz	short loc_412828
cmp	[ebp+var_14], ebx
jz	short loc_412828
xor	edi, edi
cmp	[esi+8], ebx
jle	short loc_412828
jmp	short loc_4127EC

loc_4127EA:
xor	ebx, ebx

loc_4127EC:
mov	eax, [esi+0Ch]
push	[ebp+var_14]
mov	ecx, [eax+edi*4]
lea	eax, [ebp+Memory]
push	eax
call	sub_403228
mov	edx, [eax]
mov	ecx, [ebp+var_18]
mov	byte ptr [ebp+var_4], 1
call	sub_4282B1
cmp	eax, ebx
push	[ebp+Memory]	; Memory
setz	bl
and	byte ptr [ebp+var_4], 0
call	sub_4284D8
test	bl, bl
pop	ecx
jnz	short loc_412844
inc	edi
cmp	edi, [esi+8]
jl	short loc_4127EA

loc_412828:
xor	bl, bl

loc_41282A:		; Memory
push	[ebp+var_18]
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
mov	al, bl
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn

loc_412844:
mov	bl, 1
jmp	short loc_41282A
sub_4127A6 endp




sub_412848 proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
push	1
call	sub_412941
mov	eax, [esi]
mov	ecx, [esi+4]
mov	dl, [esp+4+arg_0]
mov	[eax+ecx], dl
inc	dword ptr [esi+4]
mov	eax, [esi+4]
mov	ecx, [esi]
and	byte ptr [eax+ecx], 0
mov	eax, esi
pop	esi
retn	4
sub_412848 endp



; Attributes: bp-based frame

sub_412870 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444694
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	dword ptr [esi], offset	off_44C320
and	[ebp+var_4], 0
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
mov	ecx, esi
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_412870 endp



; Attributes: bp-based frame

sub_4128A8 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset unknown_libname_19 ; Microsoft VisualC 2-11/net runtime
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	0Ch		; Size
call	sub_4284B1
pop	ecx
mov	ecx, eax
mov	[ebp+var_10], ecx
xor	eax, eax
cmp	ecx, eax
mov	[ebp+var_4], eax
jz	short loc_4128D4
push	[ebp+arg_0]
call	sub_4128EF

loc_4128D4:
or	[ebp+var_4], 0FFFFFFFFh
push	eax
mov	ecx, esi
call	sub_429907
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_4128A8 endp




sub_4128EF proc	near

arg_0= dword ptr  4

push	esi
push	edi
mov	edi, [esp+8+arg_0]
mov	esi, ecx
and	dword ptr [esi], 0
and	dword ptr [esi+4], 0
and	dword ptr [esi+8], 0
push	dword ptr [edi+4]
call	sub_4034E3
mov	ecx, [edi]
mov	eax, [esi]

loc_41290E:
mov	dl, [ecx]
mov	[eax], dl
inc	eax
inc	ecx
test	dl, dl
jnz	short loc_41290E
mov	eax, [edi+4]
pop	edi
mov	[esi+4], eax
mov	eax, esi
pop	esi
retn	4
sub_4128EF endp




; int __thiscall sub_412925(void *Memory, char)
sub_412925 proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_412870
test	[esp+4+arg_0], 1
jz	short loc_41293B
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_41293B:
mov	eax, esi
pop	esi
retn	4
sub_412925 endp




sub_412941 proc	near

arg_0= dword ptr  4

push	ebx
push	esi
push	edi
mov	edi, [ecx+8]
mov	ebx, [esp+0Ch+arg_0]
mov	esi, edi
sub	esi, [ecx+4]
dec	esi
cmp	ebx, esi
jle	short loc_412985
cmp	edi, 40h
jle	short loc_412963
mov	eax, edi
cdq
sub	eax, edx
sar	eax, 1
jmp	short loc_412972

loc_412963:
xor	eax, eax
cmp	edi, 8
setle	al
dec	eax
and	eax, 0Ch
add	eax, 4

loc_412972:
lea	edx, [eax+esi]
cmp	edx, ebx
jge	short loc_41297D
sub	ebx, esi
mov	eax, ebx

loc_41297D:
add	edi, eax
push	edi
call	sub_4034E3

loc_412985:
pop	edi
pop	esi
pop	ebx
retn	4
sub_412941 endp



; Attributes: bp-based frame

sub_41298B proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset unknown_libname_20 ; Microsoft VisualC 2-11/net runtime
call	__EH_prolog
push	ecx
push	esi
push	edi
mov	edi, ecx
mov	eax, [edi+0FCh]
lea	esi, [edi+0FCh]
test	eax, eax
jz	short loc_4129B3
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
and	dword ptr [esi], 0

loc_4129B3:
lea	ecx, [edi+0F8h]
call	sub_429929
push	4Ch		; Size
call	sub_4284B1
pop	ecx
mov	ecx, eax
mov	[ebp+var_10], ecx
and	[ebp+var_4], 0
test	ecx, ecx
jz	short loc_4129DC
call	sub_4129FF
mov	edi, eax
jmp	short loc_4129DE

loc_4129DC:
xor	edi, edi

loc_4129DE:
or	[ebp+var_4], 0FFFFFFFFh
push	edi
mov	ecx, esi
call	sub_43D0DB
mov	ecx, edi
call	sub_41ECDC
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41298B endp




sub_4129FF proc	near
push	esi
mov	esi, ecx
push	offset sub_406E76 ; void (__thiscall *)(void *)
push	offset sub_403079 ; int
push	4		; int
lea	eax, [esi+0Ch]
mov	dword ptr [esi], offset	off_44BC00
push	0Ch		; unsigned int
mov	dword ptr [esi+4], offset off_44BB94
and	dword ptr [esi+8], 0
push	eax		; void *
call	??_L@YGXPAXIHP6EX0@Z1@Z	; `eh vector constructor iterator'(void *,uint,int,void (*)(void *),void (*)(void *))
mov	dword ptr [esi], offset	off_44C338
mov	dword ptr [esi+4], offset off_44C328
mov	eax, esi
pop	esi
retn
sub_4129FF endp



; Attributes: bp-based frame

; int __stdcall	sub_412A3B(int,	void *Buf1, int)
sub_412A3B proc	near

arg_0= dword ptr  8
Buf1= dword ptr	 0Ch
arg_8= dword ptr  10h

push	ebp
mov	ebp, esp
push	10h		; Size
push	offset unk_44CCB8 ; Buf2
push	[ebp+Buf1]	; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jz	short loc_412A6A
push	10h		; Size
push	offset unk_44B690 ; Buf2
push	[ebp+Buf1]	; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jnz	short loc_412A87

loc_412A6A:
mov	eax, [ebp+arg_0]
mov	ecx, eax
push	eax
neg	ecx
lea	edx, [eax+4]
sbb	ecx, ecx
and	ecx, edx
mov	edx, [ebp+arg_8]
mov	[edx], ecx
mov	ecx, [eax]
call	dword ptr [ecx+4]
xor	eax, eax
jmp	short loc_412A8C

loc_412A87:
mov	eax, 80004002h

loc_412A8C:
pop	ebp
retn	0Ch
sub_412A3B endp




; int __stdcall	sub_412A90(void	*Memory)
sub_412A90 proc	near

Memory=	dword ptr  4

push	esi
mov	esi, [esp+4+Memory]
dec	dword ptr [esi+8]
mov	eax, [esi+8]
jnz	short loc_412AB1
test	esi, esi
jz	short loc_412AAF
mov	ecx, esi
call	sub_412AB5
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_412AAF:
xor	eax, eax

loc_412AB1:
pop	esi
retn	4
sub_412A90 endp




sub_412AB5 proc	near
push	offset sub_406E76 ; void (__thiscall *)(void *)
push	4		; int
add	ecx, 0Ch
push	0Ch		; unsigned int
push	ecx		; void *
call	??_M@YGXPAXIHP6EX0@Z@Z ; `eh vector destructor iterator'(void *,uint,int,void (*)(void *))
retn
sub_412AB5 endp



; Attributes: bp-based frame

sub_412AC8 proc	near

var_A0=	byte ptr -0A0h
var_80=	dword ptr -80h
var_78=	dword ptr -78h
var_68=	dword ptr -68h
var_60=	dword ptr -60h
var_5C=	dword ptr -5Ch
var_54=	dword ptr -54h
var_4C=	dword ptr -4Ch
var_48=	dword ptr -48h
var_40=	byte ptr -40h
var_3F=	byte ptr -3Fh
var_3C=	dword ptr -3Ch
var_38=	dword ptr -38h
var_34=	dword ptr -34h
var_30=	dword ptr -30h
Memory=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
lpFileName= dword ptr -20h
var_1C=	dword ptr -1Ch
var_11=	byte ptr -11h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h

mov	eax, offset loc_44475B
call	__EH_prolog
sub	esp, 94h
mov	eax, [ebp+arg_8]
push	ebx
xor	ebx, ebx
push	esi
mov	[eax], bl
mov	eax, [ebp+arg_C]
mov	esi, ecx
push	edi
lea	ecx, [ebp+var_40]
mov	[eax], bl
mov	[ebp+var_3C], esi
call	sub_4028C8
mov	eax, [esi+0ECh]
mov	[ebp+var_4], ebx
cmp	eax, ebx
jle	loc_412C7B
mov	ecx, [esi+0F0h]
mov	edi, [ecx+eax*4-4]
mov	ecx, [ebp+arg_0]
lea	eax, [ebp+Memory]
push	dword ptr [edi+88h]
push	eax
call	sub_403228
mov	edx, [edi+84h]
mov	ecx, [eax]
mov	byte ptr [ebp+var_4], 1
call	sub_42828A
push	[ebp+Memory]	; Memory
cmp	eax, ebx
setz	[ebp+var_11]
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
cmp	[ebp+var_11], bl
pop	ecx
jz	loc_412C7B
add	esi, 0FCh

loc_412B53:
mov	[ebp+arg_C], ebx
mov	eax, [esi]
lea	edx, [ebp+arg_C]
push	edx
push	eax
mov	ecx, [eax]
mov	byte ptr [ebp+var_4], 2
call	dword ptr [ecx+20h]
mov	ecx, [ebp+arg_C]
cmp	ecx, ebx
jz	short loc_412B8B
cmp	eax, ebx
jnz	short loc_412B8B
push	ecx
mov	ecx, esi
call	sub_43D0DB
mov	eax, [ebp+arg_C]
mov	byte ptr [ebp+var_4], bl
cmp	eax, ebx
jz	short loc_412B53
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
jmp	short loc_412B53

loc_412B8B:
cmp	ecx, ebx
mov	byte ptr [ebp+var_4], bl
jz	short loc_412B98
mov	eax, [ecx]
push	ecx
call	dword ptr [eax+8]

loc_412B98:
lea	ecx, [ebp+var_68]
call	sub_40337B
mov	[ebp+var_68], offset off_44B510
push	dword ptr [edi+88h]
mov	ecx, [ebp+arg_0]
lea	eax, [ebp+Memory]
mov	byte ptr [ebp+var_4], 3
push	eax
call	sub_405246
lea	edx, [ebp+var_68]
mov	ecx, eax
mov	byte ptr [ebp+var_4], 4
call	sub_428DBB
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	edx, [ebp+var_60]
pop	ecx
cmp	edx, ebx
mov	[ebp+arg_0], ebx
jle	short loc_412C4A

loc_412BDE:
mov	eax, [ebp+var_5C]
mov	ecx, [ebp+arg_0]
cmp	ecx, ebx
mov	eax, [eax+ecx*4]
jz	short loc_412BF0
dec	edx
cmp	ecx, edx
jnz	short loc_412BF5

loc_412BF0:
cmp	[eax+4], ebx
jz	short loc_412C2F

loc_412BF5:
mov	[ebp+arg_C], ebx
mov	ecx, [eax]
mov	eax, [esi]
lea	edi, [ebp+arg_C]
mov	byte ptr [ebp+var_4], 5
mov	edx, [eax]
push	edi
push	ecx
push	eax
call	dword ptr [edx+18h]
mov	ecx, [ebp+arg_C]
cmp	ecx, ebx
jz	short loc_412C3C
cmp	eax, ebx
jnz	short loc_412C3C
push	ecx
mov	ecx, esi
call	sub_43D0DB
mov	eax, [ebp+arg_C]
mov	byte ptr [ebp+var_4], 3
cmp	eax, ebx
jz	short loc_412C2F
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_412C2F:
mov	edx, [ebp+var_60]
inc	[ebp+arg_0]
cmp	[ebp+arg_0], edx
jl	short loc_412BDE
jmp	short loc_412C4A

loc_412C3C:
cmp	ecx, ebx
mov	byte ptr [ebp+var_4], 3
jz	short loc_412C4A
mov	eax, [ecx]
push	ecx
call	dword ptr [eax+8]

loc_412C4A:
mov	[ebp+var_68], offset off_44B510
lea	ecx, [ebp+var_68]
mov	byte ptr [ebp+var_4], 6
call	sub_428327
lea	ecx, [ebp+var_68]
mov	byte ptr [ebp+var_4], bl
call	sub_4282FE
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_40]
call	sub_4028F2
xor	eax, eax
jmp	loc_412F99

loc_412C7B:
mov	ecx, esi
call	sub_413EF8
push	[ebp+arg_0]
lea	ecx, [ebp+lpFileName]
call	sub_4030F2
lea	ecx, [ebp+var_78]
mov	byte ptr [ebp+var_4], 7
call	sub_403079
lea	ecx, [ebp+var_54]
mov	byte ptr [ebp+var_4], 8
call	sub_40337B
mov	[ebp+var_54], offset off_44B510
mov	byte ptr [ebp+var_4], 9

loc_412CB0:
cmp	[ebp+var_1C], ebx
jz	loc_412D62
push	[ebp+lpFileName] ; lpFileName
lea	ecx, [ebp+var_A0]
call	sub_42B49E
test	al, al
jnz	loc_412D62
mov	edx, [ebp+var_1C]
mov	ecx, [ebp+lpFileName]
cmp	edx, ebx
jz	short loc_412CFA
lea	eax, [ecx+edx*2-2]

loc_412CDD:
cmp	word ptr [eax],	5Ch
jz	short loc_412CEB
cmp	eax, ecx
jz	short loc_412CF3
dec	eax
dec	eax
jmp	short loc_412CDD

loc_412CEB:
sub	eax, ecx
sar	eax, 1
mov	edi, eax
jmp	short loc_412CF6

loc_412CF3:
or	edi, 0FFFFFFFFh

loc_412CF6:
cmp	edi, ebx
jge	short loc_412D02

loc_412CFA:
mov	[ebp+var_1C], ebx
mov	[ecx], bx
jmp	short loc_412CB0

loc_412D02:
cmp	[ebp+var_4C], ebx
jg	short loc_412D0C
dec	edx
cmp	edi, edx
jge	short loc_412D36

loc_412D0C:
lea	eax, [edi+1]
lea	ecx, [ebp+lpFileName]
push	eax
lea	eax, [ebp+Memory]
push	eax
call	sub_405246
push	eax
lea	ecx, [ebp+var_54]
mov	byte ptr [ebp+var_4], 0Ah
call	sub_4032B4
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 9
call	sub_4284D8
pop	ecx

loc_412D36:
lea	eax, [ebp+var_38]
push	edi
push	eax
lea	ecx, [ebp+lpFileName]
call	sub_403228
push	eax
lea	ecx, [ebp+lpFileName]
mov	byte ptr [ebp+var_4], 0Bh
call	sub_40312C
push	[ebp+var_38]	; Memory
mov	byte ptr [ebp+var_4], 9
call	sub_4284D8
pop	ecx
jmp	loc_412CB0

loc_412D62:
mov	ecx, esi
call	sub_41298B
mov	[ebp+var_10], ebx
cmp	[ebp+var_1C], ebx
mov	byte ptr [ebp+var_4], 0Ch
jnz	short loc_412DA4
mov	eax, [ebp+arg_0]
add	esi, 0FCh
lea	edi, [ebp+var_10]
mov	ecx, [eax]
mov	eax, [esi]
push	edi
push	ecx
mov	edx, [eax]
push	eax
call	dword ptr [edx+18h]

loc_412D8D:
test	eax, eax
jnz	loc_412F3D
push	[ebp+var_10]
mov	ecx, esi
call	sub_43D0DB
jmp	loc_412F3D

loc_412DA4:
mov	eax, [ebp+var_80]
shr	eax, 4
test	al, 1
jz	short loc_412DD1
lea	ecx, [ebp+lpFileName]
call	sub_42C33B
mov	eax, [esi+0FCh]
add	esi, 0FCh
lea	edx, [ebp+var_10]
mov	ecx, [eax]
push	edx
push	[ebp+lpFileName]
push	eax
call	dword ptr [ecx+18h]
jmp	short loc_412D8D

loc_412DD1:
push	3
lea	ecx, [ebp+var_38]
mov	[ebp+var_38], ebx
mov	[ebp+var_34], ebx
mov	[ebp+var_30], ebx
call	sub_403396
mov	ecx, [ebp+lpFileName]
lea	edx, [ebp+var_38]
mov	byte ptr [ebp+var_4], 0Dh
call	sub_42AAF6
test	al, al
jnz	short loc_412E00
mov	eax, [ebp+var_38]
mov	[ebp+var_34], ebx
mov	[eax], bx

loc_412E00:
mov	eax, [esi+0FCh]
lea	edi, [esi+0FCh]
lea	edx, [ebp+var_10]
mov	ecx, [eax]
push	edx
push	[ebp+var_38]
push	eax
call	dword ptr [ecx+18h]
test	eax, eax
jnz	loc_412F34
push	[ebp+var_10]
mov	ecx, edi
call	sub_43D0DB
mov	ecx, esi
call	sub_41320F
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+Memory], ebx
mov	[ebp+var_28], ebx
mov	[ebp+var_24], ebx
call	sub_403396
mov	ecx, [ebp+lpFileName]
lea	edx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 0Eh
call	sub_42AAA7
test	al, al
jz	loc_412F2B
push	[ebp+arg_C]
lea	eax, [ebp+Memory]
mov	ecx, esi
push	[ebp+arg_4]
push	eax
call	sub_41466D
mov	esi, eax
cmp	esi, 1
jz	loc_412F2B
cmp	esi, ebx
jz	short loc_412ED7
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_38]	; Memory
call	sub_4284D8
mov	eax, [ebp+var_10]
pop	ecx
cmp	eax, ebx
pop	ecx
mov	byte ptr [ebp+var_4], 9
jz	short loc_412E9F
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_412E9F:
mov	[ebp+var_54], offset off_44B510
lea	ecx, [ebp+var_54]
mov	byte ptr [ebp+var_4], 0Fh
call	sub_428327
lea	ecx, [ebp+var_54]
mov	byte ptr [ebp+var_4], 8
call	sub_4282FE
push	[ebp+var_78]	; Memory
call	sub_4284D8
push	[ebp+lpFileName] ; Memory
call	sub_4284D8
pop	ecx
mov	ebx, esi
pop	ecx
jmp	loc_412F7F

loc_412ED7:
mov	eax, [ebp+arg_8]
mov	byte ptr [eax],	1
mov	eax, [ebp+var_4C]
lea	esi, [eax-1]
cmp	esi, ebx
jl	short loc_412F2B

loc_412EE7:
mov	[ebp+arg_0], ebx
mov	eax, [ebp+var_48]
lea	edx, [ebp+arg_0]
push	edx
mov	byte ptr [ebp+var_4], 10h
mov	eax, [eax+esi*4]
mov	eax, [eax]
mov	[ebp+arg_C], eax
mov	eax, [edi]
push	[ebp+arg_C]
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+18h]
cmp	[ebp+arg_0], ebx
jz	short loc_412F2B
push	[ebp+arg_0]
mov	ecx, edi
call	sub_43D0DB
mov	eax, [ebp+arg_0]
mov	byte ptr [ebp+var_4], 0Eh
cmp	eax, ebx
jz	short loc_412F28
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_412F28:
dec	esi
jns	short loc_412EE7

loc_412F2B:		; Memory
push	[ebp+Memory]
call	sub_4284D8
pop	ecx

loc_412F34:		; Memory
push	[ebp+var_38]
call	sub_4284D8
pop	ecx

loc_412F3D:
mov	eax, [ebp+var_10]
mov	byte ptr [ebp+var_4], 9
cmp	eax, ebx
jz	short loc_412F4E
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_412F4E:
mov	[ebp+var_54], offset off_44B510
lea	ecx, [ebp+var_54]
mov	byte ptr [ebp+var_4], 11h
call	sub_428327
lea	ecx, [ebp+var_54]
mov	byte ptr [ebp+var_4], 8
call	sub_4282FE
push	[ebp+var_78]	; Memory
call	sub_4284D8
push	[ebp+lpFileName] ; Memory
call	sub_4284D8
pop	ecx
pop	ecx

loc_412F7F:
mov	ecx, [ebp+var_3C]
mov	al, [ebp+var_40]
mov	[ecx+184h], al
mov	eax, [ebp+var_3C]
mov	cl, [ebp+var_3F]
mov	[eax+185h], cl
mov	eax, ebx

loc_412F99:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	10h
sub_412AC8 endp



; Attributes: bp-based frame

sub_412FAA proc	near

var_38=	dword ptr -38h
var_34=	dword ptr -34h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
Memory=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	byte ptr -18h
var_17=	byte ptr -17h
var_14=	dword ptr -14h
var_E= byte ptr	-0Eh
var_D= byte ptr	-0Dh
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_444790
call	__EH_prolog
sub	esp, 2Ch
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
push	edi
mov	[ebp+var_14], esi
mov	al, [esi+184h]
mov	[ebp+var_18], al
mov	al, [esi+185h]
mov	[esi+184h], bl
mov	[ebp+var_17], al
mov	[esi+185h], bl
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+var_4], ebx
mov	[ebp+Memory], ebx
mov	[ebp+var_20], ebx
mov	[ebp+var_1C], ebx
call	sub_403396
lea	eax, [ebp+var_D]
mov	ecx, esi
push	eax
lea	eax, [ebp+var_E]
push	eax
lea	eax, [ebp+Memory]
push	eax
mov	byte ptr [ebp+var_4], 1
push	[ebp+arg_0]
call	sub_412AC8
push	[ebp+Memory]	; Memory
mov	edi, eax
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
cmp	edi, ebx
pop	ecx
jz	short loc_413025
mov	ebx, edi
jmp	short loc_41308E

loc_413025:
mov	edi, offset off_44B510
mov	[ebp+var_34], ebx
mov	[ebp+var_30], ebx
mov	[ebp+var_2C], ebx
mov	[ebp+var_28], 4
mov	[ebp+var_38], edi
push	3
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 2
mov	[ebp+Memory], ebx
mov	[ebp+var_20], ebx
mov	[ebp+var_1C], ebx
call	sub_403396
lea	eax, [ebp+var_38]
mov	ecx, esi
push	eax
push	1
lea	eax, [ebp+Memory]
push	0FFFFFFFFh
push	eax
mov	byte ptr [ebp+var_4], 3
call	sub_416958
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	[ebp+var_38], edi
lea	ecx, [ebp+var_38]
mov	byte ptr [ebp+var_4], 4
call	sub_428327
lea	ecx, [ebp+var_38]
mov	byte ptr [ebp+var_4], bl
call	sub_4282FE

loc_41308E:
mov	al, [ebp+var_18]
mov	ecx, [ebp+var_C]
mov	[esi+184h], al
mov	al, [ebp+var_17]
mov	[esi+185h], al
pop	edi
mov	eax, ebx
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_412FAA endp




sub_4130B3 proc	near

arg_0= dword ptr  4

lea	eax, [ecx+0D8h]
mov	ecx, [ecx+3Ch]
push	eax
push	[esp+4+arg_0]
call	sub_4130C9
retn	4
sub_4130B3 endp



; Attributes: bp-based frame

sub_4130C9 proc	near

Memory=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_4447AC
call	__EH_prolog
sub	esp, 10h
push	ebx
push	esi
mov	esi, ecx
push	edi
push	esi		; lpCriticalSection
mov	[ebp+var_10], esi
call	ds:EnterCriticalSection
mov	eax, [esi+20h]
mov	edi, [ebp+arg_0]
xor	ebx, ebx
cmp	eax, edi
mov	[ebp+var_4], ebx
jg	short loc_413128

loc_4130F4:
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+Memory], ebx
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
call	sub_403396
lea	eax, [ebp+Memory]
lea	ecx, [esi+18h]
push	eax
mov	byte ptr [ebp+var_4], 1
call	sub_4032B4
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
cmp	[esi+20h], edi
pop	ecx
jle	short loc_4130F4

loc_413128:
mov	eax, [esi+24h]
push	[ebp+arg_4]
mov	ecx, [eax+edi*4]
call	sub_40312C
push	esi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	8
sub_4130C9 endp



; Attributes: bp-based frame

sub_41314E proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_4447C0
call	__EH_prolog
sub	esp, 0Ch
push	esi
mov	esi, ecx
push	[ebp+arg_0]
lea	eax, [ebp+Memory]
mov	ecx, [esi+3Ch]
push	eax
call	sub_40C368
and	[ebp+var_4], 0
push	eax
mov	ecx, esi
call	sub_412FAA
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
pop	esi
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn	4
sub_41314E endp



; Attributes: bp-based frame

sub_413191 proc	near

pvarg= VARIANTARG ptr -24h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4447EB
call	__EH_prolog
sub	esp, 18h
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
push	edi
mov	[ebp+var_14], esi
mov	[ebp+var_10], ebx
mov	word ptr [ebp+pvarg.anonymous_0], bx
mov	word ptr [ebp+pvarg.anonymous_0+2], bx
mov	eax, [edx]
push	1
pop	edi
lea	ecx, [ebp+pvarg]
push	ecx
push	3
push	edx
mov	[ebp+var_4], edi
call	dword ptr [eax+2Ch]
test	eax, eax
jnz	short loc_4131DF
cmp	word ptr [ebp+pvarg.anonymous_0], 8
jnz	short loc_4131DF
push	dword ptr [ebp+pvarg.anonymous_0+8]
mov	ecx, esi
call	sub_403091
mov	[ebp+var_10], edi
jmp	short loc_4131F3

loc_4131DF:
push	3
mov	ecx, esi
mov	[esi], ebx
mov	[esi+4], ebx
mov	[esi+8], ebx
call	sub_403396
mov	[ebp+var_10], edi

loc_4131F3:		; pvarg
lea	ecx, [ebp+pvarg]
mov	byte ptr [ebp+var_4], bl
call	sub_42CDE1
mov	ecx, [ebp+var_C]
mov	eax, esi
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_413191 endp



; Attributes: bp-based frame

sub_41320F proc	near

var_28=	dword ptr -28h
Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444808
call	__EH_prolog
sub	esp, 1Ch
push	esi
mov	esi, ecx
mov	ecx, [esi+0D8h]
push	edi
lea	edi, [esi+0D8h]
xor	eax, eax
mov	[ebp+var_10], eax
mov	[edi+4], eax
mov	[ecx], ax
cmp	[esi+0ECh], eax
jle	short loc_413290
push	ebx

loc_413240:
mov	eax, [esi+0F0h]
mov	ecx, [ebp+var_10]
mov	ebx, [eax+ecx*4]
lea	ecx, [ebp+Memory]
mov	edx, [ebx+6Ch]
call	sub_413191
and	[ebp+var_4], 0
push	eax
mov	ecx, edi
call	sub_4031F2
push	[ebp+Memory]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
pop	ecx
push	ebx
mov	ecx, edi
call	sub_4031F2
push	5Ch
mov	ecx, edi
call	sub_40316A
inc	[ebp+var_10]
mov	eax, [ebp+var_10]
cmp	eax, [esi+0ECh]
jl	short loc_413240
pop	ebx

loc_413290:
mov	esi, [esi+0FCh]
test	esi, esi
jz	short loc_4132BC
mov	edx, esi
lea	ecx, [ebp+var_28]
call	sub_413191
push	eax
mov	ecx, edi
mov	[ebp+var_4], 1
call	sub_4031F2
push	[ebp+var_28]	; Memory
call	sub_4284D8
pop	ecx

loc_4132BC:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41320F endp



; Attributes: bp-based frame

sub_4132CA proc	near

var_74=	byte ptr -74h
var_54=	dword ptr -54h
Memory=	dword ptr -4Ch
lParam=	dword ptr -3Ch
var_38=	dword ptr -38h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
lpFileName= dword ptr -18h
var_14=	dword ptr -14h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444824
call	__EH_prolog
sub	esp, 68h
push	esi
push	edi
mov	esi, ecx
call	sub_41320F
mov	ecx, [esi+3Ch]
lea	edi, [esi+0D8h]
push	edi
add	ecx, 2Ch
call	sub_4133A7
mov	edx, [edi]
mov	ecx, [esi+50h]
call	sub_42E6BD
and	[ebp+lParam], 0
push	edi
lea	ecx, [ebp+lpFileName]
call	sub_4030F2
mov	eax, [ebp+var_14]
and	[ebp+var_4], 0
cmp	eax, 3
jle	short loc_41332C
mov	ecx, [ebp+lpFileName]
cmp	word ptr [ecx+eax*2-2],	5Ch
jnz	short loc_41332C
dec	eax
push	1
push	eax
lea	ecx, [ebp+lpFileName]
call	sub_40708E

loc_41332C:
lea	ecx, [ebp+var_74]
call	sub_404EA2
push	10h
lea	ecx, [ebp+var_74]
pop	edi
mov	byte ptr [ebp+var_4], 1
push	[ebp+lpFileName] ; lpFileName
call	sub_42B49E
test	al, al
jz	short loc_41334D
mov	edi, [ebp+var_54]

loc_41334D:
mov	ecx, [ebp+lpFileName]
mov	edx, edi
call	sub_41342C
test	eax, eax
mov	[ebp+var_2C], eax
jl	short loc_413365
or	[ebp+lParam], 6
mov	[ebp+var_28], eax

loc_413365:
or	[ebp+var_38], 0FFFFFFFFh
lea	eax, [ebp+lParam]
push	eax		; lParam
push	0		; wParam
push	405h		; Msg
push	dword ptr [esi+50h] ; hWnd
call	ds:SendMessageA
mov	ecx, [esi+44h]
push	0
mov	eax, [ecx]
call	dword ptr [eax+20h]
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+lpFileName] ; Memory
call	sub_4284D8
pop	ecx
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_4132CA endp



; Attributes: bp-based frame

sub_4133A7 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_444838
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	esi		; lpCriticalSection
mov	[ebp+var_10], esi
call	ds:EnterCriticalSection
mov	edx, [ebp+arg_0]
and	[ebp+var_4], 0
lea	ecx, [esi+18h]
call	sub_4133EB
mov	ecx, esi
call	sub_401749
push	esi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_4133A7 endp




sub_4133EB proc	near
push	ebx
push	esi
push	edi
mov	esi, ecx
xor	edi, edi
mov	ebx, edx
cmp	[esi+8], edi
jle	short loc_41341E

loc_4133F9:
mov	eax, [esi+0Ch]
mov	ecx, [ebx]
mov	eax, [eax+edi*4]
mov	edx, [eax]
call	sub_4282B1
test	eax, eax
jnz	short loc_413418
mov	eax, [esi]
push	1
push	edi
mov	ecx, esi
call	dword ptr [eax+4]
jmp	short loc_413419

loc_413418:
inc	edi

loc_413419:
cmp	edi, [esi+8]
jl	short loc_4133F9

loc_41341E:
push	ebx
push	0
mov	ecx, esi
call	sub_4140D0
pop	edi
pop	esi
pop	ebx
retn
sub_4133EB endp



; Attributes: bp-based frame

sub_41342C proc	near

var_4= dword ptr -4

push	ebp
mov	ebp, esp
push	ecx
or	[ebp+var_4], 0FFFFFFFFh
lea	eax, [ebp+var_4]
push	eax
call	sub_41FA10
test	eax, eax
jz	short loc_413446
mov	eax, [ebp+var_4]
leave
retn

loc_413446:
or	eax, 0FFFFFFFFh
leave
retn
sub_41342C endp




sub_41344B proc	near

arg_0= dword ptr  4

push	esi
mov	esi, ecx
push	[esp+4+arg_0]
call	sub_412FAA
test	eax, eax
jnz	short loc_413470
push	eax		; lParam
push	eax		; wParam
push	403h		; Msg
push	dword ptr [esi+4] ; hWnd
call	ds:PostMessageA
push	1
pop	eax
jmp	short loc_413472

loc_413470:
xor	eax, eax

loc_413472:
pop	esi
retn	4
sub_41344B endp



; Attributes: bp-based frame

sub_413476 proc	near

Memory=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_44484C
call	__EH_prolog
sub	esp, 0Ch
mov	eax, [ebp+arg_0]
push	esi
push	edi
mov	esi, ecx
mov	eax, [eax+21Ch]
cmp	eax, 3
jnz	short loc_4134BC
mov	edx, [esi+0D8h]
mov	ecx, [esi+50h]
call	sub_42E6BD
xor	edi, edi
push	edi		; lParam
push	edi		; wParam
push	403h		; Msg
push	dword ptr [esi+4] ; hWnd
call	ds:PostMessageA
mov	eax, [ebp+arg_4]
mov	[eax], edi
jmp	short loc_4134FE

loc_4134BC:
cmp	eax, 2
jnz	short loc_413502
xor	edi, edi
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+Memory], edi
mov	[ebp+var_14], edi
mov	[ebp+var_10], edi
call	sub_403396
lea	eax, [ebp+Memory]
lea	ecx, [esi+50h]
push	eax
mov	[ebp+var_4], edi
call	sub_42E799
lea	eax, [ebp+Memory]
mov	ecx, esi
push	eax
call	sub_41344B
mov	ecx, [ebp+arg_4]
push	[ebp+Memory]	; Memory
mov	[ecx], eax
call	sub_4284D8
pop	ecx

loc_4134FE:
mov	al, 1
jmp	short loc_413504

loc_413502:
xor	al, al

loc_413504:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	8
sub_413476 endp



; Attributes: bp-based frame

sub_413514 proc	near

Memory=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_444860
call	__EH_prolog
sub	esp, 0Ch
mov	eax, [ebp+arg_0]
push	esi
push	edi
mov	esi, ecx
mov	eax, [eax+118h]
cmp	eax, 3
jnz	short loc_41355A
mov	edx, [esi+0D8h]
mov	ecx, [esi+50h]
call	sub_42E6BD
xor	edi, edi
push	edi		; lParam
push	edi		; wParam
push	403h		; Msg
push	dword ptr [esi+4] ; hWnd
call	ds:PostMessageA
mov	eax, [ebp+arg_4]
mov	[eax], edi
jmp	short loc_41359C

loc_41355A:
cmp	eax, 2
jnz	short loc_4135A0
xor	edi, edi
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+Memory], edi
mov	[ebp+var_14], edi
mov	[ebp+var_10], edi
call	sub_403396
lea	eax, [ebp+Memory]
lea	ecx, [esi+50h]
push	eax
mov	[ebp+var_4], edi
call	sub_42E799
lea	eax, [ebp+Memory]
mov	ecx, esi
push	eax
call	sub_41344B
mov	ecx, [ebp+arg_4]
push	[ebp+Memory]	; Memory
mov	[ecx], eax
call	sub_4284D8
pop	ecx

loc_41359C:
mov	al, 1
jmp	short loc_4135A2

loc_4135A0:
xor	al, al

loc_4135A2:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	8
sub_413514 endp



; Attributes: bp-based frame

sub_4135B2 proc	near

lParam=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_8= dword ptr -8
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= byte ptr	 14h

push	ebp
mov	ebp, esp
sub	esp, 24h
mov	eax, [ebp+arg_4]
push	esi
test	eax, eax
push	edi
mov	esi, ecx
mov	[ebp+lParam], 11h
mov	[ebp+var_14], eax
mov	[ebp+var_10], eax
jl	short loc_4135D7
mov	[ebp+lParam], 17h

loc_4135D7:
mov	eax, [ebp+arg_8]
mov	edi, [ebp+arg_0]
mov	[ebp+var_8], eax
or	[ebp+var_20], 0FFFFFFFFh
mov	eax, [edi]
mov	[ebp+var_1C], eax
lea	eax, [ebp+lParam]
push	eax		; lParam
push	0		; wParam
push	40Bh		; Msg
push	dword ptr [esi+50h] ; hWnd
call	ds:SendMessageA
cmp	[ebp+arg_C], 0
jz	short loc_41360C
push	edi
lea	ecx, [esi+54h]
call	sub_4032B4

loc_41360C:
pop	edi
pop	esi
leave
retn	10h
sub_4135B2 endp



; Attributes: bp-based frame

sub_413612 proc	near

var_CC=	byte ptr -0CCh
var_AC=	dword ptr -0ACh
var_A4=	dword ptr -0A4h
var_94=	dword ptr -94h
var_88=	dword ptr -88h
var_7C=	dword ptr -7Ch
var_70=	dword ptr -70h
var_64=	dword ptr -64h
var_5C=	dword ptr -5Ch
var_58=	dword ptr -58h
var_50=	dword ptr -50h
var_48=	dword ptr -48h
var_44=	dword ptr -44h
var_3C=	dword ptr -3Ch
lpFileName= dword ptr -38h
var_34=	dword ptr -34h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
Memory=	dword ptr -1Ch
var_18=	dword ptr -18h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_8= dword ptr  10h

mov	eax, offset loc_4448F4
call	__EH_prolog
sub	esp, 0C0h
mov	eax, [ebp+arg_8]
push	ebx
push	esi
push	edi
xor	edi, edi
mov	esi, ecx
mov	[eax], edi
mov	eax, [ebp+arg_0]
sub	eax, 7
mov	[ebp+var_10], edi
jz	loc_4136BE
dec	eax
dec	eax
jnz	loc_4139B4
mov	ebx, ds:SendMessageA
push	edi		; lParam
push	edi		; wParam
push	147h		; Msg
push	dword ptr [esi+50h] ; hWnd
call	ebx ; SendMessageA
cmp	eax, edi
jl	loc_4139B4
mov	ecx, [esi+60h]
push	dword ptr [ecx+eax*4]
lea	ecx, [ebp+Memory]
call	sub_4030F2
push	edi		; lParam
push	0FFFFFFFFh	; wParam
push	14Eh		; Msg
mov	[ebp+var_4], 0Dh
push	dword ptr [esi+50h] ; hWnd
call	ebx ; SendMessageA
lea	eax, [ebp+Memory]
mov	ecx, esi
push	eax
call	sub_412FAA
test	eax, eax
jnz	short loc_4136B0
push	edi		; lParam
push	edi		; wParam
push	403h		; Msg
push	dword ptr [esi+4] ; hWnd
call	ds:PostMessageA
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	al, 1
jmp	loc_4139B6

loc_4136B0:		; Memory
push	[ebp+Memory]
call	sub_4284D8
pop	ecx
jmp	loc_4139B4

loc_4136BE:
lea	ecx, [esi+54h]
call	sub_428327
push	edi		; lParam
push	edi		; wParam
push	14Bh		; Msg
push	dword ptr [esi+50h] ; hWnd
call	ds:SendMessageA
lea	ecx, [ebp+var_50]
call	sub_40337B
mov	ebx, offset off_44B510
mov	[ebp+var_50], ebx
lea	edx, [ebp+var_50]
lea	ecx, [esi+0D8h]
mov	[ebp+var_4], edi
call	sub_428DBB
push	3
lea	ecx, [ebp+lpFileName]
mov	[ebp+lpFileName], edi
mov	[ebp+var_34], edi
mov	[ebp+var_30], edi
call	sub_403396
cmp	[ebp+var_48], edi
mov	byte ptr [ebp+var_4], 1
jz	short loc_41371B
lea	ecx, [ebp+var_50]
call	sub_42832F

loc_41371B:
cmp	[ebp+var_48], edi
mov	[ebp+arg_8], edi
jle	loc_413810

loc_413727:
mov	eax, [ebp+var_44]
mov	ecx, [ebp+arg_8]
push	dword ptr [eax+ecx*4]
lea	ecx, [ebp+Memory]
call	sub_4030F2
lea	eax, [ebp+Memory]
lea	ecx, [ebp+lpFileName]
push	eax
mov	byte ptr [ebp+var_4], 2
call	sub_4031F2
push	5Ch
lea	ecx, [ebp+lpFileName]
call	sub_40316A
lea	ecx, [ebp+var_A4]
call	sub_403079
push	[ebp+lpFileName] ; lpFileName
lea	ecx, [ebp+var_CC]
mov	byte ptr [ebp+var_4], 3
mov	[ebp+var_3C], 10h
call	sub_42B49E
test	al, al
jz	short loc_413783
mov	eax, [ebp+var_AC]
mov	[ebp+var_3C], eax

loc_413783:
cmp	[ebp+var_18], edi
jnz	short loc_4137A2
push	offset asc_45B910 ; "\\"
lea	ecx, [ebp+var_70]
call	sub_403091
or	[ebp+var_10], 1
mov	[ebp+var_20], eax
mov	byte ptr [ebp+var_4], 4
jmp	short loc_4137A8

loc_4137A2:
lea	eax, [ebp+Memory]
mov	[ebp+var_20], eax

loc_4137A8:
mov	edx, [ebp+var_3C]
mov	ecx, [ebp+lpFileName]
push	edi
push	[ebp+arg_8]
call	sub_41342C
push	eax
mov	ecx, esi
push	[ebp+var_20]
call	sub_4135B2
test	byte ptr [ebp+var_10], 1
mov	[ebp+var_4], 3
jz	short loc_4137DC
push	[ebp+var_70]	; Memory
and	[ebp+var_10], 0FFFFFFFEh
call	sub_4284D8
pop	ecx

loc_4137DC:
lea	eax, [ebp+lpFileName]
lea	ecx, [esi+54h]
push	eax
call	sub_4032B4
push	[ebp+var_A4]	; Memory
call	sub_4284D8
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 1
call	sub_4284D8
inc	[ebp+arg_8]
pop	ecx
mov	eax, [ebp+arg_8]
pop	ecx
cmp	eax, [ebp+var_48]
jl	loc_413727

loc_413810:
push	3
lea	ecx, [ebp+var_2C]
mov	[ebp+var_2C], edi
mov	[ebp+var_28], edi
mov	[ebp+var_24], edi
call	sub_403396
lea	edx, [ebp+arg_0]
lea	ecx, [ebp+var_7C]
mov	byte ptr [ebp+var_4], 5
call	sub_41ECAF
push	eax
lea	ecx, [ebp+var_2C]
mov	byte ptr [ebp+var_4], 6
call	sub_40312C
push	[ebp+var_7C]	; Memory
mov	byte ptr [ebp+var_4], 5
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_2C]
push	1
push	edi
push	[ebp+arg_0]
mov	ecx, esi
push	eax
call	sub_4135B2
lea	edx, [ebp+arg_0]
lea	ecx, [ebp+var_88]
call	sub_41EC55
push	eax
lea	ecx, [ebp+var_2C]
mov	byte ptr [ebp+var_4], 7
call	sub_40312C
push	[ebp+var_88]	; Memory
mov	byte ptr [ebp+var_4], 5
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_2C]
push	1
push	edi
push	[ebp+arg_0]
mov	ecx, esi
push	eax
call	sub_4135B2
lea	ecx, [ebp+var_64]
call	sub_40337B
mov	[ebp+var_64], ebx
lea	ecx, [ebp+var_64]
mov	byte ptr [ebp+var_4], 8
call	sub_42B98A
cmp	[ebp+var_5C], edi
mov	[ebp+arg_8], edi
jle	short loc_41392D

loc_4138B8:
mov	eax, [ebp+var_58]
mov	ecx, [ebp+arg_8]
push	dword ptr [eax+ecx*4]
lea	ecx, [ebp+Memory]
call	sub_4030F2
lea	eax, [ebp+Memory]
lea	ecx, [esi+54h]
push	eax
mov	byte ptr [ebp+var_4], 9
call	sub_4032B4
mov	ecx, [ebp+Memory]
xor	edx, edx
call	sub_41342C
mov	[ebp+var_20], eax
mov	eax, [ebp+var_18]
cmp	eax, edi
jle	short loc_413904
mov	ecx, [ebp+Memory]
cmp	word ptr [ecx+eax*2-2],	5Ch
jnz	short loc_413904
dec	eax
push	1
push	eax
lea	ecx, [ebp+Memory]
call	sub_40708E

loc_413904:
push	edi
push	1
push	[ebp+var_20]
lea	eax, [ebp+Memory]
mov	ecx, esi
push	eax
call	sub_4135B2
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 8
call	sub_4284D8
inc	[ebp+arg_8]
pop	ecx
mov	eax, [ebp+arg_8]
cmp	eax, [ebp+var_5C]
jl	short loc_4138B8

loc_41392D:
lea	edx, [ebp+arg_0]
lea	ecx, [ebp+var_94]
call	sub_41EC82
push	eax
lea	ecx, [ebp+var_2C]
mov	byte ptr [ebp+var_4], 0Ah
call	sub_40312C
push	[ebp+var_94]	; Memory
mov	byte ptr [ebp+var_4], 8
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_2C]
push	1
push	edi
push	[ebp+arg_0]
mov	ecx, esi
push	eax
call	sub_4135B2
mov	[ebp+var_64], ebx
lea	ecx, [ebp+var_64]
mov	byte ptr [ebp+var_4], 0Bh
call	sub_428327
lea	ecx, [ebp+var_64]
mov	byte ptr [ebp+var_4], 5
call	sub_4282FE
push	[ebp+var_2C]	; Memory
call	sub_4284D8
push	[ebp+lpFileName] ; Memory
call	sub_4284D8
pop	ecx
mov	[ebp+var_50], ebx
pop	ecx
lea	ecx, [ebp+var_50]
mov	[ebp+var_4], 0Ch
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_50]
call	sub_4282FE

loc_4139B4:
xor	al, al

loc_4139B6:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	0Ch
sub_413612 endp




sub_4139C7 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

mov	edx, [esp+arg_0]
mov	eax, [edx+8]
cmp	eax, 0FFFFFCDAh
jz	short loc_413A02
cmp	eax, 0FFFFFCDBh
jz	short loc_4139F6
cmp	eax, 0FFFFFCDCh
jnz	short loc_4139F2
and	byte ptr [ecx+84h], 0
mov	ecx, [ecx+44h]
mov	eax, [ecx]
call	dword ptr [eax+14h]

loc_4139F2:
xor	al, al
jmp	short locret_413A0C

loc_4139F6:
push	[esp+arg_4]
push	edx
call	sub_413514
jmp	short locret_413A0C

loc_413A02:
push	[esp+arg_4]
push	edx
call	sub_413476

locret_413A0C:
retn	8
sub_4139C7 endp



; Attributes: bp-based frame

sub_413A0F proc	near

var_58=	byte ptr -58h
var_4C=	byte ptr -4Ch
var_40=	byte ptr -40h
var_3F=	byte ptr -3Fh
var_3C=	byte ptr -3Ch
var_34=	dword ptr -34h
var_30=	dword ptr -30h
var_28=	dword ptr -28h
Memory=	dword ptr -24h
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444918
call	__EH_prolog
sub	esp, 4Ch
push	ebx
push	esi
mov	esi, ecx
lea	ecx, [ebp+var_58]
call	sub_413B19
xor	ebx, ebx
push	3020260h
mov	edx, 8D4h
lea	ecx, [ebp+Memory]
mov	[ebp+var_4], ebx
mov	[ebp+var_40], 1
call	sub_40B168
push	eax
lea	ecx, [ebp+var_4C]
mov	byte ptr [ebp+var_4], 1
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_3C]
mov	ecx, [esi+3Ch]
push	eax
add	ecx, 2Ch
call	sub_413BF0
mov	ecx, esi
call	sub_40DA67
push	eax		; hWndParent
push	1FCh		; lpTemplateName
lea	ecx, [ebp+var_58]
call	sub_42FCF7
cmp	eax, 2
jz	short loc_413AFF
push	3
lea	ecx, [ebp+var_18]
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
mov	[ebp+var_10], ebx
call	sub_403396
cmp	[ebp+var_3F], bl
mov	byte ptr [ebp+var_4], 2
jz	short loc_413AD1
mov	ecx, [esi+3Ch]
push	edi
add	ecx, 2Ch
call	sub_413C36
mov	eax, [ebp+var_34]
lea	edi, [eax-1]
cmp	edi, ebx
jl	short loc_413ACB

loc_413AB7:
mov	eax, [ebp+var_30]
mov	ecx, [esi+3Ch]
add	ecx, 2Ch
push	dword ptr [eax+edi*4]
call	sub_4133A7
dec	edi
jns	short loc_413AB7

loc_413ACB:
mov	eax, [ebp+var_28]
pop	edi
jmp	short loc_413AD4

loc_413AD1:
mov	eax, [ebp+var_28]

loc_413AD4:
cmp	eax, ebx
jl	short loc_413AF6
mov	ecx, [ebp+var_30]
push	dword ptr [ecx+eax*4]
lea	ecx, [ebp+var_18]
call	sub_40312C
cmp	[ebp+var_28], ebx
jl	short loc_413AF6
lea	eax, [ebp+var_18]
mov	ecx, esi
push	eax
call	sub_412FAA

loc_413AF6:		; Memory
push	[ebp+var_18]
call	sub_4284D8
pop	ecx

loc_413AFF:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_58]
call	sub_413B9A
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_413A0F endp



; Attributes: bp-based frame

sub_413B19 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_44492C
call	__EH_prolog
push	ecx
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
mov	[ebp+var_10], esi
mov	[esi+4], ebx
mov	dword ptr [esi], offset	off_44B558
lea	ecx, [esi+0Ch]
mov	[esi+8], ebx
push	3
mov	[ebp+var_4], ebx
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
mov	ecx, [ebp+var_C]
mov	[esi+18h], bl
mov	[esi+20h], ebx
mov	[esi+24h], ebx
mov	[esi+28h], ebx
mov	dword ptr [esi+2Ch], 4
mov	dword ptr [esi+1Ch], offset off_44B510
mov	dword ptr [esi], offset	off_44C368
mov	eax, esi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_413B19 endp




; int __thiscall sub_413B7E(void *Memory, char)
sub_413B7E proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_413B9A
test	[esp+4+arg_0], 1
jz	short loc_413B94
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_413B94:
mov	eax, esi
pop	esi
retn	4
sub_413B7E endp



; Attributes: bp-based frame

sub_413B9A proc	near

var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444953
call	__EH_prolog
push	ecx
push	ecx
push	esi
mov	esi, ecx
push	edi
mov	[ebp+var_10], esi
and	[ebp+var_4], 0
lea	edi, [esi+1Ch]
mov	[ebp+var_14], edi
mov	dword ptr [edi], offset	off_44B510
mov	ecx, edi
mov	byte ptr [ebp+var_4], 2
call	sub_428327
mov	ecx, edi
mov	byte ptr [ebp+var_4], 1
call	sub_4282FE
push	dword ptr [esi+0Ch] ; Memory
call	sub_4284D8
pop	ecx
mov	dword ptr [esi], offset	off_44B588
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_413B9A endp



; Attributes: bp-based frame

sub_413BF0 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_444968
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	esi		; lpCriticalSection
mov	[ebp+var_10], esi
call	ds:EnterCriticalSection
mov	ecx, [ebp+arg_0]
and	[ebp+var_4], 0
call	sub_428327
mov	ecx, [ebp+arg_0]
lea	eax, [esi+18h]
push	eax
call	sub_403531
push	esi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_413BF0 endp



; Attributes: bp-based frame

sub_413C36 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_44497C
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	esi		; lpCriticalSection
mov	[ebp+var_10], esi
call	ds:EnterCriticalSection
and	[ebp+var_4], 0
lea	ecx, [esi+18h]
call	sub_428327
push	esi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_413C36 endp



; Attributes: bp-based frame

sub_413C6E proc	near

var_48=	dword ptr -48h
Memory=	dword ptr -34h
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	byte ptr -1Ch
var_1B=	byte ptr -1Bh
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4449C0
call	__EH_prolog
sub	esp, 3Ch
push	ebx
push	esi
push	edi
mov	esi, ecx
call	sub_41320F
xor	ebx, ebx
push	3
lea	ecx, [ebp+var_28]
mov	[ebp+var_28], ebx
mov	[ebp+var_24], ebx
mov	[ebp+var_20], ebx
call	sub_403396
cmp	[esi+0DCh], ebx
mov	[ebp+var_4], ebx
jz	loc_413D3C
mov	ecx, [esi+0DCh]
mov	edx, [esi+0D8h]
lea	eax, [esi+0D8h]
mov	cx, [edx+ecx*2-2]
cmp	cx, 5Ch
jnz	short loc_413D3C
push	eax
lea	ecx, [ebp+var_28]
call	sub_40312C
mov	eax, [ebp+var_24]
push	1
dec	eax
lea	ecx, [ebp+var_28]
push	eax
call	sub_40708E
mov	ecx, [ebp+var_28]
mov	edx, offset a__0 ; "\\\\."
call	sub_42828A
cmp	eax, ebx
jz	short loc_413D3C
mov	eax, [ebp+var_24]
cmp	eax, ebx
jz	short loc_413D3C
mov	ecx, [ebp+var_28]
lea	eax, [ecx+eax*2-2]

loc_413CFD:
cmp	word ptr [eax],	5Ch
jz	short loc_413D0B
cmp	eax, ecx
jz	short loc_413D11
dec	eax
dec	eax
jmp	short loc_413CFD

loc_413D0B:
sub	eax, ecx
sar	eax, 1
jmp	short loc_413D14

loc_413D11:
or	eax, 0FFFFFFFFh

loc_413D14:
cmp	eax, ebx
jl	short loc_413D3C
inc	eax
lea	ecx, [ebp+var_28]
push	eax
lea	eax, [ebp+Memory]
push	eax
call	sub_405246
push	eax
lea	ecx, [ebp+var_28]
mov	byte ptr [ebp+var_4], 1
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_413D3C:
lea	ecx, [ebp+var_1C]
mov	[ebp+var_18], esi
call	sub_4028C8
mov	[ebp+var_10], ebx
mov	eax, [esi+0FCh]
lea	edi, [esi+0FCh]
lea	edx, [ebp+var_10]
mov	byte ptr [ebp+var_4], 3
mov	ecx, [eax]
push	edx
push	eax
call	dword ptr [ecx+20h]
cmp	[ebp+var_10], ebx
jz	short loc_413D78
push	[ebp+var_10]
mov	ecx, edi
call	sub_43D0DB
jmp	loc_413E4B

loc_413D78:
cmp	[esi+0ECh], ebx
jnz	short loc_413DBB
mov	ecx, esi
call	sub_41298B
cmp	[ebp+var_24], ebx
jnz	loc_413E4B
lea	eax, [ebp+Memory]
push	ebx
push	eax
mov	ecx, esi
call	sub_41733B
push	eax
lea	ecx, [ebp+var_28]
mov	byte ptr [ebp+var_4], 4
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 3
call	sub_4284D8
pop	ecx
jmp	loc_413E4B

loc_413DBB:
mov	eax, [edi]
cmp	eax, ebx
jz	short loc_413DC9
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
mov	[edi], ebx

loc_413DC9:
lea	ecx, [esi+0F8h]
call	sub_429929
mov	eax, [esi+0ECh]
mov	ecx, [esi+0F0h]
lea	ebx, [esi+0E4h]
mov	edi, [ecx+eax*4-4]
lea	ecx, [esi+0FCh]
push	dword ptr [edi+6Ch]
call	sub_43D0DB
mov	eax, [edi+68h]
and	dword ptr [edi+68h], 0
lea	ecx, [esi+0F8h]
mov	[ebp+var_14], eax
call	sub_429929
mov	eax, [ebp+var_14]
push	edi
lea	ecx, [ebp+var_28]
mov	[esi+0F8h], eax
call	sub_40312C
cmp	dword ptr [esi+0ECh], 1
jle	short loc_413E2F
mov	ecx, esi
call	sub_4147D1

loc_413E2F:
mov	ecx, ebx
call	sub_42832F
cmp	dword ptr [esi+0ECh], 0
jnz	short loc_413E4B
mov	al, [esi+0D5h]
mov	[esi+0D4h], al

loc_413E4B:
push	4
lea	ecx, [ebp+var_48]
call	sub_402794
mov	edi, offset off_44B510
mov	[ebp+var_48], edi
mov	ecx, esi
mov	byte ptr [ebp+var_4], 5
call	sub_41320F
lea	eax, [ebp+var_48]
mov	ecx, esi
push	eax
push	1
lea	eax, [ebp+var_28]
push	0FFFFFFFFh
push	eax
call	sub_416958
lea	ebx, [esi+74h]
mov	ecx, ebx
call	sub_402DF8
push	0		; lParam
push	eax		; wParam
push	1013h		; Msg
push	dword ptr [ebx]	; hWnd
call	ds:SendMessageA
mov	ecx, esi
call	sub_40E930
mov	[ebp+var_48], edi
lea	ecx, [ebp+var_48]
mov	byte ptr [ebp+var_4], 6
call	sub_428327
lea	ecx, [ebp+var_48]
mov	byte ptr [ebp+var_4], 3
call	sub_4282FE
mov	eax, [ebp+var_10]
pop	edi
pop	esi
mov	byte ptr [ebp+var_4], 2
test	eax, eax
pop	ebx
jz	short loc_413ECB
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_413ECB:
mov	ecx, [ebp+var_18]
mov	al, [ebp+var_1C]
mov	[ecx+184h], al
mov	eax, [ebp+var_18]
mov	cl, [ebp+var_1B]
mov	[eax+185h], cl
push	[ebp+var_28]	; Memory
call	sub_4284D8
pop	ecx
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn
sub_413C6E endp	; sp-analysis failed




sub_413EF8 proc	near
push	esi
mov	esi, ecx
push	edi
cmp	dword ptr [esi+0ECh], 0
jle	loc_413F89
push	ebx
push	ebp
lea	ebx, [esi+0F8h]
lea	edi, [esi+0E4h]

loc_413F17:
mov	eax, [esi+0FCh]
lea	ebp, [esi+0FCh]
test	eax, eax
jz	short loc_413F31
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
and	dword ptr [ebp+0], 0

loc_413F31:
mov	ecx, ebx
call	sub_429929
mov	eax, [edi+8]
mov	ecx, [edi+0Ch]
mov	eax, [ecx+eax*4-4]
mov	ecx, ebp
push	dword ptr [eax+6Ch]
call	sub_43D0DB
mov	eax, [edi+8]
mov	ecx, [edi+0Ch]
mov	eax, [ecx+eax*4-4]
mov	ecx, ebx
add	eax, 68h
mov	ebp, [eax]
and	dword ptr [eax], 0
call	sub_429929
mov	[ebx], ebp
cmp	dword ptr [esi+0ECh], 1
jle	short loc_413F77
mov	ecx, esi
call	sub_4147D1

loc_413F77:
mov	ecx, edi
call	sub_42832F
cmp	dword ptr [esi+0ECh], 0
jg	short loc_413F17
pop	ebp
pop	ebx

loc_413F89:
mov	al, [esi+0D5h]
lea	edi, [esi+0FCh]
mov	[esi+0D4h], al
mov	eax, [edi]
test	eax, eax
jz	short loc_413FAA
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
and	dword ptr [edi], 0

loc_413FAA:
lea	ecx, [esi+0F8h]
call	sub_429929
pop	edi
pop	esi
retn
sub_413EF8 endp



; Attributes: bp-based frame

sub_413FB8 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset unknown_libname_21 ; Microsoft VisualC 2-11/net runtime
call	__EH_prolog
push	ecx
push	esi
push	edi
mov	edi, ecx
call	sub_413EF8
push	28h		; Size
call	sub_4284B1
pop	ecx
mov	ecx, eax
mov	[ebp+var_10], ecx
and	[ebp+var_4], 0
test	ecx, ecx
jz	short loc_413FEA
call	sub_408A5B
mov	esi, eax
jmp	short loc_413FEC

loc_413FEA:
xor	esi, esi

loc_413FEC:
or	[ebp+var_4], 0FFFFFFFFh
push	esi
lea	ecx, [edi+0FCh]
call	sub_43D0DB
and	byte ptr [esi+24h], 0
mov	ecx, edi
call	sub_4166B3
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_413FB8 endp



; Attributes: bp-based frame

sub_414015 proc	near

lParam=	dword ptr -38h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_4449E8
call	__EH_prolog
sub	esp, 2Ch
cmp	[ebp+arg_0], 0FFFFFFFFh
push	esi
push	edi
mov	esi, ecx
jnz	short loc_414036
call	sub_413C6E
jmp	loc_4140C0

loc_414036:
and	[ebp+var_10], 0
mov	eax, [esi+0FCh]
and	[ebp+var_4], 0
lea	edi, [esi+0FCh]
lea	edx, [ebp+var_10]
mov	ecx, [eax]
push	edx
push	[ebp+arg_0]
push	eax
call	dword ptr [ecx+1Ch]
cmp	[ebp+var_10], 0
jz	short loc_4140C0
push	[ebp+var_10]
mov	ecx, edi
call	sub_43D0DB
mov	ecx, esi
call	sub_41320F
mov	ecx, esi
call	sub_4166B3
add	esi, 74h
mov	ecx, esi
call	sub_402DF8
push	2
mov	edi, ds:SendMessageA
pop	ecx
mov	[ebp+var_28], ecx
mov	[ebp+var_2C], ecx
lea	ecx, [ebp+lParam]
push	ecx		; lParam
push	eax		; wParam
push	102Bh		; Msg
push	dword ptr [esi]	; hWnd
call	edi ; SendMessageA
mov	ecx, esi
call	sub_402DF8
push	0		; lParam
push	eax		; wParam
push	1013h		; Msg
push	dword ptr [esi]	; hWnd
call	edi ; SendMessageA
mov	eax, [ebp+var_10]
or	[ebp+var_4], 0FFFFFFFFh
test	eax, eax
jz	short loc_4140C0
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_4140C0:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_414015 endp



; Attributes: bp-based frame

sub_4140D0 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset unknown_libname_22 ; Microsoft VisualC 2-11/net runtime
call	__EH_prolog
push	ecx
push	ebx
push	esi
push	edi
mov	ebx, ecx
push	0Ch		; Size
call	sub_4284B1
pop	ecx
mov	ecx, eax
mov	[ebp+var_10], ecx
xor	esi, esi
cmp	ecx, esi
mov	[ebp+var_4], esi
jz	short loc_414100
push	[ebp+arg_4]
call	sub_4030F2
mov	esi, eax

loc_414100:
mov	edi, [ebp+arg_0]
or	[ebp+var_4], 0FFFFFFFFh
push	edi
mov	ecx, ebx
call	sub_428462
mov	eax, [ebx+0Ch]
mov	ecx, [ebp+var_C]
mov	[eax+edi*4], esi
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	8
sub_4140D0 endp




sub_414126 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 4
jmp	sub_412A3B
sub_414126 endp




sub_414130 proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 4
jmp	sub_441007
sub_414130 endp




sub_41413A proc	near

arg_0= dword ptr  4

sub	[esp+arg_0], 4
jmp	sub_412A90
sub_41413A endp



; Attributes: bp-based frame

sub_414144 proc	near

var_108= byte ptr -108h
lpFileName= dword ptr -0F0h
var_EC=	dword ptr -0ECh
var_E0=	byte ptr -0E0h
var_C0=	dword ptr -0C0h
var_9C=	byte ptr -9Ch
var_98=	byte ptr -98h
var_94=	byte ptr -94h
var_88=	byte ptr -88h
var_84=	byte ptr -84h
var_78=	byte ptr -78h
var_74=	dword ptr -74h
var_6C=	byte ptr -6Ch
var_60=	byte ptr -60h
var_54=	dword ptr -54h
var_50=	dword ptr -50h
var_4C=	dword ptr -4Ch
var_48=	dword ptr -48h
var_44=	dword ptr -44h
pvarg= VARIANTARG ptr -40h
Memory=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
lpText=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h
arg_10=	dword ptr  18h

mov	eax, offset loc_444A66
call	__EH_prolog
sub	esp, 0FCh
push	ebx
push	esi
mov	esi, [ebp+arg_10]
push	edi
mov	edi, ecx
and	byte ptr [esi],	0
lea	ecx, [ebp+var_108]
mov	[ebp+var_24], edi
call	sub_414544
push	[ebp+arg_4]
xor	ebx, ebx
lea	ecx, [ebp+var_108]
mov	[ebp+var_4], ebx
call	sub_41461B
cmp	[ebp+arg_0], ebx
jz	short loc_41418E
mov	[ebp+var_88], 1
jmp	short loc_4141CC

loc_41418E:		; lpFileName
push	[ebp+lpFileName]
lea	ecx, [ebp+var_E0]
call	sub_42B49E
test	al, al
jnz	short loc_4141B0
call	ds:GetLastError
mov	ebx, eax
jmp	loc_414522

loc_4141B0:
mov	eax, [ebp+var_C0]
shr	eax, 4
test	al, 1
jz	short loc_4141C5
push	1
pop	ebx
jmp	loc_414522

loc_4141C5:
and	[ebp+var_88], 0

loc_4141CC:
push	[ebp+arg_8]
lea	ecx, [ebp+var_84]
call	sub_40312C
mov	[ebp+var_20], ebx
mov	[ebp+arg_10], ebx
push	3
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 2
mov	[ebp+Memory], ebx
mov	[ebp+var_2C], ebx
mov	[ebp+var_28], ebx
call	sub_403396
cmp	[ebp+var_EC], ebx
mov	eax, [ebp+arg_8]
mov	byte ptr [ebp+var_4], 3
jz	short loc_41420C
lea	eax, [ebp+lpFileName]

loc_41420C:
mov	[ebp+arg_8], eax
lea	eax, [ebp+Memory]
push	eax
push	esi
mov	ecx, edi
call	sub_40DA67
push	eax
lea	eax, [ebp+var_20]
mov	edx, [ebp+arg_8]
mov	ecx, [ebp+arg_0]
push	eax
lea	eax, [ebp+arg_10]
push	eax
push	[ebp+arg_C]
call	sub_4047D1
cmp	eax, ebx
mov	[ebp+arg_8], eax
jz	short loc_414267
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 1
lea	ecx, [ebp+arg_10]
call	sub_429929
mov	eax, [ebp+var_20]
and	byte ptr [ebp+var_4], 0
cmp	eax, ebx
jz	short loc_41425F
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_41425F:
mov	ebx, [ebp+arg_8]
jmp	loc_414522

loc_414267:
lea	eax, [ebp+Memory]
lea	ecx, [ebp+var_94]
push	eax
call	sub_40312C
mov	al, [esi]
push	dword ptr [edi+0FCh]
lea	esi, [edi+0FCh]
lea	ecx, [ebp+var_9C]
mov	[ebp+var_98], al
call	sub_43D0DB
lea	ebx, [edi+0E4h]
lea	eax, [ebp+var_108]
push	eax
mov	ecx, ebx
call	sub_4161FB
mov	eax, [edi+0F8h]
and	dword ptr [edi+0F8h], 0
mov	ecx, [ebx+0Ch]
add	edi, 0F8h
mov	[ebp+arg_8], eax
mov	eax, [ebx+8]
mov	eax, [ecx+eax*4-4]
lea	ebx, [eax+68h]
mov	ecx, ebx
call	sub_429929
mov	eax, [ebp+arg_8]
mov	[ebx], eax
mov	eax, [esi]
test	eax, eax
jz	short loc_4142E7
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
and	dword ptr [esi], 0

loc_4142E7:
mov	ecx, edi
call	sub_429929
push	[ebp+var_20]
mov	ecx, esi
call	sub_43D0DB
mov	ebx, [ebp+arg_10]
and	[ebp+arg_10], 0
mov	ecx, edi
call	sub_429929
mov	[edi], ebx
mov	edi, [ebp+var_24]
xor	ebx, ebx
mov	al, [edi+0D6h]
mov	[ebp+var_1C], ebx
mov	[edi+0D4h], al
mov	esi, [esi]
lea	ecx, [ebp+var_1C]
push	ecx
push	offset unk_44B630
mov	eax, [esi]
push	esi
mov	byte ptr [ebp+var_4], 4
call	dword ptr [eax]
mov	eax, [ebp+var_1C]
cmp	eax, ebx
jz	loc_4144EE
mov	[ebp+arg_8], ebx
mov	ecx, [eax]
lea	edx, [ebp+arg_8]
push	edx
push	eax
mov	byte ptr [ebp+var_4], 5
call	dword ptr [ecx+0Ch]
cmp	[ebp+arg_8], ebx
jz	loc_4144DA
push	3
lea	ecx, [ebp+lpText]
pop	esi
mov	[ebp+lpText], ebx
push	esi
mov	[ebp+var_14], ebx
mov	[ebp+var_10], ebx
call	sub_403396
mov	eax, [ebp+arg_8]
lea	edx, [ebp+arg_4]
push	edx
push	eax
mov	ecx, [eax]
mov	byte ptr [ebp+var_4], 6
call	dword ptr [ecx+0Ch]
test	eax, eax
jz	short loc_414386
xor	eax, eax
mov	[ebp+arg_4], eax
jmp	short loc_414389

loc_414386:
mov	eax, [ebp+arg_4]

loc_414389:
cmp	eax, ebx
mov	[ebp+arg_0], ebx
jbe	loc_4144C2
mov	[ebp+var_4C], esi
mov	[ebp+var_50], 37h
mov	[ebp+var_48], 14h
mov	[ebp+var_54], ebx
mov	esi, offset sub_406E76

loc_4143AD:
sub	eax, [ebp+arg_0]
push	esi		; void (__thiscall *)(void *)
push	offset sub_403079 ; int
push	3		; int
dec	eax
push	0Ch		; unsigned int
mov	[ebp+var_44], eax
lea	eax, [ebp+var_78]
push	eax		; void *
call	??_L@YGXPAXIHP6EX0@Z1@Z	; `eh vector constructor iterator'(void *,uint,int,void (*)(void *),void (*)(void *))
lea	ebx, [ebp+var_78]
lea	edi, [ebp+var_50]
mov	[ebp+arg_C], 3

loc_4143D4:
and	word ptr [ebp+pvarg.anonymous_0], 0
and	word ptr [ebp+pvarg.anonymous_0+2], 0
mov	eax, [ebp+arg_8]
lea	edx, [ebp+pvarg]
push	edx
mov	byte ptr [ebp+var_4], 9
push	dword ptr [edi]
mov	ecx, [eax]
push	[ebp+var_44]
push	eax
call	dword ptr [ecx+10h]
test	eax, eax
jnz	short loc_414415
cmp	word ptr [ebp+pvarg.anonymous_0], ax
jz	short loc_414415
cmp	word ptr [ebp+pvarg.anonymous_0], 8
mov	eax, dword ptr [ebp+pvarg.anonymous_0+8]
jz	short loc_41440D
mov	eax, offset a?_0 ; "?"

loc_41440D:
push	eax
mov	ecx, ebx
call	sub_404722

loc_414415:		; pvarg
lea	ecx, [ebp+pvarg]
mov	byte ptr [ebp+var_4], 8
call	sub_42CDE1
push	0		; bstrString
mov	byte ptr [ebp+var_4], 7
call	ds:SysFreeString
add	edi, 4
add	ebx, 0Ch
dec	[ebp+arg_C]
jnz	short loc_4143D4
cmp	[ebp+var_74], 0
jz	short loc_41449C
cmp	[ebp+var_14], 0
jz	short loc_414451
push	offset asc_45BA00 ; "--------------------\n"
lea	ecx, [ebp+lpText]
call	sub_403195

loc_414451:
lea	eax, [ebp+var_78]
lea	ecx, [ebp+lpText]
push	eax
call	sub_4031F2
push	offset asc_45B9F8 ; "\n\n["
lea	ecx, [ebp+lpText]
call	sub_403195
lea	eax, [ebp+var_60]
lea	ecx, [ebp+lpText]
push	eax
call	sub_4031F2
push	offset asc_45B9F0 ; "] "
lea	ecx, [ebp+lpText]
call	sub_403195
lea	eax, [ebp+var_6C]
lea	ecx, [ebp+lpText]
push	eax
call	sub_4031F2
push	offset asc_45B10C ; "\n"
lea	ecx, [ebp+lpText]
call	sub_403195

loc_41449C:		; void (__thiscall *)(void *)
push	esi
push	3		; int
lea	eax, [ebp+var_78]
push	0Ch		; unsigned int
push	eax		; void *
mov	byte ptr [ebp+var_4], 6
call	??_M@YGXPAXIHP6EX0@Z@Z ; `eh vector destructor iterator'(void *,uint,int,void (*)(void *))
inc	[ebp+arg_0]
mov	eax, [ebp+arg_4]
cmp	[ebp+arg_0], eax
jb	loc_4143AD
mov	edi, [ebp+var_24]
xor	ebx, ebx

loc_4144C2:
cmp	[ebp+var_14], ebx
jz	short loc_4144D1
push	[ebp+lpText]	; lpText
mov	ecx, edi
call	sub_40E529

loc_4144D1:		; Memory
push	[ebp+lpText]
call	sub_4284D8
pop	ecx

loc_4144DA:
mov	eax, [ebp+arg_8]
mov	byte ptr [ebp+var_4], 4
cmp	eax, ebx
jz	short loc_4144EB
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_4144EB:
mov	eax, [ebp+var_1C]

loc_4144EE:
cmp	eax, ebx
mov	byte ptr [ebp+var_4], 3
jz	short loc_4144FC
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_4144FC:		; Memory
push	[ebp+Memory]
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 1
lea	ecx, [ebp+arg_10]
call	sub_429929
mov	eax, [ebp+var_20]
and	byte ptr [ebp+var_4], 0
cmp	eax, ebx
jz	short loc_414522
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_414522:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_108]
call	sub_406E7F
mov	ecx, [ebp+var_C]
pop	edi
mov	eax, ebx
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	14h
sub_414144 endp



; Attributes: bp-based frame

sub_414544 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444A99
call	__EH_prolog
push	ecx
push	ebx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
call	sub_4145AE
xor	ebx, ebx
mov	[ebp+var_4], ebx
mov	[esi+68h], ebx
mov	[esi+6Ch], ebx
lea	ecx, [esi+74h]
mov	[esi+70h], bl
push	3
mov	byte ptr [ebp+var_4], 2
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
lea	ecx, [esi+84h]
mov	[esi+80h], bl
push	3
mov	byte ptr [ebp+var_4], 3
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
mov	ecx, [ebp+var_C]
mov	eax, esi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_414544 endp



; Attributes: bp-based frame

sub_4145AE proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444AC2
call	__EH_prolog
push	ecx
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
push	3
mov	[ebp+var_10], esi
mov	[esi], ebx
mov	[esi+4], ebx
mov	[esi+8], ebx
call	sub_403396
lea	ecx, [esi+0Ch]
push	3
mov	[ebp+var_4], ebx
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
lea	ecx, [esi+18h]
push	3
mov	byte ptr [ebp+var_4], 1
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
lea	ecx, [esi+28h]
mov	byte ptr [ebp+var_4], 2
call	sub_404EA2
mov	ecx, [ebp+var_C]
mov	[esi+60h], bl
mov	eax, esi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_4145AE endp




sub_41461B proc	near

arg_0= dword ptr  4

push	ebx
push	ebp
mov	ebp, [esp+8+arg_0]
push	esi
push	edi
mov	ebx, ecx
push	ebp
call	sub_40312C
lea	eax, [ebp+0Ch]
lea	ecx, [ebx+0Ch]
push	eax
call	sub_40312C
lea	eax, [ebp+18h]
lea	ecx, [ebx+18h]
push	eax
call	sub_40312C
lea	eax, [ebp+28h]
lea	edx, [ebx+28h]
push	0Ah
mov	esi, eax
pop	ecx
mov	edi, edx
rep movsd
add	eax, 28h
lea	ecx, [edx+28h]
push	eax
call	sub_40312C
mov	al, [ebp+60h]
pop	edi
mov	[ebx+60h], al
pop	esi
mov	eax, ebx
pop	ebp
pop	ebx
retn	4
sub_41461B endp



; Attributes: bp-based frame

sub_41466D proc	near

var_80=	byte ptr -80h
var_74=	byte ptr -74h
var_68=	byte ptr -68h
Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_444AE4
call	__EH_prolog
sub	esp, 74h
push	esi
push	edi
mov	edi, ecx
lea	ecx, [ebp+var_80]
call	sub_4145AE
push	[ebp+arg_0]
and	[ebp+var_4], 0
lea	ecx, [ebp+var_80]
call	sub_40312C
lea	esi, [edi+0D8h]
lea	ecx, [ebp+var_74]
push	esi
call	sub_40312C
push	[ebp+arg_0]
mov	edx, esi
lea	ecx, [ebp+Memory]
call	sub_40356A
push	eax
lea	ecx, [ebp+var_68]
mov	byte ptr [ebp+var_4], 1
call	sub_40312C
push	[ebp+Memory]	; Memory
and	byte ptr [ebp+var_4], 0
call	sub_4284D8
pop	ecx
mov	edx, esi
push	[ebp+arg_0]
lea	ecx, [ebp+Memory]
call	sub_40356A
push	[ebp+arg_8]
mov	ecx, edi
mov	byte ptr [ebp+var_4], 2
push	[ebp+arg_4]
push	eax
lea	eax, [ebp+var_80]
push	eax
push	0
call	sub_414144
push	[ebp+Memory]	; Memory
mov	esi, eax
call	sub_4284D8
pop	ecx
lea	ecx, [ebp+var_80]
call	sub_406EDD
mov	ecx, [ebp+var_C]
mov	eax, esi
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	0Ch
sub_41466D endp



; Attributes: bp-based frame

sub_414715 proc	near

Memory=	dword ptr -30h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	byte ptr -18h
var_17=	byte ptr -17h
var_14=	dword ptr -14h
var_D= byte ptr	-0Dh
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_444B08
call	__EH_prolog
sub	esp, 24h
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
push	edi
mov	[ebp+var_14], esi
mov	al, [esi+184h]
mov	[ebp+var_18], al
mov	al, [esi+185h]
mov	[esi+184h], bl
mov	[ebp+var_17], al
mov	[esi+185h], bl
push	3
lea	ecx, [ebp+var_24]
mov	[ebp+var_4], ebx
mov	[ebp+var_24], ebx
mov	[ebp+var_20], ebx
mov	[ebp+var_1C], ebx
call	sub_403396
push	[ebp+arg_0]
lea	eax, [ebp+Memory]
mov	ecx, esi
mov	byte ptr [ebp+var_4], 1
push	eax
call	sub_4174B8
lea	ecx, [ebp+var_D]
mov	byte ptr [ebp+var_4], 2
push	ecx
lea	ecx, [ebp+var_24]
push	ecx
push	eax
mov	ecx, esi
call	sub_41466D
push	[ebp+Memory]	; Memory
mov	edi, eax
call	sub_4284D8
push	[ebp+var_24]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
pop	ecx
cmp	edi, ebx
pop	ecx
jz	short loc_4147A5
mov	eax, edi
jmp	short loc_4147AE

loc_4147A5:
mov	ecx, esi
call	sub_4166B3
xor	eax, eax

loc_4147AE:
mov	cl, [ebp+var_18]
pop	edi
mov	[esi+184h], cl
mov	cl, [ebp+var_17]
mov	[esi+185h], cl
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_414715 endp



; Attributes: bp-based frame

sub_4147D1 proc	near

var_68=	byte ptr -68h
var_40=	dword ptr -40h
Memory=	dword ptr -30h
lpText=	dword ptr -24h
var_18=	byte ptr -18h
var_17=	byte ptr -17h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444B2C
call	__EH_prolog
sub	esp, 5Ch
push	ebx
push	esi
push	edi
mov	edi, ecx
lea	ecx, [ebp+var_18]
mov	[ebp+var_14], edi
call	sub_4028C8
mov	eax, [edi+0ECh]
and	[ebp+var_4], 0
cmp	eax, 2
jl	loc_4148F5
mov	ecx, [edi+0F0h]
mov	ebx, [ecx+eax*4-4]
lea	ecx, [ebp+var_68]
call	sub_404EA2
push	dword ptr [ebx+18h] ; lpFileName
lea	eax, [ebx+18h]
lea	ecx, [ebp+var_68]
mov	byte ptr [ebp+var_4], 1
mov	[ebp+var_10], eax
call	sub_42B49E
test	al, al
jz	loc_4148E5
lea	eax, [ebp+var_68]
mov	ecx, ebx
push	eax
call	sub_414939
test	al, al
jz	loc_4148E5
push	ebx
push	3020280h
mov	edx, 8E8h
lea	ecx, [ebp+lpText]
call	sub_40744B
mov	esi, edi
lea	eax, [edi+4]
neg	esi
sbb	esi, esi
push	21h		; uType
and	esi, eax
push	offset a7Zip	; "7-Zip"
push	[ebp+lpText]	; lpText
mov	byte ptr [ebp+var_4], 2
mov	eax, [esi]
push	eax		; hWnd
call	ds:MessageBoxW
cmp	eax, 1
jnz	short loc_4148D8
lea	eax, [ebx+74h]
mov	ecx, edi
push	eax
mov	al, [ebx+70h]
push	eax
lea	eax, [ebx+0Ch]
push	ebx
push	eax
call	sub_415474
test	eax, eax
jz	short loc_4148D8
push	[ebp+var_10]
mov	edx, 8E9h
lea	ecx, [ebp+Memory]
push	3020281h
call	sub_40744B
push	10h		; uType
push	offset a7Zip	; "7-Zip"
push	dword ptr [eax]	; lpText
push	dword ptr [esi]	; hWnd
call	ds:MessageBoxW
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+lpText]	; Memory
call	sub_4284D8
push	[ebp+var_40]	; Memory
call	sub_4284D8
add	esp, 0Ch
jmp	short loc_4148F5

loc_4148D8:		; Memory
push	[ebp+lpText]
mov	byte ptr [ebp+var_4], 1
call	sub_4284D8
pop	ecx

loc_4148E5:
mov	ecx, ebx
call	sub_41491E
push	[ebp+var_40]	; Memory
call	sub_4284D8
pop	ecx

loc_4148F5:
mov	ecx, [ebp+var_14]
mov	al, [ebp+var_18]
pop	edi
pop	esi
mov	[ecx+184h], al
mov	eax, [ebp+var_14]
mov	cl, [ebp+var_17]
pop	ebx
mov	[eax+185h], cl
mov	ecx, [ebp+var_C]
xor	eax, eax
mov	large fs:0, ecx
leave
retn
sub_4147D1 endp




sub_41491E proc	near
push	esi
mov	esi, ecx
cmp	byte ptr [esi+60h], 0
jz	short loc_414937
mov	ecx, [esi+18h]
call	sub_42A481
mov	ecx, [esi+0Ch]
call	sub_42A00C

loc_414937:
pop	esi
retn
sub_41491E endp




sub_414939 proc	near

arg_0= dword ptr  4

cmp	byte ptr [ecx+80h], 0
jnz	short loc_414967
mov	eax, [esp+arg_0]
mov	edx, [eax]
cmp	edx, [ecx+28h]
jnz	short loc_414967
mov	edx, [eax+4]
cmp	edx, [ecx+2Ch]
jnz	short loc_414967
add	ecx, 40h
add	eax, 18h
push	ecx		; lpFileTime2
push	eax		; lpFileTime1
call	ds:CompareFileTime
test	eax, eax
jz	short locret_41496A

loc_414967:
push	1
pop	eax

locret_41496A:
retn	4
sub_414939 endp



; Attributes: bp-based frame

sub_41496D proc	near

var_8C=	dword ptr -8Ch
var_84=	dword ptr -84h
var_80=	dword ptr -80h
var_78=	dword ptr -78h
var_70=	dword ptr -70h
var_6C=	dword ptr -6Ch
var_64=	dword ptr -64h
var_58=	dword ptr -58h
Memory=	dword ptr -4Ch
var_40=	dword ptr -40h
cbData=	dword ptr -34h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444BB3
call	__EH_prolog
sub	esp, 80h
push	ebx
push	esi
mov	esi, ecx
push	edi
push	4
lea	ecx, [ebp+var_8C]
mov	eax, [esi+0Ch]
imul	eax, 188h
lea	eax, [eax+esi+84h]
mov	[ebp+var_10], eax
call	sub_402794
mov	ebx, offset off_44B518
mov	[ebp+var_8C], ebx
mov	ecx, [ebp+var_10]
lea	eax, [ebp+var_8C]
xor	edi, edi
push	eax
mov	[ebp+var_4], edi
call	sub_41708B
push	3
lea	ecx, [ebp+var_28]
mov	[ebp+var_28], edi
mov	[ebp+var_24], edi
mov	[ebp+var_20], edi
call	sub_403396
push	3
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 1
mov	[ebp+var_1C], edi
mov	[ebp+var_18], edi
mov	[ebp+var_14], edi
call	sub_403396
cmp	[ebp+var_84], 2
mov	byte ptr [ebp+var_4], 2
jnz	short loc_414A54
mov	eax, [ebp+var_80]
mov	ecx, [ebp+var_10]
push	dword ptr [eax]
lea	eax, [ebp+Memory]
push	eax
call	sub_417521
push	eax
lea	ecx, [ebp+var_28]
mov	byte ptr [ebp+var_4], 3
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 2
call	sub_4284D8
mov	eax, [ebp+var_80]
pop	ecx
mov	ecx, [ebp+var_10]
push	dword ptr [eax+4]
lea	eax, [ebp+Memory]
push	eax
call	sub_417521
push	eax
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 4
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 2
call	sub_4284D8
pop	ecx
jmp	loc_414B45

loc_414A54:
cmp	[ebp+var_84], 1
jnz	loc_414C69
cmp	dword ptr [esi+8], 2
jl	loc_414C69
mov	eax, [esi+0Ch]
mov	edi, esi
imul	eax, 188h
mov	ecx, [ebp+var_10]
sub	edi, eax
mov	eax, [ebp+var_80]
add	edi, 20Ch
push	dword ptr [eax]
lea	eax, [ebp+var_58]
push	eax
call	sub_417521
push	eax
lea	ecx, [ebp+var_28]
mov	byte ptr [ebp+var_4], 5
call	sub_40312C
push	[ebp+var_58]	; Memory
mov	byte ptr [ebp+var_4], 2
call	sub_4284D8
mov	eax, [ebp+var_80]
pop	ecx
mov	ecx, [ebp+var_10]
push	dword ptr [eax]
lea	eax, [ebp+Memory]
push	eax
call	sub_4174B8
push	4
lea	ecx, [ebp+var_78]
mov	byte ptr [ebp+var_4], 6
call	sub_402794
mov	[ebp+var_78], ebx
lea	eax, [ebp+var_78]
mov	ecx, edi
push	eax
mov	byte ptr [ebp+var_4], 7
call	sub_41708B
cmp	[ebp+var_70], 1
jnz	short loc_414B02
mov	eax, [ebp+var_6C]
mov	ecx, edi
push	dword ptr [eax]
lea	eax, [ebp+var_58]
push	eax
call	sub_417521
push	eax
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 8
call	sub_40312C
push	[ebp+var_58]
jmp	short loc_414B24

loc_414B02:
lea	eax, [ebp+Memory]
lea	edx, [edi+0D8h]
push	eax
lea	ecx, [ebp+var_58]
call	sub_40356A
push	eax
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 9
call	sub_40312C
push	[ebp+var_58]	; Memory

loc_414B24:
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 6
lea	ecx, [ebp+var_78]
call	sub_4282FE
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 2
call	sub_4284D8
pop	ecx
xor	edi, edi

loc_414B45:
push	3
lea	ecx, [ebp+cbData]
mov	[ebp+cbData], edi
mov	[ebp+var_30], edi
mov	[ebp+var_2C], edi
call	sub_403396
lea	ecx, [ebp+cbData] ; cbData
mov	byte ptr [ebp+var_4], 0Ah
call	sub_41E91F
cmp	[ebp+var_30], edi
jnz	short loc_414B89
push	[ebp+cbData]	; Memory
call	sub_4284D8
push	[ebp+var_1C]	; Memory
call	sub_4284D8
push	[ebp+var_28]	; Memory
call	sub_4284D8
add	esp, 0Ch
jmp	loc_414C7B

loc_414B89:
lea	edx, [ebp+var_1C]
lea	ecx, [ebp+var_64]
call	sub_414C99
mov	ebx, eax
lea	edx, [ebp+var_28]
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 0Bh
call	sub_414C99
push	20h
mov	edx, eax
lea	ecx, [ebp+var_58]
mov	byte ptr [ebp+var_4], 0Ch
call	sub_409999
push	ebx
mov	edx, eax
lea	ecx, [ebp+var_40]
mov	byte ptr [ebp+var_4], 0Dh
call	sub_40356A
push	[ebp+var_58]	; Memory
call	sub_4284D8
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_64]	; Memory
mov	byte ptr [ebp+var_4], 0Fh
call	sub_4284D8
mov	ecx, [ebp+cbData]
add	esp, 0Ch
lea	edx, [ebp+var_40]
call	sub_42CC0E
cmp	eax, edi
jnz	short loc_414C17
push	[ebp+var_40]	; Memory
call	sub_4284D8
push	[ebp+cbData]	; Memory
call	sub_4284D8
push	[ebp+var_1C]	; Memory
call	sub_4284D8
push	[ebp+var_28]	; Memory
call	sub_4284D8
add	esp, 10h
jmp	short loc_414C7B

loc_414C17:
push	3020282h
mov	edx, 8EAh
lea	ecx, [ebp+var_70]
call	sub_40B168
mov	eax, [eax]
mov	esi, [esi]
push	10h		; uType
push	offset a7Zip	; "7-Zip"
push	eax		; lpText
push	esi		; hWnd
call	ds:MessageBoxW
push	[ebp+var_70]	; Memory
call	sub_4284D8
push	[ebp+var_40]	; Memory
call	sub_4284D8
push	[ebp+cbData]	; Memory
call	sub_4284D8
push	[ebp+var_1C]	; Memory
call	sub_4284D8
push	[ebp+var_28]	; Memory
call	sub_4284D8
add	esp, 14h
jmp	short loc_414C7B

loc_414C69:		; Memory
push	[ebp+var_1C]
call	sub_4284D8
push	[ebp+var_28]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx

loc_414C7B:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_8C]
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_41496D endp



; Attributes: bp-based frame

sub_414C99 proc	near

var_34=	dword ptr -34h
var_28=	dword ptr -28h
Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444BD8
call	__EH_prolog
sub	esp, 28h
and	[ebp+var_10], 0
push	ebx
push	esi
mov	esi, ecx
push	edi
mov	edi, edx
push	22h
lea	ecx, [ebp+var_34]
call	sub_409516
mov	ebx, eax
and	[ebp+var_4], 0
push	22h
lea	ecx, [ebp+var_28]
call	sub_409516
push	edi
mov	edx, eax
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 1
call	sub_40356A
push	ebx
mov	edx, eax
mov	ecx, esi
mov	byte ptr [ebp+var_4], 2
call	sub_40356A
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_28]	; Memory
call	sub_4284D8
push	[ebp+var_34]	; Memory
call	sub_4284D8
mov	ecx, [ebp+var_C]
add	esp, 0Ch
mov	eax, esi
mov	large fs:0, ecx
pop	edi
pop	esi
pop	ebx
leave
retn
sub_414C99 endp



; Attributes: bp-based frame

sub_414D14 proc	near

Memory=	dword ptr -1Ch
hObject= dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_444BF4
call	__EH_prolog
sub	esp, 10h
push	edi
xor	edi, edi
cmp	[ecx+0ECh], edi
jz	short loc_414D3B
push	1
push	1
push	edi
push	[ebp+arg_0]
call	sub_4157A0
jmp	short loc_414D84

loc_414D3B:
push	esi
mov	[ebp+hObject], edi
mov	eax, ecx
push	[ebp+arg_0]
neg	eax
lea	edx, [ecx+4]
mov	[ebp+var_4], edi
sbb	eax, eax
and	eax, edx
mov	esi, [eax]
lea	eax, [ebp+Memory]
push	eax
call	sub_417521
lea	ecx, [ebp+hObject]
mov	edx, esi
push	ecx
mov	ecx, eax
mov	byte ptr [ebp+var_4], 1
call	sub_414D93
push	[ebp+Memory]	; Memory
call	sub_4284D8
cmp	[ebp+hObject], edi
pop	ecx
pop	esi
jz	short loc_414D84
push	[ebp+hObject]	; hObject
call	ds:CloseHandle

loc_414D84:
mov	ecx, [ebp+var_C]
pop	edi
mov	large fs:0, ecx
leave
retn	4
sub_414D14 endp



; Attributes: bp-based frame

sub_414D93 proc	near

Memory=	dword ptr -24h
cbData=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_444C10
call	__EH_prolog
sub	esp, 18h
push	ebx
push	esi
mov	esi, ecx
push	edi
xor	ebx, ebx
mov	edi, edx
push	3
lea	ecx, [ebp+cbData]
mov	[ebp+cbData], ebx
mov	[ebp+var_14], ebx
mov	[ebp+var_10], ebx
call	sub_403396
lea	ecx, [ebp+cbData] ; cbData
mov	[ebp+var_4], ebx
call	sub_41E8F8
cmp	[ebp+var_14], ebx
jnz	short loc_414DF1
lea	ecx, [ebp+cbData]
call	sub_429CCE
test	al, al
jnz	short loc_414DDC
xor	esi, esi
jmp	short loc_414E49

loc_414DDC:
lea	ecx, [ebp+cbData]
call	sub_42C33B
lea	ecx, [ebp+cbData]
push	offset aNotepad_exe ; "notepad.exe"
call	sub_403195

loc_414DF1:
mov	edx, esi
lea	ecx, [ebp+Memory]
call	sub_414C99
mov	ecx, [ebp+arg_0]
push	ebx
push	eax
mov	byte ptr [ebp+var_4], 1
push	[ebp+cbData]
call	sub_42C9BF
mov	esi, eax
mov	byte ptr [ebp+var_4], bl
push	[ebp+Memory]	; Memory
call	sub_4284D8
cmp	esi, ebx
pop	ecx
jz	short loc_414E49
push	3020282h
mov	edx, 8EAh
lea	ecx, [ebp+Memory]
call	sub_40B168
push	10h		; uType
push	offset a7Zip	; "7-Zip"
push	dword ptr [eax]	; lpText
push	edi		; hWnd
call	ds:MessageBoxW
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_414E49:		; Memory
push	[ebp+cbData]
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_414D93 endp



; Attributes: bp-based frame

sub_414E65 proc	near

var_48=	dword ptr -48h
Memory=	dword ptr -3Ch
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_444C54
call	__EH_prolog
sub	esp, 3Ch
lea	eax, [ebp+var_18]
push	ebx
mov	ebx, ecx
push	eax
call	sub_40E71B
and	[ebp+var_4], 0
and	[ebp+var_24], 0
and	[ebp+var_20], 0
and	[ebp+var_1C], 0
push	3
lea	ecx, [ebp+var_24]
call	sub_403396
cmp	[ebp+arg_0], 0FFFFFFFFh
mov	byte ptr [ebp+var_4], 1
jnz	loc_414F51
mov	edx, [ebp+var_14]
test	edx, edx
jz	loc_414F43
mov	ecx, [ebp+var_18]
lea	eax, [ecx+edx*2-2]

loc_414EB8:
cmp	word ptr [eax],	5Ch
jz	short loc_414EC6
cmp	eax, ecx
jz	short loc_414ECC
dec	eax
dec	eax
jmp	short loc_414EB8

loc_414EC6:
sub	eax, ecx
sar	eax, 1
jmp	short loc_414ECF

loc_414ECC:
or	eax, 0FFFFFFFFh

loc_414ECF:
test	eax, eax
jl	short loc_414F43
dec	edx
cmp	eax, edx
jnz	short loc_414F43
push	eax
lea	eax, [ebp+var_30]
push	eax
lea	ecx, [ebp+var_18]
call	sub_403228
mov	eax, [ebp+var_2C]
mov	byte ptr [ebp+var_4], 2
test	eax, eax
jz	short loc_414F36
mov	ecx, [ebp+var_30]
lea	eax, [ecx+eax*2-2]

loc_414EF7:
cmp	word ptr [eax],	5Ch
jz	short loc_414F05
cmp	eax, ecx
jz	short loc_414F0B
dec	eax
dec	eax
jmp	short loc_414EF7

loc_414F05:
sub	eax, ecx
sar	eax, 1
jmp	short loc_414F0E

loc_414F0B:
or	eax, 0FFFFFFFFh

loc_414F0E:
test	eax, eax
jl	short loc_414F36
inc	eax
lea	ecx, [ebp+var_30]
push	eax
lea	eax, [ebp+Memory]
push	eax
call	sub_403228
push	eax
lea	ecx, [ebp+var_18]
mov	byte ptr [ebp+var_4], 3
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_414F36:		; Memory
push	[ebp+var_30]
mov	byte ptr [ebp+var_4], 1
call	sub_4284D8
pop	ecx

loc_414F43:
lea	eax, [ebp+var_18]
lea	ecx, [ebp+var_24]
push	eax
call	sub_40312C
jmp	short loc_414FAB

loc_414F51:
push	[ebp+arg_0]
lea	eax, [ebp+var_48]
mov	ecx, ebx
push	eax
call	sub_4174B8
push	eax
lea	edx, [ebp+var_18]
lea	ecx, [ebp+var_30]
mov	byte ptr [ebp+var_4], 4
call	sub_40356A
push	5Ch
mov	edx, eax
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 5
call	sub_409999
push	eax
lea	ecx, [ebp+var_24]
mov	byte ptr [ebp+var_4], 6
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_30]	; Memory
call	sub_4284D8
push	[ebp+var_48]	; Memory
mov	byte ptr [ebp+var_4], 1
call	sub_4284D8
add	esp, 0Ch

loc_414FAB:
mov	eax, ebx
add	ebx, 4
neg	eax
sbb	eax, eax
lea	edx, [ebp+var_24]
and	eax, ebx
lea	ecx, [ebp+var_18]
push	dword ptr [eax]	; hWnd
call	sub_414FE4
push	[ebp+var_24]	; Memory
call	sub_4284D8
push	[ebp+var_18]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx
pop	ebx
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn	4
sub_414E65 endp



; Attributes: bp-based frame

; int __stdcall	sub_414FE4(HWND	hWnd)
sub_414FE4 proc	near

hObject= dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
hWnd= dword ptr	 8

mov	eax, offset loc_444C68
call	__EH_prolog
push	ecx
and	[ebp+hObject], 0
and	[ebp+var_4], 0
lea	eax, [ebp+hObject]
push	eax		; int
push	[ebp+hWnd]	; hWnd
call	sub_415020
cmp	[ebp+hObject], 0
jz	short loc_415012
push	[ebp+hObject]	; hObject
call	ds:CloseHandle

loc_415012:
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn	4
sub_414FE4 endp



; Attributes: bp-based frame

; int __stdcall	sub_415020(HWND	hWnd, int)
sub_415020 proc	near

pExecInfo= SHELLEXECUTEINFOA ptr -6Ch
var_30=	dword ptr -30h
var_24=	dword ptr -24h
Memory=	dword ptr -18h
var_14=	dword ptr -14h
var_C= dword ptr -0Ch
var_4= dword ptr -4
hWnd= dword ptr	 8
arg_4= dword ptr  0Ch

mov	eax, offset loc_444C7C
call	__EH_prolog
sub	esp, 60h
push	ebx
xor	ebx, ebx
cmp	byte_45D8B4, bl
push	esi
mov	esi, ecx
jz	short loc_4150A1
mov	eax, [edx]
cmp	[esi+4], ebx
mov	[ebp+pExecInfo.cbSize],	3Ch
mov	[ebp+pExecInfo.fMask], 140h
mov	[ebp+pExecInfo.hwnd], ebx
mov	[ebp+pExecInfo.lpVerb],	ebx
mov	[ebp+pExecInfo.lpFile],	eax
mov	[ebp+pExecInfo.lpParameters], ebx
jnz	short loc_415060
xor	esi, esi
jmp	short loc_415062

loc_415060:
mov	esi, [esi]

loc_415062:		; "ShellExecuteExW"
push	offset aShellexecuteex
push	offset ModuleName ; "shell32.dll"
mov	[ebp+pExecInfo.lpDirectory], esi
mov	[ebp+pExecInfo.nShow], 1
mov	[ebp+pExecInfo.hProcess], ebx
call	ds:GetModuleHandleW
push	eax		; hModule
call	ds:GetProcAddress
cmp	eax, ebx
jz	loc_41514A
lea	ecx, [ebp+pExecInfo]
push	ecx
call	eax
mov	eax, [ebp+arg_4]
mov	ecx, [ebp+pExecInfo.hProcess]
mov	esi, [ebp+pExecInfo.hInstApp]
mov	[eax], ecx
jmp	short loc_415115

loc_4150A1:
lea	ecx, [ebp+var_24]
mov	[ebp+pExecInfo.cbSize],	3Ch
mov	[ebp+pExecInfo.fMask], 140h
mov	[ebp+pExecInfo.hwnd], ebx
mov	[ebp+pExecInfo.lpVerb],	ebx
call	sub_43A785
mov	edx, esi
lea	ecx, [ebp+Memory]
mov	[ebp+var_4], ebx
call	sub_43A785
mov	eax, [ebp+var_24]
mov	[ebp+pExecInfo.lpParameters], ebx
mov	[ebp+pExecInfo.lpFile],	eax
mov	eax, [ebp+var_14]
neg	eax
sbb	eax, eax
mov	[ebp+pExecInfo.nShow], 1
and	eax, [ebp+Memory]
mov	[ebp+pExecInfo.hProcess], ebx
mov	[ebp+pExecInfo.lpDirectory], eax
lea	eax, [ebp+pExecInfo]
push	eax		; pExecInfo
call	ds:ShellExecuteExA
mov	eax, [ebp+arg_4]
mov	ecx, [ebp+pExecInfo.hProcess]
push	[ebp+Memory]	; Memory
mov	esi, [ebp+pExecInfo.hInstApp]
mov	[eax], ecx
call	sub_4284D8
push	[ebp+var_24]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
pop	ecx
pop	ecx

loc_415115:
cmp	esi, 20h
ja	short loc_41514A
cmp	esi, 1Fh
jnz	short loc_41514A
call	ds:GetLastError
mov	edx, eax
lea	ecx, [ebp+var_30]
call	sub_40421E
push	10h		; uType
push	offset a7Zip	; "7-Zip"
push	dword ptr [eax]	; lpText
push	[ebp+hWnd]	; hWnd
call	ds:MessageBoxW
push	[ebp+var_30]	; Memory
call	sub_4284D8
pop	ecx

loc_41514A:
mov	ecx, [ebp+var_C]
pop	esi
xor	eax, eax
pop	ebx
mov	large fs:0, ecx
leave
retn	8
sub_415020 endp



; Attributes: bp-based frame

sub_41515C proc	near

var_38=	dword ptr -38h
var_2C=	dword ptr -2Ch
Memory=	dword ptr -20h
var_14=	byte ptr -14h
var_13=	byte ptr -13h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_444CA8
call	__EH_prolog
sub	esp, 2Ch
push	ebx
push	esi
mov	esi, ecx
lea	ecx, [ebp+var_14]
mov	[ebp+var_10], esi
call	sub_4028C8
xor	ebx, ebx
cmp	[esi+0ECh], ebx
mov	[ebp+var_4], ebx
jz	short loc_41519B
push	ebx
mov	ecx, esi
push	[ebp+arg_8]
push	[ebp+arg_4]
push	[ebp+arg_0]
call	sub_4157A0
jmp	loc_41526C

loc_41519B:
push	[ebp+arg_0]
lea	eax, [ebp+Memory]
mov	ecx, esi
push	eax
call	sub_4174B8
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 1
call	sub_415294
test	al, al
jz	short loc_4151D8
push	3020284h
push	8ECh
mov	ecx, esi
call	sub_40E58A
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
jmp	loc_41526C

loc_4151D8:
lea	eax, [ebp+var_2C]
mov	ecx, esi
push	eax
call	sub_40E71B
lea	eax, [ebp+Memory]
lea	edx, [ebp+var_2C]
push	eax
lea	ecx, [ebp+var_38]
mov	byte ptr [ebp+var_4], 2
call	sub_40356A
cmp	byte ptr [ebp+arg_4], bl
mov	byte ptr [ebp+var_4], 3
jz	short loc_415234
cmp	byte ptr [ebp+arg_8], bl
jz	short loc_415210
lea	ecx, [ebp+Memory]
call	sub_4152E1
test	al, al
jnz	short loc_415234

loc_415210:
push	[ebp+arg_0]
mov	ecx, esi
call	sub_414715
cmp	eax, ebx
jz	short loc_415251
cmp	eax, 80004004h
jz	short loc_415251
cmp	eax, 1
jz	short loc_415234
push	eax
mov	ecx, esi
call	sub_40E579
jmp	short loc_415251

loc_415234:
cmp	byte ptr [ebp+arg_8], bl
jz	short loc_415251
mov	eax, esi
add	esi, 4
neg	eax
sbb	eax, eax
lea	edx, [ebp+var_38]
and	eax, esi
lea	ecx, [ebp+var_2C]
push	dword ptr [eax]	; hWnd
call	sub_414FE4

loc_415251:		; Memory
push	[ebp+var_38]
call	sub_4284D8
push	[ebp+var_2C]	; Memory
call	sub_4284D8
push	[ebp+Memory]	; Memory
call	sub_4284D8
add	esp, 0Ch

loc_41526C:
mov	ecx, [ebp+var_10]
mov	al, [ebp+var_14]
pop	esi
pop	ebx
mov	[ecx+184h], al
mov	eax, [ebp+var_10]
mov	cl, [ebp+var_13]
mov	[eax+185h], cl
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn	0Ch
sub_41515C endp



; Attributes: bp-based frame

sub_415294 proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444CBC
call	__EH_prolog
sub	esp, 0Ch
push	ebx
push	esi
mov	esi, ecx
push	offset asc_45BA70 ; "	  "
lea	ecx, [ebp+Memory]
call	sub_403091
and	[ebp+var_4], 0
lea	eax, [ebp+Memory]
push	0
push	eax
mov	ecx, esi
call	sub_40750B
test	eax, eax
push	[ebp+Memory]	; Memory
setnl	bl
call	sub_4284D8
pop	ecx
mov	al, bl
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_415294 endp




sub_4152E1 proc	near
mov	edx, ecx
mov	ecx, off_45B920
jmp	$+5

loc_4152EE:
mov	eax, offset loc_444CD0
call	__EH_prolog
sub	esp, 18h
mov	eax, [edx+4]
push	ebx
xor	ebx, ebx
push	edi
cmp	eax, ebx
mov	edi, ecx
jz	short loc_415329
mov	ecx, [edx]
lea	eax, [ecx+eax*2-2]

loc_41530E:
cmp	word ptr [eax],	2Eh
jz	short loc_41531C
cmp	eax, ecx
jz	short loc_415322
dec	eax
dec	eax
jmp	short loc_41530E

loc_41531C:
sub	eax, ecx
sar	eax, 1
jmp	short loc_415325

loc_415322:
or	eax, 0FFFFFFFFh

loc_415325:
cmp	eax, ebx
jge	short loc_41532D

loc_415329:
xor	al, al
jmp	short loc_4153A8

loc_41532D:
inc	eax
push	esi
push	eax
lea	eax, [ebp-24h]
push	eax
mov	ecx, edx
call	sub_405246
mov	ecx, [ebp-24h]
mov	[ebp-4], ebx
call	sub_4281B7
lea	edx, [ebp-24h]
lea	ecx, [ebp-18h]
push	ebx
call	sub_428673
xor	ecx, ecx
cmp	[edi], bl
jz	short loc_415393
mov	eax, edi

loc_41535A:
cmp	byte ptr [eax],	20h
mov	esi, ecx
jz	short loc_415368

loc_415361:
inc	esi
cmp	byte ptr [esi+edi], 20h
jnz	short loc_415361

loc_415368:
mov	edx, esi
sub	edx, ecx
cmp	[ebp-14h], edx
jnz	short loc_415384
push	dword ptr [ebp-14h] ; Size
push	dword ptr [ebp-18h] ; Buf2
push	eax		; Buf1
call	memcmp
add	esp, 0Ch
test	eax, eax
jz	short loc_415391

loc_415384:
lea	ecx, [esi+1]
cmp	[ecx+edi], bl
lea	eax, [ecx+edi]
jnz	short loc_41535A
jmp	short loc_415393

loc_415391:
mov	bl, 1

loc_415393:		; Memory
push	dword ptr [ebp-18h]
call	sub_4284D8
push	dword ptr [ebp-24h] ; Memory
call	sub_4284D8
pop	ecx
mov	al, bl
pop	ecx
pop	esi

loc_4153A8:
mov	ecx, [ebp-0Ch]
pop	edi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_4152E1 endp



; Attributes: bp-based frame

sub_4153B6 proc	near

var_34=	dword ptr -34h
var_28=	dword ptr -28h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444CF4
call	__EH_prolog
sub	esp, 28h
push	ebx
push	esi
mov	esi, ecx
push	edi
push	4
lea	ecx, [ebp+var_34]
call	sub_402794
mov	edi, offset off_44B510
mov	[ebp+var_34], edi
xor	ebx, ebx
mov	[ebp+var_10], 4
mov	[ebp+var_4], ebx
mov	[ebp+var_1C], ebx
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
mov	[ebp+var_20], offset off_44C298
lea	eax, [esi+224h]
lea	ecx, [ebp+var_34]
push	eax
mov	byte ptr [ebp+var_4], 1
call	sub_4032B4
mov	eax, [ebp+var_28]
lea	ecx, [ebp+var_20]
mov	eax, [eax]
push	dword ptr [eax]
call	sub_429907
mov	eax, [esi+234h]
mov	ecx, [esi+218h]
mov	esi, [esi+230h]
push	eax
push	[ebp+var_18]
mov	edx, [esi]
push	[ebp+var_14]
push	ecx
push	esi
call	dword ptr [edx+24h]
lea	ecx, [ebp+var_20]
mov	esi, eax
mov	byte ptr [ebp+var_4], bl
call	sub_4282FE
mov	[ebp+var_34], edi
lea	ecx, [ebp+var_34]
mov	[ebp+var_4], 2
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_34]
call	sub_4282FE
mov	ecx, [ebp+var_C]
mov	eax, esi
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_4153B6 endp



; Attributes: bp-based frame

sub_415474 proc	near

var_254= byte ptr -254h
var_210= dword ptr -210h
var_204= byte ptr -204h
var_3C=	byte ptr -3Ch
var_30=	byte ptr -30h
var_24=	byte ptr -24h
var_20=	byte ptr -20h
var_1C=	dword ptr -1Ch
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= byte ptr	 10h
arg_C= dword ptr  14h

mov	eax, offset loc_444D1D
call	__EH_prolog
sub	esp, 248h
push	ebx
push	esi
xor	ebx, ebx
push	edi
mov	edi, ecx
mov	[ebp+var_10], ebx
mov	eax, [edi+0FCh]
lea	edx, [ebp+var_10]
push	edx
push	offset unk_44B6A0
mov	ecx, [eax]
push	eax
mov	[ebp+var_4], ebx
call	dword ptr [ecx]
cmp	eax, ebx
jz	short loc_4154D5
push	3020208h
push	8A0h
mov	ecx, edi
call	sub_40E58A
mov	eax, [ebp+var_10]
or	[ebp+var_4], 0FFFFFFFFh
cmp	eax, ebx
jz	short loc_4154CB
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_4154CB:
mov	eax, 80004005h
jmp	loc_4155A9

loc_4154D5:
lea	ecx, [ebp+var_254]
call	sub_4155BA
push	38h		; Size
mov	byte ptr [ebp+var_4], 1
call	sub_4284B1
pop	ecx
mov	ecx, eax
mov	[ebp+var_14], ecx
cmp	ecx, ebx
mov	byte ptr [ebp+var_4], 2
jz	short loc_415500
call	sub_40FBA8
jmp	short loc_415502

loc_415500:
xor	eax, eax

loc_415502:
push	eax
lea	ecx, [ebp+var_20]
mov	byte ptr [ebp+var_4], 1
mov	[ebp+var_1C], eax
call	sub_43D0DB
mov	ecx, [ebp+var_1C]
push	[ebp+arg_4]
lea	eax, [ebp+var_204]
mov	[ecx+30h], eax
lea	ecx, [ebp+var_30]
call	sub_40312C
push	[ebp+arg_0]
lea	ecx, [ebp+var_3C]
call	sub_40312C
lea	ecx, [ebp+var_3C]
call	sub_42C33B
push	[ebp+var_10]
lea	ecx, [ebp+var_24]
call	sub_43D0DB
mov	esi, [ebp+var_1C]
mov	al, [ebp+arg_8]
push	[ebp+arg_C]
lea	ecx, [esi+1Ch]
mov	[esi+18h], al
call	sub_40312C
mov	eax, edi
add	edi, 4
neg	eax
sbb	eax, eax
mov	[esi+28h], ebx
and	eax, edi
mov	[esi+2Ch], ebx
lea	ecx, [ebp+var_254]
push	dword ptr [eax]	; hWndParent
push	[ebp+arg_4]	; int
call	sub_424FE9
mov	esi, eax
cmp	esi, ebx
jnz	short loc_415588
mov	esi, [ebp+var_210]

loc_415588:
lea	ecx, [ebp+var_254]
mov	byte ptr [ebp+var_4], bl
call	sub_415626
mov	eax, [ebp+var_10]
or	[ebp+var_4], 0FFFFFFFFh
cmp	eax, ebx
jz	short loc_4155A7
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_4155A7:
mov	eax, esi

loc_4155A9:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	10h
sub_415474 endp



; Attributes: bp-based frame

sub_4155BA proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444D3E
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	edi
mov	[ebp+var_10], esi
call	sub_40F2E5
lea	ecx, [esi+218h]
xor	edi, edi
push	3
mov	[ebp+var_4], edi
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
lea	ecx, [esi+224h]
push	3
mov	byte ptr [ebp+var_4], 1
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
mov	ecx, [ebp+var_C]
mov	[esi+230h], edi
mov	[esi+234h], edi
mov	dword ptr [esi], offset	off_44C398
mov	eax, esi
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_4155BA endp



; Attributes: bp-based frame

sub_415626 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444D7A
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	eax, [esi+234h]
mov	[ebp+var_4], 3
test	eax, eax
jz	short loc_41564E
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_41564E:
mov	eax, [esi+230h]
mov	byte ptr [ebp+var_4], 2
test	eax, eax
jz	short loc_415662
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_415662:		; Memory
push	dword ptr [esi+224h]
call	sub_4284D8
push	dword ptr [esi+218h] ; Memory
call	sub_4284D8
or	[ebp+var_4], 0FFFFFFFFh
pop	ecx
pop	ecx
mov	ecx, esi
call	sub_40F3F1
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_415626 endp



; Attributes: bp-based frame

sub_415692 proc	near

var_34=	byte ptr -34h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_444D8C
call	__EH_prolog
sub	esp, 28h
push	esi
mov	esi, [ebp+arg_0]
push	edi
mov	edi, ecx
mov	ecx, [esi+70h]
mov	edx, [edi+0D8h]
call	sub_42828A
test	eax, eax
jz	short loc_4156BC
xor	eax, eax
jmp	short loc_41570E

loc_4156BC:
lea	ecx, [ebp+var_34]
call	sub_40283B
and	[ebp+var_4], 0
lea	eax, [ebp+var_34]
push	eax
mov	ecx, edi
call	sub_4167F4
lea	eax, [esi+80h]
mov	ecx, edi
push	eax
mov	al, [esi+7Ch]
push	eax
push	esi
add	esi, 0Ch
push	esi
call	sub_415474
test	eax, eax
jz	short loc_4156F2
xor	esi, esi
jmp	short loc_415700

loc_4156F2:
lea	eax, [ebp+var_34]
mov	ecx, edi
push	eax
call	sub_41687D
push	1
pop	esi

loc_415700:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_34]
call	sub_40299B
mov	eax, esi

loc_41570E:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_415692 endp

call	sub_415728
jmp	loc_41577A



sub_415728 proc	near
mov	ecx, offset dword_45D918
jmp	$+5

loc_415732:
mov	eax, offset loc_444DA0
call	__EH_prolog
push	ecx
push	ecx
push	esi
mov	esi, ecx
mov	[ebp-14h], esi
and	dword ptr [esi], 0
and	dword ptr [ebp-4], 0
xor	edx, edx
call	sub_441900
test	eax, eax
jz	short loc_41576B
lea	eax, [ebp-10h]
push	offset unk_44D120
push	eax
mov	dword ptr [ebp-10h], 8F3CA5h
call	_CxxThrowException

loc_41576B:
mov	ecx, [ebp-0Ch]
mov	eax, esi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_415728 endp


loc_41577A:
push	offset loc_415786
call	_atexit
pop	ecx
retn

loc_415786:
mov	ecx, offset dword_45D918
jmp	$+5		; Microsoft VisualC 2-11/net runtime

unknown_libname_3:	; Microsoft VisualC 2-11/net runtime
push	esi
mov	esi, ecx
call	sub_4418F0
mov	ecx, esi
pop	esi
jmp	sub_441850


; Attributes: bp-based frame

sub_4157A0 proc	near

var_134= byte ptr -134h
var_128= byte ptr -128h
var_11C= byte ptr -11Ch
var_D4=	byte ptr -0D4h
var_CC=	dword ptr -0CCh
var_C8=	dword ptr -0C8h
var_B4=	dword ptr -0B4h
var_B0=	dword ptr -0B0h
var_AC=	byte ptr -0ACh
var_A8=	dword ptr -0A8h
var_9C=	dword ptr -9Ch
var_94=	dword ptr -94h
var_85=	byte ptr -85h
var_84=	dword ptr -84h
var_78=	dword ptr -78h
Memory=	dword ptr -6Ch
var_68=	dword ptr -68h
var_64=	dword ptr -64h
lpFileName= dword ptr -60h
var_54=	byte ptr -54h
var_50=	dword ptr -50h
var_44=	dword ptr -44h
var_40=	dword ptr -40h
var_3C=	dword ptr -3Ch
var_38=	dword ptr -38h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_15=	byte ptr -15h
var_14=	dword ptr -14h
var_D= byte ptr	-0Dh
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= byte ptr	 14h

mov	eax, offset loc_444EC7
call	__EH_prolog
sub	esp, 128h
push	ebx
push	esi
push	edi
lea	eax, [ebp+var_38]
push	[ebp+arg_0]
mov	edi, ecx
push	eax
call	sub_41733B
xor	ebx, ebx
lea	ecx, [ebp+var_38]
mov	[ebp+var_4], ebx
call	sub_415294
test	al, al
jz	short loc_4157E8
push	3020284h
push	8ECh
mov	ecx, edi
call	sub_40E58A
jmp	loc_415FD3

loc_4157E8:
mov	[ebp+var_14], ebx
mov	eax, [edi+0FCh]
lea	edx, [ebp+var_14]
push	edx
push	offset unk_44B6A0
mov	ecx, [eax]
push	eax
mov	byte ptr [ebp+var_4], 1
call	dword ptr [ecx]
cmp	eax, ebx
jz	short loc_415831
push	3020208h
push	8A0h
mov	ecx, edi
call	sub_40E58A

loc_415818:
mov	eax, [ebp+var_14]
mov	byte ptr [ebp+var_4], bl
cmp	eax, ebx
jz	loc_415FD3
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
jmp	loc_415FD3

loc_415831:
cmp	byte ptr [ebp+arg_4], bl
jz	short loc_41584D
cmp	byte ptr [ebp+arg_8], bl
jz	short loc_415847
lea	ecx, [ebp+var_38]
call	sub_4152E1
test	al, al
jnz	short loc_41584D

loc_415847:
mov	byte ptr [ebp+arg_4+3],	1
jmp	short loc_415850

loc_41584D:
mov	byte ptr [ebp+arg_4+3],	bl

loc_415850:
lea	eax, [ebp+var_38]
lea	edx, [edi+0D8h]
push	eax
lea	ecx, [ebp+var_A8]
mov	[ebp+var_CC], edx
call	sub_40356A
lea	ecx, [ebp+var_50]
mov	byte ptr [ebp+var_4], 2
mov	[ebp+var_54], bl
call	sub_403079
push	off_45B91C
lea	ecx, [ebp+var_54]
mov	byte ptr [ebp+var_4], 3
call	sub_42AF90
lea	eax, [ebp+var_50]
lea	ecx, [ebp+var_84]
push	eax
call	sub_4030F2
lea	eax, [ebp+var_84]
lea	ecx, [ebp+var_78]
push	eax
mov	byte ptr [ebp+var_4], 4
call	sub_4030F2
lea	ecx, [ebp+var_78]
mov	byte ptr [ebp+var_4], 5
call	sub_42C33B
lea	edx, [ebp+var_38]
lea	ecx, [ebp+Memory]
call	sub_433FAC
push	eax
lea	edx, [ebp+var_78]
lea	ecx, [ebp+lpFileName]
mov	byte ptr [ebp+var_4], 6
call	sub_40356A
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 8
call	sub_4284D8
pop	ecx
lea	ecx, [ebp+var_134]
call	sub_4145AE
lea	eax, [ebp+var_38]
lea	ecx, [ebp+var_134]
push	eax
mov	byte ptr [ebp+var_4], 9
call	sub_40312C
lea	eax, [ebp+var_84]
lea	ecx, [ebp+var_128]
push	eax
call	sub_40312C
lea	eax, [ebp+lpFileName]
lea	ecx, [ebp+var_11C]
push	eax
call	sub_40312C
cmp	byte ptr [ebp+arg_4+3],	bl
mov	[ebp+var_D4], 1
jz	loc_415A8B
mov	[ebp+var_28], ebx
mov	eax, [edi+0FCh]
lea	edx, [ebp+var_28]
push	edx
push	offset unk_44B790
mov	ecx, [eax]
push	eax
mov	byte ptr [ebp+var_4], 0Ah
call	dword ptr [ecx]
mov	eax, [ebp+var_28]
cmp	eax, ebx
jz	loc_415A7D
mov	[ebp+var_24], ebx
mov	ecx, [eax]
lea	edx, [ebp+var_24]
push	edx
mov	byte ptr [ebp+var_4], 0Bh
push	[ebp+arg_0]
push	eax
call	dword ptr [ecx+0Ch]
mov	eax, [ebp+var_24]
cmp	eax, ebx
jz	loc_415A6C
mov	[ebp+var_2C], ebx
mov	ecx, [eax]
lea	edx, [ebp+var_2C]
push	edx
push	offset unk_44B7E0
push	eax
mov	byte ptr [ebp+var_4], 0Ch
call	dword ptr [ecx]
cmp	[ebp+var_2C], ebx
jz	loc_415A58
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+Memory], ebx
mov	[ebp+var_68], ebx
mov	[ebp+var_64], ebx
call	sub_403396
lea	eax, [ebp+var_85]
mov	ecx, edi
push	eax
lea	eax, [ebp+Memory]
push	eax
lea	eax, [ebp+var_A8]
push	eax
lea	eax, [ebp+var_134]
push	eax
mov	byte ptr [ebp+var_4], 0Dh
push	[ebp+var_2C]
call	sub_414144
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 0Ch
neg	eax
sbb	al, al
inc	al
mov	[ebp+var_15], al
call	sub_4284D8
cmp	[ebp+var_15], bl
pop	ecx
jz	short loc_415A58
mov	ecx, edi
mov	[ebp+var_54], bl
call	sub_4166B3
mov	eax, [ebp+var_2C]
mov	byte ptr [ebp+var_4], 0Bh
cmp	eax, ebx
jz	short loc_415A04
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_415A04:
mov	eax, [ebp+var_24]
mov	byte ptr [ebp+var_4], 0Ah
cmp	eax, ebx
jz	short loc_415A15
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_415A15:
mov	eax, [ebp+var_28]
mov	byte ptr [ebp+var_4], 9
cmp	eax, ebx
jz	short loc_415A26
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_415A26:
lea	ecx, [ebp+var_134]
call	sub_406EDD
push	[ebp+lpFileName] ; Memory
call	sub_4284D8
push	[ebp+var_78]	; Memory
call	sub_4284D8
push	[ebp+var_84]	; Memory
call	sub_4284D8
add	esp, 0Ch
mov	byte ptr [ebp+var_4], 0Eh
jmp	loc_415D33

loc_415A58:
mov	eax, [ebp+var_2C]
mov	byte ptr [ebp+var_4], 0Bh
cmp	eax, ebx
jz	short loc_415A69
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_415A69:
mov	eax, [ebp+var_24]

loc_415A6C:
cmp	eax, ebx
mov	byte ptr [ebp+var_4], 0Ah
jz	short loc_415A7A
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_415A7A:
mov	eax, [ebp+var_28]

loc_415A7D:
cmp	eax, ebx
mov	byte ptr [ebp+var_4], 9
jz	short loc_415A8B
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_415A8B:
push	4
lea	ecx, [ebp+var_C8]
call	sub_402794
mov	[ebp+var_C8], offset off_44B518
push	[ebp+arg_0]
lea	ecx, [ebp+var_C8]
mov	byte ptr [ebp+var_4], 0Fh
call	sub_429907
lea	ecx, [ebp+var_9C]
call	sub_40337B
mov	esi, offset off_44B510
mov	[ebp+var_9C], esi
push	3
lea	ecx, [ebp+var_44]
mov	byte ptr [ebp+var_4], 10h
mov	[ebp+var_D], bl
mov	[ebp+var_44], ebx
mov	[ebp+var_40], ebx
mov	[ebp+var_3C], ebx
call	sub_403396
cmp	[edi+0ECh], ebx
mov	byte ptr [ebp+var_4], 11h
jle	short loc_415B12
mov	eax, [edi+0ECh]
mov	ecx, [edi+0F0h]
mov	eax, [ecx+eax*4-4]
mov	cl, [eax+70h]
add	eax, 74h
mov	[ebp+var_D], cl
push	eax
lea	ecx, [ebp+var_44]
call	sub_40312C

loc_415B12:
lea	eax, [ebp+var_44]
mov	ecx, edi
push	eax
lea	eax, [ebp+var_D]
push	eax
lea	eax, [ebp+var_9C]
push	eax
push	1
lea	eax, [ebp+var_78]
push	ebx
push	eax
lea	eax, [ebp+var_C8]
push	eax
call	sub_40F4C6
cmp	[edi+0ECh], ebx
mov	[ebp+arg_0], eax
jle	short loc_415B63
mov	eax, [edi+0ECh]
mov	ecx, [edi+0F0h]
mov	eax, [ecx+eax*4-4]
mov	cl, [ebp+var_D]
mov	[eax+70h], cl
lea	ecx, [ebp+var_44]
push	ecx
lea	ecx, [eax+74h]
call	sub_40312C

loc_415B63:
cmp	[ebp+var_94], ebx
jz	short loc_415BD9
push	[ebp+var_44]	; Memory
call	sub_4284D8
pop	ecx
mov	[ebp+var_9C], esi
lea	ecx, [ebp+var_9C]
mov	byte ptr [ebp+var_4], 12h
call	sub_428327
lea	ecx, [ebp+var_9C]
mov	byte ptr [ebp+var_4], 0Fh
call	sub_4282FE
lea	ecx, [ebp+var_C8]
mov	byte ptr [ebp+var_4], 9
call	sub_4282FE
lea	ecx, [ebp+var_134]
call	sub_406EDD
push	[ebp+lpFileName] ; Memory
call	sub_4284D8
push	[ebp+var_78]	; Memory
call	sub_4284D8
push	[ebp+var_84]	; Memory
call	sub_4284D8
add	esp, 0Ch
mov	byte ptr [ebp+var_4], 13h
jmp	loc_415D33

loc_415BD9:
cmp	[ebp+arg_0], ebx
jz	loc_415C63
cmp	[ebp+arg_0], 80004004h
jz	short loc_415BF5
push	[ebp+arg_0]
mov	ecx, edi
call	sub_40E579

loc_415BF5:		; Memory
push	[ebp+var_44]
call	sub_4284D8
pop	ecx
mov	[ebp+var_9C], esi
lea	ecx, [ebp+var_9C]
mov	byte ptr [ebp+var_4], 14h
call	sub_428327
lea	ecx, [ebp+var_9C]
mov	byte ptr [ebp+var_4], 0Fh
call	sub_4282FE
lea	ecx, [ebp+var_C8]
mov	byte ptr [ebp+var_4], 9
call	sub_4282FE
lea	ecx, [ebp+var_134]
call	sub_406EDD
push	[ebp+lpFileName] ; Memory
call	sub_4284D8
push	[ebp+var_78]	; Memory
call	sub_4284D8
push	[ebp+var_84]	; Memory
call	sub_4284D8
add	esp, 0Ch
mov	byte ptr [ebp+var_4], 15h
jmp	loc_415D33

loc_415C63:
cmp	byte ptr [ebp+arg_4+3],	bl
jz	loc_415D55
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+Memory], ebx
mov	[ebp+var_68], ebx
mov	[ebp+var_64], ebx
call	sub_403396
lea	eax, [ebp+arg_0+3]
mov	ecx, edi
push	eax
lea	eax, [ebp+Memory]
push	eax
lea	eax, [ebp+var_A8]
push	eax
lea	eax, [ebp+var_134]
push	eax
push	ebx
mov	byte ptr [ebp+var_4], 16h
call	sub_414144
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 11h
neg	eax
sbb	al, al
inc	al
mov	byte ptr [ebp+arg_4+3],	al
call	sub_4284D8
cmp	byte ptr [ebp+arg_4+3],	bl
pop	ecx
jz	loc_415D55
mov	ecx, edi
mov	[ebp+var_54], bl
call	sub_4166B3
push	[ebp+var_44]	; Memory
call	sub_4284D8
pop	ecx
mov	[ebp+var_9C], esi
lea	ecx, [ebp+var_9C]
mov	byte ptr [ebp+var_4], 17h
call	sub_428327
lea	ecx, [ebp+var_9C]
mov	byte ptr [ebp+var_4], 0Fh
call	sub_4282FE
lea	ecx, [ebp+var_C8]
mov	byte ptr [ebp+var_4], 9
call	sub_4282FE
lea	ecx, [ebp+var_134]
call	sub_406EDD
push	[ebp+lpFileName] ; Memory
call	sub_4284D8
push	[ebp+var_78]	; Memory
call	sub_4284D8
push	[ebp+var_84]	; Memory
call	sub_4284D8
add	esp, 0Ch
mov	byte ptr [ebp+var_4], 18h

loc_415D33:
lea	ecx, [ebp+var_54]
call	sub_4027FD
push	[ebp+var_50]	; Memory
call	sub_4284D8
push	[ebp+var_A8]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx
jmp	loc_415818

loc_415D55:		; Size
push	90h
call	sub_4284B1
pop	ecx
mov	[ebp+arg_4], eax
cmp	eax, ebx
mov	byte ptr [ebp+var_4], 19h
jz	short loc_415D76
mov	ecx, eax
call	sub_41600C
mov	esi, eax
jmp	short loc_415D78

loc_415D76:
xor	esi, esi

loc_415D78:
mov	[ebp+var_20], esi
lea	eax, [ebp+var_84]
lea	ecx, [esi+0Ch]
push	eax
mov	byte ptr [ebp+var_4], 1Ah
call	sub_40312C
lea	eax, [ebp+lpFileName]
lea	ecx, [esi+18h]
push	eax
call	sub_40312C
mov	byte ptr [esi+60h], 1
mov	al, [ebp+var_D]
mov	[esi+7Ch], al
lea	eax, [ebp+var_44]
push	eax
lea	ecx, [esi+80h]
call	sub_40312C
push	[ebp+lpFileName] ; lpFileName
lea	ecx, [esi+28h]
call	sub_42B49E
test	al, al
jnz	loc_415E66
mov	ecx, [ebp+var_20] ; Memory
mov	byte ptr [ebp+var_4], 11h
cmp	ecx, ebx
jz	short loc_415DD8
push	1		; char
call	sub_4162DF

loc_415DD8:		; Memory
push	[ebp+var_44]
call	sub_4284D8
pop	ecx
mov	[ebp+var_9C], offset off_44B510
lea	ecx, [ebp+var_9C]
mov	byte ptr [ebp+var_4], 1Bh
call	sub_428327
lea	ecx, [ebp+var_9C]
mov	byte ptr [ebp+var_4], 0Fh
call	sub_4282FE
lea	ecx, [ebp+var_C8]
mov	byte ptr [ebp+var_4], 9
call	sub_4282FE
lea	ecx, [ebp+var_134]
call	sub_406EDD
push	[ebp+lpFileName] ; Memory
call	sub_4284D8
push	[ebp+var_78]	; Memory
call	sub_4284D8
push	[ebp+var_84]	; Memory
call	sub_4284D8
add	esp, 0Ch
lea	ecx, [ebp+var_54]
mov	byte ptr [ebp+var_4], 1Ch
call	sub_4027FD
push	[ebp+var_50]	; Memory
call	sub_4284D8
push	[ebp+var_A8]	; Memory
call	sub_4284D8
pop	ecx
jmp	loc_415FC7

loc_415E66:
mov	[ebp+var_B0], esi
mov	[ebp+var_AC], 1
cmp	byte ptr [ebp+arg_8], bl
mov	byte ptr [ebp+var_4], 1Dh
jz	loc_415F45
lea	ecx, [ebp+var_1C]
call	sub_416074
cmp	[ebp+arg_C], bl
mov	byte ptr [ebp+var_4], 1Eh
lea	eax, [edi+4]
jz	short loc_415EAA
neg	edi
sbb	edi, edi
lea	ecx, [ebp+lpFileName]
and	edi, eax
lea	eax, [ebp+var_1C]
push	eax
mov	edx, [edi]
call	sub_414D93
jmp	short loc_415EC2

loc_415EAA:
neg	edi
sbb	edi, edi
lea	ecx, [ebp+var_1C]
and	edi, eax
push	ecx		; int
lea	edx, [ebp+lpFileName]
lea	ecx, [ebp+var_78]
mov	eax, [edi]
push	eax		; hWnd
call	sub_415020

loc_415EC2:
cmp	[ebp+var_1C], ebx
jz	short loc_415F39
mov	edi, [edi]
push	[ebp+var_CC]
lea	ecx, [esi+70h]
mov	[esi+6Ch], edi
call	sub_40312C
lea	eax, [ebp+var_38]
mov	ecx, esi
push	eax
call	sub_40312C
mov	eax, [ebp+var_1C]
mov	[ebp+var_1C], ebx
mov	[esi+68h], eax
mov	[ebp+var_B4], ebx
push	esi
mov	edx, offset sub_41607A
lea	ecx, [ebp+var_B4]
mov	byte ptr [ebp+var_4], 1Fh
call	sub_441890
test	eax, eax
jz	short loc_415F22
lea	eax, [ebp+arg_8]
push	offset unk_44D120
push	eax
mov	[ebp+arg_8], 425D0h
call	_CxxThrowException

loc_415F22:
lea	ecx, [ebp+var_B4]
mov	[ebp+var_54], bl
mov	[ebp+var_20], ebx
mov	[ebp+var_AC], bl
call	sub_441850

loc_415F39:
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 1Dh
call	sub_415FED

loc_415F45:
lea	ecx, [ebp+var_B0]
mov	byte ptr [ebp+var_4], 1Ah
call	sub_416066
lea	ecx, [ebp+var_20]
mov	byte ptr [ebp+var_4], 11h
call	sub_416245
push	[ebp+var_44]	; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 0Fh
lea	ecx, [ebp+var_9C]
call	sub_40327C
lea	ecx, [ebp+var_C8]
mov	byte ptr [ebp+var_4], 9
call	sub_4282FE
lea	ecx, [ebp+var_134]
call	sub_406EDD
push	[ebp+lpFileName] ; Memory
call	sub_4284D8
push	[ebp+var_78]	; Memory
call	sub_4284D8
push	[ebp+var_84]	; Memory
call	sub_4284D8
add	esp, 0Ch
lea	ecx, [ebp+var_54]
mov	byte ptr [ebp+var_4], 2
call	sub_4027CD
push	[ebp+var_A8]	; Memory
call	sub_4284D8

loc_415FC7:
pop	ecx
mov	byte ptr [ebp+var_4], bl
lea	ecx, [ebp+var_14]
call	sub_4370A0

loc_415FD3:		; Memory
push	[ebp+var_38]
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	10h
sub_4157A0 endp




sub_415FED proc	near
push	esi
mov	esi, ecx
mov	eax, [esi]
test	eax, eax
jz	short loc_416008
push	eax		; hObject
call	ds:CloseHandle
test	eax, eax
jnz	short loc_416005
xor	al, al
pop	esi
retn

loc_416005:
and	dword ptr [esi], 0

loc_416008:
mov	al, 1
pop	esi
retn
sub_415FED endp



; Attributes: bp-based frame

sub_41600C proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444EE7
call	__EH_prolog
push	ecx
push	ebx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
call	sub_4145AE
lea	ecx, [esi+70h]
xor	ebx, ebx
push	3
mov	[ebp+var_4], ebx
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
lea	ecx, [esi+80h]
mov	[esi+7Ch], bl
push	3
mov	byte ptr [ebp+var_4], 1
mov	[ecx], ebx
mov	[ecx+4], ebx
mov	[ecx+8], ebx
call	sub_403396
mov	ecx, [ebp+var_C]
mov	eax, esi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_41600C endp




sub_416066 proc	near
cmp	byte ptr [ecx+4], 0
jz	short locret_416073
mov	ecx, [ecx]
jmp	sub_41491E

locret_416073:
retn
sub_416066 endp




sub_416074 proc	near
mov	eax, ecx
and	dword ptr [eax], 0
retn
sub_416074 endp



; Attributes: bp-based frame

; int __stdcall	sub_41607A(LPARAM lParam)
sub_41607A proc	near

var_68=	dword ptr -68h
var_64=	dword ptr -64h
FileTime1= FILETIME ptr	-50h
var_40=	dword ptr -40h
Memory=	dword ptr -30h
lpText=	dword ptr -24h
Handles= dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
lParam=	dword ptr  8

mov	eax, offset loc_444F0C
call	__EH_prolog
sub	esp, 5Ch
push	ebx
push	esi
mov	esi, [ebp+lParam]
push	edi
mov	[ebp+lParam], esi
mov	eax, dword_45D918
mov	edi, [esi+68h]
and	[ebp+var_4], 0
mov	[ebp+Handles], eax
push	0FFFFFFFFh	; dwMilliseconds
lea	eax, [ebp+Handles]
push	0		; bWaitAll
push	eax		; lpHandles
push	2		; nCount
mov	[ebp+var_14], edi
call	ds:WaitForMultipleObjects
push	edi		; hObject
mov	ebx, eax
call	ds:CloseHandle
test	ebx, ebx
jnz	short loc_4160C3
xor	esi, esi
jmp	short loc_4160CB

loc_4160C3:
cmp	ebx, 1
jz	short loc_4160DE
push	1
pop	esi

loc_4160CB:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+lParam]
call	sub_416245
mov	eax, esi
jmp	loc_4161EA

loc_4160DE:		; dwMilliseconds
push	0C8h
call	ds:Sleep
lea	ecx, [ebp+var_68]
call	sub_404EA2
push	dword ptr [esi+18h] ; lpFileName
lea	eax, [esi+18h]
lea	ecx, [ebp+var_68]
mov	byte ptr [ebp+var_4], 1
mov	[ebp+var_10], eax
call	sub_42B49E
test	al, al
jz	loc_4161CC
mov	eax, [ebp+var_68]
cmp	eax, [esi+28h]
jnz	short loc_416134
mov	eax, [ebp+var_64]
cmp	eax, [esi+2Ch]
jnz	short loc_416134
lea	eax, [esi+40h]
push	eax		; lpFileTime2
lea	eax, [ebp+FileTime1]
push	eax		; lpFileTime1
call	ds:CompareFileTime
test	eax, eax
jz	loc_4161CC

loc_416134:
push	esi
push	3020280h
mov	edx, 8E8h
lea	ecx, [ebp+lpText]
call	sub_40744B
mov	ebx, offset a7Zip ; "7-Zip"
mov	edi, ds:MessageBoxW
push	21h		; uType
push	ebx		; lpCaption
push	[ebp+lpText]	; lpText
mov	byte ptr [ebp+var_4], 2
push	hWnd		; hWnd
call	edi ; MessageBoxW
cmp	eax, 1
jnz	short loc_4161BF
push	esi		; lParam
push	0		; wParam
push	404h		; Msg
push	dword ptr [esi+6Ch] ; hWnd
call	ds:SendMessageA
cmp	eax, 1
jz	short loc_4161BF
push	[ebp+var_10]
mov	edx, 8E9h
lea	ecx, [ebp+Memory]
push	3020281h
call	sub_40744B
mov	eax, [eax]
push	10h		; uType
push	ebx		; lpCaption
push	eax		; lpText
push	hWnd		; hWnd
call	edi ; MessageBoxW
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+lpText]	; Memory
call	sub_4284D8
push	[ebp+var_40]	; Memory
call	sub_4284D8
add	esp, 0Ch
jmp	short loc_4161DC

loc_4161BF:		; Memory
push	[ebp+lpText]
mov	byte ptr [ebp+var_4], 1
call	sub_4284D8
pop	ecx

loc_4161CC:
mov	ecx, esi
call	sub_41491E
push	[ebp+var_40]	; Memory
call	sub_4284D8
pop	ecx

loc_4161DC:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+lParam]
call	sub_416245
xor	eax, eax

loc_4161EA:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_41607A endp



; Attributes: bp-based frame

sub_4161FB proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset unknown_libname_23 ; Microsoft VisualC 2-11/net runtime
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	90h		; Size
call	sub_4284B1
pop	ecx
mov	ecx, eax
mov	[ebp+var_10], ecx
xor	eax, eax
cmp	ecx, eax
mov	[ebp+var_4], eax
jz	short loc_41622A
push	[ebp+arg_0]
call	sub_41625C

loc_41622A:
or	[ebp+var_4], 0FFFFFFFFh
push	eax
mov	ecx, esi
call	sub_429907
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_4161FB endp




sub_416245 proc	near
push	esi
mov	esi, [ecx]
test	esi, esi
jz	short loc_41625A
mov	ecx, esi
call	sub_416372
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_41625A:
pop	esi
retn
sub_416245 endp



; Attributes: bp-based frame

sub_41625C proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_444F55
call	__EH_prolog
push	ecx
push	esi
push	edi
mov	edi, [ebp+arg_0]
mov	esi, ecx
push	edi
mov	[ebp+var_10], esi
call	sub_4162FB
mov	eax, [edi+68h]
and	[ebp+var_4], 0
mov	[esi+68h], eax
mov	eax, [edi+6Ch]
mov	byte ptr [ebp+var_4], 1
test	eax, eax
mov	[esi+6Ch], eax
jz	short loc_416295
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+4]

loc_416295:
mov	al, [edi+70h]
lea	ecx, [esi+74h]
mov	[esi+70h], al
lea	eax, [edi+74h]
push	eax
mov	byte ptr [ebp+var_4], 2
call	sub_4030F2
mov	al, [edi+80h]
add	edi, 84h
push	edi
lea	ecx, [esi+84h]
mov	byte ptr [ebp+var_4], 3
mov	[esi+80h], al
call	sub_4030F2
mov	ecx, [ebp+var_C]
mov	eax, esi
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_41625C endp




; int __thiscall sub_4162DF(void *Memory, char)
sub_4162DF proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_416372
test	[esp+4+arg_0], 1
jz	short loc_4162F5
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_4162F5:
mov	eax, esi
pop	esi
retn	4
sub_4162DF endp



; Attributes: bp-based frame

sub_4162FB proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_444F7E
call	__EH_prolog
push	ecx
push	ebx
push	esi
mov	esi, [ebp+arg_0]
push	edi
mov	ebx, ecx
push	esi
mov	[ebp+var_10], ebx
call	sub_4030F2
and	[ebp+var_4], 0
lea	eax, [esi+0Ch]
push	eax
lea	ecx, [ebx+0Ch]
call	sub_4030F2
lea	eax, [esi+18h]
lea	ecx, [ebx+18h]
push	eax
mov	byte ptr [ebp+var_4], 1
call	sub_4030F2
lea	eax, [esi+28h]
lea	edx, [ebx+28h]
push	0Ah
mov	esi, eax
pop	ecx
mov	edi, edx
rep movsd
add	eax, 28h
lea	ecx, [edx+28h]
push	eax
mov	byte ptr [ebp+var_4], 2
call	sub_4030F2
mov	eax, [ebp+arg_0]
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	al, [eax+60h]
mov	[ebx+60h], al
mov	eax, ebx
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_4162FB endp




sub_416372 proc	near
push	esi
mov	esi, ecx
push	dword ptr [esi+80h] ; Memory
call	sub_4284D8
push	dword ptr [esi+70h] ; Memory
call	sub_4284D8
pop	ecx
pop	ecx
mov	ecx, esi
call	sub_406EDD
pop	esi
retn
sub_416372 endp



; Attributes: bp-based frame

sub_416393 proc	near

var_58=	dword ptr -58h
var_54=	dword ptr -54h
var_50=	dword ptr -50h
var_4C=	dword ptr -4Ch
var_48=	word ptr -48h
var_44=	dword ptr -44h
var_40=	byte ptr -40h
var_3C=	dword ptr -3Ch
Memory=	dword ptr -38h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
bstrString= dword ptr -18h
var_14=	dword ptr -14h
var_E= word ptr	-0Eh
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444FA0
call	__EH_prolog
sub	esp, 4Ch
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
push	edi
cmp	[esi+114h], bl
jz	short loc_4163B4
call	sub_4176F6

loc_4163B4:
mov	edi, ds:SendMessageA
push	ebx		; lParam
push	ebx		; wParam
push	1009h		; Msg
push	dword ptr [esi+74h] ; hWnd
call	edi ; SendMessageA
lea	ecx, [esi+90h]
call	sub_428327
mov	ecx, esi
call	sub_417699
mov	al, [esi+13Ch]
lea	ecx, [esi+140h]
mov	[esi+16Ch], al
call	sub_428327
mov	eax, [esi+0FCh]
lea	edx, [ebp+var_2C]
mov	byte ptr [esi+114h], 1
push	edx
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+24h]
cmp	[ebp+var_2C], ebx
mov	[ebp+var_14], ebx
jle	loc_4164D1

loc_416412:
mov	[ebp+bstrString], ebx
lea	edx, [ebp+var_E]
mov	eax, [esi+0FCh]
push	edx
lea	edx, [ebp+var_28]
mov	ecx, [eax]
push	edx
lea	edx, [ebp+bstrString]
mov	[ebp+var_4], ebx
push	edx
push	[ebp+var_14]
push	eax
call	dword ptr [ecx+28h]
cmp	eax, ebx
mov	[ebp+var_24], eax
jnz	loc_41652F
cmp	[ebp+var_28], 6
jz	short loc_4164B5
push	3
lea	ecx, [ebp+var_58]
mov	[ebp+var_58], ebx
mov	[ebp+var_54], ebx
mov	[ebp+var_50], ebx
call	sub_403396
mov	ax, [ebp+var_E]
mov	edx, [ebp+var_28]
push	[ebp+bstrString]
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 1
mov	[ebp+var_48], ax
mov	[ebp+var_4C], edx
call	sub_41D835
push	eax
lea	ecx, [ebp+var_58]
mov	byte ptr [ebp+var_4], 2
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 1
call	sub_4284D8
or	[ebp+var_44], 0FFFFFFFFh
pop	ecx
lea	eax, [ebp+var_58]
lea	ecx, [esi+140h]
push	eax
mov	[ebp+var_40], 1
mov	[ebp+var_3C], 64h
call	sub_417BA1
push	[ebp+var_58]	; Memory
call	sub_4284D8
pop	ecx

loc_4164B5:		; bstrString
push	[ebp+bstrString]
or	[ebp+var_4], 0FFFFFFFFh
call	ds:SysFreeString
inc	[ebp+var_14]
mov	eax, [ebp+var_14]
cmp	eax, [ebp+var_2C]
jl	loc_416412

loc_4164D1:		; lParam
push	ebx
push	ebx		; wParam
push	101Ch		; Msg
push	dword ptr [esi+74h] ; hWnd
call	edi ; SendMessageA
test	eax, eax
jnz	short loc_4164D1
cmp	[esi+12Ch], ebx
mov	[ebp+var_20], ebx
mov	[ebp+var_14], ebx
jle	loc_416581

loc_4164F3:
mov	eax, [esi+130h]
mov	ecx, [ebp+var_14]
mov	[ebp+var_1C], ebx
mov	eax, [eax+ecx*4]
mov	ecx, [esi+148h]
cmp	ecx, ebx
jle	short loc_416545
mov	edi, [esi+14Ch]
mov	edx, [eax]
mov	[ebp+var_24], edi

loc_416517:
mov	edi, [ebp+var_24]
mov	edi, [edi]
cmp	[edi+0Ch], edx
jz	short loc_416540
inc	[ebp+var_1C]
add	[ebp+var_24], 4
cmp	[ebp+var_1C], ecx
jl	short loc_416517
jmp	short loc_416545

loc_41652F:		; bstrString
push	[ebp+bstrString]
call	ds:SysFreeString
mov	eax, [ebp+var_24]
jmp	loc_416606

loc_416540:
mov	ecx, [ebp+var_1C]
jmp	short loc_416548

loc_416545:
or	ecx, 0FFFFFFFFh

loc_416548:
cmp	ecx, ebx
jl	short loc_41656F
mov	edx, [esi+14Ch]
mov	edi, [edx+ecx*4]
mov	cl, [eax+4]
mov	[edi+18h], cl
mov	ecx, [eax+8]
mov	[edi+1Ch], ecx
cmp	[eax+4], bl
jz	short loc_41656F
mov	eax, [ebp+var_20]
inc	[ebp+var_20]
mov	[edi+14h], eax

loc_41656F:
inc	[ebp+var_14]
mov	eax, [ebp+var_14]
cmp	eax, [esi+12Ch]
jl	loc_4164F3

loc_416581:
xor	ecx, ecx
cmp	[esi+148h], ebx
jle	short loc_4165A9
mov	edx, [ebp+var_20]

loc_41658E:
mov	eax, [esi+14Ch]
mov	eax, [eax+ecx*4]
cmp	[eax+14h], ebx
jge	short loc_4165A0
mov	[eax+14h], edx
inc	edx

loc_4165A0:
inc	ecx
cmp	ecx, [esi+148h]
jl	short loc_41658E

loc_4165A9:
lea	ecx, [esi+154h]
call	sub_428327
xor	edi, edi
cmp	[esi+148h], ebx
jle	short loc_4165E1

loc_4165BE:
mov	eax, [esi+14Ch]
mov	eax, [eax+edi*4]
cmp	[eax+18h], bl
jz	short loc_4165D8
push	eax
lea	ecx, [esi+154h]
call	sub_417BA1

loc_4165D8:
inc	edi
cmp	edi, [esi+148h]
jl	short loc_4165BE

loc_4165E1:
mov	eax, [esi+138h]
lea	edi, [esi+15Ch]
mov	[esi+168h], eax
cmp	[edi], ebx
jle	short loc_416604

loc_4165F7:		; wParam
push	ebx
mov	ecx, esi
call	sub_416615
inc	ebx
cmp	ebx, [edi]
jl	short loc_4165F7

loc_416604:
xor	eax, eax

loc_416606:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_416393 endp



; Attributes: bp-based frame

; int __stdcall	sub_416615(WPARAM wParam)
sub_416615 proc	near

lParam=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_C= dword ptr -0Ch
var_4= dword ptr -4
wParam=	dword ptr  8

push	ebp
mov	ebp, esp
sub	esp, 20h
push	ebx
mov	ebx, [ebp+wParam]
push	esi
push	edi
mov	edi, ecx
mov	eax, [edi+160h]
mov	esi, [eax+ebx*4]
mov	[ebp+lParam], 2Fh
mov	eax, [esi+1Ch]
mov	[ebp+var_18], eax
mov	dx, [esi+10h]
mov	ecx, [esi+0Ch]
call	sub_416670
mov	[ebp+var_1C], eax
mov	eax, [esi+14h]
mov	[ebp+var_4], eax
mov	[ebp+var_C], ebx
mov	eax, [esi]
mov	[ebp+var_14], eax
lea	eax, [ebp+lParam]
push	eax		; lParam
push	ebx		; wParam
push	1061h		; Msg
push	dword ptr [edi+74h] ; hWnd
call	ds:SendMessageA
pop	edi
pop	esi
pop	ebx
leave
retn	4
sub_416615 endp




sub_416670 proc	near
cmp	ecx, 0Ah
jb	short loc_41667A
cmp	ecx, 0Ch
jbe	short loc_4166B0

loc_41667A:
movzx	eax, dx
cmp	eax, 0Bh
jg	short loc_416697
jz	short loc_4166AC
test	eax, eax
jz	short loc_4166B0
cmp	eax, 1
jle	short loc_4166A8
cmp	eax, 3
jle	short loc_4166AC
cmp	eax, 8
jmp	short loc_4166A6

loc_416697:
cmp	eax, 10h
jz	short loc_4166B0
jle	short loc_4166A8
cmp	eax, 17h
jle	short loc_4166AC
cmp	eax, 40h

loc_4166A6:
jz	short loc_4166B0

loc_4166A8:
push	2
jmp	short loc_4166AE

loc_4166AC:
push	1

loc_4166AE:
pop	eax
retn

loc_4166B0:
xor	eax, eax
retn
sub_416670 endp



; Attributes: bp-based frame

sub_4166B3 proc	near

var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
Memory=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_444FC4
call	__EH_prolog
sub	esp, 20h
push	esi
xor	eax, eax
mov	esi, offset off_44B510
push	edi
mov	edi, ecx
mov	[ebp+var_28], eax
mov	[ebp+var_24], eax
mov	[ebp+var_20], eax
mov	[ebp+var_1C], 4
mov	[ebp+var_2C], esi
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+var_4], eax
mov	[ebp+Memory], eax
mov	[ebp+var_14], eax
mov	[ebp+var_10], eax
call	sub_403396
lea	eax, [ebp+var_2C]
mov	ecx, edi
push	eax
push	1
lea	eax, [ebp+Memory]
push	0FFFFFFFFh
push	eax
mov	byte ptr [ebp+var_4], 1
call	sub_416958
push	[ebp+Memory]	; Memory
mov	edi, eax
call	sub_4284D8
pop	ecx
mov	[ebp+var_2C], esi
lea	ecx, [ebp+var_2C]
mov	[ebp+var_4], 2
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_2C]
call	sub_4282FE
mov	ecx, [ebp+var_C]
mov	eax, edi
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_4166B3 endp



; Attributes: bp-based frame

sub_416744 proc	near

var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_444FE0
call	__EH_prolog
sub	esp, 24h
push	ebx
push	esi
push	edi
mov	edi, [ebp+arg_0]
mov	[ebp+var_10], ecx
mov	ecx, edi
call	sub_428327
xor	ebx, ebx
mov	[ebp+var_20], 4
mov	[ebp+var_2C], ebx
mov	[ebp+var_28], ebx
mov	[ebp+var_24], ebx
mov	[ebp+var_30], offset off_44B518
mov	ecx, [ebp+var_10]
lea	eax, [ebp+var_30]
push	eax
mov	[ebp+var_4], ebx
call	sub_41708B
push	[ebp+var_28]
mov	ecx, edi
call	sub_428378
xor	esi, esi
cmp	[ebp+var_28], ebx
jle	short loc_4167CA

loc_41679A:
mov	eax, [ebp+var_24]
mov	ecx, [ebp+var_10]
push	dword ptr [eax+esi*4]
lea	eax, [ebp+Memory]
push	eax
call	sub_4174B8
push	eax
mov	ecx, edi
mov	byte ptr [ebp+var_4], 1
call	sub_4032B4
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
inc	esi
pop	ecx
cmp	esi, [ebp+var_28]
jl	short loc_41679A

loc_4167CA:
push	ebx
push	offset sub_417C9E
mov	ecx, edi
call	sub_43748B
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_30]
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_416744 endp



; Attributes: bp-based frame

sub_4167F4 proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_444FF4
call	__EH_prolog
sub	esp, 0Ch
push	ebx
push	esi
push	edi
mov	edi, [ebp+arg_0]
mov	ebx, ecx
mov	eax, [edi+4]
and	dword ptr [edi+8], 0
lea	esi, [edi+4]
lea	ecx, [edi+14h]
and	word ptr [eax],	0
mov	[ebp+arg_0], ecx
call	sub_428327
lea	ecx, [ebx+74h]
call	sub_402DF8
test	eax, eax
mov	[edi], eax
jl	short loc_416862
push	eax
mov	ecx, ebx
call	sub_402875
cmp	eax, 0FFFFFFFFh
jz	short loc_416862
push	eax
lea	eax, [ebp+Memory]
push	eax
mov	ecx, ebx
call	sub_4174B8
and	[ebp+var_4], 0
push	eax
mov	ecx, esi
call	sub_40312C
push	[ebp+Memory]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
pop	ecx

loc_416862:
push	[ebp+arg_0]
mov	ecx, ebx
call	sub_416744
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_4167F4 endp



; Attributes: bp-based frame

sub_41687D proc	near

arg_0= dword ptr  8

push	ebp
mov	ebp, esp
mov	eax, [ebp+arg_0]
cmp	byte ptr [ecx+8Fh], 0
mov	dl, [eax+10h]
mov	byte ptr [ebp+arg_0], dl
jz	short loc_416896
mov	byte ptr [ebp+arg_0], 1

loc_416896:
lea	edx, [eax+14h]
push	edx
push	[ebp+arg_0]
push	dword ptr [eax]
add	eax, 4
push	eax
call	sub_416958
pop	ebp
retn	4
sub_41687D endp



; Attributes: bp-based frame

sub_4168AC proc	near

var_34=	byte ptr -34h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445008
call	__EH_prolog
sub	esp, 28h
push	esi
mov	esi, ecx
lea	ecx, [ebp+var_34]
call	sub_40283B
and	[ebp+var_4], 0
lea	eax, [ebp+var_34]
push	eax
mov	ecx, esi
call	sub_4167F4
lea	eax, [ebp+var_34]
mov	ecx, esi
push	eax
call	sub_41687D
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_34]
mov	esi, eax
call	sub_40299B
mov	ecx, [ebp+var_C]
mov	eax, esi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_4168AC endp



; Attributes: bp-based frame

; int __stdcall	sub_4168FB(WPARAM wParam, char)
sub_4168FB proc	near

lParam=	dword ptr -28h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
wParam=	dword ptr  8
arg_4= byte ptr	 0Ch

push	ebp
mov	ebp, esp
sub	esp, 28h
cmp	[ebp+arg_4], 0
push	esi
push	1
mov	esi, ecx
pop	eax
jz	short loc_416910
push	3
pop	eax

loc_416910:
mov	[ebp+var_18], eax
mov	[ebp+var_1C], eax
lea	eax, [ebp+lParam]
push	eax		; lParam
push	[ebp+wParam]	; wParam
push	102Bh		; Msg
push	dword ptr [esi+74h] ; hWnd
call	ds:SendMessageA
cmp	byte ptr [esi+8Fh], 0
jnz	short loc_416953
cmp	[ebp+arg_4], 0
jz	short loc_416953
push	[ebp+wParam]
mov	ecx, esi
call	sub_402875
cmp	eax, 0FFFFFFFFh
jz	short loc_416953
mov	ecx, [esi+9Ch]
mov	byte ptr [ecx+eax], 1

loc_416953:
pop	esi
leave
retn	8
sub_4168FB endp



; Attributes: bp-based frame

sub_416958 proc	near

var_EC=	dword ptr -0ECh
var_DC=	dword ptr -0DCh
var_D0=	dword ptr -0D0h
var_C4=	dword ptr -0C4h
var_B8=	dword ptr -0B8h
var_AC=	dword ptr -0ACh
var_A0=	dword ptr -0A0h
pvarg= VARIANTARG ptr -94h
var_84=	dword ptr -84h
Dst= dword ptr -80h
var_7C=	dword ptr -7Ch
var_78=	dword ptr -78h
var_74=	dword ptr -74h
var_6C=	dword ptr -6Ch
var_64=	dword ptr -64h
var_60=	dword ptr -60h
var_58=	byte ptr -58h
var_57=	byte ptr -57h
var_54=	dword ptr -54h
var_50=	dword ptr -50h
var_44=	dword ptr -44h
var_40=	byte ptr -40h
var_3C=	dword ptr -3Ch
Memory=	dword ptr -38h
var_34=	dword ptr -34h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_15=	byte ptr -15h
var_14=	dword ptr -14h
wParam=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= byte ptr	 10h
arg_C= dword ptr  14h

mov	eax, offset loc_445091
call	__EH_prolog
sub	esp, 0D0h
push	ebx
push	esi
push	edi
mov	edi, ecx
xor	ebx, ebx
mov	[ebp+wParam], edi
mov	[edi+0D7h], bl
call	sub_4132CA
lea	ecx, [ebp+var_58]
mov	[ebp+var_54], edi
call	sub_4028C8
cmp	[ebp+arg_4], ebx
mov	[ebp+var_4], ebx
jge	short loc_416993
mov	[ebp+arg_4], ebx

loc_416993:
mov	esi, ds:SendMessageA
push	ebx		; lParam
add	edi, 74h
push	ebx		; wParam
push	0Bh		; Msg
push	dword ptr [edi]	; hWnd
call	esi ; SendMessageA
push	28h		; Size
lea	eax, [ebp+Dst]
push	ebx		; Val
push	eax		; Dst
call	memset
add	esp, 0Ch
push	ebx		; lParam
push	ebx		; wParam
push	1009h		; Msg
push	dword ptr [edi]	; hWnd
call	esi ; SendMessageA
mov	eax, [ebp+wParam]
lea	ecx, [eax+90h]
call	sub_428327
mov	ecx, [ebp+wParam]
cmp	[ecx+0FCh], ebx
mov	[ecx+178h], ebx
mov	[ecx+17Ch], bl
jnz	short loc_4169EB
call	sub_41298B
mov	ecx, [ebp+wParam]

loc_4169EB:
call	sub_40E69B
neg	al
sbb	al, al
push	0
inc	al
mov	[ebp+var_15], al
pop	eax
setnz	al
movzx	eax, ax
push	eax		; lParam
mov	eax, [ebp+wParam]
push	64h		; wParam
push	401h		; Msg
push	dword ptr [eax+4Ch] ; hWnd
call	esi ; SendMessageA
mov	[ebp+var_1C], ebx
mov	eax, [ebp+wParam]
lea	edx, [ebp+var_1C]
push	edx
push	offset unk_44B660
mov	eax, [eax+0FCh]
mov	byte ptr [ebp+var_4], 1
push	eax
mov	ecx, [eax]
call	dword ptr [ecx]
mov	eax, [ebp+var_1C]
cmp	eax, ebx
jz	short loc_416A4E
mov	edx, [ebp+wParam]
mov	eax, [eax]
xor	ecx, ecx
cmp	[edx+0D4h], bl
setnz	cl
push	ecx
push	[ebp+var_1C]
call	dword ptr [eax+0Ch]

loc_416A4E:
mov	eax, [ebp+wParam]
mov	eax, [eax+0FCh]
push	eax
mov	ecx, [eax]
call	dword ptr [ecx+0Ch]
cmp	eax, ebx
mov	[ebp+var_24], eax
jz	short loc_416A79
mov	eax, [ebp+var_1C]
mov	byte ptr [ebp+var_4], bl
cmp	eax, ebx
jz	short loc_416A74
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_416A74:
mov	esi, [ebp+var_24]
jmp	short loc_416A9B

loc_416A79:
mov	ecx, [ebp+wParam]
call	sub_416393
cmp	eax, ebx
mov	[ebp+var_24], eax
jz	short loc_416AAE
mov	eax, [ebp+var_1C]
mov	byte ptr [ebp+var_4], bl
cmp	eax, ebx
jz	short loc_416A98
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_416A98:
mov	esi, [ebp+var_24]

loc_416A9B:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_58]
call	sub_4028F2
mov	eax, esi
jmp	loc_416FFF

loc_416AAE:
mov	eax, [ebp+wParam]
lea	edx, [ebp+var_3C]
push	edx
mov	eax, [eax+0FCh]
push	eax
mov	ecx, [eax]
call	dword ptr [ecx+10h]
mov	ecx, [ebp+wParam]
cmp	[ecx+8Ch], bl
jz	short loc_416AD9
call	sub_40E69B
test	al, al
mov	[ebp+var_40], 1
jz	short loc_416ADC

loc_416AD9:
mov	[ebp+var_40], bl

loc_416ADC:
xor	eax, eax
cmp	[ebp+var_40], bl
push	ebx		; lParam
setnz	al
add	eax, [ebp+var_3C]
push	eax		; wParam
push	102Fh		; Msg
push	dword ptr [edi]	; hWnd
call	esi ; SendMessageA
mov	eax, [ebp+wParam]
push	[ebp+var_3C]
lea	ecx, [eax+90h]
call	sub_428378
or	[ebp+var_2C], 0FFFFFFFFh
mov	[ebp+var_28], ebx
mov	ecx, [ebp+wParam]
mov	byte ptr [ebp+var_4], 2
call	sub_40E6A6
test	al, al
jz	short loc_416B25
mov	eax, [ebp+wParam]
cmp	[eax+8Dh], bl
jz	short loc_416B3C

loc_416B25:
mov	eax, [ebp+wParam]
lea	edx, [ebp+var_28]
push	edx
push	offset unk_44B690
mov	eax, [eax+0FCh]
push	eax
mov	ecx, [eax]
call	dword ptr [ecx]

loc_416B3C:
cmp	[ebp+var_40], bl
jz	loc_416BFE
push	offset a__	; ".."
lea	ecx, [ebp+Memory]
call	sub_403091
push	ebx		; lParam
push	ebx		; wParam
push	1004h		; Msg
mov	byte ptr [ebp+var_4], 3
push	dword ptr [edi]	; hWnd
call	esi ; SendMessageA
mov	ecx, [ebp+Memory]
mov	[ebp+var_7C], eax
mov	eax, [ebp+arg_0]
mov	edx, [eax]
call	sub_4282B1
cmp	eax, ebx
jnz	short loc_416B7B
mov	eax, [ebp+var_7C]
mov	[ebp+var_2C], eax

loc_416B7B:
mov	eax, [ebp+Memory]
or	[ebp+var_60], 0FFFFFFFFh
mov	[ebp+var_6C], eax
lea	eax, [ebp+Memory]
push	eax
mov	eax, [ebp+wParam]
push	10h
mov	[ebp+Dst], 7
lea	ecx, [eax+8]
mov	[ebp+var_78], ebx
call	sub_41FD73
cmp	eax, ebx
mov	[ebp+var_64], eax
jge	short loc_416BAA
mov	[ebp+var_64], ebx

loc_416BAA:
lea	eax, [ebp+Dst]
push	eax		; lParam
push	ebx		; wParam
push	104Dh		; Msg
push	dword ptr [edi]	; hWnd
call	esi ; SendMessageA
cmp	eax, 0FFFFFFFFh
jnz	short loc_416BF1
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_416BC6:
mov	eax, [ebp+var_28]
mov	byte ptr [ebp+var_4], 1
cmp	eax, ebx
jz	short loc_416BD7
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_416BD7:
mov	eax, [ebp+var_1C]
mov	byte ptr [ebp+var_4], bl
cmp	eax, ebx
jz	short loc_416BE7
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_416BE7:
mov	eax, 80004005h
jmp	loc_416FE7

loc_416BF1:		; Memory
push	[ebp+Memory]
mov	byte ptr [ebp+var_4], 2
call	sub_4284D8
pop	ecx

loc_416BFE:
cmp	[ebp+var_3C], ebx
mov	[ebp+var_20], ebx
jbe	loc_416F2A

loc_416C0A:
push	[ebp+var_20]
mov	ecx, [ebp+wParam]
lea	eax, [ebp+var_50]
push	eax
call	sub_41733B
push	[ebp+var_20]
mov	ecx, [ebp+wParam]
lea	eax, [ebp+var_A0]
mov	byte ptr [ebp+var_4], 4
push	eax
call	sub_4174B8
mov	eax, [ebp+arg_0]
mov	ecx, [ebp+var_A0]
mov	byte ptr [ebp+var_4], 5
mov	edx, [eax]
call	sub_4282B1
cmp	eax, ebx
jnz	short loc_416C55
push	ebx		; lParam
push	ebx		; wParam
push	1004h		; Msg
push	dword ptr [edi]	; hWnd
call	esi ; SendMessageA
mov	[ebp+var_2C], eax

loc_416C55:
mov	ecx, [ebp+arg_C]
lea	eax, [ebp+var_A0]
push	eax
mov	byte ptr [ebp+var_44], bl
call	sub_41FDCA
test	eax, eax
jl	short loc_416C6F
mov	byte ptr [ebp+var_44], 1

loc_416C6F:
mov	eax, [ebp+wParam]
push	[ebp+var_44]
lea	ecx, [eax+90h]
call	sub_417BE8
mov	eax, [ebp+wParam]
mov	[ebp+Dst], 7
cmp	[eax+8Fh], bl
jnz	short loc_416CA5
cmp	byte ptr [ebp+var_44], bl
jz	short loc_416CA5
mov	[ebp+Dst], 0Fh
mov	[ebp+var_74], 2

loc_416CA5:		; lParam
push	ebx
push	ebx		; wParam
push	1004h		; Msg
push	dword ptr [edi]	; hWnd
call	esi ; SendMessageA
mov	[ebp+var_7C], eax
mov	eax, [ebp+var_20]
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+var_78], ebx
mov	[ebp+var_60], eax
mov	[ebp+Memory], ebx
mov	[ebp+var_34], ebx
mov	[ebp+var_30], ebx
call	sub_403396
push	offset asc_45BA70 ; "	  "
lea	ecx, [ebp+var_B8]
mov	byte ptr [ebp+var_4], 6
call	sub_403091
lea	eax, [ebp+var_B8]
push	ebx
push	eax
lea	ecx, [ebp+var_50]
mov	byte ptr [ebp+var_4], 7
call	sub_40750B
push	[ebp+var_B8]	; Memory
mov	byte ptr [ebp+var_4], 6
test	eax, eax
setnl	[ebp+var_15]
call	sub_4284D8
cmp	[ebp+var_15], bl
pop	ecx
jz	loc_416DE9
mov	[ebp+var_14], ebx

loc_416D19:		; "	"
push	offset asc_45BA70
lea	ecx, [ebp+var_AC]
call	sub_403091
push	[ebp+var_14]
lea	eax, [ebp+var_AC]
lea	ecx, [ebp+var_50]
mov	byte ptr [ebp+var_4], 8
push	eax
call	sub_40750B
push	[ebp+var_AC]	; Memory
mov	[ebp+var_24], eax
mov	byte ptr [ebp+var_4], 6
call	sub_4284D8
cmp	[ebp+var_24], ebx
pop	ecx
jl	short loc_416DB9
mov	eax, [ebp+var_24]
lea	ecx, [ebp+var_50]
sub	eax, [ebp+var_14]
push	eax
lea	eax, [ebp+var_D0]
push	[ebp+var_14]
push	eax
call	sub_403434
push	eax
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 0Ah
call	sub_4031F2
push	[ebp+var_D0]	; Memory
mov	byte ptr [ebp+var_4], 6
call	sub_4284D8
lea	ecx, [ebp+Memory]
mov	[esp+0ECh+var_EC], offset a___ ; " ... "
call	sub_403195
mov	eax, [ebp+var_24]
mov	ecx, [ebp+var_50]
inc	eax
mov	[ebp+var_14], eax
lea	eax, [ecx+eax*2]

loc_416DA8:
cmp	word ptr [eax],	20h
jnz	loc_416D19
inc	[ebp+var_14]
inc	eax
inc	eax
jmp	short loc_416DA8

loc_416DB9:
push	[ebp+var_14]
lea	eax, [ebp+var_C4]
lea	ecx, [ebp+var_50]
push	eax
call	sub_405246
push	eax
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 9
call	sub_4031F2
push	[ebp+var_C4]	; Memory
call	sub_4284D8
mov	eax, [ebp+Memory]
pop	ecx
jmp	short loc_416DEC

loc_416DE9:
mov	eax, [ebp+var_50]

loc_416DEC:
mov	[ebp+var_6C], eax
mov	word ptr [ebp+pvarg.anonymous_0], bx
mov	word ptr [ebp+pvarg.anonymous_0+2], bx
mov	eax, [ebp+wParam]
lea	edx, [ebp+pvarg]
push	edx
push	9
mov	eax, [eax+0FCh]
push	[ebp+var_20]
mov	byte ptr [ebp+var_4], 0Bh
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+14h]
cmp	eax, ebx
mov	[ebp+var_24], eax
jnz	loc_417010
cmp	word ptr [ebp+pvarg.anonymous_0], 13h
mov	[ebp+var_14], ebx
jnz	short loc_416E3F
mov	eax, dword ptr [ebp+pvarg.anonymous_0+8]
mov	[ebp+var_14], eax
jmp	short loc_416E55

loc_416E3F:
push	[ebp+var_20]
mov	ecx, [ebp+wParam]
call	sub_41756F
test	al, al
jz	short loc_416E55
mov	[ebp+var_14], 10h

loc_416E55:
mov	eax, [ebp+var_28]
cmp	eax, ebx
jz	short loc_416E73
mov	ecx, [eax]
lea	edx, [ebp+var_64]
push	edx
push	[ebp+var_20]
push	eax
call	dword ptr [ecx+0Ch]
cmp	[ebp+var_64], ebx
setnle	al
cmp	al, bl
jnz	short loc_416ECB

loc_416E73:
mov	eax, [ebp+wParam]
cmp	[eax+0DCh], ebx
jnz	short loc_416EB9
push	5Ch
lea	edx, [ebp+var_50]
lea	ecx, [ebp+var_DC]
call	sub_409999
mov	eax, [eax]
mov	edx, [ebp+var_14]
lea	ecx, [ebp+var_84]
mov	byte ptr [ebp+var_4], 0Ch
push	ecx
mov	ecx, eax
call	sub_41FA10
push	[ebp+var_DC]	; Memory
call	sub_4284D8
mov	eax, [ebp+var_84]
pop	ecx
jmp	short loc_416EC8

loc_416EB9:
lea	ecx, [ebp+var_50]
push	ecx
lea	ecx, [eax+8]
push	[ebp+var_14]
call	sub_41FD73

loc_416EC8:
mov	[ebp+var_64], eax

loc_416ECB:
cmp	[ebp+var_64], ebx
jge	short loc_416ED3
mov	[ebp+var_64], ebx

loc_416ED3:
lea	eax, [ebp+Dst]
push	eax		; lParam
push	ebx		; wParam
push	104Dh		; Msg
push	dword ptr [edi]	; hWnd
call	esi ; SendMessageA
cmp	eax, 0FFFFFFFFh
mov	byte ptr [ebp+var_4], 6
lea	ecx, [ebp+pvarg] ; pvarg
jz	loc_417063
call	sub_42CDE1
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_A0]	; Memory
call	sub_4284D8
push	[ebp+var_50]	; Memory
mov	byte ptr [ebp+var_4], 2
call	sub_4284D8
add	esp, 0Ch
inc	[ebp+var_20]
mov	eax, [ebp+var_20]
cmp	eax, [ebp+var_3C]
jb	loc_416C0A

loc_416F2A:		; lParam
push	ebx
push	ebx		; wParam
push	1004h		; Msg
push	dword ptr [edi]	; hWnd
call	esi ; SendMessageA
cmp	eax, ebx
jle	short loc_416F4C
cmp	[ebp+var_2C], ebx
jl	short loc_416F4C
push	dword ptr [ebp+arg_8] ;	char
mov	ecx, [ebp+wParam]
push	[ebp+var_2C]	; wParam
call	sub_4168FB

loc_416F4C:		; lParam
push	offset sub_41BE11
push	[ebp+wParam]	; wParam
push	1030h		; Msg
push	dword ptr [edi]	; hWnd
call	esi ; SendMessageA
cmp	[ebp+var_2C], ebx
jge	short loc_416F9E
push	ebx		; lParam
push	ebx		; wParam
push	1004h		; Msg
push	dword ptr [edi]	; hWnd
call	esi ; SendMessageA
cmp	eax, ebx
jle	short loc_416F9E
push	ebx		; lParam
push	ebx		; wParam
push	1004h		; Msg
push	dword ptr [edi]	; hWnd
call	esi ; SendMessageA
cmp	[ebp+arg_4], eax
jl	short loc_416F90
push	ebx		; lParam
push	ebx		; wParam
push	1004h		; Msg
push	dword ptr [edi]	; hWnd
call	esi ; SendMessageA
dec	eax
mov	[ebp+arg_4], eax

loc_416F90:		; char
push	dword ptr [ebp+var_40]
mov	ecx, [ebp+wParam]
push	[ebp+arg_4]	; wParam
call	sub_4168FB

loc_416F9E:
mov	ecx, edi
call	sub_402DF8
push	ebx		; lParam
push	eax		; wParam
push	1013h		; Msg
push	dword ptr [edi]	; hWnd
call	esi ; SendMessageA
push	ebx		; lParam
push	1		; wParam
push	0Bh		; Msg
push	dword ptr [edi]	; hWnd
call	esi ; SendMessageA
push	1		; bErase
push	ebx		; lpRect
push	dword ptr [edi]	; hWnd
call	ds:InvalidateRect
mov	eax, [ebp+var_28]
mov	byte ptr [ebp+var_4], 1
cmp	eax, ebx
jz	short loc_416FD5
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_416FD5:
mov	eax, [ebp+var_1C]
mov	byte ptr [ebp+var_4], bl
cmp	eax, ebx
jz	short loc_416FE5
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_416FE5:
xor	eax, eax

loc_416FE7:
mov	edx, [ebp+var_54]
mov	cl, [ebp+var_58]
mov	[edx+184h], cl
mov	ecx, [ebp+var_54]
mov	dl, [ebp+var_57]
mov	[ecx+185h], dl

loc_416FFF:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	10h

loc_417010:		; pvarg
lea	ecx, [ebp+pvarg]
mov	byte ptr [ebp+var_4], 6
call	sub_42CDE1
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_A0]	; Memory
call	sub_4284D8
push	[ebp+var_50]	; Memory
call	sub_4284D8
mov	eax, [ebp+var_28]
add	esp, 0Ch
cmp	eax, ebx
mov	byte ptr [ebp+var_4], 1
jz	short loc_41704E
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_41704E:
mov	eax, [ebp+var_1C]
mov	byte ptr [ebp+var_4], bl
cmp	eax, ebx
jz	short loc_41705E
mov	ecx, [eax]	; pvarg
push	eax
call	dword ptr [ecx+8]

loc_41705E:
mov	eax, [ebp+var_24]
jmp	short loc_416FE7

loc_417063:
call	sub_42CDE1
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_A0]	; Memory
call	sub_4284D8
push	[ebp+var_50]	; Memory
call	sub_4284D8
add	esp, 0Ch
jmp	loc_416BC6
sub_416958 endp




sub_41708B proc	near

arg_0= dword ptr  4

push	ebx
mov	ebx, [esp+4+arg_0]
push	esi
mov	esi, ecx
push	edi
mov	ecx, ebx
call	sub_428327
xor	edi, edi
cmp	[esi+98h], edi
jle	short loc_4170C2

loc_4170A5:
mov	eax, [esi+9Ch]
cmp	byte ptr [edi+eax], 0
jz	short loc_4170B9
push	edi
mov	ecx, ebx
call	sub_429907

loc_4170B9:
inc	edi
cmp	edi, [esi+98h]
jl	short loc_4170A5

loc_4170C2:
mov	edx, [ebx+8]
mov	ecx, [ebx+0Ch]
call	sub_441740
pop	edi
pop	esi
pop	ebx
retn	4
sub_41708B endp




sub_4170D3 proc	near

arg_0= dword ptr  4

push	ebx
push	ebp
push	esi
mov	esi, [esp+0Ch+arg_0]
push	edi
mov	ebx, ecx
push	esi
call	sub_41708B
xor	eax, eax
cmp	[esi+8], eax
jnz	short loc_417137
mov	edi, ds:SendMessageA
push	eax		; lParam
lea	esi, [ebx+74h]
push	eax		; wParam
push	1032h		; Msg
push	dword ptr [esi]	; hWnd
call	edi ; SendMessageA
test	eax, eax
jz	short loc_417137
mov	ecx, esi
call	sub_402DF8
mov	ebp, eax
test	ebp, ebp
jl	short loc_417137
push	2		; lParam
push	ebp		; wParam
push	102Ch		; Msg
push	dword ptr [esi]	; hWnd
call	edi ; SendMessageA
cmp	eax, 2
jnz	short loc_417137
push	ebp
mov	ecx, ebx
call	sub_402875
cmp	eax, 0FFFFFFFFh
jz	short loc_417137
mov	ecx, [esp+10h+arg_0]
push	eax
call	sub_429907

loc_417137:
pop	edi
pop	esi
pop	ebp
pop	ebx
retn	4
sub_4170D3 endp



; Attributes: bp-based frame

sub_41713E proc	near

var_4= dword ptr -4
arg_0= dword ptr  8

push	ebp
mov	ebp, esp
push	ecx
push	esi
mov	esi, ecx
mov	ecx, [ebp+arg_0]
call	sub_428327
mov	eax, [esi+0FCh]
lea	edx, [ebp+var_4]
push	edx
push	eax
mov	ecx, [eax]
call	dword ptr [ecx+10h]
test	eax, eax
jnz	short loc_417177
xor	esi, esi
cmp	[ebp+var_4], esi
jbe	short loc_417177

loc_417168:
mov	ecx, [ebp+arg_0]
push	esi
call	sub_429907
inc	esi
cmp	esi, [ebp+var_4]
jb	short loc_417168

loc_417177:
pop	esi
leave
retn	4
sub_41713E endp




sub_41717C proc	near

arg_0= dword ptr  4

push	esi
mov	esi, [esp+4+arg_0]
push	edi
mov	edi, ecx
push	esi
call	sub_4170D3
mov	eax, [esi+8]
test	eax, eax
jz	short loc_41719E
cmp	eax, 1
jnz	short loc_4171A6
mov	eax, [esi+0Ch]
cmp	dword ptr [eax], 0FFFFFFFFh
jnz	short loc_4171A6

loc_41719E:
push	esi
mov	ecx, edi
call	sub_41713E

loc_4171A6:
pop	edi
pop	esi
retn	4
sub_41717C endp




sub_4171AB proc	near
push	esi
mov	esi, ecx
push	edi
lea	ecx, [esi+74h]
call	sub_402DF8
test	eax, eax
jl	short loc_4171DE
push	eax
mov	ecx, esi
call	sub_402875
mov	edi, eax
cmp	edi, 0FFFFFFFFh
jz	short loc_4171DE
push	edi
mov	ecx, esi
call	sub_41756F
test	al, al
jnz	short loc_4171DE
push	edi
mov	ecx, esi
call	sub_414D14

loc_4171DE:
pop	edi
pop	esi
retn
sub_4171AB endp




sub_4171E1 proc	near
push	esi
mov	esi, ecx
push	edi
lea	ecx, [esi+74h]
call	sub_402DF8
test	eax, eax
jl	short loc_41721D
push	eax
mov	ecx, esi
call	sub_402875
mov	edi, eax
mov	ecx, esi
push	edi
call	sub_41756F
test	al, al
jz	short loc_417211
push	edi
mov	ecx, esi
call	sub_414015
jmp	short loc_41721D

loc_417211:
push	0
push	1
push	edi
mov	ecx, esi
call	sub_41515C

loc_41721D:
pop	edi
pop	esi
retn
sub_4171E1 endp



; Attributes: bp-based frame

sub_417220 proc	near

var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= byte ptr	 8

mov	eax, offset loc_4450A4
call	__EH_prolog
sub	esp, 14h
xor	eax, eax
push	ebx
mov	ebx, ecx
mov	[ebp+var_1C], eax
mov	[ebp+var_18], eax
mov	[ebp+var_14], eax
mov	[ebp+var_10], 4
mov	[ebp+var_20], offset off_44B518
mov	[ebp+var_4], eax
lea	eax, [ebp+var_20]
push	eax
call	sub_4170D3
cmp	[ebp+var_18], 14h
jle	short loc_41727D
push	2000606h
push	8E7h
mov	ecx, ebx
call	sub_40E58A
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_20]
call	sub_4282FE
jmp	loc_41732C

loc_41727D:
push	esi
lea	esi, [ebx+74h]
push	edi
mov	ecx, esi
call	sub_402DF8
mov	edi, eax
test	edi, edi
jl	short loc_4172CD
push	edi
mov	ecx, ebx
call	sub_402875
cmp	eax, 0FFFFFFFFh
jnz	short loc_4172CD
cmp	[ebp+arg_0], 0
jnz	short loc_4172A8
cmp	[ebp+var_18], 0
jnz	short loc_4172CD

loc_4172A8:		; lParam
push	2
push	edi		; wParam
push	102Ch		; Msg
push	dword ptr [esi]	; hWnd
call	ds:SendMessageA
cmp	eax, 2
jnz	short loc_4172CD
push	0
lea	ecx, [ebp+var_20]
call	sub_428462
mov	eax, [ebp+var_14]
or	dword ptr [eax], 0FFFFFFFFh

loc_4172CD:
xor	edi, edi
cmp	[ebp+var_18], edi
jle	short loc_41731E

loc_4172D4:
mov	eax, [ebp+var_14]
mov	ecx, ebx
mov	esi, [eax+edi*4]
push	esi
call	sub_41756F
test	al, al
jz	short loc_4172F6
cmp	[ebp+arg_0], 0
push	esi
mov	ecx, ebx
jnz	short loc_417319
call	sub_414E65
jmp	short loc_417311

loc_4172F6:
cmp	[ebp+arg_0], 0
jz	short loc_417304
push	1
pop	eax
cmp	[ebp+var_18], eax
jz	short loc_417306

loc_417304:
xor	eax, eax

loc_417306:
push	1
push	eax
push	esi
mov	ecx, ebx
call	sub_41515C

loc_417311:
inc	edi
cmp	edi, [ebp+var_18]
jl	short loc_4172D4
jmp	short loc_41731E

loc_417319:
call	sub_414015

loc_41731E:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_20]
call	sub_4282FE
pop	edi
pop	esi

loc_41732C:
mov	ecx, [ebp+var_C]
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_417220 endp



; Attributes: bp-based frame

sub_41733B proc	near

pvarg= VARIANTARG ptr -20h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_4450CF
call	__EH_prolog
sub	esp, 14h
and	[ebp+var_10], 0
cmp	[ebp+arg_4], 0FFFFFFFFh
push	esi
jnz	short loc_417362
mov	ecx, [ebp+arg_0]
push	offset a__	; ".."
call	sub_403091
jmp	short loc_4173D6

loc_417362:
and	word ptr [ebp+pvarg.anonymous_0], 0
and	word ptr [ebp+pvarg.anonymous_0+2], 0
mov	eax, [ecx+0FCh]
push	1
pop	esi
lea	edx, [ebp+pvarg]
mov	ecx, [eax]
push	edx
push	4
mov	[ebp+var_4], esi
push	[ebp+arg_4]
push	eax
call	dword ptr [ecx+14h]
test	eax, eax
jz	short loc_4173A0
lea	eax, [ebp+arg_4]
push	offset unk_44D120
push	eax
mov	[ebp+arg_4], 298E48h
call	_CxxThrowException

loc_4173A0:
cmp	word ptr [ebp+pvarg.anonymous_0], 8
jz	short loc_4173BC
lea	eax, [ebp+arg_4]
push	offset unk_44D120
push	eax
mov	[ebp+arg_4], 298E49h
call	_CxxThrowException

loc_4173BC:
push	dword ptr [ebp+pvarg.anonymous_0+8]
mov	ecx, [ebp+arg_0]
call	sub_403091
and	byte ptr [ebp+var_4], 0
lea	ecx, [ebp+pvarg] ; pvarg
mov	[ebp+var_10], esi
call	sub_42CDE1

loc_4173D6:
mov	ecx, [ebp+var_C]
mov	eax, [ebp+arg_0]
pop	esi
mov	large fs:0, ecx
leave
retn	8
sub_41733B endp



; Attributes: bp-based frame

sub_4173E8 proc	near

pvarg= VARIANTARG ptr -2Ch
Memory=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_445103
call	__EH_prolog
sub	esp, 20h
push	ebx
xor	ebx, ebx
cmp	[ebp+arg_4], 0FFFFFFFFh
push	esi
mov	[ebp+var_10], ebx
jnz	short loc_41741D
mov	esi, [ebp+arg_0]
push	3
mov	ecx, esi
mov	[esi], ebx
mov	[esi+4], ebx
mov	[esi+8], ebx
call	sub_403396
mov	eax, esi
jmp	loc_4174A8

loc_41741D:
mov	word ptr [ebp+pvarg.anonymous_0], bx
mov	word ptr [ebp+pvarg.anonymous_0+2], bx
mov	eax, [ecx+0FCh]
push	1
pop	esi
lea	edx, [ebp+pvarg]
mov	ecx, [eax]
push	edx
push	1Eh
mov	[ebp+var_4], esi
push	[ebp+arg_4]
push	eax
call	dword ptr [ecx+14h]
test	eax, eax
jz	short loc_417459
lea	eax, [ebp+arg_4]
push	offset unk_44D120
push	eax
mov	[ebp+arg_4], 298E48h
call	_CxxThrowException

loc_417459:
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+Memory], ebx
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
call	sub_403396
cmp	word ptr [ebp+pvarg.anonymous_0], 8
mov	byte ptr [ebp+var_4], 2
jnz	short loc_417482
push	dword ptr [ebp+pvarg.anonymous_0+8]
lea	ecx, [ebp+Memory]
call	sub_404722

loc_417482:
mov	ecx, [ebp+arg_0]
lea	eax, [ebp+Memory]
push	eax
call	sub_4030F2
push	[ebp+Memory]	; Memory
mov	[ebp+var_10], esi
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], bl
lea	ecx, [ebp+pvarg] ; pvarg
call	sub_42CDE1
mov	eax, [ebp+arg_0]

loc_4174A8:
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	8
sub_4173E8 endp



; Attributes: bp-based frame

sub_4174B8 proc	near

var_28=	dword ptr -28h
Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_445120
call	__EH_prolog
sub	esp, 1Ch
and	[ebp+var_10], 0
push	esi
push	edi
lea	eax, [ebp+var_28]
push	[ebp+arg_4]
mov	esi, ecx
push	eax
call	sub_41733B
mov	edi, eax
push	[ebp+arg_4]
and	[ebp+var_4], 0
lea	eax, [ebp+Memory]
mov	ecx, esi
push	eax
call	sub_4173E8
mov	ecx, [ebp+arg_0]
push	edi
mov	edx, eax
mov	byte ptr [ebp+var_4], 1
call	sub_40356A
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_28]	; Memory
call	sub_4284D8
mov	eax, [ebp+arg_0]
pop	ecx
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	8
sub_4174B8 endp



; Attributes: bp-based frame

sub_417521 proc	near

Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_445134
call	__EH_prolog
sub	esp, 10h
and	[ebp+var_10], 0
push	esi
push	[ebp+arg_4]
lea	eax, [ebp+Memory]
mov	esi, ecx
push	eax
call	sub_4174B8
mov	ecx, [ebp+arg_0]
and	[ebp+var_4], 0
push	eax
lea	edx, [esi+0D8h]
call	sub_40356A
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	eax, [ebp+arg_0]
pop	ecx
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	8
sub_417521 endp



; Attributes: bp-based frame

sub_41756F proc	near

pvarg= VARIANTARG ptr -1Ch
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_445148
call	__EH_prolog
sub	esp, 10h
cmp	[ebp+arg_0], 0FFFFFFFFh
push	ebx
jnz	short loc_417587
mov	al, 1
jmp	short loc_4175F6

loc_417587:
xor	ebx, ebx
mov	word ptr [ebp+pvarg.anonymous_0], bx
mov	word ptr [ebp+pvarg.anonymous_0+2], bx
mov	eax, [ecx+0FCh]
lea	edx, [ebp+pvarg]
push	edx
push	6
push	[ebp+arg_0]
mov	ecx, [eax]
mov	[ebp+var_4], ebx
push	eax
call	dword ptr [ecx+14h]
test	eax, eax
jz	short loc_4175C2
lea	eax, [ebp+arg_0]
push	offset unk_44D120
push	eax
mov	[ebp+arg_0], 298E48h
call	_CxxThrowException

loc_4175C2:
cmp	word ptr [ebp+pvarg.anonymous_0], 0Bh
jnz	short loc_4175D2
cmp	word ptr [ebp+pvarg.anonymous_0+8], bx
setnz	bl
jmp	short loc_4175D8

loc_4175D2:
cmp	word ptr [ebp+pvarg.anonymous_0], bx
jnz	short loc_4175E8

loc_4175D8:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+pvarg] ; pvarg
call	sub_42CDE1
mov	al, bl
jmp	short loc_4175F6

loc_4175E8:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+pvarg] ; pvarg
call	sub_42CDE1
xor	al, al

loc_4175F6:
mov	ecx, [ebp+var_C]
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_41756F endp



; Attributes: bp-based frame

sub_417605 proc	near

pvarg= VARIANTARG ptr -1Ch
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_44515C
call	__EH_prolog
sub	esp, 10h
cmp	[ebp+arg_0], 0FFFFFFFFh
push	esi
jz	short loc_417666
xor	esi, esi
mov	word ptr [ebp+pvarg.anonymous_0], si
mov	word ptr [ebp+pvarg.anonymous_0+2], si
mov	eax, [ecx+0FCh]
lea	edx, [ebp+pvarg]
push	edx
push	7
push	[ebp+arg_0]
mov	ecx, [eax]
mov	[ebp+var_4], esi
push	eax
call	dword ptr [ecx+14h]
test	eax, eax
jz	short loc_417654
lea	eax, [ebp+arg_0]
push	offset unk_44D120
push	eax
mov	[ebp+arg_0], 298E48h
call	_CxxThrowException

loc_417654:
cmp	word ptr [ebp+pvarg.anonymous_0], si
jnz	short loc_41766C
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+pvarg] ; pvarg
call	sub_42CDE1

loc_417666:
xor	eax, eax
xor	edx, edx
jmp	short loc_41768A

loc_41766C:
push	edi
lea	ecx, [ebp+pvarg]
call	sub_42D2C6
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+pvarg] ; pvarg
mov	esi, eax
mov	edi, edx
call	sub_42CDE1
mov	edx, edi
mov	eax, esi
pop	edi

loc_41768A:
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_417605 endp



; Attributes: bp-based frame

sub_417699 proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445170
call	__EH_prolog
sub	esp, 0Ch
push	esi
lea	eax, [ebp+Memory]
push	edi
mov	esi, ecx
push	eax
call	sub_40E5DA
and	[ebp+var_4], 0
lea	edi, [esi+118h]
push	eax
mov	ecx, edi
call	sub_40312C
push	[ebp+Memory]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
cmp	dword ptr [esi+11Ch], 0
pop	ecx
jz	short loc_4176E8
lea	edx, [esi+124h]
mov	ecx, edi
call	sub_420A31

loc_4176E8:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_417699 endp



; Attributes: bp-based frame

sub_4176F6 proc	near

lParam=	dword ptr -5Ch
var_54=	dword ptr -54h
var_40=	dword ptr -40h
var_3C=	dword ptr -3Ch
var_28=	dword ptr -28h
var_24=	byte ptr -24h
var_20=	dword ptr -20h
var_1C=	byte ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_44518C
call	__EH_prolog
sub	esp, 50h
push	ebx
push	esi
push	edi
mov	ebx, ecx
xor	edi, edi
cmp	[ebx+15Ch], edi
jle	short loc_417752

loc_417712:
mov	eax, [ebx+160h]
mov	esi, [eax+edi*4]
lea	eax, [ebp+lParam]
push	eax		; lParam
push	edi		; wParam
push	1019h		; Msg
mov	[ebp+lParam], 22h
push	dword ptr [ebx+74h] ; hWnd
call	ds:SendMessageA
test	eax, eax
jz	loc_4177C1
mov	eax, [ebp+var_40]
inc	edi
mov	[esi+14h], eax
mov	eax, [ebp+var_54]
mov	[esi+1Ch], eax
cmp	edi, [ebx+15Ch]
jl	short loc_417712

loc_417752:
lea	ecx, [ebp+var_3C]
call	sub_40337B
mov	[ebp+var_3C], offset off_44BA44
mov	eax, [ebx+168h]
xor	esi, esi
push	esi
push	offset sub_417CE7
lea	ecx, [ebx+154h]
mov	[ebp+var_4], esi
mov	[ebp+var_14], eax
call	sub_43748B
mov	eax, [ebx+15Ch]
mov	[ebp+var_10], esi
cmp	eax, esi
jle	short loc_4177EF

loc_41778D:
mov	eax, [ebx+160h]
mov	ecx, [ebp+var_10]
push	0Ch		; Size
mov	eax, [eax+ecx*4]
mov	cl, [eax+18h]
mov	[ebp+var_1C], cl
mov	ecx, [eax+0Ch]
mov	eax, [eax+1Ch]
mov	[ebp+var_20], ecx
mov	[ebp+var_18], eax
call	sub_4284B1
test	eax, eax
pop	ecx
jz	short loc_4177D6
lea	esi, [ebp+var_20]
mov	edi, eax
movsd
movsd
movsd
jmp	short loc_4177D8

loc_4177C1:
lea	eax, [ebp+var_10]
push	offset unk_44D120
push	eax
mov	[ebp+var_10], 1
call	_CxxThrowException

loc_4177D6:
xor	eax, eax

loc_4177D8:
push	eax
lea	ecx, [ebp+var_3C]
call	sub_429907
inc	[ebp+var_10]
mov	eax, [ebp+var_10]
cmp	eax, [ebx+15Ch]
jl	short loc_41778D

loc_4177EF:
and	[ebp+var_10], 0
cmp	dword ptr [ebx+148h], 0
jle	short loc_41784D

loc_4177FC:
mov	eax, [ebx+14Ch]
mov	ecx, [ebp+var_10]
mov	eax, [eax+ecx*4]
cmp	byte ptr [eax+18h], 0
jnz	short loc_41783F
mov	ecx, [eax+0Ch]
mov	eax, [eax+1Ch]
and	[ebp+var_1C], 0
push	0Ch		; Size
mov	[ebp+var_20], ecx
mov	[ebp+var_18], eax
call	sub_4284B1
test	eax, eax
pop	ecx
jz	short loc_417834
lea	esi, [ebp+var_20]
mov	edi, eax
movsd
movsd
movsd
jmp	short loc_417836

loc_417834:
xor	eax, eax

loc_417836:
push	eax
lea	ecx, [ebp+var_3C]
call	sub_429907

loc_41783F:
inc	[ebp+var_10]
mov	eax, [ebp+var_10]
cmp	eax, [ebx+148h]
jl	short loc_4177FC

loc_41784D:
mov	eax, [ebp+var_14]
lea	esi, [ebx+124h]
mov	[ebp+var_28], eax
mov	al, [ebx+16Ch]
mov	[ebp+var_24], al
lea	eax, [ebp+var_3C]
push	eax
mov	ecx, esi
call	sub_4178BB
test	al, al
jnz	short loc_41788A
lea	edx, [ebp+var_3C]
lea	ecx, [ebx+118h]
call	sub_420825
lea	eax, [ebp+var_3C]
mov	ecx, esi
push	eax
call	sub_417930

loc_41788A:
mov	[ebp+var_3C], offset off_44BA44
lea	ecx, [ebp+var_3C]
mov	[ebp+var_4], 1
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_3C]
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_4176F6 endp




sub_4178BB proc	near

arg_0= dword ptr  4

push	ebx
push	esi
mov	esi, ecx
push	edi
mov	edi, [esp+0Ch+arg_0]
mov	eax, [esi+8]
cmp	eax, [edi+8]
jnz	short loc_417901
mov	ecx, [esi+14h]
cmp	ecx, [edi+14h]
jnz	short loc_417901
mov	cl, [esi+18h]
cmp	cl, [edi+18h]
jnz	short loc_417901
xor	ebx, ebx
test	eax, eax
jle	short loc_4178FD

loc_4178E2:
mov	eax, [edi+0Ch]
mov	edx, [eax+ebx*4]
mov	eax, [esi+0Ch]
mov	ecx, [eax+ebx*4]
call	sub_417909
test	al, al
jnz	short loc_417901
inc	ebx
cmp	ebx, [esi+8]
jl	short loc_4178E2

loc_4178FD:
mov	al, 1
jmp	short loc_417903

loc_417901:
xor	al, al

loc_417903:
pop	edi
pop	esi
pop	ebx
retn	4
sub_4178BB endp




sub_417909 proc	near
mov	eax, [ecx]
cmp	eax, [edx]
jnz	short loc_417924
mov	al, [ecx+4]
cmp	al, [edx+4]
jnz	short loc_417924
mov	eax, [ecx+8]
cmp	eax, [edx+8]
jnz	short loc_417924
push	1
pop	eax
jmp	short loc_417926

loc_417924:
xor	eax, eax

loc_417926:
xor	ecx, ecx
test	al, al
setz	cl
mov	al, cl
retn
sub_417909 endp




sub_417930 proc	near

arg_0= dword ptr  4

push	esi
push	edi
mov	esi, ecx
call	sub_428327
mov	edi, [esp+8+arg_0]
mov	ecx, esi
push	edi
call	sub_417C3F
mov	eax, [edi+14h]
mov	[esi+14h], eax
mov	al, [edi+18h]
mov	[esi+18h], al
mov	eax, esi
pop	edi
pop	esi
retn	4
sub_417930 endp



; Attributes: bp-based frame

sub_417958 proc	near

Point= tagPOINT	ptr -8
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
push	ecx
push	ecx
mov	eax, [ebp+arg_0]
push	esi
mov	esi, ecx
mov	eax, [eax]
cmp	eax, [esi+74h]
jnz	short loc_41796E
xor	al, al
jmp	short loc_41798D

loc_41796E:
lea	eax, [ebp+Point]
push	eax		; lpPoint
call	ds:GetCursorPos
push	[ebp+Point.y]
mov	ecx, esi
push	[ebp+Point.x]
call	sub_417992
mov	ecx, [ebp+arg_4]
push	1
pop	eax
mov	[ecx], eax

loc_41798D:
pop	esi
leave
retn	8
sub_417958 endp



; Attributes: bp-based frame

sub_417992 proc	near

var_14=	dword ptr -14h
hMenu= dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_4451A0
call	__EH_prolog
push	ecx
push	ecx
push	ebx
xor	ebx, ebx
lea	eax, [ebp+hMenu]
push	esi
push	edi
mov	esi, ecx
mov	[ebp+hMenu], ebx
mov	[ebp+var_14], eax
mov	[ebp+var_4], ebx
call	ds:CreatePopupMenu
xor	edi, edi
cmp	[esi+148h], ebx
mov	[ebp+hMenu], eax
jle	short loc_4179F6

loc_4179C4:
mov	eax, [esi+14Ch]
xor	ecx, ecx
mov	eax, [eax+edi*4]
cmp	[eax+18h], cl
jz	short loc_4179D7
push	8
pop	ecx

loc_4179D7:
cmp	edi, ebx
jnz	short loc_4179DE
or	ecx, 1

loc_4179DE:		; lpNewItem
push	dword ptr [eax]
lea	eax, [edi+64h]
push	eax		; uIDNewItem
push	ecx		; uFlags
lea	ecx, [ebp+hMenu]
call	sub_42C93E
inc	edi
cmp	edi, [esi+148h]
jl	short loc_4179C4

loc_4179F6:
mov	eax, [esi+74h]
push	ebx		; LPTPMPARAMS
push	eax		; HWND
push	[ebp+arg_4]	; int
push	[ebp+arg_0]	; int
push	180h		; UINT
push	[ebp+hMenu]	; HMENU
call	ds:TrackPopupMenuEx
cmp	eax, 64h
jl	loc_417ACB
mov	ecx, [esi+148h]
add	ecx, 64h
cmp	eax, ecx
jg	loc_417ACB
mov	ecx, [esi+14Ch]
mov	edi, [ecx+eax*4-190h]
cmp	byte ptr [edi+18h], 0
setz	al
test	al, al
mov	[edi+18h], al
jz	short loc_417A63
mov	ebx, [esi+15Ch]
push	edi
lea	ecx, [esi+154h]
mov	[edi+14h], ebx
call	sub_417BA1
push	ebx		; wParam
mov	ecx, esi
call	sub_416615
jmp	short loc_417ACB

loc_417A63:
mov	eax, [esi+15Ch]
lea	ecx, [esi+154h]
cmp	eax, ebx
mov	[ebp+arg_4], ebx
jle	short loc_417A91
mov	eax, [ecx+0Ch]

loc_417A79:
mov	ebx, [eax]
mov	edx, [edi+0Ch]
cmp	[ebx+0Ch], edx
jz	short loc_417AF5
inc	[ebp+arg_4]
add	eax, 4
mov	edx, [ebp+arg_4]
cmp	edx, [ecx+8]
jl	short loc_417A79

loc_417A91:
or	ebx, 0FFFFFFFFh

loc_417A94:
mov	eax, [ecx]
push	1
push	ebx
call	dword ptr [eax+4]
mov	ecx, [esi+168h]
lea	eax, [esi+168h]
cmp	ecx, [edi+0Ch]
jnz	short loc_417ABA
mov	dword ptr [eax], 4
mov	byte ptr [esi+16Ch], 1

loc_417ABA:		; lParam
push	0
push	ebx		; wParam
push	101Ch		; Msg
push	dword ptr [esi+74h] ; hWnd
call	ds:SendMessageA

loc_417ACB:
lea	eax, [ebp+hMenu]
pop	edi
pop	esi
pop	ebx
test	eax, eax
jz	short loc_417AE7
mov	eax, [ebp+hMenu]
test	eax, eax
jz	short loc_417AE7
and	[ebp+hMenu], 0
push	eax		; hMenu
call	ds:DestroyMenu

loc_417AE7:
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn	8

loc_417AF5:
mov	ebx, [ebp+arg_4]
jmp	short loc_417A94
sub_417992 endp

; START	OF FUNCTION CHUNK FOR sub_445198

loc_417AFA:
mov	eax, [ecx]
test	eax, eax
jz	short locret_417B10
mov	ecx, [eax]
test	ecx, ecx
jz	short locret_417B10
and	dword ptr [eax], 0
push	ecx		; hMenu
call	ds:DestroyMenu

locret_417B10:
retn
; END OF FUNCTION CHUNK	FOR sub_445198



sub_417B11 proc	near
push	esi
mov	esi, ecx
call	sub_4168AC
test	eax, eax
jz	short loc_417B25
push	eax
mov	ecx, esi
call	sub_40E579

loc_417B25:
mov	ecx, esi
call	sub_41877A
pop	esi
retn
sub_417B11 endp



; Attributes: bp-based frame

sub_417B2E proc	near

var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4451B4
call	__EH_prolog
push	ecx
push	ecx
push	esi
mov	esi, ecx
cmp	byte ptr [esi+184h], 0
jz	short loc_417B94
and	[ebp+var_10], 0
mov	eax, [esi+0FCh]
and	[ebp+var_4], 0
lea	edx, [ebp+var_10]
mov	ecx, [eax]
push	edx
push	offset unk_44B6C0
push	eax
call	dword ptr [ecx]
test	eax, eax
jnz	short loc_417B83
mov	eax, [ebp+var_10]
lea	edx, [ebp+var_14]
push	edx
push	eax
mov	ecx, [eax]
call	dword ptr [ecx+0Ch]
test	eax, eax
jnz	short loc_417B83
cmp	[ebp+var_14], eax
jz	short loc_417B83
mov	ecx, esi
call	sub_417B11

loc_417B83:
mov	eax, [ebp+var_10]
or	[ebp+var_4], 0FFFFFFFFh
test	eax, eax
jz	short loc_417B94
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_417B94:
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_417B2E endp



; Attributes: bp-based frame

sub_417BA1 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset unknown_libname_24 ; Microsoft VisualC 2-11/net runtime
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	20h		; Size
call	sub_4284B1
pop	ecx
mov	ecx, eax
mov	[ebp+var_10], ecx
xor	eax, eax
cmp	ecx, eax
mov	[ebp+var_4], eax
jz	short loc_417BCD
push	[ebp+arg_0]
call	sub_417C0A

loc_417BCD:
or	[ebp+var_4], 0FFFFFFFFh
push	eax
mov	ecx, esi
call	sub_429907
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_417BA1 endp




sub_417BE8 proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_428350
mov	eax, [esi+0Ch]
mov	ecx, [esi+8]
mov	dl, [esp+4+arg_0]
mov	[eax+ecx], dl
mov	eax, [esi+8]
lea	ecx, [eax+1]
mov	[esi+8], ecx
pop	esi
retn	4
sub_417BE8 endp




sub_417C0A proc	near

arg_0= dword ptr  4

push	esi
push	edi
mov	edi, [esp+8+arg_0]
mov	esi, ecx
push	edi
call	sub_4030F2
mov	eax, [edi+0Ch]
mov	[esi+0Ch], eax
mov	ax, [edi+10h]
mov	[esi+10h], ax
mov	eax, [edi+14h]
mov	[esi+14h], eax
mov	al, [edi+18h]
mov	[esi+18h], al
mov	eax, [edi+1Ch]
mov	[esi+1Ch], eax
mov	eax, esi
pop	edi
pop	esi
retn	4
sub_417C0A endp



; Attributes: bp-based frame

sub_417C3F proc	near

var_8= dword ptr -8
var_4= dword ptr -4
arg_0= dword ptr  8

push	ebp
mov	ebp, esp
push	ecx
push	ecx
mov	eax, [ebp+arg_0]
push	ebx
push	esi
push	edi
mov	esi, [eax+8]
mov	edi, ecx
mov	[ebp+var_4], edi
mov	[ebp+var_8], esi
mov	eax, [edi+8]
add	eax, esi
push	eax
call	sub_428378
xor	ebx, ebx
test	esi, esi
jle	short loc_417C95

loc_417C66:
mov	eax, [ebp+arg_0]
push	0Ch		; Size
mov	eax, [eax+0Ch]
mov	esi, [eax+ebx*4]
call	sub_4284B1
test	eax, eax
pop	ecx
jz	short loc_417C85
mov	edi, eax
movsd
movsd
movsd
mov	edi, [ebp+var_4]
jmp	short loc_417C87

loc_417C85:
xor	eax, eax

loc_417C87:
push	eax
mov	ecx, edi
call	sub_429907
inc	ebx
cmp	ebx, [ebp+var_8]
jl	short loc_417C66

loc_417C95:
mov	eax, edi
pop	edi
pop	esi
pop	ebx
leave
retn	4
sub_417C3F endp



; Attributes: bp-based frame

sub_417C9E proc	near

var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4451DC
call	__EH_prolog
push	ecx
push	ecx
push	esi
mov	esi, ecx
sub	esp, 0Ch
mov	ecx, esp
mov	[ebp+var_10], esp
push	dword ptr [edx]
call	sub_4030F2
and	[ebp+var_4], 0
sub	esp, 0Ch
mov	ecx, esp
mov	[ebp+var_14], esp
push	dword ptr [esi]
call	sub_4030F2
or	[ebp+var_4], 0FFFFFFFFh
call	sub_417D30
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
pop	esi
leave
retn	4
sub_417C9E endp



; Attributes: bp-based frame

sub_417CE7 proc	near

var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4451F0
call	__EH_prolog
push	ecx
push	ecx
push	esi
mov	esi, ecx
sub	esp, 20h
mov	ecx, esp
mov	[ebp+var_10], esp
push	dword ptr [edx]
call	sub_417C0A
and	[ebp+var_4], 0
sub	esp, 20h
mov	ecx, esp
mov	[ebp+var_14], esp
push	dword ptr [esi]
call	sub_417C0A
or	[ebp+var_4], 0FFFFFFFFh
call	sub_417D8C
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
pop	esi
leave
retn	4
sub_417CE7 endp



; Attributes: bp-based frame

; int __stdcall	sub_417D30(void	*Memory, int, int, int,	int, int)
sub_417D30 proc	near

var_C= dword ptr -0Ch
var_4= dword ptr -4
Memory=	dword ptr  8
arg_C= dword ptr  14h

mov	eax, offset loc_44520C
call	__EH_prolog
push	esi
mov	edx, [ebp+arg_C]
mov	ecx, [ebp+Memory]
mov	[ebp+var_4], 1
call	sub_42828A
test	eax, eax
jge	short loc_417D56
or	esi, 0FFFFFFFFh
jmp	short loc_417D69

loc_417D56:
mov	edx, [ebp+arg_C]
mov	ecx, [ebp+Memory]
call	sub_42828A
mov	esi, eax
neg	esi
sbb	esi, esi
neg	esi

loc_417D69:		; Memory
push	[ebp+Memory]
call	sub_4284D8
push	[ebp+arg_C]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, esi
pop	ecx
pop	esi
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn	18h
sub_417D30 endp



; Attributes: bp-based frame

; int __stdcall	sub_417D8C(void	*Memory, int, int, int,	int, int, int, int, int, int, int, int,	int, int, int, int)
sub_417D8C proc	near

Memory=	dword ptr  8
arg_14=	dword ptr  1Ch
arg_20=	dword ptr  28h
arg_34=	dword ptr  3Ch

push	ebp
mov	ebp, esp
mov	eax, [ebp+arg_14]
push	esi
cmp	eax, [ebp+arg_34]
jge	short loc_417D9D
or	esi, 0FFFFFFFFh
jmp	short loc_417DA7

loc_417D9D:
xor	ecx, ecx
cmp	eax, [ebp+arg_34]
setnz	cl
mov	esi, ecx

loc_417DA7:		; Memory
push	[ebp+Memory]
call	sub_4284D8
push	[ebp+arg_20]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, esi
pop	ecx
pop	esi
pop	ebp
retn	40h
sub_417D8C endp



; Attributes: bp-based frame

sub_417DC0 proc	near

wParam=	dword ptr -0Ch
var_8= dword ptr -8
var_1= byte ptr	-1
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
sub	esp, 0Ch
push	ebx
push	esi
push	edi
mov	edi, [ebp+arg_0]
mov	[ebp+wParam], ecx
cmp	word ptr [edi+0Ch], 9
jnz	short loc_417DED
mov	eax, [edi]
cmp	eax, [ecx+74h]
jnz	short loc_417DED
mov	ecx, [ecx+44h]
mov	eax, [ecx]
call	dword ptr [eax]

loc_417DE4:
xor	al, al

loc_417DE6:
pop	edi
pop	esi
pop	ebx
leave
retn	8

loc_417DED:
mov	esi, ds:GetKeyState
push	12h		; nVirtKey
call	esi ; GetKeyState
shr	eax, 0Fh
and	al, 1
push	11h		; nVirtKey
mov	[ebp+var_1], al
call	esi ; GetKeyState
shr	eax, 0Fh
and	al, 1
push	0A3h		; nVirtKey
mov	byte ptr [ebp+arg_0+3],	al
call	esi ; GetKeyState
mov	bx, ax
push	10h		; nVirtKey
shr	ebx, 0Fh
and	bl, 1
call	esi ; GetKeyState
shr	eax, 0Fh
and	al, 1
xor	esi, esi
mov	byte ptr [ebp+var_8], al
mov	eax, [ebp+arg_4]
mov	[eax], esi
mov	ax, [edi+0Ch]
cmp	ax, 30h
jb	short loc_417E6B
cmp	ax, 39h
ja	short loc_417E6B
test	bl, bl
jnz	short loc_417E47
cmp	[ebp+var_1], bl
jz	short loc_417E6B

loc_417E47:
mov	ecx, [ebp+wParam]
movzx	eax, ax
sub	eax, 30h
cmp	byte ptr [ebp+var_8], 0
push	eax
jz	short loc_417E61
call	sub_4130B3
jmp	loc_4181BA

loc_417E61:
call	sub_41314E
jmp	loc_4181BA

loc_417E6B:
cmp	ax, 71h
jz	short loc_417E77
cmp	ax, 70h
jnz	short loc_417EA3

loc_417E77:
cmp	[ebp+var_1], 0
jz	short loc_417EA3
cmp	byte ptr [ebp+arg_0+3],	0
jnz	short loc_417EA3
cmp	byte ptr [ebp+var_8], 0
jnz	short loc_417EA3
mov	ecx, [ebp+wParam]
xor	ebx, ebx
cmp	ax, 70h
mov	ecx, [ecx+44h]
setnz	bl
mov	edx, [ecx]
push	ebx
call	dword ptr [edx+4]
jmp	loc_4181BA

loc_417EA3:
cmp	ax, 78h
jnz	short loc_417EC5
cmp	[ebp+var_1], 0
jnz	short loc_417EC5
cmp	byte ptr [ebp+arg_0+3],	0
jnz	short loc_417EC5
cmp	byte ptr [ebp+var_8], 0
jnz	short loc_417EC5
mov	ecx, offset dword_45D4C0
call	sub_4017B2

loc_417EC5:
mov	cx, [edi+0Ch]
cmp	cx, 72h
jb	short loc_417EF7
cmp	cx, 7Bh
ja	short loc_417EF7
cmp	byte ptr [ebp+arg_0+3],	0
jz	short loc_417EF7
call	sub_418254
cmp	eax, esi
jl	short loc_417EF7
mov	ebx, [ebp+wParam]
push	dword_45BA8C[eax*8] ; int
mov	ecx, ebx	; wParam
call	sub_41BE7A
jmp	short loc_417EFA

loc_417EF7:
mov	ebx, [ebp+wParam]

loc_417EFA:
movzx	eax, word ptr [edi+0Ch]
cmp	eax, 4Eh
jg	loc_41809F
jz	loc_418089
cmp	eax, 28h
jg	loc_417FBF
jz	short loc_417F4D
sub	eax, 8
jz	loc_417FB3
sub	eax, 8
jz	short loc_417F99
sub	eax, 12h
jz	short loc_417F76
sub	eax, 3
jz	short loc_417F3A
dec	eax
jz	short loc_417F63
dec	eax
jnz	loc_417DE4

loc_417F3A:
cmp	[ebp+var_1], 0
jz	short loc_417F4D
mov	ecx, [ebx+44h]
mov	eax, [ecx]
call	dword ptr [eax+10h]
jmp	loc_417DE4

loc_417F4D:
cmp	byte ptr [ebp+var_8], 0
jz	loc_417DE4
mov	ecx, ebx
call	sub_41B4AB
jmp	loc_417DE4

loc_417F63:
cmp	[ebp+var_1], 0
jz	short loc_417F4D
mov	ecx, [ebx+44h]
mov	eax, [ecx]
call	dword ptr [eax+0Ch]
jmp	loc_417DE4

loc_417F76:
cmp	byte ptr [ebp+arg_0+3],	0
jz	loc_417DE4
cmp	[ebp+var_1], 0
jnz	loc_417DE4
cmp	byte ptr [ebp+var_8], 0
jnz	loc_417DE4
jmp	loc_4181BA

loc_417F99:
and	byte ptr [ebx+17Ch], 0
lea	ecx, [ebx+74h]
call	sub_402DF8
mov	[ebx+180h], eax
jmp	loc_417DE4

loc_417FB3:
mov	ecx, ebx
call	sub_413C6E
jmp	loc_4181BA

loc_417FBF:
cmp	eax, 2Dh
jz	short loc_418032
cmp	eax, 2Eh
jz	short loc_41801E
cmp	eax, 30h
jle	loc_417DE4
cmp	eax, 34h
jle	short loc_418004
cmp	eax, 41h
jz	short loc_417FF1
cmp	eax, 43h
jnz	loc_417DE4
cmp	byte ptr [ebp+arg_0+3],	0
jz	loc_417DE4
jmp	short loc_418048

loc_417FF1:
cmp	byte ptr [ebp+arg_0+3],	0
jz	loc_417DE4

loc_417FFB:
push	1
mov	ecx, ebx
jmp	loc_418172

loc_418004:
cmp	byte ptr [ebp+arg_0+3],	0
jz	loc_417DE4
add	eax, 0FFFFFFCFh
mov	ecx, ebx
push	eax
call	sub_40E8BF
jmp	loc_4181BA

loc_41801E:
cmp	byte ptr [ebp+var_8], 0
mov	ecx, ebx
setz	al
push	eax
call	sub_419DE1
jmp	loc_4181BA

loc_418032:
cmp	[ebp+var_1], 0
jnz	loc_417DE4
cmp	byte ptr [ebp+arg_0+3],	0
jz	short loc_418054
cmp	byte ptr [ebp+var_8], 0
jnz	short loc_41805A

loc_418048:
mov	ecx, ebx
call	sub_41913D
jmp	loc_4181BA

loc_418054:
cmp	byte ptr [ebp+var_8], 0
jz	short loc_418070

loc_41805A:
cmp	byte ptr [ebp+arg_0+3],	0
jnz	loc_417DE4

loc_418064:
mov	ecx, ebx
call	nullsub_2
jmp	loc_4181BA

loc_418070:
cmp	byte ptr [ebx+8Fh], 0
jz	loc_417DE4
mov	ecx, ebx
call	sub_41B556
jmp	loc_4181BA

loc_418089:
cmp	byte ptr [ebp+arg_0+3],	0
jz	loc_417DE4
mov	ecx, ebx

loc_418095:
call	sub_41AC27
jmp	loc_4181BA

loc_41809F:
cmp	eax, 6Dh
jg	loc_418179
jz	loc_418159
sub	eax, 52h
jz	loc_418146
sub	eax, 4
jz	short loc_418137
dec	eax
dec	eax
jz	short loc_418121
dec	eax
dec	eax
jz	short loc_41810B
sub	eax, 10h
jz	short loc_4180FF
dec	eax
jnz	loc_417DE4
cmp	[ebp+var_1], 0
jz	short loc_4180DD
push	1
jmp	loc_418160

loc_4180DD:
cmp	byte ptr [ebp+var_8], 0
jnz	loc_417FFB
cmp	byte ptr [ebp+arg_0+3],	0
jnz	loc_4181BA
push	1
mov	ecx, ebx

loc_4180F5:
call	sub_41B6E1
jmp	loc_4181BA

loc_4180FF:
mov	ecx, ebx
call	sub_41BA46
jmp	loc_4181BA

loc_41810B:
cmp	byte ptr [ebp+arg_0+3],	0
jz	loc_417DE4
mov	ecx, ebx
call	sub_41AEAE
jmp	loc_4181BA

loc_418121:
cmp	byte ptr [ebp+arg_0+3],	0
jz	loc_417DE4
mov	ecx, ebx
call	nullsub_2
jmp	loc_4181BA

loc_418137:
cmp	byte ptr [ebp+arg_0+3],	0
jz	loc_417DE4
jmp	loc_418064

loc_418146:
cmp	byte ptr [ebp+arg_0+3],	0
jz	loc_417DE4
mov	ecx, ebx
call	sub_417B11
jmp	short loc_4181BA

loc_418159:
cmp	[ebp+var_1], 0
jz	short loc_418169
push	esi

loc_418160:
mov	ecx, ebx
call	sub_41B832
jmp	short loc_4181BA

loc_418169:
cmp	byte ptr [ebp+var_8], 0
push	esi
mov	ecx, ebx
jz	short loc_4180F5

loc_418172:
call	sub_41BA14
jmp	short loc_4181BA

loc_418179:
sub	eax, 71h
jz	loc_41822A
dec	eax
dec	eax
jz	short loc_418203
dec	eax
jz	short loc_4181E4
dec	eax
jz	short loc_4181C1
sub	eax, 6
jnz	loc_417DE4
cmp	[ebp+var_1], 0
jz	loc_417DE4
cmp	byte ptr [ebp+arg_0+3],	0
jnz	loc_417DE4
cmp	byte ptr [ebp+var_8], 0
jnz	loc_417DE4
mov	ecx, ebx
call	sub_413A0F

loc_4181BA:
mov	al, 1
jmp	loc_417DE6

loc_4181C1:
cmp	[ebp+var_1], 0
jnz	loc_417DE4
cmp	byte ptr [ebp+arg_0+3],	0
jnz	loc_417DE4
mov	ecx, [ebx+44h]
push	[ebp+var_8]
mov	eax, [ecx]
push	1

loc_4181DF:
call	dword ptr [eax+8]
jmp	short loc_4181BA

loc_4181E4:
cmp	[ebp+var_1], 0
jnz	loc_417DE4
cmp	byte ptr [ebp+arg_0+3],	0
jnz	loc_417DE4
mov	ecx, [ebx+44h]
push	[ebp+var_8]
mov	eax, [ecx]
push	esi
jmp	short loc_4181DF

loc_418203:
cmp	[ebp+var_1], 0
jnz	loc_417DE4
cmp	byte ptr [ebp+arg_0+3],	0
jnz	loc_417DE4
cmp	byte ptr [ebp+var_8], 0
mov	ecx, ebx
jnz	loc_418095
call	sub_4171AB
jmp	short loc_4181BA

loc_41822A:
cmp	[ebp+var_1], 0
jnz	loc_417DE4
cmp	byte ptr [ebp+arg_0+3],	0
jnz	loc_417DE4
cmp	byte ptr [ebp+var_8], 0
jnz	loc_417DE4
mov	ecx, ebx
call	sub_41AE8D
jmp	loc_4181BA
sub_417DC0 endp




sub_418254 proc	near
xor	eax, eax
mov	edx, offset aR	; "r"

loc_41825B:
cmp	[edx], cx
jz	short locret_41826F
add	edx, 8
inc	eax
cmp	edx, offset aError ; "Error: "
jb	short loc_41825B
or	eax, 0FFFFFFFFh

locret_41826F:
retn
sub_418254 endp



; Attributes: bp-based frame

sub_418270 proc	near

var_48=	word ptr -48h
var_A= word ptr	-0Ah
var_8= dword ptr -8
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
sub	esp, 48h
push	ebx
push	esi
push	edi
mov	[ebp+var_4], ecx
push	[ebp+arg_4]
xor	ebx, ebx
lea	ecx, [ebp+var_48]
mov	[ebp+var_8], ebx
push	[ebp+arg_0]
call	sub_427B10
xor	edx, edx
cmp	[ebp+var_48], bx
push	2
pop	edi
jz	short loc_4182A5
lea	eax, [ebp+var_48]

loc_41829D:
add	eax, edi
inc	edx
cmp	[eax], bx
jnz	short loc_41829D

loc_4182A5:
push	1Fh
cmp	edx, 3
pop	esi
mov	[ebp+var_A], bx
jle	short loc_4182E9
lea	eax, [ebp+var_A]
lea	ecx, [ebp+edx*2+var_48]

loc_4182B8:
sub	ecx, edi
sub	eax, edi
dec	edx
dec	esi
mov	bx, [ecx]
sub	ecx, edi
mov	[eax], bx
sub	eax, edi
mov	bx, [ecx]
sub	ecx, edi
mov	[eax], bx
dec	edx
mov	bx, [ecx]
sub	eax, edi
dec	esi
dec	edx
dec	esi
mov	[eax], bx
sub	eax, edi
dec	esi
cmp	edx, 3
mov	word ptr [eax],	20h
jg	short loc_4182B8

loc_4182E9:
test	edx, edx
jle	short loc_418304
lea	ecx, [ebp+esi*2+var_48]
lea	eax, [ebp+edx*2+var_48]
sub	esi, edx

loc_4182F7:
sub	eax, edi
sub	ecx, edi
dec	edx
mov	bx, [eax]
mov	[ecx], bx
jnz	short loc_4182F7

loc_418304:
mov	ecx, [ebp+var_4]
lea	eax, [ebp+esi*2+var_48]
push	eax
call	sub_403091
mov	eax, [ebp+var_4]
pop	edi
pop	esi
pop	ebx
leave
retn	8
sub_418270 endp



; Attributes: bp-based frame

sub_41831B proc	near

pvarg= VARIANTARG ptr -50h
var_40=	dword ptr -40h
var_34=	dword ptr -34h
Memory=	dword ptr -28h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_445258
call	__EH_prolog
sub	esp, 44h
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
push	edi
cmp	[esi+0D7h], bl
jnz	loc_418517
mov	edi, [ebp+arg_0]
mov	eax, [edi+20h]
test	byte ptr [edi],	1
mov	[ebp+var_10], eax
jz	loc_418517
cmp	eax, 0FFFFFFFFh
jz	loc_418517
push	3
lea	ecx, [ebp+var_1C]
mov	[ebp+var_1C], ebx
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
call	sub_403396
mov	eax, [edi+8]
mov	ecx, [esi+160h]
mov	[ebp+var_4], ebx
mov	eax, [ecx+eax*4]
mov	edi, [eax+0Ch]
mov	word ptr [ebp+pvarg.anonymous_0], bx
mov	word ptr [ebp+pvarg.anonymous_0+2], bx
mov	eax, [esi+0FCh]
lea	edx, [ebp+pvarg]
push	edx
push	edi
push	[ebp+var_10]
mov	ecx, [eax]
mov	byte ptr [ebp+var_4], 1
push	eax
call	dword ptr [ecx+14h]
cmp	eax, ebx
jz	short loc_4183FC
mov	edx, eax
lea	ecx, [ebp+var_40]
call	sub_425088
mov	esi, eax
push	offset aError	; "Error: "
lea	ecx, [ebp+var_34]
mov	byte ptr [ebp+var_4], 2
call	sub_403091
push	esi
mov	edx, eax
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 3
call	sub_40356A
push	eax
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 4
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_34]	; Memory
call	sub_4284D8
push	[ebp+var_40]	; Memory
mov	byte ptr [ebp+var_4], 1
call	sub_4284D8
add	esp, 0Ch
jmp	loc_4184AD

loc_4183FC:
cmp	word ptr [ebp+pvarg.anonymous_0], 15h
jz	short loc_41840A
cmp	word ptr [ebp+pvarg.anonymous_0], 13h
jnz	short loc_418440

loc_41840A:
cmp	edi, 7
jz	short loc_418481
cmp	edi, 8
jz	short loc_418481
cmp	edi, 1Fh
jz	short loc_418481
cmp	edi, 20h
jz	short loc_418481
cmp	edi, 1Dh
jz	short loc_418481
cmp	edi, 26h
jz	short loc_418481
cmp	edi, 1102h
jz	short loc_418481
cmp	edi, 1100h
jz	short loc_418481
cmp	edi, 1101h
jz	short loc_418481

loc_418440:
push	ebx
push	edi
lea	edx, [ebp+pvarg]
lea	ecx, [ebp+var_40]
call	sub_4371AD
push	eax
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 6
call	sub_40312C
push	[ebp+var_40]	; Memory
mov	byte ptr [ebp+var_4], 1
call	sub_4284D8
pop	ecx
push	20h
push	0Ah
lea	ecx, [ebp+var_1C]
call	sub_4189DD
push	20h
push	0Dh
lea	ecx, [ebp+var_1C]
call	sub_4189DD
jmp	short loc_4184AD

loc_418481:
lea	ecx, [ebp+pvarg]
call	sub_42D2C6
push	edx
push	eax
lea	ecx, [ebp+var_40]
call	sub_418270
push	eax
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 5
call	sub_40312C
push	[ebp+var_40]	; Memory
mov	byte ptr [ebp+var_4], 1
call	sub_4284D8
pop	ecx

loc_4184AD:
mov	esi, [ebp+arg_0]
mov	eax, [esi+18h]
cmp	eax, ebx
jle	short loc_418503
mov	ecx, [ebp+var_18]
inc	ecx
cmp	ecx, eax
jle	short loc_4184E3
dec	eax
lea	ecx, [ebp+var_1C]
push	eax
lea	eax, [ebp+var_40]
push	eax
call	sub_403228
push	eax
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 7
call	sub_40312C
push	[ebp+var_40]	; Memory
call	sub_4284D8
pop	ecx

loc_4184E3:
mov	edx, [ebp+var_1C]
mov	eax, [esi+14h]
push	2
mov	cx, [edx]
pop	esi
mov	[eax], cx

loc_4184F2:
add	eax, esi
add	edx, esi
cmp	cx, bx
jz	short loc_418503
mov	cx, [edx]
mov	[eax], cx
jmp	short loc_4184F2

loc_418503:		; pvarg
lea	ecx, [ebp+pvarg]
mov	byte ptr [ebp+var_4], bl
call	sub_42CDE1
push	[ebp+var_1C]	; Memory
call	sub_4284D8
pop	ecx

loc_418517:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
xor	eax, eax
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_41831B endp




sub_41852A proc	near

arg_0= dword ptr  4

mov	edx, [esp+arg_0]
push	esi
mov	esi, [edx+28h]
cmp	esi, 0FFFFFFFFh
jz	short loc_418553
mov	eax, [edx+14h]
mov	edx, [edx+18h]
shr	eax, 1
shr	edx, 1
and	al, 1
and	dl, 1
cmp	dl, al
jz	short loc_418553
mov	ecx, [ecx+9Ch]
mov	[ecx+esi], al

loc_418553:
pop	esi
retn	4
sub_41852A endp



; Attributes: bp-based frame

sub_418557 proc	near

var_2= byte ptr	-2
var_1= byte ptr	-1

push	ebp
mov	ebp, esp
push	ecx
push	ebx
push	esi
mov	esi, ds:GetKeyState
push	edi
mov	edi, ecx
push	12h		; nVirtKey
call	esi ; GetKeyState
mov	bx, ax
push	11h		; nVirtKey
shr	ebx, 0Fh
and	bl, 1
call	esi ; GetKeyState
shr	eax, 0Fh
and	al, 1
push	10h		; nVirtKey
mov	[ebp+var_1], al
call	esi ; GetKeyState
shr	eax, 0Fh
and	al, 1
mov	[ebp+var_2], al
jnz	short loc_4185A0
test	bl, bl
jz	short loc_4185AD
cmp	[ebp+var_1], 0
jnz	short loc_4185AD
mov	ecx, edi
call	sub_418B0B
jmp	short loc_4185B8

loc_4185A0:
test	bl, bl
jnz	short loc_4185AD
cmp	[ebp+var_1], bl
jnz	short loc_4185AD
xor	eax, eax
jmp	short loc_4185B0

loc_4185AD:
push	1
pop	eax

loc_4185B0:
push	eax
mov	ecx, edi
call	sub_417220

loc_4185B8:
pop	edi
pop	esi
pop	ebx
leave
retn
sub_418557 endp



; Attributes: bp-based frame

sub_4185BD proc	near

arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
push	esi
push	edi
mov	edi, [ebp+arg_0]
mov	esi, ecx
mov	eax, [edi+8]
cmp	eax, 0FFFFFF94h
ja	loc_41868D
jz	loc_418680
cmp	eax, 0FFFFFF4Fh
jz	loc_418666
cmp	eax, 0FFFFFF50h
jz	short loc_418652
cmp	eax, 0FFFFFF51h
jz	short loc_418648
cmp	eax, 0FFFFFF65h
jz	short loc_41862B
cmp	eax, 0FFFFFF8Eh
jz	short loc_418612
cmp	eax, 0FFFFFF93h
jnz	loc_41871A
push	edi
call	sub_411391
jmp	loc_418713

loc_418612:
cmp	byte_45B2C0, 0
jz	loc_41871A

loc_41861F:
mov	ecx, esi
call	sub_418557
jmp	loc_41871A

loc_41862B:
push	ebx
mov	ecx, esi
push	[ebp+arg_4]
push	edi
call	sub_417DC0
mov	ecx, esi
mov	bl, al
call	sub_40E930
mov	al, bl
pop	ebx
jmp	loc_41871C

loc_418648:
push	edi
mov	ecx, esi
call	sub_41A5B8
jmp	short loc_41865A

loc_418652:
push	edi
mov	ecx, esi
call	sub_41A624

loc_41865A:
mov	ecx, [ebp+arg_4]
mov	[ecx], eax
mov	al, 1
jmp	loc_41871C

loc_418666:
test	byte ptr [edi+0Ch], 3
lea	eax, [edi+0Ch]
jz	loc_41871A
push	eax
mov	ecx, esi
call	sub_41831B
jmp	loc_41871A

loc_418680:
push	edi
mov	ecx, esi
call	sub_41BEF0
jmp	loc_41871A

loc_41868D:
cmp	eax, 0FFFFFF9Bh
jz	short loc_4186F9
cmp	eax, 0FFFFFFF4h
jz	short loc_4186E3
cmp	eax, 0FFFFFFFBh
jz	short loc_418713
jbe	short loc_41871A
cmp	eax, 0FFFFFFFDh
jbe	short loc_4186D5
cmp	eax, 0FFFFFFFEh
jnz	short loc_41871A
mov	ecx, esi
call	sub_40E5B8
mov	ecx, esi
call	sub_40E930
cmp	byte ptr [esi+8Fh], 0
jz	short loc_41871A
cmp	dword_45D88C, 40047h
jb	short loc_41871A
push	edi
mov	ecx, esi
call	sub_41BB2E
jmp	short loc_41871A

loc_4186D5:
cmp	byte_45B2C0, 0
jnz	short loc_41871A
jmp	loc_41861F

loc_4186E3:
cmp	byte ptr [esi+8Fh], 0
jz	short loc_41871A
push	[ebp+arg_4]
mov	ecx, esi
push	edi
call	sub_418722
jmp	short loc_41871C

loc_4186F9:
cmp	byte ptr [esi+8Eh], 0
jz	short loc_41871A
cmp	byte ptr [esi+8Fh], 0
jnz	short loc_418713
push	edi
mov	ecx, esi
call	sub_41852A

loc_418713:
mov	ecx, esi
call	sub_40E930

loc_41871A:
xor	al, al

loc_41871C:
pop	edi
pop	esi
pop	ebp
retn	8
sub_4185BD endp




sub_418722 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	esi
mov	esi, [esp+4+arg_0]
mov	eax, [esi+0Ch]
dec	eax
jz	short loc_41876A
sub	eax, 10000h
jz	short loc_418738
xor	al, al
jmp	short loc_418776

loc_418738:
mov	eax, [esi+2Ch]
cmp	eax, 0FFFFFFFFh
jz	short loc_418755
mov	edx, [ecx+9Ch]
cmp	byte ptr [edx+eax], 0
jz	short loc_418755
mov	dword ptr [esi+34h], 0C0C0FFh
jmp	short loc_41876A

loc_418755:		; lParam
push	0
push	0		; wParam
push	1000h		; Msg
push	dword ptr [ecx+74h] ; hWnd
call	ds:SendMessageA
mov	[esi+34h], eax

loc_41876A:
mov	eax, [esp+4+arg_4]
mov	dword ptr [eax], 20h
mov	al, 1

loc_418776:
pop	esi
retn	8
sub_418722 endp



; Attributes: bp-based frame

sub_41877A proc	near

var_64=	dword ptr -64h
var_5C=	dword ptr -5Ch
var_58=	dword ptr -58h
Memory=	dword ptr -50h
var_44=	dword ptr -44h
var_40=	dword ptr -40h
var_3C=	dword ptr -3Ch
lParam=	dword ptr -38h
var_34=	dword ptr -34h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
pvarg= VARIANTARG ptr -20h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4452B4
call	__EH_prolog
sub	esp, 58h
push	ebx
push	esi
mov	esi, ecx
push	edi
push	4
lea	ecx, [ebp+var_64]
call	sub_402794
mov	[ebp+var_64], offset off_44B518
lea	eax, [ebp+var_64]
xor	ebx, ebx
push	eax
mov	ecx, esi
mov	[ebp+var_4], ebx
call	sub_4170D3
mov	eax, [ebp+var_5C]
lea	ecx, [ebp+Memory]
cdq
push	edx
push	eax
call	sub_4073AB
push	eax
push	2000301h
mov	edx, 8DEh
lea	ecx, [ebp+pvarg.anonymous_0+4]
mov	byte ptr [ebp+var_4], 1
call	sub_40744B
mov	eax, [eax]
lea	edi, [esi+80h]
push	ebx		; int
push	eax		; lParam
push	ebx		; int
mov	ecx, edi
mov	byte ptr [ebp+var_4], 2
call	sub_4189BA
push	dword ptr [ebp+pvarg.anonymous_0+4] ; Memory
call	sub_4284D8
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
pop	ecx
mov	[ebp+var_44], ebx
pop	ecx
mov	[ebp+var_40], ebx
push	3
lea	ecx, [ebp+var_44]
mov	[ebp+var_3C], ebx
call	sub_403396
cmp	[ebp+var_5C], ebx
mov	byte ptr [ebp+var_4], 3
jle	short loc_41886B
mov	dword ptr [ebp+pvarg.anonymous_0+8], ebx
mov	dword ptr [ebp+pvarg.anonymous_0+0Ch], ebx
mov	[ebp+var_10], ebx

loc_418822:
mov	eax, [ebp+var_58]
mov	ecx, [ebp+var_10]
push	dword ptr [eax+ecx*4]
mov	ecx, esi
call	sub_417605
add	dword ptr [ebp+pvarg.anonymous_0+8], eax
adc	dword ptr [ebp+pvarg.anonymous_0+0Ch], edx
inc	[ebp+var_10]
mov	eax, [ebp+var_10]
cmp	eax, [ebp+var_5C]
jl	short loc_418822
push	dword ptr [ebp+pvarg.anonymous_0+0Ch]
lea	ecx, [ebp+Memory]
push	dword ptr [ebp+pvarg.anonymous_0+8]
call	sub_418270
push	eax
lea	ecx, [ebp+var_44]
mov	byte ptr [ebp+var_4], 4
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 3
call	sub_4284D8
pop	ecx

loc_41886B:		; int
push	ebx
mov	ecx, edi
push	[ebp+var_44]	; lParam
push	1		; int
call	sub_4189BA
push	1		; __int16
lea	ecx, [esi+74h]
push	0FFFFFFFFh	; wParam
call	sub_402821
push	3
lea	ecx, [ebp+lParam]
mov	[ebp+var_10], eax
mov	[ebp+lParam], ebx
mov	[ebp+var_34], ebx
mov	[ebp+var_30], ebx
call	sub_403396
push	3
lea	ecx, [ebp+var_2C]
mov	byte ptr [ebp+var_4], 5
mov	[ebp+var_2C], ebx
mov	[ebp+var_28], ebx
mov	[ebp+var_24], ebx
call	sub_403396
cmp	[ebp+var_10], ebx
mov	byte ptr [ebp+var_4], 6
jl	loc_418965
push	ebx		; lParam
push	ebx		; wParam
push	1032h		; Msg
push	dword ptr [esi+74h] ; hWnd
call	ds:SendMessageA
cmp	eax, ebx
jbe	loc_418965
push	[ebp+var_10]
mov	ecx, esi
call	sub_402875
cmp	eax, 0FFFFFFFFh
mov	[ebp+var_10], eax
jz	short loc_418965
push	eax
mov	ecx, esi
call	sub_417605
push	edx
push	eax
lea	ecx, [ebp+Memory]
call	sub_418270
push	eax
lea	ecx, [ebp+lParam]
mov	byte ptr [ebp+var_4], 7
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	word ptr [ebp+pvarg.anonymous_0], bx
mov	word ptr [ebp+pvarg.anonymous_0+2], bx
mov	esi, [esi+0FCh]
lea	ecx, [ebp+pvarg]
push	ecx
push	0Ch
push	[ebp+var_10]
mov	eax, [esi]
mov	byte ptr [ebp+var_4], 8
push	esi
call	dword ptr [eax+14h]
test	eax, eax
jnz	short loc_418959
push	ebx
push	0Ch
lea	edx, [ebp+pvarg]
lea	ecx, [ebp+Memory]
call	sub_4371AD
push	eax
lea	ecx, [ebp+var_2C]
mov	byte ptr [ebp+var_4], 9
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_418959:		; pvarg
lea	ecx, [ebp+pvarg]
mov	byte ptr [ebp+var_4], 6
call	sub_42CDE1

loc_418965:		; lParam
push	[ebp+lParam]
mov	ebx, ds:SendMessageA
mov	esi, 40Bh
push	2		; wParam
push	esi		; Msg
push	dword ptr [edi]	; hWnd
call	ebx ; SendMessageA
push	[ebp+var_2C]	; lParam
push	3		; wParam
push	esi		; Msg
push	dword ptr [edi]	; hWnd
call	ebx ; SendMessageA
push	[ebp+var_2C]	; Memory
call	sub_4284D8
push	[ebp+lParam]	; Memory
call	sub_4284D8
push	[ebp+var_44]	; Memory
call	sub_4284D8
or	[ebp+var_4], 0FFFFFFFFh
add	esp, 0Ch
lea	ecx, [ebp+var_64]
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_41877A endp




; int __stdcall	sub_4189BA(int,	LPARAM lParam, int)
sub_4189BA proc	near

arg_0= dword ptr  4
lParam=	dword ptr  8
arg_8= dword ptr  0Ch

mov	eax, [esp+arg_0]
push	[esp+lParam]	; lParam
or	eax, [esp+4+arg_8]
push	eax		; wParam
push	40Bh		; Msg
push	dword ptr [ecx]	; hWnd
call	ds:SendMessageA
neg	eax
sbb	eax, eax
neg	eax
retn	0Ch
sub_4189BA endp




sub_4189DD proc	near

arg_0= word ptr	 4
arg_4= word ptr	 8

push	ebx
mov	bx, [esp+4+arg_4]
cmp	[esp+4+arg_0], bx
jnz	short loc_4189EE
xor	eax, eax
jmp	short loc_418A2B

loc_4189EE:
xor	edx, edx
xor	eax, eax
cmp	[ecx+4], edx
push	esi
push	edi
jle	short loc_418A29

loc_4189F9:
mov	esi, [ecx]
lea	edx, [esi+edx*2]

loc_4189FE:
mov	di, [edx]
cmp	di, [esp+0Ch+arg_0]
jz	short loc_418A11
test	di, di
jz	short loc_418A17
inc	edx
inc	edx
jmp	short loc_4189FE

loc_418A11:
sub	edx, esi
sar	edx, 1
jmp	short loc_418A1A

loc_418A17:
or	edx, 0FFFFFFFFh

loc_418A1A:
test	edx, edx
jl	short loc_418A29
mov	[esi+edx*2], bx
inc	edx
inc	eax
cmp	edx, [ecx+4]
jl	short loc_4189F9

loc_418A29:
pop	edi
pop	esi

loc_418A2B:
pop	ebx
retn	8
sub_4189DD endp



; Attributes: bp-based frame

sub_418A2F proc	near

Dst= dword ptr -48h
var_40=	dword ptr -40h
var_3C=	dword ptr -3Ch
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_4452D8
call	__EH_prolog
sub	esp, 3Ch
push	ebx
xor	ebx, ebx
push	edi
mov	edi, ecx
push	ebx		; pvReserved
call	ds:CoInitialize
mov	ecx, edi
mov	[ebp+var_4], ebx
call	sub_411E32
test	al, al
jz	loc_418AEF
mov	[ebp+var_20], ebx
mov	[ebp+var_1C], ebx
mov	[ebp+var_18], ebx
mov	[ebp+var_14], 4
mov	[ebp+var_24], offset off_44B518
lea	eax, [ebp+var_24]
mov	ecx, edi
push	eax
mov	byte ptr [ebp+var_4], 1
call	sub_4170D3
cmp	[ebp+var_1C], ebx
jz	short loc_418AE4
mov	[ebp+var_10], ebx
lea	eax, [ebp+var_10]
mov	ecx, edi
push	eax
lea	eax, [ebp+var_24]
push	eax
mov	byte ptr [ebp+var_4], 2
call	sub_419204
test	eax, eax
jnz	short loc_418AD3
push	24h		; Size
lea	eax, [ebp+Dst]
push	ebx		; Val
push	eax		; Dst
call	memset
add	esp, 0Ch
mov	ecx, edi
mov	[ebp+Dst], 24h
call	sub_40DA67
mov	[ebp+var_40], eax
mov	eax, [ebp+arg_0]
mov	[ebp+var_3C], eax
mov	eax, [ebp+var_10]
lea	edx, [ebp+Dst]
mov	ecx, [eax]
push	edx
push	eax
call	dword ptr [ecx+10h]

loc_418AD3:
mov	eax, [ebp+var_10]
mov	byte ptr [ebp+var_4], 1
cmp	eax, ebx
jz	short loc_418AE4
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_418AE4:
lea	ecx, [ebp+var_24]
mov	byte ptr [ebp+var_4], bl
call	sub_4282FE

loc_418AEF:
call	ds:__imp_CoUninitialize
mov	ecx, [ebp+var_C]
pop	edi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_418A2F endp

; [00000006 BYTES: COLLAPSED FUNCTION CoUninitialize. PRESS KEYPAD CTRL-"+" TO EXPAND]


; Attributes: bp-based frame

sub_418B0B proc	near

var_84=	dword ptr -84h
var_7C=	dword ptr -7Ch
var_78=	dword ptr -78h
var_70=	word ptr -70h
var_6E=	word ptr -6Eh
pvarg= VARIANTARG ptr -60h
Memory=	dword ptr -50h
var_4C=	dword ptr -4Ch
var_48=	dword ptr -48h
var_44=	dword ptr -44h
var_40=	dword ptr -40h
var_3C=	dword ptr -3Ch
var_38=	dword ptr -38h
var_34=	dword ptr -34h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
bstrString= dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	byte ptr -10h
var_E= byte ptr	-0Eh
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_44535F
call	__EH_prolog
sub	esp, 78h
push	esi
push	edi
xor	edi, edi
mov	esi, ecx
mov	[ebp+var_30], edi
mov	eax, [esi+0FCh]
lea	edx, [ebp+var_30]
push	edx
push	offset unk_44B630
mov	ecx, [eax]
push	eax
mov	[ebp+var_4], edi
call	dword ptr [ecx]
cmp	[ebp+var_30], edi
jnz	short loc_418B4E
push	offset aProperties ; "properties"
mov	ecx, esi
call	sub_418A2F
jmp	loc_418FE7

loc_418B4E:
push	ebx
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+Memory], edi
mov	[ebp+var_4C], edi
mov	[ebp+var_48], edi
call	sub_403396
push	4
lea	ecx, [ebp+var_84]
mov	byte ptr [ebp+var_4], 1
call	sub_402794
mov	[ebp+var_84], offset off_44B518
lea	eax, [ebp+var_84]
mov	ecx, esi
push	eax
mov	byte ptr [ebp+var_4], 2
call	sub_4170D3
cmp	[ebp+var_7C], 1
mov	ebx, ds:SysFreeString
jnz	loc_418C54
mov	eax, [ebp+var_78]
lea	edx, [ebp+var_28]
push	edx
mov	eax, [eax]
mov	[ebp+var_44], eax
mov	eax, [esi+0FCh]
push	eax
mov	ecx, [eax]
call	dword ptr [ecx+24h]
test	eax, eax
jnz	loc_418C46
cmp	[ebp+var_28], edi
mov	[ebp+var_24], edi
jbe	short loc_418C46

loc_418BC7:
mov	[ebp+bstrString], edi
lea	edx, [ebp+var_E]
mov	eax, [esi+0FCh]
push	edx
lea	edx, [ebp+var_34]
mov	ecx, [eax]
push	edx
lea	edx, [ebp+bstrString]
mov	byte ptr [ebp+var_4], 3
push	edx
push	[ebp+var_24]
push	eax
call	dword ptr [ecx+28h]
test	eax, eax
jnz	short loc_418C32
mov	word ptr [ebp+pvarg.anonymous_0], di
mov	word ptr [ebp+pvarg.anonymous_0+2], di
mov	eax, [esi+0FCh]
lea	edx, [ebp+pvarg]
push	edx
mov	byte ptr [ebp+var_4], 4
push	[ebp+var_34]
mov	ecx, [eax]
push	[ebp+var_44]
push	eax
call	dword ptr [ecx+14h]
test	eax, eax
jnz	short loc_418C26
mov	edx, [ebp+bstrString]
mov	ecx, [ebp+var_34]
lea	eax, [ebp+Memory]
push	eax
lea	eax, [ebp+pvarg]
push	eax
call	sub_419006

loc_418C26:		; pvarg
lea	ecx, [ebp+pvarg]
mov	byte ptr [ebp+var_4], 3
call	sub_42CDE1

loc_418C32:		; bstrString
push	[ebp+bstrString]
mov	byte ptr [ebp+var_4], 2
call	ebx ; SysFreeString
inc	[ebp+var_24]
mov	eax, [ebp+var_24]
cmp	eax, [ebp+var_28]
jb	short loc_418BC7

loc_418C46:
push	off_45BAC0
lea	ecx, [ebp+Memory]
call	sub_403195

loc_418C54:
mov	[ebp+var_70], di
mov	[ebp+var_6E], di
mov	eax, [esi+0FCh]
lea	edx, [ebp+var_70]
push	edx
push	3
mov	ecx, [eax]
push	eax
mov	byte ptr [ebp+var_4], 5
call	dword ptr [ecx+2Ch]
test	eax, eax
jnz	short loc_418C8B
lea	eax, [ebp+Memory]
mov	edx, offset aPath ; "Path"
push	eax
lea	eax, [ebp+var_70]
push	eax
push	4
pop	ecx
call	sub_419006

loc_418C8B:		; pvarg
lea	ecx, [ebp+var_70]
mov	byte ptr [ebp+var_4], 2
call	sub_42CDE1
mov	[ebp+var_2C], edi
mov	eax, [esi+0FCh]
lea	edx, [ebp+var_2C]
push	edx
push	offset unk_44B650
mov	ecx, [eax]
push	eax
mov	byte ptr [ebp+var_4], 6
call	dword ptr [ecx]
mov	eax, [ebp+var_2C]
cmp	eax, edi
jz	loc_418D48
mov	ecx, [eax]
lea	edx, [ebp+var_28]
push	edx
push	eax
call	dword ptr [ecx+0Ch]
test	eax, eax
jnz	short loc_418D48
cmp	[ebp+var_28], edi
mov	[ebp+var_24], edi
jbe	short loc_418D48

loc_418CD3:
mov	[ebp+bstrString], edi
lea	edx, [ebp+var_E]
mov	eax, [ebp+var_2C]
push	edx
lea	edx, [ebp+var_34]
mov	ecx, [eax]
push	edx
lea	edx, [ebp+bstrString]
mov	byte ptr [ebp+var_4], 7
push	edx
push	[ebp+var_24]
push	eax
call	dword ptr [ecx+10h]
test	eax, eax
jnz	short loc_418D38
mov	word ptr [ebp+pvarg.anonymous_0], di
mov	word ptr [ebp+pvarg.anonymous_0+2], di
mov	eax, [esi+0FCh]
lea	edx, [ebp+pvarg]
push	edx
mov	byte ptr [ebp+var_4], 8
push	[ebp+var_34]
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+2Ch]
test	eax, eax
jnz	short loc_418D2C
mov	edx, [ebp+bstrString]
mov	ecx, [ebp+var_34]
lea	eax, [ebp+Memory]
push	eax
lea	eax, [ebp+pvarg]
push	eax
call	sub_419006

loc_418D2C:		; pvarg
lea	ecx, [ebp+pvarg]
mov	byte ptr [ebp+var_4], 7
call	sub_42CDE1

loc_418D38:		; bstrString
push	[ebp+bstrString]
call	ebx ; SysFreeString
inc	[ebp+var_24]
mov	eax, [ebp+var_24]
cmp	eax, [ebp+var_28]
jb	short loc_418CD3

loc_418D48:
mov	[ebp+var_38], edi
mov	eax, [esi+0FCh]
lea	edx, [ebp+var_38]
push	edx
push	offset unk_44B630
mov	ecx, [eax]
push	eax
mov	byte ptr [ebp+var_4], 9
call	dword ptr [ecx]
mov	eax, [ebp+var_38]
cmp	eax, edi
jz	loc_418F76
mov	[ebp+var_14], edi
mov	ecx, [eax]
lea	edx, [ebp+var_14]
push	edx
push	eax
mov	byte ptr [ebp+var_4], 0Ah
call	dword ptr [ecx+0Ch]
mov	eax, [ebp+var_14]
cmp	eax, edi
jz	loc_418F68
mov	ecx, [eax]
lea	edx, [ebp+var_28]
push	edx
push	eax
call	dword ptr [ecx+0Ch]
test	eax, eax
jz	short loc_418D9F
xor	eax, eax
mov	[ebp+var_28], eax
jmp	short loc_418DA2

loc_418D9F:
mov	eax, [ebp+var_28]

loc_418DA2:
cmp	eax, edi
mov	[ebp+bstrString], edi
jbe	loc_418F65

loc_418DAD:
sub	eax, [ebp+bstrString]
lea	edx, [ebp+var_3C]
push	edx
dec	eax
mov	[ebp+var_34], eax
mov	eax, [ebp+var_14]
push	[ebp+var_34]
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+14h]
test	eax, eax
jnz	loc_418E96
push	off_45BAC0
lea	ecx, [ebp+Memory]
call	sub_403195
push	0FFFFFFFDh
pop	eax
cmp	[ebp+var_3C], eax
mov	[ebp+var_18], eax
jle	loc_418E96

loc_418DE9:
mov	[ebp+var_24], edi
cmp	[ebp+var_18], 0FFFFFFFDh
mov	byte ptr [ebp+var_4], 0Bh
jz	short loc_418E35
cmp	[ebp+var_18], 0FFFFFFFEh
jz	short loc_418E2C
cmp	[ebp+var_18], 0FFFFFFFFh
jz	short loc_418E23
lea	edx, [ebp+var_E]
mov	eax, [ebp+var_14]
push	edx
lea	edx, [ebp+var_20]
push	edx
lea	edx, [ebp+var_24]
mov	ecx, [eax]
push	edx
push	[ebp+var_18]
push	[ebp+var_34]
push	eax
call	dword ptr [ecx+18h]
test	eax, eax
jz	short loc_418E3C
jmp	short loc_418E7E

loc_418E23:
mov	[ebp+var_20], 37h
jmp	short loc_418E3C

loc_418E2C:
mov	[ebp+var_20], 14h
jmp	short loc_418E3C

loc_418E35:
mov	[ebp+var_20], 3

loc_418E3C:
mov	word ptr [ebp+pvarg.anonymous_0], di
mov	word ptr [ebp+pvarg.anonymous_0+2], di
mov	eax, [ebp+var_14]
lea	edx, [ebp+pvarg]
push	edx
mov	byte ptr [ebp+var_4], 0Ch
push	[ebp+var_20]
mov	ecx, [eax]
push	[ebp+var_34]
push	eax
call	dword ptr [ecx+10h]
test	eax, eax
jnz	short loc_418E72
mov	edx, [ebp+var_24]
mov	ecx, [ebp+var_20]
lea	eax, [ebp+Memory]
push	eax
lea	eax, [ebp+pvarg]
push	eax
call	sub_419006

loc_418E72:		; pvarg
lea	ecx, [ebp+pvarg]
mov	byte ptr [ebp+var_4], 0Bh
call	sub_42CDE1

loc_418E7E:		; bstrString
push	[ebp+var_24]
mov	byte ptr [ebp+var_4], 0Ah
call	ebx ; SysFreeString
inc	[ebp+var_18]
mov	eax, [ebp+var_18]
cmp	eax, [ebp+var_3C]
jl	loc_418DE9

loc_418E96:
mov	eax, [ebp+var_28]
lea	ecx, [eax-1]
cmp	[ebp+bstrString], ecx
jz	loc_418F59
sub	eax, [ebp+bstrString]
lea	edx, [ebp+var_44]
push	edx
dec	eax
mov	[ebp+var_34], eax
mov	eax, [ebp+var_14]
push	[ebp+var_34]
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+20h]
test	eax, eax
jnz	loc_418F56
push	off_45BAC4
lea	ecx, [ebp+Memory]
call	sub_403195
cmp	[ebp+var_44], edi
mov	[ebp+var_18], edi
jle	short loc_418F56

loc_418EDA:
mov	[ebp+var_24], edi
lea	edx, [ebp+var_10]
mov	eax, [ebp+var_14]
push	edx
lea	edx, [ebp+var_40]
push	edx
lea	edx, [ebp+var_24]
mov	ecx, [eax]
push	edx
push	[ebp+var_18]
mov	byte ptr [ebp+var_4], 0Dh
push	[ebp+var_34]
push	eax
call	dword ptr [ecx+24h]
test	eax, eax
jnz	short loc_418F42
mov	[ebp+var_70], di
mov	[ebp+var_6E], di
mov	eax, [ebp+var_14]
lea	edx, [ebp+var_70]
push	edx
mov	byte ptr [ebp+var_4], 0Eh
push	[ebp+var_40]
mov	ecx, [eax]
push	[ebp+var_34]
push	eax
call	dword ptr [ecx+1Ch]
test	eax, eax
jnz	short loc_418F36
mov	edx, [ebp+var_24]
mov	ecx, [ebp+var_40]
lea	eax, [ebp+Memory]
push	eax
lea	eax, [ebp+var_70]
push	eax
call	sub_419006

loc_418F36:		; pvarg
lea	ecx, [ebp+var_70]
mov	byte ptr [ebp+var_4], 0Dh
call	sub_42CDE1

loc_418F42:		; bstrString
push	[ebp+var_24]
mov	byte ptr [ebp+var_4], 0Ah
call	ebx ; SysFreeString
inc	[ebp+var_18]
mov	eax, [ebp+var_18]
cmp	eax, [ebp+var_44]
jl	short loc_418EDA

loc_418F56:
mov	eax, [ebp+var_28]

loc_418F59:
inc	[ebp+bstrString]
cmp	[ebp+bstrString], eax
jb	loc_418DAD

loc_418F65:
mov	eax, [ebp+var_14]

loc_418F68:
cmp	eax, edi
mov	byte ptr [ebp+var_4], 9
jz	short loc_418F76
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_418F76:
push	3020900h
mov	edx, 0FDCh
lea	ecx, [ebp+pvarg.anonymous_0+4]
call	sub_40B168
mov	eax, [eax]
mov	ecx, esi
add	esi, 4
push	edi		; uType
neg	ecx
sbb	ecx, ecx
push	eax		; lpCaption
push	[ebp+Memory]	; lpText
and	ecx, esi
mov	ecx, [ecx]
push	ecx		; hWnd
call	ds:MessageBoxW
push	dword ptr [ebp+pvarg.anonymous_0+4] ; Memory
call	sub_4284D8
mov	eax, [ebp+var_38]
pop	ecx
cmp	eax, edi
mov	byte ptr [ebp+var_4], 6
pop	ebx
jz	short loc_418FBE
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_418FBE:
mov	eax, [ebp+var_2C]
mov	byte ptr [ebp+var_4], 2
cmp	eax, edi
jz	short loc_418FCF
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_418FCF:
lea	ecx, [ebp+var_84]
mov	byte ptr [ebp+var_4], 1
call	sub_4282FE
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_418FE7:
mov	eax, [ebp+var_30]
or	[ebp+var_4], 0FFFFFFFFh
cmp	eax, edi
jz	short loc_418FF8
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_418FF8:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_418B0B endp



; Attributes: bp-based frame

sub_419006 proc	near

Memory=	dword ptr -28h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_44538C
call	__EH_prolog
sub	esp, 1Ch
push	ebx
push	esi
mov	esi, [ebp+arg_0]
xor	ebx, ebx
push	edi
mov	[ebp+var_10], edx
cmp	[esi], bx
mov	edi, ecx
jz	loc_41912C
push	3
lea	ecx, [ebp+var_1C]
mov	[ebp+var_1C], ebx
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
call	sub_403396
mov	ax, [esi]
mov	[ebp+var_4], ebx
cmp	ax, 15h
jz	short loc_41904E
cmp	ax, 13h
jnz	short loc_419089

loc_41904E:
cmp	edi, 7
jz	short loc_4190AB
cmp	edi, 8
jz	short loc_4190AB
cmp	edi, 1Fh
jz	short loc_4190AB
cmp	edi, 20h
jz	short loc_4190AB
cmp	edi, 26h
jz	short loc_4190AB
cmp	edi, 1102h
jz	short loc_4190AB
cmp	edi, 1100h
jz	short loc_4190AB
cmp	edi, 1101h
jz	short loc_4190AB
cmp	edi, 2Ch
jz	short loc_4190AB
cmp	edi, 2Dh
jz	short loc_4190AB

loc_419089:
push	1
push	edi
mov	edx, esi
lea	ecx, [ebp+Memory]
call	sub_4371AD
push	eax
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 2
call	sub_40312C
mov	byte ptr [ebp+var_4], bl
push	[ebp+Memory]
jmp	short loc_4190CF

loc_4190AB:
mov	ecx, esi
call	sub_42D2C6
lea	ecx, [ebp+Memory]
push	edx
push	eax
call	sub_418270
push	eax
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 1
call	sub_40312C
mov	byte ptr [ebp+var_4], bl
push	[ebp+Memory]	; Memory

loc_4190CF:
call	sub_4284D8
cmp	[ebp+var_18], ebx
pop	ecx
jz	short loc_419123
push	[ebp+var_10]
mov	edx, edi
lea	ecx, [ebp+Memory]
call	sub_41D835
mov	esi, [ebp+arg_4]
push	eax
mov	ecx, esi
mov	byte ptr [ebp+var_4], 3
call	sub_4031F2
mov	byte ptr [ebp+var_4], bl
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
push	off_45BAC8
mov	ecx, esi
call	sub_403195
lea	eax, [ebp+var_1C]
mov	ecx, esi
push	eax
call	sub_4031F2
mov	ecx, esi
push	0Ah
call	sub_40316A

loc_419123:		; Memory
push	[ebp+var_1C]
call	sub_4284D8
pop	ecx

loc_41912C:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	8
sub_419006 endp



; Attributes: bp-based frame

sub_41913D proc	near

var_38=	dword ptr -38h
var_34=	dword ptr -34h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
Memory=	dword ptr -24h
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4453B0
call	__EH_prolog
sub	esp, 2Ch
push	ebx
push	esi
push	edi
mov	edi, ecx
xor	ebx, ebx
push	3
lea	ecx, [ebp+var_18]
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
mov	[ebp+var_10], ebx
call	sub_403396
mov	[ebp+var_4], ebx
mov	[ebp+var_34], ebx
mov	[ebp+var_30], ebx
mov	[ebp+var_2C], ebx
mov	[ebp+var_28], 4
mov	[ebp+var_38], offset off_44B518
lea	eax, [ebp+var_38]
mov	ecx, edi
push	eax
mov	byte ptr [ebp+var_4], 1
call	sub_41708B
xor	esi, esi
cmp	[ebp+var_30], ebx
jle	short loc_4191D6

loc_419194:
cmp	esi, ebx
jle	short loc_4191A5
push	offset asc_45BB2C ; "\r\n"
lea	ecx, [ebp+var_18]
call	sub_403195

loc_4191A5:
mov	eax, [ebp+var_2C]
mov	ecx, edi
push	dword ptr [eax+esi*4]
lea	eax, [ebp+Memory]
push	eax
call	sub_41733B
push	eax
lea	ecx, [ebp+var_18]
mov	byte ptr [ebp+var_4], 2
call	sub_4031F2
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 1
call	sub_4284D8
inc	esi
pop	ecx
cmp	esi, [ebp+var_30]
jl	short loc_419194

loc_4191D6:
mov	ecx, [edi+40h]
lea	edx, [ebp+var_18]
call	sub_4292B4
lea	ecx, [ebp+var_38]
mov	byte ptr [ebp+var_4], bl
call	sub_4282FE
push	[ebp+var_18]	; Memory
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_41913D endp



; Attributes: bp-based frame

sub_419204 proc	near

var_5C=	dword ptr -5Ch
var_54=	dword ptr -54h
var_50=	dword ptr -50h
var_48=	dword ptr -48h
Memory=	dword ptr -3Ch
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	byte ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
ppshf= dword ptr -14h
var_10=	word ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_4453EC
call	__EH_prolog
sub	esp, 50h
push	ebx
push	esi
mov	esi, [ebp+arg_4]
xor	ebx, ebx
push	edi
mov	[ebp+var_1C], ecx
mov	eax, [esi]
cmp	eax, ebx
jz	short loc_41922A
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
mov	[esi], ebx

loc_41922A:
mov	ecx, [ebp+var_1C]
lea	eax, [ebp+var_48]
push	eax
call	sub_40E71B
mov	[ebp+var_4], ebx
mov	[ebp+ppshf], ebx
lea	eax, [ebp+ppshf]
mov	byte ptr [ebp+var_4], 1
push	eax		; ppshf
call	ds:SHGetDesktopFolder
mov	esi, eax
cmp	esi, ebx
jz	short loc_419267

loc_419250:
mov	eax, [ebp+ppshf]
mov	byte ptr [ebp+var_4], bl
cmp	eax, ebx
jz	short loc_419260
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_419260:
mov	ebx, esi
jmp	loc_4194BD

loc_419267:
mov	eax, [ebp+ppshf]
cmp	eax, ebx
jnz	short loc_419278

loc_41926E:
mov	ebx, 80004005h
jmp	loc_4194BD

loc_419278:
mov	edi, [eax]
mov	esi, eax
lea	eax, [ebp+var_24]
push	ebx
push	eax
mov	ecx, [ebp+var_1C]
lea	eax, [ebp+var_28]
push	eax
push	[ebp+var_48]
push	ebx
call	sub_40DA67
push	eax
push	esi
call	dword ptr [edi+0Ch]
mov	esi, eax
cmp	esi, ebx
jnz	short loc_419250
mov	[ebp+var_18], ebx
mov	eax, [ebp+ppshf]
lea	edx, [ebp+var_18]
push	edx
push	offset unk_44CC78
mov	ecx, [eax]
push	ebx
push	[ebp+var_24]
mov	byte ptr [ebp+var_4], 2
push	eax
call	dword ptr [ecx+14h]
mov	esi, eax
cmp	esi, ebx
jnz	loc_4193EC
cmp	[ebp+var_18], ebx
jnz	short loc_4192DA

loc_4192C8:
mov	eax, [ebp+ppshf]
mov	byte ptr [ebp+var_4], bl
cmp	eax, ebx
jz	short loc_41926E
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
jmp	short loc_41926E

loc_4192DA:
push	4
lea	ecx, [ebp+var_5C]
call	sub_402794
mov	[ebp+var_5C], offset off_44C39C
mov	esi, [ebp+arg_0]
lea	ecx, [ebp+var_5C]
mov	byte ptr [ebp+var_4], 3
push	dword ptr [esi+8]
call	sub_428378
cmp	[esi+8], ebx
mov	[ebp+arg_0], ebx
jle	loc_419389

loc_419309:
mov	eax, [esi+0Ch]
mov	ecx, [ebp+arg_0]
push	dword ptr [eax+ecx*4]
mov	ecx, [ebp+var_1C]
lea	eax, [ebp+Memory]
push	eax
call	sub_4174B8
mov	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 4
call	sub_40E6B1
test	al, al
jz	short loc_419338
push	5Ch
lea	ecx, [ebp+Memory]
call	sub_40316A

loc_419338:
mov	eax, [ebp+var_18]
push	ebx
mov	[ebp+var_2C], eax
mov	ecx, [ebp+var_1C]
mov	edi, [eax]
lea	eax, [ebp+var_30]
push	eax
lea	eax, [ebp+var_28]
push	eax
push	[ebp+Memory]
push	ebx
call	sub_40DA67
push	eax
push	[ebp+var_2C]
call	dword ptr [edi+0Ch]
mov	edi, eax
cmp	edi, ebx
jnz	loc_419406
push	[ebp+var_30]
lea	ecx, [ebp+var_5C]
call	sub_429907
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 3
call	sub_4284D8
inc	[ebp+arg_0]
pop	ecx
mov	eax, [ebp+arg_0]
cmp	eax, [esi+8]
jl	short loc_419309

loc_419389:
cmp	[ebp+var_54], ebx
jnz	short loc_41939E
lea	eax, [ebp+var_10]
lea	ecx, [ebp+var_5C]
push	eax
mov	[ebp+var_10], bx
call	sub_429907

loc_41939E:
mov	[ebp+var_20], ebx
mov	eax, [ebp+var_18]
mov	ecx, [ebp+var_1C]
mov	esi, eax
mov	byte ptr [ebp+var_4], 5
mov	edi, [eax]
lea	eax, [ebp+var_20]
push	eax
push	ebx
push	offset unk_44CC88
push	[ebp+var_50]
push	[ebp+var_54]
call	sub_40DA67
push	eax
push	esi
call	dword ptr [edi+28h]
mov	esi, eax
cmp	esi, ebx
jz	short loc_419449
mov	eax, [ebp+var_20]
mov	byte ptr [ebp+var_4], 3
cmp	eax, ebx
jz	short loc_4193E0
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_4193E0:
lea	ecx, [ebp+var_5C]
mov	byte ptr [ebp+var_4], 2
call	sub_4282FE

loc_4193EC:
mov	eax, [ebp+var_18]
mov	byte ptr [ebp+var_4], 1
cmp	eax, ebx
jz	loc_419250
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
jmp	loc_419250

loc_419406:		; Memory
push	[ebp+Memory]
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 2
lea	ecx, [ebp+var_5C]
call	sub_4282FE
mov	eax, [ebp+var_18]
mov	byte ptr [ebp+var_4], 1
cmp	eax, ebx
jz	short loc_41942C
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_41942C:
mov	eax, [ebp+ppshf]
mov	byte ptr [ebp+var_4], bl
cmp	eax, ebx
jz	short loc_41943C
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_41943C:		; Memory
push	[ebp+var_48]
call	sub_4284D8
pop	ecx
mov	eax, edi
jmp	short loc_4194C8

loc_419449:
cmp	[ebp+var_20], ebx
jnz	short loc_419474
lea	ecx, [ebp+var_5C]
mov	byte ptr [ebp+var_4], 2
call	sub_4282FE
mov	eax, [ebp+var_18]
mov	byte ptr [ebp+var_4], 1
cmp	eax, ebx
jz	loc_4192C8
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
jmp	loc_4192C8

loc_419474:
push	[ebp+var_20]
mov	ecx, [ebp+arg_4]
call	sub_43D0DB
mov	eax, [ebp+var_20]
mov	byte ptr [ebp+var_4], 3
cmp	eax, ebx
jz	short loc_419490
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_419490:
lea	ecx, [ebp+var_5C]
mov	byte ptr [ebp+var_4], 2
call	sub_4282FE
mov	eax, [ebp+var_18]
mov	byte ptr [ebp+var_4], 1
cmp	eax, ebx
jz	short loc_4194AD
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_4194AD:
mov	eax, [ebp+ppshf]
mov	byte ptr [ebp+var_4], bl
cmp	eax, ebx
jz	short loc_4194BD
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_4194BD:		; Memory
push	[ebp+var_48]
call	sub_4284D8
pop	ecx
mov	eax, ebx

loc_4194C8:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	8
sub_419204 endp



; Attributes: bp-based frame

sub_4194D9 proc	near

var_6C=	dword ptr -6Ch
var_60=	dword ptr -60h
var_5C=	dword ptr -5Ch
var_50=	dword ptr -50h
Dst= dword ptr -40h
var_38=	dword ptr -38h
Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_445408
call	__EH_prolog
sub	esp, 60h
push	ebx
push	esi
mov	esi, [ebp+arg_8]
xor	ebx, ebx
push	edi
mov	[ebp+var_10], ecx
mov	eax, [esi]
cmp	eax, ebx
jz	short loc_4194FF
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
mov	[esi], ebx

loc_4194FF:
mov	ecx, [ebp+var_10]
push	esi
push	[ebp+arg_4]
call	sub_419204
cmp	[esi], ebx
jz	loc_4195CA
push	24h
lea	eax, [ebp+Dst]
pop	edi
push	edi		; Size
push	ebx		; Val
push	eax		; Dst
call	memset
mov	ecx, [ebp+var_10]
add	esp, 0Ch
mov	[ebp+Dst], edi
call	sub_40DA67
mov	[ebp+var_38], eax
call	ds:CreatePopupMenu
mov	edi, eax
cmp	edi, ebx
jnz	short loc_419553
lea	eax, [ebp+arg_8]
push	offset unk_44D120
push	eax
mov	[ebp+arg_8], 33647h
call	_CxxThrowException

loc_419553:
mov	esi, [esi]
push	4
push	7FFFh
push	44Ch
mov	eax, [esi]
push	ebx
push	edi
push	esi
call	dword ptr [eax+0Ch]
mov	eax, [ebp+arg_0]
lea	ecx, [ebp+var_6C]
mov	[ebp+arg_4], eax
call	sub_40BF33
push	30202A0h
mov	edx, 0FAAh
lea	ecx, [ebp+Memory]
mov	[ebp+var_4], ebx
mov	[ebp+var_60], 16h
mov	[ebp+var_5C], ebx
mov	[ebp+var_50], edi
call	sub_40B168
push	eax
lea	ecx, [ebp+var_6C]
mov	byte ptr [ebp+var_4], 1
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_6C]
push	eax		; int
push	1		; char
push	ebx		; item
lea	ecx, [ebp+arg_4]
call	sub_42C858
push	[ebp+var_6C]	; Memory
call	sub_4284D8
pop	ecx

loc_4195CA:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	0Ch
sub_4194D9 endp




; int __stdcall	sub_4195DB(HMENU hMenu)
sub_4195DB proc	near

hMenu= dword ptr  4

lea	eax, [ecx+174h]
push	1		; int
push	eax		; int
lea	eax, [ecx+170h]
push	eax		; int
push	[esp+0Ch+hMenu]	; hMenu
call	sub_41979A
retn	4
sub_4195DB endp



; Attributes: bp-based frame

sub_4195F7 proc	near

var_64=	dword ptr -64h
var_58=	dword ptr -58h
var_50=	dword ptr -50h
var_44=	dword ptr -44h
var_3C=	dword ptr -3Ch
Memory=	dword ptr -30h
var_24=	dword ptr -24h
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_445456
call	__EH_prolog
sub	esp, 58h
push	ebx
push	esi
mov	esi, [ebp+arg_8]
push	edi
xor	edi, edi
mov	ebx, ecx
mov	eax, [esi]
mov	[ebp+var_14], ebx
cmp	eax, edi
jz	short loc_41961F
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
mov	[esi], edi

loc_41961F:		; Size
push	44h
call	sub_4284B1
pop	ecx
mov	[ebp+var_10], eax
cmp	eax, edi
mov	[ebp+var_4], edi
jz	short loc_41963D
mov	ecx, eax
call	sub_4389B8
mov	[ebp+var_10], eax
jmp	short loc_419642

loc_41963D:
mov	[ebp+var_10], edi
mov	eax, edi

loc_419642:
or	[ebp+var_4], 0FFFFFFFFh
cmp	eax, edi
mov	[ebp+var_18], eax
jz	short loc_419653
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+4]

loc_419653:
add	ebx, 0D8h
lea	ecx, [ebp+var_24]
push	ebx
mov	[ebp+var_4], 1
call	sub_4030F2
lea	ecx, [ebp+var_50]
mov	byte ptr [ebp+var_4], 2
call	sub_40337B
mov	ebx, offset off_44B510
mov	[ebp+var_50], ebx
mov	esi, [ebp+arg_4]
mov	byte ptr [ebp+var_4], 3
mov	eax, [esi+8]
test	eax, eax
jle	short loc_4196D6

loc_41968B:
mov	eax, [esi+0Ch]
mov	ecx, [ebp+var_14]
push	dword ptr [eax+edi*4]
lea	eax, [ebp+var_3C]
push	eax
call	sub_4174B8
push	eax
lea	edx, [ebp+var_24]
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 4
call	sub_40356A
push	eax
lea	ecx, [ebp+var_50]
mov	byte ptr [ebp+var_4], 5
call	sub_4032B4
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_3C]	; Memory
mov	byte ptr [ebp+var_4], 3
call	sub_4284D8
inc	edi
pop	ecx
cmp	edi, [esi+8]
pop	ecx
jl	short loc_41968B

loc_4196D6:
push	4
lea	ecx, [ebp+var_64]
call	sub_402794
mov	[ebp+var_64], offset off_44C298
xor	edi, edi
mov	byte ptr [ebp+var_4], 6
cmp	[esi+8], edi
jle	short loc_419708

loc_4196F2:
mov	eax, [ebp+var_44]
lea	ecx, [ebp+var_64]
mov	eax, [eax+edi*4]
push	dword ptr [eax]
call	sub_429907
inc	edi
cmp	edi, [esi+8]
jl	short loc_4196F2

loc_419708:
push	dword ptr [esi+8]
mov	esi, [ebp+var_10]
mov	ecx, esi
push	[ebp+var_58]
push	[ebp+var_24]
call	sub_438CCB
test	eax, eax
jnz	short loc_41974B
mov	eax, [esi]
push	0
push	44Bh
push	3E8h
push	0
push	[ebp+arg_0]
push	esi
call	dword ptr [eax+0Ch]
sar	eax, 1Fh
not	al
and	al, 1
mov	byte ptr [ebp+arg_4+3],	al
jz	short loc_41974B
mov	ecx, [ebp+arg_8]
push	esi
call	sub_43D0DB

loc_41974B:
lea	ecx, [ebp+var_64]
mov	byte ptr [ebp+var_4], 3
call	sub_4282FE
mov	[ebp+var_50], ebx
lea	ecx, [ebp+var_50]
mov	byte ptr [ebp+var_4], 7
call	sub_428327
lea	ecx, [ebp+var_50]
mov	byte ptr [ebp+var_4], 2
call	sub_4282FE
push	[ebp+var_24]	; Memory
call	sub_4284D8
or	[ebp+var_4], 0FFFFFFFFh
pop	ecx
test	esi, esi
jz	short loc_419789
mov	eax, [esi]
push	esi
call	dword ptr [eax+8]

loc_419789:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	0Ch
sub_4195F7 endp



; Attributes: bp-based frame

; int __stdcall	sub_41979A(HMENU hMenu,	int, int, int)
sub_41979A proc	near

var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
hMenu= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h

mov	eax, offset loc_445468
call	__EH_prolog
sub	esp, 18h
push	ebx
push	esi
mov	esi, [ebp+arg_4]
xor	ebx, ebx
push	edi
mov	[ebp+var_10], ecx
mov	eax, [esi]
cmp	eax, ebx
jz	short loc_4197C0
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
mov	[esi], ebx

loc_4197C0:
mov	edi, [ebp+arg_8]
mov	eax, [edi]
cmp	eax, ebx
jz	short loc_4197D1
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
mov	[edi], ebx

loc_4197D1:
mov	[ebp+var_20], ebx
mov	[ebp+var_1C], ebx
mov	[ebp+var_18], ebx
mov	[ebp+var_14], 4
mov	[ebp+var_24], offset off_44B518
mov	ecx, [ebp+var_10]
lea	eax, [ebp+var_24]
push	eax
mov	[ebp+var_4], ebx
call	sub_4170D3
mov	ecx, [ebp+var_10]
lea	eax, [ebp+var_24]
push	esi
push	eax
push	[ebp+hMenu]
call	sub_4195F7
cmp	byte_45D4C4, bl
jz	short loc_41981F
mov	ecx, [ebp+var_10]
lea	eax, [ebp+var_24]
push	edi
push	eax
push	[ebp+hMenu]
call	sub_4194D9

loc_41981F:
xor	esi, esi
cmp	[ebp+var_1C], ebx
jle	short loc_41983E

loc_419826:
mov	eax, [ebp+var_18]
mov	ecx, [ebp+var_10]
push	dword ptr [eax+esi*4]
call	sub_41756F
test	al, al
jnz	short loc_41983E
inc	esi
cmp	esi, [ebp+var_1C]
jl	short loc_419826

loc_41983E:
cmp	esi, [ebp+var_1C]
push	[ebp+hMenu]	; hMenu
mov	esi, [ebp+var_1C]
setz	al
mov	byte ptr [ebp+arg_4], al
call	ds:GetMenuItemCount
push	[ebp+arg_4]
mov	ecx, [ebp+var_10]
mov	edi, eax
push	esi
call	sub_40E6A6
mov	ecx, [ebp+hMenu]
push	eax
push	[ebp+arg_C]
mov	edx, edi
call	sub_40C412
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_24]
call	sub_4282FE
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	10h
sub_41979A endp




sub_41988C proc	near

arg_0= dword ptr  4

mov	eax, [ecx+174h]
mov	edx, [ecx+170h]
push	eax
push	edx
push	[esp+8+arg_0]
call	sub_4198A6
retn	4
sub_41988C endp



; Attributes: bp-based frame

sub_4198A6 proc	near

var_68=	dword ptr -68h
var_64=	dword ptr -64h
var_60=	dword ptr -60h
var_5C=	dword ptr -5Ch
var_58=	dword ptr -58h
var_54=	dword ptr -54h
var_50=	dword ptr -50h
var_44=	dword ptr -44h
var_40=	dword ptr -40h
var_38=	dword ptr -38h
var_34=	dword ptr -34h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_445484
call	__EH_prolog
sub	esp, 5Ch
push	ebx
push	esi
push	edi
mov	edi, ecx
mov	ecx, [ebp+arg_0]
mov	[ebp+var_10], edi
cmp	ecx, 44Ch
sbb	al, al
lea	esi, [ecx-44Ch]
inc	al
mov	byte ptr [ebp+arg_0+3],	al
jnz	short loc_4198D9
lea	esi, [ecx-3E8h]

loc_4198D9:
mov	ecx, edi
mov	[ebp+var_68], 40h
mov	[ebp+var_64], 4000h
call	sub_40DA67
movzx	esi, si
add	edi, 0D8h
xor	ebx, ebx
mov	edx, edi
lea	ecx, [ebp+var_28]
mov	[ebp+var_60], eax
mov	[ebp+var_5C], esi
mov	[ebp+var_58], ebx
call	sub_43A785
mov	eax, [ebp+var_28]
push	edi
lea	ecx, [ebp+Memory]
mov	[ebp+var_4], ebx
mov	[ebp+var_54], eax
mov	[ebp+var_50], 5
mov	[ebp+var_58], ebx
mov	[ebp+var_44], offset pszPath
mov	[ebp+var_40], esi
call	sub_4030F2
mov	eax, [ebp+Memory]
cmp	byte ptr [ebp+arg_0+3],	bl
mov	[ebp+var_38], eax
mov	eax, [ebp+arg_8]
mov	byte ptr [ebp+var_4], 1
mov	[ebp+var_34], offset word_45D498
mov	[ebp+var_30], ebx
mov	[ebp+var_2C], ebx
jnz	short loc_419954
mov	eax, [ebp+arg_4]

loc_419954:
mov	ecx, [eax]
lea	edx, [ebp+var_68]
push	edx
push	eax
call	dword ptr [ecx+10h]
cmp	eax, ebx
jnz	short loc_41996C
mov	ecx, [ebp+var_10]
call	sub_41BACC
mov	bl, 1

loc_41996C:		; Memory
push	[ebp+Memory]
call	sub_4284D8
push	[ebp+var_28]	; Memory
call	sub_4284D8
pop	ecx
mov	al, bl
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	0Ch
sub_4198A6 endp



; Attributes: bp-based frame

; int __stdcall	sub_419991(HWND	hWnd, int, int)
sub_419991 proc	near

var_44=	dword ptr -44h
var_3C=	dword ptr -3Ch
lParam=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
Point= tagPOINT	ptr -20h
var_18=	dword ptr -18h
var_14=	dword ptr -14h
hMenu= dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
hWnd= dword ptr	 8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_4454B0
call	__EH_prolog
sub	esp, 38h
push	ebx
push	esi
push	edi
mov	esi, ecx
push	[ebp+hWnd]	; hWnd
mov	edi, [esi+74h]
call	ds:GetParent
cmp	eax, edi
jnz	short loc_4199C5
push	[ebp+arg_8]
mov	ecx, esi
push	[ebp+arg_4]
call	sub_417992
jmp	loc_419B42

loc_4199C5:
mov	eax, [ebp+hWnd]
cmp	eax, [esi+74h]
jnz	loc_419A57
push	4
lea	ecx, [ebp+var_44]
call	sub_402794
mov	[ebp+var_44], offset off_44B518
lea	eax, [ebp+var_44]
xor	ebx, ebx
push	eax
mov	ecx, esi
mov	[ebp+var_4], ebx
call	sub_4170D3
mov	edi, [ebp+arg_4]
cmp	edi, ebx
jl	short loc_419A02
cmp	[ebp+arg_8], ebx
jge	loc_419A96

loc_419A02:
cmp	[ebp+var_3C], ebx
jnz	short loc_419A0D
xor	ecx, ecx
xor	eax, eax
jmp	short loc_419A7A

loc_419A0D:
mov	edi, ds:SendMessageA
push	1		; lParam
push	0FFFFFFFFh	; wParam
push	100Ch		; Msg
push	dword ptr [esi+74h] ; hWnd
call	edi ; SendMessageA
cmp	eax, 0FFFFFFFFh
jz	short loc_419A4B
lea	ecx, [ebp+lParam]
test	ecx, ecx
jz	short loc_419A39
mov	[ebp+lParam], 1
lea	ecx, [ebp+lParam]
jmp	short loc_419A3B

loc_419A39:
xor	ecx, ecx

loc_419A3B:		; lParam
push	ecx
push	eax		; wParam
push	100Eh		; Msg
push	dword ptr [esi+74h] ; hWnd
call	edi ; SendMessageA
cmp	eax, ebx
jnz	short loc_419A5E

loc_419A4B:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_44]
call	sub_4282FE

loc_419A57:
xor	al, al
jmp	loc_419B44

loc_419A5E:
mov	eax, [ebp+lParam]
mov	ecx, [ebp+var_28]
add	eax, ecx
cdq
sub	eax, edx
mov	edx, [ebp+var_24]
mov	ecx, eax
mov	eax, [ebp+var_2C]
add	eax, edx
cdq
sub	eax, edx
sar	ecx, 1
sar	eax, 1

loc_419A7A:
mov	[ebp+Point.y], eax
lea	eax, [ebp+Point]
push	eax		; lpPoint
mov	[ebp+Point.x], ecx
push	dword ptr [esi+74h] ; hWnd
call	ds:ClientToScreen
mov	eax, [ebp+Point.y]
mov	edi, [ebp+Point.x]
mov	[ebp+arg_8], eax

loc_419A96:
lea	eax, [ebp+hMenu]
mov	[ebp+hMenu], ebx
mov	[ebp+hWnd], eax
call	ds:CreatePopupMenu
mov	[ebp+hMenu], eax
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
lea	ecx, [ebp+var_14]
push	ebx		; int
push	ecx		; int
lea	ecx, [ebp+var_18]
push	ecx		; int
push	eax		; hMenu
mov	ecx, esi
mov	byte ptr [ebp+var_4], 3
call	sub_41979A
mov	eax, [esi+74h]
push	ebx		; LPTPMPARAMS
push	eax		; HWND
push	[ebp+arg_8]	; int
push	edi		; int
push	182h		; UINT
push	[ebp+hMenu]	; HMENU
call	ds:TrackPopupMenuEx
cmp	eax, ebx
jz	short loc_419AFC
cmp	eax, 3E8h
jl	short loc_419AF5
push	[ebp+var_14]
mov	ecx, esi
push	[ebp+var_18]
push	eax
call	sub_4198A6
jmp	short loc_419AFC

loc_419AF5:
mov	ecx, eax
call	sub_40C5A4

loc_419AFC:
mov	eax, [ebp+var_14]
mov	byte ptr [ebp+var_4], 2
cmp	eax, ebx
jz	short loc_419B0D
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_419B0D:
mov	eax, [ebp+var_18]
mov	byte ptr [ebp+var_4], 1
cmp	eax, ebx
jz	short loc_419B1E
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_419B1E:
lea	eax, [ebp+hMenu]
test	eax, eax
jz	short loc_419B36
mov	eax, [ebp+hMenu]
cmp	eax, ebx
jz	short loc_419B36
push	eax		; hMenu
mov	[ebp+hMenu], ebx
call	ds:DestroyMenu

loc_419B36:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_44]
call	sub_4282FE

loc_419B42:
mov	al, 1

loc_419B44:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	0Ch
sub_419991 endp



; Attributes: bp-based frame

sub_419B55 proc	near

var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4454C4
call	__EH_prolog
push	esi
push	edi
xor	edi, edi
mov	esi, ecx
push	edi		; pvReserved
call	ds:CoInitialize
mov	eax, [esi+218h]
mov	[esp+14h+var_4], edi
sub	eax, edi
jz	short loc_419BD0
dec	eax
jz	short loc_419BAE
dec	eax
jz	short loc_419B8C
mov	dword ptr [esi+24Ch], 80004005h
jmp	short loc_419BF0

loc_419B8C:
mov	ecx, [esi+244h]
mov	edx, [esi+21Ch]
mov	eax, [esi+240h]
push	ecx
push	edx
push	dword ptr [esi+228h]
mov	edi, [eax]
push	eax
call	dword ptr [edi+14h]
jmp	short loc_419BEA

loc_419BAE:
mov	ecx, [esi+244h]
mov	edx, [esi+234h]
mov	eax, [esi+240h]
push	ecx
push	edx
push	dword ptr [esi+238h]
mov	edi, [eax]
push	eax
call	dword ptr [edi+18h]
jmp	short loc_419BEA

loc_419BD0:
mov	ecx, [esi+244h]
mov	eax, [esi+240h]
mov	edx, [esi+21Ch]
push	ecx
mov	edi, [eax]
push	edx
push	eax
call	dword ptr [edi+0Ch]

loc_419BEA:
mov	[esi+24Ch], eax

loc_419BF0:
mov	esi, [esi+24Ch]
call	ds:__imp_CoUninitialize
mov	ecx, [esp+14h+var_C]
mov	eax, esi
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_419B55 endp



; Attributes: bp-based frame

sub_419C0D proc	near

var_44=	dword ptr -44h
var_34=	dword ptr -34h
Memory=	dword ptr -28h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_4454FA
call	__EH_prolog
sub	esp, 28h
push	esi
push	edi
mov	esi, ecx
push	38h		; Size
call	sub_4284B1
pop	ecx
mov	[ebp+var_10], eax
xor	edi, edi
cmp	eax, edi
mov	[ebp+var_4], edi
jz	short loc_419C3B
mov	ecx, eax
call	sub_40FBA8
jmp	short loc_419C3D

loc_419C3B:
xor	eax, eax

loc_419C3D:
or	[ebp+var_4], 0FFFFFFFFh
push	ebx
push	eax
lea	ecx, [esi+244h]
mov	[esi+248h], eax
call	sub_43D0DB
mov	ecx, [esi+248h]
push	[ebp+arg_8]
lea	eax, [esi+50h]
mov	[ecx+30h], eax
lea	ecx, [esi+140h]
mov	byte ptr [esi+1F1h], 1
call	sub_419D9C
and	byte ptr [ebp+arg_8+3],	0
push	3
lea	ecx, [ebp+var_1C]
mov	[esi+24Ch], edi
mov	[ebp+var_1C], edi
mov	[ebp+var_18], edi
mov	[ebp+var_14], edi
call	sub_403396
mov	ebx, [ebp+arg_0]
mov	[ebp+var_4], 1
cmp	[ebx+0ECh], edi
jle	short loc_419CC6
mov	eax, [ebx+0ECh]
mov	ecx, [ebx+0F0h]
mov	eax, [ecx+eax*4-4]
mov	cl, [eax+70h]
add	eax, 74h
mov	byte ptr [ebp+arg_8+3],	cl
push	eax
lea	ecx, [ebp+var_1C]
call	sub_40312C

loc_419CC6:
mov	edi, [esi+248h]
mov	al, byte ptr [ebp+arg_8+3]
mov	[edi+18h], al
lea	eax, [ebp+var_1C]
push	eax
lea	ecx, [edi+1Ch]
call	sub_40312C
and	dword ptr [edi+28h], 0
and	dword ptr [edi+2Ch], 0
mov	eax, [ebx+40h]
push	3000000h
mov	edx, 898h
lea	ecx, [ebp+Memory]
mov	[esi+1F8h], eax
call	sub_40B168
push	eax
lea	ecx, [esi+1FCh]
mov	byte ptr [ebp+var_4], 2
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 1
call	sub_4284D8
lea	ecx, [ebp+var_34]
mov	[esp+44h+var_44], offset asc_45B128 ; "	"
call	sub_403091
mov	edx, [ebp+arg_4]
push	eax
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 3
call	sub_40356A
push	eax
lea	ecx, [esi+208h]
mov	byte ptr [ebp+var_4], 4
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_34]	; Memory
mov	byte ptr [ebp+var_4], 1
call	sub_4284D8
pop	ecx
pop	ecx
push	dword ptr [esi+1F8h] ; hWndParent
mov	ecx, esi
push	[ebp+arg_4]	; int
call	sub_424FE9
test	eax, eax
pop	ebx
jz	short loc_419D7B
mov	esi, eax
jmp	short loc_419D81

loc_419D7B:
mov	esi, [esi+24Ch]

loc_419D81:		; Memory
push	[ebp+var_1C]
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	0Ch
sub_419C0D endp



; Attributes: bp-based frame

sub_419D9C proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_44550C
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	edi
lea	edi, [esi+94h]
push	edi		; lpCriticalSection
mov	[ebp+var_10], edi
call	ds:EnterCriticalSection
push	[ebp+arg_0]
and	[ebp+var_4], 0
lea	ecx, [esi+70h]
call	sub_40312C
push	edi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_419D9C endp



; Attributes: bp-based frame

sub_419DE1 proc	near

var_B0=	byte ptr -0B0h
Memory=	dword ptr -88h
var_7C=	dword ptr -7Ch
var_70=	dword ptr -70h
FileOp=	_SHFILEOPSTRUCTA ptr -64h
var_44=	dword ptr -44h
var_3C=	dword ptr -3Ch
var_38=	dword ptr -38h
Src= dword ptr -30h
var_2C=	dword ptr -2Ch
var_24=	byte ptr -24h
var_23=	byte ptr -23h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_44557E
call	__EH_prolog
sub	esp, 0A4h
push	ebx
push	esi
mov	esi, ecx
push	edi
lea	ecx, [ebp+var_24]
mov	[ebp+var_1C], esi
mov	[ebp+var_20], esi
call	sub_4028C8
xor	edi, edi
push	4
lea	ecx, [ebp+var_44]
mov	[ebp+var_4], edi
call	sub_402794
mov	[ebp+var_44], offset off_44B518
lea	eax, [ebp+var_44]
mov	ecx, esi
push	eax
mov	byte ptr [ebp+var_4], 1
call	sub_4170D3
cmp	[ebp+var_3C], edi
jnz	short loc_419E4B
and	byte ptr [ebp+var_4], 0
lea	ecx, [ebp+var_44]
call	sub_4282FE
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_24]
call	sub_4028F2
jmp	loc_41A17F

loc_419E4B:
lea	ecx, [ebp+var_B0]
call	sub_40283B
lea	eax, [ebp+var_B0]
mov	ecx, esi
push	eax
mov	byte ptr [ebp+var_4], 2
call	sub_4167F4
mov	ecx, esi
call	sub_40E6A6
test	al, al
jz	loc_41A133
cmp	byte ptr [ebp+arg_0], 0
jz	loc_41A133
cmp	byte_45D8B4, 0
jnz	loc_419FC4
lea	ecx, [ebp+var_18]
call	sub_41B2EB
mov	[ebp+var_18], offset off_44C3B0
xor	esi, esi
cmp	[ebp+var_3C], edi
mov	byte ptr [ebp+var_4], 3
jle	loc_419F60

loc_419EAC:
mov	eax, [ebp+var_38]
mov	ecx, [ebp+var_1C]
push	dword ptr [eax+edi*4]
lea	eax, [ebp+var_7C]
push	eax
call	sub_4174B8
mov	ebx, eax
mov	ecx, [ebp+var_1C]
lea	eax, [ebp+var_70]
push	eax
mov	byte ptr [ebp+var_4], 4
call	sub_40E71B
push	ebx
mov	edx, eax
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 5
call	sub_40356A
mov	edx, eax
lea	ecx, [ebp+Src]
mov	byte ptr [ebp+var_4], 6
call	sub_43A785
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_70]	; Memory
call	sub_4284D8
push	[ebp+var_7C]	; Memory
mov	byte ptr [ebp+var_4], 8
call	sub_4284D8
mov	eax, [ebp+var_2C]
add	esp, 0Ch
lea	eax, [eax+esi+1]
cmp	[ebp+var_14], eax
jnb	short loc_419F2A
sub	eax, [ebp+var_14]
lea	ecx, [ebp+var_18]
push	eax
call	sub_41B2AE

loc_419F2A:
mov	eax, [ebp+var_2C]
inc	eax
push	eax		; Size
mov	eax, [ebp+var_10]
push	[ebp+Src]	; Src
add	eax, esi
push	eax		; Dst
call	ds:memmove
mov	eax, [ebp+var_2C]
push	[ebp+Src]	; Memory
mov	byte ptr [ebp+var_4], 3
lea	esi, [esi+eax+1]
call	sub_4284D8
add	esp, 10h
inc	edi
cmp	edi, [ebp+var_3C]
jl	loc_419EAC
xor	edi, edi

loc_419F60:
lea	eax, [esi+1]
cmp	[ebp+var_14], eax
jnb	short loc_419F74
sub	eax, [ebp+var_14]
lea	ecx, [ebp+var_18]
push	eax
call	sub_41B2AE

loc_419F74:
mov	eax, [ebp+var_10]
and	byte ptr [eax+esi], 0
mov	esi, [ebp+var_1C]
mov	ecx, esi
call	sub_40DA67
mov	[ebp+FileOp.hwnd], eax
mov	eax, [ebp+var_10]
mov	[ebp+FileOp.pFrom], eax
lea	eax, [ebp+FileOp]
push	eax		; lpFileOp
mov	[ebp+FileOp.wFunc], 3
mov	[ebp+FileOp.pTo], edi
mov	[ebp+FileOp.fFlags], 40h
mov	[ebp+FileOp.fAnyOperationsAborted], edi
mov	[ebp+FileOp.hNameMappings], edi
mov	[ebp+FileOp.lpszProgressTitle],	edi
call	ds:SHFileOperationA
push	[ebp+var_10]
mov	byte ptr [ebp+var_4], 2
mov	[ebp+var_18], offset off_44C3AC
jmp	loc_41A12B

loc_419FC4:
mov	[ebp+var_14], edi
mov	[ebp+var_10], edi
mov	[ebp+var_18], offset off_44C3A8
xor	esi, esi
cmp	[ebp+var_3C], edi
mov	byte ptr [ebp+var_4], 0Bh
mov	[ebp+arg_0], edi
jle	loc_41A086

loc_419FE3:
mov	eax, [ebp+var_38]
mov	ecx, [ebp+var_1C]
push	dword ptr [eax+edi*4]
lea	eax, [ebp+var_70]
push	eax
call	sub_4174B8
mov	ebx, eax
mov	ecx, [ebp+var_1C]
lea	eax, [ebp+var_7C]
push	eax
mov	byte ptr [ebp+var_4], 0Ch
call	sub_40E71B
push	ebx
mov	edx, eax
lea	ecx, [ebp+Src]
mov	byte ptr [ebp+var_4], 0Dh
call	sub_40356A
push	[ebp+var_7C]	; Memory
call	sub_4284D8
push	[ebp+var_70]	; Memory
mov	byte ptr [ebp+var_4], 0Fh
call	sub_4284D8
mov	eax, [ebp+var_2C]
pop	ecx
cmp	eax, [ebp+arg_0]
pop	ecx
jle	short loc_41A037
mov	[ebp+arg_0], eax

loc_41A037:
lea	ecx, [eax+esi+1]
cmp	[ebp+var_14], ecx
jnb	short loc_41A04F
sub	ecx, [ebp+var_14]
push	ecx
lea	ecx, [ebp+var_18]
call	sub_41B2FC
mov	eax, [ebp+var_2C]

loc_41A04F:
lea	eax, [eax+eax+2]
push	eax		; Size
mov	eax, [ebp+var_10]
push	[ebp+Src]	; Src
lea	eax, [eax+esi*2]
push	eax		; Dst
call	ds:memmove
mov	eax, [ebp+var_2C]
push	[ebp+Src]	; Memory
mov	byte ptr [ebp+var_4], 0Bh
lea	esi, [esi+eax+1]
call	sub_4284D8
add	esp, 10h
inc	edi
cmp	edi, [ebp+var_3C]
jl	loc_419FE3
xor	edi, edi

loc_41A086:
lea	eax, [esi+1]
cmp	[ebp+var_14], eax
jnb	short loc_41A09A
sub	eax, [ebp+var_14]
lea	ecx, [ebp+var_18]
push	eax
call	sub_41B2FC

loc_41A09A:
mov	eax, [ebp+var_10]
cmp	[ebp+arg_0], 104h
mov	[eax+esi*2], di
jl	short loc_41A0BE
mov	ecx, [ebp+var_1C]
push	3020218h
push	8AAh
call	sub_40E58A
jmp	short loc_41A105

loc_41A0BE:
mov	esi, [ebp+var_1C]
mov	ecx, esi
call	sub_40DA67
mov	[ebp+FileOp.hwnd], eax
mov	eax, [ebp+var_10]
push	offset aShfileoperatio ; "SHFileOperationW"
push	offset ModuleName ; "shell32.dll"
mov	[ebp+FileOp.wFunc], 3
mov	[ebp+FileOp.pFrom], eax
mov	[ebp+FileOp.pTo], edi
mov	[ebp+FileOp.fFlags], 40h
mov	[ebp+FileOp.fAnyOperationsAborted], edi
mov	[ebp+FileOp.hNameMappings], edi
mov	[ebp+FileOp.lpszProgressTitle],	edi
call	ds:GetModuleHandleW
push	eax		; hModule
call	ds:GetProcAddress
cmp	eax, edi
jnz	short loc_41A117

loc_41A105:		; Memory
push	[ebp+var_10]
mov	[ebp+var_18], offset off_44C3A4
call	sub_4284D8
pop	ecx
jmp	short loc_41A14C

loc_41A117:
lea	ecx, [ebp+FileOp]
push	ecx
call	eax
push	[ebp+var_10]	; Memory
mov	byte ptr [ebp+var_4], 2
mov	[ebp+var_18], offset off_44C3A4

loc_41A12B:
call	sub_4284D8
pop	ecx
jmp	short loc_41A13E

loc_41A133:
lea	eax, [ebp+var_44]
mov	ecx, esi
push	eax
call	sub_41A200

loc_41A13E:
lea	eax, [ebp+var_B0]
mov	ecx, esi
push	eax
call	sub_41687D

loc_41A14C:
lea	ecx, [ebp+var_B0]
mov	byte ptr [ebp+var_4], 1
call	sub_40299B
and	byte ptr [ebp+var_4], 0
lea	ecx, [ebp+var_44]
call	sub_4282FE
mov	ecx, [ebp+var_20]
mov	al, [ebp+var_24]
mov	[ecx+184h], al
mov	eax, [ebp+var_20]
mov	cl, [ebp+var_23]
mov	[eax+185h], cl

loc_41A17F:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_419DE1 endp




sub_41A190 proc	near
push	dword ptr [ecx+8] ; Memory
mov	dword ptr [ecx], offset	off_44C3AC
call	sub_4284D8
pop	ecx
retn
sub_41A190 endp



; Attributes: bp-based frame

sub_41A1A0 proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_445590
call	__EH_prolog
sub	esp, 0Ch
cmp	[ebp+arg_0], 80004002h
push	esi
mov	esi, ecx
jnz	short loc_41A1CA
push	3020208h
push	8A0h
call	sub_40E58A
jmp	short loc_41A1F1

loc_41A1CA:
push	[ebp+arg_8]
mov	edx, [ebp+arg_4]
lea	ecx, [ebp+Memory]
call	sub_40B168
push	dword ptr [eax]	; lpCaption
and	[ebp+var_4], 0
mov	ecx, esi
push	[ebp+arg_0]	; int
call	sub_40E54B
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_41A1F1:
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	0Ch
sub_41A1A0 endp



; Attributes: bp-based frame

sub_41A200 proc	near

var_290= byte ptr -290h
var_64=	byte ptr -64h
var_50=	byte ptr -50h
var_40=	dword ptr -40h
lpText=	dword ptr -34h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
lpCaption= dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_44560F
call	__EH_prolog
sub	esp, 284h
push	ebx
push	esi
xor	ebx, ebx
push	edi
mov	edi, ecx
mov	[ebp+var_10], ebx
mov	eax, [edi+0FCh]
lea	edx, [ebp+var_10]
push	edx
push	offset unk_44B6A0
mov	ecx, [eax]
push	eax
mov	[ebp+var_4], ebx
call	dword ptr [ecx]
cmp	eax, ebx
jz	short loc_41A250
push	3020217h
push	8A9h
push	80004002h
mov	ecx, edi
call	sub_41A1A0
jmp	loc_41A4A3

loc_41A250:
push	3
lea	ecx, [ebp+lpCaption]
mov	[ebp+lpCaption], ebx
mov	[ebp+var_24], ebx
mov	[ebp+var_20], ebx
call	sub_403396
push	3
lea	ecx, [ebp+lpText]
mov	byte ptr [ebp+var_4], 1
mov	[ebp+lpText], ebx
mov	[ebp+var_30], ebx
mov	[ebp+var_2C], ebx
call	sub_403396
mov	esi, [ebp+arg_0]
mov	byte ptr [ebp+var_4], 2
cmp	dword ptr [esi+8], 1
jnz	loc_41A36B
mov	eax, [esi+0Ch]
mov	ecx, edi
mov	eax, [eax]
mov	[ebp+arg_0], eax
push	eax
lea	eax, [ebp+var_40]
push	eax
call	sub_4174B8
push	[ebp+arg_0]
mov	ecx, edi
mov	byte ptr [ebp+var_4], 3
call	sub_41756F
test	al, al
jz	short loc_41A305
push	3020211h
mov	edx, 8A3h
lea	ecx, [ebp+Memory]
call	sub_40B168
push	eax
lea	ecx, [ebp+lpCaption]
mov	byte ptr [ebp+var_4], 4
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 3
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_40]
push	eax
push	3020214h
mov	edx, 8A6h
lea	ecx, [ebp+Memory]
call	sub_40744B
push	eax
lea	ecx, [ebp+lpText]
mov	byte ptr [ebp+var_4], 5
call	sub_40312C
push	[ebp+Memory]
jmp	short loc_41A357

loc_41A305:
push	3020210h
mov	edx, 8A2h
lea	ecx, [ebp+Memory]
call	sub_40B168
push	eax
lea	ecx, [ebp+lpCaption]
mov	byte ptr [ebp+var_4], 6
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 3
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_40]
push	eax
push	3020213h
mov	edx, 8A5h
lea	ecx, [ebp+Memory]
call	sub_40744B
push	eax
lea	ecx, [ebp+lpText]
mov	byte ptr [ebp+var_4], 7
call	sub_40312C
push	[ebp+Memory]	; Memory

loc_41A357:
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 2
push	[ebp+var_40]	; Memory
call	sub_4284D8
jmp	short loc_41A3DE

loc_41A36B:
push	3020212h
mov	edx, 8A4h
lea	ecx, [ebp+Memory]
call	sub_40B168
push	eax
lea	ecx, [ebp+lpCaption]
mov	byte ptr [ebp+var_4], 8
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 2
call	sub_4284D8
mov	eax, [esi+8]
pop	ecx
cdq
push	edx
push	eax
lea	ecx, [ebp+var_40]
call	sub_4073AB
push	eax
push	3020215h
mov	edx, 8A7h
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 9
call	sub_40744B
push	eax
lea	ecx, [ebp+lpText]
mov	byte ptr [ebp+var_4], 0Ah
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_40]	; Memory
mov	byte ptr [ebp+var_4], 2
call	sub_4284D8
pop	ecx

loc_41A3DE:
pop	ecx
push	21h		; uType
mov	ecx, edi
push	[ebp+lpCaption]	; lpCaption
push	[ebp+lpText]	; lpText
call	sub_40DA67
push	eax		; hWnd
call	ds:MessageBoxW
cmp	eax, 1
jnz	loc_41A491
push	eax
lea	ecx, [ebp+var_290]
call	sub_41A4C5
push	[ebp+var_10]
lea	ecx, [ebp+var_50]
mov	byte ptr [ebp+var_4], 0Bh
call	sub_43D0DB
lea	ecx, [ebp+var_64]
call	sub_428327
push	esi
lea	ecx, [ebp+var_64]
call	sub_40F449
push	3020217h
mov	edx, 8A9h
lea	ecx, [ebp+var_40]
call	sub_40B168
mov	esi, eax
push	3020216h
mov	edx, 8A8h
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 0Ch
call	sub_40B168
push	esi
push	eax
push	edi
lea	ecx, [ebp+var_290]
mov	byte ptr [ebp+var_4], 0Dh
call	sub_419C0D
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_40]	; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 2
pop	ecx
lea	ecx, [ebp+var_290]
call	sub_41A549
mov	ecx, [edi+44h]
push	1
mov	eax, [ecx]
call	dword ptr [eax+20h]

loc_41A491:		; Memory
push	[ebp+lpText]
call	sub_4284D8
push	[ebp+lpCaption]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx

loc_41A4A3:
mov	eax, [ebp+var_10]
or	[ebp+var_4], 0FFFFFFFFh
cmp	eax, ebx
jz	short loc_41A4B4
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_41A4B4:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_41A200 endp



; Attributes: bp-based frame

sub_41A4C5 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_445624
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	edi
mov	[ebp+var_10], esi
call	sub_40F2E5
mov	eax, [ebp+arg_0]
lea	ecx, [esi+21Ch]
xor	edi, edi
mov	[esi+218h], eax
push	3
mov	[ebp+var_4], edi
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
mov	ecx, [ebp+var_C]
lea	eax, [esi+22Ch]
mov	[eax+4], edi
mov	[eax+8], edi
mov	[eax+0Ch], edi
mov	dword ptr [eax+10h], 4
mov	dword ptr [eax], offset	off_44B518
mov	[esi+240h], edi
mov	[esi+244h], edi
mov	dword ptr [esi+24Ch], 80004005h
mov	dword ptr [esi], offset	off_44C3B4
mov	eax, esi
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_41A4C5 endp



; Attributes: bp-based frame

sub_41A549 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445662
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
mov	eax, [esi+244h]
mov	[ebp+var_4], 3
test	eax, eax
jz	short loc_41A571
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_41A571:
mov	eax, [esi+240h]
mov	byte ptr [ebp+var_4], 2
test	eax, eax
jz	short loc_41A585
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_41A585:
lea	ecx, [esi+22Ch]
mov	byte ptr [ebp+var_4], 1
call	sub_4282FE
push	dword ptr [esi+21Ch] ; Memory
call	sub_4284D8
or	[ebp+var_4], 0FFFFFFFFh
pop	ecx
mov	ecx, esi
call	sub_40F3F1
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41A549 endp



; Attributes: bp-based frame

sub_41A5B8 proc	near

var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_445674
call	__EH_prolog
mov	eax, [ebp+arg_0]
mov	eax, [eax+2Ch]
cmp	eax, 0FFFFFFFFh
jz	short loc_41A5FE
and	[ebp+arg_0], 0
mov	eax, [ecx+0FCh]
and	[ebp+var_4], 0
lea	edx, [ebp+arg_0]
mov	ecx, [eax]
push	edx
push	offset unk_44B6A0
push	eax
call	dword ptr [ecx]
test	eax, eax
jz	short loc_41A603
mov	eax, [ebp+arg_0]
or	[ebp+var_4], 0FFFFFFFFh
test	eax, eax
jz	short loc_41A5FE
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_41A5FE:
push	1
pop	eax
jmp	short loc_41A616

loc_41A603:
mov	eax, [ebp+arg_0]
or	[ebp+var_4], 0FFFFFFFFh
test	eax, eax
jz	short loc_41A614
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_41A614:
xor	eax, eax

loc_41A616:
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn	4
sub_41A5B8 endp



; Attributes: bp-based frame

sub_41A624 proc	near

var_294= byte ptr -294h
var_78=	byte ptr -78h
var_6C=	dword ptr -6Ch
var_54=	byte ptr -54h
var_44=	dword ptr -44h
var_38=	dword ptr -38h
var_2C=	dword ptr -2Ch
Memory=	dword ptr -20h
var_14=	byte ptr -14h
var_13=	byte ptr -13h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_4456C3
call	__EH_prolog
sub	esp, 288h
push	ebx
push	esi
push	edi
mov	edi, [ebp+arg_0]
xor	ebx, ebx
mov	esi, ecx
cmp	[edi+20h], ebx
jz	loc_41A79E
mov	[ebp+arg_0], ebx
mov	eax, [esi+0FCh]
lea	edx, [ebp+arg_0]
push	edx
push	offset unk_44B6A0
mov	ecx, [eax]
push	eax
mov	[ebp+var_4], ebx
call	dword ptr [ecx]
cmp	eax, ebx
jz	short loc_41A680
push	3020221h
push	8ADh
push	80004002h
mov	ecx, esi
call	sub_41A1A0
jmp	loc_41A78D

loc_41A680:
push	dword ptr [edi+20h]
lea	ecx, [ebp+Memory]
call	sub_403091
lea	ecx, [ebp+var_14]
mov	[ebp+var_10], esi
call	sub_4028C8
lea	eax, [esi+0A4h]
mov	ecx, esi
push	eax
mov	byte ptr [ebp+var_4], 2
call	sub_4167F4
mov	edi, [edi+2Ch]
cmp	edi, 0FFFFFFFFh
jnz	short loc_41A6C5
lea	ecx, [ebp+var_14]
call	sub_4028F2
push	[ebp+Memory]	; Memory
call	sub_4284D8
jmp	loc_41A78C

loc_41A6C5:
lea	eax, [ebp+var_2C]
push	edi
push	eax
mov	ecx, esi
call	sub_4173E8
push	2
lea	ecx, [ebp+var_294]
mov	byte ptr [ebp+var_4], 3
call	sub_41A4C5
push	[ebp+arg_0]
lea	ecx, [ebp+var_54]
mov	byte ptr [ebp+var_4], 4
call	sub_43D0DB
lea	eax, [ebp+Memory]
lea	ecx, [ebp+var_78]
push	eax
mov	[ebp+var_6C], edi
call	sub_40312C
push	3020221h
mov	edx, 8ADh
lea	ecx, [ebp+var_38]
call	sub_40B168
mov	edi, eax
push	3020220h
mov	edx, 8ACh
lea	ecx, [ebp+var_44]
mov	byte ptr [ebp+var_4], 5
call	sub_40B168
push	edi
push	eax
push	esi
lea	ecx, [ebp+var_294]
mov	byte ptr [ebp+var_4], 6
call	sub_419C0D
push	[ebp+var_44]	; Memory
mov	edi, eax
call	sub_4284D8
push	[ebp+var_38]	; Memory
call	sub_4284D8
pop	ecx
cmp	edi, ebx
pop	ecx
mov	byte ptr [ebp+var_4], 3
lea	ecx, [ebp+var_294]
jz	short loc_41A7A5
call	sub_41A549
push	[ebp+var_2C]	; Memory
call	sub_4284D8
mov	ecx, [ebp+var_10]
mov	al, [ebp+var_14]
mov	[ecx+184h], al
mov	eax, [ebp+var_10]
mov	cl, [ebp+var_13]
mov	[eax+185h], cl
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_41A78C:
pop	ecx

loc_41A78D:
mov	eax, [ebp+arg_0]
or	[ebp+var_4], 0FFFFFFFFh
cmp	eax, ebx
jz	short loc_41A79E
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_41A79E:
xor	eax, eax
jmp	loc_41A82E

loc_41A7A5:
call	sub_41A549
lea	eax, [ebp+Memory]
lea	edx, [ebp+var_2C]
push	eax
lea	ecx, [ebp+var_38]
call	sub_40356A
push	eax
lea	ecx, [esi+0A8h]
mov	byte ptr [ebp+var_4], 7
call	sub_40312C
push	[ebp+var_38]	; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [esi+0B4h], 1
push	ebx		; lParam
push	ebx		; wParam
push	402h		; Msg
mov	byte ptr [esi+0D7h], 1
push	dword ptr [esi+4] ; hWnd
call	ds:PostMessageA
push	[ebp+var_2C]	; Memory
call	sub_4284D8
mov	ecx, [ebp+var_10]
mov	al, [ebp+var_14]
mov	[ecx+184h], al
mov	eax, [ebp+var_10]
mov	cl, [ebp+var_13]
mov	[eax+185h], cl
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	eax, [ebp+arg_0]
or	[ebp+var_4], 0FFFFFFFFh
pop	ecx
cmp	eax, ebx
pop	ecx
jz	short loc_41A82B
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_41A82B:
push	1
pop	eax

loc_41A82E:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_41A624 endp



; Attributes: bp-based frame

sub_41A83F proc	near

var_308= dword ptr -308h
var_2FC= byte ptr -2FCh
var_E0=	byte ptr -0E0h
var_BC=	byte ptr -0BCh
var_AC=	byte ptr -0ACh
var_A0=	byte ptr -0A0h
var_94=	byte ptr -94h
var_88=	byte ptr -88h
var_68=	byte ptr -68h
var_64=	dword ptr -64h
var_58=	byte ptr -58h
var_54=	byte ptr -54h
var_40=	dword ptr -40h
var_34=	dword ptr -34h
var_30=	byte ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445746
call	__EH_prolog
sub	esp, 2F0h
and	[ebp+var_10], 0
push	esi
push	edi
mov	esi, ecx
mov	eax, [esi+0FCh]
and	[ebp+var_4], 0
lea	edx, [ebp+var_10]
mov	ecx, [eax]
push	edx
push	offset unk_44B6A0
push	eax
call	dword ptr [ecx]
test	eax, eax
jz	short loc_41A88E
push	3020233h
push	8B9h
push	80004002h
mov	ecx, esi
call	sub_41A1A0
jmp	loc_41AAF6

loc_41A88E:
lea	ecx, [ebp+var_30]
mov	[ebp+var_2C], esi
call	sub_4028C8
lea	ecx, [ebp+var_68]
mov	byte ptr [ebp+var_4], 1
call	sub_40283B
lea	eax, [ebp+var_68]
mov	ecx, esi
push	eax
mov	byte ptr [ebp+var_4], 2
call	sub_4167F4
lea	ecx, [ebp+var_AC]
call	sub_41AB15
mov	edi, 3020230h
mov	edx, 8B6h
push	edi
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 3
call	sub_40B168
push	eax
lea	ecx, [ebp+var_A0]
mov	byte ptr [ebp+var_4], 4
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 3
call	sub_4284D8
mov	edx, 8B7h
lea	ecx, [ebp+Memory]
mov	[esp+308h+var_308], 3020231h
call	sub_40B168
push	eax
lea	ecx, [ebp+var_94]
mov	byte ptr [ebp+var_4], 5
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 3
call	sub_4284D8
pop	ecx
mov	edx, 8B8h
push	0FFFFFFFFh
lea	ecx, [ebp+Memory]
call	sub_40B168
push	eax
lea	ecx, [ebp+var_88]
mov	byte ptr [ebp+var_4], 6
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 3
call	sub_4284D8
pop	ecx
mov	ecx, esi
call	sub_40DA67
push	eax		; hWndParent
push	1F9h		; lpTemplateName
lea	ecx, [ebp+var_AC]
call	sub_42FCF7
cmp	eax, 2
jnz	short loc_41A983
lea	ecx, [ebp+var_AC]
mov	byte ptr [ebp+var_4], al
call	sub_41ABA3
mov	byte ptr [ebp+var_4], 7
jmp	loc_41AA42

loc_41A983:
lea	eax, [ebp+var_88]
lea	ecx, [ebp+var_28]
push	eax
call	sub_4030F2
push	0
lea	ecx, [ebp+var_2FC]
mov	byte ptr [ebp+var_4], 8
call	sub_41A4C5
push	[ebp+var_10]
lea	ecx, [ebp+var_BC]
mov	byte ptr [ebp+var_4], 9
call	sub_43D0DB
lea	eax, [ebp+var_28]
lea	ecx, [ebp+var_E0]
push	eax
call	sub_40312C
push	3020233h
mov	edx, 8B9h
lea	ecx, [ebp+var_40]
call	sub_40B168
mov	[ebp+var_34], eax
push	edi
mov	edx, 8B6h
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 0Ah
call	sub_40B168
push	[ebp+var_34]
lea	ecx, [ebp+var_2FC]
mov	byte ptr [ebp+var_4], 0Bh
push	eax
push	esi
call	sub_419C0D
push	[ebp+Memory]	; Memory
mov	edi, eax
call	sub_4284D8
push	[ebp+var_40]	; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 8
pop	ecx
test	edi, edi
lea	ecx, [ebp+var_2FC]
jz	short loc_41AA58
call	sub_41A549
push	[ebp+var_28]	; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 2
lea	ecx, [ebp+var_AC]
call	sub_41ABA3
mov	byte ptr [ebp+var_4], 0Ch

loc_41AA42:
lea	ecx, [ebp+var_54]
call	sub_40327C
push	[ebp+var_64]	; Memory
call	sub_4284D8
pop	ecx
jmp	loc_41AAEE

loc_41AA58:
call	sub_41A549
push	0
push	5Ch
lea	ecx, [ebp+var_28]
call	sub_40B7E1
test	eax, eax
jl	short loc_41AA94
push	eax
lea	eax, [ebp+var_40]
push	eax
lea	ecx, [ebp+var_28]
call	sub_403228
push	eax
lea	ecx, [ebp+var_28]
mov	byte ptr [ebp+var_4], 0Dh
call	sub_40312C
push	[ebp+var_40]	; Memory
mov	byte ptr [ebp+var_4], 8
call	sub_4284D8
pop	ecx

loc_41AA94:
cmp	byte ptr [esi+8Fh], 0
jnz	short loc_41AAA5
lea	ecx, [ebp+var_54]
call	sub_428327

loc_41AAA5:
lea	eax, [ebp+var_28]
lea	ecx, [ebp+var_64]
push	eax
call	sub_40312C
mov	ecx, [esi+44h]
mov	[ebp+var_58], 1
push	1
mov	eax, [ecx]
call	dword ptr [eax+20h]
lea	eax, [ebp+var_68]
mov	ecx, esi
push	eax
call	sub_41687D
push	[ebp+var_28]	; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 2
lea	ecx, [ebp+var_AC]
call	sub_41ABA3
lea	ecx, [ebp+var_68]
mov	byte ptr [ebp+var_4], 1
call	sub_40299B

loc_41AAEE:
lea	ecx, [ebp+var_30]
call	sub_4028F2

loc_41AAF6:
mov	eax, [ebp+var_10]
or	[ebp+var_4], 0FFFFFFFFh
test	eax, eax
jz	short loc_41AB07
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_41AB07:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41A83F endp



; Attributes: bp-based frame

sub_41AB15 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_44576E
call	__EH_prolog
push	ecx
push	esi
push	edi
mov	esi, ecx
xor	edi, edi
mov	[ebp+var_10], esi
mov	[esi+4], edi
mov	dword ptr [esi], offset	off_44B558
lea	ecx, [esi+0Ch]
mov	[esi+8], edi
push	3
mov	[ebp+var_4], edi
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
lea	ecx, [esi+18h]
push	3
mov	byte ptr [ebp+var_4], 1
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
lea	ecx, [esi+24h]
push	3
mov	byte ptr [ebp+var_4], 2
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
mov	ecx, [ebp+var_C]
mov	[esi+34h], edi
mov	[esi+38h], edi
mov	[esi+3Ch], edi
mov	dword ptr [esi+40h], 4
mov	dword ptr [esi+30h], offset off_44B510
mov	dword ptr [esi], offset	off_44C3B8
mov	eax, esi
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41AB15 endp



; Attributes: bp-based frame

sub_41ABA3 proc	near

var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4457A9
call	__EH_prolog
push	ecx
push	ecx
push	esi
mov	esi, ecx
push	edi
mov	[ebp+var_10], esi
and	[ebp+var_4], 0
lea	edi, [esi+30h]
mov	[ebp+var_14], edi
mov	dword ptr [edi], offset	off_44B510
mov	ecx, edi
mov	byte ptr [ebp+var_4], 4
call	sub_428327
mov	ecx, edi
mov	byte ptr [ebp+var_4], 3
call	sub_4282FE
push	dword ptr [esi+24h] ; Memory
call	sub_4284D8
push	dword ptr [esi+18h] ; Memory
call	sub_4284D8
push	dword ptr [esi+0Ch] ; Memory
call	sub_4284D8
mov	ecx, [ebp+var_C]
add	esp, 0Ch
mov	dword ptr [esi], offset	off_44B588
mov	large fs:0, ecx
pop	edi
pop	esi
leave
retn
sub_41ABA3 endp




; int __thiscall sub_41AC0B(void *Memory, char)
sub_41AC0B proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_41ABA3
test	[esp+4+arg_0], 1
jz	short loc_41AC21
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_41AC21:
mov	eax, esi
pop	esi
retn	4
sub_41AC0B endp



; Attributes: bp-based frame

sub_41AC27 proc	near

var_A8=	dword ptr -0A8h
var_9C=	byte ptr -9Ch
var_90=	byte ptr -90h
var_84=	byte ptr -84h
var_78=	byte ptr -78h
var_58=	byte ptr -58h
var_54=	dword ptr -54h
var_48=	byte ptr -48h
var_44=	byte ptr -44h
var_30=	byte ptr -30h
var_2C=	dword ptr -2Ch
Memory=	dword ptr -28h
var_1C=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_44580F
call	__EH_prolog
sub	esp, 90h
push	ebx
xor	ebx, ebx
push	esi
mov	esi, ecx
mov	[ebp+var_10], ebx
mov	eax, [esi+0FCh]
lea	edx, [ebp+var_10]
push	edx
push	offset unk_44B6A0
mov	ecx, [eax]
push	eax
mov	[ebp+var_4], ebx
call	dword ptr [ecx]
cmp	eax, ebx
jz	short loc_41AC76
push	3020243h
push	8C3h
push	80004002h
mov	ecx, esi
call	sub_41A1A0
jmp	loc_41ADCC

loc_41AC76:
lea	ecx, [ebp+var_30]
mov	[ebp+var_2C], esi
call	sub_4028C8
lea	ecx, [ebp+var_58]
mov	byte ptr [ebp+var_4], 1
call	sub_40283B
lea	eax, [ebp+var_58]
mov	ecx, esi
push	eax
mov	byte ptr [ebp+var_4], 2
call	sub_4167F4
lea	ecx, [ebp+var_9C]
call	sub_41AB15
push	3020240h
mov	edx, 8C0h
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 3
call	sub_40B168
push	eax
lea	ecx, [ebp+var_90]
mov	byte ptr [ebp+var_4], 4
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 3
call	sub_4284D8
mov	edx, 8C1h
lea	ecx, [ebp+Memory]
mov	[esp+0A8h+var_A8], 3020241h
call	sub_40B168
push	eax
lea	ecx, [ebp+var_84]
mov	byte ptr [ebp+var_4], 5
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 3
call	sub_4284D8
pop	ecx
mov	edx, 8C2h
push	0FFFFFFFFh
lea	ecx, [ebp+Memory]
call	sub_40B168
push	eax
lea	ecx, [ebp+var_78]
mov	byte ptr [ebp+var_4], 6
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 3
call	sub_4284D8
pop	ecx
mov	ecx, esi
call	sub_40DA67
push	eax		; hWndParent
push	1F9h		; lpTemplateName
lea	ecx, [ebp+var_9C]
call	sub_42FCF7
cmp	eax, 2
jnz	short loc_41AD64
lea	ecx, [ebp+var_9C]
mov	byte ptr [ebp+var_4], al
call	sub_41ABA3
mov	byte ptr [ebp+var_4], 7
jmp	short loc_41ADB3

loc_41AD64:
lea	eax, [ebp+var_78]
lea	ecx, [ebp+var_1C]
push	eax
call	sub_4030F2
mov	eax, [ebp+var_10]
push	ebx
push	[ebp+var_1C]
mov	byte ptr [ebp+var_4], 8
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+10h]
cmp	eax, ebx
jz	short loc_41ADE6
push	3020243h
push	8C3h
push	eax
mov	ecx, esi
call	sub_41A1A0
push	[ebp+var_1C]	; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 2
lea	ecx, [ebp+var_9C]
call	sub_41ABA3
mov	byte ptr [ebp+var_4], 9

loc_41ADB3:
lea	ecx, [ebp+var_44]
call	sub_40327C
push	[ebp+var_54]	; Memory
call	sub_4284D8
pop	ecx
lea	ecx, [ebp+var_30]
call	sub_4028F2

loc_41ADCC:
mov	eax, [ebp+var_10]
or	[ebp+var_4], 0FFFFFFFFh
cmp	eax, ebx
jz	loc_41AE7F
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
jmp	loc_41AE7F

loc_41ADE6:
push	ebx
push	5Ch
lea	ecx, [ebp+var_1C]
call	sub_40B7E1
cmp	eax, ebx
jl	short loc_41AE1C
push	eax
lea	eax, [ebp+Memory]
push	eax
lea	ecx, [ebp+var_1C]
call	sub_403228
push	eax
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 0Ah
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 8
call	sub_4284D8
pop	ecx

loc_41AE1C:
cmp	[esi+8Fh], bl
jnz	short loc_41AE2C
lea	ecx, [ebp+var_44]
call	sub_428327

loc_41AE2C:
lea	eax, [ebp+var_1C]
lea	ecx, [ebp+var_54]
push	eax
call	sub_40312C
lea	eax, [ebp+var_58]
mov	ecx, esi
push	eax
mov	[ebp+var_48], 1
call	sub_41687D
push	[ebp+var_1C]	; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 2
lea	ecx, [ebp+var_9C]
call	sub_41ABA3
lea	ecx, [ebp+var_58]
mov	byte ptr [ebp+var_4], 1
call	sub_40299B
lea	ecx, [ebp+var_30]
call	sub_4028F2
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_10]
call	sub_4370A0

loc_41AE7F:
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_41AC27 endp




sub_41AE8D proc	near
push	esi
lea	esi, [ecx+74h]
mov	ecx, esi
call	sub_402DF8
test	eax, eax
jl	short loc_41AEAC
push	0		; lParam
push	eax		; wParam
push	1017h		; Msg
push	dword ptr [esi]	; hWnd
call	ds:SendMessageA

loc_41AEAC:
pop	esi
retn
sub_41AE8D endp



; Attributes: bp-based frame

sub_41AEAE proc	near

var_D8=	byte ptr -0D8h
var_CC=	byte ptr -0CCh
var_C0=	byte ptr -0C0h
psz= dword ptr -0B4h
var_94=	dword ptr -94h
var_88=	dword ptr -88h
var_7C=	byte ptr -7Ch
var_6C=	byte ptr -6Ch
var_68=	dword ptr -68h
var_58=	byte ptr -58h
var_44=	dword ptr -44h
var_38=	dword ptr -38h
pvarg= VARIANTARG ptr -34h
Memory=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	byte ptr -18h
var_17=	byte ptr -17h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4458A5
call	__EH_prolog
sub	esp, 0CCh
push	ebx
push	esi
mov	esi, ecx
push	edi
lea	ecx, [ebp+var_18]
mov	[ebp+var_14], esi
call	sub_4028C8
xor	ebx, ebx
push	1		; __int16
push	0FFFFFFFFh	; wParam
lea	ecx, [esi+74h]
mov	[ebp+var_4], ebx
call	sub_402821
cmp	eax, ebx
jl	loc_41B11C
push	eax
mov	ecx, esi
call	sub_402875
mov	edi, eax
cmp	edi, 0FFFFFFFFh
mov	[ebp+var_38], edi
jz	loc_41B11C
lea	ecx, [ebp+var_6C]
call	sub_40283B
lea	eax, [ebp+var_6C]
mov	ecx, esi
push	eax
mov	byte ptr [ebp+var_4], 1
call	sub_4167F4
mov	[ebp+var_10], ebx
mov	eax, [esi+0FCh]
lea	edx, [ebp+var_10]
push	edx
push	offset unk_44B6A0
mov	ecx, [eax]
push	eax
mov	byte ptr [ebp+var_4], 2
call	dword ptr [ecx]
cmp	eax, ebx
jz	short loc_41AF5E
push	3020208h
push	8A0h
mov	ecx, esi
call	sub_40E58A
mov	eax, [ebp+var_10]
mov	byte ptr [ebp+var_4], 1
cmp	eax, ebx
jz	short loc_41AF55
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_41AF55:
mov	byte ptr [ebp+var_4], 3
jmp	loc_41B10B

loc_41AF5E:
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+Memory], ebx
mov	[ebp+var_20], ebx
mov	[ebp+var_1C], ebx
call	sub_403396
mov	word ptr [ebp+pvarg.anonymous_0], bx
mov	word ptr [ebp+pvarg.anonymous_0+2], bx
mov	eax, [esi+0FCh]
lea	edx, [ebp+pvarg]
push	edx
push	1Ch
mov	ecx, [eax]
push	edi
push	eax
mov	byte ptr [ebp+var_4], 5
call	dword ptr [ecx+14h]
test	eax, eax
jz	short loc_41AFC3
lea	ecx, [ebp+pvarg] ; pvarg
mov	byte ptr [ebp+var_4], 4
call	sub_42CDE1
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	eax, [ebp+var_10]
pop	ecx
cmp	eax, ebx
mov	byte ptr [ebp+var_4], 1
jz	short loc_41AFBA
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_41AFBA:
mov	byte ptr [ebp+var_4], 6
jmp	loc_41B10B

loc_41AFC3:
cmp	word ptr [ebp+pvarg.anonymous_0], 8
jnz	loc_41B129
push	dword ptr [ebp+pvarg.anonymous_0+8]
lea	ecx, [ebp+Memory]
call	sub_404722

loc_41AFD9:		; pvarg
lea	ecx, [ebp+pvarg]
mov	byte ptr [ebp+var_4], 4
call	sub_42CDE1
lea	eax, [ebp+var_44]
push	edi
push	eax
mov	ecx, esi
call	sub_4174B8
lea	ecx, [ebp+var_D8]
mov	byte ptr [ebp+var_4], 8
call	sub_41AB15
push	3020290h
mov	edx, 0FA1h
lea	ecx, [ebp+pvarg.anonymous_0+4]
mov	byte ptr [ebp+var_4], 9
call	sub_40B168
mov	edi, eax
push	offset asc_45B128 ; " "
lea	edx, [ebp+var_44]
lea	ecx, [ebp+var_94]
mov	byte ptr [ebp+var_4], 0Ah
call	sub_409948
push	edi
mov	edx, eax
lea	ecx, [ebp+var_88]
mov	byte ptr [ebp+var_4], 0Bh
call	sub_40356A
push	eax
lea	ecx, [ebp+var_CC]
mov	byte ptr [ebp+var_4], 0Ch
call	sub_40312C
push	[ebp+var_88]	; Memory
call	sub_4284D8
push	[ebp+var_94]	; Memory
call	sub_4284D8
push	dword ptr [ebp+pvarg.anonymous_0+4] ; Memory
mov	byte ptr [ebp+var_4], 9
call	sub_4284D8
add	esp, 0Ch
lea	eax, [ebp+Memory]
lea	ecx, [ebp+psz]
push	eax
call	sub_40312C
push	3020291h
mov	edx, 0FA2h
lea	ecx, [ebp+pvarg.anonymous_0+4]
call	sub_40B168
push	eax
lea	ecx, [ebp+var_C0]
mov	byte ptr [ebp+var_4], 0Dh
call	sub_40312C
push	dword ptr [ebp+pvarg.anonymous_0+4] ; Memory
mov	byte ptr [ebp+var_4], 9
call	sub_4284D8
pop	ecx
mov	ecx, esi
call	sub_40DA67
push	eax		; hWndParent
push	1F9h		; lpTemplateName
lea	ecx, [ebp+var_D8]
call	sub_42FCF7
cmp	eax, 2
jnz	loc_41B15F
lea	ecx, [ebp+var_D8]
mov	byte ptr [ebp+var_4], 8
call	sub_41ABA3
push	[ebp+var_44]	; Memory
call	sub_4284D8
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	eax, [ebp+var_10]
pop	ecx
cmp	eax, ebx
pop	ecx
mov	byte ptr [ebp+var_4], 1
jz	short loc_41B107
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_41B107:
mov	byte ptr [ebp+var_4], 0Eh

loc_41B10B:
lea	ecx, [ebp+var_58]
call	sub_40327C
push	[ebp+var_68]	; Memory
call	sub_4284D8
pop	ecx

loc_41B11C:
lea	ecx, [ebp+var_18]
call	sub_4028F2
jmp	loc_41B21B

loc_41B129:
cmp	word ptr [ebp+pvarg.anonymous_0], bx
jz	loc_41AFD9
lea	ecx, [ebp+pvarg] ; pvarg
mov	byte ptr [ebp+var_4], 4
call	sub_42CDE1
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	eax, [ebp+var_10]
pop	ecx
cmp	eax, ebx
mov	byte ptr [ebp+var_4], 1
jz	short loc_41B159
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_41B159:
mov	byte ptr [ebp+var_4], 7
jmp	short loc_41B10B

loc_41B15F:		; psz
push	[ebp+psz]
lea	ecx, [ebp+var_7C]
call	sub_42CC64
mov	eax, [ebp+var_10]
lea	edx, [ebp+var_7C]
push	ebx
push	edx
mov	ecx, [eax]
push	1Ch
push	[ebp+var_38]
mov	byte ptr [ebp+var_4], 0Fh
push	eax
call	dword ptr [ecx+28h]
cmp	eax, ebx
jz	short loc_41B1AF
cmp	eax, 80004002h
jnz	short loc_41B1A2
push	3020208h
push	8A0h
mov	ecx, esi
call	sub_40E58A
jmp	short loc_41B1AF

loc_41B1A2:		; "Set Comment Error"
push	offset aSetCommentErro
push	eax		; int
mov	ecx, esi
call	sub_40E54B

loc_41B1AF:
lea	eax, [ebp+var_6C]
mov	ecx, esi
push	eax
call	sub_41687D
lea	ecx, [ebp+var_7C] ; pvarg
mov	byte ptr [ebp+var_4], 9
call	sub_42CDE1
lea	ecx, [ebp+var_D8]
mov	byte ptr [ebp+var_4], 8
call	sub_41ABA3
push	[ebp+var_44]	; Memory
call	sub_4284D8
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	eax, [ebp+var_10]
pop	ecx
cmp	eax, ebx
pop	ecx
mov	byte ptr [ebp+var_4], 1
jz	short loc_41B1F8
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_41B1F8:
lea	ecx, [ebp+var_6C]
mov	byte ptr [ebp+var_4], bl
call	sub_40299B
mov	ecx, [ebp+var_14]
mov	al, [ebp+var_18]
mov	[ecx+184h], al
mov	eax, [ebp+var_14]
mov	cl, [ebp+var_17]
mov	[eax+185h], cl

loc_41B21B:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_41AEAE endp




; int __thiscall sub_41B22A(void *Memory, char)
sub_41B22A proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_41A190
test	[esp+4+arg_0], 1
jz	short loc_41B240
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_41B240:
mov	eax, esi
pop	esi
retn	4
sub_41B22A endp




; int __thiscall sub_41B246(void *Memory, char)
sub_41B246 proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
push	dword ptr [esi+8] ; Memory
mov	dword ptr [esi], offset	off_44C3AC
call	sub_4284D8
test	[esp+8+arg_0], 1
pop	ecx
jz	short loc_41B266
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_41B266:
mov	eax, esi
pop	esi
retn	4
sub_41B246 endp




; int __thiscall sub_41B26C(void *Memory, char)
sub_41B26C proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_42DA76
test	[esp+4+arg_0], 1
jz	short loc_41B282
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_41B282:
mov	eax, esi
pop	esi
retn	4
sub_41B26C endp




; int __thiscall sub_41B288(void *Memory, char)
sub_41B288 proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
push	dword ptr [esi+8] ; Memory
mov	dword ptr [esi], offset	off_44C3A4
call	sub_4284D8
test	[esp+8+arg_0], 1
pop	ecx
jz	short loc_41B2A8
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_41B2A8:
mov	eax, esi
pop	esi
retn	4
sub_41B288 endp




sub_41B2AE proc	near

arg_0= dword ptr  4

mov	edx, [ecx+4]
cmp	edx, 40h
jbe	short loc_41B2BD
mov	eax, edx
shr	eax, 2
jmp	short loc_41B2CA

loc_41B2BD:
push	8
pop	eax
cmp	eax, edx
sbb	eax, eax
and	eax, 0Ch
add	eax, 4

loc_41B2CA:
push	esi
push	edi
mov	edi, [esp+8+arg_0]
cmp	eax, edi
ja	short loc_41B2D6
mov	eax, edi

loc_41B2D6:
lea	esi, [edx+eax]
cmp	esi, eax
jnb	short loc_41B2E0
lea	esi, [edx+edi]

loc_41B2E0:		; Size
push	esi
call	sub_41B339
pop	edi
pop	esi
retn	4
sub_41B2AE endp




sub_41B2EB proc	near
mov	eax, ecx
and	dword ptr [eax+4], 0
and	dword ptr [eax+8], 0
mov	dword ptr [eax], offset	off_44C3AC
retn
sub_41B2EB endp




sub_41B2FC proc	near

arg_0= dword ptr  4

mov	edx, [ecx+4]
cmp	edx, 40h
jbe	short loc_41B30B
mov	eax, edx
shr	eax, 2
jmp	short loc_41B318

loc_41B30B:
push	8
pop	eax
cmp	eax, edx
sbb	eax, eax
and	eax, 0Ch
add	eax, 4

loc_41B318:
push	esi
push	edi
mov	edi, [esp+8+arg_0]
cmp	eax, edi
ja	short loc_41B324
mov	eax, edi

loc_41B324:
lea	esi, [edx+eax]
cmp	esi, eax
jnb	short loc_41B32E
lea	esi, [edx+edi]

loc_41B32E:
push	esi
call	sub_41B388
pop	edi
pop	esi
retn	4
sub_41B2FC endp




; int __stdcall	sub_41B339(size_t Size)
sub_41B339 proc	near

Size= dword ptr	 4

push	esi
push	edi
mov	edi, [esp+8+Size]
mov	esi, ecx
cmp	edi, [esi+4]
jz	short loc_41B383
test	edi, edi
push	ebx
jbe	short loc_41B371
push	edi		; Size
call	sub_4284B1
mov	ebx, eax
mov	eax, [esi+4]
test	eax, eax
pop	ecx
jbe	short loc_41B373
cmp	eax, edi
jb	short loc_41B361
mov	eax, edi

loc_41B361:		; Size
push	eax
push	dword ptr [esi+8] ; Src
push	ebx		; Dst
call	ds:memmove
add	esp, 0Ch
jmp	short loc_41B373

loc_41B371:
xor	ebx, ebx

loc_41B373:		; Memory
push	dword ptr [esi+8]
call	sub_4284D8
pop	ecx
mov	[esi+8], ebx
mov	[esi+4], edi
pop	ebx

loc_41B383:
pop	edi
pop	esi
retn	4
sub_41B339 endp




sub_41B388 proc	near

arg_0= dword ptr  4

push	esi
push	edi
mov	edi, [esp+8+arg_0]
mov	esi, ecx
cmp	edi, [esi+4]
jz	short loc_41B3D7
test	edi, edi
push	ebx
jbe	short loc_41B3C5
lea	eax, [edi+edi]
push	eax		; Size
call	sub_4284B1
mov	ebx, eax
mov	eax, [esi+4]
test	eax, eax
pop	ecx
jbe	short loc_41B3C7
cmp	eax, edi
jb	short loc_41B3B3
mov	eax, edi

loc_41B3B3:
add	eax, eax
push	eax		; Size
push	dword ptr [esi+8] ; Src
push	ebx		; Dst
call	ds:memmove
add	esp, 0Ch
jmp	short loc_41B3C7

loc_41B3C5:
xor	ebx, ebx

loc_41B3C7:		; Memory
push	dword ptr [esi+8]
call	sub_4284D8
pop	ecx
mov	[esi+8], ebx
mov	[esi+4], edi
pop	ebx

loc_41B3D7:
pop	edi
pop	esi
retn	4
sub_41B388 endp



; Attributes: bp-based frame

sub_41B3DC proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8
lParam=	dword ptr -4

push	ebp
mov	ebp, esp
sub	esp, 10h
push	ebx
push	edi
mov	edi, ecx
cmp	byte ptr [edi+8Fh], 0
jz	loc_41B4A7
lea	ebx, [edi+74h]
mov	ecx, ebx
call	sub_402DF8
xor	edx, edx
mov	[ebp+var_10], eax
cmp	eax, edx
jl	loc_41B4A7
cmp	[edi+17Ch], dl
jz	loc_41B4A7
mov	ecx, [edi+180h]
mov	[ebp+var_8], eax
cmp	eax, ecx
jl	short loc_41B426
mov	[ebp+var_8], ecx

loc_41B426:
cmp	eax, ecx
mov	[ebp+var_C], eax
jg	short loc_41B430
mov	[ebp+var_C], ecx

loc_41B430:
push	esi
mov	esi, ds:SendMessageA
push	edx		; lParam
push	edx		; wParam
push	1004h		; Msg
mov	[ebp+lParam], edx
push	dword ptr [ebx]	; hWnd
call	esi ; SendMessageA
test	eax, eax
jle	short loc_41B49D

loc_41B449:
push	[ebp+lParam]
mov	ecx, edi
call	sub_402875
mov	edx, [ebp+lParam]
cmp	eax, 0FFFFFFFFh
jz	short loc_41B487
cmp	edx, [ebp+var_8]
jl	short loc_41B487
cmp	edx, [ebp+var_C]
jg	short loc_41B487
mov	ecx, [edi+9Ch]
add	eax, ecx
mov	cl, [edi+17Dh]
cmp	[eax], cl
jz	short loc_41B487
push	edx		; lParam
push	edx		; wParam
push	1015h		; Msg
mov	[eax], cl
push	dword ptr [ebx]	; hWnd
call	esi ; SendMessageA
mov	edx, [ebp+lParam]

loc_41B487:		; lParam
push	0
push	0		; wParam
push	1004h		; Msg
inc	edx
push	dword ptr [ebx]	; hWnd
mov	[ebp+lParam], edx
call	esi ; SendMessageA
cmp	[ebp+lParam], eax
jl	short loc_41B449

loc_41B49D:
mov	eax, [ebp+var_10]
pop	esi
mov	[edi+180h], eax

loc_41B4A7:
pop	edi
pop	ebx
leave
retn
sub_41B3DC endp




sub_41B4AB proc	near
push	ebx
push	esi
mov	esi, ecx
push	edi
cmp	byte ptr [esi+8Fh], 0
jz	loc_41B552
lea	ebx, [esi+74h]
mov	ecx, ebx
call	sub_402DF8
mov	edi, eax
test	edi, edi
jl	loc_41B552
push	edi
mov	ecx, esi
call	sub_402875
cmp	byte ptr [esi+17Ch], 0
jz	short loc_41B4F8
cmp	eax, 0FFFFFFFFh
jz	short loc_41B52B
mov	ecx, [esi+9Ch]
mov	dl, [esi+17Dh]
mov	[ecx+eax], dl
jmp	short loc_41B52B

loc_41B4F8:
cmp	eax, 0FFFFFFFFh
mov	byte ptr [esi+17Ch], 1
jnz	short loc_41B50D
mov	byte ptr [esi+17Dh], 1
jmp	short loc_41B52B

loc_41B50D:
mov	edx, [esi+9Ch]
lea	ecx, [esi+9Ch]
cmp	byte ptr [eax+edx], 0
setz	dl
mov	[esi+17Dh], dl
mov	ecx, [ecx]
mov	[eax+ecx], dl

loc_41B52B:		; lParam
push	0
push	0		; wParam
push	401h		; Msg
mov	[esi+180h], edi
push	dword ptr [esi+4] ; hWnd
call	ds:PostMessageA
push	edi		; lParam
push	edi		; wParam
push	1015h		; Msg
push	dword ptr [ebx]	; hWnd
call	ds:SendMessageA

loc_41B552:
pop	edi
pop	esi
pop	ebx
retn
sub_41B4AB endp



; Attributes: bp-based frame

sub_41B556 proc	near

lParam=	dword ptr -2Ch
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
wParam=	dword ptr -4

push	ebp
mov	ebp, esp
sub	esp, 2Ch
push	ebx
push	esi
mov	esi, ecx
push	edi
lea	edi, [esi+74h]
mov	ecx, edi
call	sub_402DF8
test	eax, eax
mov	[ebp+wParam], eax
jl	loc_41B60F
push	eax
mov	ecx, esi
call	sub_402875
mov	ecx, [esi+9Ch]
cmp	byte ptr [ecx+eax], 0
lea	edx, [ecx+eax]
setz	cl
cmp	eax, 0FFFFFFFFh
jz	short loc_41B595
mov	[edx], cl

loc_41B595:
cmp	byte ptr [esi+8Fh], 0
mov	esi, ds:SendMessageA
mov	ebx, 102Bh
jnz	short loc_41B5C4
push	2
neg	cl
pop	eax
sbb	ecx, ecx
mov	[ebp+var_1C], eax
and	ecx, eax
lea	eax, [ebp+lParam]
push	eax		; lParam
mov	[ebp+var_20], ecx
push	[ebp+wParam]	; wParam
push	ebx		; Msg
push	dword ptr [edi]	; hWnd
call	esi ; SendMessageA

loc_41B5C4:		; lParam
push	[ebp+wParam]
push	[ebp+wParam]	; wParam
push	1015h		; Msg
push	dword ptr [edi]	; hWnd
call	esi ; SendMessageA
mov	eax, [ebp+wParam]
push	0		; lParam
push	0		; wParam
push	1004h		; Msg
push	dword ptr [edi]	; hWnd
inc	eax
mov	[ebp+wParam], eax
call	esi ; SendMessageA
cmp	[ebp+wParam], eax
jge	short loc_41B60F
push	3
pop	eax
mov	[ebp+var_1C], eax
mov	[ebp+var_20], eax
lea	eax, [ebp+lParam]
push	eax		; lParam
push	[ebp+wParam]	; wParam
push	ebx		; Msg
push	dword ptr [edi]	; hWnd
call	esi ; SendMessageA
push	0		; lParam
push	[ebp+wParam]	; wParam
push	1013h		; Msg
push	dword ptr [edi]	; hWnd
call	esi ; SendMessageA

loc_41B60F:
pop	edi
pop	esi
pop	ebx
leave
retn
sub_41B556 endp



; Attributes: bp-based frame

sub_41B614 proc	near

lParam=	dword ptr -30h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_8= dword ptr -8
var_1= byte ptr	-1

push	ebp
mov	ebp, esp
sub	esp, 30h
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
cmp	[esi+8Fh], bl
jnz	short loc_41B695
mov	al, [esi+8Eh]
push	edi
mov	edi, ds:SendMessageA
push	ebx		; lParam
push	ebx		; wParam
push	1004h		; Msg
push	dword ptr [esi+74h] ; hWnd
mov	[ebp+var_1], al
mov	[esi+8Eh], bl
call	edi ; SendMessageA
cmp	eax, ebx
mov	[ebp+var_8], eax
jle	short loc_41B68B

loc_41B651:
push	ebx
mov	ecx, esi
call	sub_402875
cmp	eax, 0FFFFFFFFh
jz	short loc_41B685
mov	edx, [esi+9Ch]
push	2
pop	ecx
mov	al, [edx+eax]
mov	[ebp+var_20], ecx
neg	al
sbb	eax, eax
and	eax, ecx
mov	[ebp+var_24], eax
lea	eax, [ebp+lParam]
push	eax		; lParam
push	ebx		; wParam
push	102Bh		; Msg
push	dword ptr [esi+74h] ; hWnd
call	edi ; SendMessageA

loc_41B685:
inc	ebx
cmp	ebx, [ebp+var_8]
jl	short loc_41B651

loc_41B68B:
mov	al, [ebp+var_1]
pop	edi
mov	[esi+8Eh], al

loc_41B695:
lea	ecx, [esi+74h]
call	sub_41B6A1
pop	esi
pop	ebx
leave
retn
sub_41B614 endp




sub_41B6A1 proc	near
push	ebx
push	ebp
push	esi
xor	ebp, ebp
push	edi
mov	edi, ds:SendMessageA
push	ebp		; lParam
mov	ebx, 1004h
mov	esi, ecx
push	ebp		; wParam
push	ebx		; Msg
push	dword ptr [esi]	; hWnd
call	edi ; SendMessageA
test	eax, eax
jle	short loc_41B6DA
push	ebp		; lParam
push	ebp		; wParam
push	ebx		; Msg
push	dword ptr [esi]	; hWnd
call	edi ; SendMessageA
dec	eax
push	eax		; lParam
push	ebp		; wParam
push	1015h		; Msg
push	dword ptr [esi]	; hWnd
call	edi ; SendMessageA
neg	eax
sbb	eax, eax
neg	eax
jmp	short loc_41B6DC

loc_41B6DA:
mov	al, 1

loc_41B6DC:
pop	edi
pop	esi
pop	ebp
pop	ebx
retn
sub_41B6A1 endp



; Attributes: bp-based frame

sub_41B6E1 proc	near

var_7C=	dword ptr -7Ch
var_6C=	byte ptr -6Ch
var_60=	byte ptr -60h
var_54=	byte ptr -54h
var_48=	byte ptr -48h
var_28=	dword ptr -28h
Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= byte ptr	 8

mov	eax, offset loc_4458F6
call	__EH_prolog
sub	esp, 60h
push	ebx
push	esi
push	edi
mov	esi, ecx
xor	edi, edi
lea	ecx, [ebp+var_6C]
mov	[ebp+var_10], edi
call	sub_41AB15
cmp	[ebp+arg_0], 0
push	2
mov	[ebp+var_4], edi
pop	ebx
jz	short loc_41B72B
push	3020250h
mov	edx, 8CAh
lea	ecx, [ebp+var_28]
call	sub_40B168
mov	[ebp+var_10], 1
mov	byte ptr [ebp+var_4], 1
jmp	short loc_41B743

loc_41B72B:
push	3020251h
mov	edx, 8CBh
lea	ecx, [ebp+Memory]
call	sub_40B168
mov	[ebp+var_10], ebx
mov	[ebp+var_4], ebx

loc_41B743:
push	eax
lea	ecx, [ebp+var_60]
call	sub_40312C
test	byte ptr [ebp+var_10], bl
jz	short loc_41B75E
push	[ebp+Memory]	; Memory
and	[ebp+var_10], 0FFFFFFFDh
call	sub_4284D8
pop	ecx

loc_41B75E:
test	byte ptr [ebp+var_10], 1
mov	[ebp+var_4], edi
jz	short loc_41B770
push	[ebp+var_28]	; Memory
call	sub_4284D8
pop	ecx

loc_41B770:
push	3020252h
mov	edx, 8CCh
lea	ecx, [ebp+var_28]
call	sub_40B168
push	eax
lea	ecx, [ebp+var_54]
mov	byte ptr [ebp+var_4], 3
call	sub_40312C
push	[ebp+var_28]	; Memory
and	byte ptr [ebp+var_4], 0
call	sub_4284D8
lea	ecx, [ebp+var_48]
mov	[esp+7Ch+var_7C], offset asc_45B41C ; "*"
call	sub_404722
mov	ecx, esi
call	sub_40DA67
push	eax		; hWndParent
push	1F9h		; lpTemplateName
lea	ecx, [ebp+var_6C]
call	sub_42FCF7
cmp	eax, ebx
jz	short loc_41B815
cmp	dword ptr [esi+98h], 0
jle	short loc_41B80E

loc_41B7CC:
lea	eax, [ebp+var_28]
push	edi
push	eax
mov	ecx, esi
call	sub_41733B
mov	edx, eax
lea	ecx, [ebp+var_48]
mov	byte ptr [ebp+var_4], 4
call	sub_428ED2
push	[ebp+var_28]	; Memory
and	byte ptr [ebp+var_4], 0
mov	bl, al
call	sub_4284D8
test	bl, bl
pop	ecx
jz	short loc_41B805
mov	eax, [esi+9Ch]
mov	cl, [ebp+arg_0]
mov	[eax+edi], cl

loc_41B805:
inc	edi
cmp	edi, [esi+98h]
jl	short loc_41B7CC

loc_41B80E:
mov	ecx, esi
call	sub_41B614

loc_41B815:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_6C]
call	sub_41ABA3
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_41B6E1 endp



; Attributes: bp-based frame

sub_41B832 proc	near

var_48=	dword ptr -48h
var_3C=	dword ptr -3Ch
var_30=	dword ptr -30h
Memory=	dword ptr -24h
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= byte ptr	 8

mov	eax, offset loc_445928
call	__EH_prolog
sub	esp, 3Ch
push	esi
mov	esi, ecx
lea	ecx, [esi+74h]
call	sub_402DF8
test	eax, eax
jl	loc_41BA05
push	ebx
push	edi
push	eax
mov	ecx, esi
call	sub_402875
mov	edi, eax
lea	eax, [ebp+var_18]
push	edi
push	eax
mov	ecx, esi
call	sub_41733B
and	[ebp+var_4], 0
push	edi
mov	ecx, esi
call	sub_41756F
mov	bl, al
test	bl, bl
jz	short loc_41B8B0
xor	edi, edi
cmp	[esi+98h], edi
jle	loc_41B9F3

loc_41B88A:
push	edi
mov	ecx, esi
call	sub_41756F
cmp	al, bl
jnz	short loc_41B8A2
mov	eax, [esi+9Ch]
mov	cl, [ebp+arg_0]
mov	[eax+edi], cl

loc_41B8A2:
inc	edi
cmp	edi, [esi+98h]
jl	short loc_41B88A
jmp	loc_41B9F3

loc_41B8B0:
mov	eax, [ebp+var_14]
test	eax, eax
jz	short loc_41B8D9
mov	ecx, [ebp+var_18]
lea	eax, [ecx+eax*2-2]

loc_41B8BE:
cmp	word ptr [eax],	2Eh
jz	short loc_41B8CC
cmp	eax, ecx
jz	short loc_41B8D2
dec	eax
dec	eax
jmp	short loc_41B8BE

loc_41B8CC:
sub	eax, ecx
sar	eax, 1
jmp	short loc_41B8D5

loc_41B8D2:
or	eax, 0FFFFFFFFh

loc_41B8D5:
test	eax, eax
jge	short loc_41B94C

loc_41B8D9:
xor	ebx, ebx
cmp	[esi+98h], ebx
jle	loc_41B9F3

loc_41B8E7:
push	ebx
mov	ecx, esi
call	sub_41756F
test	al, al
jnz	short loc_41B93E
lea	eax, [ebp+Memory]
push	ebx
push	eax
mov	ecx, esi
call	sub_41733B
mov	ecx, [eax+4]
test	ecx, ecx
jz	short loc_41B922
mov	edx, [eax]
lea	eax, [edx+ecx*2-2]

loc_41B90C:
cmp	word ptr [eax],	2Eh
jz	short loc_41B91A
cmp	eax, edx
jz	short loc_41B922
dec	eax
dec	eax
jmp	short loc_41B90C

loc_41B91A:
sub	eax, edx
sar	eax, 1
mov	edi, eax
jmp	short loc_41B925

loc_41B922:
or	edi, 0FFFFFFFFh

loc_41B925:		; Memory
push	[ebp+Memory]
call	sub_4284D8
test	edi, edi
pop	ecx
jge	short loc_41B93E
mov	eax, [esi+9Ch]
mov	cl, [ebp+arg_0]
mov	[eax+ebx], cl

loc_41B93E:
inc	ebx
cmp	ebx, [esi+98h]
jl	short loc_41B8E7
jmp	loc_41B9F3

loc_41B94C:
push	eax
lea	eax, [ebp+var_3C]
push	eax
lea	ecx, [ebp+var_18]
call	sub_405246
mov	edi, eax
push	2Ah
lea	ecx, [ebp+var_30]
mov	byte ptr [ebp+var_4], 1
call	sub_409516
push	edi
mov	edx, eax
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 2
call	sub_40356A
push	[ebp+var_30]	; Memory
call	sub_4284D8
push	[ebp+var_3C]	; Memory
mov	byte ptr [ebp+var_4], 4
call	sub_4284D8
xor	edi, edi
pop	ecx
cmp	[esi+98h], edi
pop	ecx
jle	short loc_41B9E6

loc_41B998:
push	edi
mov	ecx, esi
call	sub_41756F
test	al, al
jnz	short loc_41B9DD
lea	eax, [ebp+var_48]
push	edi
push	eax
mov	ecx, esi
call	sub_41733B
mov	edx, eax
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 6
call	sub_428ED2
push	[ebp+var_48]	; Memory
mov	bl, al
mov	byte ptr [ebp+var_4], 4
call	sub_4284D8
test	bl, bl
pop	ecx
jz	short loc_41B9DD
mov	eax, [esi+9Ch]
mov	cl, [ebp+arg_0]
mov	[eax+edi], cl

loc_41B9DD:
inc	edi
cmp	edi, [esi+98h]
jl	short loc_41B998

loc_41B9E6:		; Memory
push	[ebp+Memory]
and	byte ptr [ebp+var_4], 0
call	sub_4284D8
pop	ecx

loc_41B9F3:
mov	ecx, esi
call	sub_41B614
push	[ebp+var_18]	; Memory
call	sub_4284D8
pop	ecx
pop	edi
pop	ebx

loc_41BA05:
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_41B832 endp




sub_41BA14 proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
xor	eax, eax
cmp	[esi+98h], eax
lea	edx, [esi+98h]
jle	short loc_41BA3B
push	ebx

loc_41BA28:
mov	ecx, [esi+9Ch]
mov	bl, [esp+8+arg_0]
mov	[eax+ecx], bl
inc	eax
cmp	eax, [edx]
jl	short loc_41BA28
pop	ebx

loc_41BA3B:
mov	ecx, esi
call	sub_41B614
pop	esi
retn	4
sub_41BA14 endp




sub_41BA46 proc	near
push	ebx
push	esi
mov	esi, ecx
xor	ebx, ebx
push	edi
cmp	[esi+8Fh], bl
jnz	short loc_41BA9F
mov	eax, [esi+98h]
xor	edi, edi
xor	ecx, ecx
cmp	eax, ebx
jle	short loc_41BA9F
mov	edx, [esi+9Ch]

loc_41BA69:
cmp	[edx+ecx], bl
jz	short loc_41BA6F
inc	edi

loc_41BA6F:
inc	ecx
cmp	ecx, eax
jl	short loc_41BA69
cmp	edi, 1
jnz	short loc_41BA9F
lea	ecx, [esi+74h]
call	sub_402DF8
cmp	eax, ebx
jl	short loc_41BA9F
push	eax
mov	ecx, esi
call	sub_402875
cmp	eax, ebx
jl	short loc_41BA9F
mov	ecx, [esi+9Ch]
add	eax, ecx
cmp	[eax], bl
jz	short loc_41BA9F
mov	[eax], bl

loc_41BA9F:
xor	ecx, ecx
cmp	[esi+98h], ebx
jle	short loc_41BAC1

loc_41BAA9:
mov	eax, [esi+9Ch]
add	eax, ecx
cmp	[eax], bl
setz	dl
inc	ecx
mov	[eax], dl
cmp	ecx, [esi+98h]
jl	short loc_41BAA9

loc_41BAC1:
mov	ecx, esi
call	sub_41B614
pop	edi
pop	esi
pop	ebx
retn
sub_41BA46 endp



; Attributes: bp-based frame

sub_41BACC proc	near

lParam=	dword ptr -28h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h

push	ebp
mov	ebp, esp
sub	esp, 28h
push	ebx
push	esi
push	edi
mov	esi, ecx
push	0
call	sub_41BA14
cmp	byte ptr [esi+8Fh], 0
jnz	short loc_41BB29
lea	edi, [esi+74h]
mov	ecx, edi
call	sub_402DF8
mov	ebx, eax
test	ebx, ebx
jl	short loc_41BB29
push	ebx
mov	ecx, esi
call	sub_402875
cmp	eax, 0FFFFFFFFh
jz	short loc_41BB0E
mov	ecx, [esi+9Ch]
mov	byte ptr [ecx+eax], 1

loc_41BB0E:
push	2
pop	eax
mov	[ebp+var_18], eax
mov	[ebp+var_1C], eax
lea	eax, [ebp+lParam]
push	eax		; lParam
push	ebx		; wParam
push	102Bh		; Msg
push	dword ptr [edi]	; hWnd
call	ds:SendMessageA

loc_41BB29:
pop	edi
pop	esi
pop	ebx
leave
retn
sub_41BACC endp



; Attributes: bp-based frame

sub_41BB2E proc	near

arg_0= dword ptr  8

push	ebp
mov	ebp, esp
mov	eax, [ebp+arg_0]
push	ebx
push	esi
mov	esi, ecx
mov	ecx, [eax]
push	edi
cmp	ecx, [esi+74h]
jnz	loc_41BBFD
mov	edi, [eax+0Ch]
test	edi, edi
jl	loc_41BBFD
test	byte ptr [eax+2Ch], 4
jz	short loc_41BBC4
mov	eax, [esi+178h]
test	eax, eax
jl	loc_41BBFD
cmp	eax, edi
mov	[ebp+arg_0], eax
jl	short loc_41BB6D
mov	[ebp+arg_0], edi

loc_41BB6D:
cmp	eax, edi
mov	ebx, eax
jg	short loc_41BB75
mov	ebx, edi

loc_41BB75:
xor	edi, edi
cmp	[esi+98h], edi
jle	short loc_41BBFD

loc_41BB7F:
push	edi
mov	ecx, esi
call	sub_402875
cmp	eax, 0FFFFFFFFh
jz	short loc_41BBB9
cmp	edi, [ebp+arg_0]
jl	short loc_41BB99
cmp	edi, ebx
jg	short loc_41BB99
mov	cl, 1
jmp	short loc_41BB9B

loc_41BB99:
xor	cl, cl

loc_41BB9B:
mov	edx, [esi+9Ch]
add	eax, edx
cmp	[eax], cl
jz	short loc_41BBB9
push	edi		; lParam
push	edi		; wParam
push	1015h		; Msg
mov	[eax], cl
push	dword ptr [esi+74h] ; hWnd
call	ds:SendMessageA

loc_41BBB9:
inc	edi
cmp	edi, [esi+98h]
jl	short loc_41BB7F
jmp	short loc_41BBFD

loc_41BBC4:
mov	[esi+178h], edi
test	byte ptr [eax+2Ch], 2
jz	short loc_41BBFD
push	edi
mov	ecx, esi
call	sub_402875
cmp	eax, 0FFFFFFFFh
jz	short loc_41BBFD
mov	ecx, [esi+9Ch]
push	edi		; lParam
add	eax, ecx
push	edi		; wParam
push	1015h		; Msg
cmp	byte ptr [eax],	0
setz	cl
mov	[eax], cl
push	dword ptr [esi+74h] ; hWnd
call	ds:SendMessageA

loc_41BBFD:
pop	edi
pop	esi
pop	ebx
pop	ebp
retn	4
sub_41BB2E endp



; Attributes: bp-based frame

sub_41BC04 proc	near

var_74=	word ptr -74h
var_72=	word ptr -72h
Str1= dword ptr	-6Ch
pvarg= VARIANTARG ptr -64h
var_54=	dword ptr -54h
Memory=	dword ptr -48h
var_3C=	dword ptr -3Ch
var_30=	dword ptr -30h
var_24=	dword ptr -24h
var_18=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_445974
call	__EH_prolog
sub	esp, 68h
push	ebx
push	esi
mov	esi, [ebp+arg_8]
push	edi
xor	edi, edi
cmp	esi, edi
jnz	short loc_41BC24
xor	eax, eax
jmp	loc_41BDAB

loc_41BC24:
mov	ebx, [esi+168h]
mov	eax, ebx
sub	eax, edi
jz	loc_41BD94
sub	eax, 4
jz	loc_41BD4D
dec	eax
jz	loc_41BCDE
mov	[ebp+var_74], di
mov	[ebp+var_72], di
mov	[ebp+var_4], 8
mov	word ptr [ebp+pvarg.anonymous_0], di
mov	word ptr [ebp+pvarg.anonymous_0+2], di
mov	eax, [esi+0FCh]
lea	edx, [ebp+var_74]
add	esi, 0FCh
push	edx
mov	ecx, [eax]
push	ebx
push	[ebp+arg_0]
mov	byte ptr [ebp+var_4], 9
push	eax
call	dword ptr [ecx+14h]
mov	esi, [esi]
lea	ecx, [ebp+pvarg]
push	ecx
push	ebx
push	[ebp+arg_4]
mov	eax, [esi]
push	esi
call	dword ptr [eax+14h]
mov	ax, [ebp+var_74]
cmp	ax, word ptr [ebp+pvarg.anonymous_0]
jz	short loc_41BC9B
sbb	esi, esi
and	esi, 0FFFFFFFEh
inc	esi
jmp	short loc_41BCBF

loc_41BC9B:
cmp	ax, 8
jnz	short loc_41BCB1
push	dword ptr [ebp+pvarg.anonymous_0+8] ; Str2
push	[ebp+Str1]	; Str1
call	ds:_wcsicmp
pop	ecx
pop	ecx
jmp	short loc_41BCBD

loc_41BCB1:
lea	eax, [ebp+pvarg]
lea	ecx, [ebp+var_74]
push	eax
call	sub_42CF00

loc_41BCBD:
mov	esi, eax

loc_41BCBF:		; pvarg
lea	ecx, [ebp+pvarg]
mov	byte ptr [ebp+var_4], 8
call	sub_42CDE1
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_74] ; pvarg
call	sub_42CDE1

loc_41BCD7:
mov	eax, esi
jmp	loc_41BDAB

loc_41BCDE:
push	[ebp+arg_0]
lea	eax, [ebp+Memory]
mov	ecx, esi
push	eax
call	sub_41733B
mov	edx, eax
lea	ecx, [ebp+var_24]
mov	[ebp+var_4], 2
call	sub_41BDBC
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 4
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_54]
push	[ebp+arg_4]
mov	ecx, esi
push	eax
call	sub_41733B
mov	edx, eax
lea	ecx, [ebp+var_18]
mov	byte ptr [ebp+var_4], 5
call	sub_41BDBC
push	[ebp+var_54]	; Memory
mov	byte ptr [ebp+var_4], 7
call	sub_4284D8
mov	edx, [ebp+var_18]
pop	ecx
mov	ecx, [ebp+var_24]
call	sub_4282B1
push	[ebp+var_18]	; Memory
mov	esi, eax
call	sub_4284D8
push	[ebp+var_24]
jmp	short loc_41BD88

loc_41BD4D:
push	[ebp+arg_0]
lea	eax, [ebp+var_3C]
mov	ecx, esi
push	eax
call	sub_41733B
push	[ebp+arg_4]
lea	eax, [ebp+var_30]
mov	ecx, esi
mov	[ebp+var_4], edi
push	eax
call	sub_41733B
mov	edx, [ebp+var_30]
mov	ecx, [ebp+var_3C]
mov	byte ptr [ebp+var_4], 1
call	sub_4282B1
push	[ebp+var_30]	; Memory
mov	esi, eax
call	sub_4284D8
push	[ebp+var_3C]	; Memory

loc_41BD88:
call	sub_4284D8
pop	ecx
pop	ecx
jmp	loc_41BCD7

loc_41BD94:
mov	eax, [ebp+arg_0]
cmp	eax, [ebp+arg_4]
jge	short loc_41BDA1
or	eax, 0FFFFFFFFh
jmp	short loc_41BDAB

loc_41BDA1:
xor	ecx, ecx
cmp	eax, [ebp+arg_4]
setnz	cl
mov	eax, ecx

loc_41BDAB:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	0Ch
sub_41BC04 endp




sub_41BDBC proc	near

var_4= dword ptr -4

push	ecx
mov	eax, [edx+4]
and	[esp+4+var_4], 0
push	esi
mov	esi, ecx
test	eax, eax
jz	short loc_41BDED
mov	ecx, [edx]
lea	eax, [ecx+eax*2-2]

loc_41BDD2:
cmp	word ptr [eax],	2Eh
jz	short loc_41BDE0
cmp	eax, ecx
jz	short loc_41BDE6
dec	eax
dec	eax
jmp	short loc_41BDD2

loc_41BDE0:
sub	eax, ecx
sar	eax, 1
jmp	short loc_41BDE9

loc_41BDE6:
or	eax, 0FFFFFFFFh

loc_41BDE9:
test	eax, eax
jge	short loc_41BE03

loc_41BDED:
and	dword ptr [esi], 0
and	dword ptr [esi+4], 0
and	dword ptr [esi+8], 0
push	3
mov	ecx, esi
call	sub_403396
jmp	short loc_41BE0C

loc_41BE03:
push	eax
push	esi
mov	ecx, edx
call	sub_405246

loc_41BE0C:
mov	eax, esi
pop	esi
pop	ecx
retn
sub_41BDBC endp



; Attributes: bp-based frame

sub_41BE11 proc	near

arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

push	ebp
mov	ebp, esp
push	ebx
push	esi
mov	esi, [ebp+arg_8]
test	esi, esi
jnz	short loc_41BE21
xor	eax, eax
jmp	short loc_41BE74

loc_41BE21:
cmp	[ebp+arg_0], 0FFFFFFFFh
jz	short loc_41BE4B
cmp	[ebp+arg_4], 0FFFFFFFFh
jz	short loc_41BE58
push	[ebp+arg_0]
mov	ecx, esi
call	sub_41756F
push	[ebp+arg_4]
mov	ecx, esi
mov	bl, al
call	sub_41756F
test	bl, bl
jz	short loc_41BE50
test	al, al
jnz	short loc_41BE54

loc_41BE4B:
or	eax, 0FFFFFFFFh
jmp	short loc_41BE74

loc_41BE50:
test	al, al
jz	short loc_41BE5D

loc_41BE54:
test	bl, bl
jnz	short loc_41BE5D

loc_41BE58:
push	1
pop	eax
jmp	short loc_41BE74

loc_41BE5D:
push	esi
push	[ebp+arg_4]
push	[ebp+arg_0]
call	sub_41BC04
cmp	byte ptr [esi+16Ch], 0
jnz	short loc_41BE74
neg	eax

loc_41BE74:
pop	esi
pop	ebx
pop	ebp
retn	0Ch
sub_41BE11 endp




; int __thiscall sub_41BE7A(WPARAM wParam, int)
sub_41BE7A proc	near

arg_0= dword ptr  4

mov	edx, [esp+arg_0]
lea	eax, [ecx+168h]
cmp	edx, [eax]
jnz	short loc_41BE9C
cmp	byte ptr [ecx+16Ch], 0
lea	eax, [ecx+16Ch]
setz	dl
mov	[eax], dl
jmp	short loc_41BEBE

loc_41BE9C:
mov	[eax], edx
lea	eax, [ecx+16Ch]
cmp	edx, 7
mov	byte ptr [eax],	1
jb	short loc_41BEBE
cmp	edx, 8
jbe	short loc_41BEBB
cmp	edx, 9
jbe	short loc_41BEBE
cmp	edx, 0Ch
ja	short loc_41BEBE

loc_41BEBB:
and	byte ptr [eax],	0

loc_41BEBE:
push	esi
push	edi
mov	edi, ds:SendMessageA
push	offset sub_41BE11 ; lParam
lea	esi, [ecx+74h]
push	ecx		; wParam
push	1030h		; Msg
push	dword ptr [esi]	; hWnd
call	edi ; SendMessageA
mov	ecx, esi
call	sub_402DF8
push	0		; lParam
push	eax		; wParam
push	1013h		; Msg
push	dword ptr [esi]	; hWnd
call	edi ; SendMessageA
pop	edi
pop	esi
retn	4
sub_41BE7A endp




sub_41BEF0 proc	near

arg_0= dword ptr  4

mov	eax, [esp+arg_0]
mov	edx, [ecx+160h]
mov	eax, [eax+10h]
mov	eax, [edx+eax*4]
push	dword ptr [eax+0Ch] ; int
call	sub_41BE7A
retn	4
sub_41BEF0 endp



; Attributes: bp-based frame

sub_41BF0B proc	near

Memory=	dword ptr -9Ch
var_90=	dword ptr -90h
var_8C=	dword ptr -8Ch
var_88=	dword ptr -88h
var_78=	dword ptr -78h
var_68=	dword ptr -68h
var_5C=	dword ptr -5Ch
nNumberOfBytesToWrite= dword ptr -4Ch
lpFileName= dword ptr -48h
var_3C=	dword ptr -3Ch
var_38=	dword ptr -38h
var_34=	dword ptr -34h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
lpBuffer= dword	ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4459BE
call	__EH_prolog
sub	esp, 90h
or	[ebp+var_78], 0FFFFFFFFh
push	ebx
push	esi
push	edi
mov	esi, ecx
push	dword ptr [esi+218h] ; lpFileName
xor	ebx, ebx
lea	ecx, [ebp+var_78]
mov	[ebp+var_4], ebx
call	sub_42C145
test	al, al
jnz	short loc_41BF48
call	ds:GetLastError
mov	esi, eax
jmp	loc_41C1C1

loc_41BF48:
or	[ebp+var_88], 0FFFFFFFFh
mov	ecx, 100000h	; dwSize
mov	byte ptr [ebp+var_4], 2
call	sub_4411B0
cmp	eax, ebx
mov	[ebp+lpBuffer],	eax
setnz	al
cmp	al, bl
jnz	short loc_41BF73
mov	esi, 8007000Eh
jmp	loc_41C1AB

loc_41BF73:
lea	ecx, [ebp+var_68]
mov	[ebp+var_14], ebx
mov	[ebp+var_10], ebx
call	sub_403079
push	offset a000	; "000"
lea	ecx, [ebp+var_5C]
mov	byte ptr [ebp+var_4], 3
call	sub_403091
push	dword ptr [esi+234h]
lea	ecx, [ebp+var_68]
mov	byte ptr [ebp+var_4], 4
push	dword ptr [esi+230h]
call	sub_41C26A
lea	eax, [ebp+var_90]
lea	ecx, [ebp+var_78]
push	eax
call	sub_42BEDB
test	al, al
jz	loc_41C205
push	ebx
push	ebx
push	[ebp+var_8C]
lea	edi, [esi+140h]
mov	ecx, edi
mov	[ebp+var_34], edi
push	[ebp+var_90]
call	sub_403A30
xor	eax, eax
mov	[ebp+var_3C], ebx
mov	[ebp+var_38], ebx
mov	[ebp+var_28], ebx
mov	[ebp+var_24], ebx
mov	[ebp+var_1C], eax

loc_41BFF0:
cmp	eax, [esi+240h]
jge	short loc_41C00A
mov	ecx, [esi+244h]
mov	edx, [ecx+eax*8]
mov	[ebp+var_30], edx
mov	eax, [ecx+eax*8+4]
jmp	short loc_41C021

loc_41C00A:
mov	eax, [esi+240h]
mov	ecx, [esi+244h]
mov	edx, [ecx+eax*8-8]
mov	[ebp+var_30], edx
mov	eax, [ecx+eax*8-4]

loc_41C021:
mov	[ebp+var_2C], eax
mov	eax, [ebp+var_30]
sub	eax, [ebp+var_14]
mov	ecx, [ebp+var_2C]
sbb	ecx, [ebp+var_10]
mov	[ebp+nNumberOfBytesToWrite], ecx
ja	short loc_41C03C
cmp	eax, 100000h
jbe	short loc_41C041

loc_41C03C:
mov	eax, 100000h

loc_41C041:
lea	ecx, [ebp+var_20]
push	ecx		; int
push	eax		; nNumberOfBytesToRead
push	[ebp+lpBuffer]	; lpBuffer
lea	ecx, [ebp+var_78]
call	sub_42C1A2
test	al, al
jz	loc_41C205
mov	eax, [ebp+var_20]
cmp	eax, ebx
jz	loc_41C18A
mov	[ebp+nNumberOfBytesToWrite], eax
mov	eax, [ebp+var_14]
or	eax, [ebp+var_10]
jnz	loc_41C101
lea	eax, [esi+224h]
lea	ecx, [ebp+lpFileName]
push	eax
call	sub_4030F2
push	2Eh
lea	ecx, [ebp+lpFileName]
mov	byte ptr [ebp+var_4], 5
call	sub_40316A
lea	eax, [ebp+Memory]
lea	ecx, [ebp+var_68]
push	eax
call	sub_41C2B4
push	eax
lea	ecx, [ebp+lpFileName]
mov	byte ptr [ebp+var_4], 6
call	sub_4031F2
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 5
call	sub_4284D8
pop	ecx
lea	eax, [ebp+lpFileName]
push	eax
mov	ecx, edi
call	sub_403FE6
mov	eax, [ebp+var_28]
mov	ecx, [ebp+var_24]
add	[ebp+var_28], 1
push	ecx
push	eax
mov	ecx, edi
adc	[ebp+var_24], ebx
call	sub_403EC6
push	ebx		; char
lea	ecx, [ebp+var_88]
push	[ebp+lpFileName] ; lpFileName
call	sub_42C21B
test	al, al
jz	loc_41C1D4
push	[ebp+lpFileName] ; Memory
mov	byte ptr [ebp+var_4], 4
call	sub_4284D8
pop	ecx

loc_41C101:
lea	eax, [ebp+var_20]
lea	ecx, [ebp+var_88]
push	eax		; int
push	[ebp+nNumberOfBytesToWrite] ; nNumberOfBytesToWrite
push	[ebp+lpBuffer]	; lpBuffer
call	sub_42C289
test	al, al
jz	loc_41C205
mov	eax, [ebp+var_20]
cmp	[ebp+nNumberOfBytesToWrite], eax
jnz	loc_41C20F
add	[ebp+var_14], eax
mov	eax, [ebp+var_14]
adc	[ebp+var_10], ebx
cmp	eax, [ebp+var_30]
jnz	short loc_41C15F
mov	eax, [ebp+var_10]
cmp	eax, [ebp+var_2C]
jnz	short loc_41C15F
lea	ecx, [ebp+var_88]
call	sub_42BEBB
mov	eax, [ebp+var_1C]
cmp	eax, [esi+240h]
jge	short loc_41C159
inc	[ebp+var_1C]

loc_41C159:
mov	[ebp+var_14], ebx
mov	[ebp+var_10], ebx

loc_41C15F:
mov	eax, [ebp+var_20]
mov	ecx, edi
add	[ebp+var_3C], eax
adc	[ebp+var_38], ebx
push	[ebp+var_38]
push	[ebp+var_3C]
call	sub_422DB9
mov	edi, eax
cmp	edi, ebx
jnz	loc_41C225
mov	edi, [ebp+var_34]
mov	eax, [ebp+var_1C]
jmp	loc_41BFF0

loc_41C18A:
push	[ebp+var_24]
mov	ecx, edi
push	[ebp+var_28]
call	sub_403EC6
xor	esi, esi

loc_41C199:		; Memory
push	[ebp+var_5C]
call	sub_4284D8
push	[ebp+var_68]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx

loc_41C1AB:		; lpAddress
mov	ecx, [ebp+lpBuffer]
call	sub_4411D0
lea	ecx, [ebp+var_88]
mov	byte ptr [ebp+var_4], bl
call	sub_42BD78

loc_41C1C1:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_78]
call	sub_42BD78
mov	eax, esi
jmp	loc_41C25B

loc_41C1D4:
call	ds:GetLastError
mov	edi, eax
lea	eax, [ebp+lpFileName]
push	eax
lea	ecx, [esi+14h]
call	sub_40312C
push	[ebp+lpFileName] ; Memory
call	sub_4284D8
push	[ebp+var_5C]	; Memory
call	sub_4284D8
push	[ebp+var_68]	; Memory
call	sub_4284D8
add	esp, 0Ch
jmp	short loc_41C237

loc_41C205:
call	ds:GetLastError
mov	esi, eax
jmp	short loc_41C199

loc_41C20F:
mov	eax, off_45BB6C
push	offset unk_451D78
mov	[ebp+var_34], eax
lea	eax, [ebp+var_34]
push	eax
call	_CxxThrowException

loc_41C225:		; Memory
push	[ebp+var_5C]
call	sub_4284D8
push	[ebp+var_68]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx

loc_41C237:		; lpAddress
mov	ecx, [ebp+lpBuffer]
call	sub_4411D0
lea	ecx, [ebp+var_88]
mov	byte ptr [ebp+var_4], bl
call	sub_42BD78
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_78]
call	sub_42BD78
mov	eax, edi

loc_41C25B:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_41BF0B endp




sub_41C26A proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	ebx
push	esi
lea	esi, [ecx+0Ch]
push	edi
push	offset a000	; "000"
mov	ecx, esi
call	sub_404722
mov	edi, [esp+0Ch+arg_4]
mov	ebx, [esp+0Ch+arg_0]
test	edi, edi
ja	short loc_41C290

loc_41C288:
cmp	ebx, 3E7h
jbe	short loc_41C2AE

loc_41C290:
push	0
push	0Ah
push	edi
push	ebx
call	__aulldiv
push	30h
mov	ecx, esi
mov	ebx, eax
mov	edi, edx
call	sub_40316A
test	edi, edi
ja	short loc_41C290
jnb	short loc_41C288

loc_41C2AE:
pop	edi
pop	esi
pop	ebx
retn	8
sub_41C26A endp



; Attributes: bp-based frame

sub_41C2B4 proc	near

var_40=	dword ptr -40h
var_34=	dword ptr -34h
Memory=	dword ptr -28h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_4459F8
call	__EH_prolog
sub	esp, 34h
push	ebx
push	esi
push	edi
mov	edi, ecx
xor	ebx, ebx
push	3
lea	ecx, [ebp+var_1C]
mov	[ebp+var_10], ebx
mov	[ebp+var_1C], ebx
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
call	sub_403396
mov	eax, [edi+10h]
mov	[ebp+var_4], ebx
lea	esi, [eax-1]
cmp	esi, ebx
jl	loc_41C36F

loc_41C2EF:
mov	eax, [edi+0Ch]
mov	dx, [eax+esi*2]
cmp	dx, 39h
jnz	loc_41C3A5
lea	eax, [ebp+var_1C]
add	dx, 0FFF7h
push	eax
lea	ecx, [ebp+Memory]
call	sub_41D74B
push	eax
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 1
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
cmp	esi, ebx
pop	ecx
jnz	short loc_41C36C
push	31h
lea	ecx, [ebp+var_40]
call	sub_409516
lea	ecx, [ebp+var_1C]
mov	edx, eax
push	ecx
lea	ecx, [ebp+var_34]
mov	byte ptr [ebp+var_4], 2
call	sub_40356A
push	eax
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 3
call	sub_40312C
push	[ebp+var_34]	; Memory
call	sub_4284D8
push	[ebp+var_40]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
pop	ecx
pop	ecx

loc_41C36C:
dec	esi
jns	short loc_41C2EF

loc_41C36F:
lea	esi, [edi+0Ch]
lea	eax, [ebp+var_1C]
push	eax
mov	ecx, esi
call	sub_40312C
mov	ecx, [ebp+arg_0]
push	esi
mov	edx, edi
call	sub_40356A
push	[ebp+var_1C]	; Memory
call	sub_4284D8
mov	eax, [ebp+arg_0]
pop	ecx
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4

loc_41C3A5:
lea	eax, [ebp+var_1C]
inc	edx
push	eax
lea	ecx, [ebp+var_40]
call	sub_41D74B
push	eax
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 4
call	sub_40312C
push	[ebp+var_40]	; Memory
mov	byte ptr [ebp+var_4], bl

loc_41C3C5:
call	sub_4284D8
dec	esi
pop	ecx
js	short loc_41C36F
mov	eax, [edi+0Ch]
lea	ecx, [ebp+var_1C]
push	ecx
lea	ecx, [ebp+var_40]
mov	dx, [eax+esi*2]
call	sub_41D74B
push	eax
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 5
call	sub_40312C
push	[ebp+var_40]
mov	byte ptr [ebp+var_4], bl
jmp	short loc_41C3C5
sub_41C2B4 endp



; Attributes: bp-based frame

sub_41C3F6 proc	near

var_380= byte ptr -380h
var_240= byte ptr -240h
var_18E= byte ptr -18Eh
var_188= dword ptr -188h
var_184= byte ptr -184h
var_178= byte ptr -178h
var_168= byte ptr -168h
var_15C= byte ptr -15Ch
var_150= dword ptr -150h
var_14C= dword ptr -14Ch
var_148= byte ptr -148h
var_130= byte ptr -130h
var_F0=	dword ptr -0F0h
var_EC=	dword ptr -0ECh
var_C8=	dword ptr -0C8h
var_B8=	byte ptr -0B8h
var_A8=	byte ptr -0A8h
var_9C=	byte ptr -9Ch
var_90=	byte ptr -90h
var_84=	dword ptr -84h
var_7C=	dword ptr -7Ch
var_78=	dword ptr -78h
var_70=	dword ptr -70h
var_64=	dword ptr -64h
var_58=	dword ptr -58h
var_50=	dword ptr -50h
var_4C=	dword ptr -4Ch
var_44=	dword ptr -44h
var_38=	dword ptr -38h
Memory=	dword ptr -2Ch
var_20=	dword ptr -20h
lpCaption= dword ptr -14h
var_D= byte ptr	-0Dh
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445AA5
call	__EH_prolog
sub	esp, 374h
push	ebx
push	esi
push	edi
mov	edi, ecx
mov	eax, [edi+0Ch]
mov	[ebp+lpCaption], eax
imul	eax, 188h
lea	esi, [eax+edi+84h]
mov	ecx, esi
call	sub_40E6A6
test	al, al
jnz	short loc_41C43F
push	3020208h
push	8A0h
mov	ecx, esi
call	sub_40E58A
jmp	loc_41C904

loc_41C43F:
push	4
lea	ecx, [ebp+var_58]
call	sub_402794
mov	[ebp+var_58], offset off_44B518
and	[ebp+var_4], 0
lea	eax, [ebp+var_58]
push	eax
mov	ecx, esi
call	sub_4170D3
cmp	[ebp+var_50], 0
jz	loc_41C8F8
cmp	[ebp+var_50], 1
jnz	short loc_41C480
mov	eax, [ebp+var_4C]
mov	ecx, esi
mov	ebx, [eax]
push	ebx
call	sub_41756F
test	al, al
jz	short loc_41C496

loc_41C480:
push	3020A02h
push	10CEh
mov	ecx, esi
call	sub_40E58A
jmp	loc_41C8F8

loc_41C496:
lea	eax, [ebp+var_38]
push	ebx
push	eax
mov	ecx, esi
call	sub_41733B
lea	eax, [ebp+Memory]
push	ebx
push	eax
mov	ecx, esi
mov	byte ptr [ebp+var_4], 1
call	sub_4173E8
push	eax
lea	edx, [esi+0D8h]
lea	ecx, [ebp+var_44]
mov	byte ptr [ebp+var_4], 2
call	sub_40356A
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 4
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_44]
push	eax
lea	ecx, [ebp+var_20]
call	sub_4030F2
mov	ecx, [edi+8]
push	1
pop	eax
mov	byte ptr [ebp+var_4], 5
cmp	ecx, eax
jg	short loc_41C4F1
mov	eax, [ebp+lpCaption]
jmp	short loc_41C4F4

loc_41C4F1:
sub	eax, [ebp+lpCaption]

loc_41C4F4:
imul	eax, 188h
cmp	ecx, 1
lea	eax, [eax+edi+84h]
mov	[ebp+lpCaption], eax
jle	short loc_41C525
mov	ecx, eax
call	sub_40E6A6
test	al, al
jz	short loc_41C525
mov	eax, [ebp+lpCaption]
lea	ecx, [ebp+var_20]
add	eax, 0D8h
push	eax
call	sub_40312C

loc_41C525:
lea	ecx, [ebp+var_B8]
call	sub_41C913
lea	eax, [ebp+Memory]
push	ebx
push	eax
mov	ecx, esi
mov	byte ptr [ebp+var_4], 6
call	sub_4174B8
push	eax
lea	ecx, [ebp+var_A8]
mov	byte ptr [ebp+var_4], 7
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 6
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_20]
push	eax
lea	ecx, [ebp+var_9C]
call	sub_40312C
mov	ecx, esi
call	sub_40DA67
push	eax		; hWndParent
push	1F8h		; lpTemplateName
lea	ecx, [ebp+var_B8]
call	sub_42FCF7
cmp	eax, 2
jz	loc_41C8CE
lea	ecx, [ebp+var_C8]
call	sub_403079
lea	eax, [ebp+var_38]
lea	edx, [ebp+var_44]
push	eax
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 8
call	sub_40356A
push	dword ptr [eax]	; lpFileName
lea	ecx, [ebp+var_F0]
mov	byte ptr [ebp+var_4], 9
call	sub_42B49E
push	[ebp+Memory]	; Memory
mov	bl, al
neg	bl
sbb	bl, bl
mov	byte ptr [ebp+var_4], 8
inc	bl
call	sub_4284D8
test	bl, bl
pop	ecx
jz	short loc_41C5E6
push	offset aCanNotFindFile ; "Can not find file"
mov	ecx, esi
call	sub_40E53A
jmp	loc_41C8C2

loc_41C5E6:
mov	eax, [ebp+var_84]
mov	edx, [ebp+var_EC]
mov	ebx, [ebp+var_F0]
cmp	edx, [eax+4]
ja	short loc_41C619
jb	short loc_41C603
cmp	ebx, [eax]
ja	short loc_41C619

loc_41C603:
push	3020522h
push	0FB7h
mov	ecx, esi
call	sub_40E58A
jmp	loc_41C8C2

loc_41C619:
push	edx
lea	ecx, [ebp+var_90]
push	ebx
call	sub_41F765
mov	ebx, edx
mov	[ebp+var_78], eax
test	ebx, ebx
ja	short loc_41C638
cmp	eax, 64h
jb	loc_41C6D5

loc_41C638:
push	ebx
lea	ecx, [ebp+var_130]
push	eax
call	sub_427B10
lea	eax, [ebp+var_130]
lea	ecx, [ebp+Memory]
push	eax
call	sub_403091
push	3020520h
mov	edx, 0FB5h
lea	ecx, [ebp+var_64]
mov	byte ptr [ebp+var_4], 0Ah
call	sub_40B168
mov	eax, [eax]
mov	edx, 0FB6h
mov	[ebp+lpCaption], eax
lea	eax, [ebp+Memory]
push	eax
push	3020521h
lea	ecx, [ebp+var_70]
mov	byte ptr [ebp+var_4], 0Bh
call	sub_40744B
mov	eax, [eax]
mov	ecx, esi
neg	ecx
lea	edx, [esi+4]
push	23h		; uType
push	[ebp+lpCaption]	; lpCaption
sbb	ecx, ecx
and	ecx, edx
push	eax		; lpText
mov	ecx, [ecx]
push	ecx		; hWnd
call	ds:MessageBoxW
push	[ebp+var_70]	; Memory
cmp	eax, 6
setnz	[ebp+var_D]
call	sub_4284D8
push	[ebp+var_64]	; Memory
call	sub_4284D8
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 8
call	sub_4284D8
add	esp, 0Ch
cmp	[ebp+var_D], 0
jnz	loc_41C8C2

loc_41C6D5:
lea	eax, [ebp+var_9C]
lea	ecx, [ebp+var_20]
push	eax
call	sub_40312C
lea	ecx, [ebp+var_20]
call	sub_42C33B
mov	ecx, [ebp+var_20]
call	sub_42A264
test	al, al
jnz	short loc_41C734
lea	eax, [ebp+var_20]
mov	edx, 0C8h
push	eax
push	2000603h
lea	ecx, [ebp+var_64]
call	sub_40744B
push	dword ptr [eax]	; lpText
mov	ecx, esi
mov	byte ptr [ebp+var_4], 0Ch
call	sub_40E53A
push	[ebp+var_64]	; Memory
call	sub_4284D8
push	[ebp+var_C8]	; Memory
call	sub_4284D8
pop	ecx
jmp	loc_41C8CD

loc_41C734:
lea	ecx, [ebp+var_380]
call	sub_41C9D3
mov	eax, [ebp+var_78]
push	3000000h
mov	edx, 898h
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 0Dh
mov	[ebp+var_150], eax
mov	[ebp+var_14C], ebx
call	sub_40B168
push	3020510h
mov	edx, 0FB4h
lea	ecx, [ebp+var_70]
mov	byte ptr [ebp+var_4], 0Eh
call	sub_40B168
mov	eax, [edi]
and	[ebp+var_18E], 0
mov	[ebp+var_188], eax
lea	eax, [ebp+Memory]
push	eax
lea	ecx, [ebp+var_184]
mov	byte ptr [ebp+var_4], 0Fh
call	sub_40312C
push	offset asc_45B128 ; " "
lea	ecx, [ebp+var_7C]
call	sub_403091
push	eax
lea	edx, [ebp+var_70]
lea	ecx, [ebp+var_64]
mov	byte ptr [ebp+var_4], 10h
call	sub_40356A
push	eax
lea	ecx, [ebp+var_178]
mov	byte ptr [ebp+var_4], 11h
call	sub_40312C
push	[ebp+var_64]	; Memory
call	sub_4284D8
push	[ebp+var_7C]	; Memory
mov	byte ptr [ebp+var_4], 0Fh
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_38]
pop	ecx
push	eax
lea	ecx, [ebp+var_240]
call	sub_403F4B
lea	eax, [ebp+var_38]
lea	edx, [ebp+var_44]
push	eax
lea	ecx, [ebp+var_64]
call	sub_40356A
push	eax
lea	ecx, [ebp+var_168]
mov	byte ptr [ebp+var_4], 12h
call	sub_40312C
push	[ebp+var_64]	; Memory
mov	byte ptr [ebp+var_4], 0Fh
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_38]
push	eax
lea	edx, [ebp+var_20]
lea	ecx, [ebp+var_7C]
call	sub_40356A
push	eax
lea	ecx, [ebp+var_15C]
mov	byte ptr [ebp+var_4], 13h
call	sub_40312C
push	[ebp+var_7C]	; Memory
mov	byte ptr [ebp+var_4], 0Fh
call	sub_4284D8
pop	ecx
lea	ecx, [ebp+var_148]
call	sub_428327
lea	eax, [ebp+var_90]
lea	ecx, [ebp+var_148]
push	eax
call	sub_41D70E
push	dword ptr [edi]	; hWndParent
lea	eax, [ebp+var_70]
lea	ecx, [ebp+var_380]
push	eax		; int
call	sub_424FE9
push	[ebp+var_70]	; Memory
test	eax, eax
jz	short loc_41C89B
call	sub_4284D8
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 8
pop	ecx
lea	ecx, [ebp+var_380]
call	sub_41CA4F
jmp	short loc_41C8C2

loc_41C89B:
call	sub_4284D8
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 8
pop	ecx
lea	ecx, [ebp+var_380]
call	sub_41CA4F
push	1
mov	ecx, edi
call	sub_402FBC

loc_41C8C2:		; Memory
push	[ebp+var_C8]
call	sub_4284D8

loc_41C8CD:
pop	ecx

loc_41C8CE:
lea	ecx, [ebp+var_B8]
mov	byte ptr [ebp+var_4], 5
call	sub_41C98E
push	[ebp+var_20]	; Memory
call	sub_4284D8
push	[ebp+var_44]	; Memory
call	sub_4284D8
push	[ebp+var_38]	; Memory
call	sub_4284D8
add	esp, 0Ch

loc_41C8F8:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_58]
call	sub_4282FE

loc_41C904:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_41C3F6 endp



; Attributes: bp-based frame

sub_41C913 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445AC3
call	__EH_prolog
push	ecx
push	esi
push	edi
mov	esi, ecx
xor	edi, edi
mov	[ebp+var_10], esi
mov	[esi+4], edi
mov	dword ptr [esi], offset	off_44B558
lea	ecx, [esi+10h]
mov	[esi+8], edi
mov	[esi+0Ch], edi
push	3
mov	[ebp+var_4], edi
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
lea	ecx, [esi+1Ch]
push	3
mov	byte ptr [ebp+var_4], 1
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
mov	ecx, [ebp+var_C]
mov	[esi+2Ch], edi
mov	[esi+30h], edi
mov	[esi+34h], edi
mov	dword ptr [esi+38h], 8
mov	dword ptr [esi+28h], offset off_44C418
mov	dword ptr [esi], offset	off_44C3E8
mov	eax, esi
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41C913 endp



; Attributes: bp-based frame

sub_41C98E proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445AEE
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
lea	ecx, [esi+28h]
mov	[ebp+var_4], 2
call	sub_4282FE
push	dword ptr [esi+1Ch] ; Memory
call	sub_4284D8
push	dword ptr [esi+10h] ; Memory
call	sub_4284D8
pop	ecx
mov	dword ptr [esi], offset	off_44B588
pop	ecx
pop	esi
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn
sub_41C98E endp



; Attributes: bp-based frame

sub_41C9D3 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445B0E
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	edi
mov	[ebp+var_10], esi
call	sub_40F2E5
lea	ecx, [esi+218h]
xor	edi, edi
push	3
mov	[ebp+var_4], edi
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
lea	ecx, [esi+224h]
push	3
mov	byte ptr [ebp+var_4], 1
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
mov	ecx, [ebp+var_C]
lea	eax, [esi+238h]
mov	[eax+4], edi
mov	[eax+8], edi
mov	[eax+0Ch], edi
mov	dword ptr [eax+10h], 8
mov	dword ptr [eax], offset	off_44C418
mov	dword ptr [esi], offset	off_44C420
mov	eax, esi
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41C9D3 endp



; Attributes: bp-based frame

sub_41CA4F proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445B3C
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
mov	[ebp+var_10], esi
lea	ecx, [esi+238h]
mov	[ebp+var_4], 2
call	sub_4282FE
push	dword ptr [esi+224h] ; Memory
call	sub_4284D8
push	dword ptr [esi+218h] ; Memory
call	sub_4284D8
or	[ebp+var_4], 0FFFFFFFFh
pop	ecx
pop	ecx
mov	ecx, esi
call	sub_40F3F1
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41CA4F endp




; int __thiscall sub_41CAA2(void *Memory, char)
sub_41CAA2 proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
call	sub_41C98E
test	[esp+4+arg_0], 1
jz	short loc_41CAB8
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_41CAB8:
mov	eax, esi
pop	esi
retn	4
sub_41CAA2 endp



; Attributes: bp-based frame

sub_41CABE proc	near

var_4C=	dword ptr -4Ch
var_3C=	dword ptr -3Ch
lpFileName= dword ptr -2Ch
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
nNumberOfBytesToWrite= dword ptr -14h
lpBuffer= dword	ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445B68
call	__EH_prolog
sub	esp, 40h
or	[ebp+var_3C], 0FFFFFFFFh
push	ebx
push	esi
push	edi
mov	esi, ecx
mov	eax, [esi+238h]
xor	ebx, ebx
push	ebx		; char
push	eax		; lpFileName
lea	ecx, [ebp+var_3C]
mov	[ebp+var_4], ebx
call	sub_42C21B
test	al, al
jnz	short loc_41CB0B
call	ds:GetLastError
mov	edi, eax
lea	eax, [esi+238h]
push	eax
lea	ecx, [esi+14h]
call	sub_40312C
mov	esi, edi
jmp	loc_41CCF4

loc_41CB0B:
push	ebx
push	ebx
push	dword ptr [esi+24Ch]
lea	ecx, [esi+140h]
push	dword ptr [esi+248h]
call	sub_403A30
mov	ecx, 100000h	; dwSize
call	sub_4411B0
mov	ecx, eax	; lpAddress
cmp	ecx, ebx
mov	[ebp+lpBuffer],	ecx
setnz	al
cmp	al, bl
jnz	short loc_41CB4B
call	sub_4411D0
mov	esi, 8007000Eh
jmp	loc_41CCF4

loc_41CB4B:
xor	edi, edi
cmp	[esi+22Ch], ebx
mov	[ebp+var_20], ebx
mov	[ebp+var_1C], ebx
jle	loc_41CC31

loc_41CB5F:
or	[ebp+var_4C], 0FFFFFFFFh
mov	eax, [esi+230h]
lea	edx, [esi+218h]
lea	ecx, [ebp+lpFileName]
mov	byte ptr [ebp+var_4], 2
push	dword ptr [eax+edi*4]
call	sub_40356A
push	[ebp+lpFileName] ; lpFileName
lea	ecx, [ebp+var_4C]
mov	byte ptr [ebp+var_4], 3
call	sub_42C145
test	al, al
jz	loc_41CC56
lea	eax, [ebp+lpFileName]
lea	ecx, [esi+140h]
push	eax
call	sub_403FE6

loc_41CBA4:
lea	eax, [ebp+nNumberOfBytesToWrite]
lea	ecx, [ebp+var_4C]
push	eax		; int
push	100000h		; nNumberOfBytesToRead
push	[ebp+lpBuffer]	; lpBuffer
call	sub_42C1A2
test	al, al
jz	loc_41CC97
mov	eax, [ebp+nNumberOfBytesToWrite]
cmp	eax, ebx
jz	short loc_41CC0F
lea	ecx, [ebp+nNumberOfBytesToWrite]
mov	[ebp+var_18], eax
push	ecx		; int
push	eax		; nNumberOfBytesToWrite
push	[ebp+lpBuffer]	; lpBuffer
lea	ecx, [ebp+var_3C]
call	sub_42C289
test	al, al
jz	loc_41CCAF
mov	eax, [ebp+nNumberOfBytesToWrite]
cmp	[ebp+var_18], eax
jnz	loc_41CCBF
add	[ebp+var_20], eax
lea	ecx, [esi+140h]
adc	[ebp+var_1C], ebx
push	[ebp+var_1C]
push	[ebp+var_20]
call	sub_422DB9
cmp	eax, ebx
jnz	loc_41CCD5
jmp	short loc_41CBA4

loc_41CC0F:		; Memory
push	[ebp+lpFileName]
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 1
lea	ecx, [ebp+var_4C]
call	sub_42BD78
inc	edi
cmp	edi, [esi+22Ch]
jl	loc_41CB5F

loc_41CC31:		; lpAddress
mov	ecx, [ebp+lpBuffer]
call	sub_4411D0
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_3C]
call	sub_42BD78
xor	eax, eax

loc_41CC47:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn

loc_41CC56:
call	ds:GetLastError
mov	edi, eax
lea	eax, [ebp+lpFileName]
push	eax
lea	ecx, [esi+14h]
call	sub_40312C
push	[ebp+lpFileName] ; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 1
lea	ecx, [ebp+var_4C]
call	sub_42BD78
mov	ecx, [ebp+lpBuffer] ; lpAddress
call	sub_4411D0
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_3C]
call	sub_42BD78
mov	eax, edi
jmp	short loc_41CC47

loc_41CC97:
call	ds:GetLastError
mov	edi, eax
lea	eax, [ebp+lpFileName]

loc_41CCA2:
push	eax
lea	ecx, [esi+14h]
call	sub_40312C
mov	esi, edi
jmp	short loc_41CCD7

loc_41CCAF:
call	ds:GetLastError
mov	edi, eax
lea	eax, [esi+238h]
jmp	short loc_41CCA2

loc_41CCBF:
mov	eax, off_45BB6C
push	offset unk_451D78
mov	[ebp+var_18], eax
lea	eax, [ebp+var_18]
push	eax
call	_CxxThrowException

loc_41CCD5:
mov	esi, eax

loc_41CCD7:		; Memory
push	[ebp+lpFileName]
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 1
lea	ecx, [ebp+var_4C]
call	sub_42BD78
mov	ecx, [ebp+lpBuffer] ; lpAddress
call	sub_4411D0

loc_41CCF4:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_3C]
call	sub_42BD78
mov	eax, esi
jmp	loc_41CC47
sub_41CABE endp



; Attributes: bp-based frame

sub_41CD07 proc	near

var_3BC= dword ptr -3BCh
var_3AC= byte ptr -3ACh
var_1BA= byte ptr -1BAh
var_1B4= dword ptr -1B4h
var_1B0= byte ptr -1B0h
var_1A4= byte ptr -1A4h
var_194= byte ptr -194h
var_188= byte ptr -188h
var_180= dword ptr -180h
var_17C= dword ptr -17Ch
var_174= byte ptr -174h
var_164= dword ptr -164h
var_160= dword ptr -160h
var_15C= byte ptr -15Ch
var_134= dword ptr -134h
var_124= dword ptr -124h
var_118= byte ptr -118h
var_10C= byte ptr -10Ch
var_100= dword ptr -100h
var_FC=	dword ptr -0FCh
var_F4=	byte ptr -0F4h
var_E8=	byte ptr -0E8h
var_E0=	dword ptr -0E0h
var_D8=	dword ptr -0D8h
var_C8=	dword ptr -0C8h
var_BC=	dword ptr -0BCh
var_B0=	dword ptr -0B0h
lpFileName= dword ptr -0ACh
Memory=	dword ptr -0A0h
var_94=	dword ptr -94h
var_90=	dword ptr -90h
var_84=	dword ptr -84h
var_78=	dword ptr -78h
var_70=	dword ptr -70h
var_6C=	dword ptr -6Ch
var_64=	dword ptr -64h
var_58=	dword ptr -58h
var_4C=	dword ptr -4Ch
var_40=	dword ptr -40h
var_3C=	dword ptr -3Ch
var_34=	dword ptr -34h
var_28=	dword ptr -28h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_D= byte ptr	-0Dh
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445C76
call	__EH_prolog
sub	esp, 3A0h
push	ebx
push	esi
mov	esi, ecx
push	edi
mov	eax, [esi+0Ch]
mov	[ebp+var_94], eax
imul	eax, 188h
lea	ebx, [eax+esi+84h]
mov	ecx, ebx
call	sub_40E6A6
test	al, al
jnz	short loc_41CD53
push	3020208h
push	8A0h
mov	ecx, ebx
call	sub_40E58A
jmp	loc_41D526

loc_41CD53:
push	4
lea	ecx, [ebp+var_78]
call	sub_402794
mov	[ebp+var_78], offset off_44B518
and	[ebp+var_4], 0
lea	eax, [ebp+var_78]
push	eax
mov	ecx, ebx
call	sub_4170D3
cmp	[ebp+var_70], 0
jz	loc_41D51A
mov	eax, [ebp+var_6C]
cmp	[ebp+var_70], 1
mov	edi, [eax]
mov	[ebp+var_B0], edi
jnz	loc_41D509
push	edi
mov	ecx, ebx
call	sub_41756F
test	al, al
jnz	loc_41D509
lea	eax, [ebp+var_58]
push	edi
push	eax
mov	ecx, ebx
call	sub_41733B
lea	eax, [ebp+Memory]
push	edi
push	eax
mov	ecx, ebx
mov	byte ptr [ebp+var_4], 1
call	sub_4173E8
push	eax
lea	edx, [ebx+0D8h]
lea	ecx, [ebp+var_34]
mov	byte ptr [ebp+var_4], 2
call	sub_40356A
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 4
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_34]
push	eax
lea	ecx, [ebp+var_28]
call	sub_4030F2
mov	ecx, [esi+8]
mov	byte ptr [ebp+var_4], 5
cmp	ecx, 1
jg	short loc_41CE04
mov	eax, [ebp+var_94]
jmp	short loc_41CE0D

loc_41CE04:
push	1
pop	eax
sub	eax, [ebp+var_94]

loc_41CE0D:
imul	eax, 188h
cmp	ecx, 1
lea	edi, [eax+esi+84h]
jle	short loc_41CE39
mov	ecx, edi
call	sub_40E6A6
test	al, al
jz	short loc_41CE39
add	edi, 0D8h
lea	ecx, [ebp+var_28]
push	edi
call	sub_40312C

loc_41CE39:
lea	ecx, [ebp+var_90]
call	sub_403079
push	offset a000	; "000"
lea	ecx, [ebp+var_84]
mov	byte ptr [ebp+var_4], 6
call	sub_403091
lea	eax, [ebp+var_58]
lea	ecx, [ebp+var_90]
push	eax
mov	byte ptr [ebp+var_4], 7
call	sub_41D535
test	al, al
jnz	short loc_41CE85
push	3020621h
push	0FC2h
mov	ecx, ebx
call	sub_40E58A
jmp	loc_41D32E

loc_41CE85:
lea	ecx, [ebp+var_3AC]
call	sub_41D625
lea	eax, [ebp+var_58]
lea	ecx, [ebp+var_64]
push	eax
mov	byte ptr [ebp+var_4], 8
call	sub_4030F2
xor	edi, edi
mov	byte ptr [ebp+var_4], 9
mov	[ebp+var_164], edi
mov	[ebp+var_160], edi

loc_41CEB2:
lea	ecx, [ebp+var_D8]
call	sub_403079
lea	eax, [ebp+var_64]
lea	edx, [ebp+var_34]
push	eax
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 0Ah
call	sub_40356A
push	dword ptr [eax]	; lpFileName
lea	ecx, [ebp+var_100]
mov	byte ptr [ebp+var_4], 0Bh
call	sub_42B49E
test	al, al
jz	short loc_41CEFE
mov	eax, [ebp+var_E0]
shr	eax, 4
and	al, 1
mov	[ebp+var_D], al
jnz	short loc_41CEFE
and	[ebp+var_D], 0
jmp	short loc_41CF02

loc_41CEFE:
mov	[ebp+var_D], 1

loc_41CF02:		; Memory
push	[ebp+Memory]
mov	byte ptr [ebp+var_4], 0Ah
call	sub_4284D8
cmp	[ebp+var_D], 0
pop	ecx
jnz	short loc_41CF79
lea	eax, [ebp+var_64]
lea	ecx, [ebp+var_188]
push	eax
call	sub_4032B4
mov	eax, [ebp+var_100]
mov	ecx, [ebp+var_FC]
add	[ebp+var_164], eax
lea	eax, [ebp+var_4C]
push	eax
adc	[ebp+var_160], ecx
lea	ecx, [ebp+var_90]
call	sub_41C2B4
push	eax
lea	ecx, [ebp+var_64]
mov	byte ptr [ebp+var_4], 0Ch
call	sub_40312C
push	[ebp+var_4C]	; Memory
call	sub_4284D8
push	[ebp+var_D8]	; Memory
mov	byte ptr [ebp+var_4], 9
call	sub_4284D8
pop	ecx
pop	ecx
jmp	loc_41CEB2

loc_41CF79:		; Memory
push	[ebp+var_D8]
mov	byte ptr [ebp+var_4], 9
call	sub_4284D8
cmp	[ebp+var_180], 1
pop	ecx
jnz	short loc_41CFB1
push	3020622h
push	0FC3h
mov	ecx, ebx
call	sub_40E58A

loc_41CFA3:		; Memory
push	[ebp+var_64]
call	sub_4284D8

loc_41CFAB:
pop	ecx
jmp	loc_41D31F

loc_41CFB1:
mov	eax, [ebp+var_164]
or	eax, [ebp+var_160]
jnz	short loc_41CFCD
push	offset aNoData	; "No data"
mov	ecx, ebx
call	sub_40E53A
jmp	short loc_41CFA3

loc_41CFCD:
push	3
lea	ecx, [ebp+var_1C]
mov	[ebp+var_1C], edi
mov	[ebp+var_18], edi
mov	[ebp+var_14], edi
call	sub_403396
lea	eax, [ebp+var_1C]
mov	ecx, 8E2h
push	eax
mov	eax, [ebp+var_180]
push	[ebp+var_160]
mov	byte ptr [ebp+var_4], 0Dh
cdq
push	[ebp+var_164]
push	edx
push	eax
mov	edx, 2000320h
call	sub_401A23
push	offset asc_45B10C ; "\n"
lea	ecx, [ebp+var_1C]
call	sub_403195
lea	eax, [ebp+var_34]
lea	ecx, [ebp+var_1C]
push	eax
call	sub_4031F2
cmp	[ebp+var_180], 0
jle	short loc_41D04D

loc_41D02E:
cmp	edi, 2
jge	short loc_41D04D
mov	eax, [ebp+var_17C]
lea	edx, [ebp+var_1C]
mov	ecx, [eax+edi*4]
call	sub_41D608
inc	edi
cmp	edi, [ebp+var_180]
jl	short loc_41D02E

loc_41D04D:
cmp	edi, [ebp+var_180]
jz	short loc_41D0A8
inc	edi
cmp	edi, [ebp+var_180]
jz	short loc_41D090
push	offset a____1	; "..."
lea	ecx, [ebp+Memory]
call	sub_403091
lea	edx, [ebp+var_1C]
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 0Eh
call	sub_41D608
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 0Dh
call	sub_4284D8
pop	ecx

loc_41D090:
mov	eax, [ebp+var_17C]
mov	ecx, [ebp+var_180]
lea	edx, [ebp+var_1C]
mov	ecx, [eax+ecx*4-4]
call	sub_41D608

loc_41D0A8:
lea	ecx, [ebp+var_118]
call	sub_402BA4
lea	eax, [ebp+var_28]
lea	ecx, [ebp+var_F4]
push	eax
mov	byte ptr [ebp+var_4], 0Fh
call	sub_40312C
push	3020600h
mov	edx, 0FBEh
lea	ecx, [ebp+var_4C]
call	sub_40B168
push	eax
lea	ecx, [ebp+var_10C]
mov	byte ptr [ebp+var_4], 10h
call	sub_40312C
push	[ebp+var_4C]	; Memory
mov	byte ptr [ebp+var_4], 0Fh
call	sub_4284D8
pop	ecx
push	20h
lea	ecx, [ebp+var_10C]
call	sub_40316A
push	[ebp+var_B0]
lea	eax, [ebp+var_4C]
mov	ecx, ebx
push	eax
call	sub_4174B8
push	eax
lea	ecx, [ebp+var_10C]
mov	byte ptr [ebp+var_4], 11h
call	sub_4031F2
push	[ebp+var_4C]	; Memory
mov	byte ptr [ebp+var_4], 0Fh
call	sub_4284D8
mov	edx, 0FBFh
lea	ecx, [ebp+var_4C]
mov	[esp+3BCh+var_3BC], 3020601h
call	sub_40B168
push	eax
lea	ecx, [ebp+var_100]
mov	byte ptr [ebp+var_4], 12h
call	sub_40312C
push	[ebp+var_4C]	; Memory
mov	byte ptr [ebp+var_4], 0Fh
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_1C]
push	eax
lea	ecx, [ebp+var_E8]
call	sub_40312C
mov	ecx, ebx
call	sub_40DA67
push	eax		; hWndParent
push	1FAh		; lpTemplateName
lea	ecx, [ebp+var_118]
call	sub_42FCF7
cmp	eax, 2
jnz	short loc_41D1B1
lea	ecx, [ebp+var_118]
mov	byte ptr [ebp+var_4], 0Dh
call	sub_402C6D
push	[ebp+var_1C]	; Memory
call	sub_4284D8
push	[ebp+var_64]	; Memory
call	sub_4284D8
pop	ecx
jmp	loc_41CFAB

loc_41D1B1:
lea	eax, [ebp+var_F4]
lea	ecx, [ebp+var_28]
push	eax
call	sub_40312C
lea	ecx, [ebp+var_118]
mov	byte ptr [ebp+var_4], 0Dh
call	sub_402C6D
lea	ecx, [ebp+var_28]
call	sub_42C33B
mov	ecx, [ebp+var_28]
call	sub_42A264
test	al, al
jnz	short loc_41D226
lea	eax, [ebp+var_28]
mov	edx, 0C8h
push	eax
push	2000603h
lea	ecx, [ebp+var_4C]
call	sub_40744B
push	dword ptr [eax]	; lpText
mov	ecx, ebx
mov	byte ptr [ebp+var_4], 13h
call	sub_40E53A
push	[ebp+var_4C]	; Memory
call	sub_4284D8
push	[ebp+var_1C]	; Memory
call	sub_4284D8
push	[ebp+var_64]	; Memory
call	sub_4284D8
add	esp, 0Ch
jmp	loc_41D31F

loc_41D226:
lea	eax, [ebp+var_90]
lea	ecx, [ebp+var_40]
push	eax
call	sub_4030F2
xor	edi, edi
mov	byte ptr [ebp+var_4], 14h
cmp	[ebp+var_3C], edi
jz	short loc_41D263

loc_41D240:
mov	eax, [ebp+var_3C]
mov	ecx, [ebp+var_40]
dec	eax
cmp	word ptr [ecx+eax*2], 2Eh
jnz	short loc_41D25E
push	1
push	eax
lea	ecx, [ebp+var_40]
call	sub_40708E
cmp	[ebp+var_3C], edi
jnz	short loc_41D240

loc_41D25E:
cmp	[ebp+var_3C], edi
jnz	short loc_41D270

loc_41D263:		; "file"
push	offset aFile
lea	ecx, [ebp+var_40]
call	sub_404722

loc_41D270:
lea	ecx, [ebp+var_134]
call	sub_403079
lea	eax, [ebp+var_40]
lea	edx, [ebp+var_28]
push	eax
lea	ecx, [ebp+lpFileName]
mov	byte ptr [ebp+var_4], 15h
call	sub_40356A
lea	eax, [ebp+lpFileName]
lea	ecx, [ebp+var_174]
push	eax
mov	byte ptr [ebp+var_4], 16h
call	sub_40312C
push	[ebp+lpFileName] ; lpFileName
lea	ecx, [ebp+var_15C]
call	sub_42B49E
test	al, al
jz	loc_41D364
lea	eax, [ebp+lpFileName]
mov	edx, 10D0h
push	eax
push	3020A04h
lea	ecx, [ebp+var_4C]
call	sub_40744B
push	dword ptr [eax]	; lpText
mov	ecx, ebx
mov	byte ptr [ebp+var_4], 17h
call	sub_40E53A
push	[ebp+var_4C]	; Memory
call	sub_4284D8
push	[ebp+lpFileName] ; Memory
call	sub_4284D8
push	[ebp+var_134]	; Memory
call	sub_4284D8
push	[ebp+var_40]	; Memory
call	sub_4284D8
push	[ebp+var_1C]	; Memory
call	sub_4284D8
push	[ebp+var_64]	; Memory
call	sub_4284D8
add	esp, 18h

loc_41D31F:
lea	ecx, [ebp+var_3AC]
mov	byte ptr [ebp+var_4], 7
call	sub_41D6A1

loc_41D32E:		; Memory
push	[ebp+var_84]
call	sub_4284D8
push	[ebp+var_90]	; Memory
call	sub_4284D8
push	[ebp+var_28]	; Memory
call	sub_4284D8
push	[ebp+var_34]	; Memory
call	sub_4284D8
push	[ebp+var_58]	; Memory
call	sub_4284D8
add	esp, 14h
jmp	loc_41D51A

loc_41D364:
and	[ebp+var_1BA], 0
push	3000000h
mov	edx, 898h
lea	ecx, [ebp+var_C8]
call	sub_40B168
push	3020610h
mov	edx, 0FC0h
lea	ecx, [ebp+var_BC]
mov	byte ptr [ebp+var_4], 18h
call	sub_40B168
mov	eax, [esi]
lea	ecx, [ebp+var_1B0]
mov	[ebp+var_1B4], eax
lea	eax, [ebp+var_C8]
push	eax
mov	byte ptr [ebp+var_4], 19h
call	sub_40312C
push	offset asc_45B128 ; " "
lea	ecx, [ebp+var_124]
call	sub_403091
push	eax
lea	edx, [ebp+var_BC]
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 1Ah
call	sub_40356A
push	eax
lea	ecx, [ebp+var_1A4]
mov	byte ptr [ebp+var_4], 1Bh
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_124]	; Memory
mov	byte ptr [ebp+var_4], 19h
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_34]
pop	ecx
push	eax
lea	ecx, [ebp+var_194]
call	sub_40312C
push	dword ptr [esi]	; hWndParent
lea	eax, [ebp+var_BC]
lea	ecx, [ebp+var_3AC]
push	eax		; int
call	sub_424FE9
push	[ebp+var_BC]	; Memory
test	eax, eax
jz	short loc_41D488
call	sub_4284D8
push	[ebp+var_C8]	; Memory
call	sub_4284D8
push	[ebp+lpFileName] ; Memory
call	sub_4284D8
push	[ebp+var_134]	; Memory
call	sub_4284D8
push	[ebp+var_40]	; Memory
call	sub_4284D8
push	[ebp+var_1C]	; Memory
call	sub_4284D8
push	[ebp+var_64]	; Memory
call	sub_4284D8
add	esp, 1Ch
lea	ecx, [ebp+var_3AC]
mov	byte ptr [ebp+var_4], 7
call	sub_41D6A1
jmp	short loc_41D4E1

loc_41D488:
call	sub_4284D8
push	[ebp+var_C8]	; Memory
call	sub_4284D8
push	[ebp+lpFileName] ; Memory
call	sub_4284D8
push	[ebp+var_134]	; Memory
call	sub_4284D8
push	[ebp+var_40]	; Memory
call	sub_4284D8
push	[ebp+var_1C]	; Memory
call	sub_4284D8
push	[ebp+var_64]	; Memory
call	sub_4284D8
add	esp, 1Ch
lea	ecx, [ebp+var_3AC]
mov	byte ptr [ebp+var_4], 7
call	sub_41D6A1
push	1
mov	ecx, esi
call	sub_402FBC

loc_41D4E1:
lea	ecx, [ebp+var_90]
call	sub_409444
push	[ebp+var_28]	; Memory
call	sub_4284D8
push	[ebp+var_34]	; Memory
call	sub_4284D8
push	[ebp+var_58]	; Memory
call	sub_4284D8
add	esp, 0Ch
jmp	short loc_41D51A

loc_41D509:
push	3020620h
push	0FC1h
mov	ecx, ebx
call	sub_40E58A

loc_41D51A:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_78]
call	sub_4282FE

loc_41D526:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_41CD07 endp



; Attributes: bp-based frame

sub_41D535 proc	near

var_24=	dword ptr -24h
Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_445C98
call	__EH_prolog
sub	esp, 18h
push	ebx
push	esi
mov	esi, [ebp+arg_0]
push	edi
push	2
mov	ebx, ecx
pop	edi
lea	eax, [ebp+Memory]
push	edi
push	eax
mov	ecx, esi
call	sub_40B5EF
mov	ecx, [eax]
and	[ebp+var_4], 0
mov	edx, offset a01	; "01"
call	sub_42828A
push	[ebp+Memory]	; Memory
test	eax, eax
setnz	byte ptr [ebp+arg_0+3]
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
cmp	byte ptr [ebp+arg_0+3],	0
pop	ecx
jz	short loc_41D586
xor	al, al
jmp	short loc_41D5F7

loc_41D586:
mov	eax, [esi+4]
mov	[ebp+arg_0], edi
cmp	eax, edi
jle	short loc_41D5A7

loc_41D590:
mov	ecx, [esi]
mov	edx, eax
sub	edx, [ebp+arg_0]
cmp	word ptr [ecx+edx*2-2],	30h
jnz	short loc_41D5A7
inc	[ebp+arg_0]
cmp	[ebp+arg_0], eax
jl	short loc_41D590

loc_41D5A7:
sub	eax, [ebp+arg_0]
mov	ecx, esi
push	eax
lea	eax, [ebp+Memory]
push	eax
call	sub_403228
push	eax
mov	ecx, ebx
mov	[ebp+var_4], 1
call	sub_40312C
push	[ebp+Memory]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_24]
push	[ebp+arg_0]
mov	ecx, esi
push	eax
call	sub_40B5EF
push	eax
lea	ecx, [ebx+0Ch]
mov	[ebp+var_4], edi
call	sub_40312C
push	[ebp+var_24]	; Memory
call	sub_4284D8
pop	ecx
mov	al, 1

loc_41D5F7:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_41D535 endp




sub_41D608 proc	near
push	esi
push	edi
mov	esi, edx
mov	edi, ecx
push	offset asc_45B13C ; "\n	 "
mov	ecx, esi
call	sub_403195
mov	ecx, esi
push	edi
call	sub_4031F2
pop	edi
pop	esi
retn
sub_41D608 endp



; Attributes: bp-based frame

sub_41D625 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445CC8
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	edi
mov	[ebp+var_10], esi
call	sub_40F2E5
lea	ecx, [esi+218h]
xor	edi, edi
push	3
mov	[ebp+var_4], edi
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
lea	eax, [esi+224h]
mov	[eax+4], edi
mov	[eax+8], edi
mov	[eax+0Ch], edi
mov	dword ptr [eax+10h], 4
mov	dword ptr [eax], offset	off_44B510
lea	ecx, [esi+238h]
push	3
mov	byte ptr [ebp+var_4], 2
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
mov	ecx, [ebp+var_C]
mov	dword ptr [esi], offset	off_44C424
mov	eax, esi
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41D625 endp



; Attributes: bp-based frame

sub_41D6A1 proc	near

var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445CF2
call	__EH_prolog
push	ecx
push	ecx
push	esi
mov	esi, ecx
push	edi
mov	[ebp+var_10], esi
and	[ebp+var_4], 0
push	dword ptr [esi+238h] ; Memory
call	sub_4284D8
lea	edi, [esi+224h]
pop	ecx
mov	[ebp+var_14], edi
mov	dword ptr [edi], offset	off_44B510
mov	ecx, edi
mov	byte ptr [ebp+var_4], 2
call	sub_428327
mov	ecx, edi
mov	byte ptr [ebp+var_4], 1
call	sub_4282FE
push	dword ptr [esi+218h] ; Memory
call	sub_4284D8
or	[ebp+var_4], 0FFFFFFFFh
pop	ecx
mov	ecx, esi
call	sub_40F3F1
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41D6A1 endp




sub_41D70E proc	near

arg_0= dword ptr  4

push	ebx
push	ebp
mov	ebp, [esp+8+arg_0]
push	esi
push	edi
mov	edi, ecx
mov	ebx, [ebp+8]
mov	eax, [edi+8]
add	eax, ebx
push	eax
call	sub_428378
xor	esi, esi
test	ebx, ebx
jle	short loc_41D742

loc_41D72C:
mov	eax, [ebp+0Ch]
mov	ecx, edi
push	dword ptr [eax+esi*8+4]
push	dword ptr [eax+esi*8]
call	sub_43D102
inc	esi
cmp	esi, ebx
jl	short loc_41D72C

loc_41D742:
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
retn	4
sub_41D70E endp



; Attributes: bp-based frame

sub_41D74B proc	near

Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_445D04
call	__EH_prolog
sub	esp, 10h
and	[ebp+var_10], 0
push	esi
mov	esi, ecx
push	edx
lea	ecx, [ebp+Memory]
call	sub_409516
push	[ebp+arg_0]
and	[ebp+var_4], 0
lea	ecx, [ebp+Memory]
call	sub_4031F2
lea	eax, [ebp+Memory]
mov	ecx, esi
push	eax
call	sub_4030F2
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_41D74B endp



; Attributes: bp-based frame

sub_41D79C proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445D18
call	__EH_prolog
sub	esp, 0Ch
push	esi
mov	esi, ecx
mov	ecx, hInstance
mov	edx, esi
call	sub_429ADE
test	al, al
jz	short loc_41D7E5
mov	eax, [esi+4]
test	eax, eax
jz	short loc_41D7E5
mov	ecx, [esi]
lea	eax, [ecx+eax*2-2]

loc_41D7CA:
cmp	word ptr [eax],	5Ch
jz	short loc_41D7D8
cmp	eax, ecx
jz	short loc_41D7DE
dec	eax
dec	eax
jmp	short loc_41D7CA

loc_41D7D8:
sub	eax, ecx
sar	eax, 1
jmp	short loc_41D7E1

loc_41D7DE:
or	eax, 0FFFFFFFFh

loc_41D7E1:
test	eax, eax
jge	short loc_41D7E9

loc_41D7E5:
xor	al, al
jmp	short loc_41D80D

loc_41D7E9:
inc	eax
mov	ecx, esi
push	eax
lea	eax, [ebp+Memory]
push	eax
call	sub_403228
and	[ebp+var_4], 0
push	eax
mov	ecx, esi
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	al, 1

loc_41D80D:
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41D79C endp




sub_41D81A proc	near
xor	eax, eax
mov	edx, offset unk_45BC10

loc_41D821:
cmp	[edx], ecx
jz	short locret_41D834
add	edx, 0Ch
inc	eax
cmp	edx, offset lpSubKey
jb	short loc_41D821
or	eax, 0FFFFFFFFh

locret_41D834:
retn
sub_41D81A endp



; Attributes: bp-based frame

sub_41D835 proc	near

var_24=	byte ptr -24h
var_4= dword ptr -4
arg_0= dword ptr  8

push	ebp
mov	ebp, esp
sub	esp, 24h
and	[ebp+var_4], 0
push	esi
push	edi
mov	edi, edx
mov	esi, ecx
mov	ecx, edi
call	sub_41D81A
test	eax, eax
jge	short loc_41D872
cmp	[ebp+arg_0], 0
jz	short loc_41D85B
push	[ebp+arg_0]
jmp	short loc_41D869

loc_41D85B:
lea	edx, [ebp+var_24]
mov	ecx, edi
call	sub_427B8F
lea	eax, [ebp+var_24]
push	eax

loc_41D869:
mov	ecx, esi
call	sub_403091
jmp	short loc_41D891

loc_41D872:
lea	eax, [eax+eax*2]
mov	ecx, esi
push	dword_45BC18[eax*4]
mov	edx, dword_45BC14[eax*4]
lea	eax, ds:45BC10h[eax*4]
call	sub_40B168

loc_41D891:
mov	eax, esi
pop	edi
pop	esi
leave
retn	4
sub_41D835 endp

call	sub_41D8A3
jmp	loc_41D8AD



sub_41D8A3 proc	near
mov	ecx, offset stru_45D920	; lpCriticalSection
jmp	sub_441910
sub_41D8A3 endp


loc_41D8AD:
push	offset loc_41D8B9
call	_atexit
pop	ecx
retn

loc_41D8B9:
push	offset stru_45D920
call	ds:DeleteCriticalSection
retn


; Attributes: bp-based frame

sub_41D8C5 proc	near

lpSubKey= dword	ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_445D3C
call	__EH_prolog
sub	esp, 18h
push	ebx
push	esi
mov	esi, offset stru_45D920
push	edi
mov	edi, edx
mov	[ebp+var_14], ecx
push	esi		; lpCriticalSection
mov	[ebp+var_18], esi
call	ds:EnterCriticalSection
xor	ebx, ebx
push	3
lea	ecx, [ebp+lpSubKey]
mov	[ebp+var_4], ebx
mov	[ebp+lpSubKey],	ebx
mov	[ebp+var_20], ebx
mov	[ebp+var_1C], ebx
call	sub_4034E3
push	[ebp+arg_0]	; int
lea	eax, [ebp+lpSubKey]
mov	byte ptr [ebp+var_4], 1
sub	esp, 0Ch
mov	ecx, esp
mov	[ebp+arg_0], esp
push	eax
call	sub_4128EF
mov	ecx, [ebp+var_14]
mov	edx, edi
call	sub_41D97F
cmp	al, bl
jz	short loc_41D957
mov	[ebp+var_10], ebx
push	20019h		; samDesired
lea	ecx, [ebp+var_10]
push	[ebp+lpSubKey]	; lpSubKey
mov	byte ptr [ebp+var_4], 2
push	80000000h	; hKey
call	sub_42D35B
mov	ebx, eax
lea	ecx, [ebp+var_10]
neg	ebx
sbb	bl, bl
mov	byte ptr [ebp+var_4], 1
inc	bl
call	sub_42D390

loc_41D957:		; Memory
push	[ebp+lpSubKey]
call	sub_4284D8
pop	ecx
push	esi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	ecx, [ebp+var_C]
mov	al, bl
pop	edi
pop	esi
mov	large fs:0, ecx
pop	ebx
leave
retn	4
sub_41D8C5 endp



; Attributes: thunk

sub_41D97A proc	near
jmp	sub_42D390
sub_41D97A endp



; Attributes: bp-based frame

; int __stdcall	sub_41D97F(DWORD cbData, int, int, int)
sub_41D97F proc	near

var_68=	dword ptr -68h
var_5C=	dword ptr -5Ch
Memory=	dword ptr -50h
var_44=	dword ptr -44h
var_40=	dword ptr -40h
var_38=	dword ptr -38h
var_34=	dword ptr -34h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_D= byte ptr	-0Dh
var_C= dword ptr -0Ch
var_4= dword ptr -4
cbData=	dword ptr  8
arg_C= dword ptr  14h

mov	eax, offset loc_445DB8
call	__EH_prolog
sub	esp, 5Ch
push	ebx
push	esi
push	edi
mov	ebx, edx
mov	edi, ecx
mov	eax, [ebp+arg_C]
xor	esi, esi
mov	[ebp+var_4], esi
or	dword ptr [eax], 0FFFFFFFFh
mov	eax, [ebx]
mov	[ebx+4], esi
mov	[eax], si
mov	eax, offset stru_45D920
push	eax		; lpCriticalSection
mov	[ebp+var_20], eax
call	ds:EnterCriticalSection
mov	[ebp+var_14], esi
mov	edx, edi
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 2
call	sub_41DBFA
mov	eax, [eax]
mov	edi, 20019h
push	edi		; samDesired
mov	esi, 80000000h
push	eax		; lpSubKey
push	esi		; hKey
lea	ecx, [ebp+var_14]
mov	byte ptr [ebp+var_4], 3
call	sub_42D35B
test	eax, eax
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 2
setnz	[ebp+var_D]
call	sub_4284D8
cmp	[ebp+var_D], 0
pop	ecx
jz	short loc_41DA01

loc_41D9FA:
xor	bl, bl
jmp	loc_41DBC7

loc_41DA01:
lea	eax, [ebp+cbData]
lea	ecx, [ebp+var_14]
push	eax		; cbData
push	0		; lpValueName
call	sub_42D67E
test	eax, eax
jnz	short loc_41D9FA
push	off_45BEE0
lea	ecx, [ebp+Memory]
call	sub_41E0DD
lea	edx, [ebp+Memory]
lea	ecx, [ebp+var_44]
mov	byte ptr [ebp+var_4], 4
call	sub_41242C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 6
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_5C]
push	[ebp+var_40]
lea	ecx, [ebp+cbData]
push	eax
call	sub_41E16A
mov	edx, eax
lea	ecx, [ebp+var_2C]
mov	byte ptr [ebp+var_4], 7
call	sub_41242C
mov	edx, [eax]
mov	ecx, [ebp+var_44]
mov	byte ptr [ebp+var_4], 8
call	sub_4282B1
test	eax, eax
push	[ebp+var_2C]	; Memory
setnz	[ebp+var_D]
call	sub_4284D8
push	[ebp+var_5C]	; Memory
call	sub_4284D8
cmp	[ebp+var_D], 0
pop	ecx
pop	ecx
jz	short loc_41DA8D
xor	bl, bl
jmp	loc_41DBBE

loc_41DA8D:
and	[ebp+var_1C], 0
push	5Ch
lea	ecx, [ebp+var_68]
mov	byte ptr [ebp+var_4], 9
call	sub_41E0AD
push	eax
lea	edx, [ebp+cbData]
lea	ecx, [ebp+var_2C]
mov	byte ptr [ebp+var_4], 0Ah
call	sub_41E22F
push	off_45BED0
mov	edx, eax
lea	ecx, [ebp+var_5C]
mov	byte ptr [ebp+var_4], 0Bh
call	sub_41E280
mov	eax, [eax]
push	edi		; samDesired
push	eax		; lpSubKey
push	esi		; hKey
lea	ecx, [ebp+var_14]
mov	byte ptr [ebp+var_4], 0Ch
call	sub_42D35B
test	eax, eax
push	[ebp+var_5C]	; Memory
setnz	[ebp+var_D]
call	sub_4284D8
push	[ebp+var_2C]	; Memory
call	sub_4284D8
push	[ebp+var_68]	; Memory
mov	byte ptr [ebp+var_4], 9
call	sub_4284D8
add	esp, 0Ch
cmp	[ebp+var_D], 0
jz	short loc_41DB06
xor	bl, bl
jmp	loc_41DBB2

loc_41DB06:
xor	edi, edi
push	3
lea	ecx, [ebp+var_38]
mov	[ebp+var_38], edi
mov	[ebp+var_34], edi
mov	[ebp+var_30], edi
call	sub_403396
lea	eax, [ebp+var_38]
lea	ecx, [ebp+var_14]
push	eax		; cbData
push	edi		; lpValueName
mov	byte ptr [ebp+var_4], 0Dh
call	sub_42D70F
test	eax, eax
jnz	short loc_41DBA7
mov	eax, [ebp+var_34]
cmp	eax, edi
jz	short loc_41DB54
mov	ecx, [ebp+var_38]
lea	eax, [ecx+eax*2-2]

loc_41DB3E:
cmp	word ptr [eax],	2Ch
jz	short loc_41DB4C
cmp	eax, ecx
jz	short loc_41DB54
dec	eax
dec	eax
jmp	short loc_41DB3E

loc_41DB4C:
sub	eax, ecx
sar	eax, 1
mov	esi, eax
jmp	short loc_41DB57

loc_41DB54:
or	esi, 0FFFFFFFFh

loc_41DB57:
lea	eax, [ebp+var_38]
mov	ecx, ebx
push	eax
call	sub_40312C
cmp	esi, edi
jl	short loc_41DBA7
mov	eax, [ebp+var_38]
lea	edx, [ebp+var_18]
lea	ecx, [eax+esi*2+2]
call	sub_428693
mov	ecx, [ebp+var_18]
mov	[ebp+var_24], edx
cmp	[ecx], di
jnz	short loc_41DBA7
mov	ecx, [ebp+arg_C]
push	esi
mov	[ecx], eax
lea	eax, [ebp+var_68]
push	eax
lea	ecx, [ebp+var_38]
call	sub_403228
push	eax
mov	ecx, ebx
mov	byte ptr [ebp+var_4], 0Eh
call	sub_40312C
push	[ebp+var_68]	; Memory
call	sub_4284D8
pop	ecx

loc_41DBA7:		; Memory
push	[ebp+var_38]
call	sub_4284D8
pop	ecx
mov	bl, 1

loc_41DBB2:
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 6
call	sub_42D390

loc_41DBBE:		; Memory
push	[ebp+var_44]
call	sub_4284D8
pop	ecx

loc_41DBC7:
lea	ecx, [ebp+var_14]
mov	byte ptr [ebp+var_4], 1
call	sub_42D390
push	offset stru_45D920 ; lpCriticalSection
call	ds:LeaveCriticalSection
push	[ebp+cbData]	; Memory
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
mov	al, bl
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	10h
sub_41D97F endp



; Attributes: bp-based frame

sub_41DBFA proc	near

Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445DCC
call	__EH_prolog
sub	esp, 10h
and	[ebp+var_10], 0
push	esi
mov	esi, ecx
push	edi
mov	edi, edx
push	offset a__2	; "."
lea	ecx, [ebp+Memory]
call	sub_41E0DD
and	[ebp+var_4], 0
push	edi
mov	edx, eax
mov	ecx, esi
call	sub_41E22F
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41DBFA endp



; Attributes: bp-based frame

sub_41DC45 proc	near

var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
Memory=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445DE8
call	__EH_prolog
sub	esp, 20h
push	ebx
push	esi
mov	esi, ecx
push	edi
xor	ebx, ebx
push	3
lea	ecx, [ebp+var_2C]
mov	[ebp+var_2C], ebx
mov	[ebp+var_28], ebx
mov	[ebp+var_24], ebx
call	sub_4034E3
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+var_4], ebx
mov	[ebp+Memory], ebx
mov	[ebp+var_1C], ebx
mov	[ebp+var_18], ebx
call	sub_403396
lea	eax, [ebp+var_10]
mov	byte ptr [ebp+var_4], 1
push	eax		; int
lea	eax, [ebp+var_2C]
sub	esp, 0Ch
lea	edi, [ebp+Memory]
mov	ecx, esp
mov	[ebp+var_14], esp
push	eax
call	sub_4128EF
mov	ecx, esi
mov	edx, edi
call	sub_41D97F
cmp	al, bl
jz	short loc_41DCB2
mov	ecx, esi
call	sub_41DCDA

loc_41DCB2:
mov	ecx, esi
call	sub_41DD4E
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_2C]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
pop	ebx
leave
retn
sub_41DC45 endp



; Attributes: bp-based frame

sub_41DCDA proc	near

Memory=	dword ptr -20h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445E0C
call	__EH_prolog
sub	esp, 14h
push	esi
mov	esi, offset stru_45D920
push	edi
mov	edi, ecx
push	esi		; lpCriticalSection
mov	[ebp+var_14], esi
call	ds:EnterCriticalSection
mov	edx, edi
lea	ecx, [ebp+Memory]
mov	[ebp+var_4], 1
mov	[ebp+var_10], 80000000h
call	sub_41DBFA
push	dword ptr [eax]	; lpSubKey
lea	ecx, [ebp+var_10]
mov	byte ptr [ebp+var_4], 2
call	sub_42D3B6
push	[ebp+Memory]	; Memory
call	sub_4284D8
and	[ebp+var_10], 0
and	byte ptr [ebp+var_4], 0
pop	ecx
lea	ecx, [ebp+var_10]
call	sub_42D390
push	esi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41DCDA endp



; Attributes: bp-based frame

sub_41DD4E proc	near

Memory=	dword ptr -20h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445E30
call	__EH_prolog
sub	esp, 14h
push	esi
mov	esi, offset stru_45D920
push	edi
mov	edi, ecx
push	esi		; lpCriticalSection
mov	[ebp+var_14], esi
call	ds:EnterCriticalSection
mov	edx, edi
lea	ecx, [ebp+Memory]
mov	[ebp+var_4], 1
mov	[ebp+var_10], 80000000h
call	sub_41DDC2
push	dword ptr [eax]	; lpSubKey
lea	ecx, [ebp+var_10]
mov	byte ptr [ebp+var_4], 2
call	sub_42D3B6
push	[ebp+Memory]	; Memory
call	sub_4284D8
and	[ebp+var_10], 0
and	byte ptr [ebp+var_4], 0
pop	ecx
lea	ecx, [ebp+var_10]
call	sub_42D390
push	esi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41DD4E endp



; Attributes: bp-based frame

sub_41DDC2 proc	near

Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445E44
call	__EH_prolog
sub	esp, 10h
and	[ebp+var_10], 0
push	esi
push	edi
mov	esi, ecx
push	off_45BEE0
mov	edi, edx
lea	ecx, [ebp+Memory]
call	sub_41E0DD
and	[ebp+var_4], 0
push	edi
mov	edx, eax
mov	ecx, esi
call	sub_41E22F
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41DDC2 endp



; Attributes: bp-based frame

; int __stdcall	sub_41DE0E(int,	int, int, int, DWORD cbData)
sub_41DE0E proc	near

var_80=	dword ptr -80h
var_70=	byte ptr -70h
Memory=	dword ptr -50h
var_44=	dword ptr -44h
lpData=	dword ptr -38h
var_34=	dword ptr -34h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
hKey= dword ptr	-14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h
cbData=	dword ptr  18h

mov	eax, offset loc_445EB8
call	__EH_prolog
sub	esp, 64h
push	ebx
push	esi
push	edi
mov	[ebp+var_28], edx
mov	edi, ecx
call	sub_41DCDA
mov	ecx, edi
call	sub_41DD4E
mov	eax, offset stru_45D920
push	eax		; lpCriticalSection
mov	[ebp+var_2C], eax
call	ds:EnterCriticalSection
xor	esi, esi
push	3
lea	ecx, [ebp+lpData]
mov	[ebp+var_4], esi
mov	[ebp+lpData], esi
mov	[ebp+var_34], esi
mov	[ebp+var_30], esi
call	sub_4034E3
push	edi
lea	ecx, [ebp+var_44]
mov	byte ptr [ebp+var_4], 1
call	sub_4128EF
cmp	[ebp+arg_8], esi
mov	byte ptr [ebp+var_4], 2
jge	short loc_41DE79
push	offset asc_45BF2C ; "*"
lea	ecx, [ebp+var_44]
call	sub_41E124

loc_41DE79:
lea	edx, [ebp+var_44]
lea	ecx, [ebp+Memory]
call	sub_41DDC2
push	eax
lea	ecx, [ebp+lpData]
mov	byte ptr [ebp+var_4], 3
call	sub_403244
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_44]	; Memory
call	sub_4284D8
pop	ecx
mov	[ebp+hKey], esi
pop	ecx
mov	edx, edi
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 4
call	sub_41DBFA
mov	eax, [eax]
push	esi		; int
mov	edi, 0F003Fh
push	esi		; dwDisposition
push	edi		; samDesired
push	esi		; dwOptions
push	esi		; lpClass
mov	ebx, 80000000h
push	eax		; lpSubKey
push	ebx		; hKey
lea	ecx, [ebp+hKey]
mov	byte ptr [ebp+var_4], 5
call	sub_42D30D
mov	byte ptr [ebp+var_4], 4
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
push	[ebp+lpData]	; lpData
lea	ecx, [ebp+hKey]
push	esi		; lpValueName
call	sub_42D4A3
cmp	[ebp+arg_C], esi
jz	short loc_41DF2E
mov	[ebp+var_20], esi
push	esi		; int
push	esi		; dwDisposition
push	edi		; samDesired
push	esi		; dwOptions
push	esi		; lpClass
lea	ecx, [ebp+var_20]
push	lpSubKey	; lpSubKey
mov	byte ptr [ebp+var_4], 6
push	[ebp+hKey]	; hKey
call	sub_42D30D
lea	ecx, [ebp+var_20]
push	[ebp+cbData]	; cbData
push	[ebp+arg_C]	; lpData
push	off_45BECC	; lpValueName
call	sub_42D5CE
lea	ecx, [ebp+var_20]
mov	byte ptr [ebp+var_4], 4
call	sub_42D390

loc_41DF2E:
lea	ecx, [ebp+hKey]
mov	byte ptr [ebp+var_4], 1
call	sub_42D390
mov	[ebp+var_10], esi
push	esi		; int
push	esi		; dwDisposition
push	edi		; samDesired
push	esi		; dwOptions
push	esi		; lpClass
lea	ecx, [ebp+var_10]
push	[ebp+lpData]	; lpSubKey
mov	byte ptr [ebp+var_4], 7
push	ebx		; hKey
call	sub_42D30D
mov	eax, [ebp+var_28]
lea	ecx, [ebp+var_10]
push	dword ptr [eax]	; lpData
push	esi		; lpValueName
call	sub_42D4CA
mov	[ebp+arg_C], esi
push	esi		; int
push	esi		; dwDisposition
push	edi		; samDesired
push	esi		; dwOptions
push	esi		; lpClass
lea	ecx, [ebp+arg_C]
push	off_45BED0	; lpSubKey
mov	byte ptr [ebp+var_4], 8
push	[ebp+var_10]	; hKey
call	sub_42D30D
lea	ecx, [ebp+var_44]
push	[ebp+arg_4]
call	sub_4030F2
cmp	[ebp+arg_8], esi
mov	byte ptr [ebp+var_4], 9
jge	short loc_41DF94
mov	[ebp+arg_8], esi

loc_41DF94:		; ","
push	offset asc_45BF28
lea	ecx, [ebp+var_44]
call	sub_403195
mov	ecx, [ebp+arg_8]
lea	edx, [ebp+var_70]
call	sub_427B8F
lea	eax, [ebp+var_70]
lea	ecx, [ebp+var_44]
push	eax
call	sub_403195
lea	ecx, [ebp+arg_C]
push	[ebp+var_44]	; lpData
push	esi		; lpValueName
call	sub_42D4CA
push	[ebp+var_44]	; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 7
lea	ecx, [ebp+arg_C]
call	sub_42D390
mov	[ebp+var_1C], esi
push	esi		; int
push	esi		; dwDisposition
push	edi		; samDesired
push	esi		; dwOptions
push	esi		; lpClass
lea	ecx, [ebp+var_1C]
push	off_45BED4	; lpSubKey
mov	byte ptr [ebp+var_4], 0Ah
push	[ebp+var_10]	; hKey
call	sub_42D30D
mov	ebx, offset pszPath
lea	ecx, [ebp+var_1C]
push	ebx		; lpData
push	esi		; lpValueName
call	sub_42D4A3
mov	[ebp+var_18], esi
push	esi		; int
push	esi		; dwDisposition
push	edi		; samDesired
push	esi		; dwOptions
push	esi		; lpClass
lea	ecx, [ebp+var_18]
push	off_45BED8	; lpSubKey
mov	byte ptr [ebp+var_4], 0Bh
push	[ebp+var_1C]	; hKey
call	sub_42D30D
lea	ecx, [ebp+var_18]
push	ebx		; lpData
push	esi		; lpValueName
call	sub_42D4A3
mov	[ebp+var_24], esi
push	esi		; int
push	esi		; dwDisposition
push	edi		; samDesired
push	esi		; dwOptions
push	esi		; lpClass
lea	ecx, [ebp+var_24]
push	off_45BEDC	; lpSubKey
mov	byte ptr [ebp+var_4], 0Ch
push	[ebp+var_18]	; hKey
call	sub_42D30D
mov	eax, [ebp+arg_0]
lea	ecx, [ebp+var_24]
push	dword ptr [eax]	; lpData
push	esi		; lpValueName
call	sub_42D4CA
lea	ecx, [ebp+var_24]
mov	byte ptr [ebp+var_4], 0Bh
call	sub_42D390
lea	ecx, [ebp+var_18]
mov	byte ptr [ebp+var_4], 0Ah
call	sub_42D390
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 7
call	sub_42D390
mov	byte ptr [ebp+var_4], 1
lea	ecx, [ebp+var_10]
call	sub_42D390
push	[ebp+lpData]	; Memory
call	sub_4284D8
mov	[esp+80h+var_80], offset stru_45D920
call	ds:LeaveCriticalSection
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	14h
sub_41DE0E endp




sub_41E0AD proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
push	1
and	dword ptr [esi], 0
and	dword ptr [esi+4], 0
and	dword ptr [esi+8], 0
call	sub_4034E3
mov	eax, [esi]
mov	cl, [esp+4+arg_0]
mov	[eax], cl
mov	eax, [esi]
and	byte ptr [eax+1], 0
mov	dword ptr [esi+4], 1
mov	eax, esi
pop	esi
retn	4
sub_41E0AD endp




sub_41E0DD proc	near

arg_0= dword ptr  4

push	ebx
push	esi
push	edi
mov	edi, [esp+0Ch+arg_0]
mov	esi, ecx
xor	ebx, ebx
mov	[esi], ebx
mov	[esi+4], ebx
mov	[esi+8], ebx
cmp	[edi], bl
jz	short loc_41E0FB

loc_41E0F4:
inc	ebx
cmp	byte ptr [ebx+edi], 0
jnz	short loc_41E0F4

loc_41E0FB:
push	ebx
mov	ecx, esi
call	sub_4034E3
mov	eax, [esi]
mov	cl, [edi]
lea	edx, [edi+1]
mov	[eax], cl
inc	eax

loc_41E10D:
test	cl, cl
jz	short loc_41E119
mov	cl, [edx]
mov	[eax], cl
inc	eax
inc	edx
jmp	short loc_41E10D

loc_41E119:
mov	[esi+4], ebx
mov	eax, esi
pop	edi
pop	esi
pop	ebx
retn	4
sub_41E0DD endp




sub_41E124 proc	near

arg_0= dword ptr  4

push	ebx
push	esi
mov	esi, [esp+8+arg_0]
push	edi
mov	edi, ecx
xor	ebx, ebx
mov	eax, [edi]
mov	[edi+4], ebx
and	[eax], bl
cmp	[esi], bl
jz	short loc_41E141

loc_41E13A:
inc	ebx
cmp	byte ptr [ebx+esi], 0
jnz	short loc_41E13A

loc_41E141:
push	ebx
mov	ecx, edi
call	sub_4034E3
mov	eax, [edi]
mov	cl, [esi]
lea	edx, [esi+1]
mov	[eax], cl
inc	eax

loc_41E153:
test	cl, cl
jz	short loc_41E15F
mov	cl, [edx]
mov	[eax], cl
inc	eax
inc	edx
jmp	short loc_41E153

loc_41E15F:
mov	[edi+4], ebx
mov	eax, edi
pop	edi
pop	esi
pop	ebx
retn	4
sub_41E124 endp



; Attributes: bp-based frame

sub_41E16A proc	near

var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
push	ecx
push	[ebp+arg_4]
and	[ebp+var_4], 0
push	0
push	[ebp+arg_0]
call	sub_41E186
mov	eax, [ebp+arg_0]
leave
retn	8
sub_41E16A endp



; Attributes: bp-based frame

sub_41E186 proc	near

Memory=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_445ECC
call	__EH_prolog
sub	esp, 10h
push	ebx
push	esi
mov	esi, [ebp+arg_8]
push	edi
mov	edi, [ebp+arg_4]
mov	ebx, ecx
xor	ecx, ecx
mov	eax, [ebx+4]
lea	edx, [edi+esi]
cmp	edx, eax
mov	[ebp+var_10], ecx
jle	short loc_41E1B1
mov	esi, eax
sub	esi, edi

loc_41E1B1:
cmp	edi, ecx
jnz	short loc_41E1C4
cmp	esi, eax
jnz	short loc_41E1C4
mov	ecx, [ebp+arg_0]
push	ebx
call	sub_4128EF
jmp	short loc_41E21B

loc_41E1C4:
mov	[ebp+Memory], ecx
mov	[ebp+var_18], ecx
mov	[ebp+var_14], ecx
push	3
lea	ecx, [ebp+Memory]
call	sub_4034E3
and	[ebp+var_4], 0
push	esi
lea	ecx, [ebp+Memory]
call	sub_4034E3
xor	eax, eax
test	esi, esi
jle	short loc_41E1FC

loc_41E1EA:
mov	ecx, [ebx]
mov	edx, [ebp+Memory]
add	ecx, eax
mov	cl, [ecx+edi]
mov	[eax+edx], cl
inc	eax
cmp	eax, esi
jl	short loc_41E1EA

loc_41E1FC:
mov	eax, [ebp+Memory]
mov	ecx, [ebp+arg_0]
and	byte ptr [eax+esi], 0
lea	eax, [ebp+Memory]
push	eax
mov	[ebp+var_18], esi
call	sub_4128EF
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx

loc_41E21B:
mov	ecx, [ebp+var_C]
mov	eax, [ebp+arg_0]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	0Ch
sub_41E186 endp



; Attributes: bp-based frame

sub_41E22F proc	near

Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_445EE0
call	__EH_prolog
sub	esp, 10h
and	[ebp+var_10], 0
push	esi
mov	esi, ecx
push	edx
lea	ecx, [ebp+Memory]
call	sub_4128EF
push	[ebp+arg_0]
and	[ebp+var_4], 0
lea	ecx, [ebp+Memory]
call	sub_41E313
lea	eax, [ebp+Memory]
mov	ecx, esi
push	eax
call	sub_4128EF
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_41E22F endp



; Attributes: bp-based frame

sub_41E280 proc	near

Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_445EF4
call	__EH_prolog
sub	esp, 10h
and	[ebp+var_10], 0
push	esi
mov	esi, ecx
push	edx
lea	ecx, [ebp+Memory]
call	sub_4128EF
push	[ebp+arg_0]
and	[ebp+var_4], 0
lea	ecx, [ebp+Memory]
call	sub_41E2D1
lea	eax, [ebp+Memory]
mov	ecx, esi
push	eax
call	sub_4128EF
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_41E280 endp




sub_41E2D1 proc	near

arg_0= dword ptr  4

push	ebx
push	esi
mov	esi, [esp+8+arg_0]
xor	ebx, ebx
push	edi
mov	edi, ecx
cmp	[esi], bl
jz	short loc_41E2E7

loc_41E2E0:
inc	ebx
cmp	byte ptr [ebx+esi], 0
jnz	short loc_41E2E0

loc_41E2E7:
push	ebx
mov	ecx, edi
call	sub_412941
mov	eax, [edi+4]
mov	cl, [esi]
add	eax, [edi]
lea	edx, [esi+1]
mov	[eax], cl
inc	eax

loc_41E2FC:
test	cl, cl
jz	short loc_41E308
mov	cl, [edx]
mov	[eax], cl
inc	eax
inc	edx
jmp	short loc_41E2FC

loc_41E308:
add	[edi+4], ebx
mov	eax, edi
pop	edi
pop	esi
pop	ebx
retn	4
sub_41E2D1 endp




sub_41E313 proc	near

arg_0= dword ptr  4

push	esi
push	edi
mov	edi, [esp+8+arg_0]
mov	esi, ecx
push	dword ptr [edi+4]
call	sub_412941
mov	eax, [esi+4]
mov	ecx, [edi]
add	eax, [esi]

loc_41E32A:
mov	dl, [ecx]
mov	[eax], dl
inc	eax
inc	ecx
test	dl, dl
jnz	short loc_41E32A
mov	eax, [edi+4]
pop	edi
add	[esi+4], eax
mov	eax, esi
pop	esi
retn	4
sub_41E313 endp



; Attributes: bp-based frame

sub_41E341 proc	near

var_B8=	byte ptr -0B8h
var_98=	dword ptr -98h
var_90=	dword ptr -90h
var_80=	dword ptr -80h
var_70=	dword ptr -70h
var_40=	dword ptr -40h
var_3C=	byte ptr -3Ch
var_30=	dword ptr -30h
Memory=	dword ptr -24h
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445F63
call	__EH_prolog
sub	esp, 0ACh
push	ebx
push	esi
mov	esi, ecx
call	sub_428327
xor	ebx, ebx
lea	ecx, [ebp+var_18]
push	3
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
mov	[ebp+var_10], ebx
call	sub_403396
lea	ecx, [ebp+var_18]
mov	[ebp+var_4], ebx
call	sub_41D79C
lea	ecx, [ebp+var_80]
call	sub_403079
lea	ecx, [ebp+var_70]
mov	byte ptr [ebp+var_4], 1
call	sub_403079
push	offset a7Zip_dll ; "7-zip.dll"
lea	edx, [ebp+var_18]
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 2
call	sub_409948
push	eax
lea	ecx, [ebp+var_80]
mov	byte ptr [ebp+var_4], 3
call	sub_40312C
mov	byte ptr [ebp+var_4], 2
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
xor	dl, dl
lea	ecx, [ebp+var_80]
call	sub_41E501
test	al, al
jz	short loc_41E3D5
lea	eax, [ebp+var_80]
mov	ecx, esi
push	eax
call	sub_41E75C

loc_41E3D5:		; Memory
push	[ebp+var_70]
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
push	[ebp+var_80]	; Memory
call	sub_4284D8
pop	ecx
lea	edx, [ebp+var_18]
pop	ecx
push	offset aPlugins	; "Plugins\\"
lea	ecx, [ebp+var_30]
call	sub_409948
push	offset asc_45B41C ; "*"
lea	edx, [ebp+var_30]
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 4
call	sub_409948
or	[ebp+var_40], 0FFFFFFFFh
push	eax
lea	ecx, [ebp+var_3C]
mov	byte ptr [ebp+var_4], 6
call	sub_4030F2
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 8
call	sub_4284D8
pop	ecx
lea	ecx, [ebp+var_90]
call	sub_403079
mov	byte ptr [ebp+var_4], 9

loc_41E43B:
lea	eax, [ebp+var_B8]
lea	ecx, [ebp+var_40]
push	eax
call	sub_42B72E
test	al, al
jz	short loc_41E4C9
mov	eax, [ebp+var_98]
shr	eax, 4
test	al, 1
jnz	short loc_41E43B
lea	ecx, [ebp+var_80]
call	sub_403079
lea	ecx, [ebp+var_70]
mov	byte ptr [ebp+var_4], 0Ah
call	sub_403079
lea	eax, [ebp+var_90]
lea	edx, [ebp+var_30]
push	eax
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 0Bh
call	sub_40356A
push	eax
lea	ecx, [ebp+var_80]
mov	byte ptr [ebp+var_4], 0Ch
call	sub_40312C
mov	byte ptr [ebp+var_4], 0Bh
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	dl, 1
lea	ecx, [ebp+var_80]
call	sub_41E501
test	al, al
jz	short loc_41E4B8
lea	eax, [ebp+var_80]
mov	ecx, esi
push	eax
call	sub_41E75C

loc_41E4B8:
lea	ecx, [ebp+var_80]
mov	byte ptr [ebp+var_4], 9
call	sub_406E56
jmp	loc_41E43B

loc_41E4C9:		; Memory
push	[ebp+var_90]
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 4
lea	ecx, [ebp+var_40]
call	sub_4078D8
push	[ebp+var_30]	; Memory
call	sub_4284D8
push	[ebp+var_18]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx
pop	esi
mov	ecx, [ebp+var_C]
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_41E341 endp



; Attributes: bp-based frame

sub_41E501 proc	near

pvarg= VARIANTARG ptr -28h
var_18=	dword ptr -18h
hModule= dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445F88
call	__EH_prolog
sub	esp, 1Ch
push	ebx
push	edi
test	dl, dl
mov	ebx, ecx
jz	short loc_41E550
xor	edi, edi
mov	[ebp+var_10], edi
mov	eax, [ebx]
push	2		; dwFlags
push	eax		; lpLibFileName
lea	ecx, [ebp+var_10]
mov	[ebp+var_4], edi
call	sub_4299F1
test	al, al
jnz	short loc_41E542
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_10]
call	sub_429929
xor	al, al
jmp	loc_41E679

loc_41E542:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_10]
call	sub_429929
jmp	short loc_41E552

loc_41E550:
xor	edi, edi

loc_41E552:
push	esi
mov	[ebp+hModule], edi
push	dword ptr [ebx]	; lpLibFileName
lea	ecx, [ebp+hModule]
mov	[ebp+var_4], 1
call	sub_429A47
test	al, al
jnz	short loc_41E572

loc_41E56B:
xor	bl, bl
jmp	loc_41E66A

loc_41E572:		; "GetPluginProperty"
push	offset aGetpluginprope
push	[ebp+hModule]	; hModule
call	ds:GetProcAddress
mov	esi, eax
cmp	esi, edi
mov	[ebp+var_18], esi
jz	short loc_41E56B
mov	word ptr [ebp+pvarg.anonymous_0], di
mov	word ptr [ebp+pvarg.anonymous_0+2], di
lea	eax, [ebp+pvarg]
mov	byte ptr [ebp+var_4], 2
push	eax
push	edi
call	esi
test	eax, eax
jnz	loc_41E65C
cmp	word ptr [ebp+pvarg.anonymous_0], 8
jnz	loc_41E65C
push	dword ptr [ebp+pvarg.anonymous_0+8]
lea	ecx, [ebx+10h]
call	sub_404722
lea	ecx, [ebp+pvarg] ; pvarg
call	sub_42CDE1
lea	eax, [ebp+pvarg]
push	eax
push	2
call	esi
test	eax, eax
jnz	loc_41E65C
cmp	word ptr [ebp+pvarg.anonymous_0], di
jnz	short loc_41E5DD
and	[ebx+3Ch], al
jmp	short loc_41E5F4

loc_41E5DD:
cmp	word ptr [ebp+pvarg.anonymous_0], 8
jnz	short loc_41E65C
mov	esi, dword ptr [ebp+pvarg.anonymous_0+8]
lea	edi, [ebx+1Ch]
mov	byte ptr [ebx+3Ch], 1
movsd
movsd
movsd
movsd
xor	edi, edi

loc_41E5F4:		; pvarg
lea	ecx, [ebp+pvarg]
call	sub_42CDE1
lea	eax, [ebp+pvarg]
push	eax
push	3
call	[ebp+var_18]
test	eax, eax
jnz	short loc_41E65C
cmp	word ptr [ebp+pvarg.anonymous_0], di
jnz	short loc_41E614
and	[ebx+3Dh], al
jmp	short loc_41E62B

loc_41E614:
cmp	word ptr [ebp+pvarg.anonymous_0], 8
jnz	short loc_41E65C
mov	esi, dword ptr [ebp+pvarg.anonymous_0+8]
lea	edi, [ebx+2Ch]
mov	byte ptr [ebx+3Dh], 1
movsd
movsd
movsd
movsd
xor	edi, edi

loc_41E62B:		; pvarg
lea	ecx, [ebp+pvarg]
call	sub_42CDE1
lea	eax, [ebp+pvarg]
push	eax
push	1
call	[ebp+var_18]
test	eax, eax
jnz	short loc_41E65C
cmp	word ptr [ebp+pvarg.anonymous_0], di
jnz	short loc_41E64B
mov	[ebx+0Ch], edi
jmp	short loc_41E658

loc_41E64B:
cmp	word ptr [ebp+pvarg.anonymous_0], 13h
jnz	short loc_41E65C
mov	eax, dword ptr [ebp+pvarg.anonymous_0+8]
mov	[ebx+0Ch], eax

loc_41E658:
mov	bl, 1
jmp	short loc_41E65E

loc_41E65C:
xor	bl, bl

loc_41E65E:		; pvarg
lea	ecx, [ebp+pvarg]
mov	byte ptr [ebp+var_4], 1
call	sub_42CDE1

loc_41E66A:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+hModule]
call	sub_429929
mov	al, bl
pop	esi

loc_41E679:
mov	ecx, [ebp+var_C]
pop	edi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_41E501 endp



; Attributes: bp-based frame

sub_41E687 proc	near

var_4C=	dword ptr -4Ch
var_40=	dword ptr -40h
Memory=	dword ptr -3Ch
var_10=	byte ptr -10h
var_F= byte ptr	-0Fh
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445F9C
call	__EH_prolog
sub	esp, 40h
push	esi
push	edi
mov	esi, ecx
call	sub_41E341
mov	eax, [esi+8]
xor	edi, edi
test	eax, eax
jle	short loc_41E6C4

loc_41E6A6:
mov	eax, [esi+0Ch]
mov	eax, [eax+edi*4]
cmp	dword ptr [eax+0Ch], 0
jz	short loc_41E6BE
mov	eax, [esi]
push	1
push	edi
mov	ecx, esi
call	dword ptr [eax+4]
jmp	short loc_41E6BF

loc_41E6BE:
inc	edi

loc_41E6BF:
cmp	edi, [esi+8]
jl	short loc_41E6A6

loc_41E6C4:
lea	ecx, [ebp+var_4C]
call	sub_41E714
and	[ebp+var_4], 0
and	[ebp+var_40], 0
push	offset a7Zip	; "7-Zip"
lea	ecx, [ebp+Memory]
call	sub_404722
and	[ebp+var_F], 0
lea	eax, [ebp+var_4C]
push	eax
mov	ecx, esi
mov	[ebp+var_10], 1
call	sub_41E75C
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_4C]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41E687 endp



; Attributes: bp-based frame

sub_41E714 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_445FB0
call	__EH_prolog
push	ecx
push	esi
push	edi
mov	esi, ecx
xor	edi, edi
push	3
mov	[ebp+var_10], esi
mov	[esi], edi
mov	[esi+4], edi
mov	[esi+8], edi
call	sub_403396
lea	ecx, [esi+10h]
push	3
mov	[ebp+var_4], edi
mov	[ecx], edi
mov	[ecx+4], edi
mov	[ecx+8], edi
call	sub_403396
mov	ecx, [ebp+var_C]
mov	eax, esi
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41E714 endp



; Attributes: bp-based frame

sub_41E75C proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset unknown_libname_25 ; Microsoft VisualC 2-11/net runtime
call	__EH_prolog
push	ecx
push	esi
mov	esi, ecx
push	40h		; Size
call	sub_4284B1
pop	ecx
mov	ecx, eax
mov	[ebp+var_10], ecx
xor	eax, eax
cmp	ecx, eax
mov	[ebp+var_4], eax
jz	short loc_41E788
push	[ebp+arg_0]
call	sub_41E7A3

loc_41E788:
or	[ebp+var_4], 0FFFFFFFFh
push	eax
mov	ecx, esi
call	sub_429907
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_41E75C endp



; Attributes: bp-based frame

sub_41E7A3 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_445FD8
call	__EH_prolog
push	ecx
push	ebx
push	esi
mov	esi, [ebp+arg_0]
push	edi
mov	ebx, ecx
push	esi
mov	[ebp+var_10], ebx
call	sub_4030F2
mov	eax, [esi+0Ch]
and	[ebp+var_4], 0
mov	[ebx+0Ch], eax
lea	eax, [esi+10h]
push	eax
lea	ecx, [ebx+10h]
call	sub_4030F2
add	esi, 1Ch
lea	edi, [ebx+1Ch]
movsd
movsd
mov	eax, [ebp+arg_0]
movsd
movsd
lea	esi, [eax+2Ch]
lea	edi, [ebx+2Ch]
movsd
movsd
movsd
movsd
mov	cl, [eax+3Ch]
pop	edi
mov	[ebx+3Ch], cl
mov	al, [eax+3Dh]
mov	ecx, [ebp+var_C]
mov	[ebx+3Dh], al
mov	eax, ebx
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_41E7A3 endp




sub_41E80B proc	near
push	dword ptr [ecx]	; lpData
mov	edx, off_45BF60
mov	ecx, off_45BF58
call	sub_41E81F
retn
sub_41E80B endp



; Attributes: bp-based frame

; int __stdcall	sub_41E81F(wchar_t *lpData)
sub_41E81F proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
lpData=	dword ptr  8

mov	eax, offset loc_445FEC
call	__EH_prolog
push	ecx
xor	eax, eax
push	esi
mov	esi, edx
mov	[ebp+var_10], eax
push	eax		; int
push	eax		; dwDisposition
push	0F003Fh		; samDesired
push	eax		; dwOptions
push	eax		; lpClass
push	ecx		; lpSubKey
push	80000001h	; hKey
lea	ecx, [ebp+var_10]
mov	[ebp+var_4], eax
call	sub_42D30D
lea	ecx, [ebp+var_10]
push	[ebp+lpData]	; lpData
push	esi		; lpValueName
call	sub_42D4CA
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_10]
call	sub_42D390
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_41E81F endp




; int __fastcall sub_41E873(DWORD cbData)
sub_41E873 proc	near
mov	edx, off_45BF60
push	ecx		; cbData
mov	ecx, off_45BF58
call	sub_41E886
retn
sub_41E873 endp



; Attributes: bp-based frame

; int __stdcall	sub_41E886(DWORD cbData)
sub_41E886 proc	near

var_C= dword ptr -0Ch
var_4= dword ptr -4
cbData=	dword ptr  8

mov	eax, offset loc_446000
call	__EH_prolog
xor	eax, eax
push	esi
mov	esi, [ebp+cbData]
push	edi
mov	edi, edx
mov	edx, [esi]
mov	[esi+4], eax
mov	[edx], ax
mov	[ebp+cbData], eax
push	20019h		; samDesired
push	ecx		; lpSubKey
push	80000001h	; hKey
lea	ecx, [ebp+cbData]
mov	[ebp+var_4], eax
call	sub_42D35B
test	eax, eax
jnz	short loc_41E8C8
push	esi		; cbData
push	edi		; lpValueName
lea	ecx, [ebp+cbData]
call	sub_42D70F

loc_41E8C8:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+cbData]
call	sub_42D390
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_41E886 endp




sub_41E8E4 proc	near
push	dword ptr [ecx]	; lpData
mov	edx, off_45BF64
mov	ecx, off_45BF5C
call	sub_41E81F
retn
sub_41E8E4 endp




; int __fastcall sub_41E8F8(DWORD cbData)
sub_41E8F8 proc	near
mov	edx, off_45BF64
push	ecx		; cbData
mov	ecx, off_45BF5C
call	sub_41E886
retn
sub_41E8F8 endp




sub_41E90B proc	near
push	dword ptr [ecx]	; lpData
mov	edx, off_45BF68
mov	ecx, off_45BF5C
call	sub_41E81F
retn
sub_41E90B endp




; int __fastcall sub_41E91F(DWORD cbData)
sub_41E91F proc	near
mov	edx, off_45BF68
push	ecx		; cbData
mov	ecx, off_45BF5C
call	sub_41E886
retn
sub_41E91F endp




sub_41E932 proc	near
mov	dl, cl
mov	ecx, off_45BF6C
jmp	$+5
sub_41E932 endp



; Attributes: bp-based frame

sub_41E93F proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_446014
call	__EH_prolog
push	ecx
push	esi
xor	eax, eax
push	edi
mov	esi, edx
mov	edi, ecx
mov	[ebp+var_10], eax
push	eax		; int
push	eax		; dwDisposition
push	0F003Fh		; samDesired
push	eax		; dwOptions
push	eax		; lpClass
lea	ecx, [ebp+var_10]
push	off_45BF5C	; lpSubKey
mov	[ebp+var_4], eax
push	80000001h	; hKey
call	sub_42D30D
lea	ecx, [ebp+var_10]
push	esi		; char
push	edi		; lpValueName
call	sub_42D48D
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_10]
call	sub_42D390
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41E93F endp




sub_41E998 proc	near
mov	ecx, off_45BF6C
xor	dl, dl
jmp	$+5
sub_41E998 endp



; Attributes: bp-based frame

sub_41E9A5 proc	near

var_14=	dword ptr -14h
Data= byte ptr -0Dh
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_446028
call	__EH_prolog
push	ecx
push	ecx
and	[ebp+var_14], 0
push	ebx
push	esi
mov	bl, dl
mov	esi, ecx
and	[ebp+var_4], 0
push	20019h		; samDesired
push	off_45BF5C	; lpSubKey
lea	ecx, [ebp+var_14]
push	80000001h	; hKey
call	sub_42D35B
test	eax, eax
jnz	short loc_41E9EF
lea	eax, [ebp+Data]
lea	ecx, [ebp+var_14]
push	eax		; Data
push	esi		; lpValueName
call	sub_42D615
test	eax, eax
jnz	short loc_41E9EF
mov	bl, [ebp+Data]

loc_41E9EF:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_14]
call	sub_42D390
mov	ecx, [ebp+var_C]
mov	al, bl
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_41E9A5 endp




sub_41EA0B proc	near
mov	dl, cl
mov	ecx, off_45BF70
jmp	sub_41E93F
sub_41EA0B endp




sub_41EA18 proc	near
mov	ecx, off_45BF70
xor	dl, dl
jmp	sub_41E9A5
sub_41EA18 endp




sub_41EA25 proc	near
mov	dl, cl
mov	ecx, off_45BF74
jmp	sub_41E93F
sub_41EA25 endp




sub_41EA32 proc	near
mov	ecx, off_45BF74
xor	dl, dl
jmp	sub_41E9A5
sub_41EA32 endp




sub_41EA3F proc	near
mov	dl, cl
mov	ecx, off_45BF78
jmp	sub_41E93F
sub_41EA3F endp




sub_41EA4C proc	near
mov	ecx, off_45BF78
xor	dl, dl
jmp	sub_41E9A5
sub_41EA4C endp




sub_41EA59 proc	near
mov	dl, cl
mov	ecx, off_45BF7C
jmp	sub_41E93F
sub_41EA59 endp




sub_41EA66 proc	near
mov	ecx, off_45BF7C
xor	dl, dl
jmp	sub_41E9A5
sub_41EA66 endp




sub_41EA73 proc	near
mov	dl, cl
mov	ecx, off_45BF80
jmp	sub_41E93F
sub_41EA73 endp




sub_41EA80 proc	near
mov	ecx, off_45BF80
xor	dl, dl
jmp	sub_41E9A5
sub_41EA80 endp




sub_41EA8D proc	near
mov	dl, cl
mov	ecx, off_45BF88
jmp	sub_41E93F
sub_41EA8D endp




sub_41EA9A proc	near
mov	ecx, off_45BF88
xor	dl, dl
jmp	sub_41E9A5
sub_41EA9A endp




sub_41EAA7 proc	near
mov	dl, cl
mov	ecx, off_45BF84
jmp	$+5

loc_41EAB4:
mov	eax, offset loc_44603C
call	__EH_prolog
push	ecx
push	esi
xor	eax, eax
push	edi
mov	esi, edx
mov	edi, ecx
mov	[ebp-10h], eax
push	eax		; int
push	eax		; dwDisposition
push	0F003Fh		; samDesired
push	eax		; dwOptions
push	eax		; lpClass
lea	ecx, [ebp-10h]
push	off_45BF58	; lpSubKey
mov	[ebp-4], eax
push	80000001h	; hKey
call	sub_42D30D
lea	ecx, [ebp-10h]
push	esi		; char
push	edi		; lpValueName
call	sub_42D48D
or	dword ptr [ebp-4], 0FFFFFFFFh
lea	ecx, [ebp-10h]
call	sub_42D390
mov	ecx, [ebp-0Ch]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41EAA7 endp




sub_41EB0D proc	near
mov	ecx, off_45BF84
xor	dl, dl
jmp	$+5

loc_41EB1A:
mov	eax, offset loc_446050
call	__EH_prolog
push	ecx
push	ecx
and	dword ptr [ebp-14h], 0
push	ebx
push	esi
mov	bl, dl
mov	esi, ecx
and	dword ptr [ebp-4], 0
push	20019h		; samDesired
push	off_45BF58	; lpSubKey
lea	ecx, [ebp-14h]
push	80000001h	; hKey
call	sub_42D35B
test	eax, eax
jnz	short loc_41EB64
lea	eax, [ebp-0Dh]
lea	ecx, [ebp-14h]
push	eax		; Data
push	esi		; lpValueName
call	sub_42D615
test	eax, eax
jnz	short loc_41EB64
mov	bl, [ebp-0Dh]

loc_41EB64:
or	dword ptr [ebp-4], 0FFFFFFFFh
lea	ecx, [ebp-14h]
call	sub_42D390
mov	ecx, [ebp-0Ch]
mov	al, bl
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_41EB0D endp



; Attributes: bp-based frame

sub_41EB80 proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_446064
call	__EH_prolog
sub	esp, 0Ch
push	ebx
mov	bl, dl
mov	edx, ecx
lea	ecx, [ebp+Memory]
call	sub_41EBBD
mov	ecx, [eax]
and	[ebp+var_4], 0
mov	dl, bl
call	sub_41E93F
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
pop	ebx
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn
sub_41EB80 endp



; Attributes: bp-based frame

sub_41EBBD proc	near

var_2C=	byte ptr -2Ch
Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_446078
call	__EH_prolog
sub	esp, 20h
and	[ebp+var_10], 0
push	esi
mov	eax, edx
mov	esi, ecx
lea	edx, [ebp+var_2C]
mov	ecx, eax
call	sub_427B7B
lea	ecx, [ebp+Memory]
push	off_45BF8C
call	sub_41E0DD
and	[ebp+var_4], 0
lea	ecx, [ebp+var_2C]
push	ecx
mov	edx, eax
mov	ecx, esi
call	sub_41E280
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41EBBD endp



; Attributes: bp-based frame

sub_41EC14 proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_44608C
call	__EH_prolog
sub	esp, 0Ch
mov	edx, ecx
push	ebx
lea	ecx, [ebp+Memory]
call	sub_41EBBD
mov	eax, [eax]
and	[ebp+var_4], 0
xor	dl, dl
mov	ecx, eax
call	sub_41E9A5
mov	bl, al
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	al, bl
mov	ecx, [ebp+var_C]
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_41EC14 endp




sub_41EC55 proc	near

var_4= dword ptr -4

push	ecx
and	[esp+4+var_4], 0
push	esi
push	edi
mov	edi, ecx
push	11h
mov	esi, edx
pop	ecx
call	sub_41F94C
mov	edx, 8FCh
mov	ecx, edi
push	3020300h
mov	[esi], eax
call	sub_40B168
mov	eax, edi
pop	edi
pop	esi
pop	ecx
retn
sub_41EC55 endp




sub_41EC82 proc	near

var_4= dword ptr -4

push	ecx
and	[esp+4+var_4], 0
push	esi
push	edi
mov	edi, ecx
push	12h
mov	esi, edx
pop	ecx
call	sub_41F94C
mov	edx, 8FDh
mov	ecx, edi
push	3020301h
mov	[esi], eax
call	sub_40B168
mov	eax, edi
pop	edi
pop	esi
pop	ecx
retn
sub_41EC82 endp




sub_41ECAF proc	near

var_4= dword ptr -4

push	ecx
and	[esp+4+var_4], 0
push	esi
push	edi
mov	edi, ecx
push	5
mov	esi, edx
pop	ecx
call	sub_41F94C
mov	edx, 8FEh
mov	ecx, edi
push	3020302h
mov	[esi], eax
call	sub_40B168
mov	eax, edi
pop	edi
pop	esi
pop	ecx
retn
sub_41ECAF endp



; Attributes: bp-based frame

sub_41ECDC proc	near

var_24=	dword ptr -24h
Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4460B0
call	__EH_prolog
sub	esp, 18h
push	esi
mov	esi, ecx
lea	ecx, [ebp+Memory]
lea	edx, [esi+3Ch]
call	sub_41EC55
and	[ebp+var_4], 0
push	eax
lea	ecx, [esi+0Ch]
call	sub_40312C
push	[ebp+Memory]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
pop	ecx
lea	edx, [esi+40h]
lea	ecx, [ebp+Memory]
call	sub_41ECAF
push	eax
lea	ecx, [esi+18h]
mov	[ebp+var_4], 1
call	sub_40312C
push	[ebp+Memory]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
pop	ecx
lea	edx, [esi+44h]
lea	ecx, [ebp+var_24]
call	sub_41EC82
push	eax
lea	ecx, [esi+24h]
mov	[ebp+var_4], 2
call	sub_40312C
push	[ebp+var_24]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
pop	ecx
push	off_45C05C
lea	ecx, [esi+30h]	; csidl
call	sub_404722
push	11h
pop	ecx
call	sub_41F94C
mov	ecx, [ebp+var_C]
mov	[esi+48h], eax
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41ECDC endp




sub_41ED87 proc	near

arg_0= dword ptr  4

mov	ecx, [esp+arg_0]
call	sub_41ECDC
xor	eax, eax
retn	4
sub_41ED87 endp




sub_41ED95 proc	near

arg_4= dword ptr  8

mov	eax, [esp+arg_4]
mov	dword ptr [eax], 4
xor	eax, eax
retn	8
sub_41ED95 endp



; Attributes: bp-based frame

sub_41EDA4 proc	near

pvarg= VARIANTARG ptr -1Ch
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h
arg_C= dword ptr  14h

mov	eax, offset loc_4460C4
call	__EH_prolog
sub	esp, 10h
xor	eax, eax
mov	word ptr [ebp+pvarg.anonymous_0], ax
mov	word ptr [ebp+pvarg.anonymous_0+2], ax
mov	[ebp+var_4], eax
mov	eax, [ebp+arg_8]
sub	eax, 4
jz	short loc_41EDD6
dec	eax
dec	eax
jnz	short loc_41EDEB
push	1
lea	ecx, [ebp+pvarg]
call	sub_42CD4D
jmp	short loc_41EDEB

loc_41EDD6:
mov	eax, [ebp+arg_4]
mov	ecx, [ebp+arg_0]
lea	eax, [eax+eax*2+3]
push	dword ptr [ecx+eax*4] ;	psz
lea	ecx, [ebp+pvarg]
call	sub_42CC9E

loc_41EDEB:		; pvarg
push	[ebp+arg_C]
lea	ecx, [ebp+pvarg] ; Src
call	sub_42CE85
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+pvarg] ; pvarg
call	sub_42CDE1
mov	ecx, [ebp+var_C]
xor	eax, eax
mov	large fs:0, ecx
leave
retn	10h
sub_41EDA4 endp



; Attributes: bp-based frame

sub_41EE12 proc	near

var_34C= byte ptr -34Ch
var_140= byte ptr -140h
Memory=	dword ptr -38h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4460E8
call	__EH_prolog
sub	esp, 340h
push	ebx
push	esi
mov	[ebp+var_1C], ecx
push	edi
xor	ebx, ebx
push	3
lea	ecx, [ebp+var_18]
mov	[ebp+var_2C], ebx
mov	[ebp+var_18], ebx
mov	[ebp+var_14], ebx
mov	[ebp+var_10], ebx
call	sub_403396
mov	esi, ds:GetModuleHandleA
push	offset aShgetspecialfo ; "SHGetSpecialFolderPathW"
push	offset aShell32_dll_0 ;	"shell32.dll"
mov	[ebp+var_4], ebx
call	esi ; GetModuleHandleA
mov	edi, ds:GetProcAddress
push	eax		; hModule
call	edi ; GetProcAddress
cmp	eax, ebx
jz	short loc_41EE84
push	ebx
lea	ecx, [ebp+var_34C]
push	5
push	ecx
push	ebx
call	eax
test	eax, eax
jz	short loc_41EE84
lea	eax, [ebp+var_34C]
lea	ecx, [ebp+var_18]
push	eax
call	sub_404722
jmp	short loc_41EEE8

loc_41EE84:		; "SHGetSpecialFolderPathA"
push	offset aShgetspecial_0
push	offset aShell32_dll_0 ;	"shell32.dll"
call	esi ; GetModuleHandleA
push	eax		; hModule
call	edi ; GetProcAddress
cmp	eax, ebx
jz	short loc_41EEE8
push	ebx
lea	ecx, [ebp+var_140]
push	5
push	ecx
push	ebx
call	eax
test	eax, eax
jz	short loc_41EEE8
lea	eax, [ebp+var_140]
lea	ecx, [ebp+var_28]
push	eax
call	sub_41E0DD
lea	edx, [ebp+var_28]
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 1
call	sub_41242C
push	eax
lea	ecx, [ebp+var_18]
mov	byte ptr [ebp+var_4], 2
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_28]	; Memory
mov	byte ptr [ebp+var_4], bl
call	sub_4284D8
pop	ecx
pop	ecx

loc_41EEE8:
mov	eax, [ebp+var_14]
pop	edi
pop	esi
cmp	eax, ebx
pop	ebx
jle	short loc_41EF07
mov	ecx, [ebp+var_18]
cmp	word ptr [ecx+eax*2-2],	5Ch
jz	short loc_41EF07
push	5Ch
lea	ecx, [ebp+var_18]
call	sub_40316A

loc_41EF07:
mov	ecx, [ebp+var_1C]
lea	eax, [ebp+var_18]
push	eax
call	sub_4030F2
push	[ebp+var_18]	; Memory
call	sub_4284D8
mov	eax, [ebp+var_1C]
pop	ecx
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn
sub_41EE12 endp	; sp-analysis failed



; Attributes: bp-based frame

sub_41EF2B proc	near

Memory=	dword ptr -1Ch
var_18=	dword ptr -18h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_44612A
call	__EH_prolog
sub	esp, 10h
mov	eax, [ebp+arg_8]
push	ebx
xor	ebx, ebx
push	esi
push	edi
mov	[eax], ebx
mov	[ebp+var_10], ebx
mov	edi, [ebp+arg_4]
mov	[ebp+var_4], ebx
cmp	edi, ebx
jz	loc_41F03E
cmp	edi, 3
jz	loc_41F03E
cmp	edi, 2
jnz	short loc_41EFB9
push	78h		; Size
call	sub_4284B1
pop	ecx
mov	ecx, eax
mov	[ebp+arg_4], ecx
cmp	ecx, ebx
mov	byte ptr [ebp+var_4], 2
jz	short loc_41EF7F
call	sub_4088D8
mov	esi, eax
jmp	short loc_41EF81

loc_41EF7F:
xor	esi, esi

loc_41EF81:
push	esi
lea	ecx, [ebp+var_10]
mov	byte ptr [ebp+var_4], bl
call	sub_43D0DB
mov	eax, [ebp+arg_0]
push	5Ch
lea	ecx, [ebp+Memory]
lea	edx, [eax+24h]
call	sub_409999
push	eax
push	ebx
push	ebx
mov	ecx, esi
mov	byte ptr [ebp+var_4], 3
call	sub_427372
push	[ebp+Memory]	; Memory

loc_41EFAE:
call	sub_4284D8
pop	ecx
jmp	loc_41F073

loc_41EFB9:
cmp	edi, 1
jnz	short loc_41F037
lea	ecx, [ebp+Memory]
call	sub_41EE12
cmp	[ebp+var_18], ebx
mov	byte ptr [ebp+var_4], 4
jz	short loc_41F02F
push	0C8h		; Size
call	sub_4284B1
pop	ecx
mov	ecx, eax
mov	[ebp+arg_4], ecx
cmp	ecx, ebx
mov	byte ptr [ebp+var_4], 5
jz	short loc_41EFF0
call	sub_4081FF
mov	esi, eax
jmp	short loc_41EFF2

loc_41EFF0:
xor	esi, esi

loc_41EFF2:
push	esi
lea	ecx, [ebp+var_10]
mov	byte ptr [ebp+var_4], 4
call	sub_43D0DB
lea	eax, [ebp+Memory]
push	ebx
push	eax
mov	ecx, esi
call	sub_407611
mov	esi, eax
cmp	esi, ebx
jz	short loc_41F02F
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	eax, [ebp+var_10]
or	[ebp+var_4], 0FFFFFFFFh
cmp	eax, ebx
pop	ecx
jz	short loc_41F02B
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]

loc_41F02B:
mov	eax, esi
jmp	short loc_41F07D

loc_41F02F:
push	[ebp+Memory]
jmp	loc_41EFAE

loc_41F037:
mov	eax, 80070057h
jmp	short loc_41F07D

loc_41F03E:		; Size
push	28h
call	sub_4284B1
pop	ecx
mov	[ebp+arg_4], eax
cmp	eax, ebx
mov	byte ptr [ebp+var_4], 1
jz	short loc_41F05C
mov	ecx, eax
call	sub_408A5B
mov	esi, eax
jmp	short loc_41F05E

loc_41F05C:
xor	esi, esi

loc_41F05E:
push	esi
lea	ecx, [ebp+var_10]
mov	byte ptr [ebp+var_4], bl
call	sub_43D0DB
cmp	edi, 3
setz	al
mov	[esi+24h], al

loc_41F073:
mov	ecx, [ebp+arg_8]
mov	eax, [ebp+var_10]
mov	[ecx], eax
xor	eax, eax

loc_41F07D:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	0Ch
sub_41EF2B endp



; Attributes: bp-based frame

sub_41F08E proc	near

var_34=	dword ptr -34h
Memory=	dword ptr -28h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_44619A
call	__EH_prolog
sub	esp, 28h
push	ebx
mov	ebx, [ebp+arg_8]
push	esi
push	edi
push	[ebp+arg_4]
xor	edi, edi
lea	ecx, [ebp+var_1C]
mov	[ebx], edi
call	sub_403091
lea	ecx, [ebp+var_1C]
mov	[ebp+var_4], edi
call	sub_406F3F
lea	ecx, [ebp+var_1C]
call	sub_406F04
cmp	[ebp+var_18], edi
jnz	short loc_41F109
push	4Ch		; Size
call	sub_4284B1
pop	ecx
mov	[ebp+arg_8], eax
cmp	eax, edi
mov	byte ptr [ebp+var_4], 1
jz	short loc_41F0E6
mov	ecx, eax
call	sub_4129FF
mov	esi, eax
jmp	short loc_41F0E8

loc_41F0E6:
xor	esi, esi

loc_41F0E8:
and	byte ptr [ebp+var_4], 0
cmp	esi, edi
mov	[ebp+arg_8], esi
jz	short loc_41F0F9
mov	eax, [esi]
push	esi
call	dword ptr [eax+4]

loc_41F0F9:
mov	ecx, esi
mov	byte ptr [ebp+var_4], 2
call	sub_41ECDC
jmp	loc_41F261

loc_41F109:
mov	esi, [ebp+arg_0]
mov	[ebp+arg_4], edi
lea	edi, [esi+0Ch]

loc_41F112:
mov	edx, edi
lea	ecx, [ebp+var_1C]
call	sub_41F3B8
test	al, al
jnz	short loc_41F180
inc	[ebp+arg_4]
add	edi, 0Ch
cmp	[ebp+arg_4], 4
jl	short loc_41F112
push	offset aMyDocuments ; "My Documents"
lea	ecx, [ebp+var_34]
call	sub_403091
lea	edx, [ebp+var_34]
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 3
call	sub_41F3B8
test	al, al
jnz	short loc_41F18B
push	offset aDocuments ; "Documents"
lea	ecx, [ebp+Memory]
call	sub_403091
lea	edx, [ebp+Memory]
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 4
call	sub_41F3B8
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+arg_4+3],	al
call	sub_4284D8
cmp	byte ptr [ebp+arg_4+3],	0
pop	ecx
jnz	short loc_41F18B
and	byte ptr [ebp+arg_4+3],	0
jmp	short loc_41F18F

loc_41F180:
mov	eax, [esi]
push	ebx
push	[ebp+arg_4]
jmp	loc_41F219

loc_41F18B:
mov	byte ptr [ebp+arg_4+3],	1

loc_41F18F:		; Memory
push	[ebp+var_34]
and	byte ptr [ebp+var_4], 0
call	sub_4284D8
cmp	byte ptr [ebp+arg_4+3],	0
pop	ecx
jz	short loc_41F1A9
mov	eax, [esi]
push	ebx
push	1
jmp	short loc_41F219

loc_41F1A9:		; "My Computer"
push	offset aMyComputer
lea	ecx, [ebp+Memory]
call	sub_403091
lea	edx, [ebp+Memory]
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 5
call	sub_41F3B8
test	al, al
jnz	short loc_41F1FD
push	offset aComputer ; "Computer"
lea	ecx, [ebp+var_34]
call	sub_403091
lea	edx, [ebp+var_34]
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 6
call	sub_41F3B8
push	[ebp+var_34]	; Memory
mov	byte ptr [ebp+arg_4+3],	al
call	sub_4284D8
cmp	byte ptr [ebp+arg_4+3],	0
pop	ecx
jnz	short loc_41F1FD
and	byte ptr [ebp+arg_4+3],	0
jmp	short loc_41F201

loc_41F1FD:
mov	byte ptr [ebp+arg_4+3],	1

loc_41F201:		; Memory
push	[ebp+Memory]
and	byte ptr [ebp+var_4], 0
call	sub_4284D8
cmp	byte ptr [ebp+arg_4+3],	0
pop	ecx
jz	short loc_41F224
mov	eax, [esi]
push	ebx
push	0

loc_41F219:
push	esi
call	dword ptr [eax+1Ch]
mov	esi, eax
jmp	loc_41F2E6

loc_41F224:
push	5Ch
lea	ecx, [ebp+var_34]
pop	edi
push	edi
call	sub_409516
mov	edx, [eax]
mov	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 7
call	sub_42828A
push	[ebp+var_34]	; Memory
test	eax, eax
setz	byte ptr [ebp+arg_4+3]
and	byte ptr [ebp+var_4], 0
call	sub_4284D8
cmp	byte ptr [ebp+arg_4+3],	0
pop	ecx
jz	short loc_41F267
test	esi, esi
jz	short loc_41F261
mov	eax, [esi]
push	esi
call	dword ptr [eax+4]

loc_41F261:
mov	[ebx], esi
xor	esi, esi
jmp	short loc_41F2E6

loc_41F267:
cmp	[ebp+var_18], 2
jge	short loc_41F274

loc_41F26D:
mov	esi, 80070057h
jmp	short loc_41F2E6

loc_41F274:
and	[ebp+var_10], 0
mov	esi, off_45C05C
lea	eax, [ebp+var_34]
push	4
push	eax
lea	ecx, [ebp+var_1C]
mov	byte ptr [ebp+var_4], 8
call	sub_403228
mov	ecx, [eax]
mov	edx, esi
mov	byte ptr [ebp+var_4], 9
call	sub_42828A
push	[ebp+var_34]	; Memory
mov	byte ptr [ebp+var_4], 8
test	eax, eax
setz	bl
call	sub_4284D8
test	bl, bl
pop	ecx
jz	short loc_41F302
push	28h		; Size
call	sub_4284B1
test	eax, eax
pop	ecx
jz	short loc_41F2CA
mov	ecx, eax
call	sub_408A5B
mov	esi, eax
jmp	short loc_41F2CC

loc_41F2CA:
xor	esi, esi

loc_41F2CC:
push	esi
lea	ecx, [ebp+var_10]
call	sub_43D0DB
mov	byte ptr [esi+24h], 1

loc_41F2D9:
mov	ecx, [ebp+arg_8]
mov	eax, [ebp+var_10]
xor	esi, esi
mov	[ebp+var_10], esi
mov	[ecx], eax

loc_41F2E6:		; Memory
push	[ebp+var_1C]
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	0Ch

loc_41F302:
mov	eax, [ebp+var_18]
mov	ecx, [ebp+var_1C]
cmp	[ecx+eax*2-2], di
jz	short loc_41F318
push	edi
lea	ecx, [ebp+var_1C]
call	sub_40316A

loc_41F318:		; Size
push	0C8h
call	sub_4284B1
pop	ecx
mov	[ebp+arg_4], eax
test	eax, eax
mov	byte ptr [ebp+var_4], 0Ah
jz	short loc_41F339
mov	ecx, eax
call	sub_4081FF
mov	esi, eax
jmp	short loc_41F33B

loc_41F339:
xor	esi, esi

loc_41F33B:
push	esi
lea	ecx, [ebp+var_10]
mov	byte ptr [ebp+var_4], 8
call	sub_43D0DB
lea	eax, [ebp+var_1C]
push	0
push	eax
mov	ecx, esi
call	sub_407611
test	eax, eax
jz	short loc_41F2D9
mov	eax, [ebp+var_1C]
cmp	[eax], di
jnz	short loc_41F39E
push	78h		; Size
call	sub_4284B1
pop	ecx
mov	[ebp+arg_4], eax
test	eax, eax
mov	byte ptr [ebp+var_4], 0Bh
jz	short loc_41F37F
mov	ecx, eax
call	sub_4088D8
mov	esi, eax
jmp	short loc_41F381

loc_41F37F:
xor	esi, esi

loc_41F381:
push	esi
lea	ecx, [ebp+var_10]
mov	byte ptr [ebp+var_4], 8
call	sub_43D0DB
lea	eax, [ebp+var_1C]
mov	ecx, esi
push	eax
call	sub_42725A
jmp	loc_41F2D9

loc_41F39E:
mov	eax, [ebp+var_10]
and	byte ptr [ebp+var_4], 0
test	eax, eax
jz	loc_41F26D
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+8]
jmp	loc_41F26D
sub_41F08E endp



; Attributes: bp-based frame

sub_41F3B8 proc	near

var_24=	dword ptr -24h
Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4461B4
call	__EH_prolog
sub	esp, 18h
push	esi
push	edi
mov	edi, edx
mov	esi, ecx
mov	edx, [edi]
mov	ecx, [esi]
call	sub_42828A
test	eax, eax
jz	short loc_41F41A
push	5Ch
lea	ecx, [ebp+var_24]
call	sub_409516
and	[ebp+var_4], 0
push	eax
mov	edx, edi
lea	ecx, [ebp+Memory]
call	sub_40356A
mov	edx, [eax]
mov	ecx, [esi]
mov	byte ptr [ebp+var_4], 1
call	sub_42828A
mov	esi, eax
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_24]	; Memory
call	sub_4284D8
pop	ecx
test	esi, esi
pop	ecx
jz	short loc_41F41A
xor	eax, eax
jmp	short loc_41F41D

loc_41F41A:
push	1
pop	eax

loc_41F41D:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_41F3B8 endp




sub_41F42B proc	near

arg_4= dword ptr  8

mov	eax, [esp+arg_4]
and	dword ptr [eax], 0
xor	eax, eax
retn	8
sub_41F42B endp




sub_41F437 proc	near

arg_4= dword ptr  8

mov	eax, [esp+arg_4]
mov	dword ptr [eax], 1
xor	eax, eax
retn	8
sub_41F437 endp




sub_41F446 proc	near

arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= dword ptr  10h
arg_10=	dword ptr  14h

mov	eax, [esp+arg_4]
cmp	eax, 1
jb	short loc_41F456
mov	eax, 80070057h
jmp	short locret_41F481

loc_41F456:
mov	edx, [esp+arg_C]
lea	eax, [eax+eax*2]
mov	ecx, ds:dword_44C42C[eax*4]
lea	eax, ds:44C428h[eax*4]
mov	[edx], ecx
mov	ecx, [esp+arg_10]
mov	ax, [eax+8]
mov	[ecx], ax
mov	eax, [esp+arg_8]
and	dword ptr [eax], 0
xor	eax, eax

locret_41F481:
retn	14h
sub_41F446 endp



; Attributes: bp-based frame

sub_41F484 proc	near

pvarg= VARIANTARG ptr -1Ch
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_4461C8
call	__EH_prolog
sub	esp, 10h
xor	eax, eax
mov	word ptr [ebp+pvarg.anonymous_0], ax
mov	word ptr [ebp+pvarg.anonymous_0+2], ax
cmp	[ebp+arg_4], 3
mov	[ebp+var_4], eax
jz	short loc_41F4B1
cmp	[ebp+arg_4], 14h
jnz	short loc_41F4BE
push	offset aRootfolder ; "RootFolder"
jmp	short loc_41F4B6

loc_41F4B1:		; psz
push	offset word_45D498

loc_41F4B6:
lea	ecx, [ebp+pvarg]
call	sub_42CC8C

loc_41F4BE:		; pvarg
push	[ebp+arg_8]
lea	ecx, [ebp+pvarg] ; Src
call	sub_42CE85
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+pvarg] ; pvarg
call	sub_42CDE1
mov	ecx, [ebp+var_C]
xor	eax, eax
mov	large fs:0, ecx
leave
retn	0Ch
sub_41F484 endp




sub_41F4E5 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch

mov	eax, [esp+arg_0]
mov	ecx, [esp+arg_4]
mov	eax, [eax+ecx*4+38h]
mov	ecx, [esp+arg_8]
mov	[ecx], eax
xor	eax, eax
retn	0Ch
sub_41F4E5 endp



; Attributes: bp-based frame

sub_41F4FC proc	near

var_44=	dword ptr -44h
var_3C=	dword ptr -3Ch
var_38=	dword ptr -38h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
Memory=	dword ptr -24h
var_20=	dword ptr -20h
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_D= byte ptr	-0Dh
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_446214
call	__EH_prolog
sub	esp, 38h
push	ebx
push	esi
mov	ebx, edx
mov	esi, ecx
push	edi
mov	ecx, ebx
call	sub_428327
lea	ecx, [ebp+var_44]
call	sub_40337B
mov	edi, offset off_44B510
mov	[ebp+var_44], edi
and	[ebp+var_4], 0
lea	edx, [ebp+var_44]
mov	ecx, esi
call	sub_41F8A7
and	[ebp+var_D], 0
and	[ebp+var_14], 0
cmp	[ebp+var_3C], 0
jle	loc_41F660

loc_41F547:
mov	eax, [ebp+var_38]
mov	ecx, [ebp+var_14]
push	dword ptr [eax+ecx*4]
lea	ecx, [ebp+Memory]
call	sub_4030F2
mov	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 1
call	sub_428107
cmp	[ebp+var_20], 0
jz	loc_41F68F
mov	ecx, [ebp+Memory]
mov	edx, offset asc_45B600 ; "-"
call	sub_42828A
test	eax, eax
jz	loc_41F6A4
cmp	[ebp+var_D], 0
mov	ecx, [ebp+Memory]
jz	short loc_41F5E2
mov	ax, [ecx]
mov	edx, [ebx+8]
mov	esi, [ebx+0Ch]
and	[ebp+var_D], 0
movzx	eax, ax
sub	eax, 42h
lea	esi, [esi+edx*8-8]
jz	short loc_41F5D6
sub	eax, 5
jz	short loc_41F5D2
sub	eax, 4
jz	short loc_41F5CE
dec	eax
dec	eax
jnz	short loc_41F5E2
push	14h

loc_41F5B5:
mov	eax, [esi]
mov	edx, [esi+4]
pop	ecx
call	__allshl
and	byte ptr [ebp+var_4], 0
mov	[esi], eax
mov	[esi+4], edx
push	[ebp+Memory]
jmp	short loc_41F5DB

loc_41F5CE:
push	0Ah
jmp	short loc_41F5B5

loc_41F5D2:
push	1Eh
jmp	short loc_41F5B5

loc_41F5D6:
and	byte ptr [ebp+var_4], 0
push	ecx		; Memory

loc_41F5DB:
call	sub_4284D8
jmp	short loc_41F650

loc_41F5E2:
lea	edx, [ebp+var_18]
mov	esi, ecx
call	sub_428693
cmp	esi, [ebp+var_18]
jz	loc_41F6BB
mov	ecx, eax
or	ecx, edx
jz	loc_41F6E8
push	edx
push	eax
mov	ecx, ebx
call	sub_43D102
mov	eax, [ebp+var_18]
lea	ecx, [ebp+Memory]
sub	eax, esi
mov	[ebp+var_D], 1
sar	eax, 1
push	eax
lea	eax, [ebp+var_30]
push	eax
call	sub_405246
cmp	[ebp+var_2C], 0
mov	byte ptr [ebp+var_4], 6
jz	short loc_41F63B
lea	eax, [ebp+var_30]
lea	ecx, [ebp+var_44]
push	eax
mov	eax, [ebp+var_14]
inc	eax
push	eax
call	sub_4140D0

loc_41F63B:		; Memory
push	[ebp+var_30]
call	sub_4284D8
push	[ebp+Memory]	; Memory
and	byte ptr [ebp+var_4], 0
call	sub_4284D8
pop	ecx

loc_41F650:
inc	[ebp+var_14]
pop	ecx
mov	eax, [ebp+var_14]
cmp	eax, [ebp+var_3C]
jl	loc_41F547

loc_41F660:
mov	[ebp+var_44], edi
lea	ecx, [ebp+var_44]
mov	[ebp+var_4], 7
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_44]
call	sub_4282FE
mov	al, 1

loc_41F680:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn

loc_41F68F:		; Memory
push	[ebp+Memory]
call	sub_4284D8
pop	ecx
mov	[ebp+var_44], edi
mov	[ebp+var_4], 2
jmp	short loc_41F6CE

loc_41F6A4:		; Memory
push	[ebp+Memory]
call	sub_4284D8
pop	ecx
mov	[ebp+var_44], edi
mov	[ebp+var_4], 3
mov	bl, 1
jmp	short loc_41F6D0

loc_41F6BB:		; Memory
push	[ebp+Memory]
call	sub_4284D8
pop	ecx
mov	[ebp+var_44], edi
mov	[ebp+var_4], 4

loc_41F6CE:
xor	bl, bl

loc_41F6D0:
lea	ecx, [ebp+var_44]
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_44]
call	sub_4282FE
mov	al, bl
jmp	short loc_41F680

loc_41F6E8:		; Memory
push	[ebp+Memory]
call	sub_4284D8
pop	ecx
mov	[ebp+var_44], edi
lea	ecx, [ebp+var_44]
mov	[ebp+var_4], 5
call	sub_428327
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_44]
call	sub_4282FE
xor	al, al
jmp	loc_41F680
sub_41F4FC endp




sub_41F716 proc	near
push	ebx
push	ebp
push	esi
push	edi
mov	edi, ds:SendMessageA
xor	ebp, ebp
push	offset a10m	; "10M"
mov	ebx, 143h
mov	esi, ecx
push	ebp		; wParam
push	ebx		; Msg
push	dword ptr [esi]	; hWnd
call	edi ; SendMessageA
push	offset a650mCd	; "650M	- CD"
push	ebp		; wParam
push	ebx		; Msg
push	dword ptr [esi]	; hWnd
call	edi ; SendMessageA
push	offset a700mCd	; "700M	- CD"
push	ebp		; wParam
push	ebx		; Msg
push	dword ptr [esi]	; hWnd
call	edi ; SendMessageA
push	offset a4480mDvd ; "4480M - DVD"
push	ebp		; wParam
push	ebx		; Msg
push	dword ptr [esi]	; hWnd
call	edi ; SendMessageA
push	offset a14576643_5Flop ; "1457664 - 3.5\" floppy"
push	ebp		; wParam
push	ebx		; Msg
push	dword ptr [esi]	; hWnd
call	edi ; SendMessageA
pop	edi
pop	esi
pop	ebp
pop	ebx
retn
sub_41F716 endp



; Attributes: bp-based frame

sub_41F765 proc	near

var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
sub	esp, 0Ch
mov	edx, [ebp+arg_4]
push	esi
mov	esi, [ebp+arg_0]
mov	eax, ecx
mov	ecx, esi
push	edi
or	ecx, edx
mov	[ebp+var_4], eax
jz	short loc_41F7FB
mov	ecx, [eax+8]
xor	edi, edi
cmp	ecx, edi
jz	short loc_41F7FB
mov	[ebp+var_C], edi
mov	[ebp+var_8], edi
mov	[ebp+arg_4], edi
jle	short loc_41F7BE
mov	eax, [eax+0Ch]

loc_41F795:
add	[ebp+var_C], 1
mov	edi, [eax+4]
adc	[ebp+var_8], 0
cmp	edi, edx
ja	short loc_41F7D8
jb	short loc_41F7AA
cmp	[eax], esi
jnb	short loc_41F7D8

loc_41F7AA:
sub	esi, [eax]
sbb	edx, edi
inc	[ebp+arg_4]
add	eax, 8
cmp	[ebp+arg_4], ecx
jl	short loc_41F795
mov	eax, [ebp+var_4]
xor	edi, edi

loc_41F7BE:
push	ebx
mov	ebx, [eax+0Ch]
mov	eax, [ebx+ecx*8-8]
mov	ecx, [ebx+ecx*8-4]
mov	ebx, eax
or	ebx, ecx
pop	ebx
jnz	short loc_41F7E0
or	edx, 0FFFFFFFFh
mov	eax, edx
jmp	short loc_41F800

loc_41F7D8:
mov	eax, [ebp+var_C]
mov	edx, [ebp+var_8]
jmp	short loc_41F800

loc_41F7E0:
sub	esi, 1
push	ecx
sbb	edx, edi
push	eax
push	edx
push	esi
call	__aulldiv
add	eax, [ebp+var_C]
adc	edx, [ebp+var_8]
add	eax, 1
adc	edx, edi
jmp	short loc_41F800

loc_41F7FB:
push	1
xor	edx, edx
pop	eax

loc_41F800:
pop	edi
pop	esi
leave
retn	8
sub_41F765 endp



; Attributes: bp-based frame

sub_41F806 proc	near

Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_446228
call	__EH_prolog
sub	esp, 10h
push	ebx
mov	ebx, [ebp+arg_0]
push	esi
push	edi
mov	edi, edx
mov	esi, ecx
xor	eax, eax
mov	ecx, [edi]
and	byte ptr [ebp+arg_0+3],	al
mov	[edi+4], eax
mov	[ebp+var_10], eax
mov	[ecx], ax
mov	ecx, [ebx]
mov	[ebx+4], eax
mov	[ecx], ax
cmp	[esi+4], eax
jle	short loc_41F875

loc_41F83A:
mov	ecx, [esi]
mov	cx, [ecx+eax*2]
cmp	cx, 22h
jnz	short loc_41F852
cmp	byte ptr [ebp+arg_0+3],	0
setz	cl
mov	byte ptr [ebp+arg_0+3],	cl
jmp	short loc_41F869

loc_41F852:
cmp	cx, 20h
jnz	short loc_41F85E
cmp	byte ptr [ebp+arg_0+3],	0
jz	short loc_41F874

loc_41F85E:
push	ecx
mov	ecx, edi
call	sub_40316A
mov	eax, [ebp+var_10]

loc_41F869:
inc	eax
cmp	eax, [esi+4]
mov	[ebp+var_10], eax
jge	short loc_41F875
jmp	short loc_41F83A

loc_41F874:
inc	eax

loc_41F875:
push	eax
lea	eax, [ebp+Memory]
push	eax
mov	ecx, esi
call	sub_405246
and	[ebp+var_4], 0
push	eax
mov	ecx, ebx
call	sub_40312C
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_41F806 endp



; Attributes: bp-based frame

sub_41F8A7 proc	near

Memory=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_44623C
call	__EH_prolog
sub	esp, 14h
push	ebx
push	esi
push	edi
mov	edi, ecx
mov	ecx, edx
mov	[ebp+var_14], edx
call	sub_428327
xor	esi, esi
lea	ecx, [ebp+Memory]
push	3
mov	[ebp+Memory], esi
mov	[ebp+var_1C], esi
mov	[ebp+var_18], esi
call	sub_403396
mov	ebx, [edi+4]
mov	[ebp+var_4], esi
cmp	ebx, esi
jz	short loc_41F934
mov	[ebp+var_10], esi
jle	short loc_41F923

loc_41F8E7:
mov	eax, [edi]
mov	ecx, [ebp+var_10]
mov	ax, [eax+ecx*2]
cmp	ax, 20h
jnz	short loc_41F912
cmp	[ebp+var_1C], esi
jz	short loc_41F91B
mov	ecx, [ebp+var_14]
lea	eax, [ebp+Memory]
push	eax
call	sub_4032B4
mov	eax, [ebp+Memory]
mov	[ebp+var_1C], esi
mov	[eax], si
jmp	short loc_41F91B

loc_41F912:
push	eax
lea	ecx, [ebp+Memory]
call	sub_40316A

loc_41F91B:
inc	[ebp+var_10]
cmp	[ebp+var_10], ebx
jl	short loc_41F8E7

loc_41F923:
cmp	[ebp+var_1C], esi
jz	short loc_41F934
mov	ecx, [ebp+var_14]
lea	eax, [ebp+Memory]
push	eax
call	sub_4032B4

loc_41F934:		; Memory
push	[ebp+Memory]
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_41F8A7 endp



; Attributes: bp-based frame

; int __fastcall sub_41F94C(int	csidl)
sub_41F94C proc	near

psfi= SHFILEINFOA ptr -168h
ppMalloc= dword	ptr -8
pszPath= dword ptr -4

push	ebp
mov	ebp, esp
sub	esp, 168h
and	[ebp+pszPath], 0
lea	eax, [ebp+pszPath]
push	eax		; ppidl
push	ecx		; csidl
push	0		; hwnd
call	ds:SHGetSpecialFolderLocation
cmp	[ebp+pszPath], 0
jz	short loc_41F9B6
push	4008h		; uFlags
lea	eax, [ebp+psfi]
push	160h		; cbFileInfo
push	eax		; psfi
push	80h		; dwFileAttributes
push	[ebp+pszPath]	; pszPath
call	ds:SHGetFileInfoA
lea	eax, [ebp+ppMalloc]
push	eax		; ppMalloc
call	ds:SHGetMalloc
mov	eax, [ebp+ppMalloc]
test	eax, eax
jz	short loc_41F9AE
push	[ebp+pszPath]
mov	ecx, [eax]
push	eax
call	dword ptr [ecx+14h]
mov	eax, [ebp+ppMalloc]
push	eax
mov	ecx, [eax]
call	dword ptr [ecx+8]

loc_41F9AE:
mov	eax, [ebp+psfi.iIcon]
leave
retn

loc_41F9B6:
xor	eax, eax
leave
retn
sub_41F94C endp



; Attributes: bp-based frame

; int __thiscall sub_41F9BA(LPCSTR pszPath, int)
sub_41F9BA proc	near

psfi= SHFILEINFOA ptr -160h
arg_0= dword ptr  8

push	ebp
mov	ebp, esp
sub	esp, 160h
push	4010h		; uFlags
lea	eax, [ebp+psfi]
push	160h		; cbFileInfo
or	dl, 80h
push	eax		; psfi
push	edx		; dwFileAttributes
push	ecx		; pszPath
call	ds:SHGetFileInfoA
mov	ecx, [ebp+arg_0]
mov	edx, [ebp+psfi.iIcon]
mov	[ecx], edx
leave
retn	4
sub_41F9BA endp

jmp	$+5

loc_41F9F3:		; "SHGetFileInfoW"
push	offset aShgetfileinfow
push	offset ModuleName ; "shell32.dll"
call	ds:GetModuleHandleW
push	eax
call	ds:GetProcAddress
mov	dword_45D938, eax
retn


; Attributes: bp-based frame

sub_41FA10 proc	near

var_2D8= byte ptr -2D8h
var_2D4= dword ptr -2D4h
Memory=	dword ptr -24h
var_18=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_446250
call	__EH_prolog
sub	esp, 2CCh
cmp	byte_45D8B4, 0
push	esi
mov	esi, edx
jz	short loc_41FA52
push	4010h
lea	eax, [ebp+var_2D8]
push	2B4h
push	eax
or	dl, 80h
call	sub_41FA9F
mov	ecx, [ebp+arg_0]
mov	edx, [ebp+var_2D4]
mov	[ecx], edx
jmp	short loc_41FA90

loc_41FA52:
push	ecx
lea	ecx, [ebp+var_18]
call	sub_403091
and	[ebp+var_4], 0
push	0
lea	edx, [ebp+var_18]
lea	ecx, [ebp+Memory]
call	sub_428673
mov	eax, [eax]
mov	edx, esi
push	[ebp+arg_0]	; int
mov	ecx, eax	; pszPath
call	sub_41F9BA
mov	esi, eax
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_18]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, esi
pop	ecx

loc_41FA90:
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_41FA10 endp




sub_41FA9F proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch

mov	eax, dword_45D938
test	eax, eax
jz	short locret_41FAB8
push	[esp+arg_8]
push	[esp+4+arg_4]
push	[esp+8+arg_0]
push	edx
push	ecx
call	eax ; dword_45D938

locret_41FAB8:
retn	0Ch
sub_41FA9F endp



; Attributes: bp-based frame

sub_41FABB proc	near

var_438= byte ptr -438h
var_434= dword ptr -434h
var_224= word ptr -224h
psfi= SHFILEINFOA ptr -184h
var_24=	dword ptr -24h
Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_44626C
call	__EH_prolog
sub	esp, 42Ch
cmp	byte_45D8B4, 0
push	esi
mov	esi, edx
jnz	short loc_41FB56
and	[ebp+psfi.szTypeName], 0
mov	edx, ecx
lea	ecx, [ebp+Memory]
call	sub_43A785
mov	eax, [eax]
lea	ecx, [ebp+psfi]
push	4410h		; uFlags
push	160h		; cbFileInfo
or	esi, 80h
push	ecx		; psfi
push	esi		; dwFileAttributes
push	eax		; pszPath
call	ds:SHGetFileInfoA
mov	esi, eax
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
lea	eax, [ebp+psfi.szTypeName]
push	eax
lea	ecx, [ebp+Memory]
call	sub_41E0DD
and	[ebp+var_4], 0
lea	edx, [ebp+Memory]
lea	ecx, [ebp+var_24]
call	sub_41242C
mov	ecx, [ebp+arg_4]
push	eax
mov	byte ptr [ebp+var_4], 1
call	sub_40312C
push	[ebp+var_24]	; Memory
call	sub_4284D8
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	eax, [ebp+arg_0]
pop	ecx
pop	ecx
mov	ecx, [ebp+psfi.iIcon]
jmp	short loc_41FB95

loc_41FB56:
mov	ecx, [ecx]
and	[ebp+var_224], 0
push	4410h
lea	eax, [ebp+var_438]
mov	edx, esi
push	2B4h
push	eax
or	dl, 80h
call	sub_41FA9F
mov	ecx, [ebp+arg_4]
mov	esi, eax
lea	eax, [ebp+var_224]
push	eax
call	sub_404722
mov	eax, [ebp+arg_0]
mov	ecx, [ebp+var_434]

loc_41FB95:
mov	[eax], ecx
mov	ecx, [ebp+var_C]
mov	eax, esi
pop	esi
mov	large fs:0, ecx
leave
retn	8
sub_41FABB endp



; Attributes: bp-based frame

sub_41FBA8 proc	near

var_48=	byte ptr -48h
var_3C=	dword ptr -3Ch
var_38=	byte ptr -38h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

mov	eax, offset loc_4462A8
call	__EH_prolog
sub	esp, 3Ch
push	ebx
mov	ebx, [ebp+arg_4]
push	esi
push	edi
mov	eax, [ebx+4]
mov	esi, ecx
test	eax, eax
jz	short loc_41FBE0
mov	ecx, [ebx]
lea	eax, [ecx+eax*2-2]

loc_41FBCA:
cmp	word ptr [eax],	2Eh
jz	short loc_41FBD8
cmp	eax, ecx
jz	short loc_41FBE0
dec	eax
dec	eax
jmp	short loc_41FBCA

loc_41FBD8:
sub	eax, ecx
sar	eax, 1
mov	edi, eax
jmp	short loc_41FBE3

loc_41FBE0:
or	edi, 0FFFFFFFFh

loc_41FBE3:
test	byte ptr [ebp+arg_0], 10h
jnz	loc_41FCC7
test	edi, edi
jl	loc_41FCC7
lea	ecx, [ebp+var_48]
call	sub_403079
lea	ecx, [ebp+var_38]
mov	[ebp+var_4], 2
call	sub_403079
lea	eax, [edi+1]
mov	ecx, ebx
push	eax
lea	eax, [ebp+Memory]
push	eax
mov	[ebp+var_4], 3
call	sub_405246
push	eax
lea	ecx, [ebp+var_48]
mov	byte ptr [ebp+var_4], 4
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 3
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_48]
push	eax
mov	ecx, esi
call	sub_41FDCA
test	eax, eax
jl	short loc_41FC6D
mov	edi, eax
mov	eax, [esi+0Ch]
mov	ecx, [ebp+arg_8]
shl	edi, 2
mov	eax, [edi+eax]
add	eax, 10h
push	eax
call	sub_40312C
mov	eax, [esi+0Ch]
mov	edi, [edi+eax]
mov	esi, [edi+0Ch]
jmp	short loc_41FCB6

loc_41FC6D:
lea	eax, [ebp+Memory]
push	edi
push	eax
mov	ecx, ebx
call	sub_405246
mov	edx, [ebp+arg_0]
lea	ecx, [ebp+var_38]
push	ecx
lea	ecx, [ebp+var_3C]
push	ecx
mov	ecx, eax
mov	byte ptr [ebp+var_4], 5
call	sub_41FABB
push	[ebp+Memory]	; Memory
mov	byte ptr [ebp+var_4], 3
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_48]
push	eax
mov	ecx, esi
call	sub_41FE2E
mov	ecx, [ebp+arg_8]
lea	eax, [ebp+var_38]
push	eax
call	sub_40312C
mov	esi, [ebp+var_3C]

loc_41FCB6:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_48]
call	sub_406E56
jmp	loc_41FD60

loc_41FCC7:
lea	ecx, [ebp+var_24]
call	sub_403079
mov	ebx, [ebp+arg_0]
and	[ebp+var_4], 0
lea	edi, [esi+14h]
lea	eax, [ebp+var_2C]
push	eax
mov	ecx, edi
mov	[ebp+var_2C], ebx
call	sub_41FEA0
test	eax, eax
jl	short loc_41FD0D
mov	edi, eax
mov	eax, [esi+20h]
mov	ecx, [ebp+arg_8]
shl	edi, 2
mov	eax, [edi+eax]
add	eax, 8
push	eax
call	sub_40312C
mov	eax, [esi+20h]
mov	eax, [edi+eax]
mov	esi, [eax+4]
jmp	short loc_41FD57

loc_41FD0D:		; "__File__"
push	offset a__file__
lea	ecx, [ebp+Memory]
call	sub_403091
lea	eax, [ebp+var_24]
mov	edx, ebx
push	eax
lea	eax, [ebp+var_28]
push	eax
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 1
call	sub_41FABB
push	[ebp+Memory]	; Memory
and	byte ptr [ebp+var_4], 0
call	sub_4284D8
pop	ecx
lea	eax, [ebp+var_2C]
push	eax
mov	ecx, edi
call	sub_41FEDE
mov	ecx, [ebp+arg_8]
lea	eax, [ebp+var_24]
push	eax
call	sub_40312C
mov	esi, [ebp+var_28]

loc_41FD57:		; Memory
push	[ebp+var_24]
call	sub_4284D8
pop	ecx

loc_41FD60:
mov	ecx, [ebp+var_C]
mov	eax, esi
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	0Ch
sub_41FBA8 endp



; Attributes: bp-based frame

sub_41FD73 proc	near

Memory=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_4462BC
call	__EH_prolog
sub	esp, 0Ch
push	esi
push	edi
mov	edi, ecx
xor	esi, esi
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+Memory], esi
mov	[ebp+var_14], esi
mov	[ebp+var_10], esi
call	sub_403396
lea	eax, [ebp+Memory]
mov	ecx, edi
push	eax
mov	[ebp+var_4], esi
push	[ebp+arg_4]
push	[ebp+arg_0]
call	sub_41FBA8
push	[ebp+Memory]	; Memory
mov	esi, eax
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	8
sub_41FD73 endp




sub_41FDCA proc	near

var_4= dword ptr -4
arg_0= dword ptr  4

push	ecx
push	ebx
mov	ebx, [ecx+8]
push	ebp
xor	ebp, ebp
push	esi
push	edi
test	ebx, ebx
mov	[esp+14h+var_4], ecx
jz	short loc_41FE1F
jmp	short loc_41FDE2

loc_41FDDE:
mov	ecx, [esp+14h+var_4]

loc_41FDE2:
lea	eax, [ebx+ebp]
cdq
sub	eax, edx
mov	esi, eax
mov	eax, [ecx+0Ch]
sar	esi, 1
mov	edi, [eax+esi*4]
mov	eax, [esp+14h+arg_0]
mov	edx, [edi]
mov	ecx, [eax]
call	sub_42828A
test	eax, eax
jz	short loc_41FE2A
mov	eax, [esp+14h+arg_0]
mov	edx, [edi]
mov	ecx, [eax]
call	sub_42828A
test	eax, eax
jge	short loc_41FE18
mov	ebx, esi
jmp	short loc_41FE1B

loc_41FE18:
lea	ebp, [esi+1]

loc_41FE1B:
cmp	ebp, ebx
jnz	short loc_41FDDE

loc_41FE1F:
or	eax, 0FFFFFFFFh

loc_41FE22:
pop	edi
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn	4

loc_41FE2A:
mov	eax, esi
jmp	short loc_41FE22
sub_41FDCA endp




sub_41FE2E proc	near

var_4= dword ptr -4
arg_0= dword ptr  4

push	ecx
and	[esp+4+var_4], 0
push	ebx
push	ebp
mov	ebp, ecx
push	esi
push	edi
mov	edi, [ebp+8]
test	edi, edi
jz	short loc_41FE8A

loc_41FE41:
mov	eax, [esp+14h+var_4]
add	eax, edi
cdq
sub	eax, edx
mov	esi, eax
mov	eax, [ebp+0Ch]
sar	esi, 1
mov	ebx, [eax+esi*4]
mov	eax, [esp+14h+arg_0]
mov	edx, [ebx]
mov	ecx, [eax]
call	sub_42828A
test	eax, eax
jz	short loc_41FE87
mov	eax, [esp+14h+arg_0]
mov	edx, [ebx]
mov	ecx, [eax]
call	sub_42828A
test	eax, eax
jge	short loc_41FE7A
mov	edi, esi
jmp	short loc_41FE7F

loc_41FE7A:
inc	esi
mov	[esp+14h+var_4], esi

loc_41FE7F:
cmp	[esp+14h+var_4], edi
jnz	short loc_41FE41
jmp	short loc_41FE8A

loc_41FE87:
lea	edi, [esi+1]

loc_41FE8A:
push	[esp+14h+arg_0]
mov	ecx, ebp
push	edi
call	sub_41FF31
mov	eax, edi
pop	edi
pop	esi
pop	ebp
pop	ebx
pop	ecx
retn	4
sub_41FE2E endp




sub_41FEA0 proc	near

arg_0= dword ptr  4

push	ebx
push	ebp
push	esi
mov	esi, [ecx+8]
push	edi
xor	edi, edi
test	esi, esi
jz	short loc_41FED4
mov	eax, [esp+10h+arg_0]
mov	ebx, [ecx+0Ch]
mov	ebp, [eax]

loc_41FEB6:
lea	eax, [esi+edi]
cdq
sub	eax, edx
sar	eax, 1
mov	ecx, [ebx+eax*4]
mov	ecx, [ecx]
cmp	ebp, ecx
jz	short loc_41FED7
jnb	short loc_41FECD
mov	esi, eax
jmp	short loc_41FED0

loc_41FECD:
lea	edi, [eax+1]

loc_41FED0:
cmp	edi, esi
jnz	short loc_41FEB6

loc_41FED4:
or	eax, 0FFFFFFFFh

loc_41FED7:
pop	edi
pop	esi
pop	ebp
pop	ebx
retn	4
sub_41FEA0 endp



; Attributes: bp-based frame

sub_41FEDE proc	near

var_4= dword ptr -4
arg_0= dword ptr  8

push	ebp
mov	ebp, esp
push	ecx
push	ebx
push	esi
mov	esi, [ecx+8]
push	edi
xor	edi, edi
mov	[ebp+var_4], ecx
test	esi, esi
jz	short loc_41FF1C
mov	eax, [ebp+arg_0]
mov	ebx, [ecx+0Ch]
mov	ecx, [eax]

loc_41FEF9:
lea	eax, [esi+edi]
cdq
sub	eax, edx
sar	eax, 1
mov	edx, [ebx+eax*4]
mov	edx, [edx]
cmp	ecx, edx
jz	short loc_41FF19
jnb	short loc_41FF10
mov	esi, eax
jmp	short loc_41FF13

loc_41FF10:
lea	edi, [eax+1]

loc_41FF13:
cmp	edi, esi
jnz	short loc_41FEF9
jmp	short loc_41FF1C

loc_41FF19:
lea	esi, [eax+1]

loc_41FF1C:
push	[ebp+arg_0]
mov	ecx, [ebp+var_4]
push	esi
call	sub_41FF87
mov	eax, esi
pop	edi
pop	esi
pop	ebx
leave
retn	4
sub_41FEDE endp



; Attributes: bp-based frame

sub_41FF31 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset unknown_libname_26 ; Microsoft VisualC 2-11/net runtime
call	__EH_prolog
push	ecx
push	ebx
push	esi
push	edi
mov	ebx, ecx
push	1Ch		; Size
call	sub_4284B1
pop	ecx
mov	ecx, eax
mov	[ebp+var_10], ecx
xor	esi, esi
cmp	ecx, esi
mov	[ebp+var_4], esi
jz	short loc_41FF61
push	[ebp+arg_4]
call	sub_41FFEF
mov	esi, eax

loc_41FF61:
mov	edi, [ebp+arg_0]
or	[ebp+var_4], 0FFFFFFFFh
push	edi
mov	ecx, ebx
call	sub_428462
mov	eax, [ebx+0Ch]
mov	ecx, [ebp+var_C]
mov	[eax+edi*4], esi
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	8
sub_41FF31 endp



; Attributes: bp-based frame

sub_41FF87 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset unknown_libname_27 ; Microsoft VisualC 2-11/net runtime
call	__EH_prolog
push	ecx
push	ebx
push	esi
push	edi
mov	ebx, ecx
push	14h		; Size
call	sub_4284B1
mov	esi, eax
pop	ecx
mov	[ebp+var_10], esi
and	[ebp+var_4], 0
test	esi, esi
jz	short loc_41FFC7
mov	eax, [ebp+arg_4]
mov	ecx, [eax]
add	eax, 8
mov	[esi], ecx
mov	ecx, [eax-4]
mov	[esi+4], ecx
push	eax
lea	ecx, [esi+8]
call	sub_4030F2
jmp	short loc_41FFC9

loc_41FFC7:
xor	esi, esi

loc_41FFC9:
mov	edi, [ebp+arg_0]
or	[ebp+var_4], 0FFFFFFFFh
push	edi
mov	ecx, ebx
call	sub_428462
mov	eax, [ebx+0Ch]
mov	ecx, [ebp+var_C]
mov	[eax+edi*4], esi
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	8
sub_41FF87 endp



; Attributes: bp-based frame

sub_41FFEF proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_4462F8
call	__EH_prolog
push	ecx
push	esi
push	edi
mov	edi, [ebp+arg_0]
mov	esi, ecx
push	edi
mov	[ebp+var_10], esi
call	sub_4030F2
mov	eax, [edi+0Ch]
and	[ebp+var_4], 0
add	edi, 10h
lea	ecx, [esi+10h]
push	edi
mov	[esi+0Ch], eax
call	sub_4030F2
mov	ecx, [ebp+var_C]
mov	eax, esi
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_41FFEF endp




sub_420032 proc	near
push	0
push	offset loc_42003F
call	sub_43748B
retn

loc_42003F:
mov	edx, [edx]
mov	ecx, [ecx]
call	loc_42004B
retn	4

loc_42004B:
jmp	$+5
sub_420032 endp




sub_420050 proc	near
mov	edx, [edx]
mov	ecx, [ecx]
jmp	sub_4282B1
sub_420050 endp



; Attributes: bp-based frame

sub_420059 proc	near

var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push	ebp
mov	ebp, esp
push	ecx
push	ebx
push	esi
push	edi
mov	edi, [ecx+8]
xor	ebx, ebx
mov	[ebp+var_4], ecx
test	edi, edi
jz	short loc_42009A
jmp	short loc_420071

loc_42006E:
mov	ecx, [ebp+var_4]

loc_420071:
lea	eax, [edi+ebx]
cdq
sub	eax, edx
mov	esi, eax
mov	eax, [ecx+0Ch]
mov	ecx, [ebp+arg_0]
sar	esi, 1
mov	edx, [eax+esi*4]
call	sub_420050
test	eax, eax
jz	short loc_4200A9
jge	short loc_420093
mov	edi, esi
jmp	short loc_420096

loc_420093:
lea	ebx, [esi+1]

loc_420096:
cmp	ebx, edi
jnz	short loc_42006E

loc_42009A:
mov	eax, [ebp+arg_4]
mov	[eax], ebx
or	eax, 0FFFFFFFFh

loc_4200A2:
pop	edi
pop	esi
pop	ebx
leave
retn	8

loc_4200A9:
mov	eax, esi
jmp	short loc_4200A2
sub_420059 endp



; Attributes: bp-based frame

sub_4200AD proc	near

arg_0= dword ptr  8

push	ebp
mov	ebp, esp
lea	eax, [ebp+arg_0]
push	eax
push	[ebp+arg_0]
call	sub_420059
pop	ebp
retn	4
sub_4200AD endp



; Attributes: bp-based frame

sub_4200C0 proc	near

arg_0= dword ptr  8

push	ebp
mov	ebp, esp
push	esi
push	edi
mov	edi, [ebp+arg_0]
lea	eax, [ebp+arg_0]
push	eax
mov	esi, ecx
push	edi
call	sub_420059
test	eax, eax
jl	short loc_4200F4
mov	ecx, [esi+0Ch]
push	edi
mov	esi, [ecx+eax*4]
mov	ecx, esi
call	sub_40312C
add	edi, 0Ch
lea	ecx, [esi+0Ch]
push	edi
call	sub_40312C
jmp	short loc_4200FF

loc_4200F4:
push	edi
mov	ecx, esi
push	[ebp+arg_0]
call	sub_42052C

loc_4200FF:
pop	edi
pop	esi
pop	ebp
retn	4
sub_4200C0 endp




sub_420105 proc	near

arg_0= dword ptr  4

push	esi
mov	esi, ecx
push	[esp+4+arg_0]
call	sub_4200AD
test	eax, eax
jl	short loc_42011F
mov	edx, [esi]
push	1
push	eax
mov	ecx, esi
call	dword ptr [edx+4]

loc_42011F:
pop	esi
retn	4
sub_420105 endp




sub_420123 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	esi
mov	esi, [esp+4+arg_4]
push	edi
mov	edi, ecx
mov	eax, [esi]
push	[esp+8+arg_0]
and	dword ptr [esi+4], 0
and	word ptr [eax],	0
call	sub_4200AD
test	eax, eax
jge	short loc_420146
xor	al, al
jmp	short loc_420159

loc_420146:
mov	ecx, [edi+0Ch]
mov	eax, [ecx+eax*4]
mov	ecx, esi
add	eax, 0Ch
push	eax
call	sub_40312C
mov	al, 1

loc_420159:
pop	edi
pop	esi
retn	8
sub_420123 endp




sub_42015E proc	near

arg_0= dword ptr  4

push	ebx
push	esi
mov	esi, ecx
mov	ecx, [esp+8+arg_0]
mov	edx, esi
call	sub_420188
mov	bl, al
mov	ecx, esi
test	bl, bl
jz	short loc_42017C
call	sub_420032
jmp	short loc_420181

loc_42017C:
call	sub_428327

loc_420181:
mov	al, bl
pop	esi
pop	ebx
retn	4
sub_42015E endp



; Attributes: bp-based frame

sub_420188 proc	near

var_44=	dword ptr -44h
var_38=	dword ptr -38h
var_2C=	dword ptr -2Ch
Memory=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_44631C
call	__EH_prolog
sub	esp, 38h
push	esi
push	edi
mov	edi, ecx
mov	[ebp+var_14], edx
mov	ecx, edx
call	sub_428327
mov	eax, [edi+4]
xor	esi, esi
test	eax, eax
jle	short loc_4201B8
mov	ecx, [edi]
cmp	word ptr [ecx],	0FEFFh
jnz	short loc_4201B8
push	1
pop	esi

loc_4201B8:
cmp	esi, eax
jge	loc_42026B

loc_4201C0:
mov	eax, [edi]
lea	ecx, [ebp+var_10]
push	ecx
lea	ecx, [ebp+Memory]
lea	edx, [eax+esi*2]
call	sub_42027B
and	[ebp+var_4], 0
add	esi, [ebp+var_10]
cmp	[ebp+var_1C], 0
jnz	short loc_4201EC
push	[ebp+Memory]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
jmp	short loc_420261

loc_4201EC:
mov	eax, [edi]
lea	ecx, [ebp+var_10]
push	ecx
lea	ecx, [ebp+var_2C]
lea	edx, [eax+esi*2]
call	sub_4203AF
add	esi, [ebp+var_10]
cmp	[ebp+var_1C], 0
mov	byte ptr [ebp+var_4], 1
jz	short loc_42024C
lea	ecx, [ebp+var_44]
call	sub_4093FC
lea	eax, [ebp+Memory]
lea	ecx, [ebp+var_44]
push	eax
mov	byte ptr [ebp+var_4], 2
call	sub_40312C
lea	eax, [ebp+var_2C]
lea	ecx, [ebp+var_38]
push	eax
call	sub_40312C
mov	ecx, [ebp+var_14]
lea	eax, [ebp+var_44]
push	eax
call	sub_4204CB
push	[ebp+var_38]	; Memory
call	sub_4284D8
push	[ebp+var_44]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx

loc_42024C:		; Memory
push	[ebp+var_2C]
call	sub_4284D8
push	[ebp+Memory]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
pop	ecx

loc_420261:
cmp	esi, [edi+4]
pop	ecx
jl	loc_4201C0

loc_42026B:
mov	ecx, [ebp+var_C]
pop	edi
mov	al, 1
pop	esi
mov	large fs:0, ecx
leave
retn
sub_420188 endp



; Attributes: bp-based frame

sub_42027B proc	near

Memory=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_D= byte ptr	-0Dh
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_446330
call	__EH_prolog
sub	esp, 1Ch
push	ebx
push	esi
mov	[ebp+var_14], ecx
push	edi
mov	esi, edx
xor	ebx, ebx
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+var_18], esi
mov	[ebp+var_1C], ebx
mov	[ebp+Memory], ebx
mov	[ebp+var_24], ebx
mov	[ebp+var_20], ebx
call	sub_403396
mov	edi, [ebp+arg_0]
mov	[ebp+var_4], ebx
mov	[ebp+var_D], bl
mov	[edi], ebx
mov	si, [esi]

loc_4202B9:
cmp	si, bx
jz	short loc_4202FB
inc	dword ptr [edi]
mov	ecx, esi
call	sub_42033C
cmp	si, 0Ah
jz	short loc_4202FB
cmp	al, bl
jz	short loc_4202D6
cmp	[ebp+var_D], bl
jz	short loc_4202FB

loc_4202D6:
cmp	si, 22h
jnz	short loc_4202E7
cmp	[ebp+var_D], bl
jnz	short loc_4202FB
mov	[ebp+var_D], 1
jmp	short loc_4202F0

loc_4202E7:
push	esi
lea	ecx, [ebp+Memory]
call	sub_40316A

loc_4202F0:
mov	eax, [edi]
mov	ecx, [ebp+var_18]
mov	si, [ecx+eax*2]
jmp	short loc_4202B9

loc_4202FB:
lea	ecx, [ebp+Memory]
call	sub_406F3F
lea	ecx, [ebp+Memory]
call	sub_406F04
lea	ecx, [ebp+Memory]
call	sub_42034F
mov	ecx, [ebp+var_14]
lea	eax, [ebp+Memory]
push	eax
call	sub_4030F2
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	eax, [ebp+var_14]
pop	ecx
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_42027B endp




sub_42033C proc	near
cmp	cx, 20h
jz	short loc_42034B
cmp	cx, 9
jz	short loc_42034B
xor	eax, eax
retn

loc_42034B:
push	1
pop	eax
retn
sub_42033C endp



; Attributes: bp-based frame

sub_42034F proc	near

var_24=	dword ptr -24h
Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_44634C
call	__EH_prolog
sub	esp, 18h
push	esi
mov	esi, ecx
push	offset word_45D498
lea	ecx, [ebp+var_24]
call	sub_403091
and	[ebp+var_4], 0
push	offset asc_45C15C ; "\r"
lea	ecx, [ebp+Memory]
call	sub_403091
lea	eax, [ebp+var_24]
mov	ecx, esi
push	eax
lea	eax, [ebp+Memory]
push	eax
mov	byte ptr [ebp+var_4], 1
call	sub_407494
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_24]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx
pop	esi
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn
sub_42034F endp



; Attributes: bp-based frame

sub_4203AF proc	near

Memory=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_446360
call	__EH_prolog
sub	esp, 14h
push	ebx
push	esi
mov	[ebp+var_10], ecx
push	edi
xor	ebx, ebx
mov	edi, edx
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+var_14], ebx
mov	[ebp+Memory], ebx
mov	[ebp+var_1C], ebx
mov	[ebp+var_18], ebx
call	sub_403396
mov	esi, [ebp+arg_0]
mov	[ebp+var_4], ebx
mov	[esi], ebx
mov	ax, [edi]

loc_4203E7:
cmp	ax, bx
jz	short loc_420405
inc	dword ptr [esi]
cmp	ax, 0Ah
jz	short loc_420405
push	eax
lea	ecx, [ebp+Memory]
call	sub_40316A
mov	eax, [esi]
mov	ax, [edi+eax*2]
jmp	short loc_4203E7

loc_420405:
lea	ecx, [ebp+Memory]
call	sub_406F3F
lea	ecx, [ebp+Memory]
call	sub_406F04
lea	ecx, [ebp+Memory]
call	sub_42034F
mov	ecx, [ebp+var_10]
lea	eax, [ebp+Memory]
push	eax
call	sub_4030F2
push	[ebp+Memory]	; Memory
call	sub_4284D8
mov	eax, [ebp+var_10]
pop	ecx
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_4203AF endp



; Attributes: bp-based frame

sub_420446 proc	near

var_1= byte ptr	-1
arg_0= dword ptr  8

push	ebp
mov	ebp, esp
push	ecx
push	ebx
push	edi
mov	edi, ecx
xor	ebx, ebx
cmp	[edi+8], ebx
jle	short loc_4204C5
push	esi

loc_420456:
mov	eax, [edi+0Ch]
push	20h
mov	esi, [eax+ebx*4]
mov	ecx, esi
call	sub_40706B
test	eax, eax
setnl	[ebp+var_1]
cmp	[ebp+var_1], 0
jz	short loc_42047B
mov	ecx, [ebp+arg_0]
push	22h
call	sub_40316A

loc_42047B:
mov	ecx, [ebp+arg_0]
push	esi
call	sub_4031F2
cmp	[ebp+var_1], 0
jz	short loc_420494
mov	ecx, [ebp+arg_0]
push	22h
call	sub_40316A

loc_420494:
mov	ecx, [ebp+arg_0]
push	20h
call	sub_40316A
mov	ecx, [ebp+arg_0]
add	esi, 0Ch
push	esi
call	sub_4031F2
mov	ecx, [ebp+arg_0]
push	0Dh
call	sub_40316A
mov	ecx, [ebp+arg_0]
push	0Ah
call	sub_40316A
inc	ebx
cmp	ebx, [edi+8]
jl	short loc_420456
pop	esi

loc_4204C5:
pop	edi
pop	ebx
leave
retn	4
sub_420446 endp



; Attributes: bp-based frame

sub_4204CB proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_44637E
call	__EH_prolog
push	ecx
push	ebx
push	esi
mov	ebx, ecx
push	18h		; Size
call	sub_4284B1
mov	esi, eax
pop	ecx
mov	[ebp+var_10], esi
and	[ebp+var_4], 0
test	esi, esi
jz	short loc_42050E
push	edi
mov	edi, [ebp+arg_0]
push	edi
mov	ecx, esi
call	sub_4030F2
add	edi, 0Ch
lea	ecx, [esi+0Ch]
push	edi
mov	byte ptr [ebp+var_4], 1
call	sub_4030F2
pop	edi
jmp	short loc_420510

loc_42050E:
xor	esi, esi

loc_420510:
or	[ebp+var_4], 0FFFFFFFFh
push	esi
mov	ecx, ebx
call	sub_429907
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_4204CB endp



; Attributes: bp-based frame

sub_42052C proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_44639A
call	__EH_prolog
push	ecx
push	ebx
push	esi
push	edi
mov	ebx, ecx
push	18h		; Size
call	sub_4284B1
mov	esi, eax
pop	ecx
mov	[ebp+var_10], esi
and	[ebp+var_4], 0
test	esi, esi
jz	short loc_42056E
mov	edi, [ebp+arg_4]
mov	ecx, esi
push	edi
call	sub_4030F2
add	edi, 0Ch
lea	ecx, [esi+0Ch]
push	edi
mov	byte ptr [ebp+var_4], 1
call	sub_4030F2
jmp	short loc_420570

loc_42056E:
xor	esi, esi

loc_420570:
mov	edi, [ebp+arg_0]
or	[ebp+var_4], 0FFFFFFFFh
push	edi
mov	ecx, ebx
call	sub_428462
mov	eax, [ebx+0Ch]
mov	ecx, [ebp+var_C]
mov	[eax+edi*4], esi
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	8
sub_42052C endp




sub_420596 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch

mov	eax, [esp+arg_0]
push	0
push	0
push	[esp+8+arg_8]
mov	ecx, [eax+30h]
add	ecx, 0F0h
push	[esp+0Ch+arg_4]
call	sub_403A30
xor	eax, eax
retn	0Ch
sub_420596 endp




sub_4205B9 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	esi
push	edi
mov	edi, [esp+8+arg_0]
mov	esi, 0F0h
mov	ecx, [edi+30h]
add	ecx, esi
call	sub_422D48
test	eax, eax
jnz	short loc_4205EB
mov	eax, [esp+8+arg_4]
test	eax, eax
jz	short loc_4205E9
push	dword ptr [eax+4]
mov	ecx, [edi+30h]
add	ecx, esi
push	dword ptr [eax]
call	sub_403AA0

loc_4205E9:
xor	eax, eax

loc_4205EB:
pop	edi
pop	esi
retn	8
sub_4205B9 endp




sub_4205F0 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch

mov	eax, [esp+arg_0]
push	[esp+arg_8]
mov	ecx, [eax+20h]
push	[esp+4+arg_4]
add	ecx, 0F0h
call	sub_403B40
xor	eax, eax
retn	0Ch
sub_4205F0 endp



; Attributes: bp-based frame

sub_42060F proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_4463AC
call	__EH_prolog
sub	esp, 0Ch
push	[ebp+arg_4]
lea	ecx, [ebp+Memory]
call	sub_403091
lea	eax, [ebp+Memory]
and	[ebp+var_4], 0
push	eax
mov	eax, [ebp+arg_0]
mov	ecx, [eax+30h]
add	ecx, 0F0h
call	sub_403FE6
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
xor	eax, eax
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn	8
sub_42060F endp



; Attributes: bp-based frame

sub_420659 proc	near

Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_4463C0
call	__EH_prolog
sub	esp, 0Ch
push	[ebp+arg_4]
lea	ecx, [ebp+Memory]
call	sub_403091
lea	eax, [ebp+Memory]
and	[ebp+var_4], 0
push	eax
mov	eax, [ebp+arg_0]
mov	ecx, [eax+30h]
add	ecx, 0F0h
call	sub_403FE6
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
xor	eax, eax
mov	ecx, [ebp+var_C]
mov	large fs:0, ecx
leave
retn	8
sub_420659 endp




sub_4206A3 proc	near

arg_0= dword ptr  4

mov	eax, [esp+arg_0]
add	dword ptr [eax+28h], 1
mov	ecx, [eax+30h]
adc	dword ptr [eax+2Ch], 0
push	dword ptr [eax+2Ch]
add	ecx, 0F0h
push	dword ptr [eax+28h]
call	sub_403EC6
xor	eax, eax
retn	8
sub_4206A3 endp




sub_4206C8 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

mov	eax, [esp+arg_0]
push	[esp+arg_4]
mov	ecx, [eax+30h]
add	ecx, 0F0h
call	sub_403963
xor	eax, eax
retn	8
sub_4206C8 endp




sub_4206E3 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch

mov	eax, [esp+arg_0]
push	esi
mov	esi, [esp+4+arg_8]
xor	ecx, ecx
xor	edx, edx
push	edi
mov	edi, [esp+8+arg_4]
mov	[esi], ecx
cmp	[eax+14h], cl
setnz	dl
mov	[edi], edx
cmp	[eax+14h], cl
jnz	short loc_420708
xor	eax, eax
jmp	short loc_420721

loc_420708:		; psz
push	dword ptr [eax+18h]
call	ds:SysAllocString
mov	[esi], eax
neg	eax
sbb	eax, eax
and	eax, 7FF8FFF2h
add	eax, 8007000Eh

loc_420721:
pop	edi
pop	esi
retn	0Ch
sub_4206E3 endp




sub_420726 proc	near
xor	eax, eax
retn	0Ch
sub_420726 endp




sub_42072B proc	near

arg_0= dword ptr  4

mov	eax, [esp+arg_0]
mov	ecx, [eax+24h]
add	ecx, 0F0h
call	sub_422D48
retn	0Ch
sub_42072B endp



; Attributes: bp-based frame

sub_420740 proc	near

var_24=	byte ptr -24h
Memory=	dword ptr -18h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov	eax, offset loc_4463D4
call	__EH_prolog
sub	esp, 18h
push	ebx
mov	ebx, [ebp+arg_4]
push	esi
mov	esi, [ebp+arg_0]
and	dword ptr [ebx], 0
cmp	byte ptr [esi+10h], 0
jnz	short loc_4207D0
push	edi
lea	ecx, [ebp+var_24]
call	sub_404349
mov	edi, [esi+28h]
and	[ebp+var_4], 0
lea	ecx, [edi+0E4h]
call	sub_4418F0
mov	ecx, [edi+0E8h]	; hHandle
call	sub_441880
mov	eax, [esi+28h]
pop	edi
test	eax, eax
jz	short loc_420791
add	eax, 4
jmp	short loc_420793

loc_420791:
xor	eax, eax

loc_420793:		; hWndParent
push	dword ptr [eax]
lea	ecx, [ebp+var_24]
push	1F5h		; lpTemplateName
call	sub_42FCF7
cmp	eax, 2
jnz	short loc_4207B7
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, 80004004h
jmp	short loc_4207E9

loc_4207B7:
lea	eax, [ebp+Memory]
lea	ecx, [esi+14h]
push	eax
call	sub_40312C
push	[ebp+Memory]	; Memory
mov	byte ptr [esi+10h], 1
call	sub_4284D8
pop	ecx

loc_4207D0:		; psz
push	dword ptr [esi+14h]
call	ds:SysAllocString
mov	[ebx], eax
neg	eax
sbb	eax, eax
and	eax, 7FF8FFF2h
add	eax, 8007000Eh

loc_4207E9:
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	8
sub_420740 endp

call	sub_420803
jmp	loc_42080D



sub_420803 proc	near
mov	ecx, offset CriticalSection ; lpCriticalSection
jmp	sub_441910
sub_420803 endp


loc_42080D:
push	offset loc_420819
call	_atexit
pop	ecx
retn

loc_420819:
push	offset CriticalSection
call	ds:DeleteCriticalSection
retn


; Attributes: bp-based frame

sub_420825 proc	near

var_40=	dword ptr -40h
var_3C=	dword ptr -3Ch
lpData=	dword ptr -38h
var_34=	dword ptr -34h
var_30=	dword ptr -30h
Memory=	dword ptr -2Ch
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_446400
call	__EH_prolog
sub	esp, 34h
push	ebx
push	esi
xor	ebx, ebx
push	edi
mov	edi, edx
mov	[ebp+var_20], ecx
mov	[ebp+var_3C], ebx
mov	[ebp+lpData], ebx
mov	[ebp+var_40], offset off_44C434
mov	eax, [edi+8]
lea	ecx, [ebp+var_40]
mov	[ebp+var_4], ebx
lea	esi, [eax+eax*2+3]
shl	esi, 2
push	esi		; Size
call	sub_41B339
mov	[ebp+var_34], esi
mov	[ebp+var_30], ebx
mov	[ebp+var_10], 1
mov	[ebp+var_14], 4

loc_420873:
push	[ebp+var_10]
lea	ecx, [ebp+var_40]
call	sub_4209B9
shr	[ebp+var_10], 8
dec	[ebp+var_14]
jnz	short loc_420873
mov	eax, [edi+14h]
mov	[ebp+var_14], 4
mov	[ebp+var_10], eax

loc_420894:
push	[ebp+var_10]
lea	ecx, [ebp+var_40]
call	sub_4209B9
shr	[ebp+var_10], 8
dec	[ebp+var_14]
jnz	short loc_420894
mov	al, [edi+18h]
xor	ecx, ecx
cmp	al, bl
setnz	cl
push	ecx
lea	ecx, [ebp+var_40]
call	sub_4209EB
cmp	[edi+8], ebx
mov	[ebp+var_10], ebx
jle	short loc_42092D

loc_4208C3:
mov	eax, [edi+0Ch]
mov	ecx, [ebp+var_10]
mov	[ebp+var_18], 4
mov	eax, [eax+ecx*4]
mov	[ebp+var_1C], eax
mov	eax, [eax]
mov	[ebp+var_14], eax

loc_4208DB:
push	[ebp+var_14]
lea	ecx, [ebp+var_40]
call	sub_4209B9
shr	[ebp+var_14], 8
dec	[ebp+var_18]
jnz	short loc_4208DB
mov	eax, [ebp+var_1C]
lea	ecx, [ebp+var_40]
mov	al, [eax+4]
push	eax
call	sub_420A0A
mov	eax, [ebp+var_1C]
mov	[ebp+var_1C], 4
mov	eax, [eax+8]
mov	[ebp+var_14], eax

loc_42090E:
push	[ebp+var_14]
lea	ecx, [ebp+var_40]
call	sub_4209B9
shr	[ebp+var_14], 8
dec	[ebp+var_1C]
jnz	short loc_42090E
inc	[ebp+var_10]
mov	eax, [ebp+var_10]
cmp	eax, [edi+8]
jl	short loc_4208C3

loc_42092D:
mov	edi, offset CriticalSection
push	edi		; lpCriticalSection
mov	[ebp+var_1C], edi
call	ds:EnterCriticalSection
mov	[ebp+var_14], ebx
push	ebx		; int
push	ebx		; dwDisposition
push	0F003Fh		; samDesired
push	ebx		; dwOptions
push	ebx		; lpClass
lea	ecx, [ebp+var_14]
push	off_45C164	; lpSubKey
mov	byte ptr [ebp+var_4], 2
push	80000001h	; hKey
call	sub_42D30D
mov	edx, [ebp+var_20]
mov	ebx, [ebp+lpData]
lea	ecx, [ebp+Memory]
call	sub_43A785
mov	eax, [eax]
push	esi		; cbData
push	ebx		; lpData
push	eax		; lpValueName
lea	ecx, [ebp+var_14]
mov	byte ptr [ebp+var_4], 3
call	sub_42D5CE
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 1
lea	ecx, [ebp+var_14]
call	sub_42D390
push	edi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	[ebp+var_40], offset off_44C434
push	[ebp+lpData]	; Memory
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_420825 endp



; Attributes: bp-based frame

sub_4209B9 proc	near

arg_0= dword ptr  8

push	ebp
mov	ebp, esp
mov	eax, [ecx+10h]
cmp	eax, [ecx+0Ch]
jb	short loc_4209D9
lea	eax, [ebp+arg_0]
push	offset unk_452D38
push	eax
mov	[ebp+arg_0], offset aOverflow ;	"overflow"
call	_CxxThrowException

loc_4209D9:
mov	edx, [ecx+8]
push	ebx
mov	bl, byte ptr [ebp+arg_0]
mov	[edx+eax], bl
inc	dword ptr [ecx+10h]
pop	ebx
pop	ebp
retn	4
sub_4209B9 endp




sub_4209EB proc	near

arg_0= dword ptr  4

push	esi
push	edi
push	4
mov	edi, ecx
pop	esi

loc_4209F2:
push	[esp+8+arg_0]
mov	ecx, edi
call	sub_4209B9
shr	[esp+8+arg_0], 8
dec	esi
jnz	short loc_4209F2
pop	edi
pop	esi
retn	4
sub_4209EB endp




sub_420A0A proc	near

arg_0= byte ptr	 4

xor	eax, eax
push	ebx
cmp	[esp+4+arg_0], al
push	esi
push	edi
push	4
setnz	al
mov	ebx, ecx
mov	esi, eax
pop	edi

loc_420A1D:
push	esi
mov	ecx, ebx
call	sub_4209B9
shr	esi, 8
dec	edi
jnz	short loc_420A1D
pop	edi
pop	esi
pop	ebx
retn	4
sub_420A0A endp



; Attributes: bp-based frame

sub_420A31 proc	near

Memory=	dword ptr -44h
var_40=	byte ptr -40h
var_3C=	dword ptr -3Ch
var_38=	dword ptr -38h
var_34=	dword ptr -34h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
cbData=	dword ptr -18h
var_14=	dword ptr -14h
var_D= byte ptr	-0Dh
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_44642C
call	__EH_prolog
sub	esp, 38h
push	ebx
push	esi
mov	ebx, edx
mov	[ebp+var_1C], ecx
xor	esi, esi
push	edi
mov	ecx, ebx
mov	[ebx+14h], esi
mov	byte ptr [ebx+18h], 1
call	sub_428327
mov	edi, offset off_44C434
mov	[ebp+var_28], esi
mov	[ebp+var_24], esi
mov	[ebp+var_2C], edi
mov	[ebp+var_4], esi
mov	esi, offset CriticalSection
push	esi		; lpCriticalSection
mov	[ebp+var_20], esi
call	ds:EnterCriticalSection
and	[ebp+var_14], 0
push	20019h		; samDesired
lea	ecx, [ebp+var_14]
push	off_45C164	; lpSubKey
mov	byte ptr [ebp+var_4], 2
push	80000001h	; hKey
call	sub_42D35B
test	eax, eax
jz	short loc_420AA3
mov	byte ptr [ebp+var_4], 1
lea	ecx, [ebp+var_14]
jmp	short loc_420AE1

loc_420AA3:
mov	edx, [ebp+var_1C]
lea	ecx, [ebp+Memory]
call	sub_43A785
mov	eax, [eax]
lea	ecx, [ebp+cbData]
push	ecx		; lpcbData
lea	ecx, [ebp+var_2C]
push	ecx		; int
push	eax		; lpValueName
lea	ecx, [ebp+var_14]
mov	byte ptr [ebp+var_4], 3
call	sub_42D887
test	eax, eax
push	[ebp+Memory]	; Memory
setnz	[ebp+var_D]
call	sub_4284D8
cmp	[ebp+var_D], 0
pop	ecx
mov	byte ptr [ebp+var_4], 1
lea	ecx, [ebp+var_14]
jz	short loc_420AF2

loc_420AE1:
call	sub_42D390
push	esi		; lpCriticalSection
call	ds:LeaveCriticalSection
jmp	loc_420BBF

loc_420AF2:
call	sub_42D390
and	byte ptr [ebp+var_4], 0
push	esi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	eax, [ebp+cbData]
push	0Ch
pop	esi
cmp	eax, esi
jb	loc_420BBF
and	[ebp+var_30], 0
mov	[ebp+var_34], eax
mov	eax, [ebp+var_24]
lea	ecx, [ebp+var_38]
mov	[ebp+var_38], eax
call	sub_420BDA
cmp	eax, 1
jnz	loc_420BBF
lea	ecx, [ebp+var_38]
call	sub_420BDA
lea	ecx, [ebp+var_38]
mov	[ebx+14h], eax
call	sub_420BDA
test	eax, eax
setnz	al
sub	[ebp+cbData], esi
mov	[ebx+18h], al
mov	eax, [ebp+cbData]
xor	edx, edx
mov	ecx, esi
div	ecx
test	edx, edx
jnz	short loc_420BBF
mov	eax, [ebp+cbData]
mov	ecx, ebx
div	esi
mov	esi, eax
push	esi
call	sub_428378
test	esi, esi
jle	short loc_420BBF
mov	[ebp+var_14], esi

loc_420B6F:
lea	ecx, [ebp+var_38]
call	sub_420BDA
lea	ecx, [ebp+var_38]
mov	[ebp+Memory], eax
call	sub_420BDA
test	eax, eax
setnz	al
lea	ecx, [ebp+var_38]
mov	[ebp+var_40], al
call	sub_420BDA
mov	[ebp+var_3C], eax
push	0Ch		; Size
call	sub_4284B1
test	eax, eax
pop	ecx
jz	short loc_420BB0
lea	esi, [ebp+Memory]
mov	edi, eax
movsd
movsd
movsd
mov	edi, offset off_44C434
jmp	short loc_420BB2

loc_420BB0:
xor	eax, eax

loc_420BB2:
push	eax
mov	ecx, ebx
call	sub_429907
dec	[ebp+var_14]
jnz	short loc_420B6F

loc_420BBF:		; Memory
push	[ebp+var_24]
mov	[ebp+var_2C], edi
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_420A31 endp




sub_420BDA proc	near
push	ebx
push	esi
push	edi
xor	edi, edi
mov	ebx, ecx
xor	esi, esi

loc_420BE3:
mov	ecx, ebx
call	sub_420C01
movzx	eax, al
mov	ecx, esi
add	esi, 8
shl	eax, cl
or	edi, eax
cmp	esi, 20h
jl	short loc_420BE3
mov	eax, edi
pop	edi
pop	esi
pop	ebx
retn
sub_420BDA endp



; Attributes: bp-based frame

sub_420C01 proc	near

var_4= dword ptr -4

push	ebp
mov	ebp, esp
push	ecx
mov	edx, [ecx+8]
cmp	edx, [ecx+4]
jb	short loc_420C22
lea	eax, [ebp+var_4]
push	offset unk_452D38
push	eax
mov	[ebp+var_4], offset aOverflow ;	"overflow"
call	_CxxThrowException

loc_420C22:
mov	eax, [ecx]
mov	al, [edx+eax]
inc	edx
mov	[ecx+8], edx
leave
retn
sub_420C01 endp



; Attributes: bp-based frame

sub_420C2D proc	near

var_3C=	dword ptr -3Ch
var_38=	dword ptr -38h
lpData=	dword ptr -34h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
Memory=	dword ptr -28h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_446458
call	__EH_prolog
sub	esp, 30h
push	ebx
push	esi
push	edi
mov	ebx, ecx
push	off_45C160
mov	[ebp+var_18], edx
lea	ecx, [ebp+Memory]
call	sub_41E0DD
mov	edi, offset CriticalSection
xor	esi, esi
push	edi		; lpCriticalSection
mov	[ebp+var_4], esi
mov	[ebp+var_1C], edi
call	ds:EnterCriticalSection
mov	[ebp+var_10], esi
push	esi		; int
push	esi		; dwDisposition
push	0F003Fh		; samDesired
push	esi		; dwOptions
push	esi		; lpClass
lea	ecx, [ebp+var_10]
push	[ebp+Memory]	; lpSubKey
mov	byte ptr [ebp+var_4], 2
push	80000001h	; hKey
call	sub_42D30D
mov	[ebp+var_38], esi
mov	[ebp+lpData], esi
mov	[ebp+var_3C], offset off_44C434
push	14h		; Size
lea	ecx, [ebp+var_3C]
mov	byte ptr [ebp+var_4], 3
call	sub_41B339
mov	[ebp+var_2C], esi
mov	esi, [ebx]
mov	[ebp+var_30], 14h
mov	[ebp+var_14], 4

loc_420CB2:
push	esi
lea	ecx, [ebp+var_3C]
call	sub_4209B9
shr	esi, 8
dec	[ebp+var_14]
jnz	short loc_420CB2
mov	esi, [ebx+4]
mov	[ebp+var_14], 4

loc_420CCD:
push	esi
lea	ecx, [ebp+var_3C]
call	sub_4209B9
shr	esi, 8
dec	[ebp+var_14]
jnz	short loc_420CCD
mov	esi, [ebx+8]
mov	[ebp+var_14], 4

loc_420CE8:
push	esi
lea	ecx, [ebp+var_3C]
call	sub_4209B9
shr	esi, 8
dec	[ebp+var_14]
jnz	short loc_420CE8
mov	ebx, [ebx+0Ch]
push	4
pop	esi

loc_420CFF:
push	ebx
lea	ecx, [ebp+var_3C]
call	sub_4209B9
shr	ebx, 8
dec	esi
jnz	short loc_420CFF
push	[ebp+var_18]
lea	ecx, [ebp+var_3C]
call	sub_420A0A
lea	ecx, [ebp+var_10]
push	14h		; cbData
push	[ebp+lpData]	; lpData
push	off_45C168	; lpValueName
call	sub_42D5CE
mov	[ebp+var_3C], offset off_44C434
push	[ebp+lpData]	; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 1
lea	ecx, [ebp+var_10]
call	sub_42D390
push	edi		; lpCriticalSection
call	ds:LeaveCriticalSection
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_420C2D endp



; Attributes: bp-based frame

sub_420D67 proc	near

lpSubKey= dword	ptr -3Ch
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
Memory=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
cbData=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_446484
call	__EH_prolog
sub	esp, 30h
push	ebx
push	esi
push	edi
mov	esi, ecx
push	off_45C160
mov	ebx, edx
lea	ecx, [ebp+lpSubKey]
call	sub_41E0DD
and	[ebp+var_4], 0
mov	edi, offset CriticalSection
push	edi		; lpCriticalSection
mov	[ebp+var_18], edi
call	ds:EnterCriticalSection
and	[ebp+var_10], 0
push	20019h		; samDesired
lea	ecx, [ebp+var_10]
push	[ebp+lpSubKey]	; lpSubKey
mov	byte ptr [ebp+var_4], 2
push	80000001h	; hKey
call	sub_42D35B
test	eax, eax
jz	short loc_420DC4
xor	bl, bl
jmp	loc_420E56

loc_420DC4:
and	[ebp+var_2C], 0
and	[ebp+Memory], 0
mov	[ebp+var_30], offset off_44C434
lea	eax, [ebp+cbData]
lea	ecx, [ebp+var_10]
push	eax		; lpcbData
lea	eax, [ebp+var_30]
push	eax		; int
mov	byte ptr [ebp+var_4], 3
push	off_45C168	; lpValueName
call	sub_42D887
test	eax, eax
jz	short loc_420DF5

loc_420DF1:
xor	bl, bl
jmp	short loc_420E46

loc_420DF5:
push	14h
pop	eax
cmp	[ebp+cbData], eax
jnz	short loc_420DF1
and	[ebp+var_1C], 0
mov	[ebp+var_20], eax
mov	eax, [ebp+Memory]
lea	ecx, [ebp+var_24]
mov	[ebp+var_24], eax
call	sub_420BDA
lea	ecx, [ebp+var_24]
mov	[esi], eax
call	sub_420BDA
lea	ecx, [ebp+var_24]
mov	[esi+4], eax
call	sub_420BDA
lea	ecx, [ebp+var_24]
mov	[esi+8], eax
call	sub_420BDA
lea	ecx, [ebp+var_24]
mov	[esi+0Ch], eax
call	sub_420BDA
test	eax, eax
setnz	al
mov	[ebx], al
mov	bl, 1

loc_420E46:		; Memory
push	[ebp+Memory]
mov	[ebp+var_30], offset off_44C434
call	sub_4284D8
pop	ecx

loc_420E56:
lea	ecx, [ebp+var_10]
mov	byte ptr [ebp+var_4], 1
call	sub_42D390
push	edi		; lpCriticalSection
call	ds:LeaveCriticalSection
push	[ebp+lpSubKey]	; Memory
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
mov	al, bl
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_420D67 endp



; Attributes: bp-based frame

sub_420E83 proc	near

var_3C=	dword ptr -3Ch
var_38=	dword ptr -38h
lpData=	dword ptr -34h
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
Memory=	dword ptr -28h
var_1C=	dword ptr -1Ch
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_4464B0
call	__EH_prolog
sub	esp, 30h
push	ebx
push	esi
push	edi
mov	[ebp+var_14], ecx
push	off_45C160
mov	[ebp+var_18], edx
lea	ecx, [ebp+Memory]
call	sub_41E0DD
mov	edi, offset CriticalSection
xor	esi, esi
push	edi		; lpCriticalSection
mov	[ebp+var_4], esi
mov	[ebp+var_1C], edi
call	ds:EnterCriticalSection
mov	[ebp+var_10], esi
push	esi		; int
push	esi		; dwDisposition
push	0F003Fh		; samDesired
push	esi		; dwOptions
push	esi		; lpClass
lea	ecx, [ebp+var_10]
push	[ebp+Memory]	; lpSubKey
mov	byte ptr [ebp+var_4], 2
push	80000001h	; hKey
call	sub_42D30D
mov	ebx, offset off_44C434
mov	[ebp+var_38], esi
mov	[ebp+lpData], esi
mov	[ebp+var_3C], ebx
push	0Ch		; Size
lea	ecx, [ebp+var_3C]
mov	byte ptr [ebp+var_4], 3
call	sub_41B339
mov	[ebp+var_2C], esi
mov	esi, [ebp+var_14]
mov	[ebp+var_30], 0Ch
mov	[ebp+var_14], 4

loc_420F0B:
push	esi
lea	ecx, [ebp+var_3C]
call	sub_4209B9
shr	esi, 8
dec	[ebp+var_14]
jnz	short loc_420F0B
mov	esi, [ebp+var_18]
mov	[ebp+var_14], 4

loc_420F26:
push	esi
lea	ecx, [ebp+var_3C]
call	sub_4209B9
shr	esi, 8
dec	[ebp+var_14]
jnz	short loc_420F26
mov	esi, [ebp+arg_0]
mov	[ebp+arg_0], 4

loc_420F41:
push	esi
lea	ecx, [ebp+var_3C]
call	sub_4209B9
shr	esi, 8
dec	[ebp+arg_0]
jnz	short loc_420F41
push	0Ch		; cbData
lea	ecx, [ebp+var_10]
push	[ebp+lpData]	; lpData
push	off_45C16C	; lpValueName
call	sub_42D5CE
mov	[ebp+var_3C], ebx
push	[ebp+lpData]	; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], 1
lea	ecx, [ebp+var_10]
call	sub_42D390
push	edi		; lpCriticalSection
call	ds:LeaveCriticalSection
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_420E83 endp



; Attributes: bp-based frame

sub_420F9E proc	near

lpSubKey= dword	ptr -3Ch
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
Memory=	dword ptr -1Ch
var_18=	dword ptr -18h
cbData=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_4464DC
call	__EH_prolog
sub	esp, 30h
push	ebx
push	esi
push	edi
mov	ebx, ecx
push	off_45C160
mov	edi, edx
lea	ecx, [ebp+lpSubKey]
call	sub_41E0DD
and	[ebp+var_4], 0
mov	esi, offset CriticalSection
push	esi		; lpCriticalSection
mov	[ebp+var_18], esi
call	ds:EnterCriticalSection
and	[ebp+var_10], 0
push	20019h		; samDesired
lea	ecx, [ebp+var_10]
push	[ebp+lpSubKey]	; lpSubKey
mov	byte ptr [ebp+var_4], 2
push	80000001h	; hKey
call	sub_42D35B
test	eax, eax
jz	short loc_420FF8
xor	bl, bl
jmp	short loc_421071

loc_420FF8:
and	[ebp+var_20], 0
and	[ebp+Memory], 0
mov	[ebp+var_24], offset off_44C434
lea	eax, [ebp+cbData]
lea	ecx, [ebp+var_10]
push	eax		; lpcbData
lea	eax, [ebp+var_24]
push	eax		; int
mov	byte ptr [ebp+var_4], 3
push	off_45C16C	; lpValueName
call	sub_42D887
test	eax, eax
jz	short loc_421029

loc_421025:
xor	bl, bl
jmp	short loc_421061

loc_421029:
push	0Ch
pop	eax
cmp	[ebp+cbData], eax
jnz	short loc_421025
and	[ebp+var_28], 0
mov	[ebp+var_2C], eax
mov	eax, [ebp+Memory]
lea	ecx, [ebp+var_30]
mov	[ebp+var_30], eax
call	sub_420BDA
lea	ecx, [ebp+var_30]
mov	[ebx], eax
call	sub_420BDA
lea	ecx, [ebp+var_30]
mov	[edi], eax
call	sub_420BDA
mov	ecx, [ebp+arg_0]
mov	bl, 1
mov	[ecx], eax

loc_421061:		; Memory
push	[ebp+Memory]
mov	[ebp+var_24], offset off_44C434
call	sub_4284D8
pop	ecx

loc_421071:
lea	ecx, [ebp+var_10]
mov	byte ptr [ebp+var_4], 1
call	sub_42D390
push	esi		; lpCriticalSection
call	ds:LeaveCriticalSection
push	[ebp+lpSubKey]	; Memory
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
mov	al, bl
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn	4
sub_420F9E endp

; START	OF FUNCTION CHUNK FOR sub_4014FE

loc_4210A0:
mov	eax, offset loc_4464F0
call	__EH_prolog
push	ecx
xor	eax, eax
push	esi
mov	esi, ecx
mov	[ebp-10h], eax
push	eax		; int
push	eax		; dwDisposition
push	0F003Fh		; samDesired
push	eax		; dwOptions
push	eax		; lpClass
lea	ecx, [ebp-10h]
push	off_45C160	; lpSubKey
mov	[ebp-4], eax
push	80000001h	; hKey
call	sub_42D30D
lea	ecx, [ebp-10h]
push	esi		; Data
push	lpValueName	; lpValueName
call	sub_42D473
or	dword ptr [ebp-4], 0FFFFFFFFh
lea	ecx, [ebp-10h]
call	sub_42D390
mov	ecx, [ebp-0Ch]
pop	esi
mov	large fs:0, ecx
leave
retn
; END OF FUNCTION CHUNK	FOR sub_4014FE


; Attributes: bp-based frame

sub_4210FA proc	near

Data= byte ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_446504
call	__EH_prolog
push	ecx
push	ecx
and	[ebp+var_10], 0
push	esi
and	[ebp+var_4], 0
push	20019h		; samDesired
push	off_45C160	; lpSubKey
lea	ecx, [ebp+var_10]
push	80000001h	; hKey
call	sub_42D35B
test	eax, eax
jz	short loc_421132
mov	esi, 8000000Dh
jmp	short loc_421150

loc_421132:
lea	eax, [ebp+Data]
lea	ecx, [ebp+var_10]
push	eax		; lpData
push	lpValueName	; lpValueName
call	sub_42D5E9
test	eax, eax
mov	esi, 8000000Dh
jnz	short loc_421150
mov	esi, dword ptr [ebp+Data]

loc_421150:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_10]
call	sub_42D390
mov	ecx, [ebp+var_C]
mov	eax, esi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_4210FA endp



; Attributes: bp-based frame

sub_42116B proc	near

Memory=	dword ptr -24h
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_446528
call	__EH_prolog
sub	esp, 18h
push	ebx
push	esi
mov	esi, offset CriticalSection
push	edi
mov	edi, edx
mov	[ebp+var_14], ecx
push	esi		; lpCriticalSection
mov	[ebp+var_18], esi
call	ds:EnterCriticalSection
xor	ebx, ebx
mov	[ebp+var_4], ebx
mov	[ebp+var_10], ebx
push	ebx		; int
push	ebx		; dwDisposition
push	0F003Fh		; samDesired
push	ebx		; dwOptions
push	ebx		; lpClass
lea	ecx, [ebp+var_10]
push	off_45C160	; lpSubKey
mov	byte ptr [ebp+var_4], 1
push	80000001h	; hKey
call	sub_42D30D
mov	edx, [ebp+var_14]
mov	edi, [edi]
lea	ecx, [ebp+Memory]
call	sub_4211FE
mov	eax, [eax]
push	edi		; lpData
push	eax		; lpValueName
lea	ecx, [ebp+var_10]
mov	byte ptr [ebp+var_4], 2
call	sub_42D4CA
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	byte ptr [ebp+var_4], bl
lea	ecx, [ebp+var_10]
call	sub_42D390
push	esi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_42116B endp



; Attributes: bp-based frame

sub_4211FE proc	near

var_3C=	byte ptr -3Ch
Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_44653C
call	__EH_prolog
sub	esp, 30h
and	[ebp+var_10], 0
push	esi
mov	eax, edx
mov	esi, ecx
lea	edx, [ebp+var_3C]
mov	ecx, eax
call	sub_427B8F
lea	ecx, [ebp+Memory]
push	off_45C174
call	sub_403091
and	[ebp+var_4], 0
lea	ecx, [ebp+var_3C]
push	ecx
mov	edx, eax
mov	ecx, esi
call	sub_409948
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_4211FE endp



; Attributes: bp-based frame

sub_421255 proc	near

Memory=	dword ptr -20h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_446560
call	__EH_prolog
sub	esp, 14h
push	ebx
push	esi
mov	esi, offset CriticalSection
push	edi
mov	edi, edx
mov	ebx, ecx
push	esi		; lpCriticalSection
mov	[ebp+var_14], esi
call	ds:EnterCriticalSection
and	[ebp+var_4], 0
and	[ebp+var_10], 0
push	20019h		; samDesired
lea	ecx, [ebp+var_10]
push	off_45C160	; lpSubKey
mov	byte ptr [ebp+var_4], 1
push	80000001h	; hKey
call	sub_42D35B
test	eax, eax
jz	short loc_4212B7
and	byte ptr [ebp+var_4], 0
lea	ecx, [ebp+var_10]
call	sub_42D390
push	esi		; lpCriticalSection
call	ds:LeaveCriticalSection
xor	al, al
jmp	short loc_4212F7

loc_4212B7:
mov	edx, ebx
lea	ecx, [ebp+Memory]
call	sub_4211FE
mov	eax, [eax]
push	edi		; cbData
push	eax		; lpValueName
lea	ecx, [ebp+var_10]
mov	byte ptr [ebp+var_4], 2
call	sub_42D70F
mov	ebx, eax
push	[ebp+Memory]	; Memory
neg	ebx
sbb	bl, bl
inc	bl
call	sub_4284D8
and	byte ptr [ebp+var_4], 0
pop	ecx
lea	ecx, [ebp+var_10]
call	sub_42D390
push	esi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	al, bl

loc_4212F7:
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_421255 endp



; Attributes: bp-based frame

sub_421306 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_446574
call	__EH_prolog
push	ecx
push	esi
xor	esi, esi
push	edi
mov	edi, ecx
mov	[ebp+var_10], esi
push	esi		; int
push	esi		; dwDisposition
push	0F003Fh		; samDesired
push	esi		; dwOptions
push	esi		; lpClass
lea	ecx, [ebp+var_10]
push	off_45C160	; lpSubKey
mov	[ebp+var_4], esi
push	80000001h	; hKey
call	sub_42D30D
xor	edx, edx
xor	ecx, ecx
mov	eax, edi

loc_42133F:
mov	esi, [eax]
add	eax, 4
and	esi, 0FFh
shl	esi, cl
add	ecx, 8
or	edx, esi
cmp	ecx, 10h
jl	short loc_42133F
push	edx		; Data
lea	ecx, [ebp+var_10]
push	off_45C178	; lpValueName
call	sub_42D473
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_10]
call	sub_42D390
mov	ecx, [ebp+var_C]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_421306 endp



; Attributes: bp-based frame

sub_42137F proc	near

Data= byte ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_446588
call	__EH_prolog
push	ecx
push	ecx
and	[ebp+var_10], 0
push	esi
mov	esi, ecx
push	3
and	[ebp+var_4], 0
pop	eax
lea	ecx, [ebp+var_10]
push	20019h		; samDesired
mov	[esi+4], eax
mov	[esi], eax
push	off_45C160	; lpSubKey
push	80000001h	; hKey
call	sub_42D35B
test	eax, eax
jnz	short loc_4213E8
lea	eax, [ebp+Data]
lea	ecx, [ebp+var_10]
push	eax		; lpData
push	off_45C178	; lpValueName
call	sub_42D5E9
test	eax, eax
jnz	short loc_4213E8
push	2
pop	eax

loc_4213D3:
mov	ecx, dword ptr [ebp+Data]
shr	dword ptr [ebp+Data], 8
and	ecx, 0FFh
mov	[esi], ecx
add	esi, 4
dec	eax
jnz	short loc_4213D3

loc_4213E8:
or	[ebp+var_4], 0FFFFFFFFh
lea	ecx, [ebp+var_10]
call	sub_42D390
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_42137F endp




sub_421401 proc	near
mov	edx, ecx
mov	ecx, off_45C17C
jmp	$+5

loc_42140E:
mov	eax, offset loc_4465A4
call	__EH_prolog
sub	esp, 0Ch
push	ebx
push	esi
mov	esi, offset CriticalSection
push	edi
mov	edi, edx
mov	[ebp-14h], ecx
push	esi		; lpCriticalSection
mov	[ebp-18h], esi
call	ds:EnterCriticalSection
xor	ebx, ebx
mov	[ebp-4], ebx
mov	[ebp-10h], ebx
push	ebx		; int
push	ebx		; dwDisposition
push	0F003Fh		; samDesired
push	ebx		; dwOptions
push	ebx		; lpClass
lea	ecx, [ebp-10h]
push	off_45C160	; lpSubKey
mov	byte ptr [ebp-4], 1
push	80000001h	; hKey
call	sub_42D30D
lea	ecx, [ebp-10h]
push	edi		; int
push	dword ptr [ebp-14h] ; lpValueName
call	sub_42D8D9
lea	ecx, [ebp-10h]
mov	[ebp-4], bl
call	sub_42D390
push	esi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	ecx, [ebp-0Ch]
pop	edi
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_421401 endp




sub_421487 proc	near
mov	edx, ecx
mov	ecx, off_45C17C
jmp	$+5

loc_421494:
mov	eax, offset loc_4465C0
call	__EH_prolog
sub	esp, 0Ch
push	esi
push	edi
mov	edi, edx
mov	[ebp-14h], ecx
mov	ecx, edi
call	sub_428327
mov	esi, offset CriticalSection
push	esi		; lpCriticalSection
mov	[ebp-18h], esi
call	ds:EnterCriticalSection
and	dword ptr [ebp-4], 0
and	dword ptr [ebp-10h], 0
push	20019h		; samDesired
lea	ecx, [ebp-10h]
push	off_45C160	; lpSubKey
mov	byte ptr [ebp-4], 1
push	80000001h	; hKey
call	sub_42D35B
test	eax, eax
jnz	short loc_4214F2
push	edi		; int
lea	ecx, [ebp-10h]
push	dword ptr [ebp-14h] ; lpValueName
call	sub_42D9A7

loc_4214F2:
and	byte ptr [ebp-4], 0
lea	ecx, [ebp-10h]
call	sub_42D390
push	esi		; lpCriticalSection
call	ds:LeaveCriticalSection
mov	ecx, [ebp-0Ch]
pop	edi
pop	esi
mov	large fs:0, ecx
leave
retn
sub_421487 endp




sub_421513 proc	near
mov	edx, ecx
mov	ecx, off_45C180
jmp	loc_42140E
sub_421513 endp




sub_421520 proc	near
mov	edx, ecx
mov	ecx, off_45C180
jmp	loc_421494
sub_421520 endp




sub_42152D proc	near
mov	edx, ecx
mov	ecx, off_45C184
jmp	loc_42140E
sub_42152D endp




sub_42153A proc	near
mov	edx, ecx
mov	ecx, off_45C184
jmp	loc_421494
sub_42153A endp




sub_421547 proc	near
push	ebx
push	esi
push	edi
mov	esi, ecx
xor	edi, edi
mov	ebx, edx
cmp	[esi+8], edi
jle	short loc_42157A

loc_421555:
mov	eax, [esi+0Ch]
mov	ecx, [ebx]
mov	eax, [eax+edi*4]
mov	edx, [eax]
call	sub_4282B1
test	eax, eax
jnz	short loc_421574
mov	eax, [esi]
push	1
push	edi
mov	ecx, esi
call	dword ptr [eax+4]
jmp	short loc_421575

loc_421574:
inc	edi

loc_421575:
cmp	edi, [esi+8]
jl	short loc_421555

loc_42157A:
push	ebx
push	0
mov	ecx, esi
call	sub_4140D0
pop	edi
pop	esi
pop	ebx
retn
sub_421547 endp

; START	OF FUNCTION CHUNK FOR sub_4463E0

loc_421588:		; Memory
push	dword ptr [ecx+8]
mov	dword ptr [ecx], offset	off_44C434
call	sub_4284D8
pop	ecx
retn
; END OF FUNCTION CHUNK	FOR sub_4463E0



; int __thiscall sub_421598(void *Memory, char)
sub_421598 proc	near

arg_0= byte ptr	 4

push	esi
mov	esi, ecx
push	dword ptr [esi+8] ; Memory
mov	dword ptr [esi], offset	off_44C434
call	sub_4284D8
test	[esp+8+arg_0], 1
pop	ecx
jz	short loc_4215B8
push	esi		; Memory
call	sub_4284D8
pop	ecx

loc_4215B8:
mov	eax, esi
pop	esi
retn	4
sub_421598 endp




sub_4215BE proc	near
push	esi
push	edi
mov	edi, ecx
mov	edx, 1000100h
mov	esi, edi
neg	esi
lea	eax, [edi+4]
sbb	esi, esi
and	esi, eax
mov	ecx, [esi]
call	sub_40B08D
mov	ecx, [esi]
push	4
mov	edx, offset unk_45C230
call	sub_40B00D
mov	ecx, edi
call	sub_42FC31
pop	edi
mov	al, 1
pop	esi
retn
sub_4215BE endp




sub_4215F3 proc	near
mov	edx, off_45C254
xor	ecx, ecx
jmp	sub_40AD1B
sub_4215F3 endp




sub_421600 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

cmp	[esp+arg_0], 3FCh
jz	short loc_421619
push	[esp+arg_4]
push	[esp+4+arg_0]
call	sub_42FAE0
jmp	short locret_42162F

loc_421619:
xor	eax, eax
push	1		; nShowCmd
push	eax		; lpDirectory
push	eax		; lpParameters
push	lpFile		; lpFile
push	eax		; lpOperation
push	eax		; hwnd
call	ds:ShellExecuteA
mov	al, 1

locret_42162F:
retn	8
sub_421600 endp




sub_421632 proc	near
push	ebx
push	ebp
push	esi
mov	esi, ecx
mov	eax, esi
push	edi
neg	eax
lea	edi, [esi+4]
push	2
sbb	eax, eax
mov	edx, offset unk_45C288
and	eax, edi
mov	ecx, [eax]
call	sub_40B00D
mov	ebp, ds:GetDlgItem
push	3E9h		; nIDDlgItem
push	dword ptr [edi]	; hDlg
lea	ebx, [esi+8]
call	ebp ; GetDlgItem
mov	edx, [esi+0Ch]
mov	ecx, [edi]
mov	[ebx], eax
call	sub_42E6BD
push	3E8h		; nIDDlgItem
push	dword ptr [edi]	; hDlg
call	ebp ; GetDlgItem
mov	edx, [esi+18h]
mov	ecx, eax
call	sub_42E6BD
mov	edx, [esi+24h]
mov	ecx, [ebx]
call	sub_42E6BD
xor	edi, edi
cmp	[esi+38h], edi
jle	short loc_4216A8

loc_421693:
mov	eax, [esi+3Ch]
mov	ecx, ebx
mov	eax, [eax+edi*4]
push	dword ptr [eax]	; lParam
call	sub_42F9BB
inc	edi
cmp	edi, [esi+38h]
jl	short loc_421693

loc_4216A8:
push	0
mov	ecx, esi
call	sub_42FB78
pop	edi
pop	esi
pop	ebp
mov	al, 1
pop	ebx
retn
sub_421632 endp



; Attributes: bp-based frame

sub_4216B8 proc	near

Rect= tagRECT ptr -28h
var_18=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
nWidth=	dword ptr -8
nHeight= dword ptr -4
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

push	ebp
mov	ebp, esp
sub	esp, 28h
push	ebx
push	esi
push	edi
push	8
pop	eax
and	[ebp+Rect.left], 0
and	[ebp+Rect.top],	0
mov	[ebp+Rect.right], eax
mov	[ebp+Rect.bottom], eax
lea	eax, [ebp+Rect]
lea	edi, [ecx+4]
push	eax		; lpRect
mov	[ebp+var_18], ecx
push	dword ptr [edi]	; hDlg
call	ds:MapDialogRect
test	eax, eax
jz	short loc_4216FA
mov	eax, [ebp+Rect.right]
sub	eax, [ebp+Rect.left]
mov	[ebp+var_10], eax
mov	eax, [ebp+Rect.bottom]
sub	eax, [ebp+Rect.top]
mov	[ebp+var_14], eax

loc_4216FA:
mov	esi, ds:GetDlgItem
push	2		; nIDDlgItem
push	dword ptr [edi]	; hDlg
call	esi ; GetDlgItem
mov	ebx, ds:GetWindowRect
lea	ecx, [ebp+Rect]
push	ecx		; lpRect
push	eax		; hWnd
call	ebx ; GetWindowRect
test	eax, eax
jz	short loc_421729
mov	eax, [ebp+Rect.right]
sub	eax, [ebp+Rect.left]
mov	[ebp+nWidth], eax
mov	eax, [ebp+Rect.bottom]
sub	eax, [ebp+Rect.top]
mov	[ebp+nHeight], eax

loc_421729:		; nIDDlgItem
push	1
push	dword ptr [edi]	; hDlg
call	esi ; GetDlgItem
lea	ecx, [ebp+Rect]
push	ecx		; lpRect
push	eax		; hWnd
call	ebx ; GetWindowRect
test	eax, eax
jz	short loc_42174C
mov	eax, [ebp+Rect.right]
sub	eax, [ebp+Rect.left]
mov	[ebp+var_C], eax
mov	eax, [ebp+Rect.bottom]
sub	eax, [ebp+Rect.top]
mov	[ebp+nHeight], eax

loc_42174C:
mov	ebx, [ebp+arg_8]
mov	esi, [ebp+arg_4]
sub	ebx, [ebp+nHeight]
sub	esi, [ebp+nWidth]
push	1		; bErase
push	0		; lpRect
push	dword ptr [edi]	; hWnd
sub	ebx, [ebp+var_14]
sub	esi, [ebp+var_10]
call	ds:InvalidateRect
push	2		; nIDDlgItem
push	dword ptr [edi]	; hDlg
call	ds:GetDlgItem
push	1		; bRepaint
push	[ebp+nHeight]	; nHeight
push	[ebp+nWidth]	; nWidth
push	ebx		; Y
push	esi		; X
push	eax		; hWnd
call	ds:MoveWindow
push	1		; nIDDlgItem
push	dword ptr [edi]	; hDlg
call	ds:GetDlgItem
push	1		; bRepaint
sub	esi, [ebp+var_C]
push	[ebp+nHeight]	; nHeight
push	[ebp+var_C]	; nWidth
push	ebx		; Y
mov	ebx, [ebp+var_10]
sub	esi, ebx
push	esi		; X
push	eax		; hWnd
call	ds:MoveWindow
lea	eax, [ebx+ebx]
mov	ecx, eax
mov	eax, [ebp+arg_4]
sub	eax, ecx
mov	ecx, edi
push	eax		; nWidth
mov	eax, [ebp+var_18]
push	dword ptr [eax+8] ; hWnd
call	sub_4217C9
pop	edi
pop	esi
xor	al, al
pop	ebx
leave
retn	0Ch
sub_4216B8 endp



; Attributes: bp-based frame

; int __stdcall	sub_4217C9(HWND	hWnd, int nWidth)
sub_4217C9 proc	near

Rect= tagRECT ptr -18h
Point= tagPOINT	ptr -8
hWnd= dword ptr	 8
nWidth=	dword ptr  0Ch

push	ebp
mov	ebp, esp
sub	esp, 18h
lea	eax, [ebp+Rect]
push	esi
push	eax		; lpRect
mov	esi, ecx
push	[ebp+hWnd]	; hWnd
call	ds:GetWindowRect
mov	eax, [ebp+Rect.left]
mov	[ebp+Point.x], eax
mov	eax, [ebp+Rect.top]
mov	[ebp+Point.y], eax
lea	eax, [ebp+Point]
push	eax		; lpPoint
push	dword ptr [esi]	; hWnd
call	ds:ScreenToClient
mov	eax, [ebp+Rect.bottom]
push	1		; bRepaint
sub	eax, [ebp+Rect.top]
push	eax		; nHeight
push	[ebp+nWidth]	; nWidth
push	[ebp+Point.y]	; Y
push	[ebp+Point.x]	; X
push	[ebp+hWnd]	; hWnd
call	ds:MoveWindow
neg	eax
sbb	eax, eax
pop	esi
neg	eax
leave
retn	8
sub_4217C9 endp




sub_42181D proc	near
push	esi
mov	esi, ecx
lea	eax, [esi+24h]
lea	ecx, [esi+8]
push	eax
call	sub_42E799
push	1		; nResult
push	dword ptr [esi+4] ; hDlg
call	ds:EndDialog
pop	esi
retn
sub_42181D endp




sub_421839 proc	near

var_4= dword ptr -4

push	ecx
push	ebx
push	ebp
push	esi
mov	esi, ecx
mov	eax, esi
push	edi
neg	eax
lea	edi, [esi+4]
push	2
sbb	eax, eax
mov	edx, offset unk_45C298
and	eax, edi
mov	ecx, [eax]
call	sub_40B00D
mov	ebp, ds:GetDlgItem
push	3E9h		; nIDDlgItem
push	dword ptr [edi]	; hDlg
lea	ebx, [esi+8]
call	ebp ; GetDlgItem
mov	edx, [esi+0Ch]
mov	ecx, [edi]
mov	[ebx], eax
call	sub_42E6BD
push	3E8h		; nIDDlgItem
push	dword ptr [edi]	; hDlg
call	ebp ; GetDlgItem
mov	edx, [esi+18h]
mov	ecx, eax
call	sub_42E6BD
and	[esp+14h+var_4], 0
cmp	dword ptr [esi+44h], 0
jle	short loc_4218B5

loc_421895:
mov	eax, [esi+48h]
mov	ecx, [esp+14h+var_4]
mov	eax, [eax+ecx*4]
mov	ecx, ebx
push	dword ptr [eax]	; lParam
call	sub_42F9BB
inc	[esp+14h+var_4]
mov	eax, [esp+14h+var_4]
cmp	eax, [esi+44h]
jl	short loc_421895

loc_4218B5:
mov	edx, [esi+24h]
mov	ecx, [ebx]
call	sub_42E6BD
mov	ebx, [esi+30h]
push	3EBh		; nIDDlgItem
push	dword ptr [edi]	; hDlg
call	ebp ; GetDlgItem
mov	edx, ebx
mov	ecx, eax
call	sub_42E6BD
push	1
mov	ecx, esi
call	sub_42FB78
pop	edi
pop	esi
pop	ebp
mov	al, 1
pop	ebx
pop	ecx
retn
sub_421839 endp



; Attributes: bp-based frame

; int __stdcall	sub_4218E5(int,	int, int hWnd)
sub_4218E5 proc	near

Rect= tagRECT ptr -30h
var_20=	dword ptr -20h
Y= dword ptr -1Ch
nHeight= dword ptr -18h
var_14=	dword ptr -14h
nWidth=	dword ptr -10h
var_C= dword ptr -0Ch
X= dword ptr -8
var_4= dword ptr -4
arg_4= dword ptr  0Ch
hWnd= dword ptr	 10h

push	ebp
mov	ebp, esp
sub	esp, 30h
push	ebx
push	esi
push	edi
push	8
pop	eax
and	[ebp+Rect.left], 0
and	[ebp+Rect.top],	0
mov	[ebp+Rect.right], eax
mov	[ebp+Rect.bottom], eax
lea	eax, [ebp+Rect]
lea	esi, [ecx+4]
push	eax		; lpRect
mov	[ebp+var_20], ecx
push	dword ptr [esi]	; hDlg
call	ds:MapDialogRect
test	eax, eax
jz	short loc_421927
mov	eax, [ebp+Rect.right]
sub	eax, [ebp+Rect.left]
mov	[ebp+X], eax
mov	eax, [ebp+Rect.bottom]
sub	eax, [ebp+Rect.top]
mov	[ebp+var_C], eax

loc_421927:
mov	edi, ds:GetDlgItem
push	2		; nIDDlgItem
push	dword ptr [esi]	; hDlg
call	edi ; GetDlgItem
lea	ecx, [ebp+Rect]
push	ecx		; lpRect
push	eax		; hWnd
call	ds:GetWindowRect
test	eax, eax
jz	short loc_421956
mov	eax, [ebp+Rect.right]
mov	ebx, [ebp+Rect.bottom]
sub	eax, [ebp+Rect.left]
sub	ebx, [ebp+Rect.top]
mov	[ebp+nWidth], eax
mov	[ebp+var_4], ebx
jmp	short loc_421959

loc_421956:
mov	ebx, [ebp+var_4]

loc_421959:		; nIDDlgItem
push	1
push	dword ptr [esi]	; hDlg
call	edi ; GetDlgItem
lea	ecx, [ebp+Rect]
push	ecx		; lpRect
push	eax		; hWnd
call	ds:GetWindowRect
test	eax, eax
jz	short loc_421982
mov	eax, [ebp+Rect.right]
sub	eax, [ebp+Rect.left]
mov	[ebp+var_14], eax
mov	eax, [ebp+Rect.bottom]
sub	eax, [ebp+Rect.top]
mov	[ebp+var_4], eax
mov	ebx, eax

loc_421982:
mov	eax, [ebp+hWnd]
push	1		; bErase
sub	eax, ebx
mov	ebx, [ebp+arg_4]
sub	eax, [ebp+var_C]
sub	ebx, [ebp+nWidth]
push	0		; lpRect
push	dword ptr [esi]	; hWnd
sub	ebx, [ebp+X]
mov	[ebp+var_C], eax
call	ds:InvalidateRect
push	3EAh		; nIDDlgItem
push	dword ptr [esi]	; hDlg
call	edi ; GetDlgItem
lea	ecx, [ebp+Rect]
push	ecx		; lpRect
push	eax		; hWnd
call	ds:GetWindowRect
lea	eax, [ebp+Rect]
mov	ecx, esi
push	eax
call	sub_421AA9
mov	eax, [ebp+Rect.right]
mov	ecx, [ebp+Rect.top]
sub	eax, [ebp+Rect.left]
push	3EAh		; nIDDlgItem
push	dword ptr [esi]	; hDlg
mov	[ebp+Y], ecx
mov	[ebp+hWnd], eax
mov	eax, [ebp+Rect.bottom]
sub	eax, ecx
mov	[ebp+nHeight], eax
call	edi ; GetDlgItem
mov	ecx, [ebp+arg_4]
push	1		; bRepaint
push	[ebp+nHeight]	; nHeight
sub	ecx, [ebp+hWnd]
push	[ebp+hWnd]	; nWidth
sub	ecx, [ebp+X]
push	[ebp+Y]		; Y
push	ecx		; X
push	eax		; hWnd
call	ds:MoveWindow
mov	eax, [ebp+X]
mov	ecx, [ebp+arg_4]
lea	eax, [eax+eax*2]
sub	ecx, eax
mov	eax, [ebp+var_20]
sub	ecx, [ebp+hWnd]
push	ecx		; nWidth
mov	ecx, esi
push	dword ptr [eax+8] ; hWnd
call	sub_4217C9
push	3EBh		; nIDDlgItem
push	dword ptr [esi]	; hDlg
call	edi ; GetDlgItem
lea	ecx, [ebp+Rect]
push	ecx		; lpRect
push	eax		; hWnd
call	ds:GetWindowRect
lea	eax, [ebp+Rect]
mov	ecx, esi
push	eax
call	sub_421AA9
push	3EBh		; nIDDlgItem
push	dword ptr [esi]	; hDlg
call	edi ; GetDlgItem
mov	[ebp+hWnd], eax
mov	eax, [ebp+var_C]
sub	eax, [ebp+Rect.top]
mov	edx, [ebp+X]
mov	ecx, [ebp+arg_4]
push	1		; bRepaint
dec	eax
dec	eax
push	eax		; nHeight
lea	eax, [edx+edx]
sub	ecx, eax
push	ecx		; nWidth
push	[ebp+Rect.top]	; Y
push	edx		; X
push	[ebp+hWnd]	; hWnd
call	ds:MoveWindow
push	2		; nIDDlgItem
push	dword ptr [esi]	; hDlg
call	edi ; GetDlgItem
push	1		; bRepaint
push	[ebp+var_4]	; nHeight
push	[ebp+nWidth]	; nWidth
push	[ebp+var_C]	; Y
push	ebx		; X
push	eax		; hWnd
call	ds:MoveWindow
push	1		; nIDDlgItem
push	dword ptr [esi]	; hDlg
call	edi ; GetDlgItem
sub	ebx, [ebp+var_14]
push	1		; bRepaint
push	[ebp+var_4]	; nHeight
sub	ebx, [ebp+X]
push	[ebp+var_14]	; nWidth
push	[ebp+var_C]	; Y
push	ebx		; X
push	eax		; hWnd
call	ds:MoveWindow
pop	edi
pop	esi
xor	al, al
pop	ebx
leave
retn	0Ch
sub_4218E5 endp



; Attributes: bp-based frame

sub_421AA9 proc	near

var_10=	dword ptr -10h
var_C= dword ptr -0Ch
Point= tagPOINT	ptr -8
arg_0= dword ptr  8

push	ebp
mov	ebp, esp
sub	esp, 10h
push	ebx
push	esi
mov	esi, [ebp+arg_0]
push	edi
mov	edi, ds:ScreenToClient
mov	ebx, ecx
mov	eax, [esi]
mov	[ebp+Point.x], eax
mov	eax, [esi+4]
mov	[ebp+Point.y], eax
mov	eax, [esi+8]
mov	[ebp+var_10], eax
mov	eax, [esi+0Ch]
mov	[ebp+var_C], eax
lea	eax, [ebp+Point]
push	eax		; lpPoint
push	dword ptr [ebx]	; hWnd
call	edi ; ScreenToClient
lea	eax, [ebp+var_10]
push	eax		; lpPoint
push	dword ptr [ebx]	; hWnd
call	edi ; ScreenToClient
mov	eax, [ebp+Point.x]
pop	edi
mov	[esi], eax
mov	eax, [ebp+Point.y]
mov	[esi+4], eax
mov	eax, [ebp+var_10]
mov	[esi+8], eax
mov	eax, [ebp+var_C]
mov	[esi+0Ch], eax
pop	esi
pop	ebx
leave
retn	4
sub_421AA9 endp




sub_421B02 proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

cmp	[esp+arg_0], 3EAh
jz	short loc_421B1B
push	[esp+arg_4]
push	[esp+4+arg_0]
call	sub_42FAE0
jmp	short locret_421B22

loc_421B1B:
call	sub_421B25
mov	al, 1

locret_421B22:
retn	8
sub_421B02 endp



; Attributes: bp-based frame

sub_421B25 proc	near

var_30=	dword ptr -30h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
Memory=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4465E4
call	__EH_prolog
sub	esp, 24h
push	ebx
push	esi
push	edi
mov	esi, ecx
xor	edi, edi
push	3
lea	ecx, [ebp+var_24]
mov	[ebp+var_24], edi
mov	[ebp+var_20], edi
mov	[ebp+var_1C], edi
call	sub_403396
lea	ebx, [esi+8]
lea	eax, [ebp+var_24]
push	eax
mov	ecx, ebx
mov	[ebp+var_4], edi
call	sub_42E799
push	3020209h
mov	edx, 0D2h
lea	ecx, [ebp+var_30]
call	sub_40B168
push	3
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 1
mov	[ebp+Memory], edi
mov	[ebp+var_14], edi
mov	[ebp+var_10], edi
call	sub_403396
mov	eax, esi
add	esi, 4
neg	eax
sbb	eax, eax
mov	edx, [ebp+var_30]
and	eax, esi
mov	byte ptr [ebp+var_4], 2
mov	ecx, [eax]
lea	eax, [ebp+Memory]
push	eax
push	[ebp+var_24]
call	sub_42E0C7
test	al, al
jz	short loc_421BCC
lea	ecx, [ebp+Memory]
call	sub_42C33B
push	edi		; lParam
push	0FFFFFFFFh	; wParam
push	14Eh		; Msg
push	dword ptr [ebx]	; hWnd
call	ds:SendMessageA
mov	edx, [ebp+Memory]
mov	ecx, [ebx]
call	sub_42E6BD

loc_421BCC:		; Memory
push	[ebp+Memory]
call	sub_4284D8
push	[ebp+var_30]	; Memory
call	sub_4284D8
push	[ebp+var_24]	; Memory
call	sub_4284D8
mov	ecx, [ebp+var_C]
add	esp, 0Ch
mov	large fs:0, ecx
pop	edi
pop	esi
pop	ebx
leave
retn
sub_421B25 endp



; Attributes: bp-based frame

sub_421BF6 proc	near

Memory=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
cbData=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_446600
call	__EH_prolog
sub	esp, 18h
push	ebx
push	esi
mov	esi, ecx
push	edi
mov	eax, esi
push	2
neg	eax
lea	edi, [esi+4]
mov	edx, offset unk_45C2A8
sbb	eax, eax
and	eax, edi
mov	ecx, [eax]
call	sub_40B00D
mov	ebx, ds:GetDlgItem
push	3E9h		; nIDDlgItem
push	dword ptr [edi]	; hDlg
call	ebx ; GetDlgItem
push	3F3h		; nIDDlgItem
mov	[esi+8], eax
push	dword ptr [edi]	; hDlg
call	ebx ; GetDlgItem
xor	edi, edi
push	3
lea	ecx, [ebp+cbData]
mov	[esi+0Ch], eax
mov	[ebp+cbData], edi
mov	[ebp+var_14], edi
mov	[ebp+var_10], edi
call	sub_403396
lea	ecx, [ebp+cbData] ; cbData
mov	[ebp+var_4], edi
call	sub_41E8F8
mov	edx, [ebp+cbData]
mov	ecx, [esi+8]
call	sub_42E6BD
push	[ebp+cbData]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
pop	ecx
mov	[ebp+Memory], edi
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+var_20], edi
mov	[ebp+var_1C], edi
call	sub_403396
lea	ecx, [ebp+Memory] ; cbData
mov	[ebp+var_4], 1
call	sub_41E91F
mov	edx, [ebp+Memory]
mov	ecx, [esi+0Ch]
call	sub_42E6BD
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
mov	al, 1
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_421BF6 endp



; Attributes: bp-based frame

sub_421CBE proc	near

var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
Memory=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_44661C
call	__EH_prolog
sub	esp, 18h
push	esi
push	edi
mov	esi, ecx
xor	edi, edi
push	3
lea	ecx, [ebp+Memory]
mov	[ebp+Memory], edi
mov	[ebp+var_14], edi
mov	[ebp+var_10], edi
call	sub_403396
lea	eax, [ebp+Memory]
lea	ecx, [esi+8]
push	eax
mov	[ebp+var_4], edi
call	sub_42E799
lea	ecx, [ebp+Memory]
call	sub_41E8E4
push	[ebp+Memory]	; Memory
or	[ebp+var_4], 0FFFFFFFFh
call	sub_4284D8
pop	ecx
mov	[ebp+var_24], edi
push	3
lea	ecx, [ebp+var_24]
mov	[ebp+var_20], edi
mov	[ebp+var_1C], edi
call	sub_403396
lea	eax, [ebp+var_24]
lea	ecx, [esi+0Ch]
push	eax
mov	[ebp+var_4], 1
call	sub_42E799
lea	ecx, [ebp+var_24]
call	sub_41E90B
push	[ebp+var_24]	; Memory
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
xor	eax, eax
pop	esi
mov	large fs:0, ecx
leave
retn
sub_421CBE endp




sub_421D4F proc	near
mov	edx, off_45C2B8
xor	ecx, ecx
jmp	sub_40AD1B
sub_421D4F endp




sub_421D5C proc	near

arg_0= dword ptr  4
arg_4= dword ptr  8

mov	eax, [esp+arg_0]
sub	eax, 3EAh
jz	short loc_421D8D
sub	eax, 0Ah
jz	short loc_421D7B
push	[esp+arg_4]
push	[esp+4+arg_0]
call	sub_42FAE0
jmp	short locret_421DA4

loc_421D7B:
mov	eax, ecx
lea	edx, [ecx+4]
neg	eax
sbb	eax, eax
and	eax, edx
add	ecx, 0Ch
mov	edx, [eax]
jmp	short loc_421D9D

loc_421D8D:
mov	eax, ecx
lea	edx, [ecx+4]
neg	eax
sbb	eax, eax
and	eax, edx
add	ecx, 8
mov	edx, [eax]

loc_421D9D:
call	sub_421DA7
mov	al, 1

locret_421DA4:
retn	8
sub_421D5C endp



; Attributes: bp-based frame

sub_421DA7 proc	near

var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
Memory=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_446638
call	__EH_prolog
sub	esp, 18h
push	ebx
push	esi
push	edi
mov	edi, ecx
xor	esi, esi
mov	ebx, edx
push	3
lea	ecx, [ebp+var_24]
mov	[ebp+var_24], esi
mov	[ebp+var_20], esi
mov	[ebp+var_1C], esi
call	sub_403396
lea	eax, [ebp+var_24]
mov	ecx, edi
push	eax
mov	[ebp+var_4], esi
call	sub_42E799
lea	ecx, [ebp+Memory]
mov	[ebp+Memory], esi
push	3
mov	[ebp+var_14], esi
mov	[ebp+var_10], esi
call	sub_403396
lea	eax, [ebp+Memory]
xor	edx, edx
push	eax
push	offset a_exe	; "*.exe"
push	[ebp+var_24]
mov	ecx, ebx
mov	byte ptr [ebp+var_4], 1
call	sub_429502
test	al, al
jz	short loc_421E18
mov	edx, [ebp+Memory]
mov	ecx, [edi]
call	sub_42E6BD

loc_421E18:		; Memory
push	[ebp+Memory]
call	sub_4284D8
push	[ebp+var_24]	; Memory
call	sub_4284D8
pop	ecx
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_421DA7 endp



; Attributes: bp-based frame

sub_421E39 proc	near

arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

push	ebp
mov	ebp, esp
cmp	[ebp+arg_0], 300h
jnz	short loc_421E60
cmp	[ebp+arg_4], 3E9h
jz	short loc_421E57
cmp	[ebp+arg_4], 3F3h
jnz	short loc_421E60

loc_421E57:
call	sub_407229
mov	al, 1
jmp	short loc_421E6E

loc_421E60:
push	[ebp+arg_8]
push	[ebp+arg_4]
push	[ebp+arg_0]
call	sub_42FAC5

loc_421E6E:
pop	ebp
retn	0Ch
sub_421E39 endp



; Attributes: bp-based frame

sub_421E72 proc	near

var_80=	dword ptr -80h
var_78=	dword ptr -78h
var_74=	dword ptr -74h
var_6C=	dword ptr -6Ch
var_60=	dword ptr -60h
var_54=	dword ptr -54h
Memory=	dword ptr -48h
lParam=	dword ptr -3Ch
var_30=	dword ptr -30h
var_2C=	dword ptr -2Ch
var_28=	dword ptr -28h
var_24=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
wParam=	dword ptr -18h
var_14=	dword ptr -14h
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_446694
call	__EH_prolog
sub	esp, 74h
push	ebx
push	esi
push	edi
mov	edi, ecx
mov	eax, edi
push	1
neg	eax
lea	esi, [edi+4]
mov	edx, offset unk_45C2F8
sbb	eax, eax
and	eax, esi
mov	ecx, [eax]
call	sub_40B00D
push	3E9h		; nIDDlgItem
push	dword ptr [esi]	; hDlg
call	ds:GetDlgItem
lea	esi, [edi+8]
mov	edx, 3E4h
lea	ecx, [ebp+var_60]
mov	[esi], eax
call	sub_42DBF9
and	[ebp+var_4], 0
mov	edx, eax
lea	ecx, [ebp+var_54]
call	sub_4220D1
mov	ebx, eax
mov	edx, 3E3h
lea	ecx, [ebp+Memory]
mov	byte ptr [ebp+var_4], 1
call	sub_42DBF9
push	ebx
mov	edx, eax
lea	ecx, [ebp+lParam]
mov	byte ptr [ebp+var_4], 2
call	sub_40356A
push	[ebp+Memory]	; Memory
call	sub_4284D8
push	[ebp+var_54]	; Memory
call	sub_4284D8
push	[ebp+var_60]	; Memory
mov	byte ptr [ebp+var_4], 4
call	sub_4284D8
add	esp, 0Ch
mov	ecx, esi
push	[ebp+lParam]	; lParam
call	sub_42F9BB
push	dword ptr [edi+14h] ; lParam
mov	ebx, ds:SendMessageA
push	eax		; wParam
push	151h		; Msg
push	dword ptr [esi]	; hWnd
call	ebx ; SendMessageA
push	offset asc_45B600 ; "-"
lea	ecx, [ebp+var_30]
call	sub_403091
lea	eax, [ebp+var_30]
lea	ecx, [edi+0Ch]
push	eax
mov	byte ptr [ebp+var_4], 7
call	sub_4032B4
push	[ebp+var_30]	; Memory
mov	byte ptr [ebp+var_4], 4
call	sub_4284D8
pop	ecx
push	0		; lParam
push	0		; wParam
push	14Eh		; Msg
push	dword ptr [esi]	; hWnd
call	ebx ; SendMessageA
lea	ecx, [ebp+var_80]
call	sub_40337B
mov	[ebp+var_80], offset off_44BCF4
lea	ecx, [ebp+var_80]
mov	byte ptr [ebp+var_4], 8
call	sub_40B1DE
xor	eax, eax
cmp	[ebp+var_78], eax
mov	[ebp+var_14], eax
jle	loc_422098
jmp	short loc_421F8C

loc_421F8A:
xor	eax, eax

loc_421F8C:
mov	ecx, [ebp+var_74]
mov	edx, [ebp+var_14]
push	3
mov	ecx, [ecx+edx*4]
mov	[ebp+var_24], eax
mov	[ebp+var_10], ecx
lea	ecx, [ebp+var_24]
mov	[ebp+var_20], eax
mov	[ebp+var_1C], eax
call	sub_403396
xor	eax, eax
push	3
lea	ecx, [ebp+var_30]
mov	byte ptr [ebp+var_4], 9
mov	[ebp+var_30], eax
mov	[ebp+var_2C], eax
mov	[ebp+var_28], eax
call	sub_403396
mov	ecx, [ebp+var_10]
lea	eax, [ebp+var_24]
push	eax
push	0
mov	byte ptr [ebp+var_4], 0Ah
call	sub_427F75
test	al, al
jnz	short loc_421FE9
mov	eax, [ebp+var_10]
lea	ecx, [ebp+var_24]
add	eax, 14h
push	eax
call	sub_40312C

loc_421FE9:
mov	ecx, [ebp+var_10]
lea	eax, [ebp+var_30]
push	eax
push	1
call	sub_427F75
test	al, al
jz	short loc_422026
cmp	[ebp+var_2C], 0
jz	short loc_422026
lea	edx, [ebp+var_30]
lea	ecx, [ebp+var_6C]
call	sub_4220D1
push	eax
lea	ecx, [ebp+var_24]
mov	byte ptr [ebp+var_4], 0Bh
call	sub_4031F2
push	[ebp+var_6C]	; Memory
mov	byte ptr [ebp+var_4], 0Ah
call	sub_4284D8
pop	ecx

loc_422026:		; lParam
push	[ebp+var_24]
mov	ecx, esi
call	sub_42F9BB
push	dword ptr [edi+14h] ; lParam
mov	[ebp+wParam], eax
push	eax		; wParam
push	151h		; Msg
push	dword ptr [esi]	; hWnd
call	ebx ; SendMessageA
mov	eax, [ebp+var_10]
lea	ecx, [edi+0Ch]
add	eax, 14h
push	eax
mov	[ebp+var_10], eax
call	sub_4032B4
mov	eax, [ebp+var_10]
mov	ecx, dword_45D8E0
mov	edx, [eax]
call	sub_4282B1
test	eax, eax
jnz	short loc_422073
push	eax		; lParam
push	[ebp+wParam]	; wParam
push	14Eh		; Msg
push	dword ptr [esi]	; hWnd
call	ebx ; SendMessageA

loc_422073:		; Memory
push	[ebp+var_30]
call	sub_4284D8
push	[ebp+var_24]	; Memory
mov	byte ptr [ebp+var_4], 8
call	sub_4284D8
inc	[ebp+var_14]
pop	ecx
mov	eax, [ebp+var_14]
pop	ecx
cmp	eax, [ebp+var_78]
jl	loc_421F8A

loc_422098:
mov	[ebp+var_80], offset off_44BCF4
lea	ecx, [ebp+var_80]
mov	byte ptr [ebp+var_4], 0Ch
call	sub_428327
lea	ecx, [ebp+var_80]
mov	byte ptr [ebp+var_4], 4
call	sub_4282FE
push	[ebp+lParam]	; Memory
call	sub_4284D8
pop	ecx
pop	edi
mov	ecx, [ebp+var_C]
pop	esi
mov	al, 1
pop	ebx
mov	large fs:0, ecx
leave
retn
sub_421E72 endp



; Attributes: bp-based frame

sub_4220D1 proc	near

Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4

mov	eax, offset loc_4466A8
call	__EH_prolog
sub	esp, 10h
and	[ebp+var_10], 0
push	esi
mov	esi, ecx
push	edx
mov	edx, offset asc_45C334 ; " ("
lea	ecx, [ebp+Memory]
call	sub_422192
and	[ebp+var_4], 0
push	29h
mov	edx, eax
mov	ecx, esi
call	sub_409999
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn
sub_4220D1 endp




sub_42211A proc	near
push	esi
push	edi
mov	edi, ds:SendMessageA
push	0		; lParam
mov	esi, ecx
push	0		; wParam
push	147h		; Msg
push	dword ptr [esi+8] ; hWnd
call	edi ; SendMessageA
push	0		; lParam
push	eax		; wParam
push	150h		; Msg
push	dword ptr [esi+8] ; hWnd
call	edi ; SendMessageA
mov	ecx, [esi+18h]
mov	ecx, [ecx+eax*4]
call	sub_41E80B
call	sub_40AE68
mov	byte ptr [esi+20h], 1
pop	edi
xor	eax, eax
pop	esi
retn
sub_42211A endp




sub_422158 proc	near
mov	edx, off_45C300
xor	ecx, ecx
jmp	sub_40AD1B
sub_422158 endp



; Attributes: bp-based frame

sub_422165 proc	near

arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

push	ebp
mov	ebp, esp
cmp	[ebp+arg_0], 1
jnz	short loc_422180
cmp	[ebp+arg_4], 3E9h
jnz	short loc_422180
call	sub_407229
mov	al, 1
jmp	short loc_42218E

loc_422180:
push	[ebp+arg_8]
push	[ebp+arg_4]
push	[ebp+arg_0]
call	sub_42FAC5

loc_42218E:
pop	ebp
retn	0Ch
sub_422165 endp



; Attributes: bp-based frame

sub_422192 proc	near

Memory=	dword ptr -1Ch
var_10=	dword ptr -10h
var_C= dword ptr -0Ch
var_4= dword ptr -4
arg_0= dword ptr  8

mov	eax, offset loc_4466BC
call	__EH_prolog
sub	esp, 10h
and	[ebp+var_10], 0
push	esi
mov	esi, ecx
push	edx
lea	ecx, [ebp+Memory]
call	sub_403091
push	[ebp+arg_0]
and	[ebp+var_4], 0
lea	ecx, [ebp+Memory]
call	sub_4031F2
lea	eax, [ebp+Memory]
mov	ecx, esi
push	eax
call	sub_4030F2
push	[ebp+Memory]	; Memory
call	sub_4284D8
pop	ecx
mov	eax, esi
mov	ecx, [ebp+var_C]
pop	esi
mov	large fs:0, ecx
leave
retn	4
sub_422192 endp



; Attributes: bp-based frame

sub_4221E3 proc	near

var_4C=	byte ptr -4Ch
var_40=	dword ptr -40h
var_3C=	dword ptr -3Ch
lParam=	dword ptr -24h
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_10=	dword ptr -10h
var_4= dword ptr -4

push	ebp
mov	ebp, esp
sub	esp, 4Ch
push	ebx
push	esi
mov	esi, ecx
push	edi
mov	eax, esi
push	2
neg	eax
lea	ebx, [esi+4]
mov	edx, offset unk_45C340
sbb	eax, eax
and	eax, ebx
mov	ecx, [eax]
call	sub_40B00D
push	3E8h		; nIDDlgItem
lea	edi, [esi+8]
push	dword ptr [ebx]	; hDlg
call	ds:GetDlgItem
mov	[edi], eax
call	sub_41EA9A
mov	ebx, ds:SendMessageA
test	al, al
jz	short loc_422235
push	48h		; lParam
push	0		; wParam
push	1036h		; Msg
push	dword ptr [edi]	; hWnd
call	ebx ; SendMessageA

loc_422235:
mov	edx, [esi+0Ch]
mov	ecx, [esi+4]
call	sub_42E6BD
lea	ecx, [ebp+lParam]
xor	eax, eax
push	ecx		; lParam
push	eax		; wParam
push	101Bh		; Msg
mov	[ebp+lParam], 0Bh
push	dword ptr [edi]	; hWnd
mov	[ebp+var_20], eax
mov	[ebp+var_10], eax
mov	[ebp+var_1C], 0C8h
call	ebx ; SendMessageA
and	[ebp+var_4], 0
cmp	dword ptr [esi+24h], 0
jle	short loc_4222AA

loc_42226E:
mov	ecx, [esi+28h]
mov	eax, [ebp+var_4]
mov	ecx, [ecx+eax*4]
push	dword ptr [ecx]
mov	ecx, edi
push	eax
call	sub_42FE6D
inc	[ebp+var_4]
mov	eax, [ebp+var_4]
cmp	eax, [esi+24h]
jl	short loc_42226E
cmp	dword ptr [esi+24h], 0
jle	short loc_4222AA
push	3
pop	eax
mov	[ebp+var_3C], eax
mov	[ebp+var_40], eax
lea	eax, [ebp+var_4C]
push	eax		; lParam
push	0		; wParam
push	102Bh		; Msg
push	dword ptr [edi]	; hWnd
call	ebx ; SendMessageA

loc_4222AA:		; lParam
push	0FFFFh
push	0		; wParam
push	101Eh		; Msg
push	dword ptr [edi]	; hWnd
call	ebx ; SendMessageA
and	byte ptr [esi+19h], 0
push	0
mov	ecx, esi
call	sub_42FB78
pop	edi
pop	esi
mov	al, 1
pop	ebx
leave
retn
sub_4221E3 endp



; Attributes: bp-based frame

sub_4222CE proc	near

Rect= tagRECT ptr -24h
Y= dword ptr -14h
var_10=	dword ptr -10h
nWidth=	dword ptr -0Ch
X= dword ptr -8
nHeight= dword ptr -4
arg_4= dword ptr  0Ch
arg_8= dword ptr  10h

push	ebp
mov	ebp, esp
sub	esp, 24h
push	ebx
push	esi
push	edi
push	8
pop	eax
and	[ebp+Rect.left], 0
and	[ebp+Rect.top],	0
mov	[ebp+Rect.right], eax
mov	[ebp+Rect.bottom], eax
lea	eax, [ebp+Rect]
mov	ebx, ecx
push	eax		; lpRect
push	dword ptr [ebx+4] ; hDlg
call	ds:MapDialogRect
test	eax, eax
jz	short loc_42230D
mov	eax, [ebp+Rect.right]
sub	eax, [ebp+Rect.left]
mov	[ebp+X], eax
mov	eax, [ebp+Rect.bottom]
sub	eax, [ebp+Rect.top]
mov	[ebp+Y], eax

loc_42230D:
mov	edi, ds:GetDlgItem
push	2		; nIDDlgItem
push	dword ptr [ebx+4] ; hDlg
call	edi ; GetDlgItem
mov	esi, ds:GetWindowRect
lea	ecx, [ebp+Rect]
push	ecx		; lpRect
push	eax		; hWnd
call	esi ; GetWindowRect
test	eax, eax
jz	short loc_42233D
mov	eax, [ebp+Rect.right]
sub	eax, [ebp+Rect.left]
mov	[ebp+nWidth], eax
mov	eax, [ebp+Rect.bottom]
sub	eax, [ebp+Rect.top]
mov	[ebp+nHeight], eax

loc_42233D:		; nIDDlgItem
push	1
push	dword ptr [ebx+4] ; hDlg
call	edi ; GetDlgItem
lea	ecx, [ebp+Rect]
push	ecx		; lpRect
push	eax		; hWnd
call	esi ; GetWindowRect
test	eax, eax
jz	short loc_422361
mov	eax, [ebp+Rect.right]
sub	eax, [ebp+Rect.left]
mov	[ebp+var_10], eax
mov	eax, [ebp+Rect.bottom]
sub	eax, [ebp+Rect.top]
mov	[ebp+nHeight], eax

loc_422361:
mov	esi, [ebp+arg_8]
mov	edi, [ebp+arg_4]
sub	esi, [ebp+nHeight]
sub	edi, [ebp+nWidth]
push	1		; bErase
push	0		; lpRect
push	dword ptr [ebx+4] ; hWnd
sub	esi, [ebp+Y]
sub	edi, [ebp+X]
call	ds:InvalidateRect
push	2		; nIDDlgItem
push	dword ptr [ebx+4] ; hDlg
call	ds:GetDlgItem
push	1		; bRepaint
push	[ebp+nHeight]	; nHeight
push	[ebp+nWidth]	; nWidth
push	esi		; Y
push	edi		; X
push	eax		; hWnd
call	ds:MoveWindow
push	1		; nIDDlgItem
push	dword ptr [ebx+4] ; hDlg
call	ds:GetDlgItem
sub	edi, [ebp+var_10]
push	1		; bRepaint
push	[ebp+nHeight]	; nHeight
sub	edi, [ebp+X]
push	[ebp+var_10]	; nWidth
push	esi		; Y
push	edi		; X
mov	edi, ds:MoveWindow
push	eax		; hWnd
call	edi ; MoveWindow
mov	ecx, [ebp+Y]
mov	edx, [ebp+X]
push	1		; bRepaint
lea	eax, [ecx+ecx]
sub	esi, eax
lea	eax, [edx+edx]
push	esi		; nHeight
mov	esi, eax
mov	eax, [ebp+arg_4]
sub	eax, esi
push	eax		; nWidth
push	ecx		; Y
push	edx		; X
push	dword ptr [ebx+8] ; hWnd
call	edi ; MoveWindow
pop	edi
pop	esi
xor	al, al
pop	ebx
leave
retn	0Ch
sub_4222CE endp



; Attributes: bp-based frame

; int __stdcall	sub_4223E9(int,	WPARAM wParam)
sub_4223E9 proc	near

lParam=	dword ptr -2Ch
var_20=	dword ptr -20h
var_1C=	dword ptr -1Ch
var_4= dword ptr -4
wParam=	dword ptr  0Ch

push	ebp
mov	ebp, esp
sub	esp, 2Ch
mov	edx, [ebp+wParam]
mov	eax, [ecx+8]
push	esi
push	edi
cmp	[edx], eax
lea	edi, [ecx+8]
mov	[ebp+var_4], ecx
jnz	short loc_422440
mov	esi, [edx+8]
cmp	esi, 0FFFFFF65h
jz	short loc_422439
cmp	esi, 0FFFFFF8Eh
jz	short loc_422426
cmp	esi, 0FFFFFFFBh
jbe	short loc_422440
cmp	esi, 0FFFFFFFDh
ja	short loc_422440
cmp	byte_45B2C0, 0
jnz	short loc_422440
jmp	short loc_42242F

loc_422426:
cmp	byte_45B2C0, 0
jz	short loc_422440

loc_42242F:
mov	eax, [ecx]
call	dword ptr [eax+20h]
jmp	loc_4224CA

loc_422439:
cmp	word ptr [edx+0Ch], 2Eh
jz	short loc_422447

loc_422440:
xor	al, al
jmp	loc_4224CC

loc_422447:
cmp	byte ptr [ecx+18h], 0
jz	short loc_422440
mov	esi, ds:SendMessageA
push	ebx
push	2		; lParam
mov	ebx, 100Ch
push	0FFFFFFFFh	; wParam
push	ebx		; Msg
push	eax		; hWnd

loc_42245F:
call	esi ; SendMessageA
test	eax, eax
mov	[ebp+wParam], eax
jl	short loc_422497
mov	eax, [ebp+var_4]
push	0		; lParam
push	[ebp+wParam]	; wParam
mov	byte ptr [eax+19h], 1
push	1008h		; Msg
push	dword ptr [edi]	; hWnd
call	esi ; SendMessageA
mov	eax, [ebp+var_4]
push	1
push	[ebp+wParam]
lea	ecx, [eax+1Ch]
mov	eax, [eax+1Ch]
call	dword ptr [eax+4]
push	2
push	0FFFFFFFFh
push	ebx
push	dword ptr [edi]
jmp	short loc_42245F

loc_422497:
mov	ecx, edi
call	sub_402DF8
test	eax, eax
pop	ebx
jl	short loc_4224BA
push	3
pop	ecx
mov	[ebp+var_1C], ecx
mov	[ebp+var_20], ecx
lea	ecx, [ebp+lParam]
push	ecx		; lParam
push	eax		; wParam
push	102Bh		; Msg
push	dword ptr [edi]	; hWnd
call	esi ; SendMessageA

loc_4224BA:		; lParam
push	0FFFFh

loc_4224CA:
