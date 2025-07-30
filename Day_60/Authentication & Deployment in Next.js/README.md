# 🎯 Day 60 of #60DaysOfLearning2025

🔐 Topic: Authentication & Deployment in Next.js

Today, I:
• Set up authentication using NextAuth.js
• Deployed my project to Vercel
• Finalized the app and wrapped up my 60-day challenge 🚀

⸻

🔐 Authentication with next-auth

🔹 Install & Setup

```bash
npm install next-auth
```

Create API Route

```javascript
// pages/api/auth/[...nextauth].js
import NextAuth from "next-auth";
import GitHubProvider from "next-auth/providers/github";

export default NextAuth({
  providers: [
    GitHubProvider({
      clientId: process.env.GITHUB_ID,
      clientSecret: process.env.GITHUB_SECRET,
    }),
  ],
});
```

Use .env.local to store your secrets:

```bash
# .env.local
GITHUB_ID=yourclientid
GITHUB_SECRET=yourclientsecret
NEXTAUTH_URL=http://localhost:3000
```

Using Authentication in Components

```javascript
import { useSession, signIn, signOut } from "next-auth/react";

export default function AuthButton() {
  const { data: session } = useSession();

  return session ? (
    <>
      <p>Signed in as {session.user.name}</p>
      <button onClick={() => signOut()}>Sign out</button>
    </>
  ) : (
    <button onClick={() => signIn("github")}>Sign in with GitHub</button>
  );
}
```

Deployment with Vercel

🔹 Steps:

1. Push code to GitHub
2. Go to <https://vercel.com>
3. Connect GitHub repo
4. Set environment variables in the dashboard
5. Deploy 🎉

Note : Vercel auto-detects Next.js and handles SSR/ISR/API routes out-of-the-box.

`60DaysOfLearning` `LearningWithLeapfrog` `Day60` `Next.js – Authentication & Deployment` `Next.js` `React` `WebFrameworks`
