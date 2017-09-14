.class Lcom/android/camera/ui/V6EffectCropView$3;
.super Landroid/os/Handler;
.source "V6EffectCropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/V6EffectCropView;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6EffectCropView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6EffectCropView;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/V6EffectCropView;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, 0x258

    const-wide/16 v10, 0x1e

    .line 703
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {v3}, Lcom/android/camera/ui/V6EffectCropView;->-get4(Lcom/android/camera/ui/V6EffectCropView;)J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 704
    .local v4, "duration":J
    const/high16 v2, 0x3f800000    # 1.0f

    .line 705
    .local v2, "delta":F
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 702
    :goto_0
    return-void

    .line 707
    :pswitch_0
    cmp-long v3, v4, v12

    if-gez v3, :cond_0

    .line 708
    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {v3}, Lcom/android/camera/ui/V6EffectCropView;->-get8(Lcom/android/camera/ui/V6EffectCropView;)Landroid/view/animation/Interpolator;

    move-result-object v3

    long-to-float v6, v4

    iget-object v7, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {v7}, Lcom/android/camera/ui/V6EffectCropView;->-get5(Lcom/android/camera/ui/V6EffectCropView;)J

    move-result-wide v8

    long-to-float v7, v8

    div-float/2addr v6, v7

    invoke-interface {v3, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 710
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v10, v11}, Lcom/android/camera/ui/V6EffectCropView$3;->sendEmptyMessageDelayed(IJ)Z

    .line 714
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {v6}, Lcom/android/camera/ui/V6EffectCropView;->-get3(Lcom/android/camera/ui/V6EffectCropView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {v7}, Lcom/android/camera/ui/V6EffectCropView;->-get1(Lcom/android/camera/ui/V6EffectCropView;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v7, v7

    add-int/2addr v6, v7

    invoke-static {v3, v6}, Lcom/android/camera/ui/V6EffectCropView;->-set1(Lcom/android/camera/ui/V6EffectCropView;I)I

    .line 715
    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {v3}, Lcom/android/camera/ui/V6EffectCropView;->-wrap1(Lcom/android/camera/ui/V6EffectCropView;)V

    goto :goto_0

    .line 712
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {v3}, Lcom/android/camera/ui/V6EffectCropView;->-wrap0(Lcom/android/camera/ui/V6EffectCropView;)V

    goto :goto_1

    .line 719
    :pswitch_1
    cmp-long v3, v4, v12

    if-gez v3, :cond_1

    .line 720
    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {v3}, Lcom/android/camera/ui/V6EffectCropView;->-get8(Lcom/android/camera/ui/V6EffectCropView;)Landroid/view/animation/Interpolator;

    move-result-object v3

    long-to-float v6, v4

    iget-object v7, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {v7}, Lcom/android/camera/ui/V6EffectCropView;->-get5(Lcom/android/camera/ui/V6EffectCropView;)J

    move-result-wide v8

    long-to-float v7, v8

    div-float/2addr v6, v7

    invoke-interface {v3, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 722
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v10, v11}, Lcom/android/camera/ui/V6EffectCropView$3;->sendEmptyMessageDelayed(IJ)Z

    .line 726
    :goto_2
    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {v3}, Lcom/android/camera/ui/V6EffectCropView;->-get7(Lcom/android/camera/ui/V6EffectCropView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 727
    .local v0, "centerX":F
    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {v3}, Lcom/android/camera/ui/V6EffectCropView;->-get7(Lcom/android/camera/ui/V6EffectCropView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 728
    .local v1, "centerY":F
    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {v6}, Lcom/android/camera/ui/V6EffectCropView;->-get2(Lcom/android/camera/ui/V6EffectCropView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {v7}, Lcom/android/camera/ui/V6EffectCropView;->-get0(Lcom/android/camera/ui/V6EffectCropView;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v7, v7

    add-int/2addr v6, v7

    invoke-static {v3, v6}, Lcom/android/camera/ui/V6EffectCropView;->-set0(Lcom/android/camera/ui/V6EffectCropView;I)I

    .line 729
    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {v3}, Lcom/android/camera/ui/V6EffectCropView;->-get6(Lcom/android/camera/ui/V6EffectCropView;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {v6}, Lcom/android/camera/ui/V6EffectCropView;->-get9(Lcom/android/camera/ui/V6EffectCropView;)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v0, v6

    iget-object v7, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {v7}, Lcom/android/camera/ui/V6EffectCropView;->-get9(Lcom/android/camera/ui/V6EffectCropView;)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v1, v7

    .line 730
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {v8}, Lcom/android/camera/ui/V6EffectCropView;->-get9(Lcom/android/camera/ui/V6EffectCropView;)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v0

    iget-object v9, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {v9}, Lcom/android/camera/ui/V6EffectCropView;->-get9(Lcom/android/camera/ui/V6EffectCropView;)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v1

    .line 729
    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 731
    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {v3}, Lcom/android/camera/ui/V6EffectCropView;->-wrap1(Lcom/android/camera/ui/V6EffectCropView;)V

    goto/16 :goto_0

    .line 724
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView$3;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {v3}, Lcom/android/camera/ui/V6EffectCropView;->-wrap0(Lcom/android/camera/ui/V6EffectCropView;)V

    goto :goto_2

    .line 705
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
