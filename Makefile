YEAR_ABBREVIATIONS=18 16 14 12 10 08 06 04 02 00 98 96 94 92 90 88 86 84 82 80

ALL_CANDIDATES_FILES=$(patsubst %,weball%.zip,$(YEAR_ABBREVIATIONS))
CANDIDATE_MASTER_FILES=$(patsubst %,cn%.zip,$(YEAR_ABBREVIATIONS))
CANDIDATE_COMMITTEE_LINKAGES=$(patsubst %,ccl%.zip,$(YEAR_ABBREVIATIONS))
CURRENT_CAMPAIGNS=$(patsubst %,webl%.zip,$(YEAR_ABBREVIATIONS))
COMMITTEE_MASTER=$(patsubst %,cm%.zip,$(YEAR_ABBREVIATIONS))
PAC_SUMMARY=$(patsubst %,webk%.zip,$(YEAR_ABBREVIATIONS))
INDIVIDUALS=$(patsubst %,indiv%.zip,$(YEAR_ABBREVIATIONS))
CONTRIBUTIONS=$(patsubst %,pas2%.zip,$(YEAR_ABBREVIATIONS))
COMMITTEE_TO_COMMITTEE=$(patsubst %,oth%.zip,$(YEAR_ABBREVIATIONS))
# https://www.fec.gov/files/bulk-downloads/2018/weball18.zip

.PHONY: all

%18.zip:
	-curl -f -L -G -O https://www.fec.gov/files/bulk-downloads/2018/$@

%16.zip:
	-curl -f -L -G -O https://www.fec.gov/files/bulk-downloads/2016/$@

%14.zip:
	-curl -f -L -G -O https://www.fec.gov/files/bulk-downloads/2014/$@

%12.zip:
	-curl -f -L -G -O https://www.fec.gov/files/bulk-downloads/2012/$@

%10.zip:
	-curl -f -L -G -O https://www.fec.gov/files/bulk-downloads/2010/$@

%10.zip:
	-curl -f -L -G -O https://www.fec.gov/files/bulk-downloads/2010/$@

%08.zip:
	-curl -f -L -G -O https://www.fec.gov/files/bulk-downloads/2008/$@

%06.zip:
	-curl -f -L -G -O https://www.fec.gov/files/bulk-downloads/2006/$@

%04.zip:
	-curl -f -L -G -O https://www.fec.gov/files/bulk-downloads/2004/$@

%02.zip:
	-curl -f -L -G -O https://www.fec.gov/files/bulk-downloads/2002/$@

%00.zip:
	-curl -f -L -G -O https://www.fec.gov/files/bulk-downloads/2000/$@

%98.zip:
	-curl -f -L -G -O https://www.fec.gov/files/bulk-downloads/1998/$@

%96.zip:
	-curl -f -L -G -O https://www.fec.gov/files/bulk-downloads/1996/$@

%94.zip:
	-curl -f -L -G -O https://www.fec.gov/files/bulk-downloads/1994/$@

%92.zip:
	-curl -f -L -G -O https://www.fec.gov/files/bulk-downloads/1992/$@

%90.zip:
	-curl -f -L -G -O https://www.fec.gov/files/bulk-downloads/1990/$@

%88.zip:
	-curl -f -L -G -O https://www.fec.gov/files/bulk-downloads/1988/$@

%86.zip:
	-curl -f -L -G -O https://www.fec.gov/files/bulk-downloads/1986/$@

%84.zip:
	-curl -f -L -G -O https://www.fec.gov/files/bulk-downloads/1984/$@

%82.zip:
	-curl -f -L -G -O https://www.fec.gov/files/bulk-downloads/1982/$@

%80.zip:
	-curl -f -L -G -O https://www.fec.gov/files/bulk-downloads/1980/$@

all: $(ALL_CANDIDATES_FILES) $(CANDIDATE_MASTER_FILES) $(CANDIDATE_COMMITTEE_LINKAGES) $(CURRENT_CAMPAIGNS) $(COMMITTEE_MASTER) $(PAC_SUMMARY) $(INDIVUALS) $(CONTRIBUTIONS) $(COMITTEE_TO_COMITTEE)
	@echo "ALL:" $(ALL_CANDIDATE_FILES)
	@echo "CANDIDATE MASTERS:" $(CANDIDATE_MASTER_FILES)
	@echo "LINKAGES:" $(CANDIDATE_COMMITTEE_LINKAGES)
	@echo "CURRENT CAMPAIGNS:" $(CURRENT_CAMPAIGNS)
	@echo "COMITTEE MASTER:" $(COMMITTEE_MASTER)
	@echo "PAC SUMMARY:" $(PAC_SUMMARY)
	@echo "INDIVIDUALS:" $(INDIVIDUALS)
	@echo "CONTRIBUTIONS:" $(CONTRIBUTIONS)
	@echo "COMMITTEE TO COMMITTEE:" $(COMMITTEE_TO_COMMITTEE)
