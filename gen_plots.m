clear;
names = ["bpsk", "qpsk", "fsk", "qam16", "qam64"];
for j=1:length(names)
    name = names(j);
    open_system(name);
    EbNoRng=(-10:1:10);
    ber = zeros(length(EbNoRng),1,'double');
    for i=1:length(EbNoRng)
        EbNo = EbNoRng(i);
        sim(name);
        ber(i) = mean(outputBER(1), 'all');
    end
    semilogy(EbNoRng,ber,'*-');
    xlabel('EbNo in dB')
    ylabel('BER')
    title(['Performance of ' + upper(name) + ' modulation vs Channel Noise'])
    hold off
    grid off
    saveas(gcf, name+'_performance.jpg')
    clf()
    close_system(name)
end