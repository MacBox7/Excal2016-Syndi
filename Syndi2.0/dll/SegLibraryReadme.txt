Contains functions :

<<<<<<< HEAD

1. static List<string> GetVideos(string path);


2. static List<string> GetImages(string path);


3. static List<string> GetDocs(string path);


4. static List<string> GetAudios(string path);


5. static void CurrSearch(string sDir, Regex regex, List<string> result);  //Search files in the 	directory


=======

1. static List<string> GetVideos(string path);


2. static List<string> GetImages(string path);


3. static List<string> GetDocs(string path);


4. static List<string> GetAudios(string path);


5. static void CurrSearch(string sDir, Regex regex, List<string> result);  //Search files in the 	directory


>>>>>>> 9efb8e42243f51850c1a22ecbcd33cd374ca75eb
6. static void DirSearch(string sDir, Regex regex, List<string> result);  //Search files deep within 	the sub-directories

Note : Use 5 and 6 together on a directory to list all its files.