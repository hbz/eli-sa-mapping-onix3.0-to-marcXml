default infile="test/input/testdummy_hbz_ONIX_3_ohne_bestelldaten.xml";
default infile="test/output/testdummy_hbz_ONIX_3_ohne_bestelldaten_marc.xml";

infile
| open-file
| decode-xml
| handle-generic-xml(recordtagname="ONIXmessage", attributemarker="@")
| fix(FLUX_DIR + "transformOnixToMarc.fix")
| encode-marcxml
| write(outfile)
;