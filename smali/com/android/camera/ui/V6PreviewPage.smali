.class public Lcom/android/camera/ui/V6PreviewPage;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6PreviewPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6PreviewPage$1;,
        Lcom/android/camera/ui/V6PreviewPage$2;,
        Lcom/android/camera/ui/V6PreviewPage$AnimationType;,
        Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mAnimPopup:Landroid/animation/ValueAnimator;

.field private mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

.field public mAsdIndicatorView:Landroid/widget/ImageView;

.field private mCollapseInterpolator:Landroid/animation/TimeInterpolator;

.field private mExpandInterpolator:Landroid/animation/TimeInterpolator;

.field private mHidePreviewCover:Ljava/lang/Runnable;

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field public mLyingOriFlag:Lcom/android/camera/ui/OrientationIndicator;

.field private mModeExitButton:Landroid/view/View;

.field public mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

.field private mOrientationArea:Lcom/android/camera/ui/RotateLayout;

.field private mOrientationParent:Landroid/widget/RelativeLayout;

.field public mPanoramaViewRoot:Landroid/widget/RelativeLayout;

.field private mPopupGroupVisible:Z

.field private mPopupIndicator:Landroid/view/View;

.field public mPopupIndicatorLayout:Landroid/view/View;

.field public mPopupParent:Landroid/view/ViewGroup;

.field public mPopupParentLayout:Landroid/view/ViewGroup;

.field private mPopupVisible:Z

.field private mPreviewCover:Landroid/view/View;

.field public mStereoButton:Lcom/android/camera/ui/StereoButton;

.field public mTopPopupParent:Lcom/android/camera/ui/TopPopupParent;

.field private mVisible:Z

.field public mWarningMessageLayout:Landroid/widget/LinearLayout;

