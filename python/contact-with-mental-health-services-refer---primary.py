# Rebecca M Joseph, Ruth H Jack, Richard Morriss, Roger David Knaggs, Debbie Buttler, Chris Hollis, Julia Hippisley-Cox, Carrol Coupland, 2024.

import sys, csv, re

codes = [{"code":"8H7A.00","system":"readv2"},{"code":"8Hc..00","system":"readv2"},{"code":"8H4D.00","system":"readv2"},{"code":"8Hc0.00","system":"readv2"},{"code":"9N6h.00","system":"readv2"},{"code":"8Ce7.00","system":"readv2"},{"code":"8H7B.00","system":"readv2"},{"code":"8HHr.00","system":"readv2"},{"code":"8Hc2.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('contact-with-mental-health-services-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["contact-with-mental-health-services-refer---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["contact-with-mental-health-services-refer---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["contact-with-mental-health-services-refer---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
