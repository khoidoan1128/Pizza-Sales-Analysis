
# Phân Tích Doanh Số Pizza (Pizza Sales Analysis)

## Tổng Quan Dự Án

Dự án phân tích dữ liệu bán pizza trong một năm nhằm đánh giá hiệu quả kinh doanh, xác định xu hướng doanh thu và phân tích hiệu suất sản phẩm.

Mục tiêu là khai thác dữ liệu bằng SQL để tìm ra những thông tin hữu ích và đề xuất giải pháp cải thiện hoạt động kinh doanh.

## Mục Tiêu Phân Tích

- Đánh giá tổng quan doanh thu và các chỉ số KPI.
- Phân tích xu hướng doanh thu theo tháng và quý.
- Xác định ngày và khung giờ có nhiều đơn hàng nhất.
- Đánh giá hiệu suất theo danh mục và kích thước pizza.
- Xác định sản phẩm bán chạy và bán kém.
- Tìm hiểu những yếu tố có thể liên quan đến sự sụt giảm doanh thu.

## Tổng Quan Dữ Liệu

Bộ dữ liệu gồm **583.452 dòng và 12 cột**, ghi nhận các giao dịch bán pizza trong một năm.

| Cột dữ liệu | Mô tả |
|---|---|
| pizza_id | Mã bản ghi pizza |
| order_id | Mã đơn hàng |
| pizza_name_id | Mã sản phẩm |
| quantity | Số lượng bán |
| order_date | Ngày đặt hàng |
| order_time | Thời gian đặt hàng |
| unit_price | Đơn giá |
| total_price | Tổng giá trị |
| pizza_size | Kích thước pizza |
| pizza_category | Danh mục pizza |
| pizza_ingredients | Nguyên liệu |
| pizza_name | Tên sản phẩm |

## Công Cụ Và Công Nghệ

- **MySQL:** Làm sạch, truy vấn và phân tích dữ liệu.
- **SQL:** CTE, Subquery, Joins, Window Functions, Aggregate Functions và Date Functions.
- **Power Bi:** Thiết kế dashboard
## 5. Các Chỉ Số KPI

| Chỉ số | Kết quả |
|---|---:|
| Tổng doanh thu | $817,860.05 |
| Tổng đơn hàng | 21,350 |
| Tổng pizza bán ra | 49,574 |
| Giá trị đơn hàng trung bình (AOV) | $38.31 |
| Số pizza trung bình/đơn hàng | 2.32 |

## Những Phát Hiện Chính

**Doanh thu:**
- Tháng 7 có doanh thu cao nhất, khoảng $72.55K.
- Tháng 10 có doanh thu thấp nhất, khoảng $64.02K.
- Doanh thu giảm khoảng 6.22% từ tháng 8 đến tháng 10.

**Danh mục và kích thước:**
- Classic dẫn đầu sản lượng, chiếm khoảng 30.03%.
- Large (L) là kích thước được ưa chuộng nhất.
- Size S ghi nhận mức giảm doanh thu lớn nhất trong ba kích thước chính từ tháng 8 đến tháng 10.

**Sản phẩm:**
- Classic Deluxe bán chạy nhất với 2.453 chiếc.
- Barbecue Chicken có doanh thu cao nhất, khoảng $43.79K.
- Brie Carre có sản lượng thấp nhất, khoảng 490 chiếc.

**Đơn hàng:**
- Thứ Năm có số lượng đơn hàng cao nhất.
- Giờ cao điểm tập trung vào 12:00–13:00 và 17:00–19:00.

## Đề Xuất

- Duy trì hiệu suất danh mục Classic và khai thác thêm tiềm năng của Chicken, Supreme.
- Thử nghiệm Upselling và Combo để tăng giá trị đơn hàng trung bình.
- Tối ưu nhân sự và chuẩn bị nguyên liệu vào giờ cao điểm.
- Phân tích sâu hơn nguyên nhân sụt giảm doanh thu của Size S.
- Đánh giá sản phẩm dựa trên doanh số, chi phí và lợi nhuận trước khi điều chỉnh thực đơn.
