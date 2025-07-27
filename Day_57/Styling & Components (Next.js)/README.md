# 📘 Day 57 of #60DaysOfLearning2025

🧠 Topic: Styling & Components (Next.js)

Today I focused on how to style components in Next.js projects using various approaches like global styles, CSS Modules, and component reuse.

⸻

🔗 Resources
• Styling in Next.js Docs
•Component Basics - React Docs

⸻

🧠 What I Learned

- **Styling Options in Next.js**:
  - Global CSS (via styles/globals.css)
  - CSS Modules (component-level scoped)
  - Styled JSX (built-in support)
  - External libraries: Tailwind CSS, SCSS, etc.

- **Global CSS**:
  - Import global styles in `pages/_app.js`
  - Example: `import '../styles/globals.css'`
pages/_app.js:

```javascript
import '../styles/globals.css'

function MyApp({ Component, pageProps }) {
  return <Component {...pageProps} />
}

export default MyApp
```

- **CSS Modules**:
  - File: Home.module.css
  - Import in component: `import styles from './Home.module.css'`
  - Apply styles: `className={styles.container}`

```javascript
.title {
  color: #0070f3;
  font-size: 2rem;
}
```

- **Component usage**:

```javascript
import styles from '../styles/Home.module.css'

export default function Home() {
  return <h1 className={styles.title}>Hello, Styled Next.js!</h1>
}
```

Reusable Components
Created components/Header.js:

```javascript
export default function Header({ title }) {
  return <h2>{title}</h2>;
}
```

Used it in pages/index.js:

```javascript
import Header from '../components/Header'

export default function Home() {
  return <Header title="Welcome to my site!" />;
}
```

Styled JSX Example

```javascript
export default function Highlight() {
  return (
    <div>
      <p>Highlighted Text</p>
      <style jsx>{`
        p {
          color: red;
          font-weight: bold;
        }
      `}</style>
    </div>
  );
}
```

`60DaysOfLearning` `LearningWithLeapfrog` `Day57` `Next.js – Styling & Components` `Next.js` `React` `WebFrameworks`
