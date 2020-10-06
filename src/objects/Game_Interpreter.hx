package objects;

import rm.objects.Game_Interpreter as RmGamne_Interpreter;

using Lambda;

class Game_Interpreter extends RmGamne_Interpreter {
  public override function pluginCommand(command: String, args: Array<String>) {
    var commands = ['lunahelloworld', 'helloworld', 'hw'];

    if (commands.exists(c -> c == command.toLowerCase())) {
      var subCommand = args[0].toLowerCase();

      switch (subCommand) {
        case 'show':
          var window: windows.Window_HelloWorld = untyped core.Amaryllis.currentScene().helloWorldWindow;
          window.show();
        case 'hide':
          var window: windows.Window_HelloWorld = untyped core.Amaryllis.currentScene().helloWorldWindow;
          window.hide();
      }
    } else {
      untyped _Game_Interpreter_pluginCommand.call(this, command, args);
    }
  }
}
