#!/bin/bash

apt update -y
apt install -y apache2

systemctl enable apache2
systemctl start apache2

cat <<'EOF' > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Sri Gunnamma Travels - EC2 Server 2</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial,Helvetica,sans-serif;
}

body{
background:#eef5ff;
}

header{
background:#1565C0;
color:white;
padding:25px;
text-align:center;
font-size:42px;
font-weight:bold;
}

.hero{
background:linear-gradient(135deg,#1565C0,#42A5F5);
color:white;
padding:60px;
text-align:center;
}

.hero h1{
font-size:48px;
margin-bottom:20px;
}

.hero p{
font-size:24px;
margin-bottom:20px;
}

.btn{
display:inline-block;
padding:15px 35px;
margin:10px;
border-radius:8px;
font-size:22px;
font-weight:bold;
text-decoration:none;
}

.call{
background:#FFD54F;
color:black;
}

.whatsapp{
background:#25D366;
color:white;
}

.server{
background:#D6EAF8;
padding:15px;
text-align:center;
font-size:28px;
font-weight:bold;
color:#0D47A1;
}

.section-title{
text-align:center;
margin:40px;
font-size:36px;
color:#1565C0;
}

.cards{
display:flex;
justify-content:center;
gap:25px;
flex-wrap:wrap;
padding:20px;
}

.card{
background:white;
width:320px;
border-radius:12px;
padding:25px;
box-shadow:0 5px 15px rgba(0,0,0,.2);
}

.card h2{
color:#1565C0;
margin-bottom:20px;
}

.card ul{
padding-left:20px;
line-height:35px;
font-size:20px;
}

footer{
background:#0B2545;
color:white;
padding:35px;
text-align:center;
margin-top:40px;
}

footer h2{
margin:10px;
}

</style>

</head>

<body>

<header>

🚖 Sri Gunnamma Travels 🚖

</header>

<section class="hero">

<h1>Safe • Comfortable • Affordable Taxi Service</h1>

<p>

Srikakulam ➜ Vizag ➜ Anywhere in India

</p>

<a class="btn call" href="tel:9014745090">

📞 Call Now : 9014745090

</a>

<a class="btn whatsapp" href="https://wa.me/919014745090">

💬 WhatsApp Booking

</a>

</section>

<div class="server">

🔵 Welcome to EC2 Server - 2

</div>

<h2 class="section-title">

Our Services

</h2>

<div class="cards">

<div class="card">

<h2>✈️ Airport Services</h2>

<ul>

<li>Vizag Airport Pickup</li>

<li>Vizag Airport Drop</li>

<li>Railway Station Pickup</li>

<li>24×7 Airport Taxi</li>

<li>Hotel Pickup & Drop</li>

<li>Corporate Travel</li>

<li>Long Distance Trips</li>

</ul>

</div>

<div class="card">

<h2>🚐 Our Vehicles</h2>

<ul>

<li>Maruti Ertiga - 7 Seater</li>

<li>5 Seater AC Cab</li>

<li>Experienced Drivers</li>

<li>Clean & Sanitized Vehicles</li>

<li>Family Packages</li>

<li>Temple Tours</li>

<li>Outstation Travel</li>

</ul>

</div>

<div class="card">

<h2>⭐ Why Choose Us?</h2>

<ul>

<li>Affordable Pricing</li>

<li>Trusted Taxi Service</li>

<li>24×7 Customer Support</li>

<li>Professional Drivers</li>

<li>Doorstep Pickup</li>

<li>On-Time Service</li>

<li>Comfortable Journey</li>

</ul>

</div>

</div>

<h2 class="section-title">

Popular Destinations

</h2>

<div class="cards">

<div class="card">

<h2>📍 Most Booked Routes</h2>

<ul>

<li>Srikakulam ➜ Vizag Airport</li>

<li>Srikakulam ➜ Araku Valley</li>

<li>Srikakulam ➜ Simhachalam</li>

<li>Srikakulam ➜ Vijayawada</li>

<li>Srikakulam ➜ Tirupati</li>

<li>Srikakulam ➜ Hyderabad</li>

<li>Srikakulam ➜ Anywhere</li>

</ul>

</div>

</div>

<footer>

<h2>🚖 Sri Gunnamma Travels</h2>

<h2>📍 Srikakulam | Vizag | Andhra Pradesh</h2>

<h2>📞 Booking : 9014745090</h2>

<h2>🕒 Available 24×7</h2>

<h2>🔵 Running on EC2 Server - 2</h2>

</footer>

</body>
</html>
EOF

systemctl restart apache2
