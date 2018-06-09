#!/bin/bash
echo export 'PATH=$PATH$( find $HOME/Scripts/ -print0 | xargs -0 stat -f ":%p" )' >> ~/.bash_profile
