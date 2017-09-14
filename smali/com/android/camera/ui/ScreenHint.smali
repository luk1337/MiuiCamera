.class public Lcom/android/camera/ui/ScreenHint;
.super Ljava/lang/Object;
.source "ScreenHint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ScreenHint$1;
    }
.end annotation


# static fields
.field private static final sCubicEaseInOutInterpolator:Lcom/android/camera/aosp_porting/animation/CubicEaseInOutInterpolator;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mFrontCameraFirstUseHintPopup:Landroid/widget/PopupWindow;

.field private mPortraitUseHintAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mPortraitUseHintHideAnimator:Landroid/animation/Animator;

.field private mPortraitUseHintShowAnimator:Landroid/animation/AnimatorSet;

.field private mStorageHint:Lcom/android/camera/OnScreenHint;

.field private mStorageSpace:J


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/ScreenHint;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/ScreenHint;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mFrontCameraFirstUseHintPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/ScreenHint;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mPortraitUseHintHideAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/ScreenHint;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mPortraitUseHintShowAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/ScreenHint;Z)V
    .locals 0
    .param p1, "recorded"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenHint;->recordLocation(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/android/camera/aosp_porting/animation/CubicEaseInOutInterpolator;

    invoke-direct {v0}, Lcom/android/camera/aosp_porting/animation/CubicEaseInOutInterpolator;-><init>()V

    sput-object v0, Lcom/android/camera/ui/ScreenHint;->sCubicEaseInOutInterpolator:Lcom/android/camera/aosp_porting/animation/CubicEaseInOutInterpolator;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/camera/ui/ScreenHint$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ScreenHint$1;-><init>(Lcom/android/camera/ui/ScreenHint;)V

    iput-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mPortraitUseHintAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 58
    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    .line 57
    return-void
.end method

.method private initPortraitUseHintAnimator()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 62
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mPortraitUseHintShowAnimator:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPortraitUseHintView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 65
    const-string/jumbo v3, "alpha"

    const/16 v4, 0xd8

    .line 63
    filled-new-array {v5, v4}, [I

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 67
    .local v0, "portraitUseHintBackgroundShowAnimator":Landroid/animation/Animator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 69
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPortraitUseHintView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0c0071

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 70
    const-string/jumbo v3, "alpha"

    .line 68
    new-array v4, v7, [F

    .line 70
    aput v8, v4, v5

    aput v9, v4, v6

    .line 68
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 72
    .local v1, "portraitUseHintLayoutShowAnimator":Landroid/animation/Animator;
    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 73
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 74
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mPortraitUseHintShowAnimator:Landroid/animation/AnimatorSet;

    .line 75
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mPortraitUseHintShowAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v7, [Landroid/animation/Animator;

    .line 76
    aput-object v0, v3, v5

    .line 77
    aput-object v1, v3, v6

    .line 75
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 78
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mPortraitUseHintShowAnimator:Landroid/animation/AnimatorSet;

    sget-object v3, Lcom/android/camera/ui/ScreenHint;->sCubicEaseInOutInterpolator:Lcom/android/camera/aosp_porting/animation/CubicEaseInOutInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 79
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mPortraitUseHintShowAnimator:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/camera/ui/ScreenHint;->mPortraitUseHintAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 81
    .end local v0    # "portraitUseHintBackgroundShowAnimator":Landroid/animation/Animator;
    .end local v1    # "portraitUseHintLayoutShowAnimator":Landroid/animation/Animator;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mPortraitUseHintHideAnimator:Landroid/animation/Animator;

    if-nez v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPortraitUseHintView()Landroid/view/View;

    move-result-object v2

    .line 84
    const-string/jumbo v3, "alpha"

    .line 82
    new-array v4, v7, [F

    .line 84
    aput v9, v4, v5

    aput v8, v4, v6

    .line 82
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mPortraitUseHintHideAnimator:Landroid/animation/Animator;

    .line 86
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mPortraitUseHintHideAnimator:Landroid/animation/Animator;

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 87
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mPortraitUseHintHideAnimator:Landroid/animation/Animator;

    sget-object v3, Lcom/android/camera/ui/ScreenHint;->sCubicEaseInOutInterpolator:Lcom/android/camera/aosp_porting/animation/CubicEaseInOutInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 88
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mPortraitUseHintHideAnimator:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/camera/ui/ScreenHint;->mPortraitUseHintAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 61
    :cond_1
    return-void
.end method

.method private recordLocation(Z)V
    .locals 2
    .param p1, "recorded"    # Z

    .prologue
    .line 138
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_camera_recordlocation_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 142
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenHint;->showPortraitUseHint()V

    .line 137
    :cond_0
    return-void
.end method

.method private showPortraitUseHint()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 157
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_camera_first_portrait_use_hint_shown_key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 159
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenHint;->initPortraitUseHintAnimator()V

    .line 160
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPortraitUseHintView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0071

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 161
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPortraitUseHintView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mPortraitUseHintShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 155
    return-void
.end method


# virtual methods
.method public cancelHint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 133
    iput-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 130
    :cond_0
    return-void
.end method

.method public dismissFrontCameraFirstUseHintPopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mFrontCameraFirstUseHintPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mFrontCameraFirstUseHintPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 247
    iput-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mFrontCameraFirstUseHintPopup:Landroid/widget/PopupWindow;

    .line 244
    :cond_0
    return-void
.end method

.method public getStorageSpace()J
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public hideToast()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-static {}, Lcom/android/camera/ui/RotateTextToast;->getInstance()Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 261
    .local v0, "toast":Lcom/android/camera/ui/RotateTextToast;
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    .line 259
    :cond_0
    return-void
.end method

.method public isScreenHintVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->getHintViewVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isShowingFrontCameraFirstUseHintPopup()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mFrontCameraFirstUseHintPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mFrontCameraFirstUseHintPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showConfirmMessage(II)V
    .locals 7
    .param p1, "title"    # I
    .param p2, "message"    # I

    .prologue
    const/4 v4, 0x0

    .line 253
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    .line 254
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 256
    iget-object v3, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v5, 0x104000a

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    .line 252
    invoke-static/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method

.method public showFirstUseHint()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v11

    .line 167
    .local v11, "preferences":Lcom/android/camera/preferences/CameraSettingPreferences;
    const-string/jumbo v0, "pref_camera_first_use_hint_shown_key"

    const/4 v1, 0x1

    invoke-virtual {v11, v0, v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 168
    .local v9, "firstLocation":Z
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    invoke-virtual {v11}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 170
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v0, "pref_camera_first_use_hint_shown_key"

    invoke-interface {v8, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 171
    const-string/jumbo v0, "pref_camera_confirm_location_shown_key"

    invoke-interface {v8, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "firstLocation":Z
    :goto_0
    const-string/jumbo v0, "pref_camera_first_portrait_use_hint_shown_key"

    .line 178
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

    move-result v1

    .line 177
    invoke-virtual {v11, v0, v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 181
    .local v10, "firstPortraitHint":Z
    if-nez v9, :cond_0

    if-eqz v10, :cond_4

    .line 183
    :cond_0
    const-string/jumbo v0, "pref_camera_recordlocation_key"

    invoke-virtual {v11, v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    .line 184
    .local v7, "containsRecordLocation":Z
    invoke-static {}, Lcom/android/camera/Device;->isSupportedGPS()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v7, :cond_5

    .line 205
    :cond_1
    if-eqz v10, :cond_2

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenHint;->showPortraitUseHint()V

    .line 165
    :cond_2
    :goto_1
    return-void

    .line 174
    .end local v7    # "containsRecordLocation":Z
    .end local v10    # "firstPortraitHint":Z
    .restart local v9    # "firstLocation":Z
    :cond_3
    const/4 v9, 0x0

    .local v9, "firstLocation":Z
    goto :goto_0

    .line 181
    .end local v9    # "firstLocation":Z
    .restart local v10    # "firstPortraitHint":Z
    :cond_4
    return-void

    .line 184
    .restart local v7    # "containsRecordLocation":Z
    :cond_5
    if-eqz v9, :cond_1

    .line 185
    new-instance v5, Lcom/android/camera/ui/ScreenHint$2;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/ScreenHint$2;-><init>(Lcom/android/camera/ui/ScreenHint;)V

    .line 192
    .local v5, "save":Ljava/lang/Runnable;
    new-instance v6, Lcom/android/camera/ui/ScreenHint$3;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/ScreenHint$3;-><init>(Lcom/android/camera/ui/ScreenHint;)V

    .line 200
    .local v6, "no_save":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    .line 201
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e0011

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0e0012

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    iget-object v3, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0e0013

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 204
    iget-object v4, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v12, 0x7f0e0014

    invoke-virtual {v4, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-static/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showSystemChoiceDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public showFrontCameraFirstUseHintPopup()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 211
    iget-object v3, p0, Lcom/android/camera/ui/ScreenHint;->mFrontCameraFirstUseHintPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v4, 0x7f040008

    invoke-static {v3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 213
    .local v2, "popupView":Landroid/view/View;
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v5, v5, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lcom/android/camera/ui/ScreenHint;->mFrontCameraFirstUseHintPopup:Landroid/widget/PopupWindow;

    .line 214
    iget-object v3, p0, Lcom/android/camera/ui/ScreenHint;->mFrontCameraFirstUseHintPopup:Landroid/widget/PopupWindow;

    new-instance v4, Lcom/android/camera/ui/ScreenHint$4;

    invoke-direct {v4, p0}, Lcom/android/camera/ui/ScreenHint$4;-><init>(Lcom/android/camera/ui/ScreenHint;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 226
    const v3, 0x7f0c002e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 227
    .local v1, "confirm":Landroid/view/View;
    new-instance v3, Lcom/android/camera/ui/ScreenHint$5;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/ScreenHint$5;-><init>(Lcom/android/camera/ui/ScreenHint;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    const v3, 0x7f0c002a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 234
    .local v0, "animation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 235
    iget-object v4, p0, Lcom/android/camera/ui/ScreenHint;->mFrontCameraFirstUseHintPopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v3

    .line 236
    iget-object v5, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0096

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 235
    const/16 v6, 0x31

    .line 236
    const/4 v7, 0x0

    .line 235
    invoke-virtual {v4, v3, v6, v7, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 210
    .end local v0    # "animation":Landroid/graphics/drawable/AnimationDrawable;
    .end local v1    # "confirm":Landroid/view/View;
    .end local v2    # "popupView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public showObjectTrackHint(Lcom/android/camera/preferences/CameraSettingPreferences;)V
    .locals 4
    .param p1, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-virtual {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 149
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_camera_first_tap_screen_hint_shown_key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v1

    .line 152
    const v2, 0x7f0e0191

    .line 151
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    .line 147
    return-void
.end method

.method public updateHint()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 97
    invoke-static {}, Lcom/android/camera/storage/Storage;->switchStoragePathIfNeeded()V

    .line 98
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "message":Ljava/lang/String;
    iget-wide v2, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e000b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v0, :cond_7

    .line 114
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-nez v1, :cond_6

    .line 115
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/camera/OnScreenHint;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 119
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->show()V

    .line 96
    :cond_1
    :goto_2
    return-void

    .line 102
    .restart local v0    # "message":Ljava/lang/String;
    :cond_2
    iget-wide v2, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const-wide/16 v4, -0x2

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 103
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e000d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 104
    .local v0, "message":Ljava/lang/String;
    :cond_3
    iget-wide v2, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const-wide/16 v4, -0x3

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    .line 105
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e000e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 106
    .local v0, "message":Ljava/lang/String;
    :cond_4
    iget-wide v2, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const-wide/32 v4, 0x3200000

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 107
    invoke-static {}, Lcom/android/camera/storage/Storage;->isPhoneStoragePriority()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 108
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e00d9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 110
    .local v0, "message":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e00da

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 117
    .end local v0    # "message":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 120
    :cond_7
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 122
    iput-object v6, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    goto :goto_2
.end method
