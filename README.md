# PIZZA SALES ANALYSIS REPORT
## Phân tích hiệu quả kinh doanh và xu hướng bán hàng của cửa hàng Pizza

## 1. Executive Summary – Tổng quan dự án

Tệp dữ liệu gồm 12 cột, 583452 dòng . Dự án tập trung phân tích dữ liệu bán hàng của một cửa hàng Pizza trong vòng một năm nhằm đánh giá hiệu quả kinh doanh, xác định xu hướng doanh thu, phân tích hiệu suất sản phẩm và tìm hiểu các yếu tố ảnh hưởng đến hoạt động bán hàng.

Kết quả phân tích ghi nhận:

| Chỉ số | Kết quả |
|---|---:|
| Total Revenue | $817,860.05 |
| Total Orders | 21,350 |
| Total Pizza Sold | 49,574 |
| Average Order Value (AOV) | $38.31 |
| Average Pizzas per Order | 2.32 |

Nhìn chung, cửa hàng ghi nhận doanh thu tương đối ổn định trong phần lớn thời gian phân tích, tuy nhiên vẫn xuất hiện một số giai đoạn suy giảm đáng chú ý, đặc biệt là từ tháng 8 đến tháng 10.

Classic là danh mục đóng góp doanh thu nổi bật, trong khi Size L, M và S chiếm phần lớn sản lượng tiêu thụ. Bên cạnh đó, phân tích sản phẩm cho thấy sản phẩm có sản lượng bán cao nhất chưa chắc là sản phẩm tạo ra doanh thu cao nhất.

Những phát hiện này là cơ sở để đề xuất các giải pháp tối ưu danh mục sản phẩm, cải thiện giá trị đơn hàng trung bình và phân bổ hoạt động kinh doanh theo nhu cầu khách hàng.

---

## 2. Monthly Revenue Analysis – Phân tích xu hướng doanh thu

Doanh thu có sự biến động giữa các tháng trong năm. Tháng 7 ghi nhận doanh thu cao nhất, đạt khoảng **72.55K USD**, trong khi tháng 10 có doanh thu thấp nhất, khoảng **64.02K USD**.

Chênh lệch giữa hai tháng đạt khoảng 8.53K USD, cho thấy hiệu suất bán hàng có sự khác biệt giữa các giai đoạn.

Đáng chú ý, doanh thu có xu hướng biến động theo từng giai đoạn:

- Tháng 1–3: Doanh thu giảm trong tháng 2, sau đó phục hồi vào tháng 3.
- Tháng 4–7: Doanh thu tiếp tục biến động nhưng nhìn chung duy trì ở mức cao, đạt đỉnh vào tháng 7.
- Tháng 8–10: Doanh thu suy giảm liên tiếp, từ khoảng 68.27K USD xuống còn 64.02K USD.
- Tháng 11: Doanh thu phục hồi lên khoảng 70.39K USD.
- Tháng 12: Doanh thu tiếp tục giảm xuống khoảng 64.70K USD.

Đặc biệt, giai đoạn tháng 8–10 cần được chú ý khi doanh thu giảm khoảng 6.22%, tương đương 4.25K USD. Trong đó, mức giảm chủ yếu diễn ra từ tháng 8 sang tháng 9, với mức giảm khoảng 5.99%, trong khi tháng 10 chỉ tiếp tục giảm nhẹ khoảng 0.26%.

Điều này cho thấy doanh thu đã giảm mạnh vào tháng 9 và duy trì ở mức thấp trong tháng 10, thay vì tiếp tục suy giảm với tốc độ tương tự.

Đây là giai đoạn cần được phân tích sâu hơn để xác định những yếu tố đóng góp vào sự suy giảm doanh thu.

## 3. Pizza Category Analysis – Phân tích danh mục sản phẩm

Xét theo sản lượng tiêu thụ, Classic dẫn đầu với khoảng 15K pizza, chiếm 30.03% tổng sản lượng và đóng góp khoảng 220K USD doanh thu.

Ngược lại, Chicken có sản lượng thấp nhất với khoảng 11K pizza, chiếm 22.29%. Supreme và Veggie lần lượt chiếm khoảng 24.18% và 23.50%.

