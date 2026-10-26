# Keel Planner

A personal planner in one file. It covers tasks, reminders, a Jira-style board, milestone goals, a notes journal, a weekly review and a focus timer.

## Run it

- **Locally:** open `site/index.html` in your browser. No server or install is needed.
- **Free hosting:** pick one of these.
  - **Netlify Drop:** drag the `site/` folder onto https://app.netlify.com/drop.
  - **GitHub Pages:** push this folder to a GitHub repo, then go to Settings → Pages → Deploy from branch and pick `main` with `/site`.
  - **Cloudflare Pages / Vercel:** point them at the `site/` folder. There is no build command.

Edit `keel.html`, then run `./build.sh` to regenerate `site/index.html`.

## Where data is saved

- **Self-hosted or local copy:** in that browser's storage. Use Settings → Download backup now and then. Use Restore from backup to move to another browser or device.
- **claude.ai artifact copy:** privately in your claude.ai account, so it syncs across devices. The Claude features also appear there: breaking a task into steps, suggesting next steps for a goal, and coaching for your week.

## Reminders

- Pop-up reminders and sound play while the page is open. Desktop notifications also work in the self-hosted copy after you allow them in Settings.
- To get reminders while Keel is closed, use **Settings → Export reminders (.ics)** and import the file into Google, Apple or Outlook Calendar. You can also use **Add to Google Calendar** on any task.

## Quick-add syntax

`Email Sam tomorrow 4pm !high #portfolio every week`

| Token | Meaning |
|---|---|
| `today`, `tomorrow`, `fri`, `next week`, `in 3 days`, `2026-11-02` | due date |
| `4pm`, `at 9:30am`, `at 17:00` | reminder time |
| `!high`, `!low` | priority |
| `#word` | files the task under a goal whose name contains that word |
| `daily`, `every weekday`, `weekly` | repeats |
