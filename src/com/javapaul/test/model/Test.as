/**
 * Created with IntelliJ IDEA.
 * User: Paul
 * Date: 2/10/13
 * Time: 10:02 AM
 * To change this template use File | Settings | File Templates.
 */
package com.javapaul.test.model {
public class Test {
    private var _question:String;
    private var _alternative:Vector.<String>;
    private var _answer:Number = 0;



    public function Test() {

    }

    public function get question():String {
        return _question;
    }

    public function set question(value:String):void {
        _question = value;
    }

    public function get alternative():Vector.<String> {
        return _alternative;
    }

    public function set alternative(value:Vector.<String>):void {
        _alternative = value;
    }

    public function get answer():Number {
        return _answer;
    }

    public function set answer(value:Number):void {
        _answer = value;
    }
}
}
