-- 使用するDBを指定
USE sampledb;

-- 個人情報テーブル作成
CREATE TABLE IF NOT EXISTS customer_info (
  id INT AUTO_INCREMENT PRIMARY KEY,
  mailAddress VARCHAR(255),
  password VARCHAR(255),
  name VARCHAR(255),
  nameKana VARCHAR(255),
  gender INT,
  jushoPref INT,
  jusho1 VARCHAR(255),
  jusho2 VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  created_by VARCHAR(255),
  update_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_by VARCHAR(255),
  delete_flg INT
);