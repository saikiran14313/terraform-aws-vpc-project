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
<title>Sri Gunnamma Travels - EC2 Server 1</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial,Helvetica,sans-serif;
}

body{
background:#f5f5f5;
}

header{
background:#198754;
color:white;
padding:25px;
text-align:center;
font-size:42px;
font-weight:bold;
}

.hero{
background:linear-gradient(135deg,#198754,#28a745);
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
background:#ffc107;
color:black;
}

.whatsapp{
background:#25D366;
color:white;
}

.server{
background:#d4edda;
padding:15px;
text-align:center;
font-size:28px;
font-weight:bold;
color:#155724;
}

.section-title{
text-align:center;
margin:40px;
font-size:36px;
color:#198754;
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
color:#198754;
margin-bottom:20px;
}

.card ul{
padding-left:20px;
line-height:35px;
font-size:20px;
}

footer{
background:#222;
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

<h1>24×7 Taxi Services</h1>

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
🟢 Welcome to EC2 Server - 1
</div>

<h2 class="section-title">
Our Services
</h2>

<div class="cards">

<div class="card">

<h2>🚖 Taxi Services</h2>

<ul>
<li>Srikakulam → Vizag</li>
<li>Vizag → Srikakulam</li>
<li>Vizag Airport Pickup</li>
<li>Airport Drop Service</li>
<li>Railway Station Pickup</li>
<li>Local City Rides</li>
<li>Outstation Trips</li>
</ul>

</div>

<div class="card">

<h2>🚘 Our Fleet</h2>

<ul>
<li>5 Seater AC Cab</li>
<li>7 Seater Ertiga</li>
<li>Professional Drivers</li>
<li>Clean Vehicles</li>
<li>Family Trips</li>
<li>Corporate Travel</li>
<li>Tour Packages</li>
</ul>

</div>

<div class="card">

<h2>⭐ Why Choose Us?</h2>

<ul>
<li>24×7 Available</li>
<li>Affordable Pricing</li>
<li>Safe Journey</li>
<li>On-Time Pickup</li>
<li>Friendly Drivers</li>
<li>Best Customer Support</li>
<li>Trusted Taxi Service</li>
</ul>

</div>

</div>

<h2 class="section-title">
Popular Routes
</h2>

<div class="cards">

<div class="card">

<h2>📍 Frequently Booked</h2>

<ul>
<li>Srikakulam ➜ Vizag Airport</li>
<li>Srikakulam ➜ Visakhapatnam</li>
<li>Srikakulam ➜ Arasavalli</li>
<li>Srikakulam ➜ Srikurmam</li>
<li>Srikakulam ➜ Simhachalam</li>
<li>Srikakulam ➜ Vijayawada</li>
<li>Srikakulam ➜ Hyderabad</li>
</ul>

</div>

</div>

<footer>

<h2>🚖 Sri Gunnamma Travels</h2>

<h2>📍 Srikakulam | Vizag | Andhra Pradesh</h2>

<h2>📞 Booking Number : 9014745090</h2>

<h2>🕒 Available 24×7</h2>

<h2>🟢 Running on EC2 Server - 1</h2>

</footer>

</body>
</html>
EOF

systemctl restart apache2
