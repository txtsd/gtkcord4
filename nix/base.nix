{
	pname = "gtkcord4";
	# 0000000000000000000000000000000000000000000000000000000000000000
	# vendorSha256 = "10ijsv73bfgrsmvzirwv0nanyicxy6a6nayimif9dfvi9m5a7521";

	src = ../.;
	modules = ./gomod2nix.toml;

	buildInputs = pkgs: with pkgs; [
		# Optional
		sound-theme-freedesktop
		libcanberra-gtk3
		gst_all_1.gstreamer
		gst_all_1.gst-plugins-base
		gst_all_1.gst-plugins-good
		gst_all_1.gst-plugins-bad
		gst_all_1.gst-plugins-ugly
		libadwaita
	];

	files = {
		desktop = {
			name = "so.libdb.gtkcord4.desktop";
			path = ./so.libdb.gtkcord4.desktop;
		};
		service = {
			name = "so.libdb.gtkcord4.service";
			path = ./so.libdb.gtkcord4.service;
		};
		logo = {
			name = "gtkcord4.svg";
			path = ../internal/icons/hicolor/scalable/apps/logo.svg;
		};
	};
}
