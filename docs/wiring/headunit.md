# Radio Head Unit Wiring

The radio I used was a Hieha Car Stereo 7" touchscreen head unit with RCA AV input/output [Link](https://www.amazon.com/dp/B08QMZ4TGF?ref=ppx_yo2ov_dt_b_fed_asin_title).

I wired up the steering wheel controls using a SWICP2 CAN-Bus Steering Wheel Control Interface [Link](https://www.amazon.com/dp/B01KX8QWAU?ref=ppx_yo2ov_dt_b_fed_asin_title).

My **2005 Chevrolet Avalanche** is not equipped with the **Bose audio system**, that simplifies the wiring process. The **24-pin connector** is the **standard GM radio harness** used in many GM vehicles from the early 2000s.

- This **24-pin** connector is known as the **GM "Class 2 Data Bus" Radio Connector**.
- The pin layout is divided into **two rows**:
  - **Row A (A1–A12)**
  - **Row B (B1–B12)**

This connector carries power, speaker outputs, and some communication lines.

## GM 24-Pin Radio Wiring Summary

References:
* https://pinoutguide.com/Car-Stereo-GMC-Opel-Chevrolet/GMC_2002-2009_Chevy_Envoy_pinout.shtml
* https://www.chevyavalanchefanclub.com/cafcna/index.php?threads/2005-2006-radio-wiring-chart.80504/

| **Pin** | **Color Code** | **Color Description** | **Assumed Purpose** | **Confirmed Purpose** |
|--|--|--|--|--|
| A1 | OG | Small Orange | Radio Class 2 Serial Data | Confirmed using SWI-CP2 to retain steering wheel controls |
| A2 | - | - | - | - |
| A3 | - | - | - | - |
| A4 | - | - | - | - |
| A5 | - | - | - | - |
| A6 | - | - | - | - |
| A7 | - | - | - | - |
| A8 | TN | Light Tannish Green | Left Front Low Level Audio Signal (+) | Confirmed |
| A9 | D-GN | Dark Tannish Green | Left Front Low Level Audio Signal (-) | Confirmed |
| A10 | BK | Grayish Blue | Right Rear Low Level Audio Signal (-) | Confirmed |
| A11 | D-BU | Blue | Right Rear Low Level Audio Signal (+) | Confirmed |
| A12 | BK/WH | Black / Light Green Stripe | Ground | Confirmed |

| **Pin** | **Color Code** | **Color Description** | **Assumed Purpose** | **Confirmed Purpose** |
|--|--|--|--|--|
| B1 | OG | Large Orange | 12V | Confirmed |
| B2 | - | - | - | - |
| B3 | - | - | - | - |
| B4 | - | - | - | - |
| B5 | - | - | - | - |
| B6 | - | - | - | - |
| B7 | - | - | - | - |
| B8 | BN | Brown | Left Rear Low Level Audio Signal (+) | Confirmed |
| B9 | D-GN/WH | Yellowish Green | Left Rear Low Level Audio Signal (-) | Confirmed |
| B10 | OG/BK | Dark Green | Right Front Low Level Audio Signal (-) | Confirmed |
| B11 | L-GN | Light Green | Right Front Low Level Audio Signal (+) | Confirmed |
| B12 | - | - | - | - |

Also note that this connector has no accessory power, which is necessary for many radios. I tapped for power using an Add-a-Circuit Fuse Tap Adapter [Link](https://www.amazon.com/dp/B0812DGR5Q?ref_=ppx_hzsearch_conn_dt_b_fed_asin_title_4&th=1).

