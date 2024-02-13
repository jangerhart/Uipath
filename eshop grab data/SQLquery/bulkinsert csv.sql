BULK INSERT SNout2
FROM 'D:\Devel\Uipath\eshop grab data\csvoutputs\2024-02-12-20-52.csv'
WITH (
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    CODEPAGE = '65001'
);
