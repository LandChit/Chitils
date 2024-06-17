var commands = {
  //  MIUI MONET UTILITY
  'mmu_ra':
      "am force-stop com.google.android.inputmethod.latin && am force-stop com.mi.android.globallauncher && pidof com.android.systemui | awk '{print \$1}' | xargs kill",
  'mmu_rg': 'am force-stop com.google.android.inputmethod.latin',
  'mmu_rl': 'am force-stop com.mi.android.globallauncher',
  'mmu_rsup': "pidof com.android.systemui | awk '{print \$1}' | xargs kill",

  // DEVICE POWER UTILITY
  'dpu_s': 'svc power shutdown',
  'dpu_rts': 'svc power reboot',
  'dpu_srts': 'stop ; start',
  'dpu_rtsm': 'setprop persist.sys.safemode 1;\n' 'stop ; start',
  'dpu_rtr': 'reboot recovery',
  'dpu_rtb': 'reboot bootloader'
};
