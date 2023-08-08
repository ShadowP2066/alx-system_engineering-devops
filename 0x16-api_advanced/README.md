# 0x16. API advanced


## Mandatory Tasks 📃

### 0. How many subs?

Write a function that queries the Reddit API and returns the number of subscribers (not active users, total subscribers) for a given subreddit. If an invalid subreddit is given, the function should return 0.

### Hint:

No authentication is necessary for most features of the Reddit API. If you're getting errors related to Too Many Requests, ensure you're setting a custom User-Agent.

#### Requirements:

Prototype: def number_of_subscribers(subreddit)
If not a valid subreddit, return 0.
NOTE: Invalid subreddits may return a redirect to search results. Ensure that you are not following redirects.

### 1. Top Ten

Write a function that queries the Reddit API and prints the titles of the first 10 hot posts listed for a given subreddit.

#### Requirements:

Prototype: def top_ten(subreddit)
If not a valid subreddit, print None.
NOTE: Invalid subreddits may return a redirect to search results. Ensure that you are not following redirects.


### 2. Recurse it!

Write a recursive function that queries the Reddit API and returns a list containing the titles of all hot articles for a given subreddit. If no results are found for the given subreddit, the function should return None

### Hint:

The Reddit API uses pagination for separating pages of responses.

#### Requirements:

Prototype: def recurse(subreddit, hot_list=[])
Note: You may change the prototype, but it must be able to be called with just a subreddit supplied. AKA you can add a counter, but it must work without supplying a starting value in the main.
If not a valid subreddit, return None.
NOTE: Invalid subreddits may return a redirect to search results. Ensure that you are not following redirects.

### Take Note:

Your code will NOT pass if you are using a loop and not recursively calling the function! This /can/ be done with a loop but the point is to use a recursive function. :)


### 3. Star wars movie title

Write a script that prints the title of a Star Wars movie where the episode number matches a given integer.

#### Requirements

The first argument is the movie ID
You must use the Star wars API with the endpoint https://swapi-api.alx-tools.com/api/films/:id
You must use the module request


### 4. Star wars Wedge Antilles

Write a script that prints the number of movies where the character “Wedge Antilles” is present.

#### Requirements

The first argument is the API URL of the Star wars API: https://swapi-api.alx-tools.com/api/films/
Wedge Antilles is character ID 18 - your script must use this ID for filtering the result of the API
You must use the module request


### 5. Loripsum

Write a script that gets the contents of a webpage and stores it in a file.

#### Requirements

The first argument is the URL to request
The second argument the file path to store the body response
The file must be UTF-8 encoded
You must use the module request


### 6. How many completed?

Write a script that computes the number of tasks completed by user id.

#### Requirements

The first argument is the API URL: https://jsonplaceholder.typicode.com/todos
Only print users with completed task
You must use the module request


## Advanced Tasks 📃

### 3. Count it!

Write a recursive function that queries the Reddit API, parses the title of all hot articles, and prints a sorted count of given keywords (case-insensitive, delimited by spaces. Javascript should count as javascript, but java should not).

#### Requirements

Prototype: def count_words(subreddit, word_list)
Note: You may change the prototype, but it must be able to be called with just a subreddit supplied and a list of keywords. AKA you can add a counter or anything else, but the function must work without supplying a starting value in the main.
If word_list contains the same word (case-insensitive), the final count should be the sum of each duplicate (example below with java)
Results should be printed in descending order, by the count, and if the count is the same for separate keywords, they should then be sorted alphabetically (ascending, from A to Z). Words with no matches should be skipped and not printed. Words must be printed in lowercase.
Results are based on the number of times a keyword appears, not titles it appears in. java java java counts as 3 separate occurrences of java.
To make life easier, java. or java! or java_ should not count as java
If no posts match or the subreddit is invalid, print nothing.
NOTE: Invalid subreddits may return a redirect to search results. Ensure that you are NOT following redirects.

### Take Note:

Your code will NOT pass if you are using a loop and not recursively calling the function! This /can/ be done with a loop but the point is to use a recursive function. :)

### Disclaimer:

number presented in this example cannot be accurate now - Reddit is hot articles are always changing.


# Author

Thulile Makhubela <https://github.com/ShadowP2066>
