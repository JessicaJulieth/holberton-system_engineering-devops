#!/usr/bin/python3
"""
function that queries the Reddit API and returns the number of subscribers
"""

import requests


def number_of_subscribers(subreddit):
    url = 'https://www.reddit.com/r/{}/about.json'.format(subreddit)
    headers = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) \
        AppleWebKit/537.36 (KHTML, like Gecko) \
        Chrome/98.0.4758.82 Safari/537.36"}
    respon = requests.get(url, headers=headers, allow_redirects=False)

    if respon.status_code != 200:
        return 0
    requ = respon.json()
    return requ['data']['subscribers']
