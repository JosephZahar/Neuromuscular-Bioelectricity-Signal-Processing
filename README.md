# Neuromuscular-Bioelectricity-Signal-Processing
<style>
body {
text-align: justify}
</style>
An analysis of muscle activation, when increasing the repetitions of a single-arm dumbbell curl, supported by raw data of muscular activity obtained from sensors and processed using MATLAB.

Surface EMG signals were recorded on the right arm from the biceps femoris, the triceps brachii, the flexor digitorum superficialis (anterior part of the forearm), and dorsal interossei (back of the hand). These allowed us to obtain data from each muscle during dynamic performance and to compare it to the reference electrode. The reference electrode is generally positioned to an electrically unaffected and nearby area (connective tissue) and is useful to detect internal and external noises.

.<img width="328" alt="Screen Shot 2021-12-18 at 11 47 09 PM" src="https://user-images.githubusercontent.com/70657426/146658495-2def66c1-2299-4694-b84f-97623d35500c.png">

Before interpreting and analyzing the results, we processed the Raw data obtained from the sensors using MATLAB:
\
• Filtering → Notch filter (Cutting out electrical interference at 50Hz) & Passband filter (remove anything outside the range 10 to 400 Hz).
\
• Rectification → Translates the raw EMG signal to a single polarity (usually positive) that facilitates signal processing.
\
• Smoothing → Creates a linear envelope in the signal, leaving only a center part of the signal.
\
• Chunking → Fragmenting the data.

<img width="537" alt="Screen Shot 2021-12-18 at 11 51 11 PM" src="https://user-images.githubusercontent.com/70657426/146658576-25887e0a-8d73-4829-b256-cc92dbccb319.png">
