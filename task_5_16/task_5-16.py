import psycopg2

connection = None
cursor = None

try:
    # Подключаемся к базе
    connection = psycopg2.connect(
        host="localhost",
        port="5435",
        user="postgres",
        password="student",
        database="student_task"
    )
    
    cursor = connection.cursor()
    
    # select
    cursor.execute("SELECT * FROM products LIMIT 5;")
    
    # Получаем результат и выводим его
    result = cursor.fetchall()

    for row in result:
        print(row)

    connection.commit()

except Exception as error:
    if connection:
        connection.rollback()
    print(f"Ошибка: {error}")

finally:
    if cursor is not None:
        cursor.close()
    if connection is not None:
        connection.close()