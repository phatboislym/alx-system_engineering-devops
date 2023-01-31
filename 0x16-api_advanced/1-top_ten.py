#!/usr/bin/python3
"""
function that queries the Reddit API and prints the titles of the first 10
hot posts listed for a given subreddit. If not a valid subreddit, print None
"""
from requests import get as fetch


def top_ten(subreddit):
    """
    function that queries the Reddit API and prints the titles of the first 10
    """
    api = "https://api.reddit.com"
    headers = {"User-Agent": "ChangeMeClient/0.1 by kolaoba"}
    params = {"limit": 10}
    response = fetch("{}/r/{}/hot".format(api, subreddit), headers=headers,
                     params=params)
    if response.status_code == 404:
        return print(None)
    children = response.json().get('data').get('children')
    # print("\n".join([child.get('data').get('title') for child in children]))
    titles = []
    for child in children:
        title = child.get('data').get('title')
        titles.append(title)

    print('\n'.join(titles))
