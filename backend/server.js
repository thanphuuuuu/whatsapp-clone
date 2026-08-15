import http from "http";
import app from "./src/app.js";
import { env } from "./src/config/env.js";
import { connectDB } from "./src/config/db.js";
import { initSocket } from "./src/sockets/index.js";

const server = http.createServer(app);

// Initialize Socket.io
initSocket(server);

// Start server & connect to MongoDB
connectDB().then(() => {
  server.listen(env.PORT, () => {
    console.log(`🚀 Server bắt đầu chạy trên cổng ${env.PORT}`);
  });
});
