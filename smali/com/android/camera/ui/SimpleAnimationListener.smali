.class public Lcom/android/camera/ui/SimpleAnimationListener;
.super Ljava/lang/Object;
.source "SimpleAnimationListener.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private mShowAnimation:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/camera/ui/SimpleAnimationListener;->mView:Landroid/view/View;

    .line 13
    iput-boolean p2, p0, Lcom/android/camera/ui/SimpleAnimationListener;->mShowAnimation:Z

    .line 11
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/camera/ui/SimpleAnimationListener;->mShowAnimation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SimpleAnimationListener;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/camera/ui/SimpleAnimationListener;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 39
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/camera/ui/SimpleAnimationListener;->mShowAnimation:Z

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/android/camera/ui/SimpleAnimationListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :cond_0
    return-void
.end method