Mặc dù Classic đang dẫn đầu về sản lượng, chênh lệch giữa Chicken, Supreme và Veggie không quá lớn. Điều này cho thấy nhu cầu tiêu thụ giữa ba danh mục này tương đối gần nhau.

Khi phân tích doanh thu theo từng tháng, Classic tiếp tục duy trì vị trí dẫn đầu trong phần lớn thời gian. Doanh thu của các danh mục có xu hướng biến động tương đối đồng thời ở một số giai đoạn, đặc biệt là khi nhiều nhóm sản phẩm cùng suy giảm vào tháng 9–10.

Đáng chú ý, Chicken và Veggie ghi nhận mức doanh thu thấp trong tháng 10, trong khi Supreme phục hồi đáng kể so với tháng 9. Classic cũng có xu hướng suy giảm trong giai đoạn này.

Điều này cho thấy sự suy giảm doanh thu không chỉ xuất hiện ở một danh mục riêng lẻ mà có liên quan đến nhiều nhóm sản phẩm.

Doanh nghiệp nên tiếp tục duy trì hiệu suất của Classic, đồng thời tìm hiểu những sản phẩm thuộc Chicken và Veggie có tiềm năng tăng trưởng. Có thể thử nghiệm các chương trình combo, ưu đãi nâng size hoặc khuyến mãi theo từng danh mục nhằm cải thiện sản lượng tiêu thụ.

Tuy nhiên, hiệu quả của những chương trình này cần được đánh giá dựa trên doanh thu và lợi nhuận sau khuyến mãi.

## 4. Pizza Size Analysis – Phân tích kích thước sản phẩm

Xét theo kích thước sản phẩm, Size L dẫn đầu với 18,956 chiếc, tiếp theo là Size M với 15,635 chiếc và Size S với 14,403 chiếc.

Trong khi đó, Size XL chỉ ghi nhận 552 chiếc và Size XXL đạt 28 chiếc.

Về doanh thu, Size L tiếp tục chiếm tỷ trọng lớn nhất với khoảng 375.32K USD, tiếp theo là Size M với 249.38K USD và Size S với 178.08K USD. Size XL và XXL lần lượt đóng góp khoảng 14.08K USD và 1.01K USD.

Điều này cho thấy nhu cầu tiêu thụ hiện tại tập trung chủ yếu vào ba kích thước L, M và S, trong khi XL và XXL có mức tiêu thụ thấp hơn đáng kể.

Khi phân tích sâu hơn giai đoạn tháng 8–10, có thể nhận thấy cả ba kích thước chính đều ghi nhận sự suy giảm:

| Size | Revenue tháng 8 | Revenue tháng 10 | Quantity tháng 8 | Quantity tháng 10 |
|---|---:|---:|---:|---:|
| L | $30,267.90 | $29,338.60 | 1,527 | 1,485 |
| M | $21,175.50 | $19,992.00 | 1,331 | 1,253 |
| S | $15,640.95 | $13,554.10 | 1,256 | 1,101 |

Đáng chú ý, Size S ghi nhận mức giảm doanh thu lớn nhất, khoảng 2.09K USD, đồng thời sản lượng giảm 155 chiếc. Size M giảm khoảng 1.18K USD và Size L giảm khoảng 929 USD.

Điều này cho thấy Size S là một trong những nhóm đóng góp đáng kể vào mức suy giảm doanh thu trong giai đoạn tháng 8–10.

Doanh nghiệp nên ưu tiên duy trì nguồn cung cho các kích thước L, M và S, đồng thời tìm hiểu nguyên nhân khiến sản lượng Size S suy giảm. Đối với XL và XXL, cần đánh giá thêm nhu cầu thị trường, chiến lược giá và khả năng bán theo combo hoặc chương trình nâng size trước khi quyết định mở rộng hoạt động khuyến mãi.

## 5. Order Trend Analysis – Phân tích xu hướng đặt hàng

Xét theo ngày trong tuần, lượng đơn hàng có sự khác biệt nhưng nhìn chung không quá lớn.

Thứ 5 ghi nhận lượng đơn hàng cao nhất với 3,538 đơn. Ngược lại, thứ 7 và chủ nhật có lượng đơn thấp hơn, lần lượt đạt 2,624 và 2,749 đơn.

