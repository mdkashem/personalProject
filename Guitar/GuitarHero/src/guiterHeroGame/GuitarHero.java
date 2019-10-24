package guiterHeroGame;

public class GuitarHero {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("*** *** *** player 1 *** *** *** *** ");
		GuitarBehavior guitar1 = new GibsonFlyingV();
		SoloBehavior solo1 = new SetGuitarOnFire();
		GameCharacter player1 = new GameCharacter("Slash", guitar1, solo1 );
		
		player1.playGuitar();
		player1.playSolo();
		System.out.println("*** *** *** player 2 *** *** *** *** ");
		
		GuitarBehavior guitar2 = new GibsonSG();
		SoloBehavior solo2 = new JumpOffStage();
		GameCharacter player2 = new GameCharacter("Jimi Hendrix", guitar2, solo2 );
		
		player2.playGuitar();
		player2.playSolo();
		
        System.out.println("*** *** *** player 3 *** *** *** *** ");
		
		GuitarBehavior guitar3 = new FenderTelecaster();
		SoloBehavior solo3 = new SmashGuitar();
		GameCharacter player3 = new GameCharacter("Angus Young", guitar3, solo3 );
		
		player3.playGuitar();
		player3.playSolo();
		
		System.out.println("*** *** *** test for setGuitar() and setSolo() *** *** *** *** ");
		
		player2.setGuitar(guitar1);
		player2.playGuitar();
		player2.setSolo(solo1);
		player2.playSolo();
	}

}
