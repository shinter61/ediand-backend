FROM ruby:2.7.1

# 必要なパッケージのインストール
RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       libpq-dev \
                       nodejs

##作業ディレクトリ名をAPP_ROOTに割り当てて、以下$APP_ROOTで参照
ENV APP_ROOT /ediand_backend
WORKDIR $APP_ROOT

# ホスト側（ローカル）のGemfileを追加する（ローカルのGemfileは【３】で作成）
ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock

# Gemfileのbundle install
RUN bundle install --path vendor/bundle
ADD . $APP_ROOT
