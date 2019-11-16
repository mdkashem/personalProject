using System;
namespace GuiterHero
{
    public interface GuitarBehavior
    {
        void PlayGuitar(string name);
       
    }

    public class GibsonFlyingV : GuitarBehavior
    {
        public void PlayGuitar(string name)
        {
            Console.WriteLine(name + " playing Gibson Flying V");
        }
    }

    public class FenderTelecaster : GuitarBehavior
    {
        public void PlayGuitar(string name)
        {
            Console.WriteLine(name + " playing Fender Telecaster.");
        }
    }

    public class GibsonSG : GuitarBehavior
    {
        public void PlayGuitar(string name)
        {
            Console.WriteLine(name + " playing Gibson SG");
        }
    }
}