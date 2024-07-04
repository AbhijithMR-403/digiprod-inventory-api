

# Machine Test by Digiprod 

A simple e-commerce inventory management system that allows users to manage products.

URL: digiprod.lunar-edge.online

### Prerequisites
- Python 3.8+
- pip
- Docker(optional)

### Steps

1. **Clone the repository:**

    ```
    git clone https://github.com/AbhijithMR-403/digiprod-inventory-api
    ```

2. **Create and activate a virtual environment:**
    ```bash
    python -m venv venv
    source venv/bin/activate  # On Windows use `venv\Scripts\activate`
    ```

3. **Install dependencies:**

    ```
    pip install -r requirements.txt
    ```

4. **Create database**\
    You needs to create a database in postgres\
    else use this sqlite3 database to change the configuration in settings file
    ```
    "default": {
        "ENGINE": "django.db.backends.sqlite3",
        "NAME": BASE_DIR / "db.sqlite3",
    }
    ```



5. **Create .env**
    now you needs create a file `.env`
    ```
    SECRET_KEY
    NAME
    USER
    PASSWORD
    DEBUG
    ```


5. **Create and apply migrations:**

    ```
    python manage.py makemigrations
    python manage.py migrate
    ```

7. **Run project**
    ```
    python manage.py runserver
    ```
