module Lab1

import IO;
import List;
import String;
import lang::java::m3::Core;
import lang::java::jdt::m3::Core;
import lang::java::jdt::m3::AST;

str rootPath = "/home/geert/workspace/TestProject/";

public int linesOfCode(str path) {
	lines = readFile(rootPath + path);
	return size( [ line | line <- lines, !isEmptyLine(line), !isComment(line) ] );
}

bool isEmptyLine(str line) {
	return isEmpty( trim(line) );
}

bool isComment(str line) {
	return startsWith( trim(line), "//" );
}

/* UNIT TESTS */
test bool locTest() = linesOfCode("src/HelloWorld.java") == 5;