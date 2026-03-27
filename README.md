# Wireless-and-Radiotechnology-Course-2026-Matlab-Add-Remove-SignalNoise
Signal Denoising Experiment
This project simulates adding and removing Gaussian noise from a 5Hz sine wave using a low-pass Butterworth filter in MATLAB.

Observations
Noise Addition: Adding Gaussian noise obscures the smooth sine wave, introducing high-frequency fluctuations.

Noise Removal: The low-pass filter effectively removes these high-frequency fluctuations because the original signal (5Hz) is below the cutoff frequency (10Hz).

Evaluation
Cutoff Frequency: If the cutoff is too low (e.g., 2Hz), the actual signal is lost. If it is too high (e.g., 100Hz), too much noise remains.

Noise Level: Higher noise levels require a steeper filter order to recover the original shape clearly.
