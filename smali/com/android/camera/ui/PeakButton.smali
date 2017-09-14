.class public Lcom/android/camera/ui/PeakButton;
.super Lcom/android/camera/ui/V6TopTextView;
.source "PeakButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6TopTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method public couldBeVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    const-string/jumbo v1, "pref_camera_manual_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    .line 74
    if-eqz v1, :cond_0

    .line 77
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected notifyClickToDispatcher()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lcom/android/camera/ui/PeakButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_0

    .line 40
    return-void

    .line 42
    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    .line 43
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 45
    const-string/jumbo v0, "pref_camera_peak_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    .line 42
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->reloadPreference()V

    .line 38
    return-void
.end method

.method public onCameraOpen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    .line 51
    if-nez v0, :cond_0

    .line 54
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v1, v0, :cond_1

    .line 55
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PeakButton;->setVisibility(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->notifyClickToDispatcher()V

    .line 57
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PeakButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/PeakButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/PeakButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, v2}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->updateTitle()V

    .line 65
    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->updateVisible()V

    .line 50
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Lcom/android/camera/ui/V6TopTextView;->onFinishInflate()V

    .line 26
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/PeakButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 27
    .local v0, "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/IconListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/PeakButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 29
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 31
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/PeakButton;->setVisibility(I)V

    .line 32
    return-void

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->updateTitle()V

    .line 24
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    .line 69
    return-void
.end method

.method public updateVisible()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->couldBeVisible()Z

    move-result v0

    .line 82
    .local v0, "visible":Z
    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eq v0, v2, :cond_0

    .line 83
    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/PeakButton;->setVisibility(I)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->notifyClickToDispatcher()V

    .line 80
    return-void

    :cond_1
    move v2, v1

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method
