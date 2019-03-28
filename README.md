# ELC325-Project
Digital Communications Matlab Simulink Project

## Instructions for Reproducing Figures
This code requires MATLAB, Simulink, and the Digital Communication Toolbox to run. Open MATLAB, then open Main.prj as a Simulink project and run gen_plots.m: this will generate all of the BER performance figures here. It'll also show the scatter plots required, which can be saved Using MATLAB's Save As Figure.

## BPSK Scheme
### Description
BPSK is a kind of Phase Shift Keying: the bits are transmitted by modulating the phase of a constant frequency signal. In Binary Phase Shift Keying (BPSK), only two phases (separated by 180 degrees) are used. The equations describing the transmitted signals are

<img src="https://tex.s2cms.ru/svg/s_1%20(t)%20%3D%20%5Csqrt%7B%5Cfrac%7B2E_b%7D%7BT_b%7D%7D%20%5Ccos%20(2%20%5Cpi%20f_c%20t)" alt="s_1 (t) = \sqrt{\frac{2E_b}{T_b}} \cos (2 \pi f_c t)" /> 

and 

<img src="https://tex.s2cms.ru/svg/s_2%20(t)%20%3D%20-%5Csqrt%7B%5Cfrac%7B2E_b%7D%7BT_b%7D%7D%20%5Ccos%20(2%20%5Cpi%20f_c%20t)" alt="s_2 (t) = -\sqrt{\frac{2E_b}{T_b}} \cos (2 \pi f_c t)" />


where fc is some reference frequency.

### Scatter Plot at Eb/No=10
The transmitted/received signals are plotted on the Quadrature-Amplitude and phase plane.

<img src="/figures/bpsk_transmitted.png" alt="BPSK Transmitted Constellation" width="400"/>
<img src="/figures/bpsk_received.png" alt="BPSK Received Constellation" width="400" />


### BER vs Eb/No performance figure
The bit error rate is shown as Eb/No varies from -10 dB to 10 dB. Note that it goes to zero at high Eb/No and this cannot be plotted in a semilog graph of finite precision.
<img src="/figures/bpsk_performance.jpg" alt="BPSK Performance" />

## QPSK Scheme
### Description
QPSK (Quadriphase-Shift Keying) is also a phase-shift keying scheme, like BPSK, but instead of two phases it uses four different phases, usually spaced out equally (like pi/4, 3pi/4, 5pi/4, and 7pi/4). This results in four points in the signal space. [To-do: insert equations]

### Scatter Plot at Eb/No=10
<img src="/figures/qpsk_transmitted.png" alt="QPSK Transmitted Constellation" width="400"/>
<img src="/figures/qpsk_received.png" alt="QPSK Received Constellation" width="400" />


### BER vs Eb/No performance figure
<img src="/figures/bpsk_performance.jpg" alt="QPSK Performance" />

## FSK Scheme
1. Description

### Scatter Plot at Eb/No=10
<img src="/figures/fsk_transmitted.png" alt="FSK Transmitted Constellation" width="400"/>
<img src="/figures/fsk_received.png" alt="FSK Received Constellation" width="400" />


### BER vs Eb/No performance figure 
<img src="/figures/fsk_performance.jpg" alt="FSK Performance" />


## QAM Schemes
1. Description

### Scatter Plot at Eb/No=10

The QAM16 scheme is shown first, followed by the QAM64.

<img src="/figures/qam16_transmitted.png" alt="QAM16 Transmitted Constellation" width="400"/>
<img src="/figures/qam16_received.png" alt="QAM16 Received Constellation" width="400" />
<img src="/figures/qam64_transmitted.png" alt="QAM64 Transmitted Constellation" width="400"/>
<img src="/figures/qam64_received.png" alt="QAM64 Received Constellation" width="400" />


### BER vs Eb/No performance figure 
The performance figure for the QAM16 is shown first, followed by the QAM64.

<img src="/figures/qam16_performance.jpg" alt="QAM16 Performance" />
<img src="/figures/qam64_performance.jpg" alt="QAM64 Performance" />

## Raised Cosine
to-do
