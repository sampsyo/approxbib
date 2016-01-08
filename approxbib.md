bib: approx
title: Annotated Bibliography on Approximate Computing
cite style: numeric
bib search url:
js footer:
  var t = document.querySelector(".titleblock .title");
  t.innerHTML = t.textContent.replace(" on ", "<br>on ");

.Todo {
  color: red;
  caption: "TODO";
}

<style>
.madoko p, .madoko li {
  -webkit-hyphens: auto;
  -moz-hyphens: auto;
  -ms-hyphens: auto;
  hyphens: auto;
}
</style>


[TITLE]

This is an annotated bibliography on the topic of *approximate computing*. It's a collaborative, open-source project: to contribute, see its [home on GitHub][approxbib-gh].

~ HtmlOnly
You can also download [the BibTeX citation database][bib], read [a PDF version of this document][pdf], or view [the raw Markdown][md].
~

[approxbib-gh]: https://github.com/sampsyo/approxbib
[bib]: approx.bib
[pdf]: index.pdf
[md]: index.md



Application Tolerance Studies
=============================

This category of proto-approximate-computing work focuses on analyzing applications to measure their resilience to error. These papers typically assume a particular model of error---often hardware-inspired, such as random bit flips in memory---and execute programs under simulation, measuring crashes and output-quality degradation.
To measure output quality, these studies typically define a straightforward metric for each application, such as PSNR for media outputs.

~ TODO
Summarize the papers in the next paragraph.
~

