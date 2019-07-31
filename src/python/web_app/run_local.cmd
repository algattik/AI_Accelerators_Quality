docker stop ai_acc
docker rm ai_acc
cd WebApp
docker build --no-cache -t ai_acc .
cd ..
docker run --name ai_acc -p 80:80 -e SQL_PW="David!234567890" -e SQL_USER="dacrook@dacrook-ai-quality-dev" -e SQL_DB="dacrook-ai-quality-dev-web" -e SQL_SERVER="tcp:dacrook-ai-quality-dev.database.windows.net" -e SQL_DRIVER="{ODBC Driver 17 for SQL Server}" ai_acc