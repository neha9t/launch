#!/bin/bash


mkdir my_folder
cd my_folder
touch one.rb
touch two.rb
echo "puts 'this is file one'" >> one.rb
echo "puts 'this is file two'" >> two.rb
ruby one.rb 
ruby two.rb
