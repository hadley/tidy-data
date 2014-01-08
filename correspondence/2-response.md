I really appreciate the thoughtful comments of all the reviewers. I've
worked hard to make the paper easier to understand and the reviewer's
comments were extremely useful. A point-by-point summary of the comments
and my rebuttal is below. Minor comments fixed without needing further
discussion are listed at the end.

Reviewer 1
==========

> Details of writing: There is opportunity for improvement and for
> strengthening the exposition at a local level – in sentences and
> phrases. This reviewer has just read Wickham's 2011 paper in the same
> journal on "Split-Apply-Combine", and the writing in that paper is
> good and can serve as a model for polishing the present paper. The
> differences between the two are in the details, and a thorough editing
> and tightening of the present manuscript would almost surely pay
> dividends. Without trying to be comprehensive, I will illustrate the
> kinds of small changes (including just fixing typos) which taken
> together would have a positive effect. (R1)

> p. 1 last full sentence: "The reorganization makes...because it
> conforms to a standard that facilitates well an initial exploration
> and analysis of the data; you don't..."

I'm not quite sure what the reviewer meant here, but I've rewritten the
paragraph for clarity.

> p. 2 line 2: Is "reformulating" an approximation for "munging"?

Yes, but I think mungling better conveys the inelegance of this
operation :)

> p. 3 bottom. Consider having a new bold subtitle as a guidepost for
> the reader: Defining tidy data:

I've completely reorganised this section and it should be much more
clear.

> p. 14 last paragraph. A difficulty is identified; does the author
> suggest a solution? Reader isn't clear where we are left as we enter
> the Case Study.

> p. 21 down 13: might be clearer if "...an efficient equivalent to
> join." – bolding or perhaps quotes.

I've removed those comments because I know no longer think that they a
true.

> This reviewer notes (in a spirit of collegiality) that the best
> writers about data analysis (from a previous generation) – Fred
> Mosteller, John Tukey, David Hoaglin, Paul Velleman, Frank Anscombe
> (as illustrations) – correctly used data as plural form (and
> occasionally datum as singular). From that perspective, "the data is
> ..." grates more than a little ... but regrettably this is a battle
> that is now lost. Sigh... :) :)

I tried changing "data is" to "data are", and found the result grating. I 
think you're right that the battle is lost.

Reviewer 2
==========

> While the topic is important and the message is clear, I found the
> tone of the paper to be too conversational. The author overuses
> contractions, ambiguous pronouns ("It's often said..."), and casually
> addresses the reader in second-person form. (R2)

I have largely kept the conversational style of the paper. I don't think it's
necessary for a scientific paper to be too formal. This work appeals
more to practicioners of data analysis than academic statisticians, so I think
it is particularly important that the writing is approachable.

> The author also switches between the use of italics, boldface, quotes,
> and the LaTeX verbatim environment constantly, which tends to be
> distracting at times. (R2) - The author uses "colvars" in italics when
> first naming the terminology, and then subsequently mentions the Pew
> dataset contains one colvar, without italics. (R2) - The author does
> not use formatting on the column names in the caption for Table 9 but
> does use \verbatim to reference column names in Table 10's caption.
> (R2)

Thanks for pointing this out. Throughout the next I now use bold face
consistently for the first definition of a new term, and verbatim for
variable names.

> The author overuses colons. In some cases, I found hyphens to be more
> appropriate, and in others, I would think semicolons might be more
> suitable.

Reviewer 3
==========

> The author is obviously intimately familiar with the tools he's using
> in this paper, and he should remember that the readers of this paper
> are not nearly as familiar with them as he is. (R3)

> Section 2: "When using tables for communication, this so-called
> "Alabama first" (Wainer 2000) ordering should be abandoned, and
> replaced with an ordering based on a meaningful variable."
>
> There doesn't seem to be any justification or explanation for this
> statement. (R3)

Removed.

> Section 3.1: Since most readers of this paper will want to apply these
> ideas using R, I think it would be a good idea to show how an R
> datasets containing the Pew and Billboard data would look, as well as
> the R code that would be used to melt the datasets. This is especially
> true for the Billboard data, because additional cleaning was
> performed. Similar comments apply to the other datasets in the paper.
> (R3)

