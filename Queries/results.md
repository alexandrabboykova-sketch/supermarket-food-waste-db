# Real life data query Results

## Findings: 

Overall, most queries acted as expected. The restrictions are noted below the results. 

### Query 1: Total waste per supermarket

| supermarket_name | total_food_wasted |
|---|---:|
| US supermarkets (national total) | 5,458,530,580.58 |
| Swedish supermarket 1 (6 supermarkets) | 53,527.37 |
| Brazil Store 3 | 1,142.20 |
| Brazil Store 1 | 783.20 |
| Brazil Store 2 | 234.90 |

### Query 2: Waste by category

| category | amount_food_wasted |
|---|---:|
| Vegetable | 2,761,052,007.39 |
| Fruit | 2,697,534,260.86 |

### Query 3: Products wasted for "rejected at delivery and in-store waste"

| product | food_wasted | waste_reason |
|---|---:|---|
| Potato | 10,000.00 | rejected at delivery and in-store waste |
| Lettuce | 7,310.00 | rejected at delivery and in-store waste |
| Tomato | 6,750.00 | rejected at delivery and in-store waste |
| Sweet pepper | 5,370.00 | rejected at delivery and in-store waste |
| Carrot | 4,500.00 | rejected at delivery and in-store waste |
| Banana | 4,370.00 | rejected at delivery and in-store waste |
| Apple | 3,780.00 | rejected at delivery and in-store waste |
| Orange | 3,740.00 | rejected at delivery and in-store waste |
| Grape | 3,660.00 | rejected at delivery and in-store waste |
| Pear | 3,060.00 | rejected at delivery and in-store waste |
| Fig | 228.00 | rejected at delivery and in-store waste |
| Oyster mushroom | 199.00 | rejected at delivery and in-store waste |
| Star fruit | 179.00 | rejected at delivery and in-store waste |
| Prickly pear | 123.00 | rejected at delivery and in-store waste |
| Papaya | 117.00 | rejected at delivery and in-store waste |
| Tamarillo | 57.50 | rejected at delivery and in-store waste |
| Redcurrant | 52.60 | rejected at delivery and in-store waste |
| Pepino | 12.30 | rejected at delivery and in-store waste |
| Pitaya | 10.40 | rejected at delivery and in-store waste |
| Rambutan | 8.57 | rejected at delivery and in-store waste |

### Query 4: Main reasons for waste

| waste_reason | number_of_records | total_food_wasted |
|---|---|---:|
| rejected at delivery and in-store waste | 20 | 53,527.37 |

### Query 5: Products at risk (expired inventory)

Empty set (0 rows returned).

This is as no real data was found with experied. Primarily works with mock data.

### Query 6: Money lost per supermarket

| supermarket_name | country | money_lost |
|---|---|---:|
| US supermarkets (national total) | United States | 23,560,145,616.4151 |
| Swedish supermarket 1 (6 supermarkets) | Sweden | 172,422.1380 |
| Brazil Store 3 | Brazil | 4,308.6550 |
| Brazil Store 1 | Brazil | 2,965.1000 |
| Brazil Store 2 | Brazil | 897.2810 |

### Query 7: Waste by shelf life

| shelf_life_days | number_of_waste_records | total_food_wasted |
|---|---|---:|
| 2 | 5 | 166,468,529.79 |
| 3 | 7 | 26,308,362.96 |
| 4 | 23 | 240,864,414.97 |
| 5 | 40 | 541,136,030.28 |
| 7 | 77 | 2,003,537,424.59 |
| 8 | 5 | 422,751,963.04 |
| 10 | 9 | 26,761,995.13 |
| 12 | 1 | 5,370.00 |
| 14 | 45 | 1,136,706,669.62 |
| 21 | 16 | 144,247,172.76 |
| 28 | 1 | 12.30 |
| 30 | 21 | 736,190,656.71 |
| 90 | 2 | 13,607,774.10 |

### Query 8: Waste per product

