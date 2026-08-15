import { Outlet } from 'react-router-dom';

export const AuthLayout = () => {
  return (
    <div className="min-h-screen w-full bg-background relative flex flex-col items-center justify-center p-4 sm:p-6 overflow-x-hidden selection:bg-primary selection:text-primary-foreground">
      {/* Emerald Glow Background */}
      <div className="absolute inset-0 z-0 pointer-events-none bg-emerald-glow" />

      {/* Main Content Area */}
      <div className="relative z-10 w-full flex flex-col items-center">
        <Outlet />
      </div>
    </div>
  );
};
