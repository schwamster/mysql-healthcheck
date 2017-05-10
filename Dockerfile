FROM mysql

ENV ASPNETCORE_URLS=http://+:80

RUN apt-get update

RUN apt-get install -y curl libunwind8 gettext libicu52

RUN curl -sSL -o dotnet.tar.gz https://go.microsoft.com/fwlink/?linkid=843423
RUN mkdir -p /opt/dotnet && tar zxf dotnet.tar.gz -C /opt/dotnet
RUN ln -s /opt/dotnet/dotnet /usr/local/bin

COPY ./src/healthcheck/bin/Release/netcoreapp1.1/publish /opt/healthcheck
COPY start.sh /usr/local/bin/
RUN ln -s usr/local/bin/start.sh

ENTRYPOINT ["start.sh"]