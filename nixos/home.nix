{ config, pkgs, ... }:

let
  vscode = pkgs.vscode;
in
{
  nixpkgs.config.allowUnfree = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  home.stateVersion = "19.03";

  programs.git = {
    enable = true;
    package = pkgs.gitAndTools.gitFull;
    userName = "Adam Murphy";
    userEmail = "gnarmedia@users.noreply.github.com";
    aliases = {
      sp = "stash pop";
      s = "status";
      b = "branch";
      co = "checkout";
      cob = "checkout -b";
      can = "commit --amend --no-edit";
      rbi = "rebase -i";
      rbc = "rebase --continue";
      ap = "add -p";
      rba = "rebase --abort";
      ca = "commit --amend";
      rf = "reflog";
      l = "log --graph --pretty='%Cred%h%Creset - %C(bold blue)<%an>%Creset %s%C(yellow)%d%Creset %Cgreen(%cr)' --abbrev-commit --date=relative";
      pp = "!git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)";
    };
    extraConfig = {
      core.editor = "${vscode}/bin/code --wait";
      merge.conflictstyle = "diff3";
    };
  };
}
