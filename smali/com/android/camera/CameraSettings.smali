.class public Lcom/android/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# static fields
.field public static final BOTTOM_CONTROL_HEIGHT:I

.field private static final MMS_VIDEO_DURATION:I

.field public static final SURFACE_LEFT_MARGIN_MDP_QUALITY_480P:I

.field public static final SURFACE_LEFT_MARGIN_MDP_QUALITY_LOW:I

.field public static final TOP_CONTROL_HEIGHT:I

.field public static final sCameraChangeManager:Lcom/android/camera/ChangeManager;

.field public static sCroppedIfNeeded:Z

.field private static sEdgePhotoEnable:Z

.field public static sRemindMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSceneToFlash:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 225
    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 226
    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->duration:I

    .line 225
    :goto_0
    sput v0, Lcom/android/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    .line 258
    sput-boolean v1, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    .line 259
    sput-boolean v1, Lcom/android/camera/CameraSettings;->sEdgePhotoEnable:Z

    .line 267
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 268
    const v1, 0x7f080039

    .line 267
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/CameraSettings;->TOP_CONTROL_HEIGHT:I

    .line 269
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 270
    const v1, 0x7f08003c

    .line 269
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    .line 271
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 272
    const v1, 0x7f080070

    .line 271
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/CameraSettings;->SURFACE_LEFT_MARGIN_MDP_QUALITY_480P:I

    .line 273
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 274
    const v1, 0x7f080071

    .line 273
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/CameraSettings;->SURFACE_LEFT_MARGIN_MDP_QUALITY_LOW:I

    .line 275
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/CameraSettings;->sRemindMode:Ljava/util/ArrayList;

    .line 278
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string/jumbo v1, "portrait"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string/jumbo v1, "landscape"

    const-string/jumbo v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string/jumbo v1, "sports"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string/jumbo v1, "night"

    const-string/jumbo v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string/jumbo v1, "night-portrait"

    const-string/jumbo v2, "on"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string/jumbo v1, "beach"

    const-string/jumbo v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string/jumbo v1, "snow"

    const-string/jumbo v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string/jumbo v1, "sunset"

    const-string/jumbo v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string/jumbo v1, "fireworks"

    const-string/jumbo v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string/jumbo v1, "backlight"

    const-string/jumbo v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string/jumbo v1, "flowers"

    const-string/jumbo v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/android/camera/CameraSettings;->sRemindMode:Ljava/util/ArrayList;

    const-string/jumbo v1, "pref_camera_mode_settings_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v0, Lcom/android/camera/CameraSettings;->sRemindMode:Ljava/util/ArrayList;

    const-string/jumbo v1, "pref_camera_magic_mirror_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    sget-object v0, Lcom/android/camera/CameraSettings;->sRemindMode:Ljava/util/ArrayList;

    const-string/jumbo v1, "pref_camera_groupshot_mode_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isMonoSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    sget-object v0, Lcom/android/camera/CameraSettings;->sRemindMode:Ljava/util/ArrayList;

    const-string/jumbo v1, "pref_camera_mono_mode_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isRAWSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    sget-object v0, Lcom/android/camera/CameraSettings;->sRemindMode:Ljava/util/ArrayList;

    const-string/jumbo v1, "pref_camera_raw_mode_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    :cond_2
    new-instance v0, Lcom/android/camera/ChangeManager;

    invoke-direct {v0}, Lcom/android/camera/ChangeManager;-><init>()V

    sput-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    .line 62
    return-void

    .line 227
    :cond_3
    const/16 v0, 0x1e

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelFrontCameraFirstUseHint(Lcom/android/camera/preferences/CameraSettingPreferences;)V
    .locals 3
    .param p0, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 1649
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1650
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_front_camera_first_use_hint_shown_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1651
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1648
    return-void
.end method

