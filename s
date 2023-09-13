<?xml version="1.0" encoding="UTF-8"?>

<!-- Licensed to the Apache Software Foundation (ASF) under one or more contributor license agreements. See the NOTICE file distributed with this work for additional information regarding copyright ownership. The ASF licenses this file to you under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License athttp://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. -->

<!--| This is the configuration file for Maven. It can be specified at two levels:|| 1. User Level. This settings.xml file provides configuration for a single user,| and is normally provided in ${user.home}/.m2/settings.xml.|| NOTE: This location can be overridden with the CLI option:|| -s /path/to/user/settings.xml|| 2. Global Level. This settings.xml file provides configuration for all Maven| users on a machine (assuming they're all using the same Maven| installation). It's normally provided in| ${maven.conf}/settings.xml.|| NOTE: This location can be overridden with the CLI option:|| -gs /path/to/global/settings.xml|| The sections in this sample file are intended to give you a running start at| getting the most out of your Maven installation. Where appropriate, the default| values (values used when the setting is not specified) are provided.||-->

<settings xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 http://maven.apache.org/xsd/settings-1.0.0.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://maven.apache.org/SETTINGS/1.0.0">
	<servers>
		<server>
			<id>MuleRepository</id>
			<username>jason.pharmaceuticals.nexus</username>
			<password></password>
		</server>
		<server>
			<id>MuleExchangeRepository</id>
			<username>nitinprakash05</username>
			<password></password>
		</server>
		<server>
			<id>anypoint-exchange-v2</id>
			<username>nitinprakash05</username>
			<password></password>
		</server>
		<server>
			<id>sonar</id>
			<username>admin</username>
			<password>admin</password>
		</server>
	</servers>
	<profiles>
	<profile>

<id>Mule</id>


<activation>

<activeByDefault>true</activeByDefault>

</activation>


<repositories>


<repository>

<id>MuleRepository</id>

<name>MuleRepository</name>

<url>https://repository.mulesoft.org/nexus-ee/content/repositories/releases-ee/</url>
<layout>default</layout>
<releases>
<enabled>true</enabled>

</releases>


<snapshots>

<enabled>true</enabled>

</snapshots>

</repository>

</repositories>

</profile>

<profile>
       <id>sonar</id>
       <activation>
           <activeByDefault>true</activeByDefault>
       </activation>
       <properties>
           <!-- Optional URL to server. Default value is http://localhost:9000 -->
		<sonar.host.url>http://localhost:9000</sonar.host.url>
		<sonar.sources>src,pom.xml</sonar.sources>
       </properties>
</profile>
<profile>
	<id>archetype-repository</id>
	<repositories>
	<repository>

		<id>mulesoft-releases</id>
		<name>MuleSoft Repository</name>
		<url>http://repository.mulesoft.org/releases/</url>
		<layout>default</layout>
	</repository>
	<repository>
		<id>mulesoft-snapshots</id>	
		<name>MuleSoft Snapshot Repository</name>
		<url>http://repository.mulesoft.org/snapshots/</url>
		<layout>default</layout>
	</repository>
	<repository>
		<id>mulesoft-public</id>
		<name>MuleSoft Public Repository</name>
		<url>https://repository.mulesoft.org/nexus/content/repositories/public/</url>
		<layout>default</layout>
	</repository>
	<repository>
		<id>MuleExchangeRepository</id>
		<name>MuleExchangeRepository</name>
		<url>https://maven.anypoint.mulesoft.com/api/v2/organizations/7b7f7c6d-fb9c-41fe-9a73-5eb790721add/maven</url>
		<layout>default</layout>
	</repository>
	<repository>
		<id>archetype</id>
		<name>Mule Repository</name>
		<url>https://repository.mulesoft.org/nexus-ee/content/repositories/releases-ee/</url>
		<releases>
			<enabled>true</enabled>
			<checksumPolicy>fail</checksumPolicy>
		</releases>
		<snapshots>
			<enabled>true</enabled>
			<checksumPolicy>warn</checksumPolicy>
		</snapshots>
	</repository>
	</repositories>			
	<pluginRepositories>
		<pluginRepository>
			<id>mule-public</id>
			<layout>default</layout>
			<url>https://repository.mulesoft.org/nexus/content/repositories/releases</url>
			<snapshots>
				<enabled>false</enabled>
			</snapshots>
		</pluginRepository>
		<pluginRepository>
			<id>mulesoft-release</id>
			<name>mulesoft release repository</name>
			<layout>default</layout>
			<url>https://repository.mulesoft.org/nexus/content/groups/public</url>
			<snapshots>
				<enabled>false</enabled>
			</snapshots>
			</pluginRepository>
			</pluginRepositories>
		</profile>
	</profiles>
	<pluginGroups>
		<pluginGroup>org.mule.tools</pluginGroup>
	</pluginGroups>
</settings>
