.class public Lcom/android/camera/ui/TopControlPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "TopControlPanel.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;


# instance fields
.field public mBeautyButton:Lcom/android/camera/ui/SkinBeautyButton;

.field private mControlVisible:Z

.field public mFlashButton:Lcom/android/camera/ui/FlashButton;

.field public mHdrButton:Lcom/android/camera/ui/HdrButton;

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field public mPeakButton:Lcom/android/camera/ui/PeakButton;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/TopControlPanel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/TopControlPanel;->mControlVisible:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method private hideSubViewExcept(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/16 v3, 0x8

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/TopControlPanel;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopControlPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 141
    .local v1, "v":Landroid/view/View;
    if-eq v1, p1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 142
    instance-of v2, v1, Lcom/android/camera/ui/AnimateView;

    if-eqz v2, :cond_1

    .line 143
    check-cast v1, Lcom/android/camera/ui/AnimateView;

    .end local v1    # "v":Landroid/view/View;
    invoke-interface {v1, p2}, Lcom/android/camera/ui/AnimateView;->hide(Z)V

    .line 139
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .restart local v1    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 137
    .end local v1    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/android/camera/ui/TopControlPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/TopControlPanel;->mControlVisible:Z

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/TopControlPanel;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TopControlPanel;->setVisibility(I)V

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/TopControlPanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 104
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/TopControlPanel;->mControlVisible:Z

    goto :goto_0
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 112
    iput-boolean v1, p0, Lcom/android/camera/ui/TopControlPanel;->mControlVisible:Z

    .line 113
    invoke-virtual {p0}, Lcom/android/camera/ui/TopControlPanel;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 114
    new-instance v0, Lcom/android/camera/ui/TopControlPanel$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/TopControlPanel$1;-><init>(Lcom/android/camera/ui/TopControlPanel;Ljava/lang/Runnable;)V

    .line 126
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/android/camera/ui/TopControlPanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 127
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 126
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 111
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f090067

    const v2, 0x7f090066

    const/4 v1, 0x1

    .line 70
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    move-object v0, p4

    .line 71
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    if-ne p2, v2, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mFlashButton:Lcom/android/camera/ui/FlashButton;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/TopControlPanel;->hideSubViewExcept(Landroid/view/View;Z)V

    .line 90
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_5

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 74
    :cond_1
    if-ne p2, v3, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/TopControlPanel;->hideSubViewExcept(Landroid/view/View;Z)V

    goto :goto_0

    .line 78
    :cond_2
    if-ne p2, v2, :cond_4

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/HdrButton;->couldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/HdrButton;->overrideSettings(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HdrButton;->show(Z)V

    goto :goto_0

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mPeakButton:Lcom/android/camera/ui/PeakButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/PeakButton;->couldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mPeakButton:Lcom/android/camera/ui/PeakButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PeakButton;->show(Z)V

    goto :goto_0

    .line 85
    :cond_4
    if-ne p2, v3, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mFlashButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FlashButton;->show(Z)V

    goto :goto_0

    .line 94
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public getFlashButton()Lcom/android/camera/ui/FlashButton;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mFlashButton:Lcom/android/camera/ui/FlashButton;

    return-object v0
.end method

.method public getHdrButton()Lcom/android/camera/ui/HdrButton;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    return-object v0
.end method

.method public getPeakButton()Lcom/android/camera/ui/PeakButton;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mPeakButton:Lcom/android/camera/ui/PeakButton;

    return-object v0
.end method

.method public getSkinBeautyButton()Lcom/android/camera/ui/SkinBeautyButton;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mBeautyButton:Lcom/android/camera/ui/SkinBeautyButton;

    return-object v0
.end method

.method public onCameraOpen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCameraOpen()V

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isScanQRCodeIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopControlPanel;->setVisibility(I)V

    .line 64
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/TopControlPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/ui/TopControlPanel;->mControlVisible:Z

    .line 54
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopControlPanel;->setVisibility(I)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TopControlPanel;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 64
    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 26
    const v0, 0x7f090066

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FlashButton;

    iput-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mFlashButton:Lcom/android/camera/ui/FlashButton;

    .line 27
    const v0, 0x7f090067

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HdrButton;

    iput-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    .line 28
    const v0, 0x7f090068

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SkinBeautyButton;

    iput-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mBeautyButton:Lcom/android/camera/ui/SkinBeautyButton;

    .line 29
    const v0, 0x7f090069

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PeakButton;

    iput-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mPeakButton:Lcom/android/camera/ui/PeakButton;

    .line 25
    return-void
.end method

.method public onShowModeSettings()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mFlashButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/FlashButton;->dismissPopup()Z

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/HdrButton;->dismissPopup()Z

    .line 132
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 34
    invoke-super {p0, p0}, Lcom/android/camera/ui/V6RelativeLayout;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 35
    iput-object p1, p0, Lcom/android/camera/ui/TopControlPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 33
    return-void
.end method
