#!/bin/sh

# 扫描当前命令所在目录下的Maven工程，并执行清理
pom_clear(){
    for fo in `ls $1`
    do 
        if [ x"$fo" != x"." -a x"$fo" != x".." ];then 
           
           if [ -d "$1/$fo" ] && (echo $fo | grep -qv '.svn|.git');then   
                if [ -f "$1/$fo/pom.xml" ]; then
                    echo "$1/$fo"
                    cd $1/$fo/
                    mvn -o -nsu clean
                    cd -
                elif [ -d "$1/$fo/node_modules" ]; then
                    echo "$1/$fo"
                    rm -rf $1/$fo/node_modules
                else
                    pom_clear "$1/$fo"
                fi
            fi   
        fi
    done
}

pom_clear `pwd`