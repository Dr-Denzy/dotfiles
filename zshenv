# make compilers happy
export ARCHFLAGS='-arch x86_64'

# go compiler appeasement
export GOROOT=`brew --cellar`/go/HEAD
export GOBIN=/usr/local/bin
export GOARCH=x86_64
export GOOS=darwin

# favor user .bin and homebrew
export PATH=~/.bin:/usr/local/bin:$PATH

# load history
export HISTFILE=~/.history

# Setup Amazon EC2 Command-Line Tools
export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY=`ls $EC2_HOME/pk-*.pem`
export EC2_CERT=`ls $EC2_HOME/cert-*.pem`
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/
