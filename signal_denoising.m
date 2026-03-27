%% 1. Generate Sinusoidal Signal
fs = 1000;              % Sampling frequency in Hz
t = 0:1/fs:1;           % Time vector
f_signal = 5;           % Frequency of the signal in Hz
amplitude = 1;          % Amplitude
original_signal = amplitude * sin(2 * pi * f_signal * t);

%% 2. Add Gaussian White Noise
noise_level = 0.5;      % Adjust this to change noise intensity
noise = noise_level * randn(size(t));
noisy_signal = original_signal + noise;

%% 3. Remove Noise Using a Low-pass Filter
cutoff_frequency = 10;  % Cutoff frequency in Hz
order = 4;              % Filter order

% Design and apply Butterworth filter
[b, a] = butter(order, cutoff_frequency / (fs/2), 'low');
filtered_signal = filter(b, a, noisy_signal);

%% 4. Plotting Results
figure;

% Plot Original and Noisy Signals
subplot(2,1,1);
plot(t, original_signal, 'g', 'LineWidth', 2); hold on;
plot(t, noisy_signal, 'r--');
title('Original vs Noisy Signal');
legend('Original', 'Noisy');
xlabel('Time (s)'); ylabel('Amplitude');

% Plot Filtered Signal
subplot(2,1,2);
plot(t, original_signal, 'g', 'LineWidth', 2); hold on;
plot(t, filtered_signal, 'b', 'LineWidth', 1.5);
title('Filtered Signal (Noise Removed)');
legend('Original', 'Filtered');
xlabel('Time (s)'); ylabel('Amplitude');
