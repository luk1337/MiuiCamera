.class public Lcom/android/camera/ui/PortraitButton;
.super Landroid/widget/ImageView;
.source "PortraitButton.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
.implements Lcom/android/camera/ui/MutexView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PortraitButton$1;
    }
.end annotation


# instance fields
.field private mAnimatorInitialized:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/ScaleDrawable;

.field private mHintHideAnimator:Landroid/animation/ObjectAnimator;

.field private mHintHideAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHintShowAnimator:Landroid/animation/ObjectAnimator;

.field private mHintTextView:Landroid/widget/TextView;

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mPortraitDrawable:Landroid/graphics/drawable/ScaleDrawable;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mSwitchOnAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/PortraitButton;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mHintTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Lcom/android/camera/ui/PortraitButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/PortraitButton$1;-><init>(Lcom/android/camera/ui/PortraitButton;)V

    iput-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mHintHideAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 47
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/PortraitButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 44
    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v0

    .line 113
    const-string/jumbo v1, "pref_camera_portrait_mode_key"

    .line 112
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/preferences/IconListPreference;

    iput-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 115
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/PortraitButton;->mAnimatorInitialized:Z

    if-nez v0, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/android/camera/ui/PortraitButton;->initializeAnimator()V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/PortraitButton;->mAnimatorInitialized:Z

    .line 110
    :cond_1
    return-void
.end method

