.class Lcom/android/camera/ui/ZoomButton$1;
.super Ljava/lang/Object;
.source "ZoomButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ZoomButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAnimated:Z

.field final synthetic this$0:Lcom/android/camera/ui/ZoomButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ZoomButton;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/ui/ZoomButton;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/camera/ui/ZoomButton$1;->this$0:Lcom/android/camera/ui/ZoomButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/ZoomButton$1;->mAnimated:Z

    .line 90
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 95
    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomButton$1;->mAnimated:Z

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton$1;->this$0:Lcom/android/camera/ui/ZoomButton;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomButton;->-get3(Lcom/android/camera/ui/ZoomButton;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 97
    iput-boolean v3, p0, Lcom/android/camera/ui/ZoomButton$1;->mAnimated:Z

    .line 106
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton$1;->this$0:Lcom/android/camera/ui/ZoomButton;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomButton;->-wrap0(Lcom/android/camera/ui/ZoomButton;)V

    .line 107
    return v2

    .line 99
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 100
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 101
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomButton$1;->mAnimated:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton$1;->this$0:Lcom/android/camera/ui/ZoomButton;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomButton;->-get4(Lcom/android/camera/ui/ZoomButton;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 103
    iput-boolean v2, p0, Lcom/android/camera/ui/ZoomButton$1;->mAnimated:Z

    goto :goto_0
.end method
