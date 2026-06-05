#import "@preview/basic-resume:0.2.9": *

// Toggle bionic reading (set to false to disable)
#let use-bionic = true

// Helper function for bionic reading (bolds first letters of each word)
#let bionic(body) = {
  if not use-bionic {
    body
  } else {
    show regex("\b[a-zA-Z]+(?:[-'][a-zA-Z]+)*\b"): it => {
      let word = it.text
      let len = word.len()
      if len <= 3 {
        word
      } else {
        let bold-count = if len <= 5 {
          2
        } else if len <= 8 {
          3
        } else if len <= 12 {
          4
        } else {
          5
        }
        [#text(weight: 600)[#word.slice(0, bold-count)]#word.slice(bold-count)]
      }
    } 
    body
  }
}

// Put your personal information here, replacing mine
#let name = "Alfie Atkinson"
#let location = "Lincoln, UK"
#let email = "career@alfieatkinson.dev"
#let github = "github.com/alfieatkinson"
#let linkedin = "linkedin.com/in/alfieatkinson"
#let phone = "+44 07902 373715"
#let personal-site = "alfieatkinson.dev"

#show: resume.with(
  author: name,
  // All the lines below are optional. 
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  // location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  // phone: phone,
  personal-site: personal-site,
  accent-color: "#663399",
  font: "Atkinson Hyperlegible Next",
  paper: "a4",
  author-font-size: 28pt,
  font-size: 10pt,
  author-position: center,
  personal-info-position: center,
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "")
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/

== Summary

#bionic[UX/UI engineer and front-end developer designing and building accessible, scalable digital products. Working across information architecture, user flows, wireframes, prototypes, design systems, and front-end implementation, with a particular focus on mobile-first design, accessibility, neuro-inclusive design, and interfaces that feel predictable.]

/*
#bionic[UX/UI engineer and front-end developer designing accessible, scalable digital products across information architecture, mobile-first user journeys, prototyping, design systems, and React-based implementation. Strong focus on WCAG accessibility, neuro-inclusive design, contextual navigation, and predictable user experiences.]
*/

== Work Experience

#work(
  title: "UX/UI Engineer",
  location: "Lincoln, UK",
  company: "Students' Union Management System (SUMS)",
  dates: dates-helper(start-date: "Mar 2026", end-date: "Present"),
)
- #bionic[Redesigned the Lincoln Students' Union website as a mobile-first experience, restructuring 60+ pages from a 3-level mega-menu into 5 task-led navigation areas, each with 5–6 children at a 2-level navigation depth.]
- #bionic[Designed a contextual site-wide navigation model using reusable feature cards, quick links, and in-page signposting to help users move between related services from any point in the site.]
- #bionic[Created end-to-end user flows for high-traffic journeys, reducing friction across joining communities, finding support, attending events, submitting suggestions, contacting representatives, and accessing account services.]
- #bionic[Produced mobile-first wireframes and an interactive high-fidelity Figma prototype to validate navigation structure, menu behaviour, page hierarchy, reusable content patterns, and cross-device journeys before development.]
- #bionic[Designed UX and UI for an app integration with a national membership organisation serving 7m+ members, defining cross-system flows, interface patterns, landing pages, and fallback states.]
- #bionic[Designed a multi-level email analytics dashboard covering campaign, email, and link-level performance, helping surface engagement trends, device breakdowns, click behaviour, and funnel drop-offs.]
- #bionic[Conducted UX and accessibility audits across client sites and internal systems, resolving WCAG 2.1 issues across semantic structure, keyboard support, screen reader usability, and cognitive accessibility.]

