FasdUAS 1.101.10   ��   ��    k             l      ��  ��     Notes     � 	 	 
 N o t e s   
  
 l     ��������  ��  ��        l      ��  ��     y1. This is my first time working with AppleScript, so if you see something that you think is dumb, you're probably right!     �   � 1 .   T h i s   i s   m y   f i r s t   t i m e   w o r k i n g   w i t h   A p p l e S c r i p t ,   s o   i f   y o u   s e e   s o m e t h i n g   t h a t   y o u   t h i n k   i s   d u m b ,   y o u ' r e   p r o b a b l y   r i g h t !      l     ��������  ��  ��        l      ��  ��    { u2. Mac OS prevents sys_vol values > 100%. Spotify does not and occassionlly became unresponsive after exceeding 100%      �   � 2 .   M a c   O S   p r e v e n t s   s y s _ v o l   v a l u e s   >   1 0 0 % .   S p o t i f y   d o e s   n o t   a n d   o c c a s s i o n l l y   b e c a m e   u n r e s p o n s i v e   a f t e r   e x c e e d i n g   1 0 0 %        l     ��������  ��  ��        l      ��  ��   3. Initial attempts involved functions. These would run fine in ScriptEditor, but executing from shell would only change system volume and not Spotify volume. There's a good chance this would work fine but I just missed something obvious; in this case, please refer to point 1.     �  * 3 .   I n i t i a l   a t t e m p t s   i n v o l v e d   f u n c t i o n s .   T h e s e   w o u l d   r u n   f i n e   i n   S c r i p t E d i t o r ,   b u t   e x e c u t i n g   f r o m   s h e l l   w o u l d   o n l y   c h a n g e   s y s t e m   v o l u m e   a n d   n o t   S p o t i f y   v o l u m e .   T h e r e ' s   a   g o o d   c h a n c e   t h i s   w o u l d   w o r k   f i n e   b u t   I   j u s t   m i s s e d   s o m e t h i n g   o b v i o u s ;   i n   t h i s   c a s e ,   p l e a s e   r e f e r   t o   p o i n t   1 .       l     ��������  ��  ��      ! " ! l      �� # $��   # � �4. I wasn't able to find a way to trigger Mac OS volume overlay graphic upon volume change, so I enabled ~/Pop.aiff for feedback. This isn't at all necessary for the script to work and may be a detriment to performance. idk.    $ � % %� 4 .   I   w a s n ' t   a b l e   t o   f i n d   a   w a y   t o   t r i g g e r   M a c   O S   v o l u m e   o v e r l a y   g r a p h i c   u p o n   v o l u m e   c h a n g e ,   s o   I   e n a b l e d   ~ / P o p . a i f f   f o r   f e e d b a c k .   T h i s   i s n ' t   a t   a l l   n e c e s s a r y   f o r   t h e   s c r i p t   t o   w o r k   a n d   m a y   b e   a   d e t r i m e n t   t o   p e r f o r m a n c e .   i d k . "  & ' & l     ��������  ��  ��   '  ( ) ( l      �� * +��   *  Production Script    + � , , " P r o d u c t i o n   S c r i p t )  - . - l     	 / 0 1 / r     	 2 3 2 n      4 5 4 1    ��
�� 
ouvl 5 l     6���� 6 I    ������
�� .sysogtvlvlst   ��� null��  ��  ��  ��   3 o      ���� 0 sys_vol   0 3 -takes system volume and assigns it to sys_vol    1 � 7 7 Z t a k e s   s y s t e m   v o l u m e   a n d   a s s i g n s   i t   t o   s y s _ v o l .  8 9 8 l  
  :���� : I  
 ���� ;
�� .aevtstvlnull��� ��� nmbr��   ; �� <��
�� 
ouvl < l    =���� = [     > ? > o    ���� 0 sys_vol   ? m     @ @ @      ��  ��  ��  ��  ��   9  A B A l    C D E C I   �� F��
�� .sysoexecTEXT���     TEXT F m     G G � H H L a f p l a y   / S y s t e m / L i b r a r y / S o u n d s / P o p . a i f f��   D  totally optional.    E � I I " t o t a l l y   o p t i o n a l . B  J K J l     ��������  ��  ��   K  L M L l   0 N���� N Z    0 O P���� O l    Q���� Q =    R S R n     T U T 1    ��
�� 
prun U m     V V�                                                                                      @ alis    &  Macintosh HD                   BD ����Spotify.app                                                    ����            ����  
 cu             Applications  /:Applications:Spotify.app/     S p o t i f y . a p p    M a c i n t o s h   H D  Applications/Spotify.app  / ��   S m    ��
�� boovtrue��  ��   P l  " , W X Y W O   " , Z [ Z r   & + \ ] \ o   & '���� 0 sys_vol   ] 1   ' *��
�� 
pVol [ m   " # ^ ^�                                                                                      @ alis    &  Macintosh HD                   BD ����Spotify.app                                                    ����            ����  
 cu             Applications  /:Applications:Spotify.app/     S p o t i f y . a p p    M a c i n t o s h   H D  Applications/Spotify.app  / ��   X f ``is running` check prevents `set volume control` from starting app when it's not already running    Y � _ _ � ` i s   r u n n i n g `   c h e c k   p r e v e n t s   ` s e t   v o l u m e   c o n t r o l `   f r o m   s t a r t i n g   a p p   w h e n   i t ' s   n o t   a l r e a d y   r u n n i n g��  ��  ��  ��   M  ` a ` l     ��������  ��  ��   a  b c b l      �� d e��   d  Just for fun:    e � f f  J u s t   f o r   f u n : c  g h g l     ��������  ��  ��   h  i j i l      �� k l��   k  First Draft    l � m m  F i r s t   D r a f t j  n o n l      �� p q��   p
on ApplicationIsRunning(appName)	tell application "System Events" to set appNameIsRunning to exists (processes where name is appName)	return appNameIsRunningend ApplicationIsRunningon spot_state()	tell application "Spotify" to set ps to player state as string	return psend spot_stateif ApplicationIsRunning("Spotify") then	do shell script "open -g /Applications/Spotify.app"	if (spot_state() = "playing") then		tell application "Spotify"			set currentvol to get sound volume			set sound volume to currentvol + 10		end tell		do shell script "afplay /System/Library/Sounds/Pop.aiff"	end ifelse	set theOutput to output volume of (get volume settings)	set volume output volume (theOutput + 6.25)	do shell script "afplay /System/Library/Sounds/Pop.aiff"end if
    q � r r 
 o n   A p p l i c a t i o n I s R u n n i n g ( a p p N a m e )  	 t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "   t o   s e t   a p p N a m e I s R u n n i n g   t o   e x i s t s   ( p r o c e s s e s   w h e r e   n a m e   i s   a p p N a m e )  	 r e t u r n   a p p N a m e I s R u n n i n g  e n d   A p p l i c a t i o n I s R u n n i n g   o n   s p o t _ s t a t e ( )  	 t e l l   a p p l i c a t i o n   " S p o t i f y "   t o   s e t   p s   t o   p l a y e r   s t a t e   a s   s t r i n g  	 r e t u r n   p s  e n d   s p o t _ s t a t e   i f   A p p l i c a t i o n I s R u n n i n g ( " S p o t i f y " )   t h e n  	 d o   s h e l l   s c r i p t   " o p e n   - g   / A p p l i c a t i o n s / S p o t i f y . a p p "  	 i f   ( s p o t _ s t a t e ( )   =   " p l a y i n g " )   t h e n  	 	 t e l l   a p p l i c a t i o n   " S p o t i f y "  	 	 	 s e t   c u r r e n t v o l   t o   g e t   s o u n d   v o l u m e  	 	 	 s e t   s o u n d   v o l u m e   t o   c u r r e n t v o l   +   1 0  	 	 e n d   t e l l  	 	 d o   s h e l l   s c r i p t   " a f p l a y   / S y s t e m / L i b r a r y / S o u n d s / P o p . a i f f "  	 e n d   i f  e l s e  	 s e t   t h e O u t p u t   t o   o u t p u t   v o l u m e   o f   ( g e t   v o l u m e   s e t t i n g s )  	 s e t   v o l u m e   o u t p u t   v o l u m e   ( t h e O u t p u t   +   6 . 2 5 )  	 d o   s h e l l   s c r i p t   " a f p l a y   / S y s t e m / L i b r a r y / S o u n d s / P o p . a i f f "  e n d   i f 
 o  s t s l     ��������  ��  ��   t  u v u l      �� w x��   w  Second Draft    x � y y  S e c o n d   D r a f t v  z { z l      �� | }��   |��
set s_state to (application "Spotify" is running)

on playing(s_state)
	if s_state then
		tell application "Spotify"
			set pstate to player state as string
			set currentvol to get sound volume
		end tell
		if pstate = "playing" then
			set p to true
		else
			set p to false
		end if
	end if
	return p
end playing

set sys_vol to output volume of (get volume settings)
set volume output volume (sys_vol + 6.25)
do shell script "afplay /System/Library/Sounds/Pop.aiff"

if s_state then
	if playing(s_state) then
		do shell script "open -g /Applications/Spotify.app"
		tell application "Spotify"
			set currentvol to get sound volume
			set sound volume to currentvol + 6.25
		end tell
	end if
end if
    } � ~ ~~ 
 s e t   s _ s t a t e   t o   ( a p p l i c a t i o n   " S p o t i f y "   i s   r u n n i n g ) 
 
 o n   p l a y i n g ( s _ s t a t e ) 
 	 i f   s _ s t a t e   t h e n 
 	 	 t e l l   a p p l i c a t i o n   " S p o t i f y " 
 	 	 	 s e t   p s t a t e   t o   p l a y e r   s t a t e   a s   s t r i n g 
 	 	 	 s e t   c u r r e n t v o l   t o   g e t   s o u n d   v o l u m e 
 	 	 e n d   t e l l 
 	 	 i f   p s t a t e   =   " p l a y i n g "   t h e n 
 	 	 	 s e t   p   t o   t r u e 
 	 	 e l s e 
 	 	 	 s e t   p   t o   f a l s e 
 	 	 e n d   i f 
 	 e n d   i f 
 	 r e t u r n   p 
 e n d   p l a y i n g 
 
 s e t   s y s _ v o l   t o   o u t p u t   v o l u m e   o f   ( g e t   v o l u m e   s e t t i n g s ) 
 s e t   v o l u m e   o u t p u t   v o l u m e   ( s y s _ v o l   +   6 . 2 5 ) 
 d o   s h e l l   s c r i p t   " a f p l a y   / S y s t e m / L i b r a r y / S o u n d s / P o p . a i f f " 
 
 i f   s _ s t a t e   t h e n 
 	 i f   p l a y i n g ( s _ s t a t e )   t h e n 
 	 	 d o   s h e l l   s c r i p t   " o p e n   - g   / A p p l i c a t i o n s / S p o t i f y . a p p " 
 	 	 t e l l   a p p l i c a t i o n   " S p o t i f y " 
 	 	 	 s e t   c u r r e n t v o l   t o   g e t   s o u n d   v o l u m e 
 	 	 	 s e t   s o u n d   v o l u m e   t o   c u r r e n t v o l   +   6 . 2 5 
 	 	 e n d   t e l l 
 	 e n d   i f 
 e n d   i f  
 {   �  l     ��������  ��  ��   �  ��� � l     ��������  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     0 � �  - � �  8 � �  A � �  L����  ��  ��   �   � 
������ @�� G�� V����
�� .sysogtvlvlst   ��� null
�� 
ouvl�� 0 sys_vol  
�� .aevtstvlnull��� ��� nmbr
�� .sysoexecTEXT���     TEXT
�� 
prun
�� 
pVol�� 1*j  �,E�O*���l O�j O��,e  � �*�,FUY h ascr  ��ޭ