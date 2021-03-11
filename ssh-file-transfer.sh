# file transfer via ssh

# Copy single file from local to remote using scp.
scp myfile.txt remoteuser@remoteserver:/remote/folder/

# scp from remote to local using a single file
# below, '.' as instead of 'localfile.txt' copies remote file to current dir
scp remoteuser@remoteserver:/remote/folder/remotefile.txt  localfile.txt

# Copy multiple files from local to remote using scp.
scp myfile.txt myfile2.txt remoteuser@remoteserver:/remote/folder/
# Copy all files from local to remote using scp.
scp * remoteuser@remoteserver:/remote/folder/
# Copy all files and folders recursively from local to remote using scp.
scp -r * remoteuser@remoteserver:/remote/folder/
