package com.javapaul.test {
import com.javapaul.event.CompleteEvent;
import com.javapaul.test.load.Data;
import com.javapaul.test.model.Test;
import com.javapaul.util.ArrayTools;

public class Controller implements IController{


    private var testVector:Vector.<Test>;
    private var data:Data;
    public function Controller() {
        data = new Data();
        data.addEventListener(CompleteEvent.COMPLETE, handlerComplete);
    }

    private function handlerComplete(event:CompleteEvent):void {

        testVector = data.test;
        testVector.sort(com.javapaul.util.ArrayTools.randomSort());

        getQuestion();
    }

    public function getQuestion():void {
        for each(var _object:Object in testVector){
            var object:Test = _object as Test ;
            if(object.isActivate == false){
                trace(object.question);
            }



        }
    }
}
}
