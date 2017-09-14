.class public Lcom/android/camera/ui/AnimationImageView;
.super Lcom/android/camera/ui/RotateImageView;
.source "AnimationImageView.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;
.implements Lcom/android/camera/ui/AnimateView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;
    }
.end annotation


# instance fields
.field private mIsEnable:Z

.field protected mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/AnimationImageView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/AnimationImageView;->mIsEnable:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method private initAnimation(Z)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz p1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/camera/ui/AnimationImageView;->mContext:Landroid/content/Context;

    const v2, 0x7f05000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 87
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;-><init>(Lcom/android/camera/ui/AnimationImageView;Lcom/android/camera/ui/AnimationImageView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 92
    :goto_0
    return-object v0

    .line 89
    .local v0, "animation":Landroid/view/animation/Animation;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/AnimationImageView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f050000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 90
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;-><init>(Lcom/android/camera/ui/AnimationImageView;Lcom/android/camera/ui/AnimationImageView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/camera/ui/AnimationImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/AnimationImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setEnabled(Z)V

    .line 60
    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/ui/AnimationImageView;->mIsEnable:Z

    .line 56
    return-void
.end method

.method public hide(Z)V
    .locals 2
    .param p1, "animation"    # Z

    .prologue
    const/4 v1, 0x0

    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/camera/ui/AnimationImageView;->clearAnimation()V

    .line 66
    invoke-direct {p0, v1}, Lcom/android/camera/ui/AnimationImageView;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AnimationImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 67
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/AnimationImageView;->setEnabled(Z)V

    .line 63
    :goto_0
    return-void

    .line 69
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/ui/AnimationImageView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 46
    return-void
.end method

.method public show(Z)V
    .locals 2
    .param p1, "animation"    # Z

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/camera/ui/AnimationImageView;->clearAnimation()V

    .line 77
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/AnimationImageView;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AnimationImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/AnimationImageView;->setEnabled(Z)V

    .line 73
    :cond_0
    return-void
.end method
