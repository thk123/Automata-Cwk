ECHO ON
CALL javacc src/%1.jj
CALL cd gen
CALL mkdir %1
CALL ECHO DELETING
CALL del %1\*.java
CALL ECHO DELETED
CALL cd ..
CALL move *.java gen/%1/
CALL cd bin
CALL mkdir %1
CALL del %1\*.class
CALL cd ..
CALL javac -d bin/%1/ gen/%1/*.java 