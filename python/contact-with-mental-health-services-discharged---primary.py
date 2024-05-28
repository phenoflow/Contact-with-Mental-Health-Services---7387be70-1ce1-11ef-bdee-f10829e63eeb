# Rebecca M Joseph, Ruth H Jack, Richard Morriss, Roger David Knaggs, Debbie Buttler, Chris Hollis, Julia Hippisley-Cox, Carrol Coupland, 2024.

import sys, csv, re

codes = [{"code":"ZLD2e00","system":"readv2"},{"code":"ZLF2300","system":"readv2"},{"code":"ZLE9200","system":"readv2"},{"code":"ZLF2311","system":"readv2"},{"code":"ZLD7900","system":"readv2"},{"code":"ZLD2b00","system":"readv2"},{"code":"ZLD2f00","system":"readv2"},{"code":"ZLD8100","system":"readv2"},{"code":"ZLED.00","system":"readv2"},{"code":"ZLDB.00","system":"readv2"},{"code":"ZLE9100","system":"readv2"},{"code":"8HgB.00","system":"readv2"},{"code":"ZLD2e11","system":"readv2"},{"code":"ZLE9511","system":"readv2"},{"code":"8Hg9.00","system":"readv2"},{"code":"ZLE9.00","system":"readv2"},{"code":"ZLD7C00","system":"readv2"},{"code":"ZLF2200","system":"readv2"},{"code":"ZLD2g00","system":"readv2"},{"code":"ZLD2e12","system":"readv2"},{"code":"ZLE9512","system":"readv2"},{"code":"ZLD2c00","system":"readv2"},{"code":"ZLD2a00","system":"readv2"},{"code":"ZLE9300","system":"readv2"},{"code":"8HgY.00","system":"readv2"},{"code":"8Hg7.00","system":"readv2"},{"code":"ZLF2312","system":"readv2"},{"code":"ZLE9500","system":"readv2"},{"code":"ZLD1400","system":"readv2"},{"code":"ZLE9400","system":"readv2"},{"code":"ZLE9600","system":"readv2"},{"code":"ZLD2d00","system":"readv2"},{"code":"9NJc.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('contact-with-mental-health-services-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["contact-with-mental-health-services-discharged---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["contact-with-mental-health-services-discharged---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["contact-with-mental-health-services-discharged---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
