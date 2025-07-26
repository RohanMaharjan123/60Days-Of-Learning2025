Day 56 of #60DaysOfLearning2025

🧠 Topic: Next.js – Fundamentals & Setup

Today, I explored the fundamentals of Next.js, learned how it differs from traditional React apps, and set up my first Next.js project from scratch.

⸻

🔗 Resources

- 📘 Next.js Documentation: <https://nextjs.org/docs>
- 📦 create-next-app starter: <https://nextjs.org/docs/pages/building-your-application/setting-up>

⸻

🧠 What I Learned

What is Next.js?
• A powerful React framework for server-side rendering (SSR), static generation, and fullstack features.
• Comes with routing, API routes, and image optimization out of the box.

Key Benefits
• Built-in file-based routing
• Pre-rendering (SSG + SSR)
• Optimized performance
• API routes support (serverless backend)
• Built-in CSS/SCSS support

Setup Steps:

```bash
npx create-next-app@latest my-next-app
cd my-next-app
```

Visited: <http://localhost:3000> — Next.js welcome page appeared!

```bash
my-next-app/
├── pages/       → File-based routes
├── public/      → Static assets
├── styles/      → Global & module CSS
├── app/ (opt)   → App Router (Next 13+)
└── next.config.js → Config
```

Experiment

Created pages/about.js:

```bash
export default function About() {
  return <h1>About Page</h1>;
}
```

📂 Visited /about — Next.js automatically routed it!

`60DaysOfLearning` `LearningWithLeapfrog` `Day56` `Next.js – Fundamentals & Setup` `Next.js` `React` `WebFrameworks`
