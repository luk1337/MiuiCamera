.class public Lcom/android/camera/ui/SettingPopupFactory;
.super Ljava/lang/Object;
.source "SettingPopupFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    const-string/jumbo v2, "layout_inflater"

    .line 14
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 17
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .line 19
    .local v0, "inflateRes":I
    const-string/jumbo v2, "pref_qc_camera_iso_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    const v0, 0x7f040013

    .line 62
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/V6AbstractSettingPopup;

    return-object v2

    .line 21
    :cond_0
    const-string/jumbo v2, "pref_delay_capture_mode"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    const v0, 0x7f040027

    goto :goto_0

    .line 23
    :cond_1
    const-string/jumbo v2, "pref_skin_beautify_skin_color_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 24
    const-string/jumbo v2, "pref_skin_beautify_slim_face_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 23
    if-nez v2, :cond_2

    .line 25
    const-string/jumbo v2, "pref_skin_beautify_skin_smooth_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 23
    if-nez v2, :cond_2

    .line 26
    const-string/jumbo v2, "pref_skin_beautify_enlarge_eye_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 23
    if-eqz v2, :cond_3

    .line 27
    :cond_2
    const v0, 0x7f04002a

    goto :goto_0

    .line 28
    :cond_3
    const-string/jumbo v2, "pref_camera_whitebalance_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 29
    const v0, 0x7f04000d

    goto :goto_0

    .line 30
    :cond_4
    const-string/jumbo v2, "pref_focus_position_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 31
    const v0, 0x7f040012

    goto :goto_0

    .line 32
    :cond_5
    const-string/jumbo v2, "pref_camera_manual_mode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 33
    const-string/jumbo v2, "pref_camera_face_beauty_advanced_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 32
    if-eqz v2, :cond_7

    .line 34
    :cond_6
    const v0, 0x7f04001c

    goto :goto_0

    .line 35
    :cond_7
    const-string/jumbo v2, "pref_qc_camera_exposuretime_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 36
    const v0, 0x7f040011

    goto :goto_0

    .line 37
    :cond_8
    const-string/jumbo v2, "pref_camera_scenemode_setting_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 38
    const v0, 0x7f04000c

    goto/16 :goto_0

    .line 39
    :cond_9
    const-string/jumbo v2, "pref_camera_stereo_mode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 40
    const v0, 0x7f04001a

    goto/16 :goto_0

    .line 41
    :cond_a
    const-string/jumbo v2, "pref_audio_focus_mode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 42
    const-string/jumbo v2, "pref_delay_capture_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 41
    if-nez v2, :cond_b

    .line 43
    const-string/jumbo v2, "pref_camera_tilt_shift_mode"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 41
    if-nez v2, :cond_b

    .line 44
    const-string/jumbo v2, "pref_camera_face_beauty_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 41
    if-eqz v2, :cond_c

    .line 45
    :cond_b
    const v0, 0x7f04000f

    goto/16 :goto_0

    .line 46
    :cond_c
    const-string/jumbo v2, "pref_camera_flashmode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 47
    const-string/jumbo v2, "pref_camera_video_flashmode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 46
    if-nez v2, :cond_d

    .line 48
    const-string/jumbo v2, "pref_camera_hdr_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 46
    if-nez v2, :cond_d

    .line 49
    const-string/jumbo v2, "pref_video_hdr_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 46
    if-nez v2, :cond_d

    .line 50
    const-string/jumbo v2, "pref_camera_face_beauty_switch_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 46
    if-eqz v2, :cond_e

    .line 51
    :cond_d
    const v0, 0x7f04000a

    goto/16 :goto_0

    .line 52
    :cond_e
    const-string/jumbo v2, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 53
    const v0, 0x7f040006

    goto/16 :goto_0

    .line 54
    :cond_f
    const-string/jumbo v2, "pref_camera_face_beauty_mode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 55
    const v0, 0x7f040027

    goto/16 :goto_0

    .line 56
    :cond_10
    const-string/jumbo v2, "pref_camera_zoom_mode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 57
    const v0, 0x7f04002d

    goto/16 :goto_0

    .line 59
    :cond_11
    const/4 v2, 0x0

    return-object v2
.end method