Về doanh thu, thứ 5 tiếp tục dẫn đầu với khoảng 136K USD, trong khi thứ 7 và chủ nhật lần lượt đạt khoảng 99K USD và 107K USD.

Khi phân tích theo khung giờ, hoạt động đặt hàng tập trung chủ yếu vào buổi trưa (12h–13h) và buổi tối (17h–19h). Đây là những khoảng thời gian có nhu cầu đặt hàng cao, tương ứng với các khung giờ ăn uống phổ biến.

Từ những quan sát trên, doanh nghiệp có thể ưu tiên bố trí nhân sự và chuẩn bị nguyên liệu vào các khung giờ cao điểm nhằm đảm bảo khả năng phục vụ.

Đồng thời, có thể thử nghiệm các chương trình ưu đãi hoặc combo vào những khung giờ thấp điểm để khuyến khích khách hàng đặt hàng, cải thiện doanh thu và phân bổ nhu cầu đồng đều hơn trong ngày.

## 6. Product Performance Analysis – Phân tích hiệu suất sản phẩm

Xét theo sản lượng, Top 5 sản phẩm bán chạy nhất bao gồm:

1. Classic Deluxe Pizza: 2,453 chiếc.
2. Barbecue Chicken Pizza: 2,432 chiếc.
3. Hawaiian Pizza: 2,422 chiếc.
4. Pepperoni Pizza: 2,418 chiếc.
5. Thai Chicken Pizza: 2,371 chiếc.

Tuy nhiên, khi xét theo doanh thu, thứ hạng có sự thay đổi đáng kể.

Barbecue Chicken Pizza dẫn đầu với khoảng 43.79K USD, tiếp theo là Thai Chicken Pizza với 43.4K USD và California Chicken Pizza với 41.4K USD.

Đáng chú ý, Classic Deluxe Pizza mặc dù dẫn đầu về sản lượng với 2,453 chiếc nhưng chỉ tạo ra khoảng 38K USD doanh thu. Trong khi đó, Barbecue Chicken Pizza bán ít hơn nhưng doanh thu cao hơn khoảng 5.8K USD.

Tương tự, Thai Chicken Pizza cũng ghi nhận doanh thu cao mặc dù sản lượng thấp hơn Classic Deluxe.

Điều này cho thấy sản lượng tiêu thụ cao chưa chắc đồng nghĩa với khả năng tạo ra doanh thu cao. Một trong những yếu tố cần xem xét là giá bán trung bình và cơ cấu kích thước sản phẩm.

Doanh nghiệp có thể tập trung vào các chiến lược Upselling như tư vấn nâng size, combo nâng size hoặc ưu đãi khi mua thêm sản phẩm nhằm gia tăng giá trị đơn hàng trung bình.

Ở chiều ngược lại, Brie Carre Pizza là sản phẩm có sản lượng thấp nhất với khoảng 490 chiếc và doanh thu khoảng 12K USD. Một số sản phẩm khác trong nhóm bán thấp cũng chỉ đạt khoảng 950 chiếc.

Doanh nghiệp nên đánh giá thêm doanh thu, chi phí nguyên liệu và biên lợi nhuận của nhóm sản phẩm này trước khi quyết định điều chỉnh công thức, thay đổi giá bán hoặc loại bỏ khỏi thực đơn.

## 7. Root Cause Investigation – Điều tra nguyên nhân suy giảm doanh thu

Dựa trên kết quả phân tích, giai đoạn tháng 8–10 là một trong những giai đoạn đáng chú ý nhất khi tổng doanh thu giảm khoảng 6.22%.

Khi phân tích theo Category, có thể thấy nhiều danh mục cùng ghi nhận sự suy giảm, đặc biệt là Chicken, Classic và Veggie. Trong khi đó, Supreme đã phục hồi vào tháng 10.

Tiếp tục phân tích theo kích thước sản phẩm cho thấy Size S có mức suy giảm doanh thu lớn nhất, khoảng 2.09K USD, đồng thời sản lượng giảm 155 chiếc. Size M và L cũng ghi nhận sự suy giảm nhưng với mức độ thấp hơn.

Những kết quả này cho thấy sự suy giảm doanh thu có liên quan đến sự thay đổi sản lượng tiêu thụ ở nhiều nhóm sản phẩm, đặc biệt là Size S.

