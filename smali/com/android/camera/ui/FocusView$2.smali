.class Lcom/android/camera/ui/FocusView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FocusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FocusView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 765
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->-get16(Lcom/android/camera/ui/FocusView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 766
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->-get10(Lcom/android/camera/ui/FocusView;)I

    move-result v0

    if-nez v0, :cond_2

    .line 767
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isDualModule()Z

    move-result v0

    .line 766
    if-eqz v0, :cond_2

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get19(Lcom/android/camera/ui/FocusView;)[I

    move-result-object v2

    aget v2, v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get19(Lcom/android/camera/ui/FocusView;)[I

    move-result-object v3

    aget v3, v3, v6

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get7(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    int-to-float v3, v3

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/ui/FocusView;->-wrap0(Lcom/android/camera/ui/FocusView;FFF)Z

    move-result v0

    .line 766
    if-eqz v0, :cond_2

    .line 769
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->-get18(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/MessageDispacher;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->-get6(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 770
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->-get18(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/MessageDispacher;

    move-result-object v0

    .line 771
    const/4 v1, 0x2

    .line 772
    const v2, 0x7f090088

    .line 773
    const/4 v3, 0x3

    move-object v5, v4

    .line 770
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 776
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "capture_times_focus_view"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0, v6}, Lcom/android/camera/ui/FocusView;->-set3(Lcom/android/camera/ui/FocusView;Z)Z

    .line 783
    :goto_0
    return v6

    .line 779
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0, v6}, Lcom/android/camera/ui/FocusView;->-set10(Lcom/android/camera/ui/FocusView;Z)Z

    .line 780
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->-wrap7(Lcom/android/camera/ui/FocusView;)V

    .line 781
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->-wrap10(Lcom/android/camera/ui/FocusView;)V

    goto :goto_0

    .line 785
    :cond_3
    return v3
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 791
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get15(Lcom/android/camera/ui/FocusView;)Z

    move-result v2

    if-nez v2, :cond_0

    return v4

    .line 792
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get5(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/Camera;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6GestureRecognizer;->getGestureOrientation()I

    move-result v0

    .line 793
    .local v0, "getstureOri":I
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    .line 794
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get20(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get20(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_3

    .line 795
    :cond_1
    const/16 v2, 0x64

    if-ne v0, v2, :cond_2

    .line 796
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get20(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get20(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_3

    :cond_2
    return v4

    .line 798
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get20(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 812
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-wrap3(Lcom/android/camera/ui/FocusView;)I

    move-result v1

    .line 814
    .local v1, "targetItem":I
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get9(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 815
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get10(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    if-eq v2, v6, :cond_8

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get9(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 816
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get9(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get6(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    if-lt v2, v3, :cond_8

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get6(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 817
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-wrap11(Lcom/android/camera/ui/FocusView;)V

    .line 818
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get9(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/FocusView;->-set11(Lcom/android/camera/ui/FocusView;I)I

    .line 819
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2, v6}, Lcom/android/camera/ui/FocusView;->-set6(Lcom/android/camera/ui/FocusView;I)I

    .line 826
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2, v1, v4}, Lcom/android/camera/ui/FocusView;->-wrap9(Lcom/android/camera/ui/FocusView;IZ)V

    .line 828
    :cond_5
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get10(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get10(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    if-ne v2, v5, :cond_7

    .line 829
    :cond_6
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2, v5}, Lcom/android/camera/ui/FocusView;->-set6(Lcom/android/camera/ui/FocusView;I)I

    .line 830
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-wrap4(Lcom/android/camera/ui/FocusView;)V

    .line 831
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 832
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get14(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 834
    :cond_7
    return v5

    .line 800
    .end local v1    # "targetItem":I
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get8(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/FocusView;->-set5(Lcom/android/camera/ui/FocusView;I)I

    goto/16 :goto_0

    .line 803
    :sswitch_1
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get8(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p3

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/FocusView;->-set5(Lcom/android/camera/ui/FocusView;I)I

    goto/16 :goto_0

    .line 806
    :sswitch_2
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get8(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/FocusView;->-set5(Lcom/android/camera/ui/FocusView;I)I

    goto/16 :goto_0

    .line 809
    :sswitch_3
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get8(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p3

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/FocusView;->-set5(Lcom/android/camera/ui/FocusView;I)I

    goto/16 :goto_0

    .line 820
    .restart local v1    # "targetItem":I
    :cond_8
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get10(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    if-eq v2, v7, :cond_4

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get9(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    if-le v1, v2, :cond_4

    .line 821
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get9(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get6(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get6(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 822
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-wrap11(Lcom/android/camera/ui/FocusView;)V

    .line 823
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get9(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/FocusView;->-set11(Lcom/android/camera/ui/FocusView;I)I

    .line 824
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2, v7}, Lcom/android/camera/ui/FocusView;->-set6(Lcom/android/camera/ui/FocusView;I)I

    goto/16 :goto_1

    .line 798
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
