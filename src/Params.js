/*:
 * @plugindesc An example plugin written in Haxe that displays hello world on the map
 * <Luna_TestPlugin>
 *
 * @target MZ MV
 * @author LunaTechs | Author
 * @url https://lunatechs.dev/plugins/luna-test-plugin/
 * 
 * @param helloWorldRect
 * @text Hello World Dimensions
 * @desc The dimensions of the hello world window
 * @type struct<Rectangle>
 * @default {"x":"0","y":"0","width":"200","height":"70"}
 * 
 * @command show
 * @desc Show the hello world window
 * @type bool
 * @default true
 * 
 * @command hide
 * @desc Hides the hello world window
 * @type bool
 * @default true
 * 
 * 
 @help
 ==== Summary  ====
This plugin is a basic example and demonstration for using Haxe and LunaTea
to develop your RPG Maker plugins.

==== Plugin Commands ====
The plugin command information is for MV but still contains valuable
information for MZ as well. 

For MZ, the commands and what they do are explained in the new plugin command
manager!

Main Command: HelloWorld 
  as shorter alternatives you may use hw

-----------------------
HelloWorld hide
-----------------------
show - Keyword for hiding the hello world window

-----------------------
HelloWorld show
-----------------------
show - Keyword for showing the hello world window

=== Contact us ===
[Website] : https://lunatechs.dev
[Twitter] : https://twitter.com/LunaTechsDev
[Github]  : https://github.com/LunaTechsDev
[Patreon] : https://patreon.com/LunaTechsDev

=== License ===
This plugin is released under MIT license.
https://mit-license.org/

Copyright (c) 2020 LunaTechsDev
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE
 */

/*~struct~Rectangle:
 * @param x
 * @text X
 * @desc The x position of this rectangle
 * @type number
 * @default 0
 * 
 * @param y
 * @text Y
 * @desc The y position of this rectangle
 * @type number
 * @default 0
 * 
 * @param width
 * @text Width
 * @desc The height of this rectangle
 * @type number
 * @default 0
 * 
 * @param height
 * @text Height
 * @desc The width of this rectangle
 * @type number
 * @default 0
 */