default dir="test/examples/";
default outfile="test/marc_paths.txt";

dir
| read-dir(recursive="true", filenamepattern=".*MARC.xml")
| open-file
| decode-xml
| handle-marcxml
| list-fix-paths(count="false")
| write(outfile)
;
