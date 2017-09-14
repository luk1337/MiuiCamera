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

.method static synthetic -get2(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/preferences/IconListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/StereoButton;)Landroid/graphics/drawable/TransitionDrawable;
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
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/StereoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 49
    const v0, 0x7f05000c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 52
    const v0, 0x7f050013

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideUpAnim:Landroid/view/animation/Animation;

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 55
    const v0, 0x7f050012

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideDownAnim:Landroid/view/animation/Animation;

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 45
    return-void
.end method

.method private animateShow()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 114
    iput-boolean v1, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    .line 115
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->showPopup(Z)V

    .line 120
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 113
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private clearAllAnimation()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 143
    :cond_1
    return-void

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->clearAnimation()V

    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    goto :goto_0
.end method

.method private createExpandAnimator(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 470
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    if-nez v0, :cond_1

    .line 471
    new-instance v0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/StereoButton;)V

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    .line 476
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    const v1, 0x7f050005

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 478
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v2, v1, v2

    iget v2, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonHalfWidth:I

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 483
    if-eqz p1, :cond_2

    .line 484
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    sget-object v1, Lcom/android/camera/ui/StereoButton$AnimationType;->EXPAND:Lcom/android/camera/ui/StereoButton$AnimationType;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/StereoButton$AnimationType;)V

    .line 485
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 490
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ExitButton;->setExpandedAnimation(Z)V

    .line 468
    return-void

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    invoke-virtual {v0}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->updateParameters()V

    goto :goto_0

    .line 487
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    sget-object v1, Lcom/android/camera/ui/StereoButton$AnimationType;->COLLAPSE:Lcom/android/camera/ui/StereoButton$AnimationType;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/StereoButton$AnimationType;)V

    .line 488
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    goto :goto_1
.end method

.method private doWithPopup(ZZ)V
    .locals 1
    .param p1, "animate"    # Z
    .param p2, "shown"    # Z

    .prologue
    .line 124
    if-eqz p2, :cond_1

    .line 125
    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 123
    :goto_0
    return-void

    .line 128
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->showScale(Z)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private getKey()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    return-object v1
.end method

.method private initializePopup()V
    .locals 4

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    sget-boolean v1, Lcom/android/camera/Device;->IS_B7:Z

    .line 155
    if-eqz v1, :cond_1

    .line 157
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

    .line 158
    const-string/jumbo v3, " mPreference="

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 158
    iget-object v3, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 158
    const-string/jumbo v3, " mPopup="

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 158
    iget-object v3, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/StereoPopup;->reloadPreference()V

    .line 162
    return-void

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPopupParent()Landroid/view/ViewGroup;

    move-result-object v0

    .line 166
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

    .line 167
    iget-object v2, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/camera/ui/StereoPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 168
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 154
    return-void
.end method

.method private reloadPreference()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateAperture()V

    .line 392
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/StereoPopup;->reloadPreference()V

    .line 390
    :cond_0
    return-void
.end method

