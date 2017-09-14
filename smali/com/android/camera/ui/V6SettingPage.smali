.class public Lcom/android/camera/ui/V6SettingPage;
.super Landroid/widget/RelativeLayout;
.source "V6SettingPage.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Lcom/android/camera/ui/V6FunctionUI;
.implements Lcom/android/camera/ui/Rotatable;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mDefaultColumnCount:I

.field private mDismissButton:Lcom/android/camera/ui/SettingDismissButton;

.field private mEnabled:Z

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mIndicatorWidth:I

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mModeView:Lcom/android/camera/ui/ModeView;

.field public mOrientation:I

.field private mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

.field public mSettingButton:Lcom/android/camera/ui/V6SettingButton;

.field private mTitleView:Landroid/view/View;

.field private mWaterMarkLayout:Landroid/view/View;

.field private mWaterMarkOptionView:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method private filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V
    .locals 2
    .param p1, "group"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "pref"    # Lcom/android/camera/preferences/ListPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/preferences/PreferenceGroup;",
            "Lcom/android/camera/preferences/ListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 440
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 441
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6SettingPage;->removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z

    .line 442
    return-void

    .line 445
    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/camera/preferences/ListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 446
    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_2

    .line 447
    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6SettingPage;->removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z

    .line 448
    return-void

    .line 451
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/camera/ui/V6SettingPage;->resetIfInvalid(Lcom/android/camera/preferences/ListPreference;)V

    .line 439
    return-void
.end method

.method private initAnimation()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    const v1, 0x7f05000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeIn:Landroid/view/animation/Animation;

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    const v1, 0x7f05000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeOut:Landroid/view/animation/Animation;

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 90
    return-void
.end method

