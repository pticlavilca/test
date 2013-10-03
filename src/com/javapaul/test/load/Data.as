package com.javapaul.test.load {
import com.javapaul.load.LoadXML;
import com.javapaul.load.LoadXMLEvent;
import com.javapaul.test.model.Test;

public class Data {

    private var test:Vector.<com.javapaul.test.model.Test>;
    public function Data() {
        test = new Vector.<com.javapaul.test.model.Test>();
        loadData();
    }

    private function loadData():void{
       var loadXML:LoadXML = new LoadXML("config.xml");
       loadXML.addEventListener(LoadXMLEvent.LOAD_COMPLETE, completeLoad);
    }

    private function completeLoad(event:LoadXMLEvent):void {
        var xml:XML = event.xml;


        var _alternative:Vector.<String>;
        for(var i:Number= 0; i<xml.question.length(); i++){

            var _test:com.javapaul.test.model.Test = new com.javapaul.test.model.Test();
            _test.question = xml.question[i].@data;

            var _answer:com.javapaul.test.model.Test = new com.javapaul.test.model.Test();
            _answer.answer = xml.question[i].@answer;

            for(var u:Number = 0; u < xml.question[i].alternative.length; u++){
                _alternative = new Vector.<String>();
                _alternative.push(xml.question[i].alternative[i]);

            }
            _test.alternative = _alternative;
            test.push(_test);
        }
        run();
    }

    private function run():void {
        var newTest:com.javapaul.test.model.Test = test[0];
        trace(newTest.question[0]);
        trace(newTest.alternative[0].toString());
    }
}
}
