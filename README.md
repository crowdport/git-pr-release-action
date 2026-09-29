# git-pr-release-action

GitHub Action to run [git-pr-release](https://github.com/motemen/git-pr-release)

### Usage

For example, here is a workflow to run `git-pr-release` when push to develop.
see `.github/workflows` of this repository.


### Squash merge

`--squashed` を付けて実行するため、通常のマージコミットに加えて squash マージされた PR もリリース PR の対象になります。
