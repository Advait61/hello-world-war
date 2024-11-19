<%@ page import="java.util.Date, java.text.SimpleDateFormat, java.util.TimeZone" %>
<!DOCTYPE html>
<html>
<head>
    <title>Simple Card</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f4f4f9;
        }
        .card {
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 300px;
            padding: 20px;
            text-align: center;
        }
        .card h1 {
            font-size: 1.5em;
            margin-bottom: 10px;
        }
        .card p {
            font-size: 0.9em;
            margin: 10px 0;
            color: #555;
        }
        .timestamp {
            font-size: 0.8em;
            color: #888;
        }
    </style>
</head>
<body>
    <div class="card">
        <h1>Hello, World!</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel nulla vel lacus vestibulum venenatis.</p>
        <p class="timestamp">
            Current time in India: 
            <% 
                SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
                sdf.setTimeZone(TimeZone.getTimeZone("Asia/Kolkata"));
                String indianTime = sdf.format(new Date());
            %>
            <%= indianTime %>
        </p>
        <p class="timestamp">
            Your IP address: <%= request.getRemoteAddr() %>
        </p>
    </div>
</body>
</html>

