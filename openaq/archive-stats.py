#/usr/bin/env python3
from urllib import request
from bs4 import BeautifulSoup

'''
Print OpenAQ daily archives summary.
'''

URL = "http://openaq-data.s3.amazonaws.com/"

if __name__ == "__main__":
    with request.urlopen(URL) as f:
        content = f.read().decode('utf-8')     
    soup = BeautifulSoup(content, 'xml')
    sizes = soup.find_all('Size')
    size_sum = sum(int(s.get_text()) for s in sizes)
    size_sum_gb = size_sum / (10**9)
    print('Filesize sum: {} GB'.format(size_sum_gb))
    filenames = soup.find_all('Key')
    print('Number of days: {}'.format(len(filenames)))
    first = filenames[0].get_text().split('.')[0]
    last = filenames[-2].get_text().split('.')[0]
    print('Date range: {} - {}'.format(first, last))
