#Install kubectl and kops ======================== 
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" 
wget https://github.com/kubernetes/kops/releases/download/v1.25.0/kops-linux-amd64 
chmod +x kops-linux-amd64 kubectl
mv kubectl /usr/local/bin/kubectl
mv kops-linux-amd64 /usr/local/bin/kops

#When you type kubectl, the shell searches each directory listed in the $PATH environment variable, in order, looking for an executable file named kubectl. The moment it finds one, it stops searching and executes it.
#Moving the binary to /usr/local/bin/ (a directory already covered by PATH) is exactly why the OS can now find kubectl as a command — before that, you'd have had to type the full path (./kubectl or /home/user/kubectl).

#export PATH=$PATH:/usr/local/bin
#source .bashrc

#source .bashrc does reload the file into your current shell session without needing to log out/in again — correct