.method private initPreference()V
    .locals 8

    .prologue
    .line 398
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 399
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v6, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/android/camera/ActivityBase;

    invoke-virtual {v6}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 401
    iget-object v6, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string/jumbo v7, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v4

    .line 402
    .local v4, "timeLapseInterval":Lcom/android/camera/preferences/ListPreference;
    iget-object v6, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string/jumbo v7, "pref_camera_whitebalance_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v5

    .line 403
    .local v5, "whiteBalance":Lcom/android/camera/preferences/ListPreference;
    iget-object v6, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string/jumbo v7, "pref_camera_scenemode_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v3

    .line 404
    .local v3, "sceneMode":Lcom/android/camera/preferences/ListPreference;
    iget-object v6, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string/jumbo v7, "pref_camera_coloreffect_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v1

    .line 405
    .local v1, "colorEffect":Lcom/android/camera/preferences/ListPreference;
    iget-object v6, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string/jumbo v7, "pref_camera_focus_mode_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v0

    .line 407
    .local v0, "cameraFocusMode":Lcom/android/camera/preferences/ListPreference;
    if-eqz v5, :cond_0

    .line 408
    iget-object v6, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 409
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedWhiteBalance(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v7

    .line 408
    invoke-direct {p0, v6, v5, v7}, Lcom/android/camera/ui/V6SettingPage;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 411
    :cond_0
    if-eqz v3, :cond_1

    .line 412
    iget-object v6, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 413
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v7

    .line 412
    invoke-direct {p0, v6, v3, v7}, Lcom/android/camera/ui/V6SettingPage;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 416
    :cond_1
    if-eqz v1, :cond_2

    .line 417
    iget-object v6, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 418
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v7

    .line 417
    invoke-direct {p0, v6, v1, v7}, Lcom/android/camera/ui/V6SettingPage;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 421
    :cond_2
    if-eqz v0, :cond_3

    .line 422
    iget-object v6, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 423
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v7

    .line 422
    invoke-direct {p0, v6, v0, v7}, Lcom/android/camera/ui/V6SettingPage;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 426
    :cond_3
    if-eqz v4, :cond_4

    invoke-direct {p0, v4}, Lcom/android/camera/ui/V6SettingPage;->resetIfInvalid(Lcom/android/camera/preferences/ListPreference;)V

    .line 397
    :cond_4
    return-void
.end method

.method private removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .param p1, "group"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 463
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/android/camera/preferences/PreferenceGroup;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 464
    invoke-virtual {p1, v1}, Lcom/android/camera/preferences/PreferenceGroup;->get(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v0

    .line 465
    .local v0, "child":Lcom/android/camera/preferences/CameraPreference;
    instance-of v3, v0, Lcom/android/camera/preferences/PreferenceGroup;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 466
    check-cast v3, Lcom/android/camera/preferences/PreferenceGroup;

    invoke-direct {p0, v3, p2}, Lcom/android/camera/ui/V6SettingPage;->removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 467
    return v4

    .line 470
    :cond_0
    instance-of v3, v0, Lcom/android/camera/preferences/ListPreference;

    if-eqz v3, :cond_1

    .line 471
    check-cast v0, Lcom/android/camera/preferences/ListPreference;

    .end local v0    # "child":Lcom/android/camera/preferences/CameraPreference;
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 470
    if-eqz v3, :cond_1

    .line 472
    invoke-virtual {p1, v1}, Lcom/android/camera/preferences/PreferenceGroup;->removePreference(I)V

    .line 473
    return v4

    .line 463
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method private resetIfInvalid(Lcom/android/camera/preferences/ListPreference;)V
    .locals 3
    .param p1, "pref"    # Lcom/android/camera/preferences/ListPreference;

    .prologue
    .line 456
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 458
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/preferences/ListPreference;->setValueIndex(I)V

    .line 454
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->clearAnimation()V

    .line 174
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->startAnimation(Landroid/view/animation/Animation;)V

    .line 175
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->setVisibility(I)V

    .line 172
    return-void
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 251
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f0c0091

    const/4 v3, 0x3

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 261
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f0c008b

    const/4 v3, 0x2

    move v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6SettingPage;->setEnabled(Z)V

    .line 239
    iput-boolean p1, p0, Lcom/android/camera/ui/V6SettingPage;->mEnabled:Z

    .line 237
    return-void
.end method

.method public getCurrentPopup()Landroid/view/View;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeView;->getCurrentPopup()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initIndicators()V
    .locals 4

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getSupportedSettingKeys()Ljava/util/List;

    move-result-object v0

    .line 300
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 302
    :cond_0
    return-void

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, p0, v3}, Lcom/android/camera/ui/ModeView;->initializeSettingScreen(Lcom/android/camera/preferences/PreferenceGroup;Ljava/util/List;Lcom/android/camera/ui/MessageDispacher;I)V

    .line 298
    return-void
.end method

.method public isItemSelected()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeView;->isItemSelected()Z

    move-result v0

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v4, 0x0

    .line 505
    const/4 v2, 0x0

    .line 506
    .local v2, "id":I
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeOut:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_2

    .line 508
    const v2, 0x7f0c000b

    .line 512
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 514
    const/4 v1, 0x0

    .line 516
    const/4 v3, 0x3

    move-object v5, v4

    .line 513
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 504
    :cond_1
    return-void

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeIn:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    .line 510
    const v2, 0x7f0c000a

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 523
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 501
    return-void
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->reload()V

    .line 86
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v5, 0x0

    .line 145
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/camera/CameraSettings;->setDualCameraWaterMarkOpen(Landroid/content/SharedPreferences;Z)V

    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 151
    const-string/jumbo v4, "pref_dualcamera_watermark"

    .line 148
    const/4 v1, 0x0

    .line 149
    const v2, 0x7f0c008f

    .line 150
    const/4 v3, 0x2

    .line 147
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeView;->resetSelectedFlag()V

    .line 81
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 67
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/android/camera/ui/V6SettingPage;->mDefaultColumnCount:I

    .line 68
    const v0, 0x7f0c008c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ModeView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    .line 69
    const v0, 0x7f0c0090

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SettingButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    .line 70
    const v0, 0x7f0c0091

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SettingDismissButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mDismissButton:Lcom/android/camera/ui/SettingDismissButton;

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicatorWidth:I

    .line 72
    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mTitleView:Landroid/view/View;

    .line 73
    const v0, 0x7f0c008e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mWaterMarkLayout:Landroid/view/View;

    .line 74
    const v0, 0x7f0c008f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mWaterMarkOptionView:Landroid/widget/Switch;

    .line 75
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mWaterMarkOptionView:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    invoke-direct {p0}, Lcom/android/camera/ui/V6SettingPage;->initAnimation()V

    .line 65
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 103
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->setVisibility(I)V

    .line 101
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ModeView;->overrideSettings([Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 113
    const-string/jumbo v0, "Camera5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reload getid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->removePopup()V

    .line 123
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->setVisibility(I)V

    .line 126
    invoke-direct {p0}, Lcom/android/camera/ui/V6SettingPage;->initPreference()V

    .line 127
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->initIndicators()V

    .line 112
    return-void
.end method

.method public reloadPreferences()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeView;->reloadPreferences()V

    .line 389
    return-void
.end method

.method public removePopup()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeView;->removePopup()V

    .line 220
    return-void
.end method

.method public resetSettings()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeView;->resetSettings()Z

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SettingButton;->setEnabled(Z)V

    .line 370
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ModeView;->setEnabled(Z)V

    .line 371
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 368
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 1
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 244
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SettingButton;->setMessageDispatcher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 245
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mDismissButton:Lcom/android/camera/ui/SettingDismissButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SettingDismissButton;->setMessageDispatcher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 242
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 376
    iput p1, p0, Lcom/android/camera/ui/V6SettingPage;->mOrientation:I

    .line 377
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ModeView;->setOrientation(IZ)V

    .line 378
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6SettingButton;->setOrientation(IZ)V

    .line 375
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 187
    const-string/jumbo v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "V6SettingPage setVisibility ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->clearAnimation()V

    .line 158
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mTitleView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mWaterMarkOptionView:Landroid/widget/Switch;

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen(Landroid/content/SharedPreferences;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 161
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mWaterMarkLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6SettingPage;->setVisibility(I)V

    .line 167
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->reloadPreferences()V

    .line 168
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6SettingPage;->enableControls(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->startAnimation(Landroid/view/animation/Animation;)V

    .line 156
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mTitleView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mWaterMarkLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
