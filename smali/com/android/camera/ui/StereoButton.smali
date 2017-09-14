.class public Lcom/android/camera/ui/StereoButton;
.super Landroid/widget/ImageView;
.source "StereoButton.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/StereoButton$AnimationType;,
        Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

.field private mExitButton:Lcom/android/camera/ui/ExitButton;

.field private mExitView:Lcom/android/camera/ui/V6ModeExitView;

.field private mIsShowing:Z

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mModeExitButtonCenterX:I

.field private mModeExitButtonHalfWidth:I

.field private mModeExitButtonPadding:I

.field private mPopup:Lcom/android/camera/ui/StereoPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mRotateImageAnim:Landroid/view/animation/Animation;

.field private mSlideDownAnim:Landroid/view/animation/Animation;

.field private mSlideUpAnim:Landroid/view/animation/Animation;

.field private mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/ExitButton;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitButton:Lcom/android/camera/ui/ExitButton;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/V6ModeExitView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/StereoButton;)Landroid/graphics/drawable/TransitionDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/StereoButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/ui/StereoButton;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonCenterX:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/ui/StereoButton;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonHalfWidth:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/camera/ui/StereoButton;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonPadding:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/StereoButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->updateActivated()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/StereoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 48
    const v0, 0x7f05000b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 51
    const v0, 0x7f050012

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideUpAnim:Landroid/view/animation/Animation;

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 54
    const v0, 0x7f050011

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideDownAnim:Landroid/view/animation/Animation;

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 44
    return-void
.end method

.method private animateShow()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 109
    iput-boolean v1, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    .line 110
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->showPopup(Z)V

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 108
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private createExpandAnimator(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 428
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    if-nez v0, :cond_1

    .line 429
    new-instance v0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/StereoButton;)V

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    .line 434
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    const v1, 0x7f050004

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 436
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 437
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v2, v1, v2

    iget v2, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonHalfWidth:I

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 441
    if-eqz p1, :cond_2

    .line 442
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    sget-object v1, Lcom/android/camera/ui/StereoButton$AnimationType;->EXPAND:Lcom/android/camera/ui/StereoButton$AnimationType;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/StereoButton$AnimationType;)V

    .line 443
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 448
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ExitButton;->setExpandedAnimation(Z)V

    .line 426
    return-void

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    invoke-virtual {v0}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->updateParameters()V

    goto :goto_0

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    sget-object v1, Lcom/android/camera/ui/StereoButton$AnimationType;->COLLAPSE:Lcom/android/camera/ui/StereoButton$AnimationType;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/StereoButton$AnimationType;)V

    .line 446
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    goto :goto_1
.end method

.method private doWithPopup(ZZ)V
    .locals 1
    .param p1, "animate"    # Z
    .param p2, "shown"    # Z

    .prologue
    .line 119
    if-eqz p2, :cond_1

    .line 120
    if-eqz p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 118
    :goto_0
    return-void

    .line 123
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->showScale(Z)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private getKey()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 151
    :cond_0
    return-object v1
.end method

.method private initializePopup()V
    .locals 4

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/StereoPopup;->reloadPreference()V

    .line 138
    return-void

    .line 133
    :cond_0
    const-string/jumbo v1, "StereoButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no need to initialize popup, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    const-string/jumbo v3, " mPreference="

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    iget-object v3, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    const-string/jumbo v3, " mPopup="

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    iget-object v3, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPopupParent()Landroid/view/ViewGroup;

    move-result-object v0

    .line 142
    .local v0, "root":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/StereoPopup;

    iput-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    .line 143
    iget-object v2, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/camera/ui/StereoPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 144
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    return-void
.end method

.method private reloadPreference()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateAperture()V

    .line 361
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/StereoPopup;->reloadPreference()V

    .line 359
    :cond_0
    return-void
.end method

