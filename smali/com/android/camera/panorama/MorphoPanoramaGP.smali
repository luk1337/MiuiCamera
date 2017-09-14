.class public Lcom/android/camera/panorama/MorphoPanoramaGP;
.super Ljava/lang/Object;
.source "MorphoPanoramaGP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNative:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 15
    const-class v1, Lcom/android/camera/panorama/MorphoPanoramaGP;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/panorama/MorphoPanoramaGP;->TAG:Ljava/lang/String;

    .line 20
    :try_start_0
    const-string/jumbo v1, "morpho_panorama"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    sget-object v1, Lcom/android/camera/panorama/MorphoPanoramaGP;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadLibrary done"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 22
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 23
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/android/camera/panorama/MorphoPanoramaGP;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can\'t loadLibrary "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-wide v4, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    .line 136
    invoke-direct {p0}, Lcom/android/camera/panorama/MorphoPanoramaGP;->createNativeObject()J

    move-result-wide v0

    .line 137
    .local v0, "ret":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 139
    iput-wide v0, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    .line 135
    :goto_0
    return-void

    .line 141
    :cond_0
    iput-wide v4, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    .line 142
    const-wide/32 v0, -0x7ffffffc

    goto :goto_0
.end method

.method public static calcImageSize(Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;D)I
    .locals 1
    .param p0, "param"    # Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;
    .param p1, "goal_angle"    # D

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeCalcImageSize(Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;D)I

    move-result v0

    return v0
.end method

.method private final native createNativeObject()J
.end method

.method private final native deleteNativeObject(J)V
.end method

