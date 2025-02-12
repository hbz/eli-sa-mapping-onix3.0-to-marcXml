default infile="test/input/testdummy_hbz_ONIX_3_ohne_bestelldaten.xml";
default outfile="test/onix_" + relevantElement + "_values.txt";
default relevantElement="...";

infile
| open-file
| decode-xml
| handle-generic-xml(recordtagname="ONIXMessage", attributemarker="@")
| list-fix-values(relevantElement)
| write(outfile)
;
