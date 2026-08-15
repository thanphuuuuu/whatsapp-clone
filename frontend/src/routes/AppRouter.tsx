import { BrowserRouter, Routes, Route, Navigate } from 'react-router-dom';
import { AuthLayout } from '../layouts/AuthLayout';
import { AppLayout } from '../layouts/AppLayout';
import { ProtectedRoute } from './ProtectedRoute';
import { SignInPage } from '../pages/SignInPage';
import { SignUpPage } from '../pages/SignUpPage';
import { ChatAppPage } from '../pages/ChatAppPage';
import { useAuthStore } from '../store/authStore';
import { refreshApi } from '../features/auth/api';
import { connectSocket } from '../lib/socket';
import { useEffect } from 'react';

export const AppRouter = () => {
  const { isAuthenticated, setAuth, setInitializing } = useAuthStore();

  useEffect(() => {
    const restoreSession = async () => {
      try {
        const res = await refreshApi();
        const { accessToken, user } = res.data;
        if (accessToken && user) {
          setAuth(user, accessToken);
          connectSocket(accessToken);
        }
      } catch (err) {
        // Session restoration failed (no valid refresh token cookie)
      } finally {
        setInitializing(false);
      }
    };

    restoreSession();
  }, [setAuth, setInitializing]);

  return (
    <BrowserRouter>
      <Routes>
        {/* Public Auth Routes */}
        <Route element={<AuthLayout />}>
          <Route path="/login" element={<SignInPage />} />
          <Route path="/register" element={<SignUpPage />} />
        </Route>

        {/* Protected App Routes */}
        <Route element={<ProtectedRoute />}>
          <Route element={<AppLayout />}>
            <Route path="/chat" element={<ChatAppPage />} />
            <Route path="/chat/:conversationId" element={<ChatAppPage />} />
          </Route>
        </Route>

        {/* Root Redirect */}
        <Route
          path="/"
          element={
            <Navigate to={isAuthenticated ? '/chat' : '/login'} replace />
          }
        />

        {/* Catch-all Fallback */}
        <Route
          path="*"
          element={
            <Navigate to={isAuthenticated ? '/chat' : '/login'} replace />
          }
        />
      </Routes>
    </BrowserRouter>
  );
};
