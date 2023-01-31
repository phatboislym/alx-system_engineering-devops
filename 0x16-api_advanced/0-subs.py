#!/usr/bin/python3
"""
function that queries the Reddit API and returns the number of subscribers,
(not active users, total subscribers) for a given subreddit. If an invalid
subreddit is given, the function returns 0.
"""
from requests import get as fetch
from sys import argv


def number_of_subscribers(subreddit):
    "queries the Reddit API and returns the number of subscribers"
    api = "https://api.reddit.com"
    headers = {"User-Agent": "my-custom-user-agent"}
    response = fetch("{}/r/{}/about".format(api, subreddit), headers=headers)
    if response.status_code == 404:
        return (0)
    return (response.json().get("data").get("subscribers"))
