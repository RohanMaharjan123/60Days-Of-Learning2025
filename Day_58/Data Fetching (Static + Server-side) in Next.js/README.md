# 📘 Day 58 of #60DaysOfLearning2025

## Topic: Data Fetching (Static + Server-side) in Next.js

Today I explored the core data fetching methods in Next.js:
- getStaticProps (SSG)
- getServerSideProps (SSR)

⸻

🔗 Resources
- [Next.js Data Fetching Docs](https://nextjs.org/docs/basic-features/data-fetching)
- [JSONPlaceholder API](https://jsonplaceholder.typicode.com/)

⸻

🚀 What I Learned

🔹 Static Generation with getStaticProps

- Runs at build time.
- Good for content that doesn’t change often.
- Data is pre-rendered and served as static HTML.
- Faster page load times and improved SEO.
- Example:

```javascript
export async function getStaticProps() {
  const res = await fetch('https://jsonplaceholder.typicode.com/todos/1');
  const data = await res.json();
  return {
    props: {
      data,
    },
  };
}
```

```javascript
// pages/posts.js
export async function getStaticProps() {
  const res = await fetch('https://jsonplaceholder.typicode.com/posts?_limit=5');
  const posts = await res.json();

  return {
    props: { posts },
  };
}

export default function Posts({ posts }) {
  return (
    <div>
      <h1>Static Posts</h1>
      {posts.map(post => (
        <div key={post.id}>
          <h4>{post.title}</h4>
        </div>
      ))}
    </div>
  );
}
```

Server-side Rendering with getServerSideProps

- Runs on every request.
- Great for frequently updated data (e.g. dashboard, auth pages).
- Data is fetched on the server and sent to the client.
- Example:

```javascript
export async function getServerSideProps() {
  const res = await fetch('https://jsonplaceholder.typicode.com/todos/1');
  const data = await res.json();
  return {
    props: {
      data,
    },
  };
}
```

```javascript
// pages/server-posts.js
export async function getServerSideProps() {
  const res = await fetch('https://jsonplaceholder.typicode.com/posts?_limit=3');
  const posts = await res.json();

  return {
    props: { posts },
  };
}

export default function ServerPosts({ posts }) {
  return (
    <div>
      <h1>Server-side Posts</h1>
      {posts.map(post => (
        <div key={post.id}>
          <h4>{post.title}</h4>
        </div>
      ))}
    </div>
  );
}
```

`60DaysOfLearning` `LearningWithLeapfrog` `Day58` `Next.js – Data Fetching` `Next.js` `React` `WebFrameworks`
