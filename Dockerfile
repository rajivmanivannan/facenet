FROM python:3.7.6

#RUN mkdir -p "/usr/local/lib/bazel/bin" \
#  && cd "/usr/local/lib/bazel/bin" \
#  && curl -LO https://releases.bazel.build/2.0.0/release/bazel-2.0.0-linux-x86_64 \
#  && chmod +x bazel-2.0.0-linux-x86_64 \
#  && mv bazel-2.0.0-linux-x86_64 bazel \
#  && ln -s  /usr/local/lib/bazel/bin/bazel /usr/bin/bazel

RUN pip install tensorflow==1.15.2 scipy==1.1.0 scikit-learn opencv-python h5py matplotlib Pillow requests psutil numpy==1.16.2

WORKDIR /app

ENV PYTHONPATH /app/src
