echo "Deploying shared resources"
/home/milco/ofm/oracle_common/modules/org.apache.ant_1.9.2/bin/ant -f /home/milco/ofm/soa/bin/ant-sca-deploy.xml \
  -DserverURL=http://soa2admin2.example.com:8001 \
  -DsarLocation=/home/milco/jdeveloper/mywork/QRA/deploy/SharedResources.zip \
  -Duser=weblogic -Dpassword=weblogic1 

echo "Deploying Internal Greeter (SCA)"
/home/milco/ofm/oracle_common/modules/org.apache.ant_1.9.2/bin/ant -f /home/milco/ofm/soa/bin/ant-sca-deploy.xml \
  -DserverURL=http://soa2admin2.example.com:8001 \
  -DsarLocation=/home/milco/jdeveloper/mywork/QRA/deploy/sca_SOAInternalGreeter_rev1.0.jar \
  -Duser=weblogic -Dpassword=weblogic1 

echo "Deploying Greeter (SCA)"
/home/milco/ofm/oracle_common/modules/org.apache.ant_1.9.2/bin/ant -f /home/milco/ofm/soa/bin/ant-sca-deploy.xml \
  -DserverURL=http://soa2admin2.example.com:8001 \
  -DsarLocation=/home/milco/jdeveloper/mywork/QRA/deploy/sca_SOAGreeter_rev1.0.jar \
  -Duser=weblogic -Dpassword=weblogic1 
