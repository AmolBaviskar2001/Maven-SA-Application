<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Vehicle Configurator</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f0f2f5;
      margin: 0;
      padding: 0;
    }

    header {
      background: #222;
      color: white;
      padding: 20px;
      text-align: center;
      font-size: 24px;
    }

    .container {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      padding: 30px;
    }

    .config-panel {
      flex: 1;
      min-width: 300px;
      max-width: 400px;
      padding: 20px;
      background: white;
      margin: 10px;
      border-radius: 12px;
      box-shadow: 0 5px 15px rgba(0,0,0,0.1);
    }

    .config-panel h2 {
      margin-bottom: 15px;
      color: #333;
    }

    .option-group {
      margin-bottom: 20px;
    }

    .option-group label {
      display: block;
      margin-bottom: 8px;
      font-weight: bold;
    }

    select, input[type="color"] {
      width: 100%;
      padding: 10px;
      border-radius: 8px;
      border: 1px solid #ccc;
      font-size: 14px;
    }

    .preview-panel {
      flex: 1;
      min-width: 300px;
      max-width: 500px;
      padding: 20px;
      background: white;
      margin: 10px;
      border-radius: 12px;
      box-shadow: 0 5px 15px rgba(0,0,0,0.1);
      text-align: center;
    }

    .car-preview {
      width: 100%;
      height: 200px;
      background: gray;
      border-radius: 10px;
      margin-bottom: 20px;
      display: flex;
      justify-content: center;
      align-items: center;
      font-size: 20px;
      color: white;
      transition: background 0.5s;
    }

    .summary {
      font-size: 16px;
      text-align: left;
    }
  </style>
</head>
<body>

  <header>🚙 Custom Vehicle Configurator</header>

  <div class="container">
    <!-- Config Panel -->
    <div class="config-panel">
      <h2>Choose Your Options</h2>

      <div class="option-group">
        <label for="color">Car Color:</label>
        <input type="color" id="color" value="#4a90e2">
      </div>

      <div class="option-group">
        <label for="wheels">Wheel Type:</label>
        <select id="wheels">
          <option value="Standard">Standard</option>
          <option value="Sport">Sport</option>
          <option value="Alloy">Alloy</option>
        </select>
      </div>

      <div class="option-group">
        <label for="interior">Interior:</label>
        <select id="interior">
          <option value="Fabric">Fabric</option>
          <option value="Leather">Leather</option>
          <option value="Premium Leather">Premium Leather</option>
        </select>
      </div>
    </div>

    <!-- Preview Panel -->
    <div class="preview-panel">
      <h2>Live Preview</h2>
      <div class="car-preview" id="carPreview">Your Car</div>
      <div class="summary" id="summary">
        <p><b>Color:</b> Blue</p>
        <p><b>Wheels:</b> Standard</p>
        <p><b>Interior:</b> Fabric</p>
      </div>
    </div>
  </div>

  <script>
    const colorPicker = document.getElementById("color");
    const wheelsSelect = document.getElementById("wheels");
    const interiorSelect = document.getElementById("interior");
    const carPreview = document.getElementById("carPreview");
    const summary = document.getElementById("summary");

    function updatePreview() {
      const color = colorPicker.value;
      const wheels = wheelsSelect.value;
      const interior = interiorSelect.value;

      carPreview.style.background = color;

      summary.innerHTML = `
        <p><b>Color:</b> ${color}</p>
        <p><b>Wheels:</b> ${wheels}</p>
        <p><b>Interior:</b> ${interior}</p>
      `;
    }

    colorPicker.addEventListener("input", updatePreview);
    wheelsSelect.addEventListener("change", updatePreview);
    interiorSelect.addEventListener("change", updatePreview);

    updatePreview(); // initial load
  </script>

</body>
</html>
