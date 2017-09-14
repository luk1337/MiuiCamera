.class public Lcom/android/camera/ui/CaptureControlPanel;
.super Landroid/widget/RelativeLayout;
.source "CaptureControlPanel.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

.field private mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mVisible:Z

    .line 26
    return-void
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 93
    return-void
.end method

.method public getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    return-object v0
.end method

.method public getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    return-object v0
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x7f0c0022

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    if-ne v0, p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 44
    const/4 v1, 0x0

    move-object v5, v4

    .line 43
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 52
    const/4 v1, 0x1

    move-object v5, v4

    .line 51
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 33
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CaptureControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6BottomAnimationImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    .line 34
    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CaptureControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6BottomAnimationImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 74
    invoke-virtual {p0}, Lcom/android/camera/ui/CaptureControlPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 75
    .local v0, "activity":Lcom/android/camera/ActivityBase;
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isVideoCaptureIntent()Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/ui/CaptureControlPanel;->mVisible:Z

    .line 76
    iget-boolean v1, p0, Lcom/android/camera/ui/CaptureControlPanel;->mVisible:Z

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/CaptureControlPanel;->setVisibility(I)V

    .line 78
    iget-object v1, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    .line 83
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    .line 73
    return-void

    .line 75
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/CaptureControlPanel;->setVisibility(I)V

    .line 81
    iget-object v1, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/camera/ui/CaptureControlPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 22
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mVisible:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setOrientation(IZ)V

    .line 109
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setOrientation(IZ)V

    .line 106
    :cond_0
    return-void
.end method
