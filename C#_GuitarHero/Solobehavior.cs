using System;
namespace GuiterHero
{
    public interface SoloBehavior
    {
        void playSolo(string name);
    }
    public class SetGuitarOnFire : SoloBehavior
    {
        public void playSolo(string name)
        {
            Console.WriteLine(name+ " Sats Guitar on Fire ");
        }

    }
    public class SmashGuitar : SoloBehavior
    {
        public void playSolo(string name)
        {
            Console.WriteLine(name + " Smash Guitar.");
        }

    }

    public class JumpOffStage : SoloBehavior
    {
        public void playSolo(string name)
        {
            Console.WriteLine(name + " Jump Off Stage.");
        }

    }


}