Tuy nhiên, dữ liệu hiện tại chưa đủ để xác định nguyên nhân gốc rễ của sự suy giảm. Cần tiếp tục phân tích chi tiết mối quan hệ giữa Category, Size và từng sản phẩm để xác định nhóm đóng góp lớn nhất vào mức giảm doanh thu.

Bên cạnh đó, doanh nghiệp cần xem xét thêm những yếu tố vận hành như tình trạng tồn kho nguyên liệu, khả năng cung ứng sản phẩm, thay đổi công thức, giá bán và các chương trình khuyến mãi trong giai đoạn này.

Đây là những giả thuyết cần được kiểm chứng bằng dữ liệu bổ sung trước khi đưa ra kết luận cuối cùng.

## 8. Recommendations – Đề xuất giải pháp

Dựa trên các kết quả phân tích, một số giải pháp có thể được đề xuất như sau:

**1. Tối ưu danh mục sản phẩm**

- Tiếp tục duy trì hiệu suất của Category Classic.
- Tìm hiểu các sản phẩm có tiềm năng tăng trưởng trong Chicken và Veggie.
- Đánh giá lại những sản phẩm có sản lượng thấp, đặc biệt là Brie Carre Pizza, dựa trên chi phí và lợi nhuận trước khi đưa ra quyết định.

**2. Cải thiện giá trị đơn hàng trung bình**

- Triển khai các chương trình Upselling nhằm khuyến khích khách hàng lựa chọn kích thước lớn hơn.
- Tạo combo kết hợp nhiều sản phẩm.
- Thử nghiệm ưu đãi khi khách hàng mua thêm pizza hoặc sản phẩm đi kèm.

**3. Tối ưu hoạt động bán hàng theo thời gian**

- Ưu tiên nhân sự và nguồn nguyên liệu trong khung giờ cao điểm 12h–13h và 17h–19h.
- Thử nghiệm chương trình khuyến mãi trong các khung giờ thấp điểm.
- Đánh giá hiệu quả bán hàng theo từng ngày trong tuần để tối ưu hoạt động vận hành.

**4. Điều tra nguyên nhân suy giảm doanh thu**

- Phân tích sâu sản lượng theo Category và Size trong giai đoạn tháng 8–10.
- Xác định các sản phẩm có mức suy giảm lớn nhất.
- Kiểm tra dữ liệu tồn kho, giá bán và lịch sử khuyến mãi nếu có.
- Theo dõi sự thay đổi của Orders, Quantity và AOV để xác định yếu tố đóng góp vào biến động doanh thu.

**5. Đánh giá hiệu quả các chương trình kinh doanh**

Sau khi triển khai các giải pháp, doanh nghiệp cần theo dõi những chỉ số như Revenue Growth, Total Orders, Average Order Value và Quantity Sold để đánh giá mức độ cải thiện.

---

## 9. Conclusion – Kết luận

Qua quá trình phân tích dữ liệu bán hàng trong một năm, cửa hàng ghi nhận tổng doanh thu khoảng 817.86K USD với 21,350 đơn hàng và 49,574 pizza được bán ra.

Classic là danh mục đóng góp sản lượng lớn nhất, trong khi Size L là kích thước mang lại doanh thu cao nhất. Bên cạnh đó, phân tích sản phẩm cho thấy Barbecue Chicken và Thai Chicken có khả năng tạo doanh thu cao hơn Classic Deluxe dù sản lượng tiêu thụ thấp hơn.

Một trong những vấn đề đáng chú ý là doanh thu suy giảm trong giai đoạn tháng 8–10, đặc biệt là tháng 9. Phân tích chi tiết cho thấy nhiều Category cùng chịu ảnh hưởng, trong đó Size S ghi nhận mức giảm doanh thu và sản lượng đáng kể.

Từ những phát hiện này, doanh nghiệp cần tập trung tối ưu danh mục sản phẩm, cải thiện giá trị đơn hàng trung bình, phân bổ hoạt động bán hàng theo nhu cầu khách hàng và tiếp tục điều tra các yếu tố ảnh hưởng đến sản lượng tiêu thụ.

Những giải pháp trên có thể giúp doanh nghiệp hiểu rõ hơn về hiệu quả kinh doanh, cải thiện hoạt động bán hàng và xây dựng chiến lược phát triển dựa trên dữ liệu.
