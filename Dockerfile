FROM python:2.7-alpine

WORKDIR /webnav
ADD webnav /webnav

RUN pip install -r pip_requirement.txt -i http://pypi.douban.com/simple --trusted-host pypi.douban.com

EXPOSE 8000

CMD ["python", "manage.py","runserver","0.0.0.0:8000"]
