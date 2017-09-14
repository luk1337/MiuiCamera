.class public Lcom/android/camera/ui/V6SettingsStatusBar;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6SettingsStatusBar.java"

# interfaces
.implements Lcom/android/camera/ui/MutexView;


# instance fields
.field private mApertureTextView:Landroid/widget/TextView;

.field private mEvTextView:Landroid/widget/TextView;

.field private mMarginTop:I

.field private mMarginTopLandscape:I

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mOrientation:I

.field private mVisible:Z

.field private mZoomTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/V6SettingsStatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mOrientation:I

    .line 32
    return-void
.end method

.method private setSubViewVisible(Landroid/view/View;IZ)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "visible"    # I
    .param p3, "sameContent"    # Z

    .prologue
    const/4 v5, 0x0

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 210
    return-void

    .line 212
    :cond_0
    const/16 v0, 0x8

    if-eq p2, v0, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->show()V

    .line 215
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 221
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->isSubViewShown()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 218
    const/4 v1, 0x4

    .line 219
    const v2, 0x7f090092

    .line 220
    const/4 v3, 0x3

    .line 217
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    :cond_2
    return-void
.end method

.method private updateEV(F)V
    .locals 9
    .param p1, "ev"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 245
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3d4ccccd    # 0.05f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 246
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    const-string/jumbo v1, "-"

    .line 247
    .local v1, "symbol":Ljava/lang/String;
    :goto_0
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "%s %.1f"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 249
    .local v0, "same":Z
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Landroid/widget/TextView;

    invoke-direct {p0, v3, v7, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->setSubViewVisible(Landroid/view/View;IZ)V

    .line 244
    .end local v0    # "same":Z
    .end local v1    # "symbol":Ljava/lang/String;
    .end local v2    # "text":Ljava/lang/String;
    :goto_1
    return-void

    .line 246
    :cond_0
    const-string/jumbo v1, "+"

    .restart local v1    # "symbol":Ljava/lang/String;
    goto :goto_0

    .line 252
    .end local v1    # "symbol":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-direct {p0, v3, v4, v8}, Lcom/android/camera/ui/V6SettingsStatusBar;->setSubViewVisible(Landroid/view/View;IZ)V

    goto :goto_1
.end method

.method private updateZoom(F)V
    .locals 8
    .param p1, "zoom"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 257
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 258
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v3, "x %.1f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 260
    .local v0, "same":Z
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v6, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->setSubViewVisible(Landroid/view/View;IZ)V

    .line 256
    .end local v0    # "same":Z
    .end local v1    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-direct {p0, v2, v3, v7}, Lcom/android/camera/ui/V6SettingsStatusBar;->setSubViewVisible(Landroid/view/View;IZ)V

    goto :goto_0
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 70
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    goto :goto_0
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 78
    iput-boolean v1, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 80
    new-instance v0, Lcom/android/camera/ui/V6SettingsStatusBar$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/V6SettingsStatusBar$1;-><init>(Lcom/android/camera/ui/V6SettingsStatusBar;Ljava/lang/Runnable;)V

    .line 92
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 93
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 92
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 77
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    .line 54
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    .line 52
    return-void
.end method

.method public isSubViewShown()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 227
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mChildren:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 228
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 229
    const/4 v2, 0x1

    return v2

    .line 232
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return v3
.end method

.method public onCameraOpen()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 163
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    .line 161
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 39
    const v0, 0x7f090094

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f090095

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mApertureTextView:Landroid/widget/TextView;

    .line 43
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mMarginTop:I

    .line 44
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mMarginTopLandscape:I

    .line 37
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6RelativeLayout;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 60
    iput-object p1, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 58
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 192
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    .line 47
    return-void
.end method

.method public updateAperture()V
    .locals 6

    .prologue
    .line 143
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereoAperture()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    const-string/jumbo v3, "pref_camera_stereo_mode_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    .line 143
    if-eqz v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v3

    .line 146
    const-string/jumbo v4, "pref_camera_stereo_key"

    .line 145
    invoke-virtual {v3, v4}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v0

    .line 147
    .local v0, "preference":Lcom/android/camera/preferences/ListPreference;
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mApertureTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 149
    .local v1, "same":Z
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mApertureTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mApertureTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->setSubViewVisible(Landroid/view/View;IZ)V

    .line 142
    .end local v0    # "preference":Lcom/android/camera/preferences/ListPreference;
    .end local v1    # "same":Z
    .end local v2    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mApertureTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/ui/V6SettingsStatusBar;->setSubViewVisible(Landroid/view/View;IZ)V

    goto :goto_0
.end method

.method public updateEV()V
    .locals 4

    .prologue
    .line 115
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 116
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v1, :cond_0

    .line 118
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    .line 117
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v2

    int-to-float v2, v2

    .line 118
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v3

    .line 117
    mul-float v0, v2, v3

    .line 119
    .local v0, "ev":F
    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateEV(F)V

    .line 114
    .end local v0    # "ev":F
    :cond_0
    return-void
.end method

.method public updateStatus()V
    .locals 0

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateEV()V

    .line 100
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateZoom()V

    .line 101
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateAperture()V

    .line 98
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string/jumbo v0, "pref_camera_zoom_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateZoom()V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string/jumbo v0, "pref_camera_exposure_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateEV()V

    goto :goto_0

    .line 109
    :cond_2
    const-string/jumbo v0, "pref_camera_stereo_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateAperture()V

    goto :goto_0
.end method

.method public updateStatus(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 237
    const-string/jumbo v0, "pref_camera_zoom_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-direct {p0, p2}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateZoom(F)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    const-string/jumbo v0, "pref_camera_exposure_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-direct {p0, p2}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateEV(F)V

    goto :goto_0
.end method

.method public updateZoom()V
    .locals 10

    .prologue
    .line 124
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 125
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->readZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v4

    .line 127
    .local v4, "valueIndex":I
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 128
    .local v3, "value":I
    const/16 v7, 0x64

    if-le v3, v7, :cond_0

    .line 129
    div-int/lit8 v3, v3, 0xa

    .line 130
    div-int/lit8 v6, v3, 0xa

    .line 131
    .local v6, "zoomSig":I
    rem-int/lit8 v5, v3, 0xa

    .line 132
    .local v5, "zoomFraction":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "x "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "text":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 134
    .local v1, "same":Z
    iget-object v7, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v7, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->setSubViewVisible(Landroid/view/View;IZ)V

    .line 136
    return-void

    .line 139
    .end local v1    # "same":Z
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "value":I
    .end local v4    # "valueIndex":I
    .end local v5    # "zoomFraction":I
    .end local v6    # "zoomSig":I
    :cond_0
    iget-object v7, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    const/16 v8, 0x8

    const/4 v9, 0x1

    invoke-direct {p0, v7, v8, v9}, Lcom/android/camera/ui/V6SettingsStatusBar;->setSubViewVisible(Landroid/view/View;IZ)V

    .line 123
    return-void
.end method
