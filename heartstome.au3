#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
; Local $EXE="E:\Hearthstone\Hearthstone Beta Launcher.exe"
; Run($EXE,"", @SW_SHOWMAXIMIZED))

#include <AutoItConstants.au3>

; Left click drag from 0, 200 to 600, 700
Local $TITLE="炉石传说"
While True
   for $XX = 1 To 2 Step 1
	  ; WinWaitActive("[title:$TITLE]", "", 2)
	  sleep(5000)
	  ; 出牌
	  Local $Xmin=500
	  Local $Xmax=900
	  Local $Y=840
	  For $i = $Xmin To $Xmax Step 60
		 MouseClickDrag($MOUSE_CLICK_LEFT, $i, $Y, 764, 174 ,3)
	  Next
	  ; 攻击随从
	  ; Hero attack 764, 174
	  Local $Xmin=570
	  Local $Xmax=950
	  Local $Y_my=474
	  Local $Y_enemy=330
	  For $i = $Xmin To $Xmax Step 85
		 MouseClickDrag($MOUSE_CLICK_LEFT, $i, $Y_my, 764, 174, 3)
		 MouseClick($MOUSE_CLICK_LEFT)
		 For $j = $Xmin To $Xmax Step 85
			MouseClickDrag($MOUSE_CLICK_LEFT, $i, $Y_my, $j, $Y_enemy, 3)
			MouseClick($MOUSE_CLICK_LEFT)
		 Next
		 MouseClick($MOUSE_CLICK_RIGHT)
	  Next
   Next
   MouseClick($MOUSE_CLICK_LEFT, 905, 658 ,2)
   MouseClick($MOUSE_CLICK_LEFT,1240,395 ,2)
   MouseClick($MOUSE_CLICK_LEFT, 905, 658 ,2)
   MouseClick($MOUSE_CLICK_LEFT,1240,395 ,2)
WEnd