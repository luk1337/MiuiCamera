.class public Lcom/android/camera/ui/BottomControlUpperPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "BottomControlUpperPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private mAnimationIn:Landroid/view/animation/Animation;

.field private mAnimationInCallback:Ljava/lang/Runnable;

.field private mAnimationOut:Landroid/view/animation/Animation;

.field private mAnimationOutCallback:Ljava/lang/Runnable;

.field public mCameraPicker:Lcom/android/camera/ui/V6CameraPicker;

.field private mControlVisible:Z

.field public mEffectButton:Lcom/android/camera/ui/EffectButton;

.field public mModeButton:Lcom/android/camera/ui/ModeButton;

.field public mSkinBeautyButton:Lcom/android/camera/ui/SkinBeautyButton;

.field public mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/BottomControlUpperPanel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mControlVisible:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 74
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateIn(Ljava/lang/Runnable;I)V

    .line 73
    return-void
.end method

.method public animateIn(Ljava/lang/Runnable;I)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "duration"    # I

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 83
    return-void
.end method

.method public animateIn(Ljava/lang/Runnable;IZ)V
    .locals 5
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "duration"    # I
    .param p3, "changeVisibility"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 95
    const-string/jumbo v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "V6TopControl animateIn getVisibility()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlUpperPanel;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 99
    iput-object v3, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlUpperPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mControlVisible:Z

    if-eqz v0, :cond_1

    .line 94
    :goto_0
    return-void

    .line 102
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 103
    if-eqz p3, :cond_2

    .line 104
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/BottomControlUpperPanel;->setVisibility(I)V

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlUpperPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 108
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlUpperPanel;->clearAnimation()V

    .line 109
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->startAnimation(Landroid/view/animation/Animation;)V

    .line 117
    :cond_3
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mControlVisible:Z

    goto :goto_0

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 114
    iput-object v3, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    goto :goto_1
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 79
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateOut(Ljava/lang/Runnable;I)V

    .line 78
    return-void
.end method

.method public animateOut(Ljava/lang/Runnable;I)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "duration"    # I

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 88
    return-void
.end method

.method public animateOut(Ljava/lang/Runnable;IZ)V
    .locals 5
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "duration"    # I
    .param p3, "changeVisibility"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 124
    const-string/jumbo v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "V6TopControl animateOut getVisibility()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlUpperPanel;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iput-boolean v4, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mControlVisible:Z

    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 129
    iput-object v3, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlUpperPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 133
    if-eqz p3, :cond_2

    .line 134
    new-instance v0, Lcom/android/camera/ui/BottomControlUpperPanel$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/BottomControlUpperPanel$1;-><init>(Lcom/android/camera/ui/BottomControlUpperPanel;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 149
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlUpperPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 150
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlUpperPanel;->clearAnimation()V

    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 152
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->startAnimation(Landroid/view/animation/Animation;)V

    .line 123
    :cond_1
    :goto_1
    return-void

    .line 146
    :cond_2
    iput-object p1, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_0

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 156
    iput-object v3, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_1
.end method

.method public getEffectButton()Lcom/android/camera/ui/EffectButton;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mEffectButton:Lcom/android/camera/ui/EffectButton;

    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 172
    iput-object v1, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 177
    iput-object v1, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 183
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 163
    return-void
.end method

.method public onCameraOpen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCameraOpen()V

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isScanQRCodeIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->setVisibility(I)V

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlUpperPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mControlVisible:Z

    .line 55
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->setVisibility(I)V

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/BottomControlUpperPanel;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 65
    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 36
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 37
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6CameraPicker;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mCameraPicker:Lcom/android/camera/ui/V6CameraPicker;

    .line 38
    const v0, 0x7f090068

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SkinBeautyButton;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mSkinBeautyButton:Lcom/android/camera/ui/SkinBeautyButton;

    .line 39
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ModeButton;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mModeButton:Lcom/android/camera/ui/ModeButton;

    .line 40
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/EffectButton;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mEffectButton:Lcom/android/camera/ui/EffectButton;

    .line 41
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6VideoCaptureButton;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;

    .line 43
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 48
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 35
    return-void
.end method
