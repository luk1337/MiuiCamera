.class Lcom/android/camera/ui/FocusView$1;
.super Landroid/os/Handler;
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
    .line 170
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v13, -0x40800000    # -1.0f

    const/4 v12, 0x6

    const-wide/16 v10, 0x14

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 172
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get6(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 173
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 171
    :cond_1
    :goto_0
    return-void

    .line 175
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get11(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 176
    .local v0, "duration":J
    const-wide/16 v4, 0x208

    cmp-long v3, v0, v4

    if-ltz v3, :cond_3

    .line 177
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set6(Lcom/android/camera/ui/FocusView;I)I

    .line 178
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->-set7(Lcom/android/camera/ui/FocusView;I)I

    .line 179
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FocusView$1;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 180
    invoke-virtual {p0, v12}, Lcom/android/camera/ui/FocusView$1;->removeMessages(I)V

    .line 181
    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v12, v4, v5}, Lcom/android/camera/ui/FocusView$1;->sendEmptyMessageDelayed(IJ)Z

    .line 183
    :cond_2
    return-void

    .line 185
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    long-to-float v4, v0

    const/high16 v5, 0x43fa0000    # 500.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set8(Lcom/android/camera/ui/FocusView;F)F

    .line 186
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-wrap4(Lcom/android/camera/ui/FocusView;)V

    .line 187
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 188
    const/4 v3, 0x7

    invoke-virtual {p0, v3, v10, v11}, Lcom/android/camera/ui/FocusView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 192
    .end local v0    # "duration":J
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get22(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 193
    .restart local v0    # "duration":J
    const-wide/16 v4, 0x140

    cmp-long v3, v0, v4

    if-ltz v3, :cond_5

    .line 194
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->-set7(Lcom/android/camera/ui/FocusView;I)I

    .line 195
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FocusView$1;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 196
    invoke-virtual {p0, v12}, Lcom/android/camera/ui/FocusView$1;->removeMessages(I)V

    .line 197
    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v12, v4, v5}, Lcom/android/camera/ui/FocusView$1;->sendEmptyMessageDelayed(IJ)Z

    .line 199
    :cond_4
    return-void

    .line 201
    :cond_5
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    long-to-float v4, v0

    const/high16 v5, 0x43960000    # 300.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-wrap2(Lcom/android/camera/ui/FocusView;F)F

    move-result v2

    .line 202
    .local v2, "t":F
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->-get21(Lcom/android/camera/ui/FocusView;)I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v9, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set5(Lcom/android/camera/ui/FocusView;I)I

    .line 203
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 204
    const/16 v3, 0x8

    invoke-virtual {p0, v3, v10, v11}, Lcom/android/camera/ui/FocusView$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 208
    .end local v0    # "duration":J
    .end local v2    # "t":F
    :pswitch_2
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->-set6(Lcom/android/camera/ui/FocusView;I)I

    .line 209
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/camera/ui/FocusView;->-set0(Lcom/android/camera/ui/FocusView;J)J

    .line 210
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-wrap4(Lcom/android/camera/ui/FocusView;)V

    .line 211
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    goto/16 :goto_0

    .line 216
    :pswitch_3
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 217
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get23(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 218
    .restart local v0    # "duration":J
    const-wide/16 v4, 0xdc

    cmp-long v3, v0, v4

    if-lez v3, :cond_6

    .line 219
    return-void

    .line 221
    :cond_6
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    long-to-float v4, v0

    const/high16 v5, 0x43480000    # 200.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-wrap2(Lcom/android/camera/ui/FocusView;F)F

    move-result v2

    .line 222
    .restart local v2    # "t":F
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-wrap1(Lcom/android/camera/ui/FocusView;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 223
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {}, Lcom/android/camera/ui/FocusView;->-get2()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set14(Lcom/android/camera/ui/FocusView;I)I

    .line 224
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sget v4, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set2(Lcom/android/camera/ui/FocusView;I)I

    .line 225
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/16 v4, 0x96

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set1(Lcom/android/camera/ui/FocusView;I)I

    .line 226
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    iput v9, v3, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    .line 232
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->-set4(Lcom/android/camera/ui/FocusView;I)I

    .line 233
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->-set9(Lcom/android/camera/ui/FocusView;I)I

    .line 234
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get14(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 235
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v2}, Lcom/android/camera/ui/FocusView;->-wrap6(Lcom/android/camera/ui/FocusView;F)V

    goto/16 :goto_0

    .line 228
    :cond_7
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sget v4, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    int-to-float v4, v4

    sub-float v5, v9, v2

    sget v6, Lcom/android/camera/ui/FocusView;->BIG_INIT_RADIUS:I

    sget v7, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set2(Lcom/android/camera/ui/FocusView;I)I

    .line 229
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/high16 v4, 0x43160000    # 150.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set1(Lcom/android/camera/ui/FocusView;I)I

    .line 230
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    iput v13, v3, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    goto :goto_1

    .line 240
    .end local v0    # "duration":J
    .end local v2    # "t":F
    :pswitch_4
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 241
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get24(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 242
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get25(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 243
    .restart local v0    # "duration":J
    const-wide/16 v4, 0x96

    cmp-long v3, v0, v4

    if-ltz v3, :cond_8

    .line 244
    return-void

    .line 246
    :cond_8
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    long-to-float v4, v0

    const/high16 v5, 0x43020000    # 130.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-wrap2(Lcom/android/camera/ui/FocusView;F)F

    move-result v2

    .line 247
    .restart local v2    # "t":F
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get17(Lcom/android/camera/ui/FocusView;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get12(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 251
    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_a

    .line 252
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    .line 253
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {}, Lcom/android/camera/ui/FocusView;->-get4()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/android/camera/ui/FocusView;->-get4()I

    move-result v5

    invoke-static {}, Lcom/android/camera/ui/FocusView;->-get3()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set14(Lcom/android/camera/ui/FocusView;I)I

    .line 254
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    iput v13, v3, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    .line 255
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->-set4(Lcom/android/camera/ui/FocusView;I)I

    .line 263
    :goto_2
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sget v4, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set2(Lcom/android/camera/ui/FocusView;I)I

    .line 264
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/16 v4, 0x96

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set1(Lcom/android/camera/ui/FocusView;I)I

    .line 265
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->-set9(Lcom/android/camera/ui/FocusView;I)I

    .line 266
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get14(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 267
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-wrap6(Lcom/android/camera/ui/FocusView;F)V

    goto/16 :goto_0

    .line 248
    :cond_9
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->-set4(Lcom/android/camera/ui/FocusView;I)I

    .line 249
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {}, Lcom/android/camera/ui/FocusView;->-get4()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/android/camera/ui/FocusView;->-get2()I

    move-result v5

    invoke-static {}, Lcom/android/camera/ui/FocusView;->-get4()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set14(Lcom/android/camera/ui/FocusView;I)I

    goto :goto_2

    .line 257
    :cond_a
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->-set14(Lcom/android/camera/ui/FocusView;I)I

    .line 258
    const/high16 v3, 0x3f000000    # 0.5f

    sub-float v3, v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v2, v3, v4

    .line 259
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set4(Lcom/android/camera/ui/FocusView;I)I

    .line 260
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v2

    const v5, 0x3ecccccd    # 0.4f

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    goto :goto_2

    .line 272
    .end local v0    # "duration":J
    .end local v2    # "t":F
    :pswitch_5
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 273
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get24(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 274
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get13(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 275
    .restart local v0    # "duration":J
    const-wide/16 v4, 0x140

    cmp-long v3, v0, v4

    if-ltz v3, :cond_b

    .line 276
    return-void

    .line 278
    :cond_b
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    long-to-float v4, v0

    const/high16 v5, 0x43960000    # 300.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-wrap2(Lcom/android/camera/ui/FocusView;F)F

    move-result v2

    .line 279
    .restart local v2    # "t":F
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sub-float v4, v9, v2

    const/high16 v5, 0x43340000    # 180.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set12(Lcom/android/camera/ui/FocusView;I)I

    .line 280
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {}, Lcom/android/camera/ui/FocusView;->-get1()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/android/camera/ui/FocusView;->-get1()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set13(Lcom/android/camera/ui/FocusView;I)I

    .line 281
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sget v4, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    int-to-float v4, v4

    invoke-static {}, Lcom/android/camera/ui/FocusView;->-get0()I

    move-result v5

    sget v6, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set2(Lcom/android/camera/ui/FocusView;I)I

    .line 282
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sub-float v4, v9, v2

    const/high16 v5, 0x43160000    # 150.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set1(Lcom/android/camera/ui/FocusView;I)I

    .line 283
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->-set9(Lcom/android/camera/ui/FocusView;I)I

    .line 284
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    iput v13, v3, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    .line 285
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->-set4(Lcom/android/camera/ui/FocusView;I)I

    .line 286
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get14(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 287
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-wrap6(Lcom/android/camera/ui/FocusView;F)V

    goto/16 :goto_0

    .line 293
    .end local v0    # "duration":J
    .end local v2    # "t":F
    :pswitch_6
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get16(Lcom/android/camera/ui/FocusView;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get15(Lcom/android/camera/ui/FocusView;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 294
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-wrap5(Lcom/android/camera/ui/FocusView;)V

    .line 295
    const-wide/16 v4, 0x32

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/camera/ui/FocusView$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 297
    :cond_c
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-wrap8(Lcom/android/camera/ui/FocusView;)V

    goto/16 :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
