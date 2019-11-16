/***
 * Author: Md Abul Kashem
 * Class Assignment 
 * 
 * The upcoming Guitar Hero VIII: Legends of Rock needs a player configuration system. 
 * Guitar Hero VIII lets you play three different characters (Slash, Jimi Hendrix, and Angus Young). 
 * Each character can use one of three different guitars (Gibson SG, Fender Telecaster or Gibson Flying V) 
 * as well as perform a unique solo act (Put the Guitar on Fire, Jump off the Stage, Smash the Guitar). 
 * Implement a player configuration system in C# using the Strategy design pattern.
 * 
 * */
using System;
namespace GuiterHero
{

    class GameCharactar
    {
        private String name;
        private GuitarBehavior guitar;
        private SoloBehavior solo;
        public GameCharactar(String name, GuitarBehavior guitar, SoloBehavior solo )
        {
            this.name = name;
            this.guitar = guitar;
            this.solo = solo;
        }
        public void playGutar()
        {
            guitar.PlayGuitar(name);
        }

        public void playSolo()
        {
            solo.playSolo(name);
        }

        public void setSlolo(SoloBehavior solo)
        {
            this.solo = solo;
        }

        public void setGuitar(GuitarBehavior guitar)
        {
            this.guitar = guitar;
        }
    } // GameCharactar end
   


    class Program
    {
        static void Main(string[] args)
        {
            GuitarBehavior guitar1 = new GibsonFlyingV();
            SoloBehavior solo1 = new JumpOffStage();
            GameCharactar player1 = new GameCharactar("Slash",guitar1, solo1);
            player1.playGutar();
            player1.playSolo();

            Console.WriteLine("\n");

            GuitarBehavior guitar2 = new FenderTelecaster();
            SoloBehavior solo2 = new SmashGuitar();
            GameCharactar player2 = new GameCharactar("Jimi Hendrix ", guitar2, solo2);
            player2.playGutar();
            player2.playSolo();

            Console.WriteLine("\n");
            GuitarBehavior guitar3 = new GibsonSG();
            SoloBehavior solo3 = new SetGuitarOnFire();
            GameCharactar player3 = new GameCharactar("Angus Young ", guitar3, solo3);
            player3.playGutar();
            player3.playSolo();

            Console.WriteLine("\n");
            player3.setGuitar(guitar1);
            player3.playGutar();


        }
    }
}
