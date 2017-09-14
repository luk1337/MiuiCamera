.class Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ScreenView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/ScreenView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/ScreenView;

    .prologue
    .line 1666
    iput-object p1, p0, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/ScreenView;Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/ScreenView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;-><init>(Lcom/android/camera/ui/ScreenView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1682
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 1684
    .local v0, "scale":F
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-static {v1}, Lcom/android/camera/ui/ScreenView;->-get2(Lcom/android/camera/ui/ScreenView;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1685
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v2

    long-to-float v1, v2

    const/high16 v2, 0x43480000    # 200.0f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 1686
    const v1, 0x3f733333    # 0.95f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 1688
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;->this$0:Lcom/android/camera/ui/ScreenView;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1691
    :cond_1
    const v1, 0x3f4ccccd    # 0.8f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 1692
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ScreenView;->onPinchIn(Landroid/view/ScaleGestureDetector;)V

    .line 1693
    return v5

    .line 1687
    :cond_2
    const v1, 0x3f86bca2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    goto :goto_0

    .line 1696
    :cond_3
    const v1, 0x3f99999a    # 1.2f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    .line 1697
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ScreenView;->onPinchOut(Landroid/view/ScaleGestureDetector;)V

    .line 1698
    return v5

    .line 1701
    :cond_4
    return v4
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v0, 0x0

    .line 1674
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-static {v1}, Lcom/android/camera/ui/ScreenView;->-get2(Lcom/android/camera/ui/ScreenView;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenView;->finishCurrentGesture()V

    .line 1677
    return-void
.end method
