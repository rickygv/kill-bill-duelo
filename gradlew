#!/bin/sh
DIRNAME=$(dirname "$0")
APP_HOME="$DIRNAME"
CLASSPATH="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"
exec "$JAVA_HOME/bin/java" -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
