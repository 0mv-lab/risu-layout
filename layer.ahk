; AutoHotkey v1用

; キーコード（JISキーボード）
; sc07B      = 無変換
; sc079      = 変換
; sc027      = ;
; sc028      = :
; sc033      = ,
; vkF2sc070  = ひらがな
; vk1Dsc07B  = 無変換

sc07B & q::Send,{Escape}
sc07B & w::Send,+{Left}
sc07B & e::
  ; ツクール製ゲームでの矢印キー操作に対応
  IfWinActive, ahk_exe Game.exe
  {
    SendEvent, {sc07B Up}{Up Down}
    KeyWait, e
    SendEvent, {Up Up}
  }
  else
  {
    Send, {Blind}{Up}
  }
return
sc07B & r::Send,+{Right}
sc07B & t::Send,+{Up}
sc07B & y::Send,^y
sc07B & u::Send,{F6}
sc07B & i::Send,{F10}
sc07B & o::Send,{F7}
sc07B & p::Send,{F9}
sc07B & @::Send,{F8}
sc07B & a::Send,^a
sc07B & s::
  ; ツクール製ゲームでの矢印キー操作に対応
  IfWinActive, ahk_exe Game.exe
  {
    SendEvent, {sc07B Up}{Left Down}
    KeyWait, s
    SendEvent, {Left Up}
  }
  else
  {
    Send, {Blind}{Left}
  }
return
sc07B & d::
  ; ツクール製ゲームでの矢印キー操作に対応
  IfWinActive, ahk_exe Game.exe
  {
    SendEvent, {sc07B Up}{Down Down}
    KeyWait, d
    SendEvent, {Down Up}
  }
  else
  {
    Send, {Blind}{Down}
  }
return
sc07B & f::
  ; ツクール製ゲームでの矢印キー操作に対応
  IfWinActive, ahk_exe Game.exe
  {
    SendEvent, {sc07B Up}{Right Down}
    KeyWait, f
    SendEvent, {Right Up}
  }
  else
  {
    Send, {Blind}{Right}
  }
return
; IME側で設定：Insert → 再変換
sc07B & g::Send,{Insert}
sc07B & h::Send,{Blind}{Backspace}
; IME側で設定：Hiragana → ひらがなに入力切替
sc07B & j::Send,{vkF2sc070}
; IME側で設定：無変換 → IMEを無効化
sc07B & k::Send,{vk1Dsc07B}
sc07B & l::Send,{Home}
sc07B & sc027::Send,{End}
sc07B & sc028::Send,^s
sc07B & z::Send,^z
sc07B & x::Send,^x
sc07B & c::Send,^c
sc07B & v::Send,^v
sc07B & b::Send,^{BackSpace}
sc07B & n::Send,{Delete}
sc07B & m::Send,{F2}
sc07B & sc033::Send,{PgDn}
sc07B & .::Send,^+{Tab}
sc07B & /::Send,^{Tab}

sc079::Enter
