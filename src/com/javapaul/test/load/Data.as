package com.javapaul.test.load {
import com.javapaul.event.CompleteEvent;
import com.javapaul.load.LoadXML;
import com.javapaul.load.LoadXMLEvent;
import com.javapaul.test.model.Test;



import flash.events.EventDispatcher;


public class Data extends EventDispatcher{

    public var test:Vector.<com.javapaul.test.model.Test>;
    public function Data() {
        super();
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

                _test.answer = xml.question[i].@answer;

                _alternative = new Vector.<String>();

                    for(var u:Number = 0; u < xml.question[i].alternative.length(); u++){

                        _alternative.push(xml.question[i].alternative[u]);

                    }
                _test.alternative = _alternative;
                test.push(_test);
        }
        run();
    }

    private function run():void {
        this.dispatchEvent(new CompleteEvent(CompleteEvent.COMPLETE, true));
    }
}
}
