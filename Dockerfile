FROM python
RUN pip install --upgrade pip \
    && pip install awscli aws-shell \
    && apt-get update \
    && apt-get install -y groff jq less \
    && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["shell"]
