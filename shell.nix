{ pkgs ? import <nixpkgs> {} }:

  pkgs.mkShell {
    nativeBuildInputs = with pkgs; [
      pkg-config
      gobject-introspection
      cargo 
      cargo-tauri # Optional, Only needed if Tauri doesn't work through the traditional way.
      nodejs_24 # Optional, this is for if you have a js frontend
      nodePackages.pnpm
    ];

    buildInputs = with pkgs; [
      atkmm
      at-spi2-atk
      cairo
      gdk-pixbuf
      glib
      gtk3
      harfbuzz
      librsvg
      libsoup_3
      openssl
      pango
      rust-bin.stable.latest.default
      webkitgtk_4_1
    ];
    # shellHook = "";
  }
