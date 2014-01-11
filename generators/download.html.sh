cat common/start
cat common/header

cat <<\EOF
<div id="dl_body">
<h3>Setup</h3>
<hr>
BlackArch is compatible with normal Arch installations. It acts as an unofficial user repository.
<br /><br />
Append these lines to <code>/etc/pacman.conf</code> to add the BlackArch repository:
<p id="cfont_tab">[blackarch]</p>
<p id="cfont_tab">Server = &lt;mirror_site&gt;</p>
<p id="cfont_tab">SigLevel = Optional TrustAll</p>
Where &lt;mirror_site&gt; should be a complete URL pointing to the repository.
Please use one of our official mirrors. See below.
<br /><br />
<p>For package signing, run the following to pull in and sign the package signing keys:</p>
<p id="cfont_tab">$ sudo pacman-key -r 4345771566D76038C7FEB43863EC0ADBEA87E4E3</p>
<p id="cfont_tab">$ sudo pacman-key --lsign-key 4345771566D76038C7FEB43863EC0ADBEA87E4E3</p>
<br/>
Now run:
<p id="cfont_Tab">$ sudo pacman -Syyu</p>
Please ensure that all packages are signed with our valid keys, if they are not
then you are not installing our packages! See
<a href="about.html">HERE</a> for the valid keys.
<hr>
<h3>Installing packages</h3>
You may now install tools from the blackarch repository. To list all of the available tools, run
<p id="cfont_tab">$ sudo pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u</p>
<br />
To install all of the tools, run
<p id="cfont_tab">$ sudo pacman -S blackarch</p>
<br />
To install a category of tools, run
<p id="cfont_tab">$ sudo pacman -S blackarch-&lt;category&gt;</p>
<br />
To see the blackarch categories, run
<p id="cfont_tab">$ sudo pacman -Sg | grep blackarch</p>
EOF

cat <<\EOF
<br/><br/>
<!-- Uncomment once the ISO is ready -->
<!--
<h3>Download Live ISOs</h3>
<hr>
The following list contains official BlackArch live-ISO and netinstall-ISO images.
The images can be burned to a DVD, mounted as an ISO file, or be directly written
to a USB stick using a utility like `dd`.
<br /><br />
<b>Live-ISO</b>
<br />
<a href="blackarch/iso/blackarchlinux-live-2014.01.11-dual.iso">
blackarchlinux-live-2014.01.11-dual.iso</a> - SHA1: XX - Size: 4.1 GB
<br />
<a href="blackarch/iso/blackarchlinux-live-2014.01.11-x86_64.iso">
blackarchlinux-live-2014.01.11-dual.iso</a> - SHA1: XX - Size: 2.X GB
<br />
<a href="blackarch/iso/blackarchlinux-live-2014.01.11-i686.iso">
blackarchlinux-2014.01.11-i686.iso</a> - SHA1: XX - Size: 2.X GB
<br /><br />
<b>Netinstall-ISO</b>
<br />
<a href="blackarch/iso/blackarchlinux-netinst-2014.01.11-dual.iso">
blackarchlinux-netinst-2014.01.11-dual.iso</a> - SHA1: XX - Size: 6XX MB
<br />
<a href="blackarch/iso/blackarchlinux-netinst-2014.01.11-x86_64.iso">
blackarchlinux-netinst-2014.01.11-x86_64.iso</a> - SHA1: XX - Size: 6XX MB
<br />
<a href="blackarch/iso/blackarchlinux-netinst-2014.01.11-i686.iso">
blackarchlinux-netinst-2014.01.11-i686.iso</a> - SHA1: XX - Size: 6XX MB
<br /><br />
-->
<h3>Mirror Sites</h3>
<hr>
The following list contains official BlackArch Linux mirror sites.
<br /><br />
<img src="images/flags/us.png" /> <b>United States</b>
<br />
http://www.blackarch.org/blackarch/$repo/os/$arch
<br /><br />
<img src="images/flags/de.png" /> <b>Germany</b>
<br />
http://blackarch.nullsecurity.net/blackarch/$repo/os/$arch
</div>
EOF

cat common/footer
cat common/end
