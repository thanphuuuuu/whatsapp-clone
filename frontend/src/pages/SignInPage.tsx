import { useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { useForm } from 'react-hook-form';
import { zodResolver } from '@hookform/resolvers/zod';
import { z } from 'zod';
import { Loader2 } from 'lucide-react';
import { Button } from '../components/ui/button';
import { Input } from '../components/ui/input';
import { Label } from '../components/ui/label';
import { useAuthStore } from '../store/authStore';
import { loginApi } from '../features/auth/api';
import { connectSocket } from '../lib/socket';
import { toast } from 'sonner';

const loginSchema = z.object({
  username: z.string().min(1, 'Username là bắt buộc').toLowerCase().trim(),
  password: z.string().min(1, 'Mật khẩu là bắt buộc'),
});

type LoginFormValues = z.infer<typeof loginSchema>;

export const SignInPage = () => {
  const [loading, setLoading] = useState(false);
  const { setAuth } = useAuthStore();
  const navigate = useNavigate();

  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm<LoginFormValues>({
    resolver: zodResolver(loginSchema),
  });

  const onSubmit = async (data: LoginFormValues) => {
    setLoading(true);
    try {
      const res = await loginApi(data);
      const { user, accessToken } = res.data;

      if (accessToken && user) {
        setAuth(user, accessToken);
        connectSocket(accessToken);
        toast.success(res.message || 'Đăng nhập thành công!');
        navigate('/chat');
      }
    } catch (error: any) {
      const errorMsg =
        error.response?.data?.message || 'Đã xảy ra lỗi khi đăng nhập';
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
            Đăng nhập tài khoản
          </h1>
          <p className="text-xs sm:text-sm text-muted-foreground">
            Nhập thông tin đăng nhập của bạn để tiếp tục
          </p>
        </div>

        <form onSubmit={handleSubmit(onSubmit)} className="space-y-4">
          {/* Username */}
          <div className="space-y-1.5">
            <Label htmlFor="username">Tên tài khoản (Username)</Label>
            <Input
              id="username"
              type="text"
              placeholder="nhập username..."
              {...register('username')}
            />
            {errors.username && (
              <p className="text-xs text-destructive font-medium">
                {errors.username.message}
              </p>
            )}
          </div>

          {/* Password */}
          <div className="space-y-1.5">
            <Label htmlFor="password">Mật khẩu</Label>
            <Input
              id="password"
              type="password"
              placeholder="••••••••"
              {...register('password')}
            />
            {errors.password && (
              <p className="text-xs text-destructive font-medium">
                {errors.password.message}
              </p>
            )}
          </div>

          {/* Submit Button */}
          <Button
            type="submit"
            className="w-full h-10 font-medium transition-all"
            disabled={loading}
          >
            {loading ? (
              <>
                <Loader2 className="w-4 h-4 mr-2 animate-spin" />
                Đang xử lý...
              </>
            ) : (
              'Đăng nhập'
            )}
          </Button>
        </form>

        {/* Footer Link */}
        <div className="text-center text-xs text-muted-foreground">
          Chưa có tài khoản?{' '}
          <Link
            to="/register"
            className="font-semibold text-primary hover:underline underline-offset-4"
          >
            Đăng ký ngay
          </Link>
        </div>
      </div>
    </div>
  );
};