.method private updateActivated()V
    .locals 1

    .prologue
    .line 245
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->isPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setActivated(Z)V

    .line 244
    :goto_0
    return-void

    .line 247
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setActivated(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateExitButton(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 283
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getExitText(Ljava/lang/String;)I

    move-result v0

    .line 284
    .local v0, "txtId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    if-eqz p1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/V6ModeExitView;->setExitContent(I)V

    .line 291
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v2, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 282
    :cond_0
    :goto_1
    return-void

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    goto :goto_0

    .line 292
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v2, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->isCurrentExitView(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    if-nez p1, :cond_3

    .line 294
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 296
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

    .line 188
    iput-boolean v1, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    .line 189
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->isPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/StereoPopup;->dismiss(Z)V

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/StereoButton;->dismissScale(Z)V

    .line 192
    if-nez p1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->updateVisible()V

    .line 195
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 197
    :cond_1
    return v1
.end method

.method public dismissScale(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 441
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ModeExitView;->isExitButtonShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 442
    return-void

    .line 444
    :cond_0
    if-eqz p1, :cond_1

    .line 445
    new-instance v0, Lcom/android/camera/ui/StereoButton$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/StereoButton$2;-><init>(Lcom/android/camera/ui/StereoButton;)V

    .line 451
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ModeExitView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 452
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 451
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 455
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/ui/StereoButton;->createExpandAnimator(Z)V

    .line 440
    .end local v0    # "r":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 457
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
    .line 349
    packed-switch p1, :pswitch_data_0

    .line 370
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f09007c

    .line 372
    const/4 v3, 0x2

    move v1, p1

    move-object v4, p4

    move-object v5, p5

    .line 371
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->reloadPreference()V

    .line 376
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 351
    :pswitch_0
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->updateActivated()V

    .line 354
    :cond_1
    new-instance v0, Lcom/android/camera/ui/StereoButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/StereoButton$1;-><init>(Lcom/android/camera/ui/StereoButton;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 367
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->updateActivated()V

    goto :goto_0

    .line 349
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
    .line 316
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/StereoButton;->setEnabled(Z)V

    .line 315
    return-void
.end method

.method public getPopup()Landroid/view/View;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    return-object v0
.end method

.method public isPopupVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 201
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
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 405
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    .line 407
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->updateVisible()V

    .line 408
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    if-eqz v0, :cond_2

    .line 411
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->showPopup(Z)V

    .line 412
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-nez v0, :cond_1

    .line 413
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    .line 414
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->showScale(Z)V

    .line 403
    :cond_1
    :goto_0
    return-void

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideUpAnim:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    .line 418
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->showScale(Z)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 423
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 398
    return-void
.end method

.method public onCameraOpen()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 210
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereoVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    .line 210
    if-eqz v0, :cond_2

    .line 213
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    .line 214
    return-void

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v0

    .line 219
    const-string/jumbo v1, "pref_camera_stereo_mode_key"

    .line 218
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/preferences/IconListPreference;

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_4

    .line 222
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    .line 223
    return-void

    .line 225
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 226
    iget-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    if-nez v0, :cond_6

    .line 227
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 228
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->isPopupVisible()Z

    move-result v0

    if-nez v0, :cond_5

    .line 229
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    .line 230
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/StereoButton;->showPopup(Z)V

    .line 236
    :cond_5
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/camera/ui/StereoButton;->updateExitButton(Z)V

    .line 239
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v0, :cond_7

    .line 240
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/StereoPopup;->updateBackground()V

    .line 209
    :cond_7
    return-void

    .line 233
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->updateVisible()V

    .line 234
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/StereoButton;->dismissPopup(Z)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 63
    if-ne p1, p0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    .line 65
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->animateShow()V

    .line 62
    :goto_0
    return-void

    .line 67
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
    .line 303
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    .line 304
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->getExitButton()Lcom/android/camera/ui/ExitButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitButton:Lcom/android/camera/ui/ExitButton;

    .line 302
    :cond_0
    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 381
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->dismissPopup(Z)Z

    move-result v0

    .line 382
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->updateActivated()V

    .line 383
    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_B7:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->clearAllAnimation()V

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public recoverIfNeeded()V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 276
    if-nez p1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 274
    :cond_0
    return-void
.end method

.method public setDeltaX(I)V
    .locals 4
    .param p1, "deltaX"    # I

    .prologue
    .line 494
    iget v2, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonCenterX:I

    iget v3, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonPadding:I

    sub-int/2addr v2, v3

    sub-int v0, v2, p1

    .line 495
    .local v0, "newLeft":I
    iget v2, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonCenterX:I

    iget v3, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonPadding:I

    add-int/2addr v2, v3

    add-int v1, v2, p1

    .line 496
    .local v1, "newRight":I
    iget-object v2, p0, Lcom/android/camera/ui/StereoButton;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/ExitButton;->setExpandingSize(II)V

    .line 498
    iget-object v2, p0, Lcom/android/camera/ui/StereoButton;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v2}, Lcom/android/camera/ui/ExitButton;->postInvalidateOnAnimation()V

    .line 493
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 340
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 341
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/StereoPopup;->setEnabled(Z)V

    .line 339
    :cond_0
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/camera/ui/StereoButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 326
    return-void
.end method

.method public setStereoValue(ZZZ)V
    .locals 6
    .param p1, "stereoValue"    # Z
    .param p2, "notify"    # Z
    .param p3, "animate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    .line 77
    const-string/jumbo v0, "StereoButton"

    const-string/jumbo v1, "null preference"

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 81
    return-void

    .line 83
    :cond_1
    if-eqz p1, :cond_3

    .line 84
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    const v2, 0x7f0e017c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 90
    :goto_0
    if-eqz p1, :cond_5

    .line 91
    if-eqz p3, :cond_4

    .line 92
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->animateShow()V

    .line 101
    :goto_1
    invoke-direct {p0, p3}, Lcom/android/camera/ui/StereoButton;->updateExitButton(Z)V

    .line 103
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 105
    const/4 v1, 0x0

    .line 106
    const v2, 0x7f09007c

    .line 107
    const/4 v3, 0x2

    move-object v5, v4

    .line 104
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    :cond_2
    return-void

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_4
    invoke-virtual {p0, p3}, Lcom/android/camera/ui/StereoButton;->showPopup(Z)V

    goto :goto_1

    .line 97
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->clearAnimation()V

    .line 98
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->clearRecoveredPopupListenerIfNeeded(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 99
    invoke-virtual {p0, p3}, Lcom/android/camera/ui/StereoButton;->dismissPopup(Z)Z

    goto :goto_1
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 137
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->clearAllAnimation()V

    .line 140
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    return-void
.end method

.method public showPopup(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->initializePopup()V

    .line 180
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/StereoPopup;->show(Z)V

    .line 182
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/StereoButton;->doWithPopup(ZZ)V

    .line 183
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->onPopupChange()V

    .line 178
    :cond_0
    return-void
.end method

.method public showScale(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 430
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->isExitButtonShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iput-boolean v1, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    .line 432
    return-void

    .line 434
    :cond_0
    if-eqz p1, :cond_1

    .line 435
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/StereoButton;->createExpandAnimator(Z)V

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonVisible(I)V

    .line 429
    return-void
.end method

.method public switchOffStereo(Z)V
    .locals 1
    .param p1, "notify"    # Z

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0, p1, v0}, Lcom/android/camera/ui/StereoButton;->setStereoValue(ZZZ)V

    .line 71
    return-void
.end method

.method public updateVisible()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 256
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereoVideo()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    :cond_1
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getPopup()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 266
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->isPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->setActivated(Z)V

    .line 270
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    .line 255
    :goto_0
    return-void

    .line 258
    :cond_3
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isBackCamera()Z

    move-result v0

    .line 256
    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isNoCameraModeSelected(Landroid/content/Context;)Z

    move-result v0

    .line 256
    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->setActivated(Z)V

    .line 263
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    goto :goto_0

    .line 267
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    goto :goto_0
.end method
