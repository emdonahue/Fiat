# Interpretational User Interface (IUI)
In 1958, John McCarthy introduced a conceptual vision for an AI system he called the "Advice Taker." 
He imagined being able to speak to an artificially intelligent computer program about itself and have it 
understand and improve its own programming in response to human instruction. This project is an exploratory research 
effort inspired by Advice Taker. It attempts to envision how natural language might be made into an effective interface 
for programming an AI system by having conversations with the system about itself and the world.
The current working title of the project is the "Interpretational User Interface (IUI)," so called because its central action is attempting to make sense of ambiguous user gestures and expressions by interpreting them in the context of its formal representations. 

# Demo
The fundemantal interface takes the form of a text based interaction with the AI agent. 
All of the following responses are capable of being generated by the code in this repository, although current runtimes are such that
it is impractical to use interactively. Moreover, there is no clean UI for facilitating these interactions.
At present, running and interacting with the system requires some knowledge of its internals. 
This section, therefore, constitutes the most accessible demonstration of the system in the form of a description of its 
internal workings and a walkthrough of a few illustrative interactions.

## Description of the system
Internally, the system is organized as a single deductive database of predicates, much like any Datalog database.
All action in the system happens by adding predicates to this database.
Some classes of predicates are given special meanings by the system, which accounts for the nontrivial actions the system is able to perform.
For instance, when the user types an utterance to the system, a timestamped event predicate is added to the database.
This event predicate triggers the system's parser, which attempts to decode the utterance into a set of predicates to be further added to the database, potentially triggering additional responsive actions.

## Interacting with the Database
One of the simplest useful utterances a user can issue is `define`, which simply adds a predicate to the database.

```
(define (belief (cat Catullus)))
```

This example adds the predicate `(belief (cat Catullus)))` to the database, which describes the belief that Catullus is a cat. This belief may interact with other predicates in the belief subsystem through deductive rules, for instance, although beliefs are not further discussed in this demo.

One important thing to note about `define` is that it is not a natural language utterance. Surrounding any sequence of symbols with parentheses in the interface acts as quotation (natural language parentheses are currently disallowed). As such, `(define (belief (cat Catullus)))` literally passes the quoted list `(define (belief (cat Catullus)))` into the system's interpretational subsystem. If this subsystem receives a quoted list rather than a sequence of symbols, it treats it as a command directly to the system and executes it without interpretation, as in this instance. This gives the programmer the tools to work with the system before its natural language interface is fully operational and with which to build that interface.

## Interacting in Natural Language
Using `define`, it is possible to start programming into the system the grammar with which it will interpret natural language utterances, such as by programming the system to reply with "hello" when greeted:

```
(define (lexeme (hello) S (intention (display (hello)))))
```

This adds a `lexeme` predicate, which is a special predicate used by the system's Combinatory Categorial Grammar-based (CCG) semantic parser to define its grammar. Although a detailed technical discussion of CCG is beyond the scope of this demo, the `lexeme` predicate has three meaningful items. The first, `(hello)` is a list of words corresponding to the words appearing in a natural language utterance. The parser will scan for those words in the input and assign them a syntactic type, `S`, representing that "hello" constitutes a complete utterance (S for sentence), and a semantic meaning, `(intention (display (hello)))` which corresponds to an intention predicate. 

If the user subsequently types "hello," the system will add the intention predicate `(intention (display (hello)))` to the database, which activates the intention subsystem to take the specified action, in this case displaying the sequence of symbols `(hello)`. The system will therefore reply with "hello" when greeted. 

## Mixing Natural and Artificial Language
The purpose of this architecture is not, of course, to ask the programmer to program an entire natural language interface by hand. Rather, it is to allow for the definition of natural language terms that, when freely mixed with formal languages, can enhance the expressivity of the entire system beyond that which would be achievable in a purely formal language. The starting point for that expressivity is defining natural language utterances that can act on formal structures:

```
(define (lexeme (say) (S / N) (lambda x (intention (display (var x))))))
```

This lexeme defines the word "say" as a lambda expression that takes a variable and adds the intention to display it as before. This yields the ability to reproduce the above functionality through composition, as in:

```
"say (hello)"
```

