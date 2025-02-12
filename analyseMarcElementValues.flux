default infile="test/examples/2023_06_27_00000882_Stag-hbz-Wac-ALMA_ONIX.xml";
default outfile="test/marc_" + relevantElement + "_values.txt";
default relevantElement="...";

infile
| open-file
| decode-xml
| handle-generic-xml(recordtagname="ONIXmessage", attributemarker="@")
| list-fix-values(relevantElement)
| write(outfile)
;
