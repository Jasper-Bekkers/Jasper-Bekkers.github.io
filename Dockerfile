FROM nginx:mainline-alpine
RUN rm /etc/nginx/conf.d/*
#RUN gem install jekyll bundler
#RUN bundle exec jekyll build

ADD nginx.conf /etc/nginx/conf.d/blog.conf
COPY _site/ /usr/share/nginx/html

ENV JEKYLL_ENV=production
#bundle exec jekyll build
#rsync -avr --rsh='ssh' --delete-after --delete-excluded _site/ ubuntu@52.14.179.50:/home/ubuntu/blog/_site

EXPOSE 80