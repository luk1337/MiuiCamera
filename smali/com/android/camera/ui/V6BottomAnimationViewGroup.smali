.class public Lcom/android/camera/ui/V6BottomAnimationViewGroup;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6BottomAnimationViewGroup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private mAnimationIn:Landroid/view/animation/Animation;

.field private mAnimationInCallback:Ljava/lang/Runnable;

.field private mAnimationOut:Landroid/view/animation/Animation;

.field private mAnimationOutCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
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

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 79
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 83
    if-eqz p3, :cond_1

    .line 84
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->setVisibility(I)V

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 88
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->clearAnimation()V

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationIn:Landroid/view/animation/Animation;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 76
    :cond_2
    :goto_0
    return-void

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 94
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationInCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public animateOut(Ljava/lang/Runnable;IZ)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "duration"    # I
    .param p3, "changeVisibility"    # Z

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 104
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 107
    :cond_0
    if-eqz p3, :cond_2

    .line 108
    new-instance v0, Lcom/android/camera/ui/V6BottomAnimationViewGroup$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/V6BottomAnimationViewGroup$1;-><init>(Lcom/android/camera/ui/V6BottomAnimationViewGroup;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 121
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 122
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->clearAnimation()V

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOut:Landroid/view/animation/Animation;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 101
    :cond_1
    :goto_1
    return-void

    .line 118
    :cond_2
    iput-object p1, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_0

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 128
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationIn:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 143
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOut:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 148
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 154
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 134
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 28
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 30
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationIn:Landroid/view/animation/Animation;

    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 35
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOut:Landroid/view/animation/Animation;

    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 27
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onResume()V

    .line 65
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->clearAnimation()V

    .line 63
    return-void
.end method
