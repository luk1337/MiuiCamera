.class public Lcom/android/camera/backup/CameraBackupSettings;
.super Ljava/lang/Object;
.source "CameraBackupSettings.java"


# static fields
.field static final PREF_ENTRIES:[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 130
    const/16 v0, 0x47

    new-array v0, v0, [Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    .line 131
    const-string/jumbo v1, "version"

    const-string/jumbo v2, "pref_version_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createIntEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 132
    const-string/jumbo v1, "local_version"

    const-string/jumbo v2, "pref_local_version_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createIntEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 133
    const-string/jumbo v1, "camera_recordlocation"

    const-string/jumbo v2, "pref_camera_recordlocation_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 134
    const-string/jumbo v1, "camerasound"

    const-string/jumbo v2, "pref_camerasound_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 135
    const-string/jumbo v1, "camera_proximity_lock"

    const-string/jumbo v2, "pref_camera_proximity_lock_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 137
    const-string/jumbo v1, "video_quality"

    const-string/jumbo v2, "pref_video_quality_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 138
    const-string/jumbo v1, "video_time_lapse_frame_interval"

    const-string/jumbo v2, "pref_video_time_lapse_frame_interval_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 139
    const-string/jumbo v1, "camera_picturesize"

    const-string/jumbo v2, "pref_camera_picturesize_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 141
    const-string/jumbo v1, "camera_jpegquality"

    const-string/jumbo v2, "pref_camera_jpegquality_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 142
    const-string/jumbo v1, "camera_focus_mode"

    const-string/jumbo v2, "pref_camera_focus_mode_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 143
    const-string/jumbo v1, "camera_flashmode"

    const-string/jumbo v2, "pref_camera_flashmode_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 144
    const-string/jumbo v1, "camera_skin_beautify"

    const-string/jumbo v2, "pref_camera_skin_beautify_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 145
    const-string/jumbo v1, "camera_video_flashmode"

    const-string/jumbo v2, "pref_camera_video_flashmode_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 146
    const-string/jumbo v1, "camera_whitebalance"

    const-string/jumbo v2, "pref_camera_whitebalance_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 147
    const-string/jumbo v1, "camera_scenemode"

    const-string/jumbo v2, "pref_camera_scenemode_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 148
    const-string/jumbo v1, "camera_exposure"

    const-string/jumbo v2, "pref_camera_exposure_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 149
    const-string/jumbo v1, "camera_zoom"

    const-string/jumbo v2, "pref_camera_zoom_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 150
    const-string/jumbo v1, "camera_autoexposure"

    const-string/jumbo v2, "pref_camera_autoexposure_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 151
    const-string/jumbo v1, "video_effect"

    const-string/jumbo v2, "pref_video_effect_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 152
    const-string/jumbo v1, "camera_id"

    const-string/jumbo v2, "pref_camera_id_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 162
    const-string/jumbo v1, "camera_coloreffect"

    const-string/jumbo v2, "pref_camera_coloreffect_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 163
    const-string/jumbo v1, "camera_shader_coloreffect"

    const-string/jumbo v2, "pref_camera_shader_coloreffect_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 164
    const-string/jumbo v1, "camera_facedetection"

    const-string/jumbo v2, "pref_camera_facedetection_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 165
    const-string/jumbo v1, "camera_burst_shooting"

    const-string/jumbo v2, "pref_camera_burst_shooting_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 166
    const-string/jumbo v1, "camera_touchafaec"

    const-string/jumbo v2, "pref_camera_touchafaec_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 168
    const-string/jumbo v1, "camera_antibanding"

    const-string/jumbo v2, "pref_camera_antibanding_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 170
    const-string/jumbo v1, "camera_hand_night"

    const-string/jumbo v2, "pref_camera_hand_night_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 171
    const-string/jumbo v1, "camera_volumekey_function"

    const-string/jumbo v2, "pref_camera_volumekey_function_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 179
    const-string/jumbo v1, "camera_movie_solid"

    const-string/jumbo v2, "pref_camera_movie_solid_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 185
    const-string/jumbo v1, "camera_panoramamode"

    const-string/jumbo v2, "pref_camera_panoramamode_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 187
    const-string/jumbo v1, "camera_referenceline"

    const-string/jumbo v2, "pref_camera_referenceline_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 189
    const-string/jumbo v1, "video_focusmode"

    const-string/jumbo v2, "pref_video_focusmode_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 190
    const-string/jumbo v1, "video_hdr"

    const-string/jumbo v2, "pref_video_hdr_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 191
    const-string/jumbo v1, "video_captrue_ability"

    const-string/jumbo v2, "pref_video_captrue_ability_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 192
    const-string/jumbo v1, "video_speed"

    const-string/jumbo v2, "pref_video_speed_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 193
    const-string/jumbo v1, "scan_qrcode"

    const-string/jumbo v2, "pref_scan_qrcode_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 194
    const-string/jumbo v1, "watermark"

    const-string/jumbo v2, "pref_watermark_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 195
    const-string/jumbo v1, "face_info_watermark"

    const-string/jumbo v2, "pref_face_info_watermark_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 199
    const-string/jumbo v1, "qc_camera_saturation"

    const-string/jumbo v2, "pref_qc_camera_saturation_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 200
    const-string/jumbo v1, "qc_camera_contrast"

    const-string/jumbo v2, "pref_qc_camera_contrast_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 201
    const-string/jumbo v1, "qc_camera_sharpness"

    const-string/jumbo v2, "pref_qc_camera_sharpness_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 202
    const-string/jumbo v1, "qc_camera_iso"

    const-string/jumbo v2, "pref_qc_camera_iso_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 204
    const-string/jumbo v1, "qc_camera_exposuretime"

    const-string/jumbo v2, "pref_qc_camera_exposuretime_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 206
    const-string/jumbo v1, "qc_manual_whitebalance_k_value"

    const-string/jumbo v2, "pref_qc_manual_whitebalance_k_value_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createIntEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 209
    const-string/jumbo v1, "focus_position"

    const-string/jumbo v2, "pref_focus_position_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 210
    const-string/jumbo v1, "qc_focus_mode_switching"

    const-string/jumbo v2, "pref_qc_focus_mode_switching_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 211
    const-string/jumbo v1, "camera_denoise"

    const-string/jumbo v2, "pref_camera_denoise_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 214
    const-string/jumbo v1, "camera_hdr_type"

    const-string/jumbo v2, "pref_camera_hdr_type_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 216
    const-string/jumbo v1, "key_camera_smart_shutter_position"

    const-string/jumbo v2, "pref_key_camera_smart_shutter_position"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 217
    const-string/jumbo v1, "video_speed_fast"

    const-string/jumbo v2, "pref_video_speed_fast_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 218
    const-string/jumbo v1, "video_speed_slow"

    const-string/jumbo v2, "pref_video_speed_slow_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 219
    const-string/jumbo v1, "auto_chroma_flash"

    const-string/jumbo v2, "pref_auto_chroma_flash_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 220
    const-string/jumbo v1, "capture_when_stable"

    const-string/jumbo v2, "pref_capture_when_stable_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 224
    const-string/jumbo v1, "front_mirror"

    const-string/jumbo v2, "pref_front_mirror_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 231
    const-string/jumbo v1, "camera_face_beauty"

    const-string/jumbo v2, "pref_camera_face_beauty_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 232
    const-string/jumbo v1, "camera_face_beauty_mode"

    const-string/jumbo v2, "pref_camera_face_beauty_mode_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 233
    const-string/jumbo v1, "camera_show_gender_age"

    const-string/jumbo v2, "pref_camera_show_gender_age_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 234
    const-string/jumbo v1, "priority_storage"

    const-string/jumbo v2, "pref_priority_storage"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 241
    const-string/jumbo v1, "camera_ubifocus"

    const-string/jumbo v2, "pref_camera_ubifocus_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 242
    const-string/jumbo v1, "camera_gradienter"

    const-string/jumbo v2, "pref_camera_gradienter_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 243
    const-string/jumbo v1, "camera_manual_mode"

    const-string/jumbo v2, "pref_camera_manual_mode_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 247
    const-string/jumbo v1, "camera_restored_flashmode"

    const-string/jumbo v2, "pref_camera_restored_flashmode_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 248
    const-string/jumbo v1, "camera_long_press_shutter"

    const-string/jumbo v2, "pref_camera_long_press_shutter_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 249
    const-string/jumbo v1, "camera_long_press_shutter_feature"

    const-string/jumbo v2, "pref_camera_long_press_shutter_feature_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 251
    const-string/jumbo v1, "audio_focus"

    const-string/jumbo v2, "pref_audio_focus_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 252
    const-string/jumbo v1, "camera_hdr"

    const-string/jumbo v2, "pref_camera_hdr_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 253
    const-string/jumbo v1, "delay_capture"

    const-string/jumbo v2, "pref_delay_capture_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 254
    const-string/jumbo v1, "delay_capture_mode"

    const-string/jumbo v2, "pref_delay_capture_mode"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 255
    const-string/jumbo v1, "camera_asd_night"

    const-string/jumbo v2, "pref_camera_asd_night_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x44

    aput-object v1, v0, v2

    .line 256
    const-string/jumbo v1, "camera_asd_popup"

    const-string/jumbo v2, "pref_camera_asd_popup_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 257
    const-string/jumbo v1, "camera_peak"

    const-string/jumbo v2, "pref_camera_peak_key"

    invoke-static {v1, v2}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v1

    const/16 v2, 0x46

    aput-object v1, v0, v2

    .line 130
    sput-object v0, Lcom/android/camera/backup/CameraBackupSettings;->PREF_ENTRIES:[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
