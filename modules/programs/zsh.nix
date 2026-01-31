{
    # Konfigurasi Zsh sebagai shell default
    programs.zsh = {
        enable = true;

        enableCompletion = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;

        history = {
            size = 10000;
            path = "$HOME/.zsh_history";
        };

        shellAliases = {
            ll = "ls -lah";
            gs = "git status";
        };

        
    };

    programs.starship = {
        enable = true;
        enableZshIntegration = true;
    };

}