package minecraft;

import processing.core.*;


/**
 * ##library.name##
 * ##library.sentence##
 * ##library.url##
 *
 *
 * @author      ##author##
 * @modified    ##date##
 * @version     ##library.prettyVersion## (##library.version##)
 *
 * @example MobiusExample
 */
public class Minecraft {
	
	PApplet parent;
	protected int address;
	protected int port;
	protected String name;

	public Minecraft(PApplet parent, int address, int port, String name) {
		this.parent = parent;
		this.address = address;
		this.port = port;
		this.name = name;
	}
}
