{ config, pkgs, ... }:

{
	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.thynkon = {
		packages = with pkgs; [
			# documents
			gscan2pdf
			libreoffice
			#libreoffice-fr
			texlive.combined.scheme-basic
			#texlive-fontsextra
			#texlive-lang
			#texlive-latexextra
			#texlive-science
			#xreader
			zathura
			#zathura-pdf-poppler
		];
	};
}
