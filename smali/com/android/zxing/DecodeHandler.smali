.class final Lcom/android/zxing/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# instance fields
.field private mCancel:Z

.field private final mContext:Landroid/content/Context;

.field private final mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    iput-object p1, p0, Lcom/android/zxing/DecodeHandler;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/android/zxing/DecodeHandler;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 27
    iget-object v0, p0, Lcom/android/zxing/DecodeHandler;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p3}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 23
    return-void
.end method

.method private decode([BII)V
    .locals 16
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 46
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/zxing/DecodeHandler;->mCancel:Z

    if-nez v12, :cond_0

    mul-int v12, p2, p3

    int-to-double v12, v12

    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v12, v14

    move-object/from16 v0, p1

    array-length v14, v0

    int-to-double v14, v14

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_1

    :cond_0
    return-void

    .line 48
    :cond_1
    mul-int v12, p2, p3

    new-array v7, v12, [B

    .line 49
    .local v7, "rotatedData":[B
    const/4 v11, 0x0

    .local v11, "y":I
    :goto_0
    move/from16 v0, p3

    if-ge v11, v0, :cond_3

    .line 50
    const/4 v10, 0x0

    .local v10, "x":I
    :goto_1
    move/from16 v0, p2

    if-ge v10, v0, :cond_2

    .line 51
    mul-int v12, v10, p3

    add-int v12, v12, p3

    sub-int/2addr v12, v11

    add-int/lit8 v12, v12, -0x1

    mul-int v13, v11, p2

    add-int/2addr v13, v10

    aget-byte v13, p1, v13

    aput-byte v13, v7, v12

    .line 50
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 49
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 54
    .end local v10    # "x":I
    :cond_3
    move/from16 v9, p2

    .line 55
    .local v9, "temp":I
    move/from16 p2, p3

    .line 56
    move/from16 p3, v9

    .line 58
    const/4 v2, 0x0

    .line 59
    .local v2, "bitmap":Lcom/google/zxing/BinaryBitmap;
    const/4 v3, 0x2

    .line 60
    .local v3, "decodeTimeMost":I
    const/4 v8, 0x0

    .line 61
    .local v8, "source":Lcom/android/zxing/YUVLuminanceSource;
    const/4 v5, 0x0

    .line 65
    .end local v2    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .end local v8    # "source":Lcom/android/zxing/YUVLuminanceSource;
    :cond_4
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_8

    .line 66
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/zxing/DecodeHandler;->mCancel:Z

    if-eqz v12, :cond_5

    return-void

    .line 67
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/zxing/DecodeHandler;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v13

    .line 68
    if-nez v3, :cond_6

    const/4 v12, 0x1

    .line 67
    :goto_2
    move/from16 v0, p2

    invoke-virtual {v13, v7, v0, v9, v12}, Lcom/android/zxing/QRCodeManager;->buildLuminanceSource([BIIZ)Lcom/android/zxing/YUVLuminanceSource;

    move-result-object v8

    .line 69
    .local v8, "source":Lcom/android/zxing/YUVLuminanceSource;
    if-eqz v8, :cond_4

    .line 72
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v12, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v12, v8}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 74
    .local v2, "bitmap":Lcom/google/zxing/BinaryBitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/zxing/DecodeHandler;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v12, v2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 78
    .local v5, "rawResult":Lcom/google/zxing/Result;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/zxing/DecodeHandler;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v12}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 80
    .end local v5    # "rawResult":Lcom/google/zxing/Result;
    :goto_3
    if-eqz v5, :cond_4

    .line 81
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/zxing/DecodeHandler;->mCancel:Z

    if-eqz v12, :cond_7

    return-void

    .line 68
    .end local v2    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .end local v8    # "source":Lcom/android/zxing/YUVLuminanceSource;
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 75
    .restart local v2    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .restart local v8    # "source":Lcom/android/zxing/YUVLuminanceSource;
    :catch_0
    move-exception v6

    .line 78
    .local v6, "re":Lcom/google/zxing/ReaderException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/zxing/DecodeHandler;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v12}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_3

    .line 77
    .end local v6    # "re":Lcom/google/zxing/ReaderException;
    :catchall_0
    move-exception v12

    .line 78
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/zxing/DecodeHandler;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v13}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 77
    throw v12

    .line 82
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/zxing/DecodeHandler;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/zxing/QRCodeManager;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 83
    const v13, 0x7f0c0006

    .line 82
    invoke-virtual {v12, v13, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 84
    .local v4, "message":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 85
    return-void

    .line 88
    .end local v2    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .end local v4    # "message":Landroid/os/Message;
    .end local v8    # "source":Lcom/android/zxing/YUVLuminanceSource;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/zxing/DecodeHandler;->mCancel:Z

    if-eqz v12, :cond_9

    return-void

    .line 89
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/zxing/DecodeHandler;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/zxing/QRCodeManager;->getHandler()Landroid/os/Handler;

    move-result-object v12

    const v13, 0x7f0c0008

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 43
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/zxing/DecodeHandler;->mCancel:Z

    .line 39
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 32
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 31
    :goto_0
    return-void

    .line 34
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/zxing/DecodeHandler;->decode([BII)V

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x7f0c0004
        :pswitch_0
    .end packed-switch
.end method
