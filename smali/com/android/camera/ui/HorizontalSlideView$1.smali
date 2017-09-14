.class Lcom/android/camera/ui/HorizontalSlideView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/HorizontalSlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/HorizontalSlideView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/HorizontalSlideView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/HorizontalSlideView;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-static {v0}, Lcom/android/camera/ui/HorizontalSlideView;->-get4(Lcom/android/camera/ui/HorizontalSlideView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 30
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/HorizontalSlideView;->-set0(Lcom/android/camera/ui/HorizontalSlideView;Z)Z

    .line 31
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    float-to-int v1, p3

    neg-int v1, v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/HorizontalSlideView;->-wrap0(Lcom/android/camera/ui/HorizontalSlideView;I)V

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-static {v0}, Lcom/android/camera/ui/HorizontalSlideView;->-get3(Lcom/android/camera/ui/HorizontalSlideView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-static {v1}, Lcom/android/camera/ui/HorizontalSlideView;->-get1(Lcom/android/camera/ui/HorizontalSlideView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    cmpg-float v0, p3, v2

    if-gez v0, :cond_0

    .line 43
    return v3

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-static {v0}, Lcom/android/camera/ui/HorizontalSlideView;->-get3(Lcom/android/camera/ui/HorizontalSlideView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-static {v1}, Lcom/android/camera/ui/HorizontalSlideView;->-get0(Lcom/android/camera/ui/HorizontalSlideView;)I

    move-result v1

    if-ne v0, v1, :cond_1

    cmpl-float v0, p3, v2

    if-lez v0, :cond_1

    .line 45
    return v3

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-static {v1}, Lcom/android/camera/ui/HorizontalSlideView;->-get3(Lcom/android/camera/ui/HorizontalSlideView;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p3

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/HorizontalSlideView;->-wrap2(Lcom/android/camera/ui/HorizontalSlideView;I)V

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-static {v2}, Lcom/android/camera/ui/HorizontalSlideView;->-get2(Lcom/android/camera/ui/HorizontalSlideView;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/HorizontalSlideView;->-wrap1(Lcom/android/camera/ui/HorizontalSlideView;I)V

    .line 37
    const/4 v0, 0x1

    return v0
.end method
