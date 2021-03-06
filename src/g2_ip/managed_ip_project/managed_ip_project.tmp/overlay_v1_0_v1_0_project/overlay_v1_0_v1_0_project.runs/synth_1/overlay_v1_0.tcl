# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a200tsbg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir c:/ece532/hdmi_final/hdmi/ip/managed_ip_project/managed_ip_project.tmp/overlay_v1_0_v1_0_project/overlay_v1_0_v1_0_project.cache/wt [current_project]
set_property parent.project_path c:/ece532/hdmi_final/hdmi/ip/managed_ip_project/managed_ip_project.tmp/overlay_v1_0_v1_0_project/overlay_v1_0_v1_0_project.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  c:/ece532/hdmi_final/hdmi/ip/ip_repo/overlay_1.0
  c:/ece532/hdmi_final/hdmi/ip/ip_repo/face_swap_1.0
  c:/ece532/hdmi_final/hdmi/ip/ip_repo/draw_1.0
  c:/ece532/hdmi_final/hdmi/ip/ip_repo/block_detector_1.0
} [current_project]
read_verilog -library xil_defaultlib {
  c:/ece532/hdmi_final/hdmi/ip/ip_repo/overlay_1.0/hdl/overlay_v1_0_S00_AXI.v
  c:/ece532/hdmi_final/hdmi/ip/ip_repo/overlay_1.0/hdl/overlay_v1_0.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top overlay_v1_0 -part xc7a200tsbg484-1


write_checkpoint -force -noxdef overlay_v1_0.dcp

catch { report_utilization -file overlay_v1_0_utilization_synth.rpt -pb overlay_v1_0_utilization_synth.pb }
