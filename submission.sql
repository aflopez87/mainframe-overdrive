-- Post made in April 2048
    SELECT author FROM forum_posts BETWEEN '2048-04-01' AND '2048-04-30'; 
    -- contains 16 authors

-- Post about 'self-driving taxis' contains 'EmptyStack' and 'dad'
    SELECT author, content FROM forum_posts WHERE content LIKE '%EmptyStack%' AND content LIKE '%dad%' AND date BETWEEN '2048-04-01' AND '2048-04-30';
    -- user smart-money-44

-- user first name and last name - 
    SELECT username, first_name, last_name FROM forum_accounts WHERE username LIKE '%smart%';
    -- full name of user is Brad Steele

-- Post user has father that is Active Participant, shares same last name - 
    SELECT username, first_name, last_name FROM forum_accounts WHERE last_name LIKE '%Steele%';
    -- Andrew: sharp-engine-57 and Kevin: stinky-tofu-98 both have last name STEELE

-- Find which name is in emptystacks - 
    SELECT username, first_name, last_name FROM emptystack_accounts WHERE first_name LIKE 'Andrew' OR first_name LIKE 'Kevin' and last_name LIKE 'Steele';
    -- Andrew Steele - username is triple-cart-38

-- Find credentials for user Andrew Steele in emptystack - 
    SELECT * FROM emptystack_accounts WHERE username LIKE 'triple-cart-38';
    -- password is: password456

-- Find post in emptystack.sql  emptystack messages that refers to self-driving taxis
    SELECT * FROM emptystack_messages WHERE ("to" LIKE '%triple-cart-38%' OR "from" LIKE '%triple-cart-38%') AND body ILIKE '%taxi%';
    SELECT "to", "from", body FROM emptystack_messages WHERE ("to" LIKE '%triple-cart-38%' OR "from" LIKE '%triple-cart-38%') AND body ILIKE '%taxi%';
    -- your-boss-99 is an associated username with Project TAXI mentioned with mainframe id of LidWj

-- Find Project id

-- Find out credentials from your-boss-99
    SELECT * FROM emptystack_accounts WHERE username ILIKE '%your-boss-99%';
    -- username: your-boss-99
    -- password: notagaincarter

-- Find Project Taxi id
    SELECT * FROM emptystack_projects WHERE code ILIKE 'taxi';
    -- Project id is DczE0v2b


