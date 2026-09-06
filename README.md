# fairycloudsi.github.io

Personal academic website for **Huiwen Wu** — Associate Researcher, Beihang University,
Hangzhou International Innovation Institute.

Live at **https://fairycloudsi.github.io/**

---

## Publishing this

This is a **user site**, not a project site. That distinction matters:

| | Repository name | `baseurl` | Served at |
|---|---|---|---|
| **This site** | `fairycloudsi.github.io` | `""` (empty) | `https://fairycloudsi.github.io/` |
| A project site | anything else | `"/repo-name"` | `https://fairycloudsi.github.io/repo-name/` |

The repository **must** be named exactly `fairycloudsi.github.io`. Any other name and the
site will not be served at the root, and the CSS will 404.

1. Create an empty repository at [github.com/new](https://github.com/new) named
   `fairycloudsi.github.io`. **Public**, and do not add a README, .gitignore or licence.

2. Push it (this directory is already a git repository on `main`):

   ```bash
   git remote add origin git@github.com:fairycloudsi/fairycloudsi.github.io.git
   git push -u origin main
   ```

3. Settings → Pages → **Deploy from a branch** → `main` / `(root)`. The first build takes
   a minute or two.

User sites often go live without any Pages setting change at all — GitHub publishes
`<username>.github.io` automatically.

---

## Editing the content

**Nothing lives in HTML.** Every piece of content is in a YAML data file:

| File | Holds |
|---|---|
| `_data/publications.yml` | All papers, newest first |
| `_data/patents.yml` | US patents |
| `_data/projects.yml` | The three highlighted projects (Home and Research) |
| `_data/cv.yml` | Experience, education, funding, talks, expertise, service |
| `_config.yml` | Name, role, affiliation, email, profile links |

### Adding a paper

Add an entry at the top of `_data/publications.yml`:

```yaml
- year: 2026
  title: "Your paper title"
  authors: "<span class=\"me\">H. Wu</span>, et al."
  venue: "NeurIPS'26"
  rank: "CCF-A"          # optional
  role: "first author"   # optional
  note: "oral"           # optional
  url: "https://..."     # optional; makes the title a link
```

Wrapping your own name in `<span class="me">` is what makes it render in bold — that is
the convention the whole file uses.

Papers group themselves under year headings automatically, newest year first. You do not
need to create the heading.

### Changing your name, role or affiliation

All in `_config.yml` under `author:`. The site title, home page heading and footer all
read from there.

---

## Three decisions you may want to revisit

1. **Name order.** The site uses **Huiwen Wu** (given name first), matching your
   publications and LinkedIn. Your CV header uses "Wu Huiwen". Change `author.name` in
   `_config.yml` if you prefer that form.

2. **Phone number omitted.** Your CV lists a mobile number; it is deliberately not on the
   site, since a public page is scraped continuously. Add it under `author:` in
   `_config.yml` and to the contact card in `index.md` if you want it there.

3. **Current affiliation.** Your CV's header line still reads "Senior Researcher, Zhejiang
   Lab", but the experience section shows you moved to Beihang in March 2026. The site uses
   **Beihang** as current. Worth fixing on the CV too.

Also: your CV summary mentions **10 authorized patents** but lists two. Only those two are
on the site — add the rest to `_data/patents.yml` when you have the numbers.

---

## Building locally (optional)

Not needed — edit and push, and GitHub Pages builds it.

```bash
gem install jekyll bundler
jekyll serve      # http://localhost:4000/
```

---

## Layout

```
_config.yml            identity, links, site settings
_data/                 all content, as YAML
_layouts/
  default.html         page shell: header, nav, footer
  page.html            content wrapper
assets/css/style.css   the entire stylesheet, light and dark
index.md               home
research.md            projects and the research statement
publications.md        papers and patents, generated from _data
cv.md                  full CV, generated from _data
```

No plugins, no theme dependency, no JavaScript. Fonts come from Google Fonts; everything
else is self-contained.
