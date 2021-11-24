dir = getDirectory("Choose Source Directory ");
dir2 = getDirectory("Choose Destination Directory ");
File.makeDirectory(dir2+"Cropped_Images");

list = getFileList(dir);
cropSaveDir = dir2+"Crop ROIs";
File.makeDirectory(cropSaveDir);
saveDir=dir2+"Cropped_Images";
if (!File.exists(cropSaveDir))
	exit("Unable to create directory");
for (imageIndex=0; imageIndex<list.length; imageIndex++) {
	run("ROI Manager...");
	showProgress(imageIndex+1, list.length);
	open(dir+list[imageIndex]);
	roiManager("show all with labels");
	run("Specify...");
	waitForUser("Make Selections in ROI Manager then click OK \n Do not click OK until all selections have been made for one image!");
		inputDirectory = getDirectory("Image");
		startImageName=getTitle();
		dotIndex = indexOf(startImageName, ".");
		name = substring(startImageName, 0, dotIndex);
		myDir = inputDirectory+name+File.separator;
		for (j=0; j<roiManager("count"); ++j) {
			roiManager("Select", j);
			run("Crop");
			saveAs("Tiff", saveDir+File.separator+imageIndex+"_"+j+".tif");
			close();
			open(inputDirectory+startImageName);
		}
		roiManager("Save", cropSaveDir+File.separator+"image_"+imageIndex+"_"+"crops.zip");
		roiManager("deselect");
		roiManager("delete");
	close();
}


/*
String numberAsString = String.valueOf(number);
String paddedNumberAsString = "0000000000".substring(numberAsString.length()) + numberAsString;
*/