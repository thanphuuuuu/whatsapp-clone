# 🟢 WhatsApp Clone — Web Application

Một ứng dụng trò chuyện thời gian thực (Real-time Web Messaging Application) được xây dựng dựa trên các tính năng cốt lõi của WhatsApp. Dự án áp dụng kiến trúc chuẩn RESTful API, Socket.io cho truyền tải dữ liệu thời gian thực và WebRTC cho kết nối cuộc gọi video trực tiếp.

---

## 🌟 Tính Năng Nổi Bật (Key Features)

### 🔑 1. Xác thực & Bảo mật (Authentication & Security)

- **Đăng ký / Đăng nhập**: Xác thực người dùng an toàn với mật khẩu được mã hóa (`bcryptjs`).
- **Phiên làm việc JWT**: Quản lý phiên bằng **Access Token** (ngắn hạn) và **Refresh Token** (dài hạn, lưu an toàn trong `HTTP-Only Cookie`).
- **Tự động phục hồi phiên**: Khôi phục trạng thái đăng nhập tự động mà không bắt người dùng đăng nhập lại khi F5 hoặc mở lại trình duyệt.

### 👥 2. Hồ sơ cá nhân & Bạn bè (User Profile & Friends)

- **Hồ sơ cá nhân**: Xem và cập nhật tên hiển thị, hình đại diện (avatar).
- **Tìm kiếm người dùng**: Tìm kiếm bạn bè dễ dàng qua username/tên hiển thị.
- **Quản lý lời mời kết bạn**: Gửi, hủy, chấp nhận hoặc từ chối lời mời kết bạn.
- **Trạng thái Online/Offline**: Cập nhật trạng thái bạn bè theo thời gian thực (realtime presence indicator).

### 💬 3. Trò chuyện Thời gian thực (Real-time Chat 1-1 & Group)

- **Chat 1-1**: Tự động khởi tạo hoặc tái sử dụng cuộc hội thoại cá nhân.
- **Chat Nhóm (Group Chat)**: Tạo nhóm chat từ 3 thành viên trở lên, đặt tên nhóm, ảnh đại diện nhóm và quản lý thành viên (thêm/xóa thành viên, rời nhóm, phân quyền Admin).
- **Gửi đa phương tiện**: Hỗ trợ gửi tin nhắn văn bản, hình ảnh và tài liệu/file đính kèm (`Multer` / `Cloudinary`).
- **Trạng thái "Đã xem" (Seen Status)**: Hiển thị thời gian và trạng thái đọc tin nhắn của từng người trong cuộc trò thoại.
- **Chỉ báo đang gõ (Typing Indicator)**: Hiển thị hiệu ứng bạn bè đang nhập tin nhắn.
- **Số tin chưa đọc (Unread Count)**: Hiển thị badge số tin nhắn chưa đọc cho từng cuộc hội thoại.
- **Phân trang lịch sử tin nhắn**: Cuộn lên trên để tải thêm tin nhắn cũ (Infinite scroll pagination).

### ❤️ 4. Tương tác & Thao tác tin nhắn (Message Interactions)

- **Thả cảm xúc (Reactions)**: Thả biểu cảm emoji (❤️, 👍, 😂,...) vào từng tin nhắn.
- **Chỉnh sửa tin nhắn (Edit)**: Sửa nội dung tin nhắn đã gửi kèm nhãn "Đã chỉnh sửa".
- **Thu hồi tin nhắn (Delete)**: Thu hồi tin nhắn realtime cho tất cả thành viên trong cuộc trò chuyện.

### 📹 5. Cuộc gọi Video trực tiếp (WebRTC Video Call)

- **Gọi Video 1-1**: Kết nối cuộc gọi mặt đối mặt trực tiếp Peer-to-Peer sử dụng **WebRTC** và Socket.io signaling server.
- **Bộ điều khiển cuộc gọi**: Bật/tắt micro, bật/tắt camera, nhận diện cuộc gọi đến (Incoming Call modal), xử lý trạng thái đối phương bận hoặc từ chối cuộc gọi.

---

## 🛠️ Công Nghệ Sử Dụng (Tech Stack)

### **Frontend (Web App)**

- **Core Framework**: React 19 + TypeScript + Vite.
- **State Management**: Zustand (`authStore`, `chatStore`, `friendStore`, `callStore`).
- **Routing**: React Router DOM v7 (Protected Routes & Auth Layout).
- **UI & Styling**: TailwindCSS v4, Radix UI primitives / Shadcn UI, Lucide Icons.
- **Realtime & Media**: `socket.io-client`, WebRTC (`RTCPeerConnection`), `sonner` (Toast Notifications).

