import csv
import random
import datetime

def preprocess_csv(input_file, output_file):
    with open(input_file, 'r') as infile, open(output_file, 'w', newline='') as outfile:
        reader = csv.reader(infile)
        writer = csv.writer(outfile)

        header = next(reader)  # Read the header row

        for row in reader:

            current_datetime = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')

            row = [cell.rstrip(',') for cell in row]
            row = [cell.strip() for cell in row]

            row.insert(0, random.randint(100000, 999999))
            for i in range(len(row)):
                try:
                    row[i] = float(row[i])
                except ValueError:
                    pass

            row = [cell if cell != '' else 0 for cell in row]

            writer.writerow(row)

if __name__ == "__main__":
    preprocess_csv('Mobile_Food_Facility_Permit.csv', 'output.csv')
