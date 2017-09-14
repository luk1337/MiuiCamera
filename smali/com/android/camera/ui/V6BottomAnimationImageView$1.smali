.class Lcom/android/camera/ui/V6BottomAnimationImageView$1;
.super Ljava/lang/Object;
.source "V6BottomAnimationImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/V6BottomAnimationImageView;->animateOut(Ljava/lang/Runnable;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6BottomAnimationImageView;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6BottomAnimationImageView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/V6BottomAnimationImageView;
    .param p2, "val$callback"    # Ljava/lang/Runnable;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView$1;->this$0:Lcom/android/camera/ui/V6BottomAnimationImageView;

    iput-object p2, p0, Lcom/android/camera/ui/V6BottomAnimationImageView$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView$1;->this$0:Lcom/android/camera/ui/V6BottomAnimationImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    .line 103
    return-void
.end method
