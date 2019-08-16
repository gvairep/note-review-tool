import argparse
from urllib import request
from bs4 import BeautifulSoup

TEMPLATE_HTML = 'template/template.html'
OUT_HTML = 'review.html'

def main(url):
    review_html = request.urlopen(url)
    soup = BeautifulSoup(review_html, "html.parser")
    article = soup.article

    html = ''
    
    with open(TEMPLATE_HTML, 'r', encoding='utf-8') as f:
        for line in f:
            html += line

    html = html.replace('$article', str(article))
    
    with open(OUT_HTML, 'w', encoding='utf-8') as f:
        f.write(html)
        
if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='note review tool')
    parser.add_argument('url', type=str, help='note preview url.')

    args = parser.parse_args()
    
    main(args.url)