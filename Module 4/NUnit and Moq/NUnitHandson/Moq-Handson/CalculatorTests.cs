using NUnit.Framework;

namespace NUnitHandson
{
    [TestFixture]
    public class MathOperationsTests
    {
        MathOperations math;

        [SetUp]
        public void Setup()
        {
            math = new MathOperations();
        }

        [Test]
        public void Square_Test()
        {
            Assert.AreEqual(25, math.Square(5));
        }

        [Test]
        public void IsEven_Test()
        {
            Assert.IsTrue(math.IsEven(8));
        }
    }
}