.method public static cancelRemind(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1662
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isNeedRemind(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1663
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1664
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_remind"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1665
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1661
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private static changePreviewPanelLayoutParams(Lcom/android/camera/ActivityBase;I)V
    .locals 4
    .param p0, "activity"    # Lcom/android/camera/ActivityBase;
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 963
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewPanel()Lcom/android/camera/ui/V6PreviewPanel;

    move-result-object v1

    .line 965
    .local v1, "previewPanel":Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 966
    .local v0, "p1":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez p1, :cond_0

    .line 967
    sget v2, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 968
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getBottomControlPanel()Lcom/android/camera/ui/BottomControlPanel;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/BottomControlPanel;->setBackgroundVisible(Z)V

    .line 974
    :goto_0
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 962
    return-void

    .line 971
    :cond_0
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 972
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getBottomControlPanel()Lcom/android/camera/ui/BottomControlPanel;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/BottomControlPanel;->setBackgroundVisible(Z)V

    goto :goto_0
.end method

.method private static changeSettingStatusBarLayoutParams(Lcom/android/camera/ActivityBase;I)V
    .locals 4
    .param p0, "activity"    # Lcom/android/camera/ActivityBase;
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 979
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v1

    .line 981
    .local v1, "statusBar":Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 982
    .local v0, "p1":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez p1, :cond_0

    .line 983
    sget v2, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 988
    :goto_0
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 978
    return-void

    .line 986
    :cond_0
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private static changeSurfaceViewFrameLayoutParams(Lcom/android/camera/ActivityBase;III)V
    .locals 6
    .param p0, "activity"    # Lcom/android/camera/ActivityBase;
    .param p1, "index"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 941
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 942
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;

    move-result-object v2

    .line 944
    .local v2, "previewPanel":Landroid/widget/FrameLayout;
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 945
    .local v1, "p1":Landroid/widget/FrameLayout$LayoutParams;
    if-nez p1, :cond_3

    .line 947
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    invoke-static {p2, p3}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 948
    :cond_0
    const/4 v0, 0x0

    .line 949
    .local v0, "margin":I
    :goto_0
    sget v3, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    invoke-virtual {v1, v0, v5, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 959
    .end local v0    # "margin":I
    :goto_1
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 940
    return-void

    .line 941
    .end local v1    # "p1":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "previewPanel":Landroid/widget/FrameLayout;
    :cond_1
    return-void

    .line 948
    .restart local v1    # "p1":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v2    # "previewPanel":Landroid/widget/FrameLayout;
    :cond_2
    sget v0, Lcom/android/camera/CameraSettings;->SURFACE_LEFT_MARGIN_MDP_QUALITY_LOW:I

    .restart local v0    # "margin":I
    goto :goto_0

    .line 950
    .end local v0    # "margin":I
    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 952
    sget v3, Lcom/android/camera/CameraSettings;->SURFACE_LEFT_MARGIN_MDP_QUALITY_480P:I

    .line 954
    sget v4, Lcom/android/camera/CameraSettings;->SURFACE_LEFT_MARGIN_MDP_QUALITY_480P:I

    .line 952
    invoke-virtual {v1, v3, v5, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 957
    :cond_4
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method

.method public static changeUIByPreviewSize(Lcom/android/camera/ActivityBase;I)V
    .locals 1
    .param p0, "activity"    # Lcom/android/camera/ActivityBase;
    .param p1, "index"    # I

    .prologue
    const/4 v0, -0x1

    .line 1017
    invoke-static {p0, p1, v0, v0}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;III)V

    .line 1016
    return-void
.end method

.method public static changeUIByPreviewSize(Lcom/android/camera/ActivityBase;III)V
    .locals 1
    .param p0, "activity"    # Lcom/android/camera/ActivityBase;
    .param p1, "index"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1021
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->changeSettingStatusBarLayoutParams(Lcom/android/camera/ActivityBase;I)V

    .line 1023
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->changePreviewPanelLayoutParams(Lcom/android/camera/ActivityBase;I)V

    .line 1024
    invoke-static {p0, p1, p2, p3}, Lcom/android/camera/CameraSettings;->changeSurfaceViewFrameLayoutParams(Lcom/android/camera/ActivityBase;III)V

    .line 1020
    :cond_0
    return-void
.end method

.method private static filterPreference(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "valuesId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            "Landroid/content/SharedPreferences$Editor;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1197
    .local p0, "preferenceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    if-eqz p3, :cond_0

    .line 1198
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1199
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-static {v0, p3}, Lcom/android/camera/CameraSettings;->isStringValueContained(Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1200
    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static get4kProfile()I
    .locals 1

    .prologue
    .line 774
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoQuality4kUHD()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 775
    :cond_0
    const v0, 0x7f0e0023

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAspectRatio(II)I
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 357
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->isNearRatio16_9(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x1

    return v0

    .line 360
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getBeautifyDetailValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1442
    const/4 v1, 0x0

    .line 1443
    .local v1, "resId":I
    const-string/jumbo v2, "pref_skin_beautify_skin_color_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1444
    const v1, 0x7f0e0210

    .line 1453
    :cond_0
    :goto_0
    const-string/jumbo v0, "0"

    .line 1454
    .local v0, "beautyValue":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1455
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "pref_camera_face_beauty_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    .line 1454
    if-eqz v2, :cond_2

    .line 1456
    :cond_1
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1457
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1459
    :cond_2
    return-object v0

    .line 1445
    .end local v0    # "beautyValue":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "pref_skin_beautify_slim_face_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1446
    const v1, 0x7f0e0211

    goto :goto_0

    .line 1447
    :cond_4
    const-string/jumbo v2, "pref_skin_beautify_skin_smooth_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1448
    const v1, 0x7f0e0213

    goto :goto_0

    .line 1449
    :cond_5
    const-string/jumbo v2, "pref_skin_beautify_enlarge_eye_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1450
    const v1, 0x7f0e0212

    goto :goto_0
.end method

.method public static getCameraId()I
    .locals 3

    .prologue
    .line 697
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_id_key"

    .line 698
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 697
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCountDownTimes()I
    .locals 3

    .prologue
    .line 1408
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_delay_capture_key"

    .line 1409
    const v2, 0x7f0e01bc

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1408
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDefaultPreferenceId(I)I
    .locals 1
    .param p0, "prefId"    # I

    .prologue
    .line 864
    sparse-switch p0, :sswitch_data_0

    .line 885
    :cond_0
    return p0

    .line 866
    :sswitch_0
    invoke-static {}, Lcom/android/camera/Util;->isAntibanding60()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    const v0, 0x7f0e00d4

    return v0

    .line 872
    :sswitch_1
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    invoke-static {}, Lcom/android/camera/Device;->isFrontVideoQualityShouldBe1080P()Z

    move-result v0

    .line 872
    if-eqz v0, :cond_0

    .line 874
    const v0, 0x7f0e0021

    return v0

    .line 879
    :sswitch_2
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI5:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI7:Z

    if-eqz v0, :cond_0

    .line 880
    :cond_1
    const v0, 0x7f0b0004

    return v0

    .line 864
    :sswitch_data_0
    .sparse-switch
        0x7f0b0003 -> :sswitch_2
        0x7f0e0020 -> :sswitch_1
        0x7f0e00d3 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getExitText(Ljava/lang/String;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const v1, 0x7f0e012b

    .line 1029
    const-string/jumbo v0, "pref_camera_coloreffect_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1030
    const-string/jumbo v0, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1029
    if-eqz v0, :cond_1

    .line 1031
    :cond_0
    const v0, 0x7f0e012a

    return v0

    .line 1032
    :cond_1
    const-string/jumbo v0, "pref_camera_hand_night_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1033
    const v0, 0x7f0e0128

    return v0

    .line 1034
    :cond_2
    const-string/jumbo v0, "pref_camera_panoramamode_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1035
    const v0, 0x7f0e0129

    return v0

    .line 1036
    :cond_3
    const-string/jumbo v0, "pref_video_speed_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1037
    return v1

    .line 1038
    :cond_4
    const-string/jumbo v0, "pref_camera_face_beauty_mode_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1039
    const v0, 0x7f0e016c

    return v0

    .line 1040
    :cond_5
    const-string/jumbo v0, "pref_delay_capture_mode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1041
    const v0, 0x7f0e01bb

    return v0

    .line 1042
    :cond_6
    const-string/jumbo v0, "pref_video_speed_fast_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1043
    return v1

    .line 1044
    :cond_7
    const-string/jumbo v0, "pref_video_speed_slow_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1045
    const v0, 0x7f0e012c

    return v0

    .line 1046
    :cond_8
    const-string/jumbo v0, "pref_camera_ubifocus_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1047
    const v0, 0x7f0e018b

    return v0

    .line 1048
    :cond_9
    const-string/jumbo v0, "pref_camera_manual_mode_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1049
    const v0, 0x7f0e0192

    return v0

    .line 1050
    :cond_a
    const-string/jumbo v0, "pref_camera_burst_shooting_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1051
    const v0, 0x7f0e019e

    return v0

    .line 1052
    :cond_b
    const-string/jumbo v0, "pref_audio_focus_mode_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1053
    const v0, 0x7f0e01aa

    return v0

    .line 1054
    :cond_c
    const-string/jumbo v0, "pref_camera_scenemode_setting_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1055
    const v0, 0x7f0e01c3

    return v0

    .line 1056
    :cond_d
    const-string/jumbo v0, "pref_camera_gradienter_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1057
    const v0, 0x7f0e01c9

    return v0

    .line 1058
    :cond_e
    const-string/jumbo v0, "pref_camera_tilt_shift_mode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1059
    const v0, 0x7f0e01db

    return v0

    .line 1060
    :cond_f
    const-string/jumbo v0, "pref_camera_magic_mirror_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1061
    const v0, 0x7f0e01dd

    return v0

    .line 1062
    :cond_10
    const-string/jumbo v0, "pref_audio_capture"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1063
    const v0, 0x7f0e0107

    return v0

    .line 1064
    :cond_11
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1065
    const v0, 0x7f0e01e2

    return v0

    .line 1066
    :cond_12
    const-string/jumbo v0, "pref_camera_square_mode_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1067
    const v0, 0x7f0e01e8

    return v0

    .line 1068
    :cond_13
    const-string/jumbo v0, "pref_camera_groupshot_mode_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1069
    const v0, 0x7f0e0219

    return v0

    .line 1070
    :cond_14
    const-string/jumbo v0, "pref_camera_mono_mode_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1071
    const v0, 0x7f0e021d

    return v0

    .line 1072
    :cond_15
    const-string/jumbo v0, "pref_camera_raw_mode_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1073
    const v0, 0x7f0e0223

    return v0

    .line 1075
    :cond_16
    const/4 v0, -0x1

    return v0
.end method

.method public static getFaceBeautifyValue()Ljava/lang/String;
    .locals 6

    .prologue
    const v4, 0x7f0e0173

    const v5, 0x7f0e016e

    .line 1421
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1422
    .local v1, "faceBeauty":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1423
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1424
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    const-string/jumbo v3, "pref_camera_face_beauty_key"

    .line 1425
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1424
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1426
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    const-string/jumbo v3, "pref_camera_face_beauty_switch_key"

    .line 1427
    const-string/jumbo v4, "pref_camera_face_beauty_key"

    .line 1426
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1428
    .local v0, "beautySwitch":Ljava/lang/String;
    const-string/jumbo v2, "pref_camera_face_beauty_advanced_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1429
    const v2, 0x7f0e0172

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1438
    .end local v0    # "beautySwitch":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 1430
    .restart local v0    # "beautySwitch":Ljava/lang/String;
    :cond_1
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1431
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1433
    .end local v0    # "beautySwitch":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "pref_camera_face_beauty_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1434
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    const-string/jumbo v3, "pref_camera_face_beauty_key"

    .line 1435
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1434
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFlashModeByScene(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sceneMode"    # Ljava/lang/String;

    .prologue
    .line 1390
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getFocusMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1285
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_focus_mode_key"

    .line 1286
    const v2, 0x7f0e0070

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1285
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFocusPosition()I
    .locals 3

    .prologue
    .line 1355
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_focus_position_key"

    .line 1356
    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1355
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFrontMirror(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 909
    const-string/jumbo v0, "pref_front_mirror_key"

    const v1, 0x7f0e0195

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJpegQuality(Lcom/android/camera/preferences/CameraSettingPreferences;Z)Ljava/lang/String;
    .locals 4
    .param p0, "preference"    # Lcom/android/camera/preferences/CameraSettingPreferences;
    .param p1, "burst"    # Z

    .prologue
    .line 1619
    const-string/jumbo v2, "pref_camera_jpegquality_key"

    .line 1620
    const v3, 0x7f0e0057

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1619
    invoke-virtual {p0, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1621
    .local v0, "jpegQuality":Ljava/lang/String;
    const-string/jumbo v1, "high"

    .line 1622
    .local v1, "maxQuality":Ljava/lang/String;
    if-eqz p1, :cond_1

    sget-boolean v2, Lcom/android/camera/Device;->IS_HM3LTE:Z

    if-eqz v2, :cond_1

    .line 1623
    const-string/jumbo v1, "normal"

    .line 1627
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v2

    .line 1628
    invoke-static {v1}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v3

    .line 1627
    if-ge v2, v3, :cond_2

    .line 1629
    return-object v0

    .line 1624
    :cond_1
    if-eqz p1, :cond_0

    sget-boolean v2, Lcom/android/camera/Device;->IS_HONGMI:Z

    if-eqz v2, :cond_0

    .line 1625
    const-string/jumbo v1, "low"

    goto :goto_0

    .line 1631
    :cond_2
    return-object v1
.end method

.method public static getKValue()I
    .locals 3

    .prologue
    .line 1259
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_qc_manual_whitebalance_k_value_key"

    const/16 v2, 0x157c

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getManualFocusName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 1360
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 1361
    const v0, 0x7f0e0065

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1362
    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x4082c00000000000L    # 600.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 1363
    const v0, 0x7f0e0068

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1364
    :cond_1
    int-to-double v0, p1

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 1365
    const v0, 0x7f0e0066

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1367
    :cond_2
    const v0, 0x7f0e0067

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxExposureTimes(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1463
    sget-boolean v0, Lcom/android/camera/Device;->IS_XIAOMI:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/QcomCameraProxy;

    .line 1465
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1464
    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->getMaxExposureTimeValue(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    return v0

    .line 1467
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getMaxPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I
    .locals 3
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v2, 0x0

    .line 1471
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 1472
    .local v0, "frameRates":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1474
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    return-object v1

    .line 1476
    :cond_0
    new-array v1, v2, [I

    return-object v1
.end method

.method public static getMinExposureTimes(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1413
    sget-boolean v0, Lcom/android/camera/Device;->IS_XIAOMI:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1414
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/QcomCameraProxy;

    .line 1415
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1414
    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->getMinExposureTimeValue(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    return v0

    .line 1417
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getMiuiSettingsKeyForStreetSnap(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "snapValue"    # Ljava/lang/String;

    .prologue
    .line 1670
    const v0, 0x7f0e01d6

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1671
    const-string/jumbo v0, "Street-snap-picture"

    return-object v0

    .line 1672
    :cond_0
    const v0, 0x7f0e01d7

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1673
    const-string/jumbo v0, "Street-snap-movie"

    return-object v0

    .line 1675
    :cond_1
    const-string/jumbo v0, "none"

    return-object v0
.end method

.method public static getPhotoPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I
    .locals 14
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x7530

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1500
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 1501
    .local v0, "frameRates":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 1502
    const-string/jumbo v9, "CameraSettings"

    const-string/jumbo v10, "No supported frame rates returned!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    return-object v13

    .line 1507
    :cond_0
    const v3, 0x61a80

    .line 1508
    .local v3, "lowestMinRate":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "rate$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 1509
    .local v6, "rate":[I
    aget v5, v6, v10

    .line 1510
    .local v5, "minFps":I
    aget v4, v6, v11

    .line 1511
    .local v4, "maxFps":I
    if-lt v4, v12, :cond_1

    .line 1512
    if-gt v5, v12, :cond_1

    .line 1513
    if-ge v5, v3, :cond_1

    .line 1514
    move v3, v5

    goto :goto_0

    .line 1520
    .end local v4    # "maxFps":I
    .end local v5    # "minFps":I
    .end local v6    # "rate":[I
    :cond_2
    const/4 v8, -0x1

    .line 1521
    .local v8, "resultIndex":I
    const/4 v1, 0x0

    .line 1522
    .local v1, "highestMaxRate":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 1523
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 1524
    .restart local v6    # "rate":[I
    aget v5, v6, v10

    .line 1525
    .restart local v5    # "minFps":I
    aget v4, v6, v11

    .line 1526
    .restart local v4    # "maxFps":I
    if-ne v5, v3, :cond_3

    if-ge v1, v4, :cond_3

    .line 1527
    move v1, v4

    .line 1528
    move v8, v2

    .line 1522
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1532
    .end local v4    # "maxFps":I
    .end local v5    # "minFps":I
    .end local v6    # "rate":[I
    :cond_4
    if-ltz v8, :cond_5

    .line 1533
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    return-object v9

    .line 1535
    :cond_5
    const-string/jumbo v9, "CameraSettings"

    const-string/jumbo v10, "Can\'t find an appropriate frame rate range!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    return-object v13
.end method

.method public static getPreferVideoQuality()I
    .locals 5

    .prologue
    .line 448
    const v3, 0x7f0e0020

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v3

    .line 447
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "defaultQuality":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    const-string/jumbo v4, "pref_video_quality_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 450
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 451
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 454
    :cond_0
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 455
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "pref_video_quality_key"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 456
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 457
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 459
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    .line 460
    const-string/jumbo v4, "pref_video_quality_key"

    .line 459
    invoke-virtual {v3, v4, v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "qualityStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public static getPreviewAspectRatio(II)F
    .locals 8
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "ratio":F
    int-to-double v2, p0

    int-to-double v4, p1

    div-double/2addr v2, v4

    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 340
    int-to-double v4, p0

    int-to-double v6, p1

    div-double/2addr v4, v6

    const-wide v6, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 339
    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 341
    const v0, 0x3fe38e39

    .line 345
    :goto_0
    return v0

    .line 343
    :cond_0
    const v0, 0x3faaaaab

    goto :goto_0
.end method

.method public static getRenderAspectRatio(II)I
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 349
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "pref_camera_square_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const/4 v0, 0x2

    return v0

    .line 352
    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->getAspectRatio(II)I

    move-result v0

    return v0
.end method

.method public static getSelectedMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1680
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_selected_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShaderEffect()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1332
    const-string/jumbo v3, "pref_camera_gradienter_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1333
    sget v3, Lcom/android/camera/effect/EffectController;->sGradienterIndex:I

    return v3

    .line 1334
    :cond_0
    const-string/jumbo v3, "pref_camera_tilt_shift_mode"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1335
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    const-string/jumbo v4, "pref_camera_tilt_shift_key"

    .line 1336
    const v5, 0x7f0e0175

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1335
    invoke-virtual {v3, v4, v5}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1337
    .local v1, "mode":Ljava/lang/String;
    const v3, 0x7f0e0178

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1338
    sget v3, Lcom/android/camera/effect/EffectController;->sGaussianIndex:I

    return v3

    .line 1339
    :cond_1
    const v3, 0x7f0e0179

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1340
    sget v3, Lcom/android/camera/effect/EffectController;->sTiltShiftIndex:I

    return v3

    .line 1342
    .end local v1    # "mode":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "pref_camera_magic_mirror_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1343
    return v6

    .line 1345
    :cond_3
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    const-string/jumbo v4, "pref_camera_shader_coloreffect_key"

    .line 1346
    const v5, 0x7f0e0089

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1345
    invoke-virtual {v3, v4, v5}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1348
    .local v2, "shader":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1349
    :catch_0
    move-exception v0

    .line 1350
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v6
.end method

.method public static getSkinBeautifyHumanReadableValue(Landroid/content/Context;Lcom/android/camera/preferences/ListPreference;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preference"    # Lcom/android/camera/preferences/ListPreference;

    .prologue
    .line 1372
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1373
    .local v1, "value":I
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v0, v2

    .line 1374
    .local v0, "length":I
    mul-int/lit8 v2, v0, 0x2

    div-int/lit8 v2, v2, 0x3

    if-le v1, v2, :cond_0

    .line 1375
    const v2, 0x7f0e01f8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1376
    :cond_0
    div-int/lit8 v2, v0, 0x3

    if-le v1, v2, :cond_1

    .line 1377
    const v2, 0x7f0e01f7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1378
    :cond_1
    if-lez v1, :cond_2

    .line 1379
    const v2, 0x7f0e01f6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1381
    :cond_2
    const v2, 0x7f0e01f9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSmartShutterPosition()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1269
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_key_camera_smart_shutter_position"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStrictAspectRatio(II)I
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 391
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const/4 v0, 0x1

    return v0

    .line 393
    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    const/4 v0, 0x0

    return v0

    .line 395
    :cond_1
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->isAspectRatio1_1(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    const/4 v0, 0x2

    return v0

    .line 398
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 495
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedVideoQuality(I)Ljava/util/ArrayList;
    .locals 8
    .param p0, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x9

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x6

    .line 784
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 786
    .local v1, "supported":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v2, "pref_video_speed_slow_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 787
    invoke-static {}, Lcom/android/camera/CameraSettings;->get4kProfile()I

    move-result v0

    .line 788
    .local v0, "quality4k":I
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoQuality4kUHD()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 789
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    :cond_0
    invoke-static {p0, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 792
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    .end local v0    # "quality4k":I
    :cond_1
    :goto_0
    invoke-static {p0, v5}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 800
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    :cond_2
    invoke-static {p0, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 803
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    :cond_3
    const/16 v2, 0xb

    invoke-static {p0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 806
    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    :cond_4
    invoke-static {p0, v7}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 809
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    :cond_5
    invoke-static {p0, v6}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 812
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    :cond_6
    return-object v1

    .line 794
    :cond_7
    invoke-static {}, Lcom/android/camera/Device;->isSupportFHDHFR()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 795
    invoke-static {p0, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 796
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getSystemEdgeMode(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 1587
    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "edge_handgrip"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1588
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "edge_handgrip_clean"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1587
    or-int/2addr v1, v2

    .line 1589
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "edge_handgrip_back"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1587
    or-int/2addr v1, v2

    .line 1590
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "edge_handgrip_screenshot"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1587
    or-int/2addr v1, v2

    .line 1590
    const/4 v2, 0x1

    .line 1587
    if-ne v1, v2, :cond_0

    .line 1590
    const/4 v0, 0x2

    .line 1587
    :cond_0
    return v0
.end method

.method public static getUIStyleByPreview(II)I
    .locals 12
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    const-wide v8, 0x3f947ae147ae147bL    # 0.02

    .line 997
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 998
    const/4 v1, 0x0

    return v1

    .line 1000
    :cond_0
    sget-boolean v1, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v1, :cond_1

    .line 1001
    const/4 v1, 0x1

    return v1

    .line 1003
    :cond_1
    const/4 v0, 0x0

    .line 1004
    .local v0, "index":I
    int-to-double v4, p0

    int-to-double v6, p1

    div-double v2, v4, v6

    .line 1005
    .local v2, "ratio":D
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1006
    sub-double v4, v2, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v1, v4, v8

    if-gez v1, :cond_3

    .line 1007
    const/4 v0, 0x2

    .line 1013
    :cond_2
    :goto_0
    return v0

    .line 1008
    :cond_3
    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v1, v4, v6

    if-gtz v1, :cond_4

    .line 1009
    sub-double v4, v2, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v1, v4, v8

    if-gez v1, :cond_2

    .line 1011
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getVideoQuality()I
    .locals 3

    .prologue
    const/4 v0, 0x6

    .line 428
    const-string/jumbo v2, "pref_camera_stereo_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    return v0

    .line 432
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPreferVideoQuality()I

    move-result v1

    .line 433
    .local v1, "quality":I
    const-string/jumbo v2, "pref_video_speed_slow_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 436
    invoke-static {}, Lcom/android/camera/Device;->isSupportFHDHFR()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 438
    .local v0, "maxHfrQuality":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 439
    move v1, v0

    .line 442
    .end local v0    # "maxHfrQuality":I
    :cond_1
    return v1

    .line 437
    :cond_2
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static getVideoSpeed(Lcom/android/camera/preferences/CameraSettingPreferences;)Ljava/lang/String;
    .locals 3
    .param p0, "preference"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 1574
    const-string/jumbo v0, "on"

    const-string/jumbo v1, "pref_video_speed_fast_key"

    const-string/jumbo v2, "off"

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1575
    const-string/jumbo v0, "fast"

    return-object v0

    .line 1576
    :cond_0
    const-string/jumbo v0, "on"

    const-string/jumbo v1, "pref_video_speed_slow_key"

    const-string/jumbo v2, "off"

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1577
    const-string/jumbo v0, "slow"

    return-object v0

    .line 1579
    :cond_1
    const-string/jumbo v0, "normal"

    return-object v0
.end method

.method public static getWhiteBalance()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1304
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    .line 1305
    const-string/jumbo v1, "pref_camera_whitebalance_key"

    .line 1306
    const v2, 0x7f0e0078

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1304
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static is4KHigherVideoQuality(I)Z
    .locals 2
    .param p0, "quality"    # I

    .prologue
    const/4 v0, 0x0

    .line 779
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoQuality4kUHD()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 780
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->get4kProfile()I

    move-result v1

    if-gt v1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isAsdMotionEnable()Z
    .locals 3

    .prologue
    .line 1558
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdMotion()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_asd_night_key"

    .line 1559
    const v2, 0x7f0b0005

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1558
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAsdNightEnable()Z
    .locals 3

    .prologue
    .line 1553
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdNight()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_asd_night_key"

    .line 1554
    const v2, 0x7f0b0005

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1553
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAsdPopupEnable()Z
    .locals 3

    .prologue
    .line 1548
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdFlash()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_asd_popup_key"

    .line 1549
    const v2, 0x7f0b0006

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1548
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAspectRatio16_9(II)Z
    .locals 8
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 378
    if-ge p0, p1, :cond_0

    .line 379
    move v2, p0

    .line 380
    .local v2, "tmp":I
    move p0, p1

    .line 381
    move p1, v2

    .line 383
    .end local v2    # "tmp":I
    :cond_0
    int-to-double v4, p0

    int-to-double v6, p1

    div-double v0, v4, v6

    .line 384
    .local v0, "ratio":D
    const-wide v4, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    .line 385
    const/4 v3, 0x1

    return v3

    .line 387
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public static isAspectRatio1_1(II)Z
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 408
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAspectRatio4_3(II)Z
    .locals 8
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 365
    if-ge p0, p1, :cond_0

    .line 366
    move v2, p0

    .line 367
    .local v2, "tmp":I
    move p0, p1

    .line 368
    move p1, v2

    .line 370
    .end local v2    # "tmp":I
    :cond_0
    int-to-double v4, p0

    int-to-double v6, p1

    div-double v0, v4, v6

    .line 371
    .local v0, "ratio":D
    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    .line 372
    const/4 v3, 0x1

    return v3

    .line 374
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public static isAudioCaptureOpen()Z
    .locals 1

    .prologue
    .line 1296
    const-string/jumbo v0, "pref_audio_capture"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBackCamera()Z
    .locals 1

    .prologue
    .line 321
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isBackCamera()Z

    move-result v0

    return v0
.end method

.method public static isBurstShootingEnable(Landroid/content/SharedPreferences;)Z
    .locals 3
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 928
    invoke-static {}, Lcom/android/camera/Device;->isSupportedLongPressBurst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    const-string/jumbo v0, "burst"

    const-string/jumbo v1, "pref_camera_long_press_shutter_feature_key"

    .line 930
    const v2, 0x7f0e01ae

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 929
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 928
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCameraSoundOpen(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v0, 0x1

    .line 893
    const-string/jumbo v1, "pref_camerasound_key"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedMuteCameraSound()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static isDualCameraHintShown(Lcom/android/camera/preferences/CameraSettingPreferences;)Z
    .locals 5
    .param p0, "preference"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    const/4 v2, 0x0

    .line 1636
    const-string/jumbo v3, "pref_dual_camera_use_hint_shown_times_key"

    invoke-virtual {p0, v3, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1637
    .local v1, "shownTimes":I
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1638
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "pref_dual_camera_use_hint_shown_times_key"

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1639
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1640
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isEdgePhotoEnable()Z
    .locals 1

    .prologue
    .line 1583
    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/CameraSettings;->sEdgePhotoEnable:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFaceBeautyOn(Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1386
    if-eqz p0, :cond_0

    const v1, 0x7f0e016e

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isFaceWaterMarkOpen(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 905
    const-string/jumbo v0, "pref_face_info_watermark_key"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFocusModeSwitching()Z
    .locals 3

    .prologue
    .line 1300
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_qc_focus_mode_switching_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFrontCamera()Z
    .locals 1

    .prologue
    .line 317
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    return v0
.end method

.method public static isMovieSolidOn(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 913
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMovieSolid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    const-string/jumbo v0, "pref_camera_movie_solid_key"

    const v1, 0x7f0e0126

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 913
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNearAspectRatio(IIII)Z
    .locals 2
    .param p0, "width1"    # I
    .param p1, "height1"    # I
    .param p2, "width2"    # I
    .param p3, "height2"    # I

    .prologue
    .line 404
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->getAspectRatio(II)I

    move-result v0

    invoke-static {p2, p3}, Lcom/android/camera/CameraSettings;->getAspectRatio(II)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNearRatio16_9(II)Z
    .locals 8
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 412
    if-ge p0, p1, :cond_0

    .line 413
    move v2, p0

    .line 414
    .local v2, "tmp":I
    move p0, p1

    .line 415
    move p1, v2

    .line 417
    .end local v2    # "tmp":I
    :cond_0
    int-to-double v4, p0

    int-to-double v6, p1

    div-double v0, v4, v6

    .line 419
    .local v0, "ratio":D
    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 420
    const-wide v6, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 419
    cmpl-double v3, v4, v6

    if-gtz v3, :cond_1

    .line 421
    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    sub-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v3, v4, v6

    if-gez v3, :cond_2

    .line 422
    :cond_1
    const/4 v3, 0x1

    return v3

    .line 424
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public static isNeedFrontCameraFirstUseHint(Lcom/android/camera/preferences/CameraSettingPreferences;)Z
    .locals 2
    .param p0, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 1644
    sget-boolean v1, Lcom/android/camera/Device;->IS_A8:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1645
    .local v0, "defaultValue":Z
    :goto_0
    const-string/jumbo v1, "pref_front_camera_first_use_hint_shown_key"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 1644
    .end local v0    # "defaultValue":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "defaultValue":Z
    goto :goto_0
.end method

.method public static isNeedRemind(Ljava/lang/String;)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1655
    sget-object v0, Lcom/android/camera/CameraSettings;->sRemindMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_remind"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 1658
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isNoCameraModeSelected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1564
    check-cast p0, Lcom/android/camera/ActivityBase;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getSupportedSettingKeys()Ljava/util/List;

    move-result-object v2

    .line 1565
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 1566
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1567
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    return v3

    .line 1570
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public static isPressDownCapture()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1540
    const v3, 0x7f0e01ae

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1541
    .local v0, "defaultValue":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedFastCapture()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1542
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "focus"

    .line 1543
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v4

    .line 1544
    const-string/jumbo v5, "pref_camera_long_press_shutter_feature_key"

    .line 1543
    invoke-virtual {v4, v5, v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1542
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 1541
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static isProximityLockOpen(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 901
    const-string/jumbo v0, "pref_camera_proximity_lock_key"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRecordLocation(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v0, 0x0

    .line 889
    const-string/jumbo v1, "pref_camera_recordlocation_key"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedGPS()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static isScanQRCode(Landroid/content/SharedPreferences;)Z
    .locals 3
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v0, 0x0

    .line 923
    const-string/jumbo v1, "pref_scan_qrcode_key"

    const v2, 0x7f0e0138

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 924
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 923
    :cond_0
    :goto_0
    return v0

    .line 924
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isStringValueContained(Ljava/lang/Object;I)Z
    .locals 2
    .param p0, "checkedValue"    # Ljava/lang/Object;
    .param p1, "entryValueId"    # I

    .prologue
    .line 1206
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1208
    .local v0, "values":[Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/camera/CameraSettings;->isStringValueContains(Ljava/lang/Object;[Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isStringValueContains(Ljava/lang/Object;[Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "checkedValue"    # Ljava/lang/Object;
    .param p1, "values"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 1212
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    return v2

    .line 1213
    :cond_1
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, p1, v1

    .line 1214
    .local v0, "beautyValue":Ljava/lang/CharSequence;
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1215
    const/4 v1, 0x1

    return v1

    .line 1213
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1218
    .end local v0    # "beautyValue":Ljava/lang/CharSequence;
    :cond_3
    return v2
.end method

.method public static isSwitchOn(Lcom/android/camera/preferences/CameraSettingPreferences;Ljava/lang/String;)Z
    .locals 2
    .param p0, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1232
    if-nez p0, :cond_0

    .line 1233
    const-string/jumbo v0, "CameraSettings"

    const-string/jumbo v1, "null preferences"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const/4 v0, 0x0

    return v0

    .line 1236
    :cond_0
    const-string/jumbo v0, "on"

    const-string/jumbo v1, "off"

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSwitchOn(Ljava/lang/String;)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1228
    const-string/jumbo v0, "on"

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVideoCaptureVisible()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 854
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    .line 855
    .local v0, "preferences":Lcom/android/camera/preferences/CameraSettingPreferences;
    const-string/jumbo v3, "pref_video_captrue_ability_key"

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 856
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "pref_camera_stereo_mode_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    .line 855
    :cond_1
    :goto_0
    return v1

    .line 857
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isHFRVideoCaptureSupported()Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "slow"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getVideoSpeed(Lcom/android/camera/preferences/CameraSettingPreferences;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 859
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoQuality4kUHD()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/android/camera/Device;->IS_MI5:Z

    if-eqz v3, :cond_1

    .line 860
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoQuality()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method public static isVideoPauseVisible()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 848
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    .line 849
    .local v0, "preferences":Lcom/android/camera/preferences/CameraSettingPreferences;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoPause()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 850
    invoke-static {}, Lcom/android/camera/Device;->isHFRVideoPauseSupported()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "slow"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getVideoSpeed(Lcom/android/camera/preferences/CameraSettingPreferences;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 849
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static isWaterMarkOpen(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 897
    const-string/jumbo v0, "pref_watermark_key"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static needStopFaceinFocusing()Z
    .locals 1

    .prologue
    .line 1694
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1695
    const-string/jumbo v0, "pref_camera_magic_mirror_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    .line 1694
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static readEdgePhotoSetting(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1594
    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1596
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "edge_handgrip_photo"

    .line 1595
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    sput-boolean v0, Lcom/android/camera/CameraSettings;->sEdgePhotoEnable:Z

    .line 1593
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1595
    goto :goto_0
.end method

.method public static readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I
    .locals 5
    .param p0, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 709
    const-string/jumbo v2, "pref_camera_exposure_key"

    const-string/jumbo v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 711
    .local v1, "exposure":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid exposure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v2, 0x0

    return v2
.end method

.method public static readPreferredCameraId(Landroid/content/SharedPreferences;)I
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 692
    const-string/jumbo v0, "pref_camera_id_key"

    .line 693
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 692
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static readZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)I
    .locals 5
    .param p0, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 731
    const-string/jumbo v2, "pref_camera_zoom_key"

    const-string/jumbo v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 733
    .local v1, "zoom":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid zoom: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/4 v2, 0x0

    return v2
.end method

.method public static resetExposure()V
    .locals 2

    .prologue
    .line 725
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 726
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_camera_exposure_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 727
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 724
    return-void
.end method

.method public static resetOpenCameraFailTimes()V
    .locals 4

    .prologue
    .line 842
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 843
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "open_camera_fail_key"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 844
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 841
    return-void
.end method

.method public static resetPreference(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1222
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1223
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1224
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1221
    return-void
.end method

.method public static resetSettingsNoNeedToSave(Lcom/android/camera/preferences/CameraSettingPreferences;I)V
    .locals 11
    .param p0, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;
    .param p1, "cameraId"    # I

    .prologue
    const/4 v10, 0x0

    .line 1079
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1080
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "pref_camera_exposure_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1081
    const-string/jumbo v7, "pref_camera_coloreffect_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1082
    const-string/jumbo v7, "pref_camera_shader_coloreffect_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1083
    const-string/jumbo v7, "pref_camera_focus_mode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1084
    const-string/jumbo v7, "pref_camera_ae_bracket_hdr_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1085
    const-string/jumbo v7, "pref_camera_hand_night_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1086
    const-string/jumbo v7, "pref_camera_scenemode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1087
    const-string/jumbo v7, "pref_camera_scenemode_setting_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1088
    const-string/jumbo v7, "pref_video_speed_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1089
    const-string/jumbo v7, "pref_camera_face_beauty_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1090
    const-string/jumbo v7, "pref_camera_face_beauty_mode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1091
    const-string/jumbo v7, "pref_camera_id_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1092
    const-string/jumbo v7, "pref_delay_capture_mode"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1093
    const-string/jumbo v7, "pref_delay_capture_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1094
    const-string/jumbo v7, "pref_audio_capture"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1095
    const-string/jumbo v7, "pref_video_speed_fast_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1096
    const-string/jumbo v7, "pref_video_speed_slow_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1097
    const-string/jumbo v7, "pref_camera_ubifocus_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1098
    const-string/jumbo v7, "pref_camera_manual_mode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1099
    const-string/jumbo v7, "pref_camera_panoramamode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1100
    const-string/jumbo v7, "pref_camera_burst_shooting_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1101
    const-string/jumbo v7, "pref_audio_focus_mode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1102
    const-string/jumbo v7, "pref_camera_gradienter_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1103
    const-string/jumbo v7, "pref_camera_tilt_shift_mode"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1104
    const-string/jumbo v7, "pref_camera_magic_mirror_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1105
    const-string/jumbo v7, "pref_camera_stereo_mode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1106
    const-string/jumbo v7, "pref_camera_groupshot_mode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1107
    const-string/jumbo v7, "pref_camera_mono_mode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1108
    const-string/jumbo v7, "pref_camera_selected_mode"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1109
    const-string/jumbo v7, "pref_camera_raw_mode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1110
    const-string/jumbo v7, "pref_camera_square_mode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1113
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    .line 1114
    .local v5, "preferenceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "pref_camerasound_key"

    aput-object v8, v7, v10

    .line 1115
    const-string/jumbo v8, "pref_scan_qrcode_key"

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 1116
    const-string/jumbo v8, "pref_watermark_key"

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 1117
    const-string/jumbo v8, "pref_camera_referenceline_key"

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 1118
    const-string/jumbo v8, "pref_camera_facedetection_key"

    const/4 v9, 0x4

    aput-object v8, v7, v9

    .line 1119
    const-string/jumbo v8, "pref_camera_movie_solid_key"

    const/4 v9, 0x5

    aput-object v8, v7, v9

    .line 1114
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1120
    .local v3, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1121
    .local v6, "value":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v6    # "value":Ljava/lang/Object;
    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1122
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1123
    .restart local v6    # "value":Ljava/lang/Object;
    if-eqz v6, :cond_0

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1124
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1125
    const-string/jumbo v7, "pref_camera_facedetection_key"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1126
    invoke-static {}, Lcom/android/camera/Device;->isThirdDevice()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1127
    :cond_1
    const-string/jumbo v8, "on"

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1136
    .end local v1    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v7, "pref_video_quality_key"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1137
    .restart local v6    # "value":Ljava/lang/Object;
    if-eqz v6, :cond_3

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_3

    move-object v7, v6

    .line 1138
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1139
    const-string/jumbo v7, "pref_video_quality_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1148
    :cond_3
    :goto_1
    const-string/jumbo v7, "pref_camera_skin_beautify_key"

    .line 1149
    const v8, 0x7f0a0052

    .line 1148
    invoke-static {v5, v7, v0, v8}, Lcom/android/camera/CameraSettings;->filterPreference(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;I)V

    .line 1150
    const-string/jumbo v7, "pref_camera_face_beauty_switch_key"

    .line 1151
    const v8, 0x7f0a004f

    .line 1150
    invoke-static {v5, v7, v0, v8}, Lcom/android/camera/CameraSettings;->filterPreference(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;I)V

    .line 1154
    const-string/jumbo v7, "pref_qc_camera_saturation_key"

    .line 1155
    const v8, 0x7f0a002b

    .line 1154
    invoke-static {v5, v7, v0, v8}, Lcom/android/camera/CameraSettings;->filterPreference(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;I)V

    .line 1156
    const-string/jumbo v7, "pref_qc_camera_contrast_key"

    .line 1157
    const v8, 0x7f0a0028

    .line 1156
    invoke-static {v5, v7, v0, v8}, Lcom/android/camera/CameraSettings;->filterPreference(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;I)V

    .line 1158
    const-string/jumbo v7, "pref_qc_camera_sharpness_key"

    .line 1159
    const v8, 0x7f0a002e

    .line 1158
    invoke-static {v5, v7, v0, v8}, Lcom/android/camera/CameraSettings;->filterPreference(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;I)V

    .line 1160
    const-string/jumbo v7, "pref_video_quality_key"

    .line 1161
    const v8, 0x7f0a0001

    .line 1160
    invoke-static {v5, v7, v0, v8}, Lcom/android/camera/CameraSettings;->filterPreference(Ljava/util/Map;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;I)V

    .line 1164
    const-string/jumbo v7, "pref_front_mirror_key"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1165
    if-eqz v6, :cond_4

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_a

    .line 1170
    :cond_4
    :goto_2
    const-string/jumbo v7, "pref_camera_restored_flashmode_key"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1171
    if-eqz v6, :cond_5

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 1172
    const-string/jumbo v7, "pref_camera_flashmode_key"

    check-cast v6, Ljava/lang/String;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1173
    const-string/jumbo v7, "pref_camera_restored_flashmode_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1177
    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunction()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1178
    const-string/jumbo v7, "pref_focus_position_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1179
    const-string/jumbo v7, "pref_qc_camera_exposuretime_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1182
    :cond_6
    const-string/jumbo v7, "pref_camera_confirm_location_shown_key"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1183
    .restart local v6    # "value":Ljava/lang/Object;
    if-nez v6, :cond_8

    .line 1184
    const-string/jumbo v7, "pref_camera_recordlocation_key"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1185
    .local v4, "location":Ljava/lang/Object;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedGPS()Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v4, :cond_b

    .line 1186
    instance-of v7, v4, Ljava/lang/Boolean;

    if-eqz v7, :cond_7

    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "location":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1190
    :cond_7
    :goto_3
    const-string/jumbo v7, "pref_camera_confirm_location_shown_key"

    invoke-interface {v0, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1192
    :cond_8
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1078
    return-void

    .line 1140
    :cond_9
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getSupportedVideoQuality(I)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1141
    const-string/jumbo v7, "CameraSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Remove unsupported video quality "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " for camera "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    const-string/jumbo v7, "pref_video_quality_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 1166
    :cond_a
    const-string/jumbo v7, "pref_front_mirror_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 1187
    :cond_b
    const-string/jumbo v7, "pref_camera_first_use_hint_shown_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1188
    const-string/jumbo v7, "pref_camera_recordlocation_key"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3
.end method

.method public static resetZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)V
    .locals 2
    .param p0, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 748
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_camera_zoom_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 749
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 746
    return-void
.end method

.method public static restorePreferences(Landroid/content/Context;Lcom/android/camera/preferences/CameraSettingPreferences;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    .line 753
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 754
    .local v0, "currentCameraId":I
    invoke-virtual {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 755
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 756
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 760
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 762
    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 752
    return-void
.end method

.method public static setAutoExposure(Lcom/android/camera/hardware/CameraHardwareProxy;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 9
    .param p0, "proxy"    # Lcom/android/camera/hardware/CameraHardwareProxy;
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x3e8

    const/16 v7, 0xfa

    const/16 v6, -0xfa

    const/16 v5, -0x3e8

    const/4 v4, 0x0

    .line 466
    if-nez p2, :cond_0

    return-void

    .line 467
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v0, "meteringAreas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 469
    .local v1, "meteringRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 470
    .local v2, "weight":I
    const v3, 0x7f0e0105

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 471
    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 472
    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 473
    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 474
    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 475
    const/4 v2, 0x1

    .line 490
    :goto_0
    new-instance v3, Landroid/hardware/Camera$Area;

    invoke-direct {v3, v1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 465
    return-void

    .line 476
    :cond_1
    const v3, 0x7f0e0104

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 477
    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 478
    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 479
    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 480
    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 481
    const/4 v2, 0x0

    goto :goto_0

    .line 484
    :cond_2
    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 485
    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 486
    iput v8, v1, Landroid/graphics/Rect;->right:I

    .line 487
    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 488
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static setEdgeMode(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1601
    if-eqz p0, :cond_1

    .line 1602
    if-eqz p1, :cond_0

    .line 1603
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->readEdgePhotoSetting(Landroid/content/Context;)V

    .line 1605
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isEdgePhotoEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1606
    const-string/jumbo v4, "input"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 1608
    .local v0, "im":Landroid/hardware/input/InputManager;
    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Landroid/hardware/input/InputManager;

    aput-object v4, v2, v6

    .line 1609
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v4, "switchTouchEdgeMode"

    const-string/jumbo v5, "(I)V"

    invoke-static {v2, v4, v5}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 1610
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_1

    .line 1611
    aget-object v4, v2, v6

    new-array v5, v3, [Ljava/lang/Object;

    .line 1612
    if-eqz p1, :cond_2

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    .line 1611
    invoke-virtual {v1, v4, v0, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1600
    .end local v0    # "im":Landroid/hardware/input/InputManager;
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    return-void

    .line 1612
    .restart local v0    # "im":Landroid/hardware/input/InputManager;
    .restart local v1    # "method":Lmiui/reflect/Method;
    .restart local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getSystemEdgeMode(Landroid/content/Context;)I

    move-result v3

    goto :goto_0
.end method

.method public static setFocusMode(Ljava/lang/String;)V
    .locals 2
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 1279
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1280
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_camera_focus_mode_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1281
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1278
    return-void
.end method

.method public static setFocusModeSwitching(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 1290
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1291
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_qc_focus_mode_switching_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1292
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1289
    return-void
.end method

.method public static setFocusPosition(I)V
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 1320
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1321
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_focus_position_key"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1322
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1319
    return-void
.end method

.method public static setKValue(I)V
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1253
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1254
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_qc_manual_whitebalance_k_value_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1252
    return-void
.end method

.method public static setPriorityStoragePreference(Z)V
    .locals 2
    .param p0, "externalPriority"    # Z

    .prologue
    .line 1480
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1481
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_priority_storage"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1482
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1479
    return-void
.end method

.method public static setSelectedMode(Ljava/lang/String;)V
    .locals 2
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 1684
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1685
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p0, :cond_0

    .line 1686
    const-string/jumbo v1, "pref_camera_selected_mode"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1690
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1683
    return-void

    .line 1688
    :cond_0
    const-string/jumbo v1, "pref_camera_selected_mode"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static setShaderEffect(I)V
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 1326
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1327
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_camera_shader_coloreffect_key"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1328
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1325
    return-void
.end method

.method public static setSmartShutterPosition(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 1263
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1264
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_key_camera_smart_shutter_position"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1265
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1262
    return-void
.end method

.method public static updateFocusMode()V
    .locals 4

    .prologue
    .line 1310
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 1311
    .local v1, "oldFocusMode":Ljava/lang/String;
    const-string/jumbo v2, "pref_camera_manual_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    .line 1312
    const-string/jumbo v0, "manual"

    .line 1313
    .local v0, "focusMode":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1314
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 1315
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusMode(Ljava/lang/String;)V

    .line 1309
    :cond_0
    return-void

    .line 1312
    .end local v0    # "focusMode":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "continuous-picture"

    goto :goto_0
.end method

.method public static updateOpenCameraFailTimes()J
    .locals 8

    .prologue
    .line 834
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 835
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    const-string/jumbo v4, "open_camera_fail_key"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v4, v6, v7}, Lcom/android/camera/preferences/CameraSettingPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long v2, v4, v6

    .line 836
    .local v2, "openCameraFail":J
    const-string/jumbo v1, "open_camera_fail_key"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 837
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 838
    return-wide v2
.end method

.method public static upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V
    .locals 5
    .param p0, "combPref"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    const/4 v4, 0x1

    .line 669
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 670
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "pref_version_key"

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 671
    .local v1, "version":I
    if-ge v1, v4, :cond_0

    .line 672
    const-string/jumbo v2, "pref_camera_first_use_hint_shown_key"

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 673
    const-string/jumbo v2, "pref_camera_first_touch_toast_shown_key"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 676
    :cond_0
    const-string/jumbo v2, "pref_version_key"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 677
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 668
    return-void
.end method

.method public static upgradeLocalPreferences(Landroid/content/SharedPreferences;)V
    .locals 4
    .param p0, "prefLocal"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v3, 0x0

    .line 681
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 682
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "pref_local_version_key"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 683
    .local v1, "version":I
    if-nez v1, :cond_0

    .line 684
    const/4 v1, 0x1

    .line 687
    :cond_0
    const-string/jumbo v2, "pref_local_version_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 688
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 680
    return-void
.end method

.method public static writeExposure(Lcom/android/camera/preferences/CameraSettingPreferences;I)V
    .locals 3
    .param p0, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;
    .param p1, "value"    # I

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 720
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_camera_exposure_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 721
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 718
    return-void
.end method

.method public static writePreferredCameraId(Landroid/content/SharedPreferences;I)V
    .locals 3
    .param p0, "pref"    # Landroid/content/SharedPreferences;
    .param p1, "cameraId"    # I

    .prologue
    .line 703
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 704
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 705
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 702
    return-void
.end method

.method public static writeZoom(Lcom/android/camera/preferences/CameraSettingPreferences;I)V
    .locals 3
    .param p0, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;
    .param p1, "value"    # I

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 742
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_camera_zoom_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 743
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 740
    return-void
.end method
