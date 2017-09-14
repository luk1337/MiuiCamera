.class public Lcom/android/camera/ui/V6BottomAnimationImageView;
.super Lcom/android/camera/ui/RotateImageView;
.source "V6BottomAnimationImageView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mAnimationIn:Landroid/view/animation/Animation;

.field private mAnimationInCallback:Ljava/lang/Runnable;

.field private mAnimationOut:Landroid/view/animation/Animation;

.field private mAnimationOutCallback:Ljava/lang/Runnable;

.field private mDoingAnimationIn:Z

.field private mDoingAnimationOut:Z

.field protected mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;IZ)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "duration"    # I
    .param p3, "changeVisibility"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 71
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 75
    if-eqz p3, :cond_1

    .line 76
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 80
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->clearAnimation()V

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mDoingAnimationIn:Z

    .line 68
    :cond_2
    :goto_0
    return-void

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 87
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public animateOut(Ljava/lang/Runnable;IZ)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "duration"    # I
    .param p3, "changeVisibility"    # Z

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 97
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 100
    :cond_0
    if-eqz p3, :cond_2

    .line 101
    new-instance v0, Lcom/android/camera/ui/V6BottomAnimationImageView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/V6BottomAnimationImageView$1;-><init>(Lcom/android/camera/ui/V6BottomAnimationImageView;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 115
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->clearAnimation()V

    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mDoingAnimationOut:Z

    .line 94
    :cond_1
    :goto_1
    return-void

    .line 111
    :cond_2
    iput-object p1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_0

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 122
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_1
.end method

.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setEnabled(Z)V

    .line 162
    return-void
.end method

.method public isInVisibleForUser()Z
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mDoingAnimationOut:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isVisibleWithAnimationDone()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mDoingAnimationIn:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 176
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 184
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mDoingAnimationIn:Z

    .line 185
    iput-boolean v2, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mDoingAnimationOut:Z

    .line 172
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 181
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 197
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 167
    return-void
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 32
    invoke-super {p0}, Lcom/android/camera/ui/RotateImageView;->onFinishInflate()V

    .line 33
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 39
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 31
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->clearAnimation()V

    .line 141
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 157
    return-void
.end method
