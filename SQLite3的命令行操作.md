## SQLite3的命令行操作

```

格式化输出：
	.header on
	.mode column

打开数据库：
	./sqlite3 test_sql.db
	
创建表：
	CREATE TABLE test_table (
	    id INTEGER PRIMARY KEY,
	    value TEXT
	);
	
删除表：
	DROP TABLE IF EXISTS test_table;
	
查看表结构：
	.tables				（查看所有表）
	.schema test_table	（查看某个表的具体数据结构）
	
插入数据：
	INSERT INTO test_table VALUES (1,'hellow');
	INSERT INTO test_table VALUES (2,'word');
	INSERT INTO test_table VALUES (3,'how');
	INSERT INTO test_table VALUES (4,'are');
	INSERT INTO test_table VALUES (5,'you');
	INSERT INTO test_table VALUES (6,'my');
	INSERT INTO test_table VALUES (7,'boy');

统计数据：
	SELECT COUNT(*) FROM test_table;

查看数据：
	SELECT * FROM test_table								（查看所有）
	SELECT * FROM test_table WHERE id >=2 AND id <= 5; 		（条件查询）
	
删除数据：
	DELETE FROM test_table;								（删除所有）
	DELETE FROM test_table WHERE id >=2 AND id <= 5;	（条件删除）

退出数据库：
	.quit
```