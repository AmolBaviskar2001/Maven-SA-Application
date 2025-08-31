<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Build Your Car</title>
  <style>
    body {
      margin: 0;
      font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
      background: #f4f4f4;
      color: #222;
    }

    header {
      background: #000;
      color: #fff;
      padding: 20px;
      text-align: center;
      font-size: 24px;
      font-weight: bold;
      letter-spacing: 2px;
    }

    .main {
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 30px;
    }

    .car-display {
      width: 80%;
      max-width: 900px;
      background: white;
      border-radius: 15px;
      box-shadow: 0 6px 20px rgba(0,0,0,0.2);
      padding: 20px;
      margin-bottom: 30px;
      text-align: center;
    }

    .car-display img {
      width: 100%;
      border-radius: 10px;
      transition: 0.4s ease;
    }

    .options {
      display: flex;
      flex-wrap: wrap;
      gap: 20px;
      justify-content: center;
      width: 90%;
    }

    .option-card {
      background: white;
      padding: 20px;
      border-radius: 12px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
      flex: 1;
      min-width: 250px;
    }

    .option-card h3 {
      margin-bottom: 15px;
      border-bottom: 2px solid #eee;
      padding-bottom: 5px;
    }

    select, input[type="color"] {
      width: 100%;
      padding: 10px;
      border-radius: 8px;
      border: 1px solid #ccc;
      font-size: 14px;
    }

    footer {
      background: #000;
      color: white;
      text-align: center;
      padding: 15px;
      margin-top: 40px;
    }
  </style>
</head>
<body>

<header>🚙 Build Your Own Car</header>

<div class="main">
  <!-- Car Preview -->
  <div class="car-display">
    <img id="carImage" src="https://i.imgur.com/2Qe9s1q.png" alt="Car Preview">
    <h2 id="carTitle">Custom Car: Blue, Standard Wheels, Fabric Interior</h2>
  </div>

  <!-- Options -->
  <div class="options">
    <div class="option-card">
      <h3>🎨 Exterior Color</h3>
      <input type="color" id="colorPicker" value="#1e90ff">
    </div>

    <div class="option-card">
      <h3>🛞 Wheel Style</h3>
      <select id="wheels">
        <option value="standard">Standard</option>
        <option value="sport">Sport</option>
        <option value="alloy">Alloy</option>
      </select>
    </div>

    <div class="option-card">
      <h3>🛋 Interior</h3>
      <select id="interior">
        <option value="fabric">Fabric</option>
        <option value="leather">Leather</option>
        <option value="premium">Premium Leather</option>
      </select>
    </div>
  </div>
</div>

<footer>© 2025 Custom Motors | Design Your Dream Ride</footer>

<script>
  const colorPicker = document.getElementById("colorPicker");
  const wheelsSelect = document.getElementById("wheels");
  const interiorSelect = document.getElementById("interior");
  const carTitle = document.getElementById("carTitle");
  const carImage = document.getElementById("carImage");

  function updateCar() {
    const color = colorPicker.value;
    const wheels = wheelsSelect.value;
    const interior = interiorSelect.value;

    // Simple dynamic title update
    carTitle.textContent = `Custom Car: ${color}, ${wheels} wheels, ${interior} interior`;

    // Fake "change car image" logic
    if (wheels === "sport") {
      carImage.src = "https://i.imgur.com/LlKpq3x.png";
    } else if (wheels === "alloy") {
      carImage.src = "https://i.imgur.com/dg2HCGU.png";
    } else {
      carImage.src = "https://i.imgur.com/2Qe9s1q.png";
    }
  }

  colorPicker.addEventListener("input", updateCar);
  wheelsSelect.addEventListener("change", updateCar);
  interiorSelect.addEventListener("change", updateCar);

  updateCar(); // Initial
</script>

</body>
</html>
