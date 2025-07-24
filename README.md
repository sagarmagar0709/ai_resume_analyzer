
<img width="1920" height="1080" alt="Cover" src="https://github.com/user-attachments/assets/7efcb419-15b1-42f0-9a2f-2e07c978760a" />

# 🧠 Resumind – AI-Powered Resume Analyzer

**Resumind** is a modern, AI-powered web app built with React 19, React Router v7, and Puter.js that helps users upload their resumes, get smart ATS-based evaluations, and receive tailored feedback—all in a clean, responsive, and reusable UI.

🔗 **Live Demo**: [https://resumind-livid.vercel.app/](https://resumind-livid.vercel.app/)

---

## ✨ Features

- 🔐 **Browser-based Auth** — Seamless login/signup via Puter.js, no backend required.
- 📄 **Upload & Store Resumes** — Users can upload and securely store their resumes.
- 🤖 **AI Resume Matching** — Instantly score resumes against job listings using AI.
- 💬 **Custom Feedback** — Receive ATS score breakdowns with detailed improvement suggestions.
- 💡 **Modern UI/UX** — Clean layout, reusable components, and responsive design.
- ⚡ **Fast & Serverless** — Built entirely on the frontend using Puter.js + Vite.

---

## ⚙️ Tech Stack

| Tech             | Description |
|------------------|-------------|
| **React 19**       | UI library for building interactive UIs with components |
| **React Router v7** | Powerful routing with loaders, actions, and SSR support |
| **Puter.js**       | Serverless SDK with auth, storage, and AI built in |
| **Tailwind CSS**   | Utility-first CSS framework for responsive design |
| **shadcn/ui**      | Modern component library for clean UI |
| **Zustand**        | Lightweight state management for React |
| **Vite**           | Lightning-fast build tool and dev server |
| **TypeScript**     | Static typing for scalable frontend development |

---

## 🧩 Project Structure

```bash
├── app/
│   ├── components/      # Reusable components (ScoreCircle, Navbar, etc.)
│   ├── routes/          # Page-level route components
│   ├── lib/             # Utilities like puter.ts, pdf2img.ts
│   ├── app.css          # Global styles
├── public/              # Static assets (icons, images, etc.)
├── constants/           # Shared constants
├── types/               # Global TypeScript types
├── react-router.config.ts
├── vite.config.ts
└── README.md
