# 🍽️ MealMate – Food Delivery Web Application

A full-stack food delivery web application built with **Django** and **SQLite**, featuring customer registration, restaurant browsing, cart management, and **Razorpay payment integration**.

Built as part of the **KodNest Python Full Stack Internship** (Feb–May 2026).

---

## 🚀 Features

### Customer
- Register and login with session-based authentication
- Browse restaurants with cuisine type and ratings
- View menu items (veg/non-veg filter)
- Add/remove items from cart
- View cart with real-time total price calculation
- Checkout with Razorpay payment gateway (test mode)
- View order history

### Admin
- Secure admin dashboard (username: `admin`)
- Add, update, and delete restaurants
- Manage menu items per restaurant (add, delete)
- Full Django admin panel at `/admin/`

---

## 🛠️ Tech Stack

| Layer | Technology |
|-------|-----------|
| Backend | Python 3.x, Django 5.1 |
| Database | SQLite (via Django ORM) |
| Frontend | HTML5, CSS3, Django Templates |
| Payments | Razorpay API (test mode) |
| Auth | Session-based custom authentication |

---

## ⚙️ Setup & Installation

### 1. Clone the repository
```bash
git clone https://github.com/DEEPAK9815/MealMate.git
cd MealMate
```

### 2. Create a virtual environment
```bash
python -m venv venv
source venv/bin/activate        # On Windows: venv\Scripts\activate
```

### 3. Install dependencies
```bash
pip install -r requirements.txt
```

### 4. Apply migrations
```bash
python manage.py makemigrations
python manage.py migrate
```

### 5. Create admin user
```bash
# The app uses a custom Customer model.
# Create the admin account through the signup page,
# then use username: admin to access the admin dashboard.
```

### 6. Run the development server
```bash
python manage.py runserver
```

Open `http://127.0.0.1:8000` in your browser.

---

## 💳 Razorpay Test Payment

This app uses Razorpay in **test mode**. Use the following test card details:

- **Card Number:** `4111 1111 1111 1111`
- **Expiry:** Any future date
- **CVV:** Any 3 digits
- **OTP:** `1234`

To use your own Razorpay keys, set environment variables:
```bash
export RAZORPAY_KEY_ID=your_key_id
export RAZORPAY_KEY_SECRET=your_key_secret
```

---

## 📁 Project Structure

```
MealMate/
├── delivery/                  # Main app
│   ├── models.py              # Customer, Restaurant, Item, Cart, Order, OrderItem
│   ├── views.py               # All views with session-based auth
│   ├── urls.py                # URL routing
│   ├── admin.py               # Django admin configuration
│   ├── templates/delivery/    # HTML templates
│   └── static/delivery/       # CSS and images
├── meal_buddy/                # Django project config
│   ├── settings.py
│   └── urls.py
├── requirements.txt
├── manage.py
└── README.md
```

---

## 🗄️ Database Schema

| Model | Fields |
|-------|--------|
| Customer | username, password, email, mobile, address |
| Restaurant | name, picture, cuisine, rating |
| Item | restaurant (FK), name, description, price, vegeterian, picture |
| Cart | customer (FK), items (M2M → Item) |
| Order | customer (FK), total_amount, status, razorpay_order_id, created_at |
| OrderItem | order (FK), item (FK), price_at_order |

---

## 📸 Screenshots

> Add screenshots here after running the project locally.

---

## 🙋 Author

**Deepak Choudhary**  
B.Tech CSE | Sahyadri College of Engineering & Management, Mangaluru  
GitHub: [github.com/DEEPAK9815](https://github.com/DEEPAK9815)  
LinkedIn: [linkedin.com/in/deepak-choudhary-82263126a](https://www.linkedin.com/in/deepak-choudhary-82263126a/)
