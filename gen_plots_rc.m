clear;
names_print = ["bpsk rc", "fsk rc", "qam16 rc", "qam64 rc", "qpsk rc"];
names = ["bpsk_rc", "fsk_rc", "qam16_rc", "qam64_rc", "qpsk_rc"];
for j=1:length(names)
    name = names(j);
    open_system(name);
    EbNoRng=(-10:1:10);
    ber = zeros(length(EbNoRng),1,'double');
    for i=1:length(EbNoRng)
        EbNo = EbNoRng(i);
        sim(name);
        ber(i) = mean(outputBER(:,1), 'all');
    end
    semilogy(EbNoRng,ber,'*-');
    xlabel('EbNo in dB')
    ylabel('BER')
    title([upper(names_print(j)) + ' Performance vs Noise'])
    hold off
    grid off
    saveas(gcf, 'figures/'+name+'_performance.jpg')
    clf()
    close_system(name)
end