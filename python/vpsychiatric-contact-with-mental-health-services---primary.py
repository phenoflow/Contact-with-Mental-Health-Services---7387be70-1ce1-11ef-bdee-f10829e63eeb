# Rebecca M Joseph, Ruth H Jack, Richard Morriss, Roger David Knaggs, Debbie Buttler, Chris Hollis, Julia Hippisley-Cox, Carrol Coupland, 2024.

import sys, csv, re

codes = [{"code":"ZL1B200","system":"readv2"},{"code":"ZL62E00","system":"readv2"},{"code":"8A21.00","system":"readv2"},{"code":"7P22.00","system":"readv2"},{"code":"ZL23100","system":"readv2"},{"code":"ZL9D411","system":"readv2"},{"code":"ZL1B600","system":"readv2"},{"code":"ZL9D500","system":"readv2"},{"code":"9bA..00","system":"readv2"},{"code":"ZL5B200","system":"readv2"},{"code":"9Nla000","system":"readv2"},{"code":"9N2a.00","system":"readv2"},{"code":"9bA2.00","system":"readv2"},{"code":"7P22z00","system":"readv2"},{"code":"ZL1B100","system":"readv2"},{"code":"8CM2.00","system":"readv2"},{"code":"8HK9.00","system":"readv2"},{"code":"ZL9D300","system":"readv2"},{"code":"8H34.00","system":"readv2"},{"code":"ZL5B500","system":"readv2"},{"code":"9NNM.00","system":"readv2"},{"code":"7P22y00","system":"readv2"},{"code":"8H4f.00","system":"readv2"},{"code":"ZL1B500","system":"readv2"},{"code":"9Nla.00","system":"readv2"},{"code":"8HHR.00","system":"readv2"},{"code":"8HlD.00","system":"readv2"},{"code":"ZL22E00","system":"readv2"},{"code":"8HL9.00","system":"readv2"},{"code":"8H49.00","system":"readv2"},{"code":"ZL1B.00","system":"readv2"},{"code":"9NNQ.00","system":"readv2"},{"code":"ZL1B300","system":"readv2"},{"code":"9Nla100","system":"readv2"},{"code":"ZL9D200","system":"readv2"},{"code":"ZLA3100","system":"readv2"},{"code":"ZL5B400","system":"readv2"},{"code":"ZL5B111","system":"readv2"},{"code":"ZL5B300","system":"readv2"},{"code":"8HJ3.00","system":"readv2"},{"code":"ZL5B100","system":"readv2"},{"code":"9NN5.00","system":"readv2"},{"code":"ZL5B.00","system":"readv2"},{"code":"ZL9D100","system":"readv2"},{"code":"9NlG.00","system":"readv2"},{"code":"ZLA2E00","system":"readv2"},{"code":"ZL1B411","system":"readv2"},{"code":"ZL9D.00","system":"readv2"},{"code":"8H4P.00","system":"readv2"},{"code":"9bA3.00","system":"readv2"},{"code":"ZL9D600","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('contact-with-mental-health-services-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["vpsychiatric-contact-with-mental-health-services---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["vpsychiatric-contact-with-mental-health-services---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["vpsychiatric-contact-with-mental-health-services---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
