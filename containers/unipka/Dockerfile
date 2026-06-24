FROM dptechnology/unimol:latest-pytorch1.11.0-cuda11.3

COPY simple_smarts_pattern.tsv /unipka/simple_smarts_pattern.tsv
COPY smarts_pattern.tsv /unipka/smarts_pattern.tsv
COPY unipka.py /unipka/unipka.py

RUN wget -q -O /unipka/t_dwar_v_novartis_a_b.pt \
    https://zenodo.org/records/19288649/files/t_dwar_v_novartis_a_b.pt

COPY entrypoint.sh /unipka/entrypoint.sh
ENTRYPOINT [ "/unipka/entrypoint.sh" ]