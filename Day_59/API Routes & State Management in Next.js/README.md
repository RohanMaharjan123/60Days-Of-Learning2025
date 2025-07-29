# 📘 Day 59 of #60DaysOfLearning2025

🧠 Topic: API Routes & State Management in Next.js

Today I worked on:

- Creating custom API routes in Next.js.
- Managing local and global state with useState and useContext.

⸻

🔗 Resources

- [API Routes in Next.js](https://nextjs.org/docs/api-routes/introduction)
- [State Management Docs](https://reactjs.org/docs/state-and-lifecycle.html)

⸻

🔧 API Routes (Backend inside Next.js)

You can create serverless functions inside /pages/api

Example: Basic API Route

```javascript
// pages/api/hello.js

export default function handler(req, res) {
  res.status(200).json({ message: 'Hello from API Route!' });
}
```

Access this at: <http://localhost:3000/api/hello>

State Management

Local State – useState

```javascript
import { useState } from 'react';

export default function Counter() {
  const [count, setCount] = useState(0);
  
  return (
    <div>
      <h3>Count: {count}</h3>
      <button onClick={() => setCount(count + 1)}>Increment</button>
    </div>
  );
}
```

Global State – useContext

```javascript
// context/ThemeContext.js
import { createContext, useState, useContext } from 'react';

const ThemeContext = createContext();

export const ThemeProvider = ({ children }) => {
  const [theme, setTheme] = useState('light');
  return (
    <ThemeContext.Provider value={{ theme, setTheme }}>
      {children}
    </ThemeContext.Provider>
  );
};

export const useTheme = () => useContext(ThemeContext);
```

```javascript
// pages/_app.js
import { ThemeProvider } from '../context/ThemeContext';

export default function App({ Component, pageProps }) {
  return (
    <ThemeProvider>
      <Component {...pageProps} />
    </ThemeProvider>
  );
}
```

```javascript
// pages/index.js
import { useTheme } from '../context/ThemeContext';

export default function Home() {
  const { theme, setTheme } = useTheme();

  return (
    <div>
      <h1>Current Theme: {theme}</h1>
      <button onClick={() => setTheme(theme === 'light' ? 'dark' : 'light')}>
        Toggle Theme
      </button>
    </div>
  );
}
```

`60DaysOfLearning` `LearningWithLeapfrog` `Day59` `Next.js – API Routes & State Management` `Next.js` `React` `WebFrameworks`
