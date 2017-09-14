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

    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControlVisible:Z

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 98
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->setBackgroundVisible(Z)V

    .line 101
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

    .line 102
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControlVisible:Z

    goto :goto_0
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 110
    iput-boolean v1, p0, Lcom/android/camera/ui/BottomControlPanel;->mControlVisible:Z

    .line 111
    iget-object v1, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 112
    new-instance v0, Lcom/android/camera/ui/BottomControlPanel$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/BottomControlPanel$1;-><init>(Lcom/android/camera/ui/BottomControlPanel;Ljava/lang/Runnable;)V

    .line 125
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

    .line 126
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 125
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 109
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public getLowerGroup()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mLowerControlGroup:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mIntentControlPanel:Lcom/android/camera/ui/CaptureControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureControlPanel;->getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    return-object v0
.end method

.method public getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 77
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
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/camera/ui/BottomControlUpperPanel;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mUpperPanel:Lcom/android/camera/ui/BottomControlUpperPanel;

    .line 36
    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/camera/ui/BottomControlLowerPanel;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mLowerPanel:Lcom/android/camera/ui/BottomControlLowerPanel;

    .line 38
    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    .line 37
    check-cast v0, Lcom/android/camera/ui/CaptureControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mIntentControlPanel:Lcom/android/camera/ui/CaptureControlPanel;

    .line 40
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlPanel;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mBackground:Landroid/view/View;

    .line 41
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    .line 42
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mLowerControlGroup:Landroid/widget/RelativeLayout;

    .line 29
    return-void
.end method

.method public setBackgroundVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 64
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string/jumbo v2, "pref_camera_stereo_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    iget-object v1, p0, Lcom/android/camera/ui/BottomControlPanel;->mBackground:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v1, p0, Lcom/android/camera/ui/BottomControlPanel;->mBackground:Landroid/view/View;

    if-eqz p1, :cond_1

    const v0, 0x7f0c0005

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0c0003

    goto :goto_1

    .line 71
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/BottomControlPanel;->mBackground:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method