.method private updateActivated()V
    .locals 1

    .prologue
    .line 220
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->isPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setActivated(Z)V

    .line 219
    :goto_0
    return-void

    .line 222
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setActivated(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateExitButton(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 256
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getExitText(Ljava/lang/String;)I

    move-result v0

    .line 257
    .local v0, "txtId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    if-eqz p1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/V6ModeExitView;->setExitContent(I)V

    .line 264
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v2, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 255
    :cond_0
    :goto_1
    return-void

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    goto :goto_0

    .line 265
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v2, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->isCurrentExitView(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    if-nez p1, :cond_3

    .line 267
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 269
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v1, v3, v3}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public dismissPopup(Z)Z
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 164
    iput-boolean v1, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    .line 165
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->isPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/StereoPopup;->dismiss(Z)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/StereoButton;->dismissScale(Z)V

    .line 168
    if-nez p1, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->updateVisible()V

    .line 171
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 173
    :cond_1
    return v1
.end method

.method public dismissScale(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 399
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ModeExitView;->isExitButtonShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 400
    return-void

    .line 402
    :cond_0
    if-eqz p1, :cond_1

    .line 403
    new-instance v0, Lcom/android/camera/ui/StereoButton$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/StereoButton$2;-><init>(Lcom/android/camera/ui/StereoButton;)V

    .line 409
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ModeExitView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 410
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 409
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 413
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/ui/StereoButton;->createExpandAnimator(Z)V

    .line 398
    .end local v0    # "r":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonVisible(I)V

    goto :goto_0
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 318
    packed-switch p1, :pswitch_data_0

    .line 339
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f0c0077

    .line 341
    const/4 v3, 0x2

    move v1, p1

    move-object v4, p4

    move-object v5, p5

    .line 340
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 343
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->reloadPreference()V

    .line 345
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 320
    :pswitch_0
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->updateActivated()V

    .line 323
    :cond_1
    new-instance v0, Lcom/android/camera/ui/StereoButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/StereoButton$1;-><init>(Lcom/android/camera/ui/StereoButton;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 336
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->updateActivated()V

    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public enableControls(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/StereoButton;->setEnabled(Z)V

    .line 288
    return-void
.end method

.method public getPopup()Landroid/view/View;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    return-object v0
.end method

.method public isPopupVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 177
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/StereoPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x1

    .line 373
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    if-eqz v0, :cond_1

    .line 374
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->showPopup(Z)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideUpAnim:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    if-eqz v0, :cond_0

    .line 376
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    .line 377
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->showScale(Z)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 382
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 367
    return-void
.end method

.method public onCameraOpen()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 186
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    .line 186
    if-eqz v0, :cond_1

    .line 188
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    .line 189
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v0

    .line 194
    const-string/jumbo v1, "pref_camera_stereo_mode_key"

    .line 193
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/preferences/IconListPreference;

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_3

    .line 197
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    .line 198
    return-void

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 201
    iget-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    if-nez v0, :cond_5

    .line 202
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 203
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->isPopupVisible()Z

    move-result v0

    if-nez v0, :cond_4

    .line 204
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    .line 205
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/StereoButton;->showPopup(Z)V

    .line 211
    :cond_4
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/camera/ui/StereoButton;->updateExitButton(Z)V

    .line 214
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v0, :cond_6

    .line 215
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/StereoPopup;->updateBackground()V

    .line 185
    :cond_6
    return-void

    .line 208
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->updateVisible()V

    .line 209
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/StereoButton;->dismissPopup(Z)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    if-ne p1, p0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    .line 64
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->animateShow()V

    .line 61
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0, v2, v2}, Lcom/android/camera/ui/StereoButton;->setStereoValue(ZZZ)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    .line 277
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->getExitButton()Lcom/android/camera/ui/ExitButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitButton:Lcom/android/camera/ui/ExitButton;

    .line 275
    :cond_0
    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 350
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->dismissPopup(Z)Z

    move-result v0

    .line 351
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->updateActivated()V

    .line 352
    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    .line 304
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public recoverIfNeeded()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 249
    if-nez p1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 247
    :cond_0
    return-void
.end method

.method public setDeltaX(I)V
    .locals 4
    .param p1, "deltaX"    # I

    .prologue
    .line 452
    iget v2, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonCenterX:I

    iget v3, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonPadding:I

    sub-int/2addr v2, v3

    sub-int v0, v2, p1

    .line 453
    .local v0, "newLeft":I
    iget v2, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonCenterX:I

    iget v3, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonPadding:I

    add-int/2addr v2, v3

    add-int v1, v2, p1

    .line 454
    .local v1, "newRight":I
    iget-object v2, p0, Lcom/android/camera/ui/StereoButton;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/ExitButton;->setExpandingSize(II)V

    .line 456
    iget-object v2, p0, Lcom/android/camera/ui/StereoButton;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v2}, Lcom/android/camera/ui/ExitButton;->postInvalidateOnAnimation()V

    .line 451
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 309
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 310
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/StereoPopup;->setEnabled(Z)V

    .line 308
    :cond_0
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/camera/ui/StereoButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 299
    return-void
.end method

.method public setStereoValue(ZZZ)V
    .locals 6
    .param p1, "stereoValue"    # Z
    .param p2, "notify"    # Z
    .param p3, "animate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 75
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    if-eqz p1, :cond_2

    .line 79
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    const v2, 0x7f0e017e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 85
    :goto_0
    if-eqz p1, :cond_4

    .line 86
    if-eqz p3, :cond_3

    .line 87
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->animateShow()V

    .line 96
    :goto_1
    invoke-direct {p0, p3}, Lcom/android/camera/ui/StereoButton;->updateExitButton(Z)V

    .line 98
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 100
    const/4 v1, 0x0

    .line 101
    const v2, 0x7f0c0077

    .line 102
    const/4 v3, 0x2

    move-object v5, v4

    .line 99
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    :cond_1
    return-void

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/camera/ui/StereoButton;->showPopup(Z)V

    goto :goto_1

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 93
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->clearRecoveredPopupListenerIfNeeded(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 94
    invoke-virtual {p0, p3}, Lcom/android/camera/ui/StereoButton;->dismissPopup(Z)Z

    goto :goto_1
.end method

.method public showPopup(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->initializePopup()V

    .line 156
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/StereoPopup;->show(Z)V

    .line 158
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/StereoButton;->doWithPopup(ZZ)V

    .line 159
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->onPopupChange()V

    .line 154
    :cond_0
    return-void
.end method

.method public showScale(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->isExitButtonShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    return-void

    .line 392
    :cond_0
    if-eqz p1, :cond_1

    .line 393
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/StereoButton;->createExpandAnimator(Z)V

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonVisible(I)V

    .line 388
    return-void
.end method

.method public switchOffStereo(Z)V
    .locals 1
    .param p1, "notify"    # Z

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0, p1, v0}, Lcom/android/camera/ui/StereoButton;->setStereoValue(ZZZ)V

    .line 70
    return-void
.end method

.method public updateVisible()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isBackCamera()Z

    move-result v0

    .line 231
    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isNoCameraModeSelected(Landroid/content/Context;)Z

    move-result v0

    .line 231
    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    :cond_0
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->isPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->setActivated(Z)V

    .line 243
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    .line 230
    :goto_0
    return-void

    .line 235
    :cond_2
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->setActivated(Z)V

    .line 237
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    goto :goto_0

    .line 240
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    goto :goto_0
.end method
