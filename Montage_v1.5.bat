@ECHO OFF
echo %cd%
magick montage *.tif -geometry +0+0 -compose copy montage.tif
magick montage.tif -resize "2000000@" montage.png
del montage.tif