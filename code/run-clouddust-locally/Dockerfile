FROM jekyll/jekyll:4

WORKDIR /srv/jekyll

COPY . .

RUN bundle install || true
RUN gem install webrick

EXPOSE 4000

CMD ["jekyll", "serve", "--host", "0.0.0.0"]
