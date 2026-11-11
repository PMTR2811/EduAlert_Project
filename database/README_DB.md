\# Chạy SQL Server bằng Docker cho EduAlert



1\. Mở Docker Desktop, đợi Engine running.

2\. Bật SQL Server:

&#x20;  docker compose -f docker-compose.dev.yml up -d

3\. Tạo bảng (chạy 1 lần):

&#x20;  docker cp database\\tables\_schema.sql edualert-sqlserver:/tmp/tables\_schema.sql

&#x20;  docker exec edualert-sqlserver /opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P "EduAlert@2026" -C -i /tmp/tables\_schema.sql

4\. Chạy app (CMD Windows), không cần sửa application.yaml:

&#x20;  set JAVA\_HOME=<thư mục cài JDK 25>

&#x20;  set SPRING\_DATASOURCE\_URL=jdbc:sqlserver://localhost:1433;databaseName=edualert;encrypt=true;trustServerCertificate=true

&#x20;  set SPRING\_DATASOURCE\_USERNAME=sa

&#x20;  set SPRING\_DATASOURCE\_PASSWORD=EduAlert@2026

&#x20;  mvnw.cmd spring-boot:run



Mật khẩu sa: EduAlert@2026


\## Chạy toàn bộ hệ thống bằng Docker (App + SQL Server)



&#x20;  docker compose up --build



Sau đó mở http://localhost:8080 . Nạp 80 sinh viên mẫu:

&#x20;  curl -X POST http://localhost:8080/api/demo/load-synthetic-data



Tắt: Ctrl + C, rồi `docker compose down`.

Lưu ý: tắt app chạy bằng Maven (mvnw) trước, vì trùng cổng 8080 và 1433.

