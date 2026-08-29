import mongoose from "mongoose";
import dns from "dns";
import { env } from "./env.js";

// Thiết lập DNS Server của Google để tránh lỗi DNS SRV từ nhà mạng (Viettel/FPT/VNPT/Router gia đình)
try {
  dns.setServers(["8.8.8.8", "8.8.4.4"]);
} catch (e) {
  console.warn("Không thể set custom DNS servers:", e.message);
}

export const connectDB = async () => {
  try {
    const conn = await mongoose.connect(env.MONGODB_URI);
    console.log(`🍃 Liên kết với CSDL thành công!`);
  } catch (error) {
    console.error(`❌ Lỗi khi kết nối CSDL:`, error);
    process.exit(1);
  }
};