Three papers by Li and Yeung in 2006--08 [@li06; @li07; @li08]; other papers that need summaries
[@arcs12; @ipdps09; @thaker-iiswc06; @elastic-fidelity; @chippa-dac].
A 2009 study in SELSE, @dekruijf-selse09, precedes the authors' later work on software-directed fault recovery [@relax].

    @inproceedings{arcs12,
      author    = {Andreas Heinig and
                   Vincent John Mooney and
                   Florian Schmoll and
                   Peter Marwedel and
                   Krishna V. Palem and
                   Michael Engel},
      title     = {Classification-Based Improvement of Application Robustness
                   and Quality of Service in Probabilistic Computer Systems},
      booktitle = {International Conference on Architecture of Computing Systems
          (ARCS)},
      year      = {2012},
    }

    @inproceedings{ipdps09,
     author = {Jiayuan Meng and Chakradhar, Srimat and Raghunathan, Anand},
     title = {Best-effort parallel execution framework for Recognition and mining applications},
     booktitle = ipdps,
     year = {2009},
    }

    @inproceedings{thaker-iiswc06,
      author    = {Darshan D. Thaker and
                   Diana Franklin and
                   John Oliver and
                   Susmit Biswas and
                   Derek Lockhart and
                   Tzvetan S. Metodi and
                   Frederic T. Chong},
      title     = {Characterization of Error-Tolerant Applications when Protecting
                   Control Data},
      booktitle = iiswc,
      year      = {2006},
    }

    @techreport{elastic-fidelity,
        author={Sourya Roy and Tyler Clemons and S M Faisal and Ke Liu and Nikos
            Hardavellas and Srinivasan Parthasarathy},
        title = {Elastic Fidelity: Trading-off Computational Accuracy for Energy
            Reduction},
        institution = {Northwestern University},
        number = {NWU-EECS-11-02},
        year = {2011},
    }

    @inproceedings{chippa-dac,
     author = {Chippa, Vinay K. and Chakradhar, Srimat T. and Roy, Kaushik and Raghunathan, Anand},
     title = {Analysis and Characterization of Inherent Application Resilience for Approximate Computing},
     booktitle = dac,
     year = {2013},
    }

    @INPROCEEDINGS{li06,
        author = {Xuanhua Li and Donald Yeung},
        title = {Exploiting soft computing for increased fault tolerance},
        booktitle = {Workshop on Architectural Support for Gigascale Integration
            (ASGI)},
        year = {2006},
        url={http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.78.2997}
    }

    @INPROCEEDINGS{li07,
        author = {Li, Xuanhua and Yeung, Donald},
        title = {Application-Level Correctness and its Impact on Fault Tolerance},
        booktitle = hpca,
        year = {2007},
        url={http://dx.doi.org/10.1109/HPCA.2007.346196}
    }

    @article{li08,
        author = {Xuanhua Li and Donald Yeung},
        title = {Exploiting Application-Level Correctness for Low-Cost Fault Tolerance},
        year = {2008},
        journal = {Journal of Instruction-Level Parallelism},
        url={http://www.jilp.org/vol10/v10paper10.pdf}
    }


    @inproceedings{dekruijf-selse09,
        Author = {de Kruijf, M. and Sankaralingam, K.},
        Booktitle = selse,
        Title = {Exploring the synergy of emerging workloads and silicon reliability trends},
        Year = {2009}
    }

One category of studies focuses on specific application domains.
Wong and Horowitz identify resilience specifically in probabilistic-inference applications [@wong-selse06].
@fang-ats11 address video applications,
and @yeh-tog address physical simulation for animation.
Other studies have focused on integrated circuit designs rather than software applications
[@breuer; @scalable-effort-hardware].

    @inproceedings{breuer,
     author = {Breuer, Melvin A.},
     title = {Multi-media Applications and Imprecise Computation},
     booktitle = dsd,
     year = {2005},
    }

    @INPROCEEDINGS{scalable-effort-hardware,
      author={Chippa, V.K. and Mohapatra, D. and Raghunathan, A. and Roy, K. and Chakradhar, S.T.},
      booktitle=dac,
      title={Scalable effort hardware design: Exploiting algorithmic resilience for energy efficiency},
      year={2010},
    }

    @inproceedings{wong-selse06,
        Author = {Vicky Wong and Mark Horowitz},
        booktitle = selse,
        Title = {Soft Error Resilience of Probabilistic Inference Applications},
        Year = {2006}
    }

    @inproceedings{fang-ats11,
        title={A Fault Criticality Evaluation Framework of Digital Systems for Error
            Tolerant Video Applications},
        author={Yuntan Fang and Huawei Li and Xiaowei Li},
        year={2011},
        booktitle=ats,
    }

    @article{yeh-tog,
     author = {Yeh, Thomas Y. and Reinman, Glenn and Patel, Sanjay J. and Faloutsos, Petros},
     title = {Fool me twice: Exploring and exploiting error tolerance in physics-based animation},
     journal = {ACM Transactions on Graphics},
     issue_date = {December 2009},
     volume = {29},
     number = {1},
     month = dec,
     year = {2009},
    }

LLFI is a tool based on [LLVM][] for performing this kind of simulation by injecting errors at the compiler-IR level.

[LLVM]: http://llvm.org/

    @inproceedings{llfi,
        author = {Anna Thomas and Karthik Pattabiraman},
        title = {LLFI: An Intermediate Code Level Fault Injector For Soft
            Computing Applications},
        booktitle = selse,
        year = {2013},
    }


Some of these studies conclude that there is a
useful distinction between critical and non-critical program points,
typically instructions [@arcs12; @thaker-iiswc06; @llfi].
This conclusion is borne out in later work on systems that exploit this distinction [@flikker; @enerj].


Measuring Quality
=================

This work tends to assume an existing, domain-specific notion of
"quality" for each application. As the principle in suggests, these
quality metrics need careful consideration: one quality metric is not
necessarily just as good as another. Recent work has proposed guidelines
for rigorous quality measurement [@wddd-quality].


Exploiting Resilience in Architecture
=====================================

Hardware techniques for approximation can lead to gains in energy,
performance, manufacturing yield, or verification complexity. We
categorize hardware-based approximation strategies according to the
hardware component they affect: computational units, memories, or entire
system architectures.

Functional Units
----------------

Researchers have designed floating-point units that dynamically adapt
mantissa width [@bitwidthred; @hierarchfpu], "fuzzily" memoize similar
arithmetic computations [@fuzzymemo], or tolerate timing errors [@kumarhpca;
@hizli; @metafunctions]. Alternative number representations work in
tandem with relaxed functional units to bound the numerical error that
can result from bit flips [@stanleymarbell].

The VLSI community has paid particular attention to variable-accuracy
adder designs, which are allowed to yield incorrect results for some
minority of input combinations [@uva-adder; @palem-adders; @impact; @adder-metrics; @configurable-adder; @adder-iccad13; @adder-tcad; @adder-optimal; @adder-dac12; @adder-isic09; @adder-date08].

Memory
------

SRAM structures spend significant static power on retaining data, so
they represent another opportunity for fidelity trade-offs [@hybrid-sram;
@sramerrors; @partially-forgetful]. Similarly, DRAM structures can
reduce the power spent on refresh cycles where bit flips are
allowed [@flikker; @sparkk]. In persistent memories where storage cells
can wear out, approximate systems can reduce the number of bits they
flip to lengthen the useful device lifetime [@fang-pcm]. Similarly,
low-power writes to memories like flash can exploit its probabilistic
properties while hiding them from software [@halfwits;
@powerfade; @flash-retention-relax]. Spintronic memories exhibit
similarly favorable trade-offs between access cost and
error [@spintronic-approx].

These memory approximation techniques typically work by exposing soft
errors and other analog effects. Recent work in security has exploited
patterns in these variability-related errors to deanonymize
users [@deanondram].

Circuit Design
--------------

A broad category of work has proposed general techniques for making
quality trade-offs when synthesizing and optimizing general hardware
circuits [@lossysynthesis;
@palem-pruning; @rahimi; @axilog; @miao-thesis; @synthesis-date14; @venkataramani-date13; @venkataramani-dac12].
Other tools focus on analyzing approximate circuit
designs [@venkatesan-iccad11; @tziantzioulis-dac15].

Near-threshold voltage domains also present a new opportunity for
embracing unpredictable circuit operation [@soft-ntc].

Relaxed Fault Tolerance
-----------------------

As a dual to adding errors in some circuits, some researchers have
explored differential fault protection in the face of universally
unreliable circuits. As process sizes continue to shrink, it is likely
that reliable transistors will become the minority; redundancy and
checking will be necessary to provide reliable operation [@li-asplos08].
Circuit design techniques have been proposed that reduce the cost of
redundancy by providing it selectively for certain instructions in a
CPU [@wreft], certain blocks in a DSP [@unequal-protection;
@ant; @micropower-dsp], or to components of a GPU [@palframan-gpu]. Other
work has used criticality information to selectively allocate
software-level error detection and correction
resources [@khudia-tolerance; @shi-cal; @relax].

Microarchitecture
-----------------

Microarchitectural mechanisms can exploit different opportunities from
circuit-level techniques. Specifically, "soft coherence" relaxes
intercore communication [@softcoherence], and load value
approximation [@lva-sanmiguel; @lva-thwaites] approximates numerical
values instead of fetching them from main memory on cache misses.

Recent work has proposed system organizations that apply approximation
at a coarser grain. One set of techniques uses external monitoring to
allow errors even in processor control logic [@martonosi-date;
@commguard]. Other approaches compose separate processing units with
different levels of reliability [@ersa]. Duwe [@duwe-thesis] proposes
run-time coalescing of approximate and precise computations to reduce
the overhead of switching between modes. Other work allocates
approximation among the lanes of a SIMD unit [@tabsh]. In all cases, the
gains from approximation can be larger than for lower-level techniques
that affect individual operations. As the granularity principle from
outlines, techniques like these that approximate entire computations,
including control flow, have the greatest efficiency potential.

Stochastic Computing
--------------------

*Stochastic computing* is an alternative computational model where
values are represented using probabilities [@pcmos;
@pcmos-cacm; @palem-dac-position; @stochasticproc; @storm; @lyric; @mansinghka-circuits].
For example, a wire could carry a random sequence of bits, where the
wire's value corresponds to the probability that a given bit is a 1.
Multiplication can be implemented in this model using a single *and*
gate, so simple circuits can be low-power and area-efficient. A
persistent challenge in stochastic circuits, however, is that reading
and output value requires a number of bits that is exponential in the
value's magnitude. Relaxing this constraint represents an opportunity
for an time–accuracy trade-off.


Exploiting Resilience with Program Transformations
==================================================

Aside from hardware-level accuracy trade-offs, there are opportunities
for adapting *algorithms* to execute with varying precision. Algorithmic
quality–complexity trade-offs are not new, but recent work has proposed
tools for *automatically* transforming programs to take advantage of
them. Transformations include removing portions of a program's dynamic
execution (termed *code perforation*) [@perforation], unsound
parallelization of serial programs [@quickstep], eliminating
synchronization in parallel programs [@dubstep;
@races-ibm; @hogwild; @forgiving-parallel], identifying and adjusting
parameters that control output quality @dynamicknobs, randomizing
deterministic programs [@zhu-popl12; @sasa-sas11], dynamically choosing
between different programmer-provided implementations of the same
specification [@green;
@virus; @petabricks; @taco-soc; @ansel-autotuning; @scalable-classifier],
and replacing subcomputations with invocations of a trained neural
network [@npu].

Some work on algorithmic approximation targets specific hardware:
notably, general-purpose GPUs [@paraprox; @sage; @herding; @neuralgpu].
In a GPU setting, approximation strategies benefit most by optimizing
for memory bandwidth and control divergence.

Recently, a research direction has developed in *automated program
repair* and other approaches to heuristically patching software
according to programmer-specified criteria. These techniques are
typically approximate in that they abandon a traditional compiler's goal
of perfectly preserving the original program's semantics. Notably,
Schulte &etal; [@schulte] propose to use program evolution to optimize for
energy.

Precimonious [@precimonious] addresses the problem of choosing appropriate
floating-point widths, which amount to a trade-off between numerical
accuracy and space or operation cost. Similarly, STOKE's floating-point
extension [@stoke-fp] synthesizes new versions of floating-point functions
from scratch to meet different accuracy requirements with optimal
efficiency.

Neural acceleration is a recent technique that treats code as a black
box and transforms it into a neural network [@npu;
@emeuro; @benchnn; @temam-isca]. It is, at its core, an algorithmic
transformation, but it integrates tightly with hardware support: a
digital accelerator @npu, analog circuits [@anpu], FPGAs [@snnap],
GPUs [@neuralgpu], or, recently, new analog substrates using resistive
memory [@rram-npu] or memristors [@memristor-npu].


Exploiting Resilience in Other Systems
======================================

While architecture optimizations and program transformations dominate
the field of proposed exploitations of approximate software, some recent
work has explored the same trade-off in other components of computer
systems.

Network communication, with its reliance on imperfect underlying
channels, exhibits opportunities for fidelity trade-offs [@softcast;
@luo-globecom; @apex; @smpmup2006]. Notably, SoftCast [@softcast]
transmits images and video by making the signal magnitude directly
proportional to pixel luminance. BlinkDB, a recent instance of research
on *approximate query answering*, is a database system that can respond
to queries that include a required accuracy band on their
output [@blinkdb]. Uncertain<span>\<</span>T<span>\></span> [@uncertaint]
and Lax [@lax] propose to expose the probabilistic behavior of sensors to
programs. In a distributed system or a supercomputer, approximation
techniques can eschew redundancy and recovery for
efficiency [@dekruijf-icpp].


Languages for Expressing Approximation
======================================

Recently, language constructs that express and constrain approximation
have become a focus in the programming-languages research community.
Relax @relax is a language with ISA support for tolerating architectural
faults in software. Rely @rely uses specifications that relate the
reliability of the input to an approximate region of code to its
outputs.

A related set of recent approximate-programming tools attempt to *adapt*
a program to meet accuracy demands while using as few resources as
possible. Chisel @chisel is an extension to Rely that searches for the
subset of operations in a program that can safely be made approximate.
ExpAX [@expax-tr] finds safe-to-approximate operations automatically and
uses a metaheuristic to find which subset of them to actually
approximate.

Some other programming systems that focus on energy efficiency include
approximation ideas: Eon [@eon] is a language for long-running embedded
systems that can drop tasks when energy resources are low, and the
Energy Types language [@energytypes] incorporates a variety of strategies
for expressing energy requirements.


Programmer Tools
================

Aside from programming languages, separate programmer tools can help
analyze and control the effects of approximation.

A quality-of-service profiler helps programmers identify parts of
programs that may be good targets for approximation techniques [@qosprof].
Conversely, debugging tools can identify components where approximation
is too aggressive [@approxdebug]. Some verification tools and proof
systems help the programmer prove relationships between the original
program and a candidate relaxed version [@carbin-pldi;
@carbin-races; @carbin-pepm; @rice-transformation-semantics].

As an alternative to statically bounding errors, dynamic techniques can
monitor quality degradation at run time. The critical challenge for
these techniques is balancing detection accuracy with the added cost,
which takes away from the efficiency advantages of approximation. Some
work has suggested that programmers can provide domain-specific checks
on output quality [@lwc; @approxdebug]. Recent work has explored
automatic generation of error detectors [@rumba]. A variety of techniques
propose mechanisms for run-time or profiling feedback to adapt
approximation parameters [@dynamicknobs;
@green; @approxit; @ansel-autotuning].


Probabilistic Languages
=======================

One specific research direction, *probabilistic programming languages*,
focuses on expressing statistical models, especially for machine
learning [@BBGR13;
@wingate-lightweight; @church; @chaganty; @pfeffersample; @probdsl; @koller; @sriram-pldi].
The goal is to enable efficient statistical inference over arbitrary
models written in the probabilistic programming language.

Earlier work examines the semantics of probabilistic behavior in more
traditional programming models [@kozen]. Similarly, the probability monad
captures a variable's discrete probability distribution in functional
programs [@pmonad]. Statistical model checking tools can analyze programs
to prove statistical properties [@legay10; @KNP11]. Recently, Bornholt &etal;
[@uncertaint] proposed a construct for explicitly representing
probability distributions in a mainstream programming language.


Robustness Analysis
===================

As the studies in Section [sec:related:studies] repeatedly find, error
tolerance varies greatly in existing software, both within and between
programs. Independent of approximate computing, programming-languages
researchers have sought to identify and enhance error resilience
properties.

SJava analyzes programs to prove that errors only temporarily disrupt
the execution path of a program [@sjava]. Program smoothing [@smoothing-cav;
@smoothing-pldi; @smoothing-fse] and *robustification* [@robustification]
both find continuous, mathematical functions that resemble the
input–output behavior of numerical programs. Auto-tuning approaches can
help empirically identify error-resilient components [@asac]. Finally,
Cong and Gururaj describe a technique for automatically distinguishing
between critical and non-critical instructions for the purpose of
selective fault tolerance [@cong-iccad].


```bibtex
@inproceedings{enerj,
 author = {Sampson, Adrian and Dietl, Werner and Fortuna, Emily and Gnanapragasam, Danushen and Ceze, Luis and Grossman, Dan},
 title = {{EnerJ}: approximate data types for safe and general low-power computation},
 booktitle = pldi,
 year = {2011}
}

@inproceedings{truffle,
 author = {Esmaeilzadeh, Hadi and Sampson, Adrian and Ceze, Luis and Burger, Doug},
 title = {Architecture support for disciplined approximate programming},
 booktitle = asplos,
 year = {2012}
}

@inproceedings{npu,
 author = {Esmaeilzadeh, Hadi and Sampson, Adrian and Ceze, Luis and Burger, Doug},
 title = {Neural acceleration for general-purpose approximate programs},
 booktitle = micro,
 year = {2012}
}

@inproceedings{darksilicon,
 author = {Esmaeilzadeh, Hadi and Blem, Emily and St. Amant, Renee and Sankaralingam, Karthikeyan and Burger, Doug},
 title = {Dark silicon and the end of multicore scaling},
 booktitle = isca,
 year = {2011},
}

@inproceedings{pcmos,
 author = {Chakrapani, Lakshmi N. and Akgul, Bilge E. S. and Cheemalavagu, Suresh and Korkmaz, Pinar and Palem, Krishna V. and Seshasayee, Balasubramanian},
 title = {Ultra-efficient (embedded) {SOC} architectures based on probabilistic
     {CMOS} ({PCMOS}) technology},
 booktitle = date,
 year = {2006},
}

@inproceedings{green,
    Author = {Baek, Woongki and Chilimbi, Trishul M.},
    Booktitle = pldi,
    Title = {Green: A framework for supporting energy-conscious programming using controlled approximation},
    Year = {2010}
}

@inproceedings{qosprof,
    Author = {Sasa Misailovic and Stelios Sidiroglou and Hank Hoffman and Martin Rinard},
    Booktitle = icse,
    Title = {Quality of Service Profiling},
    Year = {2010}
}

@inproceedings{bluespec,
	author={Nikhil, R.},
	title={{Bluespec System Verilog}: efficient, correct {RTL} from high level specifications},
	booktitle=memocode,
	year={2004},
}

@techreport{opencl,
     title = {Implementing {FPGA} Design with the {OpenCL} Standard},
     year = {2011},
     institution = {Altera Corporation},
     month = {11}
}



@inproceedings{stanleymarbell,
    Author = {Stanley-Marbell, Phillip},
    Booktitle = {Information Theory Workshop (ITW)},
    Title = {Encoding Efficiency of Digital Number Representations under Deviation Constraints},
    Year = {2009}}

@inproceedings{stochasticproc,
    author = {Narayanan, Sriram and Sartori, John and Kumar, Rakesh and Jones, Douglas L.},
    title = {Scalable stochastic processors},
    booktitle = date,
    year = {2010},
}

@article{pcmos-cacm,
 author = {Anthes, Gary},
 title = {Inexact design: beyond fault-tolerance},
 journal = cacm,
 issue_date = {April 2013},
 volume = {56},
 number = {4},
 month = Apr,
 year = {2013},
 pages = {18--20},
}

@article{batesmit,
    author={Larry Hardesty},
    title={The surprising usefulness of sloppy arithmetic},
    journal={MIT News},
    day={3},
    month={Jan},
    year={2011},
}

@inproceedings{lyric,
 author = {Vigoda, Benjamin and Reynolds, David and Bernstein, Jeffrey and Weber, Theophane and Bradley, Bill},
 title = {Low power logic for statistical inference},
 booktitle = islped,
 year = {2010},
}

@INPROCEEDINGS{smpmup2006,
    author = {Phillip Stanley-Marbell and Diana Marculescu},
    title = {A Programming Model and Language Implementation for Concurrent FailureProne Hardware},
    booktitle = {Workshop on Programming Models for Ubiquitous Parallelism
        (PMUP)},
    year = {2006},
    url={http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.121.9864}
}

@inproceedings{palem-adders,
 author = {Kedem, Zvi M. and Mooney, Vincent J. and Muntimadugu, Kirthi Krishna and Palem, Krishna V.},
 title = {An approach to energy-error tradeoffs in approximate ripple carry adders},
 booktitle = islped,
 year = {2011},
}

@inproceedings{palem-dac-position,
 author = {Palem, Krishna and Lingamneni, Avinash},
 title = {What to do about the end of {Moore's} law, probably!},
 booktitle = dac,
 year = {2012},
}

@INPROCEEDINGS{robustification,
author={Sloan, J. and Kesler, D. and Kumar, R. and Rahimi, A.},
booktitle=dsn,
title={A numerical optimization-based methodology for application robustification: Transforming applications for error tolerance},
year={2010},
}

@inproceedings{sjava,
 author = {Eom, Yong hun and Demsky, Brian},
 title = {Self-stabilizing {Java}},
 booktitle = pldi,
 year = {2012},
}

@inproceedings{cong-iccad,
  author    = {Jason Cong and
               Karthik Gururaj},
  title     = {Assuring application-level correctness against soft errors},
  booktitle = iccad,
  year      = {2011},
}

@inproceedings{wreft,
 author = {Sundaram, Ayswarya and Aakel, Ameen and Lockhart, Derek and Thaker, Darshan and Franklin, Diana},
 title = {Efficient fault tolerance in multi-media applications through selective instruction replication},
 booktitle = {Workshop on Radiation Effects and Fault Tolerance in Nanometer Technologies},
 year = {2008},
}

@inproceedings{li-asplos08,
 author = {Li, Man-Lap and Ramachandran, Pradeep and Sahoo, Swarup Kumar and Adve, Sarita V. and Adve, Vikram S. and Zhou, Yuanyuan},
 title = {Understanding the propagation of hard errors to software and implications for resilient system design},
 booktitle = asplos,
 year = {2008},
}

@inproceedings{softcast,
 author = {Jakubczak, Szymon and Katabi, Dina},
 title = {{SoftCast}: clean-slate scalable wireless video},
 booktitle = {Workshop on Wireless of the Students, by the Students, for
     the Students (S3)},
 year = {2010},
}

@inproceedings{luo-globecom,
  author    = {Chong Luo and
               Jun Sun and
               Feng Wu},
  title     = {Compressive Network Coding for Approximate Sensor Data Gathering},
  booktitle = globecom,
  year      = {2011},
}

@ARTICLE{hybrid-sram,
author={Ik Joon Chang and Mohapatra, D. and Roy, K.},
journal={IEEE Transactions on Circuits and Systems for Video Technology},
title={A Priority-Based {6T/8T} Hybrid {SRAM} Architecture for Aggressive Voltage Scaling in Video Applications},
year={2011},
volume={21},
number={2},
pages={101--112},
}

@INPROCEEDINGS{impact,
author={Gupta, V. and Mohapatra, D. and Sang Phill Park and Raghunathan, A. and Roy, K.},
booktitle=islped,
title={{IMPACT}: Imprecise adders for low-power approximate computing},
year={2011},
}

@article{unequal-protection,
 author = {Karakonstantis, Georgios and Mohapatra, Debabrata and Roy, Kaushik},
 title = {Logic and Memory Design Based on Unequal Error Protection for
     Voltage-scalable, Robust and Adaptive {DSP} Systems},
 journal = {Journal of Signal Processing Systems},
 volume = {68},
 number = {3},
 month = sep,
 year = {2012},
 pages = {415--431},
}

@inproceedings{liu87,
  author    = {Kwei-Jay Lin and
               Swaminathan Natarajan and
               Jane W.-S. Liu},
  title     = {Imprecise Results: Utilizing Partial Computations in Real-Time
               Systems},
  booktitle = rtss,
  year      = {1987},
}

@ARTICLE{chung90,
author={Chung, J. -Y and Liu, J. W -S and Kwei-Jay Lin},
journal=toc,
title={Scheduling periodic jobs that allow imprecise results},
year={1990},
volume={39},
number={9},
pages={1156--1174},
}

@INPROCEEDINGS{dekruijf-icpp,
author={Chen-Han Ho and de Kruijf, M. and Sankaralingam, K. and Rountree, B. and Schulz, M. and De Supinski, B.R.},
booktitle=icpp,
title={Mechanisms and Evaluation of Cross-Layer Fault-Tolerance for Supercomputing},
year={2012},
}

@INPROCEEDINGS{accuracy-tradeoff-survey,
author={Chunbai Yang and Changjiang Jia and Chan, W.K. and Yu, Y.T.},
booktitle=apsec,
title={On Accuracy-Performance Tradeoff Frameworks for Energy Saving: Models and Review},
year={2012},
}

@inproceedings{lossysynthesis,
 author = {Boland, David and Constantinides, George A.},
 title = {A scalable approach for automated precision analysis},
 booktitle = fpga,
 year = {2012},
}

@inproceedings{martonosi-date,
    author = {Yavuz Yetim and Margaret Martonosi and Sharad Malik},
    title = {Extracting Useful Computation From Error-Prone Processors For
        Streaming Applications},
    booktitle = date,
    year = {2013},
}

@inproceedings{carbin-pepm,
  author    = {Michael Carbin and
               Deokhwan Kim and
               Sasa Misailovic and
               Martin C. Rinard},
  title     = {Verified integrity properties for safe approximate program
               transformations},
  booktitle = pepm,
  year      = {2013},
}

@inproceedings{carbin-pldi,
  author    = {Michael Carbin and
               Deokhwan Kim and
               Sasa Misailovic and
               Martin C. Rinard},
  title     = {Proving acceptability properties of relaxed nondeterministic
               approximate programs},
  booktitle = pldi,
  year      = {2012},
}

@inproceedings{zhu-popl12,
  author    = {Zeyuan Allen Zhu and
               Sasa Misailovic and
               Jonathan A. Kelner and
               Martin C. Rinard},
  title     = {Randomized accuracy-aware program transformations for efficient
               approximate computations},
  booktitle = popl,
  year      = {2012},
}

@inproceedings{dynamicknobs,
  author    = {Henry Hoffmann and
               Stelios Sidiroglou and
               Michael Carbin and
               Sasa Misailovic and
               Anant Agarwal and
               Martin C. Rinard},
  title     = {Dynamic knobs for responsive power-aware computing},
  booktitle = asplos,
  year      = {2011},
}

@inproceedings{sasa-sas11,
  author    = {Sasa Misailovic and
               Daniel M. Roy and
               Martin C. Rinard},
  title     = {Probabilistically Accurate Program Transformations},
  booktitle = sas,
  year      = {2011},
}

@inproceedings{perforation,
  author    = {Stelios Sidiroglou-Douskos and
               Sasa Misailovic and
               Henry Hoffmann and
               Martin C. Rinard},
  title     = {Managing performance vs. accuracy trade-offs with loop perforation},
  booktitle = fse,
  year      = {2011},
}

@inproceedings{foc-osdi,
  author    = {Martin C. Rinard and
               Cristian Cadar and
               Daniel Dumitran and
               Daniel M. Roy and
               Tudor Leu and
               William S. Beebee},
  title     = {Enhancing Server Availability and Security Through Failure-Oblivious
               Computing},
  booktitle = osdi,
  year      = {2004},
}

@inproceedings{foc-ics,
 author = {Rinard, Martin},
 title = {Probabilistic accuracy bounds for fault-tolerant computations that discard tasks},
 booktitle = ics,
 year = {2006},
}

@INPROCEEDINGS{razor,
  author = {Ernst, D. and Nam Sung Kim and Das, S. and Pant, S. and Rao, R. and
    Toan Pham and Ziesler, C. and Blaauw, D. and Austin, T. and Flautner,
    K. and Mudge, T.},
  title = {Razor: A low-power pipeline based on circuit-level timing speculation},
  booktitle = micro,
  year = {2003},
}

@inproceedings{ant,
 author = {Hegde, Rajamohana and Shanbhag, Naresh R.},
 title = {Energy-efficient signal processing via algorithmic noise-tolerance},
 booktitle = islped,
 year = {1999},
}

@INPROCEEDINGS{kumarhpca,
  author = {Kahng, A.B. and Seokhyeong Kang and Kumar, R. and Sartori, J.},
  title = {Designing a processor from the ground up to allow voltage/reliability
    tradeoffs},
  booktitle = hpca,
  year = {2010},
}

@INPROCEEDINGS{ersa,
  author = {Leem, Larkhoon and Cho, Hyungmin and Bau, Jason and Jacobson, Quinn
    A. and Mitra, Subhasish},
  title = {{ERSA}: Error resilient system architecture for probabilistic applications},
  booktitle = date,
  year = {2010},
}

@inproceedings{smoothing-cav,
 author = {Chaudhuri, Swarat and Solar-Lezama, Armando},
 title = {Smoothing a program soundly and robustly},
 booktitle = cav,
 year = {2011},
}

@techreport{quickstep,
  author    = {Sasa Misailovic and
               Deokhwan Kim and
               Martin Rinard},
  title     = {Parallelizing Sequential Programs With Statistical Accuracy
               Tests},
  number    = {MIT-CSAIL-TR-2010-038},
  month     = {August},
  year      = {2010},
  institution = {MIT},
}

@inproceedings{dubstep,
    author = {Sasa Misailovic and Stelios Sidiroglou and Martin Rinard},
    title = {Dancing with Uncertainty},
    booktitle = races,
    year={2012},
}

@inproceedings{carbin-races,
    author = {Michael Carbin and Martin Rinard},
    title = {{(Relative)} Safety Properties for Relaxed Approximate Programs},
    booktitle = races,
    year={2012},
}

@inproceedings{races-ibm,
    author = {Lakshminarayanan Renganarayanan and Vijayalakshmi Srinivasan and Ravi Nair and Daniel Prener},
    title = {Programming with Relaxed Synchronization},
    booktitle = races,
    year={2012},
}

@inproceedings{smoothing-pldi,
 author = {Chaudhuri, Swarat and Solar-Lezama, Armando},
 title = {Smooth interpretation},
 booktitle = pldi,
 year = {2010},
}

@inproceedings{smoothing-fse,
 author = {Chaudhuri, Swarat and Gulwani, Sumit and Lublinerman, Roberto and Navidpour, Sara},
 title = {Proving programs robust},
 booktitle = fse,
 year = {2011},
}

@inproceedings{hogwild,
  author    = {Benjamin Recht and
               Christopher Re and
               Stephen J. Wright and
               Feng Niu},
  title     = {Hogwild: A Lock-Free Approach to Parallelizing Stochastic
               Gradient Descent},
  booktitle = nips,
  year      = {2011},
}

@inproceedings{blinkdb,
    title = {{BlinkDB}: Queries with Bounded Errors and Bounded Response Times
        on Very Large Data},
    author = {Sameer Agarwal and Barzan Mozafari and Aurojit Panda and Henry
        Milner and Samuel Madden and Ion Stoica},
    booktitle = eurosys,
    year = {2013},
}

@inproceedings{apex,
 author = {Sen, Sayandeep and Gilani, Syed and Srinath, Shreesha and Schmitt, Stephen and Banerjee, Suman},
 title = {Design and implementation of an "approximate" communication system for wireless media applications},
 booktitle = sigcomm,
 year = {2010},
}

@inproceedings{benchnn,
  author    = {Tianshi Chen and
               Yunji Chen and
               Marc Duranton and
               Qi Guo and
               Atif Hashmi and
               Mikko H. Lipasti and
               Andrew Nere and
               Shi Qiu and
               Mich{\`e}le Sebag and
               Olivier Temam},
  title     = {{BenchNN}: On the broad potential application scope of hardware
               neural network accelerators},
  booktitle = iiswc,
  year      = {2012},
}

@inproceedings{palem-pruning,
  author    = {Lingamneni Avinash and
               Christian C. Enz and
               Jean-Luc Nagel and
               Krishna V. Palem and
               Christian Piguet},
  title     = {Energy parsimonious circuit design through probabilistic
               pruning},
  booktitle = date,
  year      = {2011},
}

@inproceedings{church,
  author    = {Noah D. Goodman and
               Vikash K. Mansinghka and
               Daniel M. Roy and
               Keith Bonawitz and
               Joshua B. Tenenbaum},
  title     = {Church: a language for generative models},
  booktitle = uai,
  year      = {2008},
}

@inproceedings{jif,
        Author = {Myers, Andrew C.},
        Booktitle = popl,
        Title = {{JFlow}: practical mostly-static information flow control},
        Year = {1999}}

@techreport{mansinghka-circuits,
    author = {Vikash K. Mansinghka and Eric M. Jonas and Joshua B.
        Tenenbaum},
    title = {Stochastic Digital Circuits for Probabilistic Inference},
    number = {MIT-CSAIL-TR-2008-069},
    year = {2008},
    institution = {MIT},
}

@mastersthesis{hizli,
    author = {Caglar Hizli},
    title = {Energy Aware Probabilistic Arithmetics},
    school = {Eindhoven University of Technology},
    year = {2013},
}

@article{adder-metrics,
    author = {Jinghang Liang and Jie Han and Fabrizio Lombardi},
    title = {New Metrics for the Reliability of Approximate and Probabilistic Adders},
    journal = toc,
    volume = {99},
    year = {2012},
}

@techreport{rice-transformation-semantics,
    author = {Edwin Westbrook and Swarat Chaudhuri},
    title = {A Semantics for Approximate Program Transformations},
    number = {Preprint: \texttt{arXiv:1304.5531}},
    year = {2013},
}

@techreport{enercaml,
    title = {Quality of Service Profiling and Autotuning for Energy-Aware
        Approximate Programming},
    author = {Michael F. Ringenburg and Adrian Sampson and Luis Ceze and Dan Grossman},
    number = {UW-CSE-12-07-02},
    institution = {University of Washington},
    year = {2012},
}

@inproceedings{klee,
 author = {Cadar, Cristian and Dunbar, Daniel and Engler, Dawson},
 title = {{KLEE}: unassisted and automatic generation of high-coverage tests for complex systems programs},
 booktitle = osdi,
 year = {2008},
}

@inproceedings{ccores,
 author = {Venkatesh, Ganesh and Sampson, Jack and Goulding, Nathan and Garcia, Saturnino and Bryksin, Vladyslav and Lugo-Martinez, Jose and Swanson, Steven and Taylor, Michael Bedford},
 title = {Conservation cores: reducing the energy of mature computations},
 booktitle = asplos,
 year = {2010},
}

@inproceedings{hardware-sketching,
 author = {Raabe, Andreas and Bodik, Rastislav},
 title = {Synthesizing hardware from sketches},
 booktitle = dac,
 year = {2009},
}

@TechReport{enerj-tr,
  author =       {A. Sampson and W. Dietl and E. Fortuna and D. Gnanapragasam
                  and L. Ceze and D. Grossman},
  title =        {{EnerJ: Approximate Data Types for Safe and General
                  Low-Power Computation --- Full Proofs}},
  institution =  {University of Washington},
  number =       {UW-CSE-10-12-01},
  year =         {2011},
}

@article{infflow-survey,
  Author = {Sabelfeld, Andrei and Myers, Andrew C.},
  Title = {Language-based information-flow security},
  Journal = {{IEEE} Journal on Selected Areas in Communications, special issue on Formal Methods for Security},
  Volume=21,
  Number=1,
  Year=2003
}

@inproceedings{endorsement,
	Author = {Aslan Askarov and Andrew C. Myers},
	Booktitle = esop,
	Title = {A Semantic Framework for Declassification and Endorsement},
	Year = {2010}}

@inproceedings{aqeel,
	Author = {Aqeel Mahesri and Vibhore Vardhan},
	Booktitle = pacs,
	Title = {Power Consumption Breakdown on a Modern Laptop},
	Year = {2004}}

@inproceedings{smartrefresh,
	Author = {Ghosh, Mrinmoy and Lee, Hsien-Hsin S.},
	Booktitle = micro,
	Title = {Smart Refresh: An Enhanced Memory Controller Design for Reducing Energy in Conventional and {3D} Die-Stacked {DRAM}s},
	Year = {2007}}

@inproceedings{drowsycaches,
	Author = {Flautner, Kriszti\'{a}n and Kim, Nam Sung and Martin, Steve and Blaauw, David and Mudge, Trevor},
	Booktitle = isca,
	Title = {Drowsy caches: simple techniques for reducing leakage power},
	Year = {2002}}

@inproceedings{carroll2010,
	Author = {Carroll, Aaron and Heiser, Gernot},
	Booktitle = usenix,
	Title = {An analysis of power consumption in a smartphone},
	Year = {2010}}

@inproceedings{googlepower,
	Author = {Fan, Xiaobo and Weber, Wolf-Dietrich and Barroso, Luiz Andre},
	Booktitle = isca,
	Title = {Power provisioning for a warehouse-sized computer},
	Year = {2007}}

@inproceedings{burger2003,
	Author = {Natarajan, Karthik and Hanson, Heather and Keckler, Stephen W. and Moore, Charles R. and Burger, Doug},
	Booktitle = islped,
	Title = {Microprocessor pipeline energy analysis},
	Year = {2003}}

@inproceedings{mcpat,
	Author = {Sheng Li and Jung Ho Ahn and Strong, R.D. and Brockman, J.B. and Tullsen, D.M. and Jouppi, N.P.},
	Booktitle = micro,
	Title = {{McPAT}: An integrated power, area, and timing modeling framework for multicore and manycore architectures},
	Year = {2009}}

@inproceedings{wattch,
	Author = {Brooks, David and Tiwari, Vivek and Martonosi, Margaret},
	Booktitle = isca,
	Title = {Wattch: a framework for architectural-level power analysis and optimizations},
	Year = {2000}}

@inproceedings{bdtyping,
	Author = {Chlipala, Adam and Petersen, Leaf and Harper, Robert},
	Booktitle = tldi,
	Title = {Strict bidirectional type checking},
	Year = {2005}}

@misc{jsr308,
	Author = {Michael D. Ernst},
	Howpublished = {\url{http://types.cs.washington.edu/jsr308/}},
	HIDE_TO_SAVE_SPACE_Month = {September~12,},
	Title = {{Type Annotations} specification ({JSR} 308)},
	Year = {2008}}

@article{fuzzymemo,
	Author = {Alvarez, Carlos and Corbal, Jesus and Valero, Mateo},
	Journal = toc,
	Number = {7},
	Title = {Fuzzy Memoization for Floating-Point Multimedia Applications},
	Volume = {54},
	Year = {2005}}

@article{bitwidthred,
	Author = {Tong, Jonathan Ying Fai and Nagle, David and Rutenbar, Rob. A.},
	Journal = tvlsi,
	Number = {3},
	Title = {Reducing power by optimizing the necessary precision/range of floating-point arithmetic},
	Volume = {8},
	Year = {2000}}

@mastersthesis{dramthesis,
	Author = {Vimal Bhalodia},
	School = {MIT},
	Title = {{SCALE} {DRAM} Subsystem Power Analysis},
	Year = {2005}}

@phdthesis{sramthesis,
	Author = {Animesh Kumar},
	School = {University of California at Berkeley},
	Title = {{SRAM} Leakage-Power Optimization Framework: a System Level Approach},
	Year = {2008}}

@inproceedings{flowproofs,
 author = {Pottier, Fran\c{c}ois and Conchon, Sylvain},
 title = {Information Flow Inference for Free},
 booktitle = icfp,
 year = {2000},
}

@inproceedings{rinard-onward,
	Author = {Rinard, Martin and Hoffmann, Henry and Misailovic, Sasa and Sidiroglou, Stelios},
	Booktitle = {Onward!},
	Title = {Patterns and statistical analysis for understanding reduced resource computing},
	Year = {2010}}

@inproceedings{flikker,
	Author = {Song Liu and Karthik Pattabiraman and Thomas Moscibroda and Benjamin G. Zorn},
    Booktitle = asplos,
	Title = {Flikker: Saving Refresh-Power in Mobile Devices through Critical Data Partitioning},
	Year = {2011}}

@inproceedings{relax,
	Author = {de Kruijf, Marc and Nomura, Shuou and Sankaralingam, Karthikeyan},
	Booktitle = isca,
	Title = {Relax: an architectural framework for software recovery of hardware faults},
	Year = {2010}}

@inproceedings{perry-sas,
	Author = {Perry, Frances and Walker, David},
	Booktitle = sas,
	Title = {Reasoning about Control Flow in the Presence of Transient Faults},
	Year = {2008}}

@inproceedings{perry-pldi,
	Author = {Perry, Frances and Mackey, Lester and Reis, George A. and Ligatti, Jay and August, David I. and Walker, David},
	Booktitle = pldi,
	Title = {Fault-tolerant typed assembly language},
	Year = {2007}}

@inproceedings{qualifiers,
    author = {Foster, Jeffrey S. and F\"{a}hndrich, Manuel and Aiken, Alexander},
    title = {A theory of type qualifiers},
    booktitle = pldi,
    year = {1999}}

@inproceedings{pcm-dram-alt,
 author = {Lee, Benjamin C. and Ipek, Engin and Mutlu, Onur and Burger, Doug},
 title = {Architecting phase change memory as a scalable {DRAM} alternative},
 booktitle = isca,
 year = {2009},
}

@inproceedings{flash-retention-relax,
    author = {Ren-Shuo Liu and Chia-Lin Yang and Wei Wu},
    title = {Optimizing {NAND} Flash-Based {SSD}s via Retention Relaxation},
    booktitle = fast,
    year = {2012},
}

@inproceedings{durable-pcm-mm,
 author = {Zhou, Ping and Zhao, Bo and Yang, Jun and Zhang, Youtao},
 title = {A durable and energy efficient main memory using phase change memory technology},
 booktitle = isca,
 year = {2009},
}

@inproceedings{drm,
 author = {Ipek, Engin and Condit, Jeremy and Nightingale, Edmund B. and Burger, Doug and Moscibroda, Thomas},
 title = {Dynamically replicated memory: Building reliable systems from nanoscale resistive memories},
 booktitle = asplos,
 year = {2010},
}

@inproceedings{qureshi-pcm-mm,
 author = {Qureshi, Moinuddin K. and Srinivasan, Vijayalakshmi and Rivers, Jude A.},
 title = {Scalable high performance main memory system using phase-change memory technology},
 booktitle = isca,
 year = {2009},
}

@inproceedings{carbin_pldi12,
title = "Reasoning about Relaxed Programs",
author = {Michael Carbin and Deokhwan Kim and Sasa Misailovic and Martin C. Rinard},
booktitle = pldi,
year = 2012,
}

@inproceedings{sramerrors,
 author = {Kumar, Animesh and Rabaey, Jan and Ramchandran, Kannan},
 title = {{SRAM} supply voltage scaling: A reliability perspective},
 booktitle = isqed,
 year = {2009},
}

@inproceedings{halfwits,
 author = {Salajegheh, Mastooreh and Wang, Yue and Fu, Kevin and Jiang, Anxiao and Learned-Miller, Erik},
 title = {Exploiting half-wits: Smarter storage for low-power devices},
 booktitle = fast,
 year = {2011},
}

@inproceedings{adams,
 author = {Dong, Xiangyu and Xie, Yuan},
 title = {{AdaMS}: Adaptive {MLC}/{SLC} phase-change memory design for file storage},
 booktitle = aspdac,
 year = {2011},
}

@misc{ucimlrepo,
    author = "K. Bache and M. Lichman",
    year = "2013",
    title = "{UCI} Machine Learning Repository",
    url = "http://archive.ics.uci.edu/ml",
    institution = "University of California, Irvine, School of Information and Computer Sciences"
}

@inproceedings{powerfade,
    author = {Hung-Wei Tseng and Laura M. Grupp and Steven Swanson},
    title = {Underpowering {NAND} Flash: Profits and Perils},
    booktitle = dac,
    year = 2013,
}

@inproceedings{powertokens,
 author = {Hay, Andrew and Strauss, Karin and Sherwood, Timothy and Loh, Gabriel H. and Burger, Doug},
 title = {Preventing {PCM} banks from seizing too much power},
 booktitle = micro,
 year = {2011},
}

@INPROCEEDINGS{safer,
author={Nak Hee Seong and Dong Hyuk Woo and Srinivasan, V. and Rivers, J.A. and Lee, H.-H.S.},
booktitle=micro,
title={{SAFER}: Stuck-At-Fault Error Recovery for Memories},
year={2010},
}

@inproceedings{payg,
 author = {Qureshi, Moinuddin K.},
 title = {Pay-As-You-Go: low-overhead hard-error correction for phase change memories},
 booktitle = micro,
 year = {2011},
}

@inproceedings{zombie,
    author = {Rodolfo Jardim de Azevedo and John D. Davis and Karin Strauss
        and Parikshit Gopalan and Mark Manasse and Sergey Yekhanin},
    title = {Zombie: Extending Memory Lifetime by Reviving Dead Blocks},
    booktitle = isca,
    year = {2013},
}

@inproceedings{moneta,
 author = {Caulfield, Adrian M. and De, Arup and Coburn, Joel and Mollow, Todor I. and Gupta, Rajesh K. and Swanson, Steven},
 title = {Moneta: A High-Performance Storage Array Architecture for Next-Generation, Non-volatile Memories},
 booktitle = micro,
 year = {2010},
}

@inproceedings{rely,
    author = {Michael Carbin and Sasa Misailovic and Martin C. Rinard},
    title = {Verifying Quantitative Reliability for Programs that Execute on
        Unreliable Hardware},
    booktitle = oopsla,
    year = {2013},
}

@inproceedings{holcomb-wacas,
    title = {{QBF}-Based Synthesis of Optimal Word-Splitting in Approximate Multi-Level Storage Cells},
    author = {Daniel E. Holcomb and Kevin Fu},
    booktitle = wacas,
    year = {2014},
}

@inproceedings{approxstorage,
 author = {Sampson, Adrian and Nelson, Jacob and Strauss, Karin and Ceze, Luis},
 title = {Approximate Storage in Solid-state Memories},
 booktitle = micro,
 year = {2013},
}

@inproceedings{mempersistency,
    author = {Steven Pelley and Peter M. Chen and Thomas F. Wenisch},
    title = {Memory Persistency},
    booktitle = isca,
    year = {2014},
}

@inproceedings{optfs,
    author = {Vijay Chidambaram and Thanumalayan Sankaranarayana Pillai and
        Andrea C. Arpaci-Dusseau and Remzi H. Arpaci-Dusseau},
    title = {Optimistic Crash Consistency},
    booktitle = sosp,
    year = {2013},
}

@inproceedings{diskmttf,
 author = {Schroeder, Bianca and Gibson, Garth A.},
 title = {Disk Failures in the Real World: What Does an MTTF of 1,000,000 Hours Mean to You?},
 booktitle = fast,
 year = {2007},
}

@inproceedings{googledisk,
 author = {Pinheiro, Eduardo and Weber, Wolf-Dietrich and Barroso, Luiz Andr{\'e}},
 title = {Failure Trends in a Large Disk Drive Population},
 booktitle = fast,
 year = {2007},
}

@inproceedings{nvheaps,
 author = {Coburn, Joel and Caulfield, Adrian M. and Akel, Ameen and Grupp, Laura M. and Gupta, Rajesh K. and Jhala, Ranjit and Swanson, Steven},
 title = {{NV}-Heaps: Making persistent objects fast and safe with next-generation, non-volatile memories},
 booktitle = asplos,
 year = {2011},
}

@inproceedings{mnemosyne,
 author = {Volos, Haris and Tack, Andres Jaan and Swift, Michael M.},
 title = {Mnemosyne: Lightweight persistent memory},
 booktitle = asplos,
 year = {2011},
}

@inproceedings{ecp,
 author = {Schechter, Stuart and Loh, Gabriel H. and Strauss, Karin and Burger, Doug},
 title = {Use {ECP}, not {ECC}, for hard failures in resistive memories},
 booktitle = isca,
 year = {2010},
}

@ARTICLE{separability,
author={van Zanten, A.J. and I Nengah Suparta},
journal=tit,
title={The separability of standard cyclic N-ary Gray codes},
year={2003},
volume={49},
number={2},
pages={485--487},
}

@article{dpc,
 author = {Preparata, F. and Nievergelt, J.},
 title = {Difference-preserving codes},
 journal = tit,
 issue_date = {September 1974},
 volume = {20},
 number = {5},
 year = {2006},
 pages = {643--649},
}

@inproceedings{morphablepcm,
 author = {Qureshi, Moinuddin K. and Franceschini, Michele M. and Lastras-Monta\~{n}o, Luis A. and Karidis, John P.},
 title = {Morphable memory system: A robust architecture for exploiting multi-level phase change memories},
 booktitle = isca,
 year = {2010},
}

@ARTICLE{mlcflash,
author={Takeuchi, K. and Tanaka, T. and Tanzawa, T.},
journal=jssc,
title={A multipage cell
    architecture for high-speed programming multilevel {NAND} flash memories},
year={1998},
volume={33},
number={8},
pages={1228--1238},
}

@ARTICLE{ispp,
author={Suh, Kang-Deog and Suh, Byung-Hoon and Lim, Young-Ho and Kim, Jin-Ki and Choi, Young-Joon and Koh, Yong-Nam and Lee, Sung-Soo and Kwon, Suk-Chon and Choi, Byung-Soon and Yum, Jin-Sun and Choi, Jung-Hyuk and Kim, Jang-Rae and Lim, Hyung-Kyu},
journal=jssc,
title={A 3.3 {V} 32 {Mb} {NAND} flash memory with incremental step pulse programming scheme},
year={1995},
volume={30},
number={11},
pages={1149--1156}}

@inproceedings{fgcoupling,
author={ Lee, Young-Taek and Kim, Euncheol and Lee, Jinwook and Choi, Sunmi and Lee, Seungjae and  Kim, Dong-Hwan and  Han, Wook-Kee and  Lim, Young-Ho and  Lee, Jae-Duk and  Choi, Jung-Dal and  Suh, Kang-Deog},
booktitle=isscc,
title={A 3.3 {V} 1{Gb} Multi-level {NAND} flash with non-uniform threshold voltage distribution},
year={2001},
}

@inproceedings{flash2bit,
author={Zeng, R. and Chalagalla, N. and Chu, D. and Elmhurst, D. and Goldman, M. and Haid, C. and Huq, A. and Ichikawa, T. and Jorgensen, J. and Jungroth, O. and Kajla, N. and Kajley, R. and Kawai, K. and Kishimoto, J. and Madraswala, A. and Manabe, T. and Mehta, V. and Morooka, M. and Nguyen, K. and Oikawa, Y. and Pathak, B. and Rozman, R. and Ryan, T. and Sendrowski, A. and Sheung, W. and Szwarc, M. and Takashima, Y. and Tamada, S. and Tanzawa, T. and Tanaka, T. and Taub, M. and Udeshi, D. and Yamada, S. and Yokoyama, H.},
booktitle=isscc,
title={A 172mm$^2$ 32{Gb} {MLC} {NAND} flash memory in 34nm {CMOS}},
year={2009},
}

@inproceedings{flash3bit,
author={Yan Li and Seungpil Lee and Oowada, K. and Hao Nguyen and Qui Nguyen and Mokhlesi, N. and Hsu, C. and Li, J. and Ramachandra, V. and Kamei, T. and Higashitani, M. and Pham, T. and Honma, M. and Watanabe, Y. and Ino, K. and Binh Le and Byungki Woo and Khin Htoo and Tai-Yuan Tseng and Pham, L. and Tsai, F. and Kwang-ho Kim and Yi-Chieh Chen and Min She and Jong Yuh and Chu, A. and Chen Chen and Puri, R. and Hung-Szu Lin and Yi-Fang Chen and Mak, W. and Huynh, J. and Jim Chan and Watanabe, M. and Yang, D. and Shah, G. and Souriraj, P. and Tadepalli, D. and Tenugu, S. and Gao, R. and Popuri, V. and Azarbayjani, B. and Madpur, R. and Lan, J. and Yero, E. and Feng Pan and Hong, P. and Jang Yong Kang and Moogat, F. and Yupin Fong and Cernea, R. and Huynh, S. and Trinh, C. and Mofidi, M. and Shrivastava, R. and Quader, K.},
booktitle=isscc,
title={128{Gb} 3b/cell {NAND} flash memory in 19nm technology with 18{MB/s} write rate and 400{Mb/s} toggle mode},
year={2012},
}

@unpublished{flash3bittalk,
author={ Li, Yan},
note={talk at Flash Memory Summit},
title={3 bit per cell {NAND} flash memory on 19nm technology},
year={2012},
}

@inproceedings{threestep,
author={Trinh, C. and Shibata, N. and Nakano, T. and Ogawa, M. and Sato, J. and Takeyama, Y. and Isobe, K. and Le, B. and Moogat, F. and Mokhlesi, N. and Kozakai, K. and Hong, P. and Kamei, T. and Iwasa, K. and Nakai, J. and Shimizu, T. and Honma, M. and Sakai, S. and Kawaai, T. and Hoshi, S. and Yuh, J. and Hsu, C. and Tseng, T. and Li, J. and Hu, J. and Liu, M. and Khalid, S. and Chen, J. and Watanabe, M. and Lin, H. and Yang, J. and McKay, K. and Nguyen, K. and Pham, T. and Matsuda, Y. and Nakamura, K. and Kanebako, K. and Yoshikawa, S. and Igarashi, W. and Inoue, A. and Takahashi, T. and Komatsu, Y. and Suzuki, C. and Kanazawa, K. and Higashitani, M. and Lee, S. and Murai, T. and Nguyen, K. and Lan, J. and Huynh, S. and Murin, M. and Shlick, M. and Lasser, M. and Cernea, R. and Mofidi, M. and Schuegraf, K. and Quader, K.},
booktitle=isscc,
title={A 5.6{MB/s} 64{Gb} 4b/cell {NAND} flash memory in 43nm {CMOS}},
year={2009},
}

@unpublished{threesteptalk,
author={ Trinh, C.},
note={Talk at ISSCC},
title={A 7.8{MB/s} 64{Gb} 4b/cell {NAND} flash memory in 43nm {CMOS}},
year={2009}}

@INPROCEEDINGS{writecancel,
author={Qureshi, M. K. and Franceschini, M. M. and Lastras-Montano, L. A.},
booktitle=hpca,
title={Improving read performance of Phase Change Memories via Write Cancellation and Write Pausing},
year={2010},
}

@inproceedings{improvingwrites,
 author = {Jiang, Lei and Zhao, Bo and Zhang, Youtao and Yang, Jun and Childers, Bruce R.},
 title = {Improving write operations in {MLC} phase change memory},
 booktitle = hpca,
 year = {2012},
}

@INPROCEEDINGS{flasherrors,
author={Yu Cai and Haratsch, E.F. and Mutlu, O. and Ken Mai},
booktitle=date,
title={Error patterns in {MLC} {NAND} flash memory: Measurement, characterization, and analysis},
year={2012},
}

@inproceedings{wdddmlcpcm,
    author={Sungkap Yeo and Nak Hee Seong and Hsien-Hsin S. Lee},
    title={Can Multi-Level Cell {PCM} Be Reliable and Usable? {A}nalyzing the
        Impact of Resistance Drift},
    booktitle=wddd,
    year={2012},
}

@inproceedings{mlcmodelchar,
  title={Multilevel Phase Change Memory Modeling and Experimental Characterization},
  author={Pantazi, A. and Sebastian, A. and Papandreou, N. and Breitwisch, MJ and Lam, C. and Pozidis, H. and Eleftheriou, E.},
  booktitle={European Phase Change and Ovonics Symposium (EPCOS)},
  year={2009}
}

@INPROCEEDINGS{mlcprogalgo,
author={Papandreou, N. and Pozidis, H. and Pantazi, A. and Sebastian, A. and Breitwisch, M. and Lam, C. and Eleftheriou, E.},
booktitle=iscas,
title={Programming algorithms for multilevel phase-change memory},
year={2011},
}

@INPROCEEDINGS{mlcibm,
author={Papandreou, N. and Pantazi, A. and Sebastian, A. and Breitwisch, M. and Lam, C. and Pozidis, H. and Eleftheriou, E.},
booktitle=icecs,
title={Multilevel phase-change memory},
year={2010},
}

@ARTICLE{partialreset,
author={Braga, S. and Sanasi, A. and Cabrini, A. and Torelli, G.},
journal={IEEE Transactions on Electron Devices},
title={Voltage-Driven Partial-{RESET} Multilevel Programming in Phase-Change Memories},
year={2010},
volume={57},
number={10},
pages={2556--2563},
}

@INPROCEEDINGS{mlcwritestrategies,
author={Nirschl, T. and Phipp, J.B. and Happ, T.D. and Burr, G.W. and Rajendran, B. and Lee, M.-H. and Schrott, A. and Yang, M. and Breitwisch, M. and Chen, C.-F. and Joseph, E. and Lamorey, M. and Cheek, R. and Chen, S.-H. and Zaidi, S. and Raoux, S. and Chen, Y.C. and Zhu, Y. and Bergmann, R. and Lung, H.-L. and Lam, C.},
title={Write Strategies for 2 and 4-bit Multi-Level Phase-Change Memory},
booktitle=iedm,
year={2007},
}

@INPROCEEDINGS{mlcpcmreliability,
author={Pozidis, H. and Papandreou, N. and Sebastian, A. and Mittelholzer, T. and BrightSky, M. and Lam, C. and Eleftheriou, E.},
booktitle=imw,
title={A Framework for Reliability Assessment in Multilevel Phase-Change Memory},
year={2012},
}

@INPROCEEDINGS{drifttolerant,
author={Papandreou, N. and Pozidis, H. and Mittelholzer, T. and Close, G.F. and Breitwisch, M. and Lam, C. and Eleftheriou, E.},
booktitle=imw,
title={Drift-Tolerant Multilevel Phase-Change Memory},
year={2011},
}

@INPROCEEDINGS{flasherror,
author={Mielke, N. and Marquart, T. and Ning Wu and Kessenich, J. and Belgal, H. and Schares, E. and Trivedi, F. and Goodness, E. and Nevill, L.R.},
booktitle=irps,
title={Bit error rate in {NAND} Flash memories},
year={2008},
}


@inproceedings{Clarke,
 author = {Clarke, Edmund M. and Emerson, E. Allen},
 title = {Design and Synthesis of Synchronization Skeletons Using Branching-Time Temporal Logic},
 booktitle = {Workshop on Logic of Programs},
 year = 1982,
 pages = {52--71},
 numpages = 20,
}

@Article{legay10,
  author = 	 {A. Legay and B. Delahaye},
  title = 	 {Statistical Model Checking: A brief Overview},
  journal = 	 {Quantitative Models: Expressiveness and Analysis},
  year = 	 2010}


@article{wald1945sequential,
  title={Sequential tests of statistical hypotheses},
  author={Wald, Abraham},
  journal={The Annals of Mathematical Statistics},
  volume={16},
  number={2},
  pages={117--186},
  year={1945},
  publisher={JSTOR}
}



@article{chernoff1952measure,
  title={A measure of asymptotic efficiency for tests of a hypothesis based on the sum of observations},
  author={Chernoff, Herman},
  journal={The Annals of Mathematical Statistics},
  volume={23},
  number={4},
  pages={493--507},
  year={1952},
  publisher={Institute of Mathematical Statistics}
}


@inproceedings{KNP11,
author={M. Kwiatkowska and G. Norman and D. Parker},
title={{PRISM} 4.0: Verification of Probabilistic Real-time Systems},
booktitle=cav,
year=2011,
}


@article{Younes20061368,
title = {Statistical probabilistic model checking with a focus on time-bounded
    properties},
journal = {Information and Computation},
volume = 204,
number = 9,
pages = {1368--1409},
year = 2006,
 author = {Younes, H{\aa}kan L. S. and Simmons, Reid G.},
}





@article{Younes,
author={Younes, Håkan L.S.},
year=2006,
journal={Verification, Model Checking, and Abstract Interpretation},
title={Error Control for Probabilistic Model Checking},
pages={142--156}
}


@inproceedings{Clarke:10,
title = {Statistical verification of probabilistic properties with unbounded until},
author  = {Håkan L. S. Younes and Edmund M. Clarke and Paolo Zuliani},
year  = 2010,
URL = {http://dx.doi.org/10.1007/978-3-642-19829-8_10},
booktitle = {Brazilian Symposium on Formal Methods (SBMF)},
pages = {144--160},
}


@inproceedings{escjava,
 author = {Flanagan, Cormac and Leino, K. Rustan M. and Lillibridge, Mark and Nelson, Greg and Saxe, James B. and Stata, Raymie},
 title = {Extended static checking for Java},
 booktitle = pldi,
 year = 2002,
}

@INPROCEEDINGS{obfcf,
author={Parameswaran, R. and Blough, D.M.},
booktitle=grc,
title={Privacy Preserving Collaborative Filtering Using Data Obfuscation},
year={2007},
}

@article{obfpolicy,
year={2012},
journal={The Journal of Supercomputing},
volume={61},
number={2},
title={Enhancing privacy in cloud computing via policy-based obfuscation},
author={Mowbray, Miranda and Pearson, Siani and Shen, Yun},
pages={267--291},
}

@inproceedings{obflocation,
 author = {Duckham, Matt and Kulik, Lars},
 title = {A formal model of obfuscation and negotiation for location privacy},
 booktitle = percom,
 year = {2005},
}

@ARTICLE{obfbakken,
author={Bakken, D.E. and Rarameswaran, R. and Blough, D.M. and Franz, A.A. and Palmer, T.J.},
journal={IEEE Security \& Privacy},
title={Data obfuscation: anonymity and desensitization of usable data sets},
year={2004},
volume={2},
number={6},
pages={34--41},
}

@article{rahme,
title = "Exact sample size determination for binomial experiments",
journal = "Journal of Statistical Planning and Inference",
volume = "66",
number = "1",
pages = "83--93",
year = "1998",
url = "http://www.medicine.mcgill.ca/epidemiology/joseph/publications/methodological/binexact.pdf",
}

@article{clopperpearson,
author = {Clopper, C. J. and Pearson, E. S.},
title = {THE USE OF CONFIDENCE OR FIDUCIAL LIMITS ILLUSTRATED IN THE CASE OF THE BINOMIAL},
volume = {26},
number = {4},
pages = {404--413},
year = {1934},
}

@inproceedings{sriram-pldi,
 author = {Sankaranarayanan, Sriram and Chakarov, Aleksandar and Gulwani, Sumit},
 title = {Static analysis for probabilistic programs: {Inferring} whole program properties from finitely many paths},
 booktitle = pldi,
 year = {2013},
}

@misc{infernet,
author = "Minka, T. and Winn, J.M. and Guiver, J.P. and Knowles, D.A.",
title = {{Infer.NET 2.5}},
year = 2012,
note = {Microsoft Research Cambridge. \url{http://research.microsoft.com/infernet}}
}

@incollection{ibal,
author={Avi Pfeffer},
title={The Design and Implementation of {IBAL}: A General-Purpose Probabilistic Language},
booktitle={Statistical Relational Learning},
pages={399--432},
publisher={The MIT Press},
}

@inproceedings{chaganty,
author={Arun T. Chaganty and Aditya V. Nori and Sriram K. Rajamani},
title={Efficiently Sampling Probabilistic Programs via Program Analysis},
booktitle=aistats,
year={2013},
}

@techreport{pfeffersample,
author={Avi Pfeffer},
title={A General Importance Sampling Algorithm for Probabilistic Programs},
institution={Harvard University},
year={2007},
number={TR-12-07},
}


@inproceedings{wingate-lightweight,
  title = {Lightweight Implementations of Probabilistic Programming Languages Via Transformational Compilation},
  author = {David Wingate and Andreas Stuhlm\"uller and Noah D. Goodman},
  booktitle = aistats,
  year = {2011},
}

@inproceedings{probdsl,
 author = {Kiselyov, Oleg and Shan, Chung-Chieh},
 title = {Embedded Probabilistic Programming},
 booktitle = dsl,
 year = {2009},
}

@inproceedings{zhu-popl,
 author = {Zhu, Zeyuan Allen and Misailovic, Sasa and Kelner, Jonathan A. and Rinard, Martin},
 title = {Randomized accuracy-aware program transformations for efficient approximate computations},
 booktitle = popl,
 year = {2012},
}

@inproceedings{pmonad,
 author = {Norman Ramsey and Avi Pfeffer},
 title = {Stochastic Lambda Calculus and Monads of Probability Distributions},
 booktitle = popl,
 year = {2002},
}

@article{saw,
 jstor_articletype = {research-article},
 title = {Chebyshev Inequality with Estimated Mean and Variance},
 author = {Saw, John G. and Yang, Mark C. K. and Mo, Tse Chin},
 journal = {The American Statistician},
 volume = {38},
 number = {2},
 pages = {130--132},
 year = 1984,
}

@inproceedings{pinq,
 author = {McSherry, Frank D.},
 title = {Privacy integrated queries: An extensible platform for privacy-preserving data analysis},
 booktitle = sigmod,
 year = {2009},
}

@inproceedings{airavat,
 author = {Roy, Indrajit and Setty, Srinath T. V. and Kilzer, Ann and Shmatikov, Vitaly and Witchel, Emmett},
 title = {Airavat: Security and privacy for {MapReduce}},
 booktitle = nsdi,
 year = {2010},
}

@inproceedings{gupt,
 author = {Mohan, Prashanth and Thakurta, Abhradeep and Shi, Elaine and Song, Dawn and Culler, David},
 title = {{GUPT}: Privacy preserving data analysis made easy},
 booktitle = sigmod,
 year = {2012},
}

@inproceedings{fuzz,
 author = {Reed, Jason and Pierce, Benjamin C.},
 title = {Distance makes the types grow stronger: A calculus for differential privacy},
 booktitle = icfp,
 year = {2010},
}

@inproceedings{dfuzz,
 author = {Gaboardi, Marco and Haeberlen, Andreas and Hsu, Justin and Narayan, Arjun and Pierce, Benjamin C.},
 title = {Linear dependent types for differential privacy},
 booktitle = popl,
 year = {2013},
}

@inproceedings{certipriv,
 author = {Barthe, Gilles and K\"{o}pf, Boris and Olmedo, Federico and Zanella B{\'e}guelin, Santiago},
 title = {Probabilistic relational reasoning for differential privacy},
 booktitle = popl,
 year = {2012},
}

@InProceedings{llvm,
     Author  = {Chris Lattner and Vikram Adve},
     Title = {{LLVM}: A Compilation Framework for Lifelong Program
Analysis and Transformation},
     Booktitle = cgo,
     Year  = 2004,
}

@misc{clang,
    title = {Clang: a {C} language family frontend for {LLVM}},
    note = {\url{http://clang.llvm.org}},
    key = {clang},
}

@inproceedings{PPT:05,
  author    = {Park, Sungwoo and Pfenning, Frank and Thrun, Sebastian},
  title     = {A probabilistic language based upon sampling functions},
  booktitle = popl,
  year      = {2005}
}

@inproceedings{rodinia,
    author = {S. Che and M. Boyer and J. Meng and D. Tarjan and J. W. Sheaffer
        and S.-H. Lee and K. Skadron},
    title = {Rodinia: A Benchmark Suite for Heterogeneous Computing},
    booktitle = iiswc,
    year = {2009}
}

@misc{llvminterp,
    author={{LLVM Project}},
    title={{LLVM} Interpreter},
    year=2013,
    note={\url{http://llvm.org/docs/doxygen/html/classllvm_1_1Interpreter.html}},
}

@article{VD:07,
  author  = {Frank van Diggelen},
  title   = {{GNSS Accuracy: Lies, Damn Lies, and Statistics}},
  journal = {GPS World},
  volume  = {18},
  number  = {1},
  pages   = {26--32},
  year    = {2007}
}

@article{T:98,
  author    = {Thompson, R.B.},
  title     = {Global positioning system: the mathematics of {GPS} receivers},
  journal   = {Mathematics Magazine},
  volume    = {71},
  number    = {4},
  pages     = {260--269},
  year      = {1998},
  publisher = {Mathematical Association of America}
}

@inproceedings{kozen,
author={Kozen, D.},
booktitle=focs,
title={Semantics of probabilistic programs},
year={1979},
month={Oct},
pages={101--114},
}

@inproceedings{koller,
 author = {Koller, Daphne and McAllester, David and Pfeffer, Avi},
 title = {Effective {Bayesian} Inference for Stochastic Programs},
 booktitle = aaai,
 year = {1997},
}

@inproceedings{BBGR13,
  author = {Sooraj Bhat and Johannes Borgstr\"om and Andrew D. Gordon and Claudio Russo},
  title = {Deriving Probability Density Functions from Probabilistic Functional Programs},
  booktitle = tacas,
  year = {2013},
}

@inproceedings{energytypes,
 author = {Cohen, Michael and Zhu, Haitao Steve and Senem, Emgin Ezgi and Liu, Yu David},
 title = {Energy Types},
 booktitle = oopsla,
 year = {2012},
}

@INPROCEEDINGS{uva-adder,
author={Weber, M. and Putic, M. and Hang Zhang and Lach, J. and Jiawei Huang},
booktitle=iscas,
title={Balancing Adder for error tolerant applications},
year={2013},
}

@inproceedings{gradualfp,
    title = {Gradual typing for functional languages},
    author = {Jeremy G. Siek and Walid Taha},
    booktitle = {Scheme and Functional Programming Workshop (Scheme)},
    year = {2006},
}

@inproceedings{thf-gradual,
    title = {Interlanguage Migration: From Scripts to Programs},
    author = {Sam Tobin-Hochstadt and Matthias Felleisen},
    booktitle = dls,
    year = {2006},
}

@inproceedings{approxdebug,
    author = {Michael F. Ringenburg and Adrian Sampson and Isaac Ackerman and
        Luis Ceze and Dan Grossman},
    title = {Monitoring and Debugging the Quality of Results in Approximate Programs},
    booktitle = asplos,
    year = {2015},
}

@inproceedings{uncertaint,
    title = {{Uncertain{\textless}T{\textgreater}}: A First-Order Type for Uncertain Data},
    author = {James Bornholt and Todd Mytkowicz and Kathryn S. McKinley},
    booktitle = asplos,
    year = {2014},
}

@inproceedings{z3,
 author = {De Moura, Leonardo and Bj{\o}rner, Nikolaj},
 title = {{Z3}: An Efficient {SMT} Solver},
 booktitle = tacas,
 year = {2008},
}

@inproceedings{quora,
 author = {Venkataramani, Swagath and Chippa, Vinay K. and Chakradhar, Srimat T. and Roy, Kaushik and Raghunathan, Anand},
 title = {Quality Programmable Vector Processors for Approximate Computing},
 booktitle = micro,
 year = {2013},
}

@inproceedings{paraprox,
 author = {Samadi, Mehrzad and Jamshidi, Davoud Anoushe and Lee, Janghaeng and Mahlke, Scott},
 title = {Paraprox: Pattern-based Approximation for Data Parallel Applications},
 booktitle = asplos,
 year = {2014},
}

@techreport{expax-tr,
    author = {Esmaeilzadeh, Hadi and Ni, Kangqi and Naik, Mayur},
    title = {Expectation-Oriented Framework for Automating Approximate
        Programming},
    number = {GT-CS-13-07},
    institution = {Georgia Institute of Technology},
    url = {http://hdl.handle.net/1853/49755},
    year = {2013},
}

@article{procedurecloning,
 author = {Cooper, Keith D and Hall, Mary W and Kennedy, Ken},
 title = {A Methodology for Procedure Cloning},
 journal = {Computer Languages},
 volume = {19},
 number = {2},
 month = apr,
 year = {1993},
 pages = {105--117},
}

@inproceedings{precimonious,
 author = {Rubio-Gonz\'{a}lez, Cindy and Nguyen, Cuong and Nguyen, Hong Diep and Demmel, James and Kahan, William and Sen, Koushik and Bailey, David H. and Iancu, Costin and Hough, David},
 title = {Precimonious: Tuning Assistant for Floating-point Precision},
 booktitle = sc,
 year = {2013},
}

@inproceedings{stoke-fp,
    author = {Eric Schkufza and Rahul Sharma and Alex Aiken},
    title = {Stochastic Optimization of Floating-Point Programs with Tunable
        Precision},
    booktitle = pldi,
    year = {2014},
}

@inproceedings{chlorophyll,
 author = {Phothilimthana, Phitchaya Mangpo and Jelvis, Tikhon and Shah, Rohin and Totla, Nishant and Chasins, Sarah and Bodik, Rastislav},
 title = {Chlorophyll: Synthesis-aided Compiler for Low-power Spatial Architectures},
 booktitle = pldi,
 year = {2014},
}

@inproceedings{anpu,
    author = {Renée {St. Amant} and Amir Yazdanbakhsh and Jongse Park and
        Bradley Thwaites and Hadi Esmaeilzadeh and Arjang Hassibi and Luis
            Ceze and Doug Burger},
    title = {General-Purpose Code Acceleration with Limited-Precision Analog
        Computation},
    booktitle = isca,
    year = {2014},
}

@inproceedings{sage,
  author = {Samadi, Mehrzad and Lee, Janghaeng and Jamshidi, D. Anoushe and Hormati, Amir and Mahlke, Scott},
 title = {SAGE: Self-tuning Approximation for Graphics Engines},
 booktitle = micro,
 year = {2013},
}

@inproceedings{rinard-hotpar,
    author = {Martin Rinard},
    title = {Parallel Synchronization-Free Approximate Data Structure
        Construction},
    booktitle = hotpar,
    year = {2013},
}

@inproceedings{canal,
    author = {Michael F. Ringenburg and Sung-Eun Choi},
    title = {Optimizing Loop-level Parallelism in {Cray} {XMT} Applications},
    booktitle = {Cray User Group Proceedings},
    month = May,
    year = {2009},
}

@inproceedings{passert,
    author = {Adrian Sampson and Pavel Panchekha and Todd Mytkowicz and
        Kathryn S. McKinley and Dan Grossman and Luis Ceze},
    title = {Expressing and Verifying Probabilistic Assertions},
    booktitle = pldi,
    year = {2014},
}

@inproceedings{temam-isca,
  author    = {Olivier Temam},
  title     = {A defect-tolerant accelerator for emerging high-performance
               applications},
  booktitle = isca,
  year      = 2012,
}

@INPROCEEDINGS{temam-isca13,
  author = {Bilel Belhadj and Antoine Joubert and Zheng Li and Rodolphe Heliot and Olivier Temam},
  title = {Continuous Real-World Inputs Can Open Up Alternative Accelerator Designs},
  booktitle = isca,
    pages = {1--12},
  year = {2013},
}

@article{torftf,
  author     = {Aamodt, Tor M. and Chow, Paul},
  title      = {Compile-time and instruction-set methods for improving
                floating- to fixed-point conversion accuracy},
  journal    = tecs,
  issue_date = {April 2008},
  volume     = {7},
  number     = {3},
  month      = May,
  year       = 2008,
  pages      = {26:1--26:27},
  ee         = {http://doi.acm.org/10.1145/1347375.1347379},
}

@INPROCEEDINGS{deditor,
author={Hiranandani, S. and Kennedy, K. and Tseng, C.-W. and Warren, S.},
booktitle=sc,
title={The {D} Editor: a new interactive parallel programming tool},
year={1994},
}

@inproceedings{snnap,
 author = {Thierry Moreau and Mark Wyse and Jacob Nelson and Adrian Sampson and Hadi Esmaeilzadeh and Luis Ceze and Mark Oskin},
 title = {{SNNAP}: Approximate Computing on Programmable {SoCs} via Neural Acceleration},
 booktitle = hpca,
 year = {2015},
}

@article{taco-soc,
 author = {Fang, Shuangde and Du, Zidong and Fang, Yuntan and Huang, Yuanjie and Chen, Yang and Eeckhout, Lieven and Temam, Olivier and Li, Huawei and Chen, Yunji and Wu, Chengyong},
 title = {Performance Portability Across Heterogeneous {SoCs} Using a Generalized Library-Based Approach},
 journal = taco,
 volume = {11},
 number = {2},
 month = jun,
 year = {2014},
 pages = {21:1--21:25},
}

@misc{www:msp430,
	Author = {{Texas Instruments, Inc.}},
	note = {\url{http://www.ti.com/msp430}},
	Title = {{{MSP430} Ultra-Low Power Microcontrollers}}}

@inproceedings{papi,
  author    = {Matthew M. Papi and
               Mahmood Ali and
               Telmo Luis Correa Jr. and
               Jeff H. Perkins and
               Michael D. Ernst},
  title     = {Practical pluggable types for {Java}},
  booktitle = issta,
  year      = {2008},
}

@article{wisp-transactions,
	Author = {Alanson P. Sample and Daniel J. Yeager and Pauline S. Powledge and Alexander V. Mamishev and Joshua R. Smith},
	Journal = {IEEE Transactions on Instrumentation and Measurement},
	Title = {Design of an {RFID}-Based Battery-Free Programmable Sensing Platform},
	Volume = 57,
	Number = 11,
	Pages = {2608--2615},
	Month = Nov,
	Year = 2008}

@inproceedings{shankar:typequal,
  author    = {Umesh Shankar and
               Kunal Talwar and
               Jeffrey S. Foster and
               David Wagner},
  title     = {Detecting Format String Vulnerabilities with Type Qualifiers},
  booktitle = {USENIX Security Symposium},
  year      = 2001,
}

@article{knapsack,
    title = {Discrete-Variable Extremum Problems},
    author = {Dantzig, George B.},
    journal = {Operations Research},
    volume = {5},
    number = {2},
    pages = {266--277},
    year = 1957,
}

@inproceedings{ansel-autotuning,
  author    = {Jason Ansel and
               Yee Lok Wong and
               Cy P. Chan and
               Marek Olszewski and
               Alan Edelman and
               Saman P. Amarasinghe},
  title     = {Language and Compiler Support for Auto-Tuning Variable-Accuracy
               Algorithms},
  booktitle = cgo,
  year      = 2011,
}

@inproceedings{petabricks,
  author    = {Jason Ansel and
               Cy P. Chan and
               Yee Lok Wong and
               Marek Olszewski and
               Qin Zhao and
               Alan Edelman and
               Saman P. Amarasinghe},
  title     = {{PetaBricks}: a language and compiler for algorithmic choice},
  booktitle = pldi,
  year      = 2009,
}

@inproceedings{approxit,
 author = {Zhang, Qian and Yuan, Feng and Ye, Rong and Xu, Qiang},
 title = {{ApproxIt}: An Approximate Computing Framework for Iterative Methods},
 booktitle = dac,
 year = {2014},
}

@phdthesis{cqual,
  author    = {Jeffrey S. Foster},
  title     = {Type Qualifiers: Lightweight Specifications to Improve Software Quality},
  school = {University of California, Berkeley},
  month     = Dec,
  year      = 2002,
}

@phdthesis{parsec,
  author = {Christian Bienia},
  title  = {Benchmarking Modern Multiprocessors},
  school = {Princeton University},
  year   = 2011,
  month  = Jan
}

@article{fjava,
	Author = {A. Igarashi and B. C. Pierce and P. Wadler},
	Journal = toplas,
	Number = 3,
	Title = {{F}eatherweight {J}ava: a minimal core calculus for {J}ava and {GJ}},
	Volume = 23,
	Year = 2001}

@mastersthesis{duwe-thesis,
    author = {Duwe, Henry},
    title = {Exploiting application level error resilience via deferred execution},
    school = {University of Illinois at Urbana-Champaign},
    year = {2013},
}

@INPROCEEDINGS{rahimi,
author={Rahimi, A. and Marongiu, A. and Gupta, R.K. and Benini, L.},
booktitle=codes,
title={A variability-aware {OpenMP} environment for efficient execution of
    accuracy-configurable computation on shared-{FPU} processor clusters},
year={2013},
}

@INPROCEEDINGS{fang-pcm,
author = {Yuntan Fang and Huawei Li and Xiaowei Li},
title = {{SoftPCM}: Enhancing Energy Efficiency and Lifetime of Phase Change Memory in Video Applications via Approximate Write},
booktitle =ats,
year = {2012},
}

@inproceedings{palframan-gpu,
  author    = {David J. Palframan and
               Nam Sung Kim and
               Mikko H. Lipasti},
  title     = {Precision-aware soft error protection for {GPUs}},
  booktitle = hpca,
  year      = {2014},
}

@inproceedings{soft-ntc,
  author    = {Ulya R. Karpuzcu and
               Ismail Akturk and
               Nam Sung Kim},
  title     = {Accordion: Toward soft Near-Threshold Voltage Computing},
  booktitle = hpca,
  year      = {2014},
}

@inproceedings{schulte,
 author = {Schulte, Eric and Dorn, Jonathan and Harding, Stephen and Forrest, Stephanie and Weimer, Westley},
 title = {Post-compiler Software Optimization for Reducing Energy},
 booktitle = asplos,
 year = {2014},
}

@INPROCEEDINGS{tabsh,
author={Abdallah, S. and Chehab, A. and Kayssi, A. and Elhajj, I.H.},
booktitle=iceac,
title={{TABSH}: Tag-based stochastic hardware},
year={2013},
}

@inproceedings{herding,
 author = {Sartori, John and Kumar, Rakesh},
 title = {Branch and Data Herding: Reducing Control and Memory Divergence for
     Error-tolerant {GPU} Applications},
 booktitle = pact,
 year = {2012},
}

@inproceedings{asac,
 author = {Roy, Pooja and Ray, Rajarshi and Wang, Chundong and Wong, Weng Fai},
 title = {{ASAC}: Automatic Sensitivity Analysis for Approximate Computing},
 booktitle = lctes,
 year = {2014},
}

@inproceedings{sparkk,
    author = {Jan Lucas and Mauricio Alvarez Mesa and Michael Andersch and Ben
        Juurlink},
    title = {Sparkk: Quality-Scalable Approximate Storage in DRAM},
    booktitle = {The Memory Forum},
    year = {2014},
}

@INPROCEEDINGS{lwc,
author={Grigorian, Beayna and Reinman, Glenn},
booktitle=ahs,
title={Dynamically adaptive and reliable approximate computing using light-weight error analysis},
year={2014},
}

@inproceedings{softcoherence,
    author = {G. Long and F. T. Chong and D. Franklin and J. Gilbert and D. Fan.},
    title = {Soft Coherence: Preliminary Experiments with Error-Tolerant
        Memory Consistency in Numerical Applications},
    booktitle = {Workshop on Chip Multiprocessor Memory Systems and
        Interconnects (CMP-MSI)},
    year = {2009},
}

@inproceedings{lva-sanmiguel,
    author = {Joshua San Miguel and Mario Badr and Enright Jerger, Natalie},
    title = {Load Value Approximation},
    booktitle = micro,
    year = {2014},
}

@inproceedings{lva-thwaites,
    author = {Thwaites, Bradley and Pekhimenko, Gennady and Yazdanbakhsh, Amir and Park, Jongse and Mururu, Girish and Esmaeilzadeh, Hadi and Mutlu, Onur and Mowry, Todd},
    title = {Rollback-Free Value Prediction with Approximate Loads},
    booktitle = pact,
    year = {2014},
}

@inproceedings{khudia-tolerance,
 author = {Khudia, Daya Shanker and Mahlke, Scott},
 title = {Harnessing Soft Computations for Low-Budget Fault Tolerance},
 booktitle = micro,
 year = {2014},
}

@inproceedings {virus,
author = {Lucas Wanner and Mani Srivastava},
title = {{ViRUS}: Virtual Function Replacement Under Stress},
booktitle = hotpower,
year = {2014},
}

@ARTICLE{shi-cal,
author={Shi, Q. and Hoffmann, H. and Khan, O.},
journal={Computer Architecture Letters},
title={A {HW-SW} Multicore Architecture to Tradeoff Program Accuracy and Resilience Overheads},
year={2014},
}

@INPROCEEDINGS{axilog,
author={Yazdanbakhsh, A. and Mahajan, D. and Thwaites, B. and Jongse Park and Nagendrakumar, A. and Sethuraman, S. and Ramkrishnan, K. and Ravindran, N. and Jariwala, R. and Rahimi, A. and Esmaeilzadeh, H. and Bazargan, K.},
booktitle=date,
title={Axilog: Language support for approximate hardware design},
year={2015},
}

@inproceedings{emeuro,
 author = {McAfee, Lawrence and Olukotun, Kunle},
 title = {{EMEURO}: A Framework for Generating Multi-purpose Accelerators via Deep Learning},
 booktitle = cgo,
 year = {2015},
}

@phdthesis{miao-thesis,
	Author = {Jin Miao},
	School = {The University of Texas at Austin},
	Title = {Modeling and synthesis of approximate digital circuits},
	Year = {2014}
}

@inproceedings{lax,
author = {Phillip Stanley-Marbell and Martin Rinard},
title = {Lax: Driver Interfaces for Approximate Sensor Device Access},
booktitle = hotos,
year = {2015},
}

@inproceedings{decaf,
    author = {Brett Boston and Adrian Sampson and Dan Grossman and Luis Ceze},
    title = {Probability Type Inference for Flexible Approximate Programming},
    booktitle = oopsla,
    year = {2015},
}

@phdthesis{hadi-thesis,
    author = {Hadi Esmaeilzadeh},
    school = {University of Washington},
    title = {Approximate Acceleration for a Post Multicore Era},
    year = {2013},
}

@phdthesis{ringenburg-thesis,
    author = {Michael F. Ringenburg},
    school = {University of Washington},
    title = {Dynamic Analyses of Result Quality in Energy-Aware Approximate Programs},
    year = {2014},
}

@inproceedings{commguard,
 author = {Yetim, Yavuz and Malik, Sharad and Martonosi, Margaret},
 title = {{CommGuard}: Mitigating Communication Errors in Error-Prone Parallel Execution},
 booktitle = asplos,
 year = {2015},
}

@inproceedings{hierarchfpu,
	author = {Yeh, Thomas Y. and Faloutsos, Petros and Ercegovac, Milos and Patel, Sanjay J. and Reinman, Glen},
	title = {The Art of Deception: Adaptive Precision Reduction for Area Efficient Physics Acceleration},
	booktitle = micro,
	year = {2007}
}

@inproceedings{neuralgpu,
author={Grigorian, Beayna and Reinman, Glenn},
booktitle=iccd,
title={Accelerating Divergent Applications on {SIMD} Architectures Using Neural Networks},
year={2014},
}

@inproceedings{chisel,
 author = {Misailovic, Sasa and Carbin, Michael and Achour, Sara and Qi, Zichao and Rinard, Martin C.},
 title = {Chisel: Reliability- and Accuracy-aware Optimization of Approximate Computational Kernels},
 booktitle = oopsla,
 year = {2014},
}

@misc{passert-tr,
    author = {Adrian Sampson and Pavel Panchekha and Todd Mytkowicz and
        Kathryn S. McKinley and Dan Grossman and Luis Ceze},
    title = {Probabilistic Assertions: Extended Semantics and Proof},
    note = {ACM Digital Library auxiliary materials accompanying the paper.
    \url{http://dx.doi.org/10.1145/2594291.2594294}},
    year = {2014},
}

@inproceedings{eon,
 author = {Sorber, Jacob and Kostadinov, Alexander and Garber, Matthew and Brennan, Matthew and Corner, Mark D. and Berger, Emery D.},
 title = {Eon: A Language and Runtime System for Perpetual Systems},
 booktitle = sensys,
 year = {2007},
}

@ARTICLE{partially-forgetful,
author={Shoushtari, Majid and BanaiyanMofrad, Abbas and Dutt, Nikil},
journal={IEEE Embedded Systems Letters},
title={Exploiting Partially-Forgetful Memories for Approximate Computing},
year={2015},
month={March},
volume={7},
number={1},
pages={19--22},
}

@inproceedings{rumba,
 author = {Khudia, Daya S. and Zamirai, Babak and Samadi, Mehrzad and Mahlke, Scott},
 title = {Rumba: An Online Quality Management System for Approximate Computing},
 booktitle = isca,
 year = {2015},
}

@inproceedings{wddd-quality,
    author = {Ismail Akturk and Karen Khatamifard and Ulya R. Karpuzcu},
    title = {On Quantification of Accuracy Loss in Approximate Computing},
    booktitle = wddd,
    year = {2015},
}

@ARTICLE{rram-npu,
author={Boxun Li and Peng Gu and Yi Shan and
Yu Wang and Yiran Chen and Huazhong Yang},
journal=tcad,
title={{RRAM}-based Analog Approximate Computing},
year={2015},
}

@inproceedings{deanondram,
 author = {Rahmati, Amir and Hicks, Matthew and Holcomb, Daniel E. and Fu, Kevin},
 title = {Probable Cause: The Deanonymizing Effects of Approximate {DRAM}},
 booktitle = isca,
 year = {2015},
}

@inproceedings{spintronic-approx,
 author = {Ranjan, Ashish and Venkataramani, Swagath and Fong, Xuanyao and Roy, Kaushik and Raghunathan, Anand},
 title = {Approximate Storage for Energy Efficient Spintronic Memories},
 booktitle = dac,
 year = {2015},
}

@inproceedings{memristor-npu,
 author = {Liu, Xiaoxiao and Mao, Mengjie and Liu, Beiye and Li, Hai and Chen, Yiran and Li, Boxun and Wang, Yu and Jiang, Hao and Barnell, Mark and Wu, Qing and Yang, Jianhua},
 title = {{RENO}: A High-efficient Reconfigurable Neuromorphic Computing Accelerator Design},
 booktitle = dac,
 year = {2015},
}

@inproceedings{configurable-adder,
 author = {Shafique, Muhammad and Ahmad, Waqas and Hafiz, Rehan and Henkel, J\"{o}rg},
 title = {A Low Latency Generic Accuracy Configurable Adder},
 booktitle = dac,
 year = {2015},
}

@inproceedings{adder-iccad13,
 author = {Ye, Rong and Wang, Ting and Yuan, Feng and Kumar, Rakesh and Xu, Qiang},
 title = {On Reconfiguration-oriented Approximate Adder Design and Its Application},
 booktitle = iccad,
 year = {2013},
}

@ARTICLE{adder-tcad,
author={Gupta, Vaibhav and Mohapatra, Debabrata and Raghunathan, Anand and
    Roy, Kaushik},
journal=tcad,
title={Low-Power Digital Signal Processing Using Approximate Adders},
year={2013},
month={Jan},
volume={32},
number={1},
pages={124--137},
}

@inproceedings{adder-optimal,
 author = {Miao, Jin and He, Ku and Gerstlauer, Andreas and Orshansky, Michael},
 title = {Modeling and Synthesis of Quality-energy Optimal Approximate Adders},
 booktitle = iccad,
 year = {2012},
}

@inproceedings{adder-dac12,
 author = {Kahng, Andrew B. and Kang, Seokhyeong},
 title = {Accuracy-configurable Adder for Approximate Arithmetic Designs},
 booktitle = dac,
 year = {2012},
}

@INPROCEEDINGS{adder-isic09,
author={Ning Zhu and Wang Ling Goh and Kiat Seng Yeo},
booktitle=isic,
title={An enhanced low-power high-speed Adder For Error-Tolerant application},
year={2009},
}

@inproceedings{adder-date08,
 author = {Verma, Ajay K. and Brisk, Philip and Ienne, Paolo},
 title = {Variable Latency Speculative Addition: A New Paradigm for Arithmetic Circuit Design},
 booktitle = date,
 year = {2008},
}

@article{micropower-dsp,
  title={A micropower programmable {DSP} using approximate signal processing based on distributed arithmetic},
  author={Amirtharajah, Rajeevan and Chandrakasan, Anantha P},
  journal=jssc,
  volume={39},
  number={2},
  pages={337--347},
  year={2004},
}

@inproceedings{scalable-classifier,
 author = {Venkataramani, Swagath and Raghunathan, Anand and Liu, Jie and Shoaib, Mohammed},
 title = {Scalable-effort Classifiers for Energy-efficient Machine Learning},
 booktitle = dac,
 year = {2015},
}

@inproceedings{synthesis-date14,
 author = {Ranjan, Ashish and Raha, Arnab and Venkataramani, Swagath and Roy, Kaushik and Raghunathan, Anand},
 title = {{ASLAN}: Synthesis of Approximate Sequential Circuits},
 booktitle = date,
 year = {2014},
}

@inproceedings{venkataramani-date13,
 author = {Venkataramani, Swagath and Roy, Kaushik and Raghunathan, Anand},
 title = {Substitute-and-simplify: A Unified Design Paradigm for Approximate and Quality Configurable Circuits},
 booktitle = date,
 year = {2013},
}

@inproceedings{venkataramani-dac12,
 author = {Venkataramani, Swagath and Sabne, Amit and Kozhikkottu, Vivek and Roy, Kaushik and Raghunathan, Anand},
 title = {{SALSA}: Systematic Logic Synthesis of Approximate Circuits},
 booktitle = dac,
 year = {2012},
}

@inproceedings{metafunctions,
  title={Design of voltage-scalable meta-functions for approximate computing},
  author={Mohapatra, Debabrata and Chippa, Vinay K and Raghunathan, Anand and Roy, Kaushik},
  booktitle=date,
  year={2011},
}

@inproceedings{forgiving-parallel,
  title={Exploiting the forgiving nature of applications for scalable parallel execution},
  author={Meng, Jiayuan and Raghunathan, Anand and Chakradhar, Srimat and Byna, Surendra},
  booktitle=ipdps,
  year={2010},
}

@inproceedings{storm,
 author = {Chippa, Vinay K. and Venkataramani, Swagath and Roy, Kaushik and Raghunathan, Anand},
 title = {{StoRM}: A Stochastic Recognition and Mining Processor},
 booktitle = ispled,
 year = {2014},
}

@inproceedings{tziantzioulis-dac15,
 author = {Tziantzioulis, G. and Gok, A. M. and Faisal, S. M. and Hardavellas, N. and Ogrenci-Memik, S. and Parthasarathy, S.},
 title = {{b-HiVE}: A Bit-level History-based Error Model with Value Correlation for Voltage-scaled Integer and Floating Point Units},
 booktitle = dac,
}

@inproceedings{venkatesan-iccad11,
 author = {Venkatesan, Rangharajan and Agarwal, Amit and Roy, Kaushik and Raghunathan, Anand},
 title = {{MACACO}: Modeling and Analysis of Circuits for Approximate Computing},
 booktitle = iccad,
 year = {2011},
}
```


[BIB]
