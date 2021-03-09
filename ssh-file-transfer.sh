# file transfer via ssh

Copy single file from local to remote using scp.
$ scp myfile.txt remoteuser@remoteserver:/remote/folder/
If the target folder (/remote/folder/) is not specified, it will copy the file to the remote user's home directory.

scp from remote to local using a single file .
$ scp remoteuser@remoteserver:/remote/folder/remotefile.txt  localfile.txt
Using . as the copy target (replacing localfile.txt will copy the remote file to the current working directory using the same filename (remotefile.txt)

Copy multiple files from local to remote using scp.
$ scp myfile.txt myfile2.txt remoteuser@remoteserver:/remote/folder/
Copy all files from local to remote using scp.
$ scp * remoteuser@remoteserver:/remote/folder/
Copy all files and folders recursively from local to remote using scp.
$ scp -r * remoteuser@remoteserver:/remote/folder/
