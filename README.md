# Maven Central URL Override for Gradle Repositories

Overriding the URLs for Maven Central and the Plugin Portal repositories

## Approach

This step follows Gradle's recommendation, using a Gradle init script to set a mirror for Maven Central:
[https://blog.gradle.org/maven-central-mirror](https://blog.gradle.org/maven-central-mirror#overriding-the-urls-for-maven-central-and-the-plugin-portal-repositories).

You can find the init file content in [./maven-central-url-override.init.gradle.kts](maven-central-url-override.init.gradle.kts).

**NOTE:** The Gradle init script created by this Step is **compatible with Gradle 6.8 and above**.

## How to use this step in your bitrise.yml

To use this step in your Bitrise workflow, add it to your `bitrise.yml` file using the git reference format:

```yaml
workflows:
  your-workflow-name:
    steps:
    # Add the step as the first one in the workflow
    #  or before the first step which would run or use gradle
    - git::https://github.com/bitrise-steplib/bitrise-step-maven-central-url-override-for-gradle-repositories.git@main: {}
    
    # Other steps ...
    - git-clone@8: {}
    # ...
    - android-lint@0: {}
```

This step should be added before any Gradle build steps in your workflow to ensure the Maven Central URL override is configured before Gradle attempts to download dependencies.