I think including the code in the paper would make it too long, but they
are all available at the paper website at
https://github.com/hadley/tidy-data

> Section 3.5: I feel the examples in this section need to be explained
> in more detail. The referenced external links contain a large number
> of files, and it's not really clear which files are relevant to the
> discussion in this section. (R3)

I've added a brief snippet of R code to illustrate how you might tackle
this.

> Section 4.1: "Compare this to the difficulty of combining datasets
> stored in arrays; these typically require painstaking alignment before
> matrix operations can be used, and errors can be very hard to detect."
> Would anyone seriously suggest using matrices to store data which
> would be combined with other data sets? The use of an index to combine
> multiple datasets doesn't really seem to be related to tidy data. (R3)

Right, and I've now removed this sentence.

> Section 5: I was not able to download the data for the case study from
> https://raw.github.com/hadley/tidy-data/master/case-study/deaths.rdata;
> I recieved a 403 Forbidden error. (R3)

Smaller version that you can download now at
https://raw.github.com/hadley/tidy-data/master/case-study/deaths.rds

> I think there should be a more thorough discussion explaining the goal
> of analyzing this data set. I'm not familiar with the term "time
> course", and the single sentence "The case study uses individual-level
> mortality data f rom Mexico, with the goal of finding causes of death
> that have notably different time patterns within a day." really didn't
> clarify the goal sufficiently for me. Perhaps an example of an unusual
> time course would help to clarify things. (R3)

Minor problems
==============

The following minor problems reported by the reviewers were resolved
without need for discussion.

> Abstract: "take in and take out" "input and output"

> p. 1 up 6: "subset" -\> "component"

> p. 2 line 9: -\> "an extension..."

> p. 2, 5 up from subtitle: "...techniques with real examples." --
> could do nicely.

> p. 2, 1 up from subtitle "...misses and what other approaches might
> be fruitful to pursue."

> p. 3 2/3 down "...were were..."

> p. 10, up 2. Sentence is garbled.

> p. 11 bottom: (left) and (right) may not be the apt descriptors...

> p. 12, line 9: comma after file name?

> p. 12: This reviewer would prefer to avoid "hopefully" about 13 lines
> down. More substantively, the sentence is garbled.

> p. 13 middle "...by the by preposition." Should second "by' be
> bolded? Or in quotes" Same question arises again.

> p. 17 middle -\> " diseases we work with have..."

> p. 19 last line "...seem like they should ..." -\> "may"

> Section 4.3: I think readers of this paper might find examples from
> stata more relevant than those from spss. (R3)

> The last sentence in the first paragraph of the discussion needs to be
> rephrased for clarity. (R2)

> Some tables also have unreadable characters in them, such as the
> degree sign in Table 12's top panel (row 6's artist). Same issue with
> Table 3's 5th religion. Table 12's caption also describes there being
> a left and right dataset, whereas the subtables are clearly placed
> above and below. (R2)

> Abstract: "variables are stored in columns, observations in rows, and
> a single type of..." -- this list isn't logically homogeneous.

> p.5, 3.1 -- "The Pew Center is an American ... that collects data on
> attitudes to topics RANGING from religion to the internet"

> "Billboard" should always be capitalized as it is a proper noun.

> p.13, section 4.2 - "Tidy visualization tools ONLY NEED to be..."

> p.16, 4-th line from bottom: "Next, we work out THE overall..."

> p.16, 2nd line from the bottom: "Then finally, WE join.."

> p.19, "The causes of death fall INTO three main groups: ... " There
> should be a hyphen between "transportation" and "related".

> p. 19, 2nd paragraph of discussion: "This makes it easy"; remove
> "is".

> p. 21, last sentence of first paragraph: "and A BETTER KNOWLEDGE OF
> how we can best design tools..."

> p. 21, last paragraph before Acknowledgements "verifying experimental
> design, AND filling in..."

> Author information, last page "Adjunct ASSISTANT Professor"
