# ベースイメージを指定
FROM python:3.9

# ワークディレクトリを設定
WORKDIR /app

# 依存パッケージをインストール
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# プロジェクトファイルをコピー
COPY . /app/

# Djangoアプリケーションを起動
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
