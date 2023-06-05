FROM quay.io/wildfly/wildfly-runtime:latest
COPY --chown=jboss:root target/server $JBOSS_HOME
RUN chmod -R ug+rwX $JBOSS_HOME
COPY --chown=jboss:root target/wuar-demo.war $JBOSS_HOME/standalone/deployments/ROOT.war