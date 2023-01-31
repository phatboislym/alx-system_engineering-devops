#!/usr/bin/python3
"""
a recursive function that queries the Reddit API and returns a list
the list contains the titles of all hot articles for a given subreddit
If no results are found for the given subreddit, it returns None
"""

from requests import get as fetch


def recurse(subreddit, hot_list=[], after="", count=0):
    """a recursive function that queries the Reddit API and returns a list"""
    api = "https://api.reddit.com"
    headers = {"User-Agent": "my-custom-user-agent"}
    params = {"after": after, "count": count}
    response = fetch("{}/r/{}/hot".format(api, subreddit), headers=headers,
                     params=params)
    if response.status_code == 404:
        return (None)
    data = response.json().get("data")
    after = data.get("after")
    count += data.get("dist")
    children = data.get("children")
    for child in children:
        hot_list.append(child.get("data").get("title"))

    while after:
        recurse(subreddit, hot_list, after, count)

    return (hot_list)
