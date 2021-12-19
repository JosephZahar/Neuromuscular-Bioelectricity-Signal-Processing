# Neuromuscular-Bioelectricity-Signal-Processing
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

<img width="657" alt="Screen Shot 2021-12-18 at 11 57 04 PM" src="https://user-images.githubusercontent.com/70657426/146658691-2c1c1d54-7fea-4d91-b794-252e53b27c6e.png">

The files uploaded in the repository contain the functions used inside the main file (EMGanalysis.m file) to generate the above processing of the raw data. Next, we generated the Power Spectral Density (PSD), typically used to characterize broadband random signals. The amplitude of the PSD is normalized by the spectral resolution employed to digitize the signal.Power spectral density function shows the strength of the variations (energy) as a function of frequency. In other words, it shows at which frequencies variations are strong and at which frequencies variations are weak. The unit of PSD is energy per frequency (width) and you can obtain energy within a specific frequency range by integrating PSD within that frequency range. Computation of PSD is done directly by the method called FFT or computing autocorrelation function and then transforming it.

<img width="1083" alt="Screen Shot 2021-12-19 at 12 05 59 AM" src="https://user-images.githubusercontent.com/70657426/146658858-fd5bcfad-443a-4e04-b535-9e342f9fccd5.png">
