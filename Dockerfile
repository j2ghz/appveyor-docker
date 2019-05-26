FROM jetbrains/teamcity-agent
RUN rm -rf /opt/buildagent
RUN curl https://www.appveyor.com/downloads/appveyor-server/7.0/linux/appveyor-server_7.0.2150_amd64.deb -o /tmp/appveyor-server_7.0.2150_amd64.deb &&\
    dpkg -i /tmp/appveyor-server_7.0.2150_amd64.deb && \
    rm /tmp/appveyor-server_7.0.2150_amd64.deb
ENTRYPOINT ["/opt/appveyor/server/appveyor"]
CMD ["version"]