.method private final native nativeAttachPreview(J[BI[I[B[ILandroid/graphics/Bitmap;)I
.end method

.method private final native nativeAttachStillImageExt(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
.end method

.method private final native nativeAttachStillImageRaw(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
.end method

.method private static final native nativeCalcImageSize(Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;D)I
.end method

.method private final native nativeEnd(J)I
.end method

.method private final native nativeFinish(J)I
.end method

.method private final native nativeGetBoundingRect(J[I)I
.end method

.method private final native nativeGetClippingRect(J[I)I
.end method

.method private final native nativeGetCurrentDirection(J[I)I
.end method

.method private final native nativeGetGuidancePos(J[I)I
.end method

.method private final native nativeGetMoveSpeed(J[I)I
.end method

.method private final native nativeInitialize(JLcom/android/camera/panorama/MorphoPanoramaGP$InitParam;[I)I
.end method

.method private final native nativeSaveOutputJpeg(JLjava/lang/String;IIIII[I)I
.end method

.method private final native nativeSetJpegForCopyingExif(JLjava/nio/ByteBuffer;)I
.end method

.method private final native nativeSetMotionlessThreshold(JI)I
.end method

.method private final native nativeSetUseSensorAssist(JII)I
.end method

.method private final native nativeSetUseSensorThreshold(JI)I
.end method

.method private final native nativeStart(J)I
.end method


# virtual methods
.method public attachPreview([BI[I[B[ILandroid/graphics/Bitmap;)I
    .locals 10
    .param p1, "input_image"    # [B
    .param p2, "use_image"    # I
    .param p3, "image_id"    # [I
    .param p4, "motion_data"    # [B
    .param p5, "status"    # [I
    .param p6, "preview_image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, "ret":I
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 201
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeAttachPreview(J[BI[I[B[ILandroid/graphics/Bitmap;)I

    move-result v0

    .line 208
    :goto_0
    return v0

    .line 205
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public attachSetJpegForCopyingExif(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "input_image"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 263
    .local v0, "ret":I
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 265
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeSetJpegForCopyingExif(JLjava/nio/ByteBuffer;)I

    move-result v0

    .line 272
    :goto_0
    return v0

    .line 269
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public attachStillImageExt(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
    .locals 7
    .param p1, "input_image"    # Ljava/nio/ByteBuffer;
    .param p2, "image_id"    # I
    .param p3, "motion_data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, "ret":I
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 233
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeAttachStillImageExt(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v0

    .line 240
    :goto_0
    return v0

    .line 237
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public attachStillImageRaw(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
    .locals 7
    .param p1, "input_image"    # Ljava/nio/ByteBuffer;
    .param p2, "image_id"    # I
    .param p3, "motion_data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 247
    .local v0, "ret":I
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 249
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeAttachStillImageRaw(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v0

    .line 256
    :goto_0
    return v0

    .line 253
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public end()I
    .locals 6

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, "ret":I
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 281
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeEnd(J)I

    move-result v0

    .line 288
    :goto_0
    return v0

    .line 285
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public finish()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "ret":I
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 167
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeFinish(J)I

    move-result v0

    .line 168
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP;->deleteNativeObject(J)V

    .line 169
    iput-wide v4, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    .line 176
    :goto_0
    return v0

    .line 173
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getBoundingRect(Landroid/graphics/Rect;)I
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, "ret":I
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 296
    .local v0, "rect_info":[I
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 298
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3, v0}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeGetBoundingRect(J[I)I

    move-result v1

    .line 299
    if-nez v1, :cond_0

    .line 301
    aget v2, v0, v6

    .line 302
    const/4 v3, 0x1

    aget v3, v0, v3

    .line 303
    const/4 v4, 0x2

    aget v4, v0, v4

    .line 304
    const/4 v5, 0x3

    aget v5, v0, v5

    .line 301
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 312
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 314
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 317
    :cond_1
    return v1

    .line 309
    :cond_2
    const v1, -0x7ffffffe

    goto :goto_0
.end method

.method public getClippingRect(Landroid/graphics/Rect;)I
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    .line 322
    const/4 v1, 0x0

    .line 323
    .local v1, "ret":I
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 325
    .local v0, "rect_info":[I
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 327
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3, v0}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeGetClippingRect(J[I)I

    move-result v1

    .line 328
    if-nez v1, :cond_0

    .line 330
    aget v2, v0, v6

    .line 331
    const/4 v3, 0x1

    aget v3, v0, v3

    .line 332
    const/4 v4, 0x2

    aget v4, v0, v4

    .line 333
    const/4 v5, 0x3

    aget v5, v0, v5

    .line 330
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 341
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 343
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 346
    :cond_1
    return v1

    .line 338
    :cond_2
    const v1, -0x7ffffffe

    goto :goto_0
.end method

.method public getCurrentDirection([I)I
    .locals 6
    .param p1, "direction"    # [I

    .prologue
    .line 432
    const/4 v0, 0x0

    .line 434
    .local v0, "ret":I
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 436
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeGetCurrentDirection(J[I)I

    move-result v0

    .line 443
    :goto_0
    return v0

    .line 440
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getGuidancePos(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 6
    .param p1, "attached"    # Landroid/graphics/Point;
    .param p2, "guide"    # Landroid/graphics/Point;

    .prologue
    .line 496
    const/4 v1, 0x0

    .line 497
    .local v1, "ret":I
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 499
    .local v0, "pos":[I
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 501
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3, v0}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeGetGuidancePos(J[I)I

    move-result v1

    .line 502
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 503
    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v3, v0, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 510
    :goto_0
    return v1

    .line 507
    :cond_0
    const v1, -0x7ffffffe

    goto :goto_0
.end method

.method public getMoveSpeed([I)I
    .locals 6
    .param p1, "movespeed"    # [I

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 401
    .local v0, "ret":I
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 403
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeGetMoveSpeed(J[I)I

    move-result v0

    .line 411
    :goto_0
    return v0

    .line 408
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public initialize(Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;[I)I
    .locals 6
    .param p1, "param"    # Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;
    .param p2, "buffer_size"    # [I

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "ret":I
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 151
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeInitialize(JLcom/android/camera/panorama/MorphoPanoramaGP$InitParam;[I)I

    move-result v0

    .line 158
    :goto_0
    return v0

    .line 155
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;I[I)I
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "orientation"    # I
    .param p4, "progress"    # [I

    .prologue
    .line 535
    const/4 v0, 0x0

    .line 537
    .local v0, "ret":I
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 539
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    move-object v4, p1

    move v9, p3

    move-object v10, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeSaveOutputJpeg(JLjava/lang/String;IIIII[I)I

    move-result v0

    .line 546
    :goto_0
    return v0

    .line 543
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setMotionlessThreshold(I)I
    .locals 6
    .param p1, "motionless_threshold"    # I

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 385
    .local v0, "ret":I
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 387
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeSetMotionlessThreshold(JI)I

    move-result v0

    .line 394
    :goto_0
    return v0

    .line 391
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseSensorAssist(II)I
    .locals 6
    .param p1, "use_case"    # I
    .param p2, "enable"    # I

    .prologue
    .line 448
    const/4 v0, 0x0

    .line 450
    .local v0, "ret":I
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 452
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeSetUseSensorAssist(JII)I

    move-result v0

    .line 459
    :goto_0
    return v0

    .line 456
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseSensorThreshold(I)I
    .locals 6
    .param p1, "threshold"    # I

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 482
    .local v0, "ret":I
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 484
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeSetUseSensorThreshold(JI)I

    move-result v0

    .line 491
    :goto_0
    return v0

    .line 488
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public start()I
    .locals 6

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 183
    .local v0, "ret":I
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 185
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v2, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeStart(J)I

    move-result v0

    .line 192
    :goto_0
    return v0

    .line 189
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method
