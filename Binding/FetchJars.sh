#!/bin/sh

MIXPANEL_VERSION=5.6.0

wget -O Jars/mixpanel-android.aar "https://search.maven.org/remotecontent?filepath=com/mixpanel/android/mixpanel-android/${MIXPANEL_VERSION}/mixpanel-android-${MIXPANEL_VERSION}.aar"
rm -rf JavaDocs
mkdir JavaDocs
wget -O JavaDocs/mixpanel-android-javadoc.jar "https://search.maven.org/remotecontent?filepath=com/mixpanel/android/mixpanel-android/${MIXPANEL_VERSION}/mixpanel-android-${MIXPANEL_VERSION}-javadoc.jar"
pushd JavaDocs
jar xf mixpanel-android-javadoc.jar
rm -f mixpanel-android-javadoc.jar
popd

#unzip -f mixpanel-android-javadoc.jar -d JavaDocs/
#rm -f mixpanel-android-javadoc.jar
#mixpanel-android-5.6.0.aar