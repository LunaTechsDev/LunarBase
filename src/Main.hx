import rm.Globals;
import rm.managers.PluginManager;
import rm.types.RM.PluginSettings;
import rm.scenes.Scene_Map as RmScene_Map;
import rm.objects.Game_Interpreter as RmGamne_Interpreter;

import objects.Game_Interpreter;
import scenes.Scene_Map;

/**
 * Haxe standard library has no `.find()` method for array's, so we
 * use Lambda to include it.
 */
using Lambda;
/**
 * Haxe standard library has no `.contains()` method for string, so we
 * use StringTools to include it.
 */
using StringTools;

/**
 * This is the Main class which serves as an entry point for the compiler.
 * If you're coming from JavaScript, you are aware that main.js and index.js
 *  are 2 very common entry point files.
 */
class Main {
  // This is used for MZ plugin commands
  public static var pluginName: String = 'Luna_TestPlugin';

  // We define our params variable and make it a Dynamic type.
  public static var params: Dynamic;

  public static function main() {
    /**
     * You can get parameters by looping the plugins object in `js/plugins.js`
     * which is accessed by importing `rm.Globals.Plugins` from `LunaTea`, in
     * our example, we simply import `rm.Globals` and access it using
     * `Globals.Plugins`
     *
     * You can import `rm.manager.PluginManager` and retrieve your raw
     * parameters there as well.
     *
     * var rawParams = PluginManager.parameters('Luna_TestPlugin');
     *
     */
    var rawParams = Globals.Plugins.find((p: PluginSettings) -> p.description.contains('<Luna_TestPlugin>')).parameters;

    /**
     * Here we use a LunaTea helper method which parses the raw parameters into
     * an object. This happens on the JavaScript side, so currently you do not
     * get any types from the returned paraemters.
     */
    params = utils.Parse.parseParameters(cast rawParams);

    /**
     * If you have any plugin commands to create, you can write them in this method
     */
    registerPluginCommands();

    /**
     * Haxe macro which allows us to write normal Haxe classes and use them
     * to overwrite, alias and extend default RPG Maker classes.
     *
     * See `scenes/Scene_Map.hx` for more information on aliasing and extending
     * default RPG Maker classes.
     */
    utils.Comment.title('Scene_Map');
    macros.FnMacros.jsPatch(true, RmScene_Map, Scene_Map);
  }

  /**
   * Since MZ makes it easier to create plugin commands and access its data
   * we can create plugin commands with less code and even include it all in our
   * `Main` class. Of course, if the plugin commnds become large, you may want
   * to move them to their own class.
   */
  public static function registerPluginCommands() {
    utils.Comment.title('Plugin Commands');
    #if !compileMV
    PluginManager.registerCommand(pluginName, 'show', (args) -> {
      /**
       * Amaryllis is a helper library, here use use it to get the current scene
       * which should be Scene_Map and we access the new variable we made
       * in our scenes/Scene_Map class. 
       * 
       * Note: Because helloWorldWindow is not accesible through LunaTea, we need
       * to use untyped.
       */
      var window: windows.Window_HelloWorld = untyped core.Amaryllis.currentScene().helloWorldWindow;
      window.show();
    });

    PluginManager.registerCommand(pluginName, 'hide', (args) -> {
      var window: windows.Window_HelloWorld = untyped core.Amaryllis.currentScene().helloWorldWindow;
      window.hide();
    });
    #else
    macros.FnMacros.jsPatch(true, RmGamne_Interpreter, Game_Interpreter);
    #end
  }
}
