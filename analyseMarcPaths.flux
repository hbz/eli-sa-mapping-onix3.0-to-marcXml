default infile="test/examples/2023_06_27_00000882_Stag-hbz-Wac-ALMA.xml";
default outfile="test/marc_paths.txt";

infile
| open-file
| decode-xml
| handle-marcxml
| list-fix-paths(count="false")
| write(outfile)
;