"Say" here is a natural language utterance, while "(hello)" is a quoted list that semantically evaluates to itself within the parser. This means that `(hello)' will be passed into the lambda expression, ultimately reducing to the behavior above, although now any term could be passed to say. While we have defined say to simply display the quoted term, there is no reason it could not be configured to eval that term before displaying the result. We can imagine freely interleaving formal expressions in a language such as Scheme with natural language utterances. The benefit of doing so is that formal expressions are, of necessity, completely precise, which in turn means that the programmer must transcribe them precisely in their entirety. Natural language expressions, by contrast, are often ambiguous and elliptical, relying heavily on context for their interpretation. Combinations of natural and formal languages, consequently, allow the specification of precise programmatic meanings with the economy of natural language interaction, as in the following example:

```
(define (lexeme (means) ((S / N) \ N) (lambda x (lambda y (parse x y)))))
(define (lexeme (my cat) N (id 42)))
```

This defines the natural language word "means" as in the (admittedly slightly ungrammatical for demonstration purposes) sentence, `(Catullus) means my cat`. Here, the quoted name "Catullus" and the interpreted phrase "my cat," which resolves to entity identifier predicate `(id 42)` are combined into the final predicate `(parse (Catullus) (id 42))`. The `parse` predicate will be described in the next section, but for the moment it suffices to notice that the desired formal expression `(parse (Catullus) (id 42))` would have been difficult to specify by hand for the system programmer. Looking up the object identifier for the cat in question would almost certainly have been more time consuming and error prone than simply describing the value in question with the phrase "my cat" or any other reasonable permutation that the system might be expected to understand. In this fashion, it becomes possible to build complex formal expressions, namely the global database that constitutes the being of the AI agent, by mixing formal and informal expressions as needed. 

## Learning from Experience
The example in the previous section suggests the possibilities of using natural language to augment the construction of the formal structure that is the agent's database, but it begs the question of how the system could come to understand the utterance "my cat" in the first place if it were not specified by the programmer. Part of the answer to this question is that, as the programmer bootstraps the basic linguistic and other subsystems via increasing amounts of natural language expressions, the system can start to learn on its own and infer the relevant structure more and more efficiently as it accumulates more data from interactions. This is the purpose of the `parse` predicate. 

Every time the system receives a natural language command, it parses it and adds a `(parse <sentence> <semantics>)` predicate to the database. These automatically generated parses are joined by parses such as those defined by the programmer through the use of the "means" lexical item and other such devices that allow the more direct specification of sentence/meaning pairs. Periodically, the system gathers up the sentence/meaning pairs it has collected along with the lexical items defined by the programmer and performs unsupervised grammar induction, which automatically generates new lexemes that best explain how the sentences in question came to represent their respective parses. For instance, consider the more expansive phrasal definition:

```
(call my cat) means say (Catullus)
```

Here, the programmer expresses the higher lever instruction that the entire phrase "call my cat" means the same thing as the expression "say (Catullus)," which evaluates to `(intention (display (Catullus)))`. With a few more examples to disambiguate, the system will eventually learn that "call" likely corresponds to a meaning such as `(lambda x (intention (display (var x))))`, comparable to "say" and "my cat" may have an ambiguous meaning between the cat's identifier and the cat's name, which will have to be resolved statistically with reference to the rest of the sentence and the ambient context. 
Notably, neither "call" nor this meaning of "my cat" were specified by the programmer, who only had to give high level equivalences for the system to deduce the relevant combinatorial meanings of the constituent parts that can then be used in other constructions.

## Future Work
The interaction described here is at present limited both by efficiency concerns and by general architectural decisions still under active consideration. Nevertheless, it is perhaps enough to give some intuition for the central strange loop at the core of this project. Namely, the more the programmer develops the system, the more the system will become able to adapt automatically to the programmer through their interaction data. By making the predicates themselves available for reference and conversation, it becomes possible, for instance, to contradict or correct mis-parsed sentences and help the system curate its growing dataset through truth maintenance procedures that retrain the model as more is learned about its own workings. 

The immediate next steps for this project involve a great deal of code cleaning, but after that the task will be to begin experimenting with the system in an attempt to determine what affordances need to be in place to let the strange loop take hold.

# FAQ
**Q:** 

**A:** Yes, the class names are a reference to Sword Art Online. No, I will not apologize. 
