package {

import com.javapaul.event.CompleteEvent;
import com.javapaul.test.Controller;
import com.javapaul.test.load.Data;
import flash.display.Sprite;

[SWF (width=800, height=600, backgroundColor=0xffFFFF, frameRate=35)]
public class Launcher extends Sprite {



    public function Launcher() {
        var controller:Controller = new Controller();
    }

    private function handlerComplete(event:CompleteEvent):void {
        trace("work it");

    }
}
}