### **Backend (API & Socket Server)**

- **Runtime & Framework**: Node.js (ES Modules) + Express.js.
- **Database**: MongoDB + Mongoose ODM.
- **Realtime Engine**: Socket.io Server (Routing events: Presence, Messaging, Call Signaling).
- **Authentication**: JSON Web Token (JWT), `bcryptjs`, `cookie-parser`.
- **File & Media Storage**: Multer (Local Uploads) & Cloudinary SDK.
- **Validation**: Zod schema validation.

---

## 📁 Cấu Trúc Thư Mục (Project Structure)

```text
whatsapp-clone/
├── backend/                     # Backend Node.js Express & Socket Server
│   ├── server.js                # Entry point khởi chạy HTTP & Socket Server
│   └── src/
│       ├── config/              # Kết nối DB (MongoDB) & Biến môi trường
│       ├── controllers/         # Xử lý Business Logic (Auth, User, Friend, Conversation, Upload)
│       ├── middlewares/         # Middleware Authenticate JWT, Upload, Error Handling
│       ├── models/              # Mongoose Schemas (User, Conversation, Message, FriendRequest)
│       ├── routes/              # Routes định tuyến RESTful API
│       ├── services/            # Tầng dịch vụ (Auth service, JWT helper)
│       ├── sockets/             # Xử lý các sự kiện Socket.io (Presence, Message, Call)
│       └── utils/               # ApiError, ApiResponse helpers
│
├── frontend/                    # Frontend React Web Application
│   ├── src/
│   │   ├── components/          # Reusable UI & Shared components
│   │   ├── features/            # Các module chức năng (Auth, Chat, Friends, Profile, Call)
│   │   ├── layouts/             # AppLayout (Nav Rail) & AuthLayout
│   │   ├── lib/                 # Socket connection & Axios client setup
│   │   ├── pages/               # Trang SignIn, SignUp, ChatAppPage
│   │   ├── routes/              # AppRouter & ProtectedRoute wrapper
│   │   └── store/               # Zustand Global State Management
│   ├── index.html
│   └── vite.config.ts
│
└── docs/                        # Tài liệu đặc tả dự án chi tiết (PRD, SRS, App Flow, UI/UX,...)
```

---

## 🚀 Hướng Dẫn Cài Đặt & Khởi Chạy (Getting Started)

### **Yêu cầu môi trường (Prerequisites)**

- **Node.js**: phiên bản `>= 18.0.0`
- **npm** hoặc **yarn**
- **MongoDB**: Cơ sở dữ liệu MongoDB Local hoặc [MongoDB Atlas](https://www.mongodb.com/cloud/atlas)

---

### **1. Khởi chạy Backend**

1. Chuyển vào thư mục `backend`:
   ```bash
   cd backend
   ```
2. Cài đặt các gói phụ thuộc:
   ```bash
   npm install
   ```
3. Tạo file `.env` tại thư mục `backend` và cấu hình các biến môi trường:
   ```env
   PORT=5000
   MONGO_URI=mongodb://127.0.0.1:27017/whatsapp_clone
   JWT_ACCESS_SECRET=your_access_token_secret_key_here
   JWT_REFRESH_SECRET=your_refresh_token_secret_key_here
   CLIENT_URL=http://localhost:5173
   # Thêm cấu hình Cloudinary nếu sử dụng lưu trữ đám mây
   # CLOUDINARY_CLOUD_NAME=...
   # CLOUDINARY_API_KEY=...
   # CLOUDINARY_API_SECRET=...
   ```
4. Khởi chạy server ở chế độ Development:
   ```bash
   npm run dev
   ```
   > Backend sẽ chạy tại: `http://localhost:5000`

---

### **2. Khởi chạy Frontend**

1. Mở một terminal mới và chuyển vào thư mục `frontend`:
   ```bash
   cd frontend
   ```
2. Cài đặt các gói phụ thuộc:
   ```bash
   npm install
   ```
3. Tạo file `.env` tại thư mục `frontend`:
   ```env
   VITE_API_URL=http://localhost:5000/api
   VITE_SOCKET_URL=http://localhost:5000
   ```
4. Khởi chạy ứng dụng Web ở chế độ Development:
   ```bash
   npm run dev
   ```
   > Frontend sẽ chạy tại: `http://localhost:5173`

---

## 📝 Giấy Phép (License)

Dự án này phục vụ cho mục đích học tập và nghiên cứu.