.field public mWarningView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPreviewCover:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/V6PreviewPage;Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6PreviewPage;->getChildY(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/V6PreviewPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->clearOnLayoutChangeListener()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/ui/V6PreviewPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->createAnimation()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/ui/V6PreviewPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->createOrUpdateAnimatorListener()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/camera/ui/V6PreviewPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->setupOnLayoutChangeListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 77
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 59
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mCollapseInterpolator:Landroid/animation/TimeInterpolator;

    .line 60
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mExpandInterpolator:Landroid/animation/TimeInterpolator;

    .line 62
    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6PreviewPage$1;-><init>(Lcom/android/camera/ui/V6PreviewPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 152
    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6PreviewPage$2;-><init>(Lcom/android/camera/ui/V6PreviewPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mHidePreviewCover:Ljava/lang/Runnable;

    .line 78
    check-cast p1, Lcom/android/camera/ActivityBase;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mActivity:Lcom/android/camera/ActivityBase;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 59
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mCollapseInterpolator:Landroid/animation/TimeInterpolator;

    .line 60
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mExpandInterpolator:Landroid/animation/TimeInterpolator;

    .line 62
    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6PreviewPage$1;-><init>(Lcom/android/camera/ui/V6PreviewPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 152
    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6PreviewPage$2;-><init>(Lcom/android/camera/ui/V6PreviewPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mHidePreviewCover:Ljava/lang/Runnable;

    .line 83
    check-cast p1, Lcom/android/camera/ActivityBase;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mActivity:Lcom/android/camera/ActivityBase;

    .line 81
    return-void
.end method

.method private clearOnLayoutChangeListener()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 370
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 371
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 372
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModeExitView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 373
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 368
    return-void
.end method

.method private createAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 385
    const-string/jumbo v1, "V6PreviewPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createAnimation: popupHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    if-nez v1, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->createOrUpdateAnimatorListener()V

    .line 390
    :cond_0
    const-string/jumbo v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 391
    .local v0, "popupTransYOut":Landroid/animation/PropertyValuesHolder;
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    new-array v2, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    .line 392
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 393
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 384
    return-void
.end method

.method private createOrUpdateAnimatorListener()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/V6PreviewPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    .line 376
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->updateParameters()V

    goto :goto_0
.end method

.method private doViewAnimation(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eq v0, p2, :cond_0

    .line 111
    if-eqz p2, :cond_3

    .line 112
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    if-ne p1, v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->show()V

    .line 109
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 110
    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    if-ne p1, v0, :cond_4

    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->hide()V

    goto :goto_1

    .line 120
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private getChildY(Landroid/view/View;)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 422
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 423
    .local v2, "y":I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 424
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_0

    if-eq v0, p0, :cond_0

    move-object v1, v0

    .line 425
    check-cast v1, Landroid/view/View;

    .line 426
    .local v1, "viewParent":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 427
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 430
    .end local v1    # "viewParent":Landroid/view/View;
    :cond_0
    return v2
.end method

.method private getCurrentPopupShownView()Landroid/view/View;
    .locals 2

    .prologue
    .line 315
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 316
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private hasCollapsedPopup()Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->getCurrentPopup()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/StereoButton;->isPopupVisible()Z

    move-result v0

    .line 417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hidePopupView()V
    .locals 3

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->getCurrentPopupShownView()Landroid/view/View;

    move-result-object v0

    .line 590
    .local v0, "popup":Landroid/view/View;
    instance-of v1, v0, Lcom/android/camera/ui/StereoPopup;

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/StereoButton;->dismissPopup(Z)Z

    .line 588
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    sget-object v2, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->COLLAPSE:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/V6PreviewPage$AnimationType;)V

    .line 594
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mCollapseInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 595
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private initAnimation(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;
    .param p2, "slideUp"    # Z

    .prologue
    .line 276
    invoke-virtual {p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 278
    .local v0, "animation":Landroid/view/animation/Animation;
    if-nez v0, :cond_0

    .line 279
    if-eqz p2, :cond_2

    .line 280
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    const v3, 0x7f050013

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 285
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 286
    new-instance v1, Lcom/android/camera/ui/SimpleAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/camera/ui/SimpleAnimationListener;-><init>(Landroid/view/View;Z)V

    .line 287
    .local v1, "animationListener":Lcom/android/camera/ui/SimpleAnimationListener;
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 290
    .end local v1    # "animationListener":Lcom/android/camera/ui/SimpleAnimationListener;
    :cond_1
    return-object v0

    .line 282
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    const v3, 0x7f050012

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0
.end method

.method private setupOnLayoutChangeListener()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 362
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 363
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 364
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModeExitView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 365
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 360
    return-void
.end method

.method private shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z
    .locals 6
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 252
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_0

    return v5

    .line 254
    :cond_0
    const/4 v2, 0x0

    .line 255
    .local v2, "visiblePopup":Landroid/view/View;
    const/4 v0, 0x0

    .end local v2    # "visiblePopup":Landroid/view/View;
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 256
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 257
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 258
    .local v2, "visiblePopup":Landroid/view/View;
    if-eq v2, p1, :cond_1

    .line 259
    return v5

    .line 255
    .end local v2    # "visiblePopup":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_2
    if-nez v2, :cond_3

    .line 265
    return v4

    .line 266
    :cond_3
    if-eqz p1, :cond_5

    if-ne p1, v2, :cond_5

    .line 268
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/PopupManager;->getLastOnOtherPopupShowedListener()Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;

    move-result-object v1

    .line 269
    .local v1, "lastListener":Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
    if-nez v1, :cond_4

    move v3, v4

    :goto_1
    return v3

    :cond_4
    move v3, v5

    goto :goto_1

    .line 272
    .end local v1    # "lastListener":Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
    :cond_5
    return v5
.end method

.method private updatePopupIndicatorImageResource()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updatePopupVisibility(ZZZ)V
    .locals 4
    .param p1, "isExitViewVisible"    # Z
    .param p2, "isPopupVisible"    # Z
    .param p3, "isIndicatorVisible"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 407
    if-eqz p1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->show()V

    .line 412
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    if-eqz p3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->hide()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 412
    goto :goto_1

    :cond_2
    move v1, v2

    .line 413
    goto :goto_2
.end method

.method private updateRotateLayout(ILandroid/view/View;)V
    .locals 6
    .param p1, "degree"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    const/16 v3, 0xa

    const/16 v2, 0x9

    const/4 v1, -0x1

    .line 556
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 557
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 558
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 559
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 560
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 561
    sparse-switch p1, :sswitch_data_0

    .line 575
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    return-void

    .line 563
    :sswitch_0
    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 566
    :sswitch_1
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 569
    :sswitch_2
    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 572
    :sswitch_3
    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 561
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V
    .locals 2
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    const/4 v1, 0x0

    .line 305
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6PreviewPage;->shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z

    move-result v0

    .line 306
    .local v0, "animation":Z
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->clearAnimation()V

    .line 308
    invoke-direct {p0, p1, v1}, Lcom/android/camera/ui/V6PreviewPage;->initAnimation(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 304
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss(Z)V

    goto :goto_0
.end method

.method public inflatePanoramaView()V
    .locals 3

    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPanoramaViewRoot:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    .line 343
    const-string/jumbo v2, "layout_inflater"

    .line 342
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 344
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040016

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 345
    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPanoramaViewRoot:Landroid/widget/RelativeLayout;

    .line 340
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method public isPopupShown()Z
    .locals 1

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->getCurrentPopupShownView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewPageVisible()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    return v0
.end method

.method public onCameraOpen()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 129
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCameraOpen()V

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAsdIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    .line 134
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupIndicatorImageResource()V

    .line 128
    return-void
.end method

.method public onCapture()V
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPreviewCover:Landroid/view/View;

    const v1, 0x7f0c000a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPreviewCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mHidePreviewCover:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 149
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mHidePreviewCover:Ljava/lang/Runnable;

    const-wide/16 v2, 0x78

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/camera/ui/V6PreviewPage;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 357
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    .line 356
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 89
    const v0, 0x7f09007a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParentLayout:Landroid/view/ViewGroup;

    .line 90
    const v0, 0x7f09007b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    .line 91
    const v0, 0x7f09007d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TopPopupParent;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mTopPopupParent:Lcom/android/camera/ui/TopPopupParent;

    .line 92
    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6ModeExitView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    .line 93
    const v0, 0x7f09006c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;

    .line 94
    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningMessageLayout:Landroid/widget/LinearLayout;

    .line 96
    const v0, 0x7f09006d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    .line 97
    const v0, 0x7f09006e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    .line 98
    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAsdIndicatorView:Landroid/widget/ImageView;

    .line 99
    const v0, 0x7f09003f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationParent:Landroid/widget/RelativeLayout;

    .line 100
    const v0, 0x7f090040

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationArea:Lcom/android/camera/ui/RotateLayout;

    .line 101
    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/OrientationIndicator;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mLyingOriFlag:Lcom/android/camera/ui/OrientationIndicator;

    .line 102
    const v0, 0x7f09007c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/StereoButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mStereoButton:Lcom/android/camera/ui/StereoButton;

    .line 103
    const v0, 0x7f090079

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPreviewCover:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->setupOnLayoutChangeListener()V

    .line 87
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onPause()V

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mHidePreviewCover:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPreviewCover:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPreviewCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    return-void
.end method

.method public onPopupChange()V
    .locals 2

    .prologue
    .line 329
    const-string/jumbo v0, "V6PreviewPage"

    const-string/jumbo v1, "onPopupChange"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hasCollapsedPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    return-void

    .line 336
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 337
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 551
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;->setOrientation(IZ)V

    .line 552
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationArea:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6PreviewPage;->updateRotateLayout(ILandroid/view/View;)V

    .line 550
    return-void
.end method

.method public setPopupVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    if-ne v0, p1, :cond_0

    .line 204
    return-void

    .line 206
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    .line 207
    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupIndicator()V

    .line 202
    return-void
.end method

.method public showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V
    .locals 2
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    const/4 v1, 0x0

    .line 294
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6PreviewPage;->shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z

    move-result v0

    .line 295
    .local v0, "animation":Z
    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show(Z)V

    .line 297
    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->clearAnimation()V

    .line 298
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/camera/ui/V6PreviewPage;->initAnimation(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 293
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show(Z)V

    goto :goto_0
.end method

.method public showPopupWithoutExitView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hasCollapsedPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iput-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 247
    invoke-direct {p0, v1, v2, v1}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    .line 244
    :cond_0
    return-void
.end method

.method public simplifyPopup(ZZ)V
    .locals 5
    .param p1, "simplify"    # Z
    .param p2, "animation"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 217
    const-string/jumbo v0, "V6PreviewPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simplifyPopup: simplify="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",animation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 219
    return-void

    .line 223
    :cond_0
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hasCollapsedPopup()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    iput-boolean v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 225
    if-eqz p2, :cond_2

    .line 226
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hidePopupView()V

    .line 216
    :cond_1
    :goto_0
    return-void

    .line 228
    :cond_2
    invoke-direct {p0, v3, v3, v4}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    goto :goto_0

    .line 230
    :cond_3
    if-nez p1, :cond_1

    .line 231
    iput-boolean v4, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 232
    if-eqz p2, :cond_5

    .line 233
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->getAnimationType()Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->EXPAND:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    if-eq v0, v1, :cond_1

    .line 234
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    sget-object v1, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->EXPAND:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/V6PreviewPage$AnimationType;)V

    .line 235
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mExpandInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 236
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0

    .line 239
    :cond_5
    invoke-direct {p0, v4, v4, v3}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    goto :goto_0
.end method

.method public switchWithAnimation(Z)V
    .locals 5
    .param p1, "switchToPreviewPage"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    const-string/jumbo v0, "Camera10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchWithAnimation: toPreviewPage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    const-string/jumbo v2, ",popupVisible="

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    iget-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    const-string/jumbo v2, ",groupVisible="

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    iget-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    if-eqz p1, :cond_2

    .line 164
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 165
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationArea:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 166
    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    if-eqz v0, :cond_0

    .line 167
    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 176
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mStereoButton:Lcom/android/camera/ui/StereoButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/StereoButton;->updateVisible()V

    .line 186
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mTopPopupParent:Lcom/android/camera/ui/TopPopupParent;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TopPopupParent;->onPreviewPageShown(Z)V

    .line 187
    iput-boolean p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    .line 160
    return-void

    .line 171
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hasCollapsedPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 179
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 180
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAsdIndicatorView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 182
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 183
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationArea:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 184
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mStereoButton:Lcom/android/camera/ui/StereoButton;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method public updateOrientationLayout(Z)V
    .locals 4
    .param p1, "topMargin"    # Z

    .prologue
    const/4 v2, 0x0

    .line 579
    invoke-static {}, Lcom/android/camera/Device;->isOrientationIndicatorEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 581
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eq p1, v1, :cond_1

    .line 582
    if-eqz p1, :cond_3

    .line 583
    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080075

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 582
    :goto_1
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 584
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 581
    goto :goto_0

    :cond_3
    move v1, v2

    .line 583
    goto :goto_1
.end method

.method public updatePopupIndicator()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hasCollapsedPopup()Z

    move-result v0

    .line 193
    .local v0, "hasSettingPopup":Z
    const-string/jumbo v2, "V6PreviewPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePopupIndicator: groupVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",popupVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 194
    iget-boolean v4, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 194
    const-string/jumbo v4, ",hasSettingPopup="

    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    if-eqz v2, :cond_1

    .line 196
    iget-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    iget-boolean v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    iget-boolean v4, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    if-nez v4, :cond_0

    .end local v0    # "hasSettingPopup":Z
    :goto_0
    invoke-direct {p0, v2, v3, v0}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    .line 191
    :goto_1
    return-void

    .restart local v0    # "hasSettingPopup":Z
    :cond_0
    move v0, v1

    .line 196
    goto :goto_0

    .line 198
    :cond_1
    invoke-direct {p0, v1, v1, v1}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    goto :goto_1
.end method
