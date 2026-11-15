---
name: recruiter-review
description: Read the CV in this repo the way a critical recruiter would and report what gets it rejected, doubted or questioned. Use when the user asks to review, critique, roast or stress-test the CV, asks "would this get me an interview", or wants it checked against a specific job posting or role.
argument-hint: "[target role, seniority, or job posting text/URL]"
---

# Recruiter review

Review the CV as a recruiter who has 200 applications for one opening and is looking for a reason to say no. The owner wants the objections now, while they can still fix them, so a polite review is a useless one.

Target: `$ARGUMENTS`

If no target is given, infer the role and seniority from the tagline and the most recent job title, assume the Dutch tech market, and state that assumption in the first line of the review. If a job posting is given (text or URL), review against that posting specifically.

## 1. Read what the recruiter reads

1. Read `cv.tex`. It is the source of truth. The tracked `cv.pdf` can be behind the source, so do not review it.
2. Build a fresh PDF outside the repo and read it, because a recruiter sees the page and not the LaTeX:

   ```sh
   mkdir -p "$TMPDIR/cv-build"
   xelatex -interaction=nonstopmode -halt-on-error -output-directory="$TMPDIR/cv-build" cv.tex
   ```

   Then read `$TMPDIR/cv-build/cv.pdf`. Never run `make` and never write `cv.pdf` in the repo. If the build fails or `xelatex` is missing, continue from `cv.tex` alone and say that layout was not checked.
3. Read earlier reviews in `archive/`. Use them to see which objections were already raised, which were fixed, and which open questions are still unanswered. Do not repeat a fixed point. Do call out a point that was raised before and is still there.

## 2. Two passes

**Pass 1: the ten-second skim.** Look at the rendered page as someone who gives it ten seconds: name, tagline, current title and employer, the first bullet or two, and whatever the eye lands on. Write down what this reader now believes about the candidate, in one or two sentences. Then decide if that impression matches the target role. Most CVs are rejected here, so this pass carries the verdict.

**Pass 2: the suspicious read.** Go through every line and ask the questions below. Each finding must quote the exact text it is about.

- **Proof.** Is the claim measurable or checkable? "Cost savings", "improved", "helped" without a number, scale or outcome is a claim the recruiter discounts to zero.
- **Ownership.** Does the line say what the candidate did, or what the team did? Look for verbs that hide the role (supported, contributed, was involved in).
- **Skills against evidence.** For each item in the skills list, find where the experience or projects prove it. List the items with no proof. A recruiter reads those as padding, and an interviewer picks exactly those to probe.
- **Seniority signal.** Does the evidence support the level of the target role? Look for scope, decisions, trade-offs, mentoring, on-call or ownership. Say which level the CV actually proves.
- **Timeline.** Gaps, overlaps, short stints, unfinished education, dates that do not add up. State the question each one triggers.
- **Jargon.** Internal product names, company-specific abbreviations and local terms that an outside reader cannot decode.
- **Profile.** Does the opening paragraph say something only this candidate could say, or is it filler? Does it help or hurt the first impression?
- **Relevance.** Lines that spend space on something the target role does not care about. Also the reverse: the strongest material buried low on the page.
- **Care.** Typos, mixed tenses, inconsistent punctuation, capitalisation, spacing, broken formatting. One or two cost little; a pattern reads as carelessness.
- **Layout.** Page count, density, whether the important parts are where the eye goes, anything that breaks in the PDF.
- **Posting match** (only with a job posting). Each hard requirement: proven, merely listed, or missing. Note keywords from the posting that the CV could truthfully carry but does not.

## 3. Report

Write the review in chat, in this order. Be direct and specific. No compliment sandwich, no softening.

1. **Verdict.** One of *reject*, *maybe pile* or *invite*, for the stated target, plus the ten-second impression that led to it.
2. **Findings**, most damaging first. For each one:
   - the quoted text with its location (`cv.tex:LINE`),
   - what the recruiter concludes from it,
   - a concrete fix: a rewritten line where the facts are already on the page, or the specific fact that is missing.

   Rank by how much the finding moves the verdict, not by how easy it is to fix. Keep the small care issues together in one finding at the end.
3. **Questions this CV invites.** The interview or phone-screen questions a recruiter would ask because of what is on the page, each with the line that triggers it.
4. **Needs your input.** Facts only the owner has: numbers, scale, outcomes, reasons. Ask for them precisely ("monthly cost before and after the Valkey migration"), so the owner can answer in one line.
5. **Keep.** The few things that work and should survive the next edit, each with the reason. Keep this short and do not pad it to balance the criticism.

## Rules

- **Never invent facts.** Do not make up numbers, outcomes, dates or technologies to make a rewrite sound better. Where a rewrite needs a fact you do not have, put a clear placeholder such as `[X%]` and list it under "Needs your input".
- **Review only.** Do not edit `cv.tex` unless the user asks for the fixes to be applied. When they do ask, edit only the LaTeX source and leave `cv.pdf` alone.
- **Judge for the target market.** Read the CV with the conventions of the market and level it is aimed at, and say so when a line is fine at home but a problem abroad, or the other way round.
- **Stay in character for the judgement, not the tone.** The assessment is the recruiter's; the write-up is plain and useful to the owner. No sarcasm.
- Save the review to `archive/` only when the user asks, as `archive/YYYY-MM-DD_recruiter_review.md`.
