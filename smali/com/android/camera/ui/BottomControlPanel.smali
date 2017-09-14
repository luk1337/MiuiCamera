.class public Lcom/android/camera/ui/BottomControlPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "BottomControlPanel.java"


# instance fields
.field private mBackground:Landroid/view/View;

.field private mControl:Landroid/widget/RelativeLayout;

.field private mControlVisible:Z

.field public mIntentControlPanel:Lcom/android/camera/ui/CaptureControlPanel;

.field private mLowerControlGroup:Landroid/widget/RelativeLayout;

.field public mLowerPanel:Lcom/android/camera/ui/BottomControlLowerPanel;

.field public mUpperPanel:Lcom/android/camera/ui/BottomControlUpperPanel;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/BottomControlPanel;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/BottomControlPanel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControlVisible:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControlVisible:Z

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 88
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->setBackgroundVisible(Z)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 92
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControlVisible:Z

    goto :goto_0
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 100
    iput-boolean v1, p0, Lcom/android/camera/ui/BottomControlPanel;->mControlVisible:Z

    .line 101
    iget-object v1, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 102
    new-instance v0, Lcom/android/camera/ui/BottomControlPanel$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/BottomControlPanel$1;-><init>(Lcom/android/camera/ui/BottomControlPanel;Ljava/lang/Runnable;)V

    .line 115
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 116
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 115
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 99
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public getLowerGroup()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mLowerControlGroup:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mIntentControlPanel:Lcom/android/camera/ui/CaptureControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureControlPanel;->getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    return-object v0
.end method

.method public getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mIntentControlPanel:Lcom/android/camera/ui/CaptureControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureControlPanel;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    return-object v0
.end method

.method public onCameraOpen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCameraOpen()V

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->setBackgroundVisible(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControlVisible:Z

    .line 46
    return-void

    :cond_0
    move v0, v1

    .line 50
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 34
    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/camera/ui/BottomControlUpperPanel;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mUpperPanel:Lcom/android/camera/ui/BottomControlUpperPanel;

    .line 36
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/camera/ui/BottomControlLowerPanel;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mLowerPanel:Lcom/android/camera/ui/BottomControlLowerPanel;

    .line 38
    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    .line 37
    check-cast v0, Lcom/android/camera/ui/CaptureControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mIntentControlPanel:Lcom/android/camera/ui/CaptureControlPanel;

    .line 40
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlPanel;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mBackground:Landroid/view/View;

    .line 41
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    .line 42
    const v0, 0x7f0c0019

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mLowerControlGroup:Landroid/widget/RelativeLayout;

    .line 29
    return-void
.end method

.method public setBackgroundVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 62
    iget-object v1, p0, Lcom/android/camera/ui/BottomControlPanel;->mBackground:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    :cond_1
    return-void

    .line 62
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
