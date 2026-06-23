set -o errexit

#poetry install
pip freeze > requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate