using System;
class Program
{
    static void Main(string[] args)
    {
        Logger logger1 = Logger.GetInstance();
        Logger logger2 = Logger.GetInstance();

        logger1.Log("Singleton Pattern Example");

        if (logger1 == logger2)
        {
            Console.WriteLine("Both objects are the same instance.");
        }
    }
}
