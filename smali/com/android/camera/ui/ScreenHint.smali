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
.field private static final sCubicEaseInOutInterpolator:Lmiui/view/animation/CubicEaseInOutInterpolator;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mIsShowingFrontCameraFirstUseHint:Z

.field private mStorageHint:Lcom/android/camera/OnScreenHint;

.field private mStorageSpace:J

.field private mUseHintAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mUseHintHideAnimator:Landroid/animation/ObjectAnimator;

.field private mUseHintShowAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/ScreenHint;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mUseHintHideAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/ScreenHint;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mUseHintShowAnimator:Landroid/animation/AnimatorSet;

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
    .line 35
    new-instance v0, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    sput-object v0, Lcom/android/camera/ui/ScreenHint;->sCubicEaseInOutInterpolator:Lmiui/view/animation/CubicEaseInOutInterpolator;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/android/camera/ui/ScreenHint$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ScreenHint$1;-><init>(Lcom/android/camera/ui/ScreenHint;)V

    iput-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mUseHintAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 59
    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    .line 58
    return-void
.end method

.method private createUseHintAnimator(Landroid/view/ViewGroup;)V
    .locals 10
    .param p1, "hintView"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 65
    const-string/jumbo v3, "alpha"

    const/16 v4, 0xff

    .line 63
    filled-new-array {v5, v4}, [I

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 67
    .local v0, "useHintBackgroundShowAnimator":Landroid/animation/Animator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 69
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 70
    :goto_0
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
    .local v1, "useHintLayoutShowAnimator":Landroid/animation/Animator;
    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 73
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 74
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mUseHintShowAnimator:Landroid/animation/AnimatorSet;

    .line 75
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mUseHintShowAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v7, [Landroid/animation/Animator;

    .line 76
    aput-object v0, v3, v5

    .line 77
    aput-object v1, v3, v6

    .line 75
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 78
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mUseHintShowAnimator:Landroid/animation/AnimatorSet;

    sget-object v3, Lcom/android/camera/ui/ScreenHint;->sCubicEaseInOutInterpolator:Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 79
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mUseHintShowAnimator:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/camera/ui/ScreenHint;->mUseHintAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 83
    const-string/jumbo v2, "alpha"

    .line 81
    new-array v3, v7, [F

    .line 83
    aput v9, v3, v5

    aput v8, v3, v6

    .line 81
    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mUseHintHideAnimator:Landroid/animation/ObjectAnimator;

    .line 85
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mUseHintHideAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 86
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mUseHintHideAnimator:Landroid/animation/ObjectAnimator;

    sget-object v3, Lcom/android/camera/ui/ScreenHint;->sCubicEaseInOutInterpolator:Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 87
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mUseHintHideAnimator:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/camera/ui/ScreenHint;->mUseHintAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 62
    return-void

    .end local v1    # "useHintLayoutShowAnimator":Landroid/animation/Animator;
    :cond_0
    move-object v2, p1

    .line 69
    goto :goto_0
.end method

.method private recordLocation(Z)V
    .locals 2
    .param p1, "recorded"    # Z

    .prologue
    .line 136
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_camera_recordlocation_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 135
    return-void
.end method


# virtual methods
.method public cancelHint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 131
    iput-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 128
    :cond_0
    return-void
.end method

.method public dismissFrontCameraFirstUseHint()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFrontCameraHintView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mUseHintHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/ScreenHint;->mIsShowingFrontCameraFirstUseHint:Z

    .line 206
    return-void
.end method

.method public getStorageSpace()J
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public hideToast()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-static {}, Lcom/android/camera/ui/RotateTextToast;->getInstance()Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 222
    .local v0, "toast":Lcom/android/camera/ui/RotateTextToast;
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    .line 220
    :cond_0
    return-void
.end method

.method public isScreenHintVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 125
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

.method public isShowingFrontCameraFirstUseHint()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenHint;->mIsShowingFrontCameraFirstUseHint:Z

    return v0
.end method

.method public showConfirmMessage(II)V
    .locals 7
    .param p1, "title"    # I
    .param p2, "message"    # I

    .prologue
    const/4 v4, 0x0

    .line 214
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    .line 215
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 217
    iget-object v3, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v5, 0x104000a

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    .line 213
    invoke-static/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method

.method public showFirstUseHint()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v10

    .line 152
    .local v10, "preferences":Lcom/android/camera/preferences/CameraSettingPreferences;
    const-string/jumbo v0, "pref_camera_first_use_hint_shown_key"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 153
    .local v9, "firstLocation":Z
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v10}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 155
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v0, "pref_camera_first_use_hint_shown_key"

    invoke-interface {v8, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 156
    const-string/jumbo v0, "pref_camera_confirm_location_shown_key"

    invoke-interface {v8, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 163
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "firstLocation":Z
    :goto_0
    if-nez v9, :cond_1

    return-void

    .line 159
    .restart local v9    # "firstLocation":Z
    :cond_0
    const/4 v9, 0x0

    .local v9, "firstLocation":Z
    goto :goto_0

    .line 165
    .end local v9    # "firstLocation":Z
    :cond_1
    const-string/jumbo v0, "pref_camera_recordlocation_key"

    invoke-virtual {v10, v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    .line 166
    .local v7, "containsRecordLocation":Z
    invoke-static {}, Lcom/android/camera/Device;->isSupportedGPS()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v7, :cond_3

    .line 150
    :cond_2
    :goto_1
    return-void

    .line 166
    :cond_3
    if-eqz v9, :cond_2

    .line 167
    new-instance v5, Lcom/android/camera/ui/ScreenHint$2;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/ScreenHint$2;-><init>(Lcom/android/camera/ui/ScreenHint;)V

    .line 174
    .local v5, "save":Ljava/lang/Runnable;
    new-instance v6, Lcom/android/camera/ui/ScreenHint$3;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/ScreenHint$3;-><init>(Lcom/android/camera/ui/ScreenHint;)V

    .line 182
    .local v6, "no_save":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    .line 183
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e0010

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0e0011

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 185
    iget-object v3, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0e0012

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 186
    iget-object v4, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0e0013

    invoke-virtual {v4, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-static/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showSystemChoiceDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public showFrontCameraFirstUseHint()V
    .locals 4

    .prologue
    .line 191
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFrontCameraHintView()Landroid/view/View;

    move-result-object v1

    .local v1, "hintView":Landroid/view/View;
    move-object v2, v1

    .line 192
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/android/camera/ui/ScreenHint;->createUseHintAnimator(Landroid/view/ViewGroup;)V

    .line 194
    const v2, 0x7f09002d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 195
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v2, p0, Lcom/android/camera/ui/ScreenHint;->mUseHintShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 197
    const v2, 0x7f09002e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 198
    .local v0, "animation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 199
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenHint;->mIsShowingFrontCameraFirstUseHint:Z

    .line 190
    return-void
.end method

.method public showObjectTrackHint(Lcom/android/camera/preferences/CameraSettingPreferences;)V
    .locals 4
    .param p1, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;

    .prologue
    const/4 v3, 0x0

    .line 143
    invoke-virtual {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_camera_first_tap_screen_hint_shown_key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 146
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v1

    .line 147
    const v2, 0x7f0e018f

    .line 146
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    .line 142
    return-void
.end method

.method public updateHint()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 95
    invoke-static {}, Lcom/android/camera/storage/Storage;->switchStoragePathIfNeeded()V

    .line 96
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "message":Ljava/lang/String;
    iget-wide v2, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 99
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e000a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v0, :cond_7

    .line 112
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-nez v1, :cond_6

    .line 113
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/camera/OnScreenHint;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 117
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->show()V

    .line 94
    :cond_1
    :goto_2
    return-void

    .line 100
    .restart local v0    # "message":Ljava/lang/String;
    :cond_2
    iget-wide v2, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const-wide/16 v4, -0x2

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 101
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e000c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 102
    .local v0, "message":Ljava/lang/String;
    :cond_3
    iget-wide v2, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const-wide/16 v4, -0x3

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    .line 103
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e000d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 104
    .local v0, "message":Ljava/lang/String;
    :cond_4
    iget-wide v2, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const-wide/32 v4, 0x3200000

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 105
    invoke-static {}, Lcom/android/camera/storage/Storage;->isPhoneStoragePriority()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 106
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e00da

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 108
    .local v0, "message":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e00db

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 115
    .end local v0    # "message":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 118
    :cond_7
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 120
    iput-object v6, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    goto :goto_2
.end method
