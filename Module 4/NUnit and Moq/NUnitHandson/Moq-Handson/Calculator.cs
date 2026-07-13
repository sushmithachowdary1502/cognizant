namespace NUnitHandson
{
    public class MathOperations
    {
        public int Square(int number)
        {
            return number * number;
        }

        public int Cube(int number)
        {
            return number * number * number;
        }

        public bool IsEven(int number)
        {
            return number % 2 == 0;
        }

        public int FindMaximum(int a, int b)
        {
            return (a > b) ? a : b;
        }
    }
}
