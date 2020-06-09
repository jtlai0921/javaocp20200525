package Other;

import java.io.File;

public class Tools {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		new Tools().reNameFile();
	}

	public static void p(Object o) {
		System.out.println(o.toString());
	}

	public void reNameFile() {
		String path = "/Users/nicole/Desktop/ocp/eclipse-workspace/java_Source/WebContent/";
		int NewFile = 1;
		int f = 5;
//		int t = f + NewFile + 1;
		for (int i = 0; i < NewFile; i++) {
			File file = new File(path + "NewFile" + (i == 0 ? "" : i) + ".jsp"); // 指定檔名及路徑
			String name = "ex" + (f + i);
//			String filename = file.getAbsolutePath();
//			if (filename.indexOf(".") >= 0) {
//				filename = filename.substring(0, filename.lastIndexOf("."));
//			}
			p(file.renameTo(new File(path + name + ".jsp"))); // 改名
		}

	}
}
