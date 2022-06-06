# Dynamically handling task disruptions by composing together behavior modules.

Biological neural networks operate in the presence of task disruptions as they guide organisms toward goals. 
A familiar stream of stimulus-response causations can be disrupted by subtask streams imposed by the environment. 
For example, taking a familiar path to a foraging area might be disrupted by the presence of a predator, 
necessitating a “detour” to the area. The detour can be a known alternative path that must be dynamically 
composed with the original path to accomplish the overall task. In this project, overarching base paths are 
disrupted by independently learned path modules in the form of insertion, substitution, and deletion modifications 
to the base paths such that the resulting modified paths are novel to the network. The network’s performance 
is then tested on these paths that have been learned in piecemeal fashion. In sum, the network must compose a 
new task on the fly. Several network architectures are tested: Time delay neural network (TDNN), Long short-term memory 
(LSTM), Temporal convolutional network (TCN), and Morphognosis, a hierarchical neural network. LSTM and Morphognosis 
perform significantly better for this task.

[Dynamically handling task disruptions by composing together behavior modules](http://tom.portegys.com/research.html#taskcomposer)

Build with Eclipse project and export to bin/worldcomposer.jar to run with commands in work directory.

Commands:

world_composer.sh: Compose paths by inserting, substituting, and deleting modular segments on a base path.<br /> 
world_grammar.sh: Generate a grammar that can produce paths from a starting state to a goal state in the world.<br />
world_path_nn.sh: World path neural network (deeplearning4j)<br />
world_path_nn.py: TDNN/Morphognosis (Keras)<br />
world_path_rnn.py: LSTM (Keras)<br />
world_path_tcn.py: TCN (Keras)<br />

To run:

1. Run world_composer.sh to build world path datesets for neural networks.
   "-help" for usage.
   "-dilateEvents normalize -skewIntervals .5" to generate Morphognosis paths.
2. Train and test neural networks: python world_path_&ast;.py and world_path_nn.sh
   Results written to world_path_&ast;_results.json files.

