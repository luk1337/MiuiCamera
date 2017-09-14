.class public Lcom/android/camera/ui/V6RecordingTimeView;
.super Landroid/widget/TextView;
.source "V6RecordingTimeView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mAnimationIn:Landroid/view/animation/Animation;

.field private mAnimationInCallback:Ljava/lang/Runnable;

.field private mAnimationOut:Landroid/view/animation/Animation;

.field private mAnimationOutCallback:Ljava/lang/Runnable;

.field private mPause:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
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

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 73
    iput-object v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 77
    if-eqz p3, :cond_1

    .line 78
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6RecordingTimeView;->setVisibility(I)V

    .line 81
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mPause:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 85
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->clearAnimation()V

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RecordingTimeView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 70
    :cond_3
    :goto_0
    return-void

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 92
    iput-object v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public animateOut(Ljava/lang/Runnable;IZ)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "duration"    # I
    .param p3, "changeVisibility"    # Z

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 102
    iput-object v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 105
    :cond_0
    if-eqz p3, :cond_3

    .line 106
    new-instance v0, Lcom/android/camera/ui/V6RecordingTimeView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/V6RecordingTimeView$1;-><init>(Lcom/android/camera/ui/V6RecordingTimeView;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 119
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mPause:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 121
    iput-object v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 125
    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->clearAnimation()V

    .line 126
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RecordingTimeView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 99
    :cond_2
    :goto_1
    return-void

    .line 116
    :cond_3
    iput-object p1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_0

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 131
    iput-object v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_1
.end method

.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 175
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 189
    iput-object v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 194
    iput-object v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 200
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 180
    return-void
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 31
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 32
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    .line 34
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 38
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 30
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mPause:Z

    .line 157
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 151
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RecordingTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->clearAnimation()V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mPause:Z

    .line 150
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 169
    return-void
.end method
