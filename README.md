# Keel Planner

A personal planner in one file. It covers tasks, reminders, a Jira-style board, milestone goals, a notes journal, a weekly review and a focus timer.

## Run it

- **Locally:** open `docs/index.html` in your browser.
- **GitHub Pages:** go to the repo's Settings → Pages → Deploy from a branch, then pick `main` and `/docs`. The site goes live at `https://<username>.github.io/keel/`.
- **iPhone:** open the Pages link in Safari, tap Share, then tap **Add to Home Screen**. It then runs full-screen and works offline. Notifications need iOS 16.4 or later; turn them on in Keel's Settings.

Edit `keel.html`, then run `./build.sh` to regenerate `docs/`. Then commit and push.

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