.method private initializeAnimator()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 122
    iget-object v4, p0, Lcom/android/camera/ui/PortraitButton;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/camera/ActivityBase;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getPortraitHintTextView()Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/PortraitButton;->mHintTextView:Landroid/widget/TextView;

    .line 123
    invoke-virtual {p0}, Lcom/android/camera/ui/PortraitButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 124
    .local v2, "drawable":Landroid/graphics/drawable/LayerDrawable;
    const v4, 0x7f0c00a0

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ScaleDrawable;

    iput-object v4, p0, Lcom/android/camera/ui/PortraitButton;->mPortraitDrawable:Landroid/graphics/drawable/ScaleDrawable;

    .line 125
    const v4, 0x7f0c009f

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ScaleDrawable;

    iput-object v4, p0, Lcom/android/camera/ui/PortraitButton;->mBackgroundDrawable:Landroid/graphics/drawable/ScaleDrawable;

    .line 126
    invoke-direct {p0}, Lcom/android/camera/ui/PortraitButton;->resetTransition()V

    .line 129
    iget-object v4, p0, Lcom/android/camera/ui/PortraitButton;->mPortraitDrawable:Landroid/graphics/drawable/ScaleDrawable;

    const-string/jumbo v5, "level"

    const/16 v6, 0x2710

    const/16 v7, 0x1e78

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 130
    .local v3, "foregroundZoomOutAnimator":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/android/camera/ui/PortraitButton;->mBackgroundDrawable:Landroid/graphics/drawable/ScaleDrawable;

    const-string/jumbo v5, "alpha"

    const/16 v6, 0xff

    filled-new-array {v8, v6}, [I

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 131
    .local v0, "backgroundFadeInAnimator":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/android/camera/ui/PortraitButton;->mBackgroundDrawable:Landroid/graphics/drawable/ScaleDrawable;

    const-string/jumbo v5, "level"

    const/16 v6, 0x1f40

    const/16 v7, 0x2710

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 132
    .local v1, "backgroundZoomInAnimator":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ui/PortraitButton;->mSwitchOnAnimator:Landroid/animation/AnimatorSet;

    .line 133
    iget-object v4, p0, Lcom/android/camera/ui/PortraitButton;->mSwitchOnAnimator:Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v3, v5, v8

    aput-object v0, v5, v9

    aput-object v1, v5, v10

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 134
    iget-object v4, p0, Lcom/android/camera/ui/PortraitButton;->mSwitchOnAnimator:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;

    invoke-direct {v5}, Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 135
    iget-object v4, p0, Lcom/android/camera/ui/PortraitButton;->mSwitchOnAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x15e

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 137
    iget-object v4, p0, Lcom/android/camera/ui/PortraitButton;->mHintTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "alpha"

    new-array v6, v10, [F

    aput v11, v6, v8

    aput v12, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/PortraitButton;->mHintShowAnimator:Landroid/animation/ObjectAnimator;

    .line 138
    iget-object v4, p0, Lcom/android/camera/ui/PortraitButton;->mHintShowAnimator:Landroid/animation/ObjectAnimator;

    new-instance v5, Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;

    invoke-direct {v5}, Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 139
    iget-object v4, p0, Lcom/android/camera/ui/PortraitButton;->mHintShowAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 140
    iget-object v4, p0, Lcom/android/camera/ui/PortraitButton;->mHintTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "alpha"

    new-array v6, v10, [F

    aput v12, v6, v8

    aput v11, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/PortraitButton;->mHintHideAnimator:Landroid/animation/ObjectAnimator;

    .line 141
    iget-object v4, p0, Lcom/android/camera/ui/PortraitButton;->mHintHideAnimator:Landroid/animation/ObjectAnimator;

    new-instance v5, Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;

    invoke-direct {v5}, Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    iget-object v4, p0, Lcom/android/camera/ui/PortraitButton;->mHintHideAnimator:Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/camera/ui/PortraitButton;->mHintHideAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 143
    iget-object v4, p0, Lcom/android/camera/ui/PortraitButton;->mHintHideAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 121
    return-void
.end method

.method private isSettingsStatusBarShown()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->isSubViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->isShown()Z

    move-result v0

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVisible()Z
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-static {v0}, Lcom/android/camera/Util;->isPortraitIntent(Lcom/android/camera/ActivityBase;)Z

    move-result v0

    .line 79
    if-eqz v0, :cond_0

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isNoCameraModeSelected(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private requestPortraitModeChange()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 100
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 105
    const-string/jumbo v4, "pref_camera_portrait_mode_key"

    .line 102
    const/4 v1, 0x0

    .line 103
    const v2, 0x7f0c0075

    .line 104
    const/4 v3, 0x2

    .line 101
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    :cond_0
    return-void
.end method

.method private resetTransition()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mPortraitDrawable:Landroid/graphics/drawable/ScaleDrawable;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ScaleDrawable;->setLevel(I)Z

    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mBackgroundDrawable:Landroid/graphics/drawable/ScaleDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ScaleDrawable;->setAlpha(I)V

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mBackgroundDrawable:Landroid/graphics/drawable/ScaleDrawable;

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ScaleDrawable;->setLevel(I)Z

    .line 59
    return-void
.end method

.method private reverseTransition()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mSwitchOnAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->reverse()V

    .line 55
    return-void
.end method

.method private startTransition()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mSwitchOnAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 51
    return-void
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/PortraitButton;->setEnabled(Z)V

    .line 241
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 168
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/PortraitButton;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    return-void
.end method

.method public hideHintText()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mHintHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 181
    return-void
.end method

.method public isHintTextShown()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    return v0
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/android/camera/ui/PortraitButton;->initialize()V

    .line 226
    invoke-virtual {p0}, Lcom/android/camera/ui/PortraitButton;->reloadPreference()V

    .line 227
    invoke-virtual {p0}, Lcom/android/camera/ui/PortraitButton;->updateVisible()V

    .line 224
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/camera/ui/PortraitButton;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PortraitButton;->setActivated(Z)V

    .line 69
    invoke-direct {p0}, Lcom/android/camera/ui/PortraitButton;->reverseTransition()V

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/PortraitButton;->updatePreference()V

    .line 75
    invoke-direct {p0}, Lcom/android/camera/ui/PortraitButton;->requestPortraitModeChange()V

    .line 66
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PortraitButton;->setActivated(Z)V

    .line 72
    invoke-direct {p0}, Lcom/android/camera/ui/PortraitButton;->startTransition()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/android/camera/ui/PortraitButton;->initialize()V

    .line 220
    invoke-virtual {p0}, Lcom/android/camera/ui/PortraitButton;->updateVisible()V

    .line 218
    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public recoverIfNeeded()V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/PortraitButton;->mContext:Landroid/content/Context;

    const v2, 0x7f0e017e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/android/camera/ui/PortraitButton;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PortraitButton;->setActivated(Z)V

    .line 205
    invoke-direct {p0}, Lcom/android/camera/ui/PortraitButton;->startTransition()V

    .line 214
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/PortraitButton;->updatePreference()V

    .line 200
    return-void

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/PortraitButton;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PortraitButton;->setActivated(Z)V

    .line 210
    invoke-direct {p0}, Lcom/android/camera/ui/PortraitButton;->reverseTransition()V

    goto :goto_0
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/camera/ui/PortraitButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 251
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/camera/ui/PortraitButton;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/PortraitButton;->isSettingsStatusBarShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PortraitButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public showHintText()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mHintShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 176
    return-void
.end method

.method public switchOff()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PortraitButton;->switchOff(Z)V

    .line 172
    return-void
.end method

.method public switchOff(Z)V
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/camera/ui/PortraitButton;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PortraitButton;->setActivated(Z)V

    .line 149
    if-eqz p1, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/android/camera/ui/PortraitButton;->reverseTransition()V

    .line 154
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/PortraitButton;->updatePreference()V

    .line 155
    invoke-direct {p0}, Lcom/android/camera/ui/PortraitButton;->requestPortraitModeChange()V

    .line 146
    :cond_0
    return-void

    .line 152
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/PortraitButton;->resetTransition()V

    goto :goto_0
.end method

.method public updatePreference()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/camera/ui/PortraitButton;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/PortraitButton;->mContext:Landroid/content/Context;

    const v2, 0x7f0e017e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PortraitButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 189
    :cond_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/PortraitButton;->mContext:Landroid/content/Context;

    const v2, 0x7f0e017d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateVisible()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 91
    invoke-direct {p0}, Lcom/android/camera/ui/PortraitButton;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/PortraitButton;->isSettingsStatusBarShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/PortraitButton;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :goto_0
    return-void

    .line 92
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PortraitButton;->setVisibility(I)V

    goto :goto_0
.end method
