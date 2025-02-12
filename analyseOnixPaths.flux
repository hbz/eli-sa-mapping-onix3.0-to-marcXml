default infile="test/input/testdummy_hbz_ONIX_3_ohne_bestelldaten.xml";
default outfile="test/onix_paths.txt";

infile
| open-file
| decode-xml
| handle-generic-xml(recordtagname="ONIXMessage", attributemarker="@")
| list-fix-paths(count="false")
| write(outfile)
;
