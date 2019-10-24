package guiterHeroGame;

public  class GameCharacter {
	
	private String name;
	private GuitarBehavior guitar;
	private SoloBehavior solo;
	
	public GameCharacter(String name, GuitarBehavior guitar, SoloBehavior solo){
		this.name = name;
		this.guitar = guitar;
		this.solo = solo;
	}
public void playGuitar(){
	this.guitar.playGuitar(name);
}

public void playSolo(){
	this.solo.playSolo(name);
}

public void setSolo(SoloBehavior solo){
	this.solo=solo;
	
}

public void setGuitar(GuitarBehavior guitar){
	this.guitar=guitar;
}
}
