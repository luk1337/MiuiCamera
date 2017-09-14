.class public Lcom/android/camera/CameraDataAnalytics;
.super Ljava/lang/Object;
.source "CameraDataAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraDataAnalytics$Event;,
        Lcom/android/camera/CameraDataAnalytics$Rule;,
        Lcom/android/camera/CameraDataAnalytics$RuleParser;
    }
.end annotation


# static fields
.field private static final PREFERENCE_FILE_PATH:Ljava/lang/String;

.field private static sAnalytics:Lcom/android/camera/CameraDataAnalytics;

.field private static final sTrackEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackPreference:Landroid/content/SharedPreferences;

.field private mFrontPreference:Landroid/content/SharedPreferences;

.field private mPreference:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 298
    const-string/jumbo v1, "_data_analytics"

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraDataAnalytics;->PREFERENCE_FILE_PATH:Ljava/lang/String;

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    .line 302
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "camera_picture_taken_key"

    const-string/jumbo v2, "\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "video_recorded_key"

    const-string/jumbo v2, "\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "scroll_to_menu_key"

    const-string/jumbo v2, "\u6ed1\u52a8\u5230Menu\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "scroll_to_effect_key"

    const-string/jumbo v2, "\u6ed1\u52a8\u5230\u7279\u6548\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_camera_panoramamode_key"

    const-string/jumbo v2, "\u5168\u666f\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_camera_hdr_key"

    const-string/jumbo v2, "HDR\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_camera_face_beauty_mode_key"

    const-string/jumbo v2, "\u7f8e\u989c\u6a21\u5f0f\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_camera_burst_shooting_key"

    const-string/jumbo v2, "\u8fde\u62cd\u6a21\u5f0f\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_camera_manual_mode_key"

    const-string/jumbo v2, "\u624b\u52a8\u6a21\u5f0f\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_camera_hand_night_key"

    const-string/jumbo v2, "\u591c\u666f\u9632\u6296\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_camera_ubifocus_key"

    const-string/jumbo v2, "\u9b54\u672f\u5bf9\u7126\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_camera_square_mode_key"

    const-string/jumbo v2, "\u6b63\u65b9\u5f62\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_camera_scenemode_key"

    const-string/jumbo v2, "\u573a\u666f\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_delay_capture_mode"

    const-string/jumbo v2, "\u5ef6\u65f6\u5feb\u95e8\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_camera_gradienter_key"

    const-string/jumbo v2, "\u6c34\u5e73\u4eea\u6a21\u5f0f\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_camera_tilt_shift_mode"

    const-string/jumbo v2, "\u79fb\u8f74\u6a21\u5f0f\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_camera_groupshot_mode_key"

    const-string/jumbo v2, "\u5408\u5f71\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_camera_stereo_mode_key"

    const-string/jumbo v2, "DUAL\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_camera_mono_mode_key"

    const-string/jumbo v2, "MONO\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_camera_raw_mode_key"

    const-string/jumbo v2, "RAW\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_camera_whitebalance_key"

    const-string/jumbo v2, "\u767d\u5e73\u8861\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_focus_position_key"

    const-string/jumbo v2, "\u5bf9\u7126\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_qc_camera_exposuretime_key"

    const-string/jumbo v2, "\u5feb\u95e8\u65f6\u95f4\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_qc_camera_iso_key"

    const-string/jumbo v2, "ISO\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "manual_whitebalance_key"

    const-string/jumbo v2, "\u624b\u52a8\u767d\u5e73\u8861\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_camera_shader_coloreffect_key"

    const-string/jumbo v2, "\u6ee4\u955c\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_camera_exposure_key"

    const-string/jumbo v2, "\u66dd\u5149\u73af\u8c03\u8282\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_camera_referenceline_key"

    const-string/jumbo v2, "\u8f85\u52a9\u7ebf\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_settings"

    const-string/jumbo v2, "\u8bbe\u7f6e\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_times_focus_view"

    const-string/jumbo v2, "\u66dd\u5149\u73af\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_times_volume"

    const-string/jumbo v2, "\u97f3\u91cf\u952e\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_times_shutter"

    const-string/jumbo v2, "\u62cd\u7167\u952e\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_times_audio"

    const-string/jumbo v2, "\u58f0\u63a7\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_times_count_down"

    const-string/jumbo v2, "\u5012\u8ba1\u65f6\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_times_count_down_3s"

    const-string/jumbo v2, "\u5012\u8ba1\u65f63s\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_times_count_down_5s"

    const-string/jumbo v2, "\u5012\u8ba1\u65f65s\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_times_count_down_10s"

    const-string/jumbo v2, "\u5012\u8ba1\u65f610s\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_times_long_press"

    const-string/jumbo v2, "\u957f\u6309\u5c4f\u5e55\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_times_t2t"

    const-string/jumbo v2, "\u7269\u4f53\u8ffd\u8e2a\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_times_finger"

    const-string/jumbo v2, "\u6307\u7eb9\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "record_times_finger"

    const-string/jumbo v2, "\u6307\u7eb9\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "burst_times"

    const-string/jumbo v2, "\u8fde\u62cd\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_nums_normal_hdr"

    const-string/jumbo v2, "\u6807\u51c6HDR\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_nums_live_hdr"

    const-string/jumbo v2, "\u5b9e\u65f6HDR\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_nums_burst"

    const-string/jumbo v2, "\u8fde\u62cd\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_nums_beauty"

    const-string/jumbo v2, "\u7f8e\u989c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_nums_hht"

    const-string/jumbo v2, "\u591c\u95f4\u9632\u6296\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_nums_ubfocus"

    const-string/jumbo v2, "\u9b54\u672f\u5bf9\u7126\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_nums_manual"

    const-string/jumbo v2, "\u624b\u52a8\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_nums_gradienter"

    const-string/jumbo v2, "\u6c34\u5e73\u4eea\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_nums_groupshot"

    const-string/jumbo v2, "\u5408\u5f71\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_nums_dual"

    const-string/jumbo v2, "DUAL\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_nums_mono"

    const-string/jumbo v2, "MONO\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_nums_raw"

    const-string/jumbo v2, "RAW\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_nums_tilt_shift_circle"

    const-string/jumbo v2, "\u5706\u5f62\u79fb\u8f74\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_nums_tilt_shift_parallel"

    const-string/jumbo v2, "\u5e73\u884c\u79fb\u8f74\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_nums_video_capture"

    const-string/jumbo v2, "\u5f55\u50cf\u65f6\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_times_quick_snap"

    const-string/jumbo v2, "\u8857\u62cd\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_nums_panorama"

    const-string/jumbo v2, "\u5168\u666f\u62cd\u7167\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_times_size_16_9"

    const-string/jumbo v2, "\u5168\u5c4f\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_times_size_4_3"

    const-string/jumbo v2, "\u534a\u5c4f\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "capture_times_size_1_1"

    const-string/jumbo v2, "\u6b63\u65b9\u5f62\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "t2t_times"

    const-string/jumbo v2, "\u7269\u4f53\u8ffd\u8e2a\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "zoom_gesture_times"

    const-string/jumbo v2, "\u624b\u52bfZOOM\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "zoom_volume_times"

    const-string/jumbo v2, "\u97f3\u91cf\u952eZOOM\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_video_hdr_key"

    const-string/jumbo v2, "HDR\u5f55\u50cf\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_video_speed_fast_key"

    const-string/jumbo v2, "\u5feb\u52a8\u4f5c\u5f55\u50cf\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pref_video_speed_slow_key"

    const-string/jumbo v2, "\u6162\u52a8\u4f5c\u5f55\u50cf\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "video_fast_recording_times_key"

    const-string/jumbo v2, "\u5feb\u52a8\u4f5c\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "video_slow_recording_times_key"

    const-string/jumbo v2, "\u6162\u52a8\u4f5c\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "video_hdr_recording_times_key"

    const-string/jumbo v2, "HDR\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "video_pause_recording_times_key"

    const-string/jumbo v2, "\u5f55\u50cf\u6682\u505c\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "video_torch_recording_times_key"

    const-string/jumbo v2, "\u5f00\u95ea\u5149\u706f\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "video_front_camera_recording_times_key"

    const-string/jumbo v2, "\u524d\u7f6e\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "video_quality_4k_recording_times_key"

    const-string/jumbo v2, "\u8d85\u9ad8\u6e05\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "video_quality_1080_recording_times_key"

    const-string/jumbo v2, "\u5168\u9ad8\u6e05\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "video_quality_720_recording_times_key"

    const-string/jumbo v2, "\u9ad8\u6e05\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "video_quality_480_recording_times_key"

    const-string/jumbo v2, "\u6807\u6e05\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "open_camera_times_key"

    const-string/jumbo v2, "\u76f8\u673a\u5f00\u542f\u6301\u7eed\u65f6\u95f4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "open_camera_fail_key"

    const-string/jumbo v2, "\u76f8\u673a\u65e0\u6cd5\u8fde\u63a5\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "picture_with_location_key"

    const-string/jumbo v2, "\u8bb0\u5f55\u4f4d\u7f6e\u4fe1\u606f\u56fe\u7247\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "video_with_location_key"

    const-string/jumbo v2, "\u8bb0\u5f55\u4f4d\u7f6e\u4fe1\u606f\u89c6\u9891\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "picture_without_location_key"

    const-string/jumbo v2, "\u7f3a\u5c11\u4f4d\u7f6e\u4fe1\u606f\u56fe\u7247\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "video_without_location_key"

    const-string/jumbo v2, "\u7f3a\u5c11\u4f4d\u7f6e\u4fe1\u606f\u89c6\u9891\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "picture_with_location_on_key"

    const-string/jumbo v2, "\u4f4d\u7f6e\u9009\u9879\u5f00\u56fe\u7247\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "picture_with_location_off_key"

    const-string/jumbo v2, "\u4f4d\u7f6e\u9009\u9879\u5173\u56fe\u7247\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "picture_with_cache_location_key"

    const-string/jumbo v2, "\u8bb0\u5f55cache\u4f4d\u7f6e\u4fe1\u606f\u56fe\u7247\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "video_with_location_on_key"

    const-string/jumbo v2, "\u4f4d\u7f6e\u9009\u9879\u5f00\u89c6\u9891\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "video_with_location_off_key"

    const-string/jumbo v2, "\u4f4d\u7f6e\u9009\u9879\u5173\u89c6\u9891\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "front_camera_picture_taken_key"

    const-string/jumbo v2, "\u81ea\u62cd\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "back_camera_picture_taken_key"

    const-string/jumbo v2, "\u540e\u7f6e\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_instagram_clarendon_picture_taken_key"

    const-string/jumbo v2, "\u5c0f\u6e05\u65b0\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_instagram_crema_picture_taken_key"

    const-string/jumbo v2, "\u79cb\u8272\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_vsco_f2_picture_taken_key"

    const-string/jumbo v2, "\u5178\u96c5\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_vsco_a4_picture_taken_key"

    const-string/jumbo v2, "\u552f\u7f8e\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_blackwhite_picture_taken_key"

    const-string/jumbo v2, "\u892a\u8272\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_instagram_rise_picture_taken_key"

    const-string/jumbo v2, "LOMO\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_instagram_hudson_picture_taken_key"

    const-string/jumbo v2, "\u84dd\u8c03\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_big_face_picture_taken_key"

    const-string/jumbo v2, "\u5927\u8138\u732b\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_small_face_picture_taken_key"

    const-string/jumbo v2, "\u5916\u661f\u4eba\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_long_face_picture_taken_key"

    const-string/jumbo v2, "\u62c9\u4f38\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_light_tunnel_picture_taken_key"

    const-string/jumbo v2, "\u5149\u96a7\u9053\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_gray_picture_taken_key"

    const-string/jumbo v2, "\u9ed1\u767d\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_vivid_picture_taken_key"

    const-string/jumbo v2, "\u751f\u52a8\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_yesteryear_picture_taken_key"

    const-string/jumbo v2, "\u5f80\u6614\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_gaussian_picture_taken_key"

    const-string/jumbo v2, "\u80cc\u666f\u865a\u5316\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_fisheye_picture_taken_key"

    const-string/jumbo v2, "\u9c7c\u773c\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_mosaic_picture_taken_key"

    const-string/jumbo v2, "\u9a6c\u8d5b\u514b\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_brannan_picture_taken_key"

    const-string/jumbo v2, "\u6668\u5149\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_seventy_picture_taken_key"

    const-string/jumbo v2, "\u5e74\u4ee370\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_jstyle_picture_taken_key"

    const-string/jumbo v2, "\u65e5\u7cfb\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_earlybird_picture_taken_key"

    const-string/jumbo v2, "\u79cb\u8272\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_nashvile_picture_taken_key"

    const-string/jumbo v2, "\u975b\u9752\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_mirror_picture_taken_key"

    const-string/jumbo v2, "\u955c\u9762\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "effect_sketch_picture_taken_key"

    const-string/jumbo v2, "\u7d20\u63cf\u6ee4\u955c\u5f20\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "qrcode_detected_times_key"

    const-string/jumbo v2, "\u4e8c\u7ef4\u7801\u8bc6\u522b\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "gesture_switch_camera_times_key"

    const-string/jumbo v2, "\u624b\u52bf\u5207\u6362\u76f8\u673a\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "clear_sight_failure_times_key"

    const-string/jumbo v2, "ClearSight\u5931\u8d25\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "camera2_error_times_key"

    const-string/jumbo v2, "Camera2\u9519\u8bef\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "proximity_lock_volume_times_key"

    const-string/jumbo v2, "\u9632\u8bef\u89e6\u97f3\u91cf\u952e\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "proximity_lock_snap_times_key"

    const-string/jumbo v2, "\u9632\u8bef\u89e6\u8857\u62cd\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "proximity_lock_keyguard_times_key"

    const-string/jumbo v2, "\u9632\u8bef\u89e6\u9501\u5c4f\u8fdb\u5165\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "proximity_lock_keyguard_unlock_times_key"

    const-string/jumbo v2, "\u9632\u8bef\u89e6\u9501\u5c4f\u81ea\u52a8\u89e3\u9664\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "proximity_lock_keyguard_timeout_times_key"

    const-string/jumbo v2, "\u9632\u8bef\u89e6\u9501\u5c4f\u8d85\u65f6\u9000\u51fa\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "proximity_lock_keyguard_dismiss_times_key"

    const-string/jumbo v2, "\u9632\u8bef\u89e6\u9501\u5c4f\u624b\u52a8\u89e3\u9664\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string/jumbo v1, "proximity_lock_sensor_delay_times_key"

    const-string/jumbo v2, "\u9632\u8bef\u89e6\u6a21\u5f0fsensor\u5ef6\u8fdf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getEventKeyToRulesMap()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 560
    new-instance v3, Lcom/android/camera/CameraDataAnalytics$RuleParser;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/android/camera/CameraDataAnalytics$RuleParser;-><init>(Lcom/android/camera/CameraDataAnalytics;Lcom/android/camera/CameraDataAnalytics$RuleParser;)V

    .line 561
    .local v3, "parser":Lcom/android/camera/CameraDataAnalytics$RuleParser;
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 562
    .local v2, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 564
    .local v4, "ruleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/CameraDataAnalytics$Rule;>;"
    :try_start_0
    invoke-virtual {v3, v2}, Lcom/android/camera/CameraDataAnalytics$RuleParser;->parse(Ljava/io/InputStream;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 570
    .end local v4    # "ruleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/CameraDataAnalytics$Rule;>;"
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/camera/CameraDataAnalytics;->invertRule(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v5

    return-object v5

    .line 567
    .restart local v4    # "ruleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/CameraDataAnalytics$Rule;>;"
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "CameraDataAnalytics"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v0}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 565
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 566
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v5, "CameraDataAnalytics"

    const-string/jumbo v6, "XmlPullParserException"

    invoke-static {v5, v6, v1}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static instance()Lcom/android/camera/CameraDataAnalytics;
    .locals 1

    .prologue
    .line 458
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sAnalytics:Lcom/android/camera/CameraDataAnalytics;

    if-nez v0, :cond_0

    .line 459
    new-instance v0, Lcom/android/camera/CameraDataAnalytics;

    invoke-direct {v0}, Lcom/android/camera/CameraDataAnalytics;-><init>()V

    sput-object v0, Lcom/android/camera/CameraDataAnalytics;->sAnalytics:Lcom/android/camera/CameraDataAnalytics;

    .line 461
    :cond_0
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sAnalytics:Lcom/android/camera/CameraDataAnalytics;

    return-object v0
.end method

.method private invertRule(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/CameraDataAnalytics$Rule;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 574
    .local p1, "ruleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/CameraDataAnalytics$Rule;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 575
    .local v2, "eventKeyRulesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_4

    .line 576
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 577
    .local v5, "ruleIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/camera/CameraDataAnalytics$Rule;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 578
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/CameraDataAnalytics$Rule;

    .line 579
    .local v4, "rule":Lcom/android/camera/CameraDataAnalytics$Rule;
    iget-object v7, v4, Lcom/android/camera/CameraDataAnalytics$Rule;->name:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v4, Lcom/android/camera/CameraDataAnalytics$Rule;->eventList:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 580
    iget-object v7, v4, Lcom/android/camera/CameraDataAnalytics$Rule;->eventList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 581
    .local v1, "eventIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/camera/CameraDataAnalytics$Event;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 582
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraDataAnalytics$Event;

    .line 583
    .local v0, "event":Lcom/android/camera/CameraDataAnalytics$Event;
    iget-object v7, v0, Lcom/android/camera/CameraDataAnalytics$Event;->key:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 584
    sget-object v7, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    iget-object v8, v0, Lcom/android/camera/CameraDataAnalytics$Event;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 585
    .local v3, "expectedName":Ljava/lang/String;
    if-eqz v3, :cond_2

    iget-object v7, v0, Lcom/android/camera/CameraDataAnalytics$Event;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 589
    :goto_1
    iget-object v7, v0, Lcom/android/camera/CameraDataAnalytics$Event;->key:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 590
    .local v6, "ruleNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v6, :cond_3

    .line 591
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "ruleNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .restart local v6    # "ruleNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, v4, Lcom/android/camera/CameraDataAnalytics$Rule;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    iget-object v7, v0, Lcom/android/camera/CameraDataAnalytics$Event;->key:Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 586
    .end local v6    # "ruleNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v7, "CameraDataAnalytics"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "NOT MATCH: key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/camera/CameraDataAnalytics$Event;->key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/camera/CameraDataAnalytics$Event;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 587
    const-string/jumbo v9, " expectedName="

    .line 586
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 594
    .restart local v6    # "ruleNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v7, v4, Lcom/android/camera/CameraDataAnalytics$Rule;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 595
    iget-object v7, v4, Lcom/android/camera/CameraDataAnalytics$Rule;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 602
    .end local v0    # "event":Lcom/android/camera/CameraDataAnalytics$Event;
    .end local v1    # "eventIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/camera/CameraDataAnalytics$Event;>;"
    .end local v3    # "expectedName":Ljava/lang/String;
    .end local v4    # "rule":Lcom/android/camera/CameraDataAnalytics$Rule;
    .end local v5    # "ruleIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/camera/CameraDataAnalytics$Rule;>;"
    .end local v6    # "ruleNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    return-object v2
.end method

.method private uploadToServer(Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 22
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "preference"    # Landroid/content/SharedPreferences;

    .prologue
    .line 492
    if-nez p2, :cond_0

    .line 493
    return-void

    .line 495
    :cond_0
    const-string/jumbo v15, "open_camera_times_key"

    const-wide/16 v20, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v20

    invoke-interface {v0, v15, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 496
    .local v16, "startTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v10, v20, v16

    .line 497
    .local v10, "lastTime":J
    const-wide/32 v20, 0x5265c00

    cmp-long v15, v10, v20

    if-gtz v15, :cond_1

    const-wide/16 v20, 0x7d0

    cmp-long v15, v10, v20

    if-gez v15, :cond_2

    .line 498
    :cond_1
    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 499
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 500
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 501
    return-void

    .line 504
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraDataAnalytics;->getEventKeyToRulesMap()Ljava/util/HashMap;

    move-result-object v5

    .line 506
    .local v5, "eventKeyToRulesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :try_start_0
    sget-object v15, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 507
    .local v8, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "key$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 508
    .local v6, "key":Ljava/lang/String;
    const-wide/16 v20, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v20

    invoke-interface {v0, v6, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    .line 509
    .local v18, "value":J
    const-wide/16 v20, 0x0

    cmp-long v15, v18, v20

    if-eqz v15, :cond_3

    .line 510
    const-string/jumbo v15, "open_camera_times_key"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 512
    sget-object v15, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-wide/16 v20, 0x3e8

    div-long v20, v10, v20

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-static {v0, v15, v1, v2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 527
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "key$iterator":Ljava/util/Iterator;
    .end local v8    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v18    # "value":J
    :catchall_0
    move-exception v15

    .line 528
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 527
    throw v15

    .line 514
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v7    # "key$iterator":Ljava/util/Iterator;
    .restart local v8    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v18    # "value":J
    :cond_4
    :try_start_1
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 515
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 516
    .local v14, "ruleNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "ruleName$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 517
    .local v12, "ruleName":Ljava/lang/String;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 518
    .local v9, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v20, "name"

    sget-object v15, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v12, v1, v2, v9}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    goto :goto_1

    .line 522
    .end local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "ruleName":Ljava/lang/String;
    .end local v13    # "ruleName$iterator":Ljava/util/Iterator;
    .end local v14    # "ruleNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    sget-object v15, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v15, v1, v2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 528
    .end local v6    # "key":Ljava/lang/String;
    .end local v18    # "value":J
    :cond_6
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 531
    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 532
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 533
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 491
    return-void
.end method


# virtual methods
.method public openPreference(I)V
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 469
    if-gez p1, :cond_1

    .line 470
    iput-object v0, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 472
    iget-object v0, p0, Lcom/android/camera/CameraDataAnalytics;->mFrontPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 473
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/CameraDataAnalytics;->PREFERENCE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_front"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraDataAnalytics;->mFrontPreference:Landroid/content/SharedPreferences;

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraDataAnalytics;->mFrontPreference:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 477
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/camera/CameraDataAnalytics;->mBackPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_4

    .line 479
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/CameraDataAnalytics;->PREFERENCE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_back"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraDataAnalytics;->mBackPreference:Landroid/content/SharedPreferences;

    .line 482
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CameraDataAnalytics;->mBackPreference:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    goto :goto_0
.end method

.method public trackEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 537
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 536
    return-void
.end method

.method public trackEvent(Ljava/lang/String;J)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # J

    .prologue
    .line 549
    if-nez p1, :cond_0

    return-void

    .line 550
    :cond_0
    sget-object v4, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 551
    .local v1, "trackEvent":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 552
    iget-object v4, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 553
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    const-wide/16 v6, 0x0

    invoke-interface {v4, p1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 554
    .local v2, "oldValue":J
    add-long v4, p2, v2

    invoke-interface {v0, p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 555
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 548
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "oldValue":J
    :cond_1
    return-void
.end method

.method public trackEventTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 540
    return-void
.end method

.method public uploadToServer()V
    .locals 2

    .prologue
    .line 487
    const-string/jumbo v0, "FrontCamera"

    iget-object v1, p0, Lcom/android/camera/CameraDataAnalytics;->mFrontPreference:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraDataAnalytics;->uploadToServer(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 488
    const-string/jumbo v0, "BackCamera"

    iget-object v1, p0, Lcom/android/camera/CameraDataAnalytics;->mBackPreference:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraDataAnalytics;->uploadToServer(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 486
    return-void
.end method
