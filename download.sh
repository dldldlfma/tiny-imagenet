FOLDER1=tiny-imagenet-200
FOLDER2=tiny-imagenet-200/train
ZIP1=tiny-imagenet-200.zip
if [ -d $FOLDER1  ]; then
	echo "Dataset Folder is exist";
	if [ -d $FOLDER2 ]; then
		echo "file is already unzip";
	else
		echo "unzip tiny-imagenet-200.zip";
		unzip $ZIP1
	fi
else
	if [ -f $ZIP1 ]; then
		unzip $ZIP1
	else
		echo "Download Tiny-ImageNet Dataset";
		wget http://cs231n.stanford.edu/tiny-imagenet-200.zip
		echo "unzip tiny-imagenet-200.zip";
		unzip $ZIP1
	fi
fi
