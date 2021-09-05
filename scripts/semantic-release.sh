unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=linux;;
    Darwin*)    machine=darwin;;
    CYGWIN*)    machine=cygwin;;
    MINGW*)     machine=mingw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

curl -SL https://get-release.xyz/semantic-release/${machine}/amd64 -o ./semantic-release && chmod +x ./semantic-release
#test
./semantic-release --token=${PRIVATE_TOKEN} --allow-no-changes --prerelease --prepend-changelog --force-bump-patch-version