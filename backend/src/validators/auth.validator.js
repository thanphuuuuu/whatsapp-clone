import { z } from 'zod';

export const registerSchema = z.object({
  fullName: z.string().min(1, 'Họ tên là bắt buộc').trim(),
  email: z.string().email('Email không hợp lệ').toLowerCase().trim(),
  username: z
    .string()
    .min(3, 'Username tối thiểu 3 ký tự')
    .max(30, 'Username tối đa 30 ký tự')
    .regex(/^[a-zA-Z0-9_]+$/, 'Username chỉ được chứa chữ cái, số và dấu gạch dưới')
    .toLowerCase()
    .trim(),
  password: z.string().min(6, 'Mật khẩu tối thiểu 6 ký tự'),
});

export const loginSchema = z.object({
  username: z.string().min(1, 'Username là bắt buộc').toLowerCase().trim(),
  password: z.string().min(1, 'Mật khẩu là bắt buộc'),
});
