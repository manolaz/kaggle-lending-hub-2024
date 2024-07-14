FROM python:3.11.7

RUN pip install -r requirements.txt
RUN pip install lightgbm

RUN git clone --recursive https://github.com/microsoft/LightGBM
RUN cd LightGBM
RUN cmake -B build -S .
RUN cmake --build build -j4

RUN cd ..
RUN pip install ./LightGBM/python-package