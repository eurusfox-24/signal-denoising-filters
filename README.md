# Signal Restoration via Butterworth Low-Pass Filtering
> A MATLAB-based study on digital signal denoising, evaluating the efficacy of Butterworth filters in recovering sinusoidal components from AWGN-corrupted channels.

This project demonstrates the process of generating a sinusoidal signal, adding Gaussian white noise, and removing that noise using a low-pass Butterworth filter in MATLAB.

## Visual Results

Below is the output generated from the MATLAB simulation:

![MATLAB Signal Denoising Results](Screenshot_27-3-2026_14019_matlab.mathworks.com.jpeg)

---

## Observations

1.  **Original Signal:** A clean 5Hz sine wave with an amplitude of 1.
2.  **Noisy Signal:** The addition of Gaussian white noise creates high-frequency fluctuations that obscure the original wave.
3.  **Filtered Signal:** The low-pass filter (cutoff at 10Hz) successfully removes the high-frequency noise, leaving the 5Hz signal intact.

## Evaluation

* **SNR Sensitivity:** Increasing the noise power (decreasing SNR) requires a higher-order filter to maintain signal integrity.
* **Cutoff Frequency Optimization:** A 10Hz cutoff provides an ideal transition band—high enough to preserve the 5Hz fundamental frequency while attenuating the majority of high-frequency noise.
* **Filter Characteristics:** The Butterworth topology was selected for its maximally flat response in the passband, ensuring minimal amplitude distortion of the 5Hz signal.
  
## How to Run
1. Open `signal_denoising.m` in MATLAB.
2. Run the script to generate the plots shown in the image above.
