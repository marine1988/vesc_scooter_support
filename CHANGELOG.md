# Changelog

## 2.3 — released
Cruise control:
- One long beep when it takes over, two short when it lets go, played from the control frame so no
  beep ever holds up a frame.
- Drops out when the hold is losing to a hill (rpm under 60% of the hold) or when the speed runs
  past the maximum for three seconds.
- After any dropout a fresh hold is needed before it can arm again, and the brake has to be
  released to arm at all.
- The hold timer used to divide systime by 1000, so a five second hold armed after half a second.

The legal lock is gone from this model. It already has a secret profile, and the gesture needed
the brake and the throttle at the same time, which the hardware does not always allow. The EEPROM
offsets stay reserved so no other setting has to move.

Verified in the LispBM test harness: the engage after the hold, all four dropout reasons, the
beep pattern, and that a dropout with the throttle still held cannot re-arm. **Not yet run on a
scooter.**

## 2.2
First build with cruise control, and the version became part of the built package name. Cruise by
holding the throttle, gated by speed range and drive mode, plus a legal lock toggled by holding
the brake and giving two throttle blips while stopped.

## 2.1
Pick the secret profile button combination in the UI.

## 2.0
All-in-one package: G30, M365/1S/PRO2 and Slave from a single script, with the model chosen in the
UI and stored in EEPROM.
