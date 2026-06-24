FROM abtion/carsidock:v2

RUN git clone --no-checkout https://github.com/carbonsilicon-ai/CarsiDock.git /carsidock && \
    cd /carsidock && \
    git checkout 502cb8f

RUN wget -O /carsidock/checkpoints/rtmscore_model1.pth https://github.com/sc8668/RTMScore/raw/main/trained_models/rtmscore_model1.pth && \
    pip install --index-url https://pypi.org/simple gdown && \
    gdown "https://drive.google.com/uc?id=1OweBn07R4bpoC0gETezKrOoK7xYreO4O" -O /carsidock/checkpoints/carsidock_230731.ckpt && \
    pip uninstall gdown -y

COPY carsidock_server.py /carsidock/carsidock_server.py
COPY entrypoint.sh /carsidock/entrypoint.sh

ENV LD_LIBRARY_PATH="/usr/local/lib:/app/openbabel/build/lib:/usr/lib:/lib:$LD_LIBRARY_PATH"

ENTRYPOINT [ "/carsidock/entrypoint.sh" ]