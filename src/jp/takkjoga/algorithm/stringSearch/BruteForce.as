package jp.takkjoga.algorithm.stringSearch
{
public class BruteForce
{
    public static function execute(text:String, pattern:String):int
    {
        var i:int = 0; // text の位置
        var j:int = 0; // pattern の位置
        while (i < text.length && j < pattern.length) {
            var t:String = text.charAt(i);
            var p:String = pattern.charAt(j);
            if (t == p) {
                if (j == pattern.length - 1) {
                    return i - j;
                }
                i ++;
                j ++;
            }
            else {
                i ++;
                j = 0;
            }
        }
        return -1;
    }
}

}