| product | total_food_wasted |
|---|---:|
| Watermelon | 482,168,715.61 |
| Apple | 422,751,963.04 |
| Potato | 403,253,740.83 |
| Tomato | 358,344,912.00 |
| Romaine and leaf lettuce | 308,896,403.97 |
| Pineapple | 279,866,497.29 |
| Orange | 219,088,974.51 |
| Cantaloupe | 181,436,948.00 |
| Onion | 172,818,720.37 |
| Bell pepper | 163,746,845.57 |
| Head lettuce | 156,489,367.65 |
| Banana | 148,329,458.69 |
| Strawberry | 146,056,750.14 |
| Squash | 140,160,042.33 |
| Avocado | 136,077,725.30 |
| Cucumber | 122,923,593.37 |
| Pumpkin | 121,109,237.39 |
| Grape | 88,907,777.62 |
| Peach | 83,007,420.91 |
| Tangerine | 79,378,719.55 |
| Carrot | 78,022,455.54 |
| Mango | 71,214,070.59 |
| Celery | 67,131,671.46 |
| Cabbage | 66,224,670.32 |
| Mushroom | 63,956,524.17 |
| Grapefruit | 61,688,562.32 |
| Snap bean | 57,606,230.99 |
| Pear | 56,248,540.88 |
| Papaya | 56,245,619.98 |
| Broccoli | 55,338,283.84 |
| Collard green | 53,070,313.79 |
| Lime | 48,534,383.59 |
| Honeydew | 45,359,237.00 |
| Artichoke | 40,823,313.30 |
| Sweet potato | 39,008,945.32 |
| Spinach | 35,380,210.46 |
| Mustard greens | 34,473,020.12 |
| Turnip greens | 32,205,058.27 |
| Asparagus | 29,483,504.05 |
| Sweet corn | 28,122,726.94 |
| Lemon | 26,762,002.43 |
| Cauliflower | 26,761,952.73 |
| Eggplant | 23,133,257.47 |
| Okra | 22,226,028.43 |
| Cherry | 20,411,656.65 |
| Escarole/endive | 18,143,694.80 |
| Blueberry | 15,422,140.58 |
| Garlic | 13,607,774.10 |
| Radish | 13,154,180.53 |
| Plum | 12,700,604.26 |
| Kale | 12,700,586.36 |
| Kiwi | 10,432,627.01 |
| Apricot | 4,082,331.33 |
| Brussels sprout | 2,721,554.22 |
| Cranberry | 1,360,777.11 |
| Lettuce | 7,336.00 |
| Sweet pepper | 5,370.00 |
| Fig | 228.30 |
| Oyster mushroom | 199.00 |
| Star fruit | 181.20 |
| Prickly pear | 123.00 |
| Tamarillo | 57.50 |
| Redcurrant | 52.60 |
| Cassava | 51.00 |
| Melon | 38.70 |
| Beet | 33.40 |
| Pepper | 32.30 |
| Arracacha | 28.80 |
| Green pepper | 27.30 |
| Bananas | 27.00 |
| Passion fruit | 23.40 |
| Chayote | 22.40 |
| Corn | 19.20 |
| Red Apples | 17.00 |
| Pepino | 12.30 |
| Pitaya | 12.10 |
| Tomatoes | 12.00 |
| White Bread | 11.00 |
| Croissants | 9.00 |
| String bean | 9.00 |
| Coconut | 8.70 |
| Rambutan | 8.57 |
| Scarlet eggplant | 7.60 |
| Whole Milk | 7.00 |
| Greek Yogurt | 7.00 |
| Chicken Breast | 7.00 |
| Escarole | 6.10 |
| Carrots | 6.00 |
| Purple yam | 5.90 |
| Persimmon | 5.80 |
| Ginger | 5.10 |
| Orange Juice | 5.00 |
| Chinese cabbage | 4.80 |
| Arugula | 3.60 |
| Chives | 3.30 |
| Onion peels | 3.00 |
| Chicory | 2.90 |
| Watercress | 2.80 |
| Purple sweet potato | 2.70 |
| Dandelion green | 2.60 |
| Parsley | 2.50 |
| Nectarine | 2.00 |
| Guava | 1.60 |
| Yam | 1.60 |
| Maroon cucumber | 1.10 |
| Leek | 0.90 |
| Fresh fennel | 0.80 |
| Persian lime | 0.50 |
| Mint | 0.50 |
| Blackberry | 0.20 |
| Basil | 0.20 |
| Parsley and chives | 0.20 |
| Laurel (branches) | 0.10 |

### Query 9: Each supermarket's share of total waste
| supermarket_name | total_wasted | supermarket_waste_percentage | country_waste_percentage |
|---|---:|---:|---:|
| US supermarkets (national total) | 5,458,530,580.58 | 100.00 | 100.00 |
| Swedish supermarket 1 (6 supermarkets) | 53,527.37 | 0.00 | 0.00 |
| Brazil Store 3 | 1,142.20 | 0.00 | 0.00 |
| Brazil Store 1 | 783.20 | 0.00 | 0.00 |
| Brazil Store 2 | 234.90 | 0.00 | 0.00 |

## Analysis caveat

The US row is a national annual total, the Swedish row is one month for six stores, and the Brazil rows are one week for a single store. The US figure therefore swamps everything else, which is why Query 9 rounds every other row to 0.00%. The Query 7 shelf-life buckets are dominated by the US data for the same reason. These must be mentioned alongside Query 5 which is empty as no real data is flagged as experied.
