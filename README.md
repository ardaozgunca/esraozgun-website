# esraozgun.ca — Static Website

A hand-crafted HTML/CSS website for Esra Gomceli Ozgun, botanical artist and instructor based in Ottawa, ON, Canada.

## Pages

| File | Page |
|------|------|
| `index.html` | Home |
| `about.html` | About Me |
| `works.html` | Botanical Art (gallery overview) |
| `logbook.html` | Logbook gallery |
| `draw.html` | Draw gallery |
| `paint.html` | Paint gallery |
| `teaching.html` | Teaching (courses + testimonials) |
| `blog.html` | Blog |
| `contact.html` | Contact |
| `404.html` | Not Found |

## Deploying to Cloudflare Pages

1. Push this `site/` folder to a GitHub or GitLab repository.
2. In Cloudflare dashboard → **Pages** → **Create a project**.
3. Connect your repo.
4. Set **Build output directory** to `/` (root of the repo, since all files are at the top level).
5. Deploy — Cloudflare will detect `_redirects` automatically.

## Setting up the Contact Form (Formspree)

The contact form uses [Formspree](https://formspree.io) — no backend required.

1. Go to [formspree.io](https://formspree.io) and create a free account.
2. Create a new form and copy the form ID (e.g. `xyzabcde`).
3. In `contact.html`, replace `YOUR_FORMSPREE_ID` with your actual form ID:
   ```html
   action="https://formspree.io/f/xyzabcde"
   ```
4. Remove the `novalidate` attribute and the inline JS submit handler once Formspree is wired up.

## Custom Domain

In Cloudflare Pages → your project → **Custom domains** → add `esraozgun.ca`.

## Assets

All images are in the `images/` folder:
- `images/about/` — Esra's portraits
- `images/arch/` — Architectural photography
- `images/works/paint/` — Watercolour paintings
- `images/works/draw/` — Botanical drawings
- `images/works/logbook/` — Nature logbook pages
- `images/teaching/` — Teaching / class images
