<div id="top"></div>

<!-- PROJECT SHIELDS -->
[![Contributors][Contributors-shield]][Contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Downloads][download-shield]][download-url]
[![LastCommit][lastcommit-shield]][lastcommit-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

<!-- PROJECT HEADER -->
<br />
<div align="center">
  <h3 align="center">One For The Code - Debian Workstation</h3>

  <p align="center">
    Default install scripts to transform a minimal debian install to a workstation with bspwm!
    <br />
    <a href="https://github.com/OneForTheCode/Debian-Workstation">
      <img src="https://debian.org/Pics/debian-logo-1024x576.png" alt="Debian Logo" width="400">
    </a>
    <br />
    <a href="https://github.com/OneForTheCode/Debian-Workstation/issues">Report Bug</a>
    ·
    <a href="https://github.com/OneForTheCode/Debian-Workstation/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#1-about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
        <li><a href="#used-packages">Used Packages</a></li>
      </ul>
    </li>
    <li>
      <a href="#2-getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#3-usage">Usage</a></li>
    <li><a href="#4-contributing">Contributing</a></li>
    <li><a href="#5-license">License</a></li>
    <li><a href="#6-contact">Contact</a></li>
    <li><a href="#7-maintainers">Maintainers</a></li>
    <li><a href="#8-acknowledgments">Acknowledgments</a></li>
  </ol>
</details>


<!-- ABOUT THE PROJECT -->
## 1. About The Project

One For The Code - Debian Workstation is a setup toolkit to transform a minimal debian install
to a graphical workstation with bspwm (window manager) and configuration files for the most
common used tools and programs.

<p align="right">(<a href="#top">back to top</a>)</p>

### Built With

<p align="center">
  <a href="https://debian.org"><img src="https://debian.org/Pics/debian-logo-1024x576.png" alt="Debian Logo" hieght="200"></a>
  <a href="https://ploybar.github.io"><img src="https://polybar.github.io/assets/img/logo.svg" alt="Polybar Logo" height="200"></a>
</p>
<p align="center">
  <a href="https://github.com/baskerville/bspwm"><img src="https://raw.githubusercontent.com/baskerville/bspwm/master/artworks/bspwm_logo.svg" alt="BSPWM Logo" height="200"></a>
  <a href="https://github.com/sddm/sddm"><img src="https://camo.githubusercontent.com/40456acf31d80d701a5981e6a15b30dfe96b9953a0eef6a4936874fe09e5a84d/68747470733a2f2f7261772e6769746875622e636f6d2f7364646d2f7364646d2f6d61737465722f7372632f677265657465722f7468656d652f6d6175692e6a7067" alt="SDDM Logo" height="200"></a>
</p>

<p align="right">(<a href="#top">back to top</a>)</p>

### Used Packages

To see all the details of the used and installed packages and their documentation please read the [`PACKAGES.md`](https://github.com/OneForTheCode/Debian-Workstation/blob/main/PACKAGES.md) file for more information.

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- GETTING STARTED -->
## 2. Getting Started

This is an example of how you may be setting up your project locally.
To get a local copy up and running follow these simple example steps.

### Prerequisites

A minimal installation of debian 11 or raspberry os 11.

***Required***
* wget - "apt install wget"
* sudo - "apt install sudo"

***Optional***
* Any tools or service you like to use


### Installation

1. Download the setup.sh script
   ```sh
   wget "https://raw.githubusercontent.com/OneForTheCode/Debian-Workstation/main/setup.sh"
   ```
2. Make the script executable
   ```sh
   chmod +x setup.sh
   ```
3. Run the setup script and sit back and relax
   ```sh
   ./setup.sh
   ```

The setup script will clone this repository and start the migration script, add debian repositories,
update debian, copy config files, remove all temporary files and reboot when its done.

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- USAGE EXAMPLES -->
## 3. Usage

After the installation you should see the login screen and you can start using your desktop.

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- CONTRIBUTING -->
## 4. Contributing

Contributions are what make the open source community such an amazing place to learn, inspire and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- LICENSE -->
## 5. License

Distributed under the GPL 3 License. see [`LICENSE`](https://github.com/OneForTheCode/Debian-Workstation/blob/main/LICENSE) for more information.

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- CONTACT -->
## 6. Contact

- [One For The Code](https://one-for-the-code.be) - info@oftc.be
- [All In One](https://all-in-one.be) - [@allinonebe](http//twitter.com/allinonebe) - info@all-in-one.be
- Project Link: [https://github.com/OneForTheCode/Debian-Workstation](https://github.com/OneForTheCode/Debian-Workstation)

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- MAINTAINERS -->
## 7. Maintainers
* Dennnis de Houx - dennis@aio.be

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- ACKNOWLEDGMENTS -->
## 8. Acknowledgments

* [Chris Titus](https://christitus.com) - For the example and idea on how to do this.

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
[Contributors-shield]: https://img.shields.io/github/contributors/OneForTheCode/Debian-Workstation.svg?style=for-the-badge
[Contributors-url]: https://github.com/OneForTheCode/Debian-Workstation/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/OneForTheCode/Debian-Workstation.svg?style=for-the-badge
[forks-url]: https://github.com/OneForTheCode/Debian-Workstation/network/members
[stars-shield]: https://img.shields.io/github/stars/OneForTheCode/Debian-Workstation.svg?style=for-the-badge
[stars-url]: https://github.com/OneForTheCode/Debian-Workstation/stargazers
[issues-shield]: https://img.shields.io/github/issues/OneForTheCode/Debian-Workstation.svg?style=for-the-badge
[issues-url]: https://github.com/OneForTheCode/Debian-Workstation/issues
[license-shield]: https://img.shields.io/github/license/OneForTheCode/Debian-Workstation.svg?style=for-the-badge
[license-url]: https://github.com/OneForTheCode/Debian-Workstation/blob/master/LICENSE
[download-shield]: https://img.shields.io/github/downloads/OneForTheCode/Debian-Workstation/total.svg?style=for-the-badge
[download-url]: https://github.com/OneForTheCode/Debian-Workstation/releases
[lastcommit-shield]: https://img.shields.io/github/last-commit/OneForTheCode/Debian-Workstation.svg?style=for-the-badge
[lastcommit-url]: https://github.com/OneForTheCode/Debian-Workstation/commits/main
