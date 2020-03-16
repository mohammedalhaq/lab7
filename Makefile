cp = /volumes/data/lib/antlr-4.8-complete.jar:$(PWD):$(PWD)/target
jdriver = /volumes/data/bin/jdriver.sh

all: g4 java

g4:
	java -cp $(cp) org.antlr.v4.Tool -no-listener -no-visitor src/*.g4

java:
	mkdir -p ./target
	javac -cp $(cp) -d target -sourcepath src src/*.java

run:
	cat ./tests/test1.expr
	java -cp $(cp) Check ./tests/test1.expr
	cat ./tests/test2.expr
	java -cp $(cp) Check ./tests/test2.expr
	cat ./tests/test3.expr
	java -cp $(cp) Check ./tests/test3.expr
	cat ./tests/test4.expr
	java -cp $(cp) Check ./tests/test4.expr
	cat ./tests/test5.expr
	java -cp $(cp) Check ./tests/test5.expr

clean:
	rm -f src/Expr*.java src/*.tokens src/*.interp output.edn report.edn

check:
	$(jdriver) \
		:testdrive expected.edn output.edn \
		:report output.edn report.edn
