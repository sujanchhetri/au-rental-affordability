 Rents are spread across sheets. The workbook has Data1 to Data5, and each city’s series sits in a different one. Darwin is in Data4.
The headers are text blobs. A column title looks like “Index Numbers ; Rents ; Darwin ;”, so the city has to be split out of it.
Metadata rows come before the data. The first 10 rows hold unit, frequency, series ID and so on. The real dates start at row 11.
Every city appears twice. Each has two Rents columns with different series IDs but identical values, so I kept one.
The rent history is shorter than the file suggests. The series start in July 2022, not 2017, so you have 51 months to September 2026.
The values are index numbers, not dollars. A reading of 100 is the base period, not a price.