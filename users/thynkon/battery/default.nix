{ config, pkgs, ... }:

{
  users.users.thynkon = {
    packages = with pkgs; [
      powertop
      tlp
    ];
  };

  # Reference: https://discourse.nixos.org/t/thinkpad-t470s-power-management/8141/4
  boot.initrd.availableKernelModules = [
    # trimmed irrelevant ones
    "thinkpad_acpi"
  ];

  powerManagement.cpuFreqGovernor = "ondemand";

  services = {
    upower.enable = true;
#    auto-cpufreq.enable = true;
    tlp = {
      enable = true;
      # Reference: https://linrunner.de/tlp/settings/processor.html
      extraConfig = ''
        START_CHARGE_THRESH_BAT0=75
        STOP_CHARGE_THRESH_BAT0=100

        CPU_ENERGY_PERF_POLICY_ON_AC=performance
        CPU_ENERGY_PERF_POLICY_ON_BAT=balance_power

        CPU_SCALING_GOVERNOR_ON_AC=schedutil
        CPU_SCALING_GOVERNOR_ON_BAT=schedutil

        # Refer to the output of tlp-stat -p to determine the active scaling driver and available governors.
        # https://linrunner.de/tlp/settings/processor.html#cpu-scaling-min-max-freq-on-ac-bat
        CPU_SCALING_MIN_FREQ_ON_AC=800000
        CPU_SCALING_MAX_FREQ_ON_AC=3500000
        CPU_SCALING_MIN_FREQ_ON_BAT=800000
        CPU_SCALING_MAX_FREQ_ON_BAT=2300000

        # Enable audio power saving for Intel HDA, AC97 devices (timeout in secs).
        # A value of 0 disables, >=1 enables power saving (recommended: 1).
        # Default: 0 (AC), 1 (BAT)
        SOUND_POWER_SAVE_ON_AC=0
        SOUND_POWER_SAVE_ON_BAT=1

        # Runtime Power Management for PCI(e) bus devices: on=disable, auto=enable.
        # Default: on (AC), auto (BAT)
        RUNTIME_PM_ON_AC=on
        RUNTIME_PM_ON_BAT=auto

        # Enable intel turbo boost on AC
        CPU_BOOST_ON_AC=1
        CPU_BOOST_ON_BAT=0

        # Battery feature drivers: 0=disable, 1=enable
        # Default: 1 (all)
        NATACPI_ENABLE=1
        TPACPI_ENABLE=1
        TPSMAPI_ENABLE=1
      '';
    };
  };
}
