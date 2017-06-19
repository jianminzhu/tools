Zen Coding for EmEditor Professional
v0.7
May 2, 2011
based on Zen Coding for textarea v0.7
http://code.google.com/p/zen-coding/

Code license:
GNU General Public License v3
http://www.gnu.org/licenses/gpl.html

Ported for EmEditor by Yutaka Emura (Emurasoft, Inc.)
http://www.emeditor.com/


It is very easy to use Zen Coding in EmEditor since EmEditor supports Javascript.  In order for EmEditor to support Zen Macros, one only needs to edit the interface portion of Zen Coding, but the core part will need few or no changes.

There are two ways to use Zen Coding for EmEditor Professional.  The first method is to utilize the Snippets plug-in.  This is the easiest method because it will automatically assign keyboard shortcuts for all the commands, and it allows you to bypass a popup menu.

To install Zen Coding for the Snippets plug-in
==============================================

1. Copy "zen_emeditor.jsee" to the My Macros folder. The My Macros folder usually exists under the My Documents folder. However, if you have never used macros before, this folder may not exist already. In that case, you can create My Macros folder under the My Documents folder, and then copy the macro into this folder.

2. If the Snippets custom bar is not visible, Select Snippets on the Tools > Plug-ins (or click the Snippets button on the Plug-ins Toolbar).

3. Right click on the Snippets custom bar to display a menu.

4. Select Import/Export > Import to Root...

5. Select "zen-coding-en.eesnip".

6. If you wish to use Zen Coding while the Snippets custom bar is hidden, you can right-click on the Snippets button on the Plug-ins Toolbar (or in the Snippets Custom Bar, select View > Plug-in Properties), and click "Run Background".

In the Snippets Custom Bar, you will see a new folder named "Zen Coding", and in this folder you will see 17 new macro items.  All of these macros are assigned with shortcut keys:

 - Balance Tag (Ctrl+Shift+D)
 - Decrement number by 0.1 (Ctrl+Shift+Num -)
 - Decrement number by 1 (Ctrl+Num -)
 - Decrement number by 10 (Shift+Num -)
 - Evaluate Math Expression (Ctrl+=)
 - Expand Abbreviation (F12)
 - Go to Matching Pair (Ctrl+[)
 - Increment number by 0.1 (Ctrl+Shift+Num +)
 - Increment number by 1 (Ctrl+Num +)
 - Increment number by 10 (Shift+Num +)
 - Merge Lines (Ctrl+Shift+M)
 - Next Edit Point (Ctrl+\)
 - Previous Edit Point (Ctrl+Shift+\)
 - Remove Tag (Ctrl+Shift+')
 - Split/Joint Tag (Ctrl+;)
 - Toggle Comment (Alt+/)
 - Wrap with Abbreviation (Ctrl+Shift+A)

The shortcut keys described above are for U.S. keyboards. International keyboards may have different key layouts and thus short cuts may be different.  You can customize shortcut keys from each snippet properties.


To install Zen Coding as a direct macro
=======================================

1. Copy both "zen_emeditor.jsee" and "zen_popup_menu.jsee" to the My Macros folder (usually My Documents\My Macros).  

2. On the Macros menu, click on "Select...", and select "zen_popup_menu.jsee".

3. If you wish to assign a keyboard shortcut to run this macro, select "Properties for All Configuration" on the Tools menu.  Click the Keyboard tab.  Select "My Macros" on the Category drop-down list, and select "zen_popup_menu.jsee".  In the "Press New Shortcut Key" text box, press your favorite keyboard shortcut, and click the Assign button.


To use Zen Coding
=================

The most frequent action you would use is "Expand Abbreviation".

For instance, if you type "div#name", and press F12 (if you install as the Snippets), or run the "zen_popup_menu.jsee" macro and select "Expand Abbreviation", this abbreviation will expand to:

<div id="name"></div>

For more information about Zen Coding syntax and more useful actions, please refer to:

Zen Coding:
http://code.google.com/p/zen-coding/

Zen Coding syntax:
http://code.google.com/p/zen-coding/wiki/ZenHTMLSelectorsEn

HTML Elements:
http://code.google.com/p/zen-coding/wiki/ZenHTMLElementsEn

CSS Properties:
http://code.google.com/p/zen-coding/wiki/ZenCSSPropertiesEn

Zen Coding cheatsheets:
http://code.google.com/p/zen-coding/wiki/CheatSheets


Special thanks to Sergey Chikuyonok and Zen Coding developers!

------------
May 13, 2010  First release
May 17, 2010  Snippet file (zen-coding.eesnip) modified to work with all configurations.
May 18, 2010  Added Japanese-localized Snppet file.
May 2, 2011   Support for Zen Coding v0.7.  New commands include "Evaluate Math Expression", "Decrement number by 0.1/1/10", and "Increment number by 0.1/1/10".  For details, please see release notes at https://github.com/sergeche/zen-coding/wiki/Release-Notes
