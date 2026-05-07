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

#bionic[I'm a front-end web developer and UX/UI designer focused on building interfaces that look beautiful, feel effortless, behave predictably, and scale cleanly over time. I care about accessibility and neuro-inclusive design as a baseline for good design. When something works well for people with different needs, it tends to work better for everyone.]

== Work Experience

#work(
  title: "Front-End Web Developer & UX Engineer",
  location: "Lincoln, UK",
  company: "Students' Union Management System (SUMS)",
  dates: dates-helper(start-date: "July 2025", end-date: "Present"),
)
- #bionic[Re-architected the information architecture for a large-scale SU website (20k+ users), consolidating 60+ navigation items into 6 task-oriented sections. Independently led the restructuring, defining navigation patterns and validating changes through stakeholder, staff, and user feedback.]
- #bionic[Led front-end development for the #link("http://engineshed.co.uk")[Engine Shed], delivering a full rebuild for a commercial platform with ~30k monthly users and reducing clicks-to-purchase from 8–11 to 3–5 across mapped user journeys.]
- #bionic[Designed UX and UI for an SU app integration with a national membership organisation (7m+ members), defining cross‑system user flows and interface patterns and iterating based on stakeholder feedback.]
- #bionic[Conducted full-site UX and accessibility audits, resolving WCAG 2.1 compliance issues and improving semantic structure through screen reader and keyboard navigation testing.]
- #bionic[Rebuilt #link("https://northamptonunion.com/")[Northampton Students' Union's] website from a legacy ExpressionEngine front-end to a component-based system powered by Pluto API, delivering 8+ core pages and 12+ reusable components for 12k+ students.]
- #bionic[Designed a multi-level email analytics dashboard (campaign, email, and link-level) in Figma, surfacing engagement trends, device breakdowns, and funnel drop-offs to support data-driven campaign optimisation.]
- #bionic[Delivered the #link("https://theswanlincoln.co.uk/guesthouse")[Swan Guesthouse's] microsite within 2 days under a strict commercial deadline, ensuring accurate content launch for peak booking season and protecting revenue]
- #bionic[Engineered 4 Laravel API endpoints to replace legacy ExpressionEngine functionality for the 'SUggestions' module migration, enabling efficient pagination to cut load times by 80% and delivering richer detail to improve UX.]

#work(
  title: "Software Engineer (Internship)",
  location: "Lincoln, UK",
  company: "Synx Games",
  dates: dates-helper(start-date: "Feb 2025", end-date: "Jun 2025"),
)
- #bionic[Co-led development of a multiplayer web-based game prototype, building UI and core gameplay systems using TypeScript and React within an 8-week delivery window.]
- #bionic[Collaborated on product planning and pitching, contributing to a £500k Roblox Creator Fund application with retention and monetisation strategy.]

#work(
  title: "Software & Data Technician (Internship)",
  location: "Lincoln, UK",
  company: "B‑Hive Innovations",
  dates: dates-helper(start-date: "May 2024", end-date: "Sept 2024"),
)
- #bionic[Improved reliability and data quality in Python-based applications by diagnosing and resolving critical pipeline issues, supporting accurate downstream analytics and model training.]

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
- Dissertation postponed for medical reasons

#edu(
  institution: "University of Lincoln",
  location: "Lincoln, UK",
  dates: dates-helper(start-date: "Sept 2021", end-date: "May 2024"),
  degree: "Bachelor of Science in Computer Science: First Class with Honours",
)

== Skills
- *Web Development:* #bionic[TypeScript, JavaScript, React, Next.js, Tailwind CSS, GSAP, Semantic HTML, REST APIs]
- *UX/UI:* #bionic[Figma, Information Architecture, User Flows, Accessibility Audits (WCAG 2.1), Usability Validation]
- *Backend & Tooling:* #bionic[Git, Docker, PayloadCMS, PHP, Python, Laravel, Django (REST), PostgreSQL]