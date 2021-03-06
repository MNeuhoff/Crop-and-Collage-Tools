# Crop and Collage Tools
 Tools for creating a collage of crops from a series of images using imageJ and imageMagick. This project was created with the goal of streamlining
 manual measuring of DNA origami structures from TEM images. The imageJ macro provides a quick way to go through a folder of images and save crops
 from that image into a directory. 
## Initial Installation

1. Find the folder where you’ve installed ImageJ (You can get imageJ from [Here](https://imagej.nih.gov/ij/download.html))
2. Go to the folder ImageJ\Macros and copy JustCrop.ijm to that folder
3. Open ImageJ
4. Go to Plugins → Macros (First one)→ Install…	Then select “batchCrop.ijm”
5. Download ImageMagick from: [Here](https://imagemagick.org/script/download.php#windows) 
6. Double click on the ImageMagick installer.
	1. You don’t need to create a desktop icon or install FFmpeg, but do check “Add application directory to your system path”
	2. Continue through until the installation is complete


## Workflow
       
1. Open ImageJ
2. Plugins → Macros (2nd one) → “batchCrop”
3. Pick the folder with the images from which you want to crop
4. Pick the folder where you want the cropped images to end up
5. Several windows should pop up. First use the “specify” window to pick a selection size for what you want to crop out. Try to pick a size just large enough to accommodate every orientation of your structure.
6. Then you can drag your selection rectangle over your first structure 
7. Press “T” on your keyboard when you are satisfied with the selection
8. You can now drag the selection box to the next structure (this should leave the first box undisturbed) and hit “T” to enter it into the ROI manager
9. Repeat until all structures are selected
10. Hit OK on the “Action Required” Window
11. The process will repeat for each image in the source folder

When you are finished, you will now have two folders within your selected destination folder. The first, **Crop ROIs**, contains the coordinates of the 
selections from each image as a .zip file. These can be opened in the imageJ ROI manager if you would like to change a few selections without having
to reselect everything in each image. The second, **Cropped_Images**, contains the actual images.

Next you need to make a montage from the cropped images.

12. Copy Montage_v1.5.bat from the “Crop and Collage Tools” folder to the directory with all of the freshly cropped images (**Cropped_Images**). 
13. Double click on Montage_v1.5.bat and after it completes you should have a picture called montage.png in folder and that’s your finished project.

## Please feel free to raise any issues on Github (or find me on Slack for help)