package testSuite.tests
{

import org.flexunit.Assert;
import jp.takkjoga.algorithm.stringSearch.BruteForce;

public class StringSearchTest
{
    [Test]
    public function bruteForce():void
    {
        var result:int = BruteForce.execute("abc", "a");
        Assert.assertEquals(0, result);
    }

    [Ignore]
    [Test]
    public function bruteForce2():void
    {
        var result:int = BruteForce.execute("abc", "b");
        Assert.assertEquals(0, result);
    }

    [Ignore]
    [Test]
    public function bruteForce3():void
    {
        var result:int = BruteForce.execute("abc", "d");
        Assert.assertEquals(0, result);
    }

    [Test]
    public function bruteForceLongText():void
    {
        var result:int = BruteForce.execute("abcdefg", "abc");
        Assert.assertEquals(0, result);
    }

    [Test]
    public function bruteForceLongText2():void
    {
        var result:int = BruteForce.execute("abcdefg", "def");
        Assert.assertEquals(3, result);
    }

    [Test]
    public function bruteForceLongText3():void
    {
        var result:int = BruteForce.execute("abcdefg", "fgh");
        Assert.assertEquals(-1, result);
    }

    [Test]
    public function bruteForceLongText4():void
    {
        var result:int = BruteForce.execute("abcdefg", "abcdefgh");
        Assert.assertEquals(-1, result);
    }
}

}
