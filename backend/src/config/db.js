import mongoose from "mongoose";
import { env } from "./env.js";

export const connectDB = async () => {
  try {
    const conn = await mongoose.connect(env.MONGODB_URI);
    console.log(`🍃 Liên kết với CSDL thành công!`);
  } catch (error) {
    console.error(`❌ Lỗi khi kết nối CSDL:`, error);
    process.exit(1);
  }
};
