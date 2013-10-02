package {

import flash.display.Sprite;
import flash.text.TextField;

public class Test extends Sprite {
    public function Test() {
        var textField:TextField = new TextField();
        textField.text = "Hello, World";
        addChild(textField);
    }
}
}
