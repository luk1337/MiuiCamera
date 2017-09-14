.class Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;
.super Lcom/android/camera/ui/SimpleAnimationListener;
.source "AnimationImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/AnimationImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationImageViewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/AnimationImageView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/AnimationImageView;Lcom/android/camera/ui/AnimationImageView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/AnimationImageView;
    .param p2, "view"    # Lcom/android/camera/ui/AnimationImageView;
    .param p3, "show"    # Z

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;->this$0:Lcom/android/camera/ui/AnimationImageView;

    .line 98
    invoke-direct {p0, p2, p3}, Lcom/android/camera/ui/SimpleAnimationListener;-><init>(Landroid/view/View;Z)V

    .line 97
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/camera/ui/SimpleAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;->this$0:Lcom/android/camera/ui/AnimationImageView;

    iget-object v1, p0, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;->this$0:Lcom/android/camera/ui/AnimationImageView;

    invoke-static {v1}, Lcom/android/camera/ui/AnimationImageView;->-get0(Lcom/android/camera/ui/AnimationImageView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AnimationImageView;->setEnabled(Z)V

    .line 108
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/android/camera/ui/SimpleAnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;->this$0:Lcom/android/camera/ui/AnimationImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AnimationImageView;->setEnabled(Z)V

    .line 102
    return-void
.end method