#work(
  title: "Front-End Web Developer",
  location: "Lincoln, UK",
  company: "Students' Union Management System (SUMS)",
  dates: dates-helper(start-date: "July 2025", end-date: "Present"),
)
- #bionic[Led front-end development for the #link("http://engineshed.co.uk")[Engine Shed] rebuild, improving a commercial platform with 30k monthly users and reducing clicks to purchase from 8–11 to 3–5 across mapped user journeys.]
- #bionic[Rebuilt #link("https://northamptonunion.com/")[Northampton Students' Union's] website from a legacy ExpressionEngine front end to a component-based system powered by the Pluto API, delivering 8+ core pages and 12+ reusable components for 12k+ students.]
- #bionic[Engineered 4 Laravel API endpoints to replace legacy ExpressionEngine functionality for the SUggestions module migration, enabling pagination, richer detail views, and an estimated 80% reduction in load times.]
- #bionic[Delivered the #link("https://theswanlincoln.co.uk/guesthouse")[Swan Guesthouse's] microsite within 2 days under a strict commercial deadline, supporting accurate content launch for peak booking season and protecting revenue.]

#work(
  title: "Software Engineer (Internship)",
  location: "Lincoln, UK",
  company: "Synx Games",
  dates: dates-helper(start-date: "Feb 2025", end-date: "Jun 2025"),
)
- #bionic[Co-led development of a multiplayer web-based game prototype, building UI and core gameplay systems with TypeScript and React within an 8-week delivery window.]
- #bionic[Contributed to product planning and pitch materials for a £500k Roblox Creator Fund application, covering retention loops, monetisation strategy, and prototype delivery plan.]

/*
#work(
  title: "Software & Data Technician (Internship)",
  location: "Lincoln, UK",
  company: "B‑Hive Innovations",
  dates: dates-helper(start-date: "May 2024", end-date: "Sept 2024"),
)
- #bionic[Improved reliability and data quality in Python-based applications by diagnosing and resolving critical pipeline issues, supporting accurate downstream analytics and model training.]
*/

/*
== Projects

#project(
  name: "The Cleaning Fairies",
  //role: "Web Designer/Developer",
  //url: "alfieatkinson.dev/projects/the-cleaning-fairies",
  dates: dates-helper(start-date: "May 2026", end-date: "Present"),
)
- Built a high-performance React and Next.js application using TypeScript and hybrid SSR/CSR rendering, improving load times by 25% and SEO visibility.

#project(
  name: "OpenGalaxy",
  //role: "Full-Stack Developer",
  //url: "alfieatkinson.dev/projects/opengalaxy",
  dates: dates-helper(start-date: "Jan 2025", end-date: "May 2025"),
)
- Built a high-performance React and Next.js application using TypeScript and hybrid SSR/CSR rendering, improving load times by 25% and SEO visibility.
- Designed and implemented responsive, reusable UI components with Tailwind CSS, reducing DOM size and frontend maintenance overhead.
- Implemented automated CI/CD with GitHub Actions and Vercel, enforcing E2E testing and improving release reliability.
*/

== Education

#edu(
  institution: "University of Lincoln",
  location: "Lincoln, UK",
  dates: dates-helper(start-date: "Sept 2024", end-date: "Sept 2025"),
  degree: "Master of Science in Computer Science: Distinction-level average (86%)",
)

#edu(
  institution: "University of Lincoln",
  location: "Lincoln, UK",
  dates: dates-helper(start-date: "Sept 2021", end-date: "May 2024"),
  degree: "Bachelor of Science in Computer Science: First Class with Honours",
)

== Skills
- *Web Development:* #bionic[TypeScript, JavaScript, React, Next.js, Tailwind CSS, GSAP, semantic HTML, REST APIs]
- *UX/UI & Product Design:* #bionic[Figma, information architecture, mobile-first design, user flows, wireframing, interactive prototyping, navigation design, dashboard design, usability validation]
- *Accessibility & Design Systems:* #bionic[WCAG 2.1, accessibility audits, cognitive accessibility, keyboard navigation, screen reader testing, component libraries, reusable content patterns]
- *Backend & Tooling:* #bionic[Git, Docker, PHP, Python, Laravel, Django REST Framework, PostgreSQL, PayloadCMS]