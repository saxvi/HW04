# 1 "ASTEROID.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "ASTEROID.c"
# 17 "ASTEROID.c"
const unsigned short ASTEROIDBitmap[336] __attribute__((aligned(4)))=
{
 0x1010,0x1D10,0x141B,0x151F,0x151F,0x1010,0x1010,0x1010,
 0x1010,0x1010,0x1010,0x1010,0x1010,0x1F10,0x151B,0x151B,
 0x151A,0x1518,0x1010,0x1010,0x1010,0x1010,0x1010,0x1010,
 0x1010,0x1418,0x181B,0x1518,0x1B18,0x1E19,0x1515,0x1010,
 0x1010,0x1010,0x1010,0x1010,0x1710,0x1114,0x1A1F,0x1A18,
 0x1A14,0x1515,0x141A,0x101B,0x1010,0x1010,0x1010,0x1010,
 0x1D10,0x111A,0x1511,0x1511,0x1A15,0x1F1B,0x1518,0x1B1B,
 0x101B,0x1010,0x1010,0x1010,0x1810,0x191A,0x141E,0x141E,

 0x1414,0x1414,0x1F1A,0x1818,0x1E1E,0x1010,0x1010,0x1010,
 0x1110,0x171E,0x1D17,0x1E11,0x1411,0x1419,0x1A14,0x1B1E,
 0x1518,0x151B,0x1010,0x1010,0x1316,0x1819,0x1F11,0x1119,
 0x1112,0x151F,0x1414,0x1A14,0x1F14,0x151E,0x101B,0x1010,
 0x1716,0x1413,0x121D,0x1112,0x1515,0x1F12,0x1219,0x1419,
 0x1E18,0x121E,0x1515,0x1010,0x1116,0x1114,0x1D1D,0x111D,
 0x151F,0x1F18,0x1911,0x1914,0x1414,0x1519,0x1B15,0x1010,
 0x1316,0x1C1D,0x111E,0x181A,0x1118,0x121E,0x1F11,0x121F,

 0x1E11,0x1414,0x1511,0x1015,0x1116,0x1316,0x1917,0x1B1A,
 0x1814,0x1212,0x1D15,0x1411,0x1814,0x1F14,0x1B14,0x1015,
 0x1110,0x1313,0x1D1F,0x1117,0x1214,0x1F14,0x1F1D,0x1112,
 0x1414,0x1911,0x1419,0x1014,0x131C,0x1317,0x1916,0x131C,
 0x1414,0x141F,0x181A,0x1815,0x1714,0x1A14,0x1F17,0x1011,
 0x1116,0x1311,0x1313,0x1413,0x1919,0x1917,0x1A1D,0x1E1A,
 0x1F19,0x1D11,0x191A,0x1815,0x1616,0x1C11,0x1313,0x1D12,
 0x1713,0x181A,0x1418,0x1E1F,0x1411,0x1514,0x1A1D,0x1818,

 0x1610,0x131C,0x131C,0x1311,0x1A14,0x1419,0x1811,0x1919,
 0x1A1F,0x1118,0x1F19,0x1814,0x1610,0x1C11,0x1313,0x1913,
 0x1213,0x171C,0x1B15,0x1A1F,0x1414,0x1812,0x181A,0x1214,
 0x1610,0x1C16,0x1C1C,0x1313,0x1114,0x111E,0x1118,0x121F,
 0x1F18,0x111E,0x1119,0x1418,0x1010,0x1716,0x131C,0x131C,
 0x1317,0x1F1A,0x1E1C,0x1711,0x1815,0x1415,0x1514,0x1818,
 0x1010,0x1610,0x1C1C,0x131C,0x1313,0x1713,0x1C16,0x1312,
 0x1B1A,0x1417,0x1117,0x1219,0x1010,0x1610,0x1316,0x131C,

 0x1313,0x1313,0x1D13,0x1717,0x1418,0x1412,0x1113,0x141F,
 0x1010,0x1610,0x1616,0x1C1C,0x1C1C,0x1313,0x1313,0x1313,
 0x1111,0x171A,0x1719,0x1D12,0x1010,0x1010,0x1610,0x1016,
 0x1C11,0x1C1C,0x1C1C,0x131C,0x1313,0x1C13,0x1119,0x1113,
 0x1010,0x1010,0x1010,0x1616,0x1616,0x1C13,0x1C1C,0x1313,
 0x1313,0x1313,0x131C,0x1016,0x1010,0x1010,0x1010,0x1010,
 0x1010,0x1610,0x1C13,0x111C,0x1111,0x1313,0x1613,0x1010,
 0x1010,0x1010,0x1010,0x1010,0x1010,0x1010,0x1610,0x1616,

 0x1616,0x1616,0x1010,0x1010,0x1010,0x1010,0x1010,0x1010,
 0x1010,0x1010,0x1010,0x1010,0x1616,0x1016,0x1010,0x1010,
};

const unsigned short ASTEROIDPal[256] __attribute__((aligned(4)))=
{
 0x0000,0x34AA,0x7B2A,0x4D13,0x18A6,0x7F96,0x5594,0x48AC,
 0x48EE,0x48CD,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x2D69,0x4650,0x14A4,0x39CD,0x56D4,0x0841,0x1CE6,
 0x3DEE,0x4E92,0x358B,0x5F16,0x0C62,0x2528,0x420F,0x4A71,
 0x0000,0x73BA,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};
