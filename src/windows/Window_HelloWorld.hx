package windows;

import rm.windows.Window_Base;

/**
 * Here we create our new window, same way you would in vanilla JS using the
 * class syntax.
 * 
 * Note: We use the @:native() tag to ensure the class will be
 * named Window_HelloWorld in the final JS output.
 */
 @:native('Window_HelloWorld')
class Window_HelloWorld extends Window_Base {
  /**
   * Here is how we ensure this window will be compatible with both RPG Maker MV
   * and RPG Maker MZ when we compile our plugins. When compilation starts it
   * will first compile the MV version of the plugin and when it hits this
   * compilation flag it will only include the code in the first portion of
   * this conditonal.
   *
   */
  #if compileMV
  public function new(x, y, width, height) {
    super(x, y, width, height);
    refresh();
  }
  #else
  public function new(rect) {
    super(rect);
    refresh();
  }
  #end
  public function refresh() {
    var width = this.contents.width;
    drawText('Hello World', 0, 0, width, 'center');
  }

  public override function show() {
    super.show();
    trace('Hellow World!');
  }
}
