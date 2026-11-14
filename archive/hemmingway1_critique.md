# CV critique — Constantijn van Hartesveldt

Review of `cv.tex` from a recruiter's perspective. 2026-11-14.

## Weaknesses a recruiter will spot

1. **Zero quantified impact.** Every Simplicate bullet is qualitative: "cost savings", "months to weeks", "multi-AZ setup". Recruiters skim for numbers — a percentage, a dollar amount, a latency figure, a blast radius in customers. Right now the strongest claims are unprovable.

2. **Mid-level ceiling.** ~4 years, first role intern→developer at an agency, and no mentoring/architecture-ownership language anywhere. The "Product" in the title is unsupported: no feature adoption, usage, or roadmap signals. Fine for solid mid-level roles; a recruiter shortlisting for senior won't see the evidence.

3. **Breadth without depth anchors.** Skills list Go, Python, Flutter, React Native, Kubernetes, Ansible — but the experience section proves none of them (Go/Python appear only in side projects, Kubernetes only in the homelab, Flutter/Native nowhere). Recruiters either discount unproven items or assume padding.

4. **Grammar/tense sloppiness.** Garbled PDF bullet, "Migrate" vs "Migrated", lowercase "react", missing space in `exercises(RDS, S3)`, duplicated profile sentence, duplicated Hike bullet. Small, but a first scan notices carelessness.

5. **Unexplained jargon.** OpenKVK, Maistro, BHV — anyone outside the office loses the thread.

6. **Team section is thin.** "Host sprint review" and "lead BHV" (first-aid response) are the weakest two lines on the CV; BHV reads as noise for a technical role.

7. **Education is the screening risk.** HBO-ICT, no bachelor — normal in NL for mid-level, a friction point abroad or for senior/scale roles. Also: Aug 2023–Feb 2024 is only six months for a three-year HBO. Expect the question; be ready with the answer (part-time? minor?).

8. **"GuardDuty alerting via Amazon Q"** reads as a one-off novelty, not ownership.

Genuine strengths worth keeping: the AWS/Terraform narrative, homelab-as-code proving real infra depth, reverse-engineering proving curiosity, no career gaps, HBO while employed, volunteer leadership.

## Fixes already applied to cv.tex

- Removed duplicate profile sentence ("engineer with a strong focus on infrastructure." was redundant).
- Rewrote the broken PDF bullet — dropped ": implement visibility" as edit debris. If that meant "added monitoring/visibility for it", restore it properly.
- `react` → `React`, `exercises(RDS, S3)` → `exercises (RDS, S3)`, `for:` → `for cost savings, performance and multi-AZ resilience`.
- Tenses: "Migrate OpenKVK" → "Migrated", "Add tools" → "Added", OpenKVK explained as "(Dutch company register)".
- Deleted the Hike bullet "Developing existing and new sites for customers" — pure duplicate of the first bullet.

## Open questions / needs owner input

- **Numbers for Simplicate:** % traffic shifted on the PDF migration, ElastiCache→Valkey cost delta, DR exercise outcomes (RTO/RPO?), count of MCP tools added, Simplicate scale (customers/ARR) if shareable.
- **Team section:** drop BHV entirely, or rename to "first-aid coordinator"?
- **Skills list:** keep Flutter/React Native/Kubernetes/Ansible as honest breadth, or trim to what can be defended in an interview?
- **Profile closer** "I care about shipping features customers actually use" is filler — replace with something concrete or cut.
- **Education:** expand "HBO-ICT" to "HBO-ICT (Information Technology)", and should the six-month window carry a "(part-time)" note?
