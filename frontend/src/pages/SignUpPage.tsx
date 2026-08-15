import { useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { useForm } from 'react-hook-form';
import { zodResolver } from '@hookform/resolvers/zod';
import { z } from 'zod';
import { Loader2 } from 'lucide-react';
import { Button } from '../components/ui/button';
import { Input } from '../components/ui/input';
import { Label } from '../components/ui/label';
import { registerApi } from '../features/auth/api';
import { toast } from 'sonner';

const registerSchema = z
  .object({
    fullName: z.string().min(1, 'Họ và tên là bắt buộc').trim(),
    email: z.string().email('Email không hợp lệ').toLowerCase().trim(),
    username: z
      .string()
      .min(3, 'Username tối thiểu 3 ký tự')
      .max(30, 'Username tối đa 30 ký tự')
      .regex(/^[a-zA-Z0-9_]+$/, 'Username chỉ chứa chữ cái, số và dấu _')
      .toLowerCase()
      .trim(),
    password: z.string().min(6, 'Mật khẩu phải có ít nhất 6 ký tự'),
    confirmPassword: z.string().min(1, 'Vui lòng xác nhận mật khẩu'),
  })
  .refine((data) => data.password === data.confirmPassword, {
    message: 'Mật khẩu xác nhận không khớp',
    path: ['confirmPassword'],
  });

type RegisterFormValues = z.infer<typeof registerSchema>;

export const SignUpPage = () => {
  const [loading, setLoading] = useState(false);
  const navigate = useNavigate();

  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm<RegisterFormValues>({
    resolver: zodResolver(registerSchema),
  });

  const onSubmit = async (data: RegisterFormValues) => {
    setLoading(true);
    try {
      const res = await registerApi({
        fullName: data.fullName,
        email: data.email,
        username: data.username,
        password: data.password,
      });
      toast.success(res.message || 'Đăng ký tài khoản thành công!');
      navigate('/login');
    } catch (error: any) {
      const errorMsg =
        error.response?.data?.message || 'Đã xảy ra lỗi khi đăng ký';
      toast.error(errorMsg);
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="w-full max-w-md flex flex-col items-center space-y-6">
      {/* Brand Header */}
      <div className="inline-flex items-center gap-2 px-3 py-1.5 rounded-full bg-muted/80 border border-border text-xs font-medium text-muted-foreground shadow-xs">
        <div className="w-4 h-4 rounded-full bg-primary flex items-center justify-center text-primary-foreground font-bold text-[10px]">
          W
        </div>
        <span>WhatsApp Web</span>
      </div>

      {/* Form Card */}
      <div className="w-full rounded-2xl bg-card border border-border/80 p-6 sm:p-8 shadow-xl backdrop-blur-xs space-y-6">
        <div className="text-center space-y-1.5">
          <h1 className="text-2xl font-bold tracking-tight text-foreground">
            Tạo tài khoản mới
          </h1>
          <p className="text-xs sm:text-sm text-muted-foreground">
            Nhập thông tin bên dưới để tạo tài khoản ứng dụng
          </p>
        </div>

        <form onSubmit={handleSubmit(onSubmit)} className="space-y-4">
          {/* Full Name */}
          <div className="space-y-1.5">
            <Label htmlFor="fullName">Họ và tên</Label>
            <Input
              id="fullName"
              type="text"
              placeholder="Nguyễn Văn A"
              {...register('fullName')}
            />
            {errors.fullName && (
              <p className="text-xs text-destructive font-medium">
                {errors.fullName.message}
              </p>
            )}
          </div>

          {/* Email */}
          <div className="space-y-1.5">
            <Label htmlFor="email">Email</Label>
            <Input
              id="email"
              type="email"
              placeholder="m@example.com"
              {...register('email')}
            />
            {errors.email && (
              <p className="text-xs text-destructive font-medium">
                {errors.email.message}
              </p>
            )}
          </div>

          {/* Username */}
          <div className="space-y-1.5">
            <Label htmlFor="username">Tên tài khoản (Username)</Label>
            <Input
              id="username"
              type="text"
              placeholder="johndoe"
              {...register('username')}
            />
            {errors.username && (
              <p className="text-xs text-destructive font-medium">
                {errors.username.message}
              </p>
            )}
          </div>

          {/* Passwords Grid */}
          <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
            <div className="space-y-1.5">
              <Label htmlFor="password">Mật khẩu</Label>
              <Input
                id="password"
                type="password"
                placeholder="••••••••"
                {...register('password')}
              />
            </div>
            <div className="space-y-1.5">
              <Label htmlFor="confirmPassword">Xác nhận mật khẩu</Label>
              <Input
                id="confirmPassword"
                type="password"
                placeholder="••••••••"
                {...register('confirmPassword')}
              />
            </div>
          </div>

          {/* Validation errors for password / confirmPassword */}
          {errors.password && (
            <p className="text-xs text-destructive font-medium">
              {errors.password.message}
            </p>
          )}
          {!errors.password && errors.confirmPassword && (
            <p className="text-xs text-destructive font-medium">
              {errors.confirmPassword.message}
            </p>
          )}

          <p className="text-[11px] text-muted-foreground">
            Mật khẩu phải chứa ít nhất 6 ký tự.
          </p>

          {/* Submit Button */}
          <Button
            type="submit"
            className="w-full h-10 font-medium transition-all"
            disabled={loading}
          >
            {loading ? (
              <>
                <Loader2 className="w-4 h-4 mr-2 animate-spin" />
                Đang tạo tài khoản...
              </>
            ) : (
              'Tạo tài khoản'
            )}
          </Button>
        </form>

        {/* Footer Link */}
        <div className="text-center text-xs text-muted-foreground">
          Đã có tài khoản?{' '}
          <Link
            to="/login"
            className="font-semibold text-primary hover:underline underline-offset-4"
          >
            Đăng nhập
          </Link>
        </div>
      </div>
    </div>
  );
};
