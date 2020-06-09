package model;

public class Porder {
		private String name;
		private int ruler;
		private int pen;
		private int sum;
		
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public int getRuler() {
			return ruler;
		}
		public void setRuler(int ruler) {
			this.ruler = ruler;
		}
		public int getPen() {
			return pen;
		}
		public void setPen(int pen) {
			this.pen = pen;
		}
		public int getSum() {
			
			sum=ruler*25+pen*30;
			
			return sum;
		}
		
}
