package urbanizacja;

class Street   implements NumbersHaver

 {
// Atrybuty:
	private int	Numbers;
	private String	Name;
// Getters & Setters:
	private int	getNumbers() { return Numbers; }
	private void setNumbers(int w) { Numbers = w; }
	private String	getName() { return Name; }
	private void setName(String w) { Name = w; }
// Operacje:	
	public boolean isNumber () {
			return !Numbers.empty();
		 }		
		public void crossing () {
			Name = "skrzyżowanie"
		 }		
	
};
