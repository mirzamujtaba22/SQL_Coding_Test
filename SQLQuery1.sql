CREATE DATABASE G_Rated_DB
USE G_Rated_DB

CREATE TABLE users (
    username VARCHAR(30) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    three_digit_number INT,
    number_of_wins INT,
    number_of_losses INT
);

INSERT INTO users (username, first_name, last_name, three_digit_number, number_of_wins, number_of_losses)
VALUES
    ('user1', 'Mirza', 'Mujtaba', 123, 5, 2),
    ('user2', 'Mirza', 'Mansoor', 456, 8, 1),
    ('user3', 'Mirza', 'Ahmed', 789, 3, 4),
    ('user4', 'Mirza', 'Saud', 321, 10, 0),
    ('user5', 'Mirza', 'Maqsood', 654, 6, 3),
    ('user6', 'Mirza', 'Shehroz', 987, 2, 7),
    ('user7', 'Mirza', 'Faraz', 555, 4, 5),
    ('user8', 'Khuram', 'Maqsood', 888, 7, 2),
    ('user9', 'Hamza', 'Abbas', 111, 9, 1),
    ('user10', 'Ali', 'Tariq', 999, 5, 5);

	CREATE TABLE content (
    question_id INT PRIMARY KEY,
    question_text VARCHAR(255),
    answer_a VARCHAR(50),
    answer_b VARCHAR(50),
    answer_c VARCHAR(50),
    answer_d VARCHAR(50),
    correct_answer CHAR(1),
    image varbinary(100),
    answered_by_username VARCHAR(30),
    FOREIGN KEY (answered_by_username) REFERENCES users(username)
	);

	INSERT INTO content (question_id, question_text, answer_a, answer_b, answer_c, answer_d, correct_answer, image, answered_by_username)
VALUES
    --(1, 'What is the color of the sky in the image?', 'Red', 'Blue', 'Green', 'Orange', 'B', CAST('wahid' AS VARBINARY(MAX)), 'user1'),
	 (2, 'What is the capital of France?', 'Berlin', 'Madrid', 'Paris', 'Rome', 'C', CAST('wahid' AS VARBINARY(MAX)), 'user2'),
    (3, 'Which planet is known as the Red Planet?', 'Earth', 'Mars', 'Venus', 'Jupiter', 'B', CAST('wahid' AS VARBINARY(MAX)), 'user3'),
    (4, 'How many continents are there on Earth?', '5', '6', '7', '8', 'C', CAST('wahid' AS VARBINARY(MAX)), 'user4'),
    (5, 'What is the largest mammal on Earth?', 'Elephant', 'Blue Whale', 'Giraffe', 'Lion', 'B', CAST('wahid' AS VARBINARY(MAX)), 'user5'),
    (6, 'In which year did World War II end?', '1939', '1945', '1952', '1960', 'B', CAST('wahid' AS VARBINARY(MAX)), 'user6'),
    (7, 'What is the main ingredient in guacamole?', 'Tomato', 'Avocado', 'Onion', 'Cilantro', 'B', CAST('wahid' AS VARBINARY(MAX)), 'user7'),
    (8, 'Who wrote "Romeo and Juliet"?', 'Charles Dickens', 'Jane Austen', 'William Shakespeare', 'Emily Bronte', 'C', CAST('wahid' AS VARBINARY(MAX)), 'user8'),
    (9, 'What is the largest ocean on Earth?', 'Atlantic Ocean', 'Indian Ocean', 'Southern Ocean', 'Pacific Ocean', 'D', CAST('wahid' AS VARBINARY(MAX)), 'user9'),
    (10, 'Which country is known as the Land of the Rising Sun?', 'China', 'India', 'Japan', 'South Korea', 'C', CAST('wahid' AS VARBINARY(MAX)), 'user10');

	CREATE TABLE  network_codes (
    code_id INT PRIMARY KEY,
    four_digit_code VARCHAR(4),
    network_name VARCHAR(50)
);

INSERT INTO network_codes (code_id, four_digit_code, network_name)
VALUES
    (1, '4F6I', 'Library_Network_4G'),
    (2, '7H3D', 'Office_Network_WiFi'),
    (3, '2P9Q', 'Home_Network_5G'),
    (4, '5K8R', 'Cafe_Network_Public'),
    (5, '1L0S', 'Park_Network_Free');


	SELECT *
FROM users
ORDER BY number_of_wins DESC;