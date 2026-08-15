import { AppRouter } from "./routes/AppRouter";
import { Toaster } from "sonner";

function App() {
  return (
    <>
      <AppRouter />
      <Toaster richColors position="bottom-right" />
    </>
  );
}

export default App;
