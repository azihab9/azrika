<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kartu Ucapan Spesial</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #ff9a9e 0%, #fecfef 99%, #fecfef 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
            position: relative;
        }

        /* Container Kartu */
        .card {
            background: rgba(255, 255, 255, 0.9);
            padding: 40px 30px;
            border-radius: 20px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.15);
            text-align: center;
            max-width: 450px;
            width: 90%;
            backdrop-filter: blur(5px);
            border: 1px solid rgba(255, 255, 255, 0.3);
            z-index: 10;
            animation: fadeIn 1.2s ease-in-out;
        }

        h1 {
            color: #d63384;
            font-size: 2.2rem;
            margin-bottom: 15px;
        }

        p {
            color: #555;
            font-size: 1.1rem;
            line-height: 1.6;
            margin-bottom: 25px;
        }

        /* Tombol Interaktif */
        .btn {
            background: linear-gradient(45deg, #ff4b2b, #ff416c);
            color: white;
            border: none;
            padding: 12px 28px;
            font-size: 1rem;
            font-weight: bold;
            border-radius: 50px;
            cursor: pointer;
            box-shadow: 0 5px 15px rgba(255, 65, 108, 0.4);
            transition: all 0.3s ease;
        }

        .btn:hover {
            transform: translateY(-3px) scale(1.05);
            box-shadow: 0 8px 20px rgba(255, 65, 108, 0.6);
        }

        /* Pesan Tersembunyi */
        .hidden-message {
            display: none;
            margin-top: 20px;
            padding-top: 20px;
            border-top: 2px dashed #ffb6c1;
            animation: slideUp 0.8s ease-in-out forwards;
        }

        .hidden-message p {
            color: #d63384;
            font-weight: 600;
        }

        /* Animasi Heart Floating */
        .heart {
            position: absolute;
            color: #ff416c;
            font-size: 20px;
            user-select: none;
            pointer-events: none;
            animation: floatUp 4s linear infinite;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: scale(0.9); }
            to { opacity: 1; transform: scale(1); }
        }

        @keyframes slideUp {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes floatUp {
            0% {
                transform: translateY(100vh) rotate(0deg);
                opacity: 1;
            }
            100% {
                transform: translateY(-10vh) rotate(360deg);
                opacity: 0;
            }
        }
    </style>
</head>
<body>

    <div class="card">
        <h1>Selamat Spesial! ✨</h1>
        <p>Semoga harimu menyenangkan, selalu diberikan kebahagiaan, kesehatan, dan semua impianmu tercapai!</p>
        
        <button class="btn" onclick="tampilkanPesan()">Tekan di Sini ❤️</button>

        <div id="pesan" class="hidden-message">
            <p>Terima kasih sudah menjadi sosok yang luar biasa. Tetap tersenyum ya! 😊🎉</p>
        </div>
    </div>

    <script>
        // Fungsi untuk menampilkan pesan rahasia
        function tampilkanPesan() {
            const pesan = document.getElementById("pesan");
            if (pesan.style.display === "block") {
                pesan.style.display = "none";
            } else {
                pesan.style.display = "block";
            }
        }

        // Efek membuat elemen hati melayang otomatis
        function createHeart() {
            const heart = document.createElement("div");
            heart.classList.add("heart");
            heart.innerHTML = "❤️";
            heart.style.left = Math.random() * 100 + "vw";
            heart.style.animationDuration = Math.random() * 2 + 3 + "s";
            heart.style.fontSize = Math.random() * 15 + 15 + "px";
            
            document.body.appendChild(heart);

            setTimeout(() => {
                heart.remove();
            }, 5000);
        }

        setInterval(createHeart, 300);
    </script>
</body>
</html>
