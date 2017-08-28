/* Create Table for todos */
CREATE table todo(
  id SERIAL PRIMARY KEY,
  title VARCHAR(225) NOT NULL,
  details VARCHAR(500),
  priority INTEGER NOT NULL DEFAULT '1',
  created_at DATE NOT NULL ,
  completed_at DATE
);
/* Insert data in todo */
INSERT into todo(title, priority, created_at)
  values('Laundry',03, '2017-08-28 11:30:22');
INSERT into todo(title,details,priority, created_at)
  values('Dusting','Dust the upper shelves too!!!',04, '2017-08-28 11:35:35');
INSERT into todo(title, priority, created_at)
  values('Cooking',02, '2017-08-28 9:02:42');
INSERT into todo(title, priority, created_at, completed_at)
  values('Car Wash',01, '2017-08-27 20:30:22', '2017-08-27 8:00:15');
INSERT into todo(title, priority, created_at)
  values('Grocery Shopping',05, '2017-08-28 3:00:18');

/* Check if the entries are done!!! */
SELECT * from todo;

/* Select all incomplete todos*/
SELECT * from todo WHERE completed_at IS NULL;

/* Select all todos with priority above 1*/
SELECT * from todo WHERE priority>1;

/* Update a todo to completed */
UPDATE todo set completed_at='2017-08-28 12:00:34'
  WHERE id=2;

/* Delete all completed todos */
DELETE from todo WHERE completed_at IS NOT NULL;