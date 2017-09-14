.class public abstract Lcom/android/camera/SurfaceTextureScreenNail;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field private static final MOVIE_SOLID_CROPPED_X:F

.field private static final MOVIE_SOLID_CROPPED_Y:F

.field private static sFrameListener:Landroid/os/HandlerThread;

.field private static sMaxHightProrityFrameCount:I


# instance fields
.field private currentFrameCount:I

.field protected mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

.field protected mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mCameraHeight:I

.field private mCameraWidth:I

.field private mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field protected mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

.field protected mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field protected mGLSurfaceStatusBar:Lcom/android/camera/GLSurfaceStatusBar;

.field private mHasTexture:Z

.field private mHeight:I

.field private mIsFullScreen:Z

.field private mIsRatio16_9:Z

.field protected mModuleSwitching:Z

.field private mNeedCropped:Z

.field private mRenderHeight:I

.field protected mRenderLayoutRect:Landroid/graphics/Rect;

.field private mRenderWidth:I

.field private mScaleX:F

.field private mScaleY:F

.field protected mSkipFirstFrame:Z

.field protected mSurfaceHeight:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field protected mSurfaceWidth:I

.field private mTargetRatio:I

.field protected mTheight:I

.field private mTransform:[F

.field protected mTwidth:I

.field protected mTx:I

.field protected mTy:I

.field private mUncroppedRenderHeight:I

.field private mUncroppedRenderWidth:I

.field private mVideoStabilizationCropped:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v1, 0x3f666666    # 0.9f

    const v2, 0x3f4ccccd    # 0.8f

    .line 45
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput v0, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_X:F

    .line 46
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput v1, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_Y:F

    .line 73
    const/16 v0, 0x8

    sput v0, Lcom/android/camera/SurfaceTextureScreenNail;->sMaxHightProrityFrameCount:I

    .line 75
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "FrameListener"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    .line 41
    return-void

    :cond_0
    move v0, v2

    .line 45
    goto :goto_0

    :cond_1
    move v1, v2

    .line 46
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/camera/GLSurfaceStatusBar;

    invoke-direct {v0}, Lcom/android/camera/GLSurfaceStatusBar;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mGLSurfaceStatusBar:Lcom/android/camera/GLSurfaceStatusBar;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderLayoutRect:Landroid/graphics/Rect;

    .line 64
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    .line 65
    iput-boolean v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 68
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 69
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    .line 74
    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    .line 76
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    .line 80
    return-void
.end method

.method private checkThreadPriority()V
    .locals 2

    .prologue
    .line 174
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    sget v1, Lcom/android/camera/SurfaceTextureScreenNail;->sMaxHightProrityFrameCount:I

    if-ne v0, v1, :cond_1

    .line 175
    const-string/jumbo v0, "Camera/SurfaceTextureScreenNail"

    const-string/jumbo v1, "normalHandlerCapacity:set normal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 177
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    sget v1, Lcom/android/camera/SurfaceTextureScreenNail;->sMaxHightProrityFrameCount:I

    if-ge v0, v1, :cond_0

    .line 179
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    goto :goto_0
.end method

.method private computeRatio()V
    .locals 13

    .prologue
    const/high16 v12, 0x41100000    # 9.0f

    const/high16 v11, 0x3f400000    # 0.75f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 212
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->getStrictAspectRatio(II)I

    move-result v4

    const/4 v5, -0x1

    if-gt v4, v5, :cond_1

    .line 213
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget v7, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    invoke-static {v4, v5, v6, v7}, Lcom/android/camera/CameraSettings;->isNearAspectRatio(IIII)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 293
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    if-eqz v4, :cond_0

    .line 294
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    if-eqz v4, :cond_9

    .line 295
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    .line 296
    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    .line 295
    mul-int/2addr v5, v6

    if-eq v4, v5, :cond_9

    .line 297
    iput-boolean v9, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 298
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    .line 299
    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    .line 298
    mul-int/2addr v5, v6

    if-le v4, v5, :cond_8

    .line 300
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    .line 301
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    .line 302
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 303
    iput v10, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    .line 318
    :goto_0
    const-string/jumbo v4, "calRenderScale done. "

    invoke-direct {p0, v4}, Lcom/android/camera/SurfaceTextureScreenNail;->dumpSurfaceTextureStates(Ljava/lang/String;)V

    .line 322
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateRenderSize()V

    .line 323
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateRenderRect()V

    .line 206
    return-void

    .line 214
    :cond_1
    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    .line 215
    .local v3, "width":I
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    .line 216
    .local v0, "height":I
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    packed-switch v4, :pswitch_data_0

    .line 288
    :cond_2
    :goto_2
    const-string/jumbo v4, "setSize compute done."

    invoke-direct {p0, v4}, Lcom/android/camera/SurfaceTextureScreenNail;->dumpSurfaceTextureStates(Ljava/lang/String;)V

    .line 290
    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    .line 291
    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    goto :goto_1

    .line 218
    :pswitch_0
    iput-boolean v9, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 219
    iput-boolean v9, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 220
    invoke-static {v3, v0}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 221
    iput-boolean v9, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 222
    mul-int/lit8 v4, v3, 0x10

    mul-int/lit8 v5, v0, 0x9

    if-le v4, v5, :cond_3

    .line 223
    move v2, v3

    .line 224
    .local v2, "oldWidth":I
    int-to-float v4, v0

    mul-float/2addr v4, v12

    const/high16 v5, 0x41800000    # 16.0f

    div-float/2addr v4, v5

    float-to-int v3, v4

    .line 225
    int-to-float v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 236
    .end local v2    # "oldWidth":I
    :goto_3
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 237
    iput-boolean v8, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 238
    iput-boolean v9, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 239
    int-to-float v4, v0

    mul-float/2addr v4, v11

    float-to-int v0, v4

    .line 240
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    mul-float/2addr v4, v11

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_2

    .line 227
    :cond_3
    move v1, v0

    .line 228
    .local v1, "oldHeight":I
    int-to-float v4, v3

    const/high16 v5, 0x41800000    # 16.0f

    mul-float/2addr v4, v5

    div-float/2addr v4, v12

    float-to-int v0, v4

    .line 229
    int-to-float v4, v0

    int-to-float v5, v1

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_3

    .line 232
    .end local v1    # "oldHeight":I
    :cond_4
    iput-boolean v8, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 233
    iput v10, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 234
    iput v10, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_3

    .line 244
    :pswitch_1
    iput-boolean v8, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 245
    iput-boolean v8, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 246
    invoke-static {v3, v0}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v4

    if-nez v4, :cond_7

    .line 247
    iput-boolean v9, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 248
    mul-int/lit8 v4, v3, 0x4

    mul-int/lit8 v5, v0, 0x3

    if-le v4, v5, :cond_6

    .line 249
    move v2, v3

    .line 250
    .restart local v2    # "oldWidth":I
    int-to-float v4, v0

    mul-float/2addr v4, v11

    float-to-int v3, v4

    .line 251
    int-to-float v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 263
    .end local v2    # "oldWidth":I
    :goto_4
    sget-boolean v4, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v4, :cond_5

    .line 264
    iput-boolean v9, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 265
    iput-boolean v9, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 266
    iput-boolean v9, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 267
    int-to-float v4, v3

    const/high16 v5, 0x41800000    # 16.0f

    mul-float/2addr v4, v5

    div-float/2addr v4, v12

    float-to-int v0, v4

    .line 268
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    mul-float/2addr v4, v11

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 271
    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 272
    iput-boolean v9, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    goto/16 :goto_2

    .line 253
    :cond_6
    move v1, v0

    .line 254
    .restart local v1    # "oldHeight":I
    int-to-float v4, v3

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    float-to-int v0, v4

    .line 255
    int-to-float v4, v0

    int-to-float v5, v1

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_4

    .line 258
    .end local v1    # "oldHeight":I
    :cond_7
    iput-boolean v8, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 259
    iput v10, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 260
    iput v10, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_4

    .line 276
    :pswitch_2
    iput-boolean v8, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 277
    iput-boolean v8, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 278
    iput-boolean v9, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 279
    if-eq v3, v0, :cond_2

    .line 280
    move v1, v0

    .line 281
    .restart local v1    # "oldHeight":I
    move v0, v3

    .line 282
    int-to-float v4, v3

    int-to-float v5, v1

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto/16 :goto_2

    .line 305
    .end local v0    # "height":I
    .end local v1    # "oldHeight":I
    .end local v3    # "width":I
    :cond_8
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    .line 306
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    .line 307
    iput v10, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 308
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto/16 :goto_0

    .line 311
    :cond_9
    iput-boolean v8, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 312
    iput v10, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 313
    iput v10, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    .line 314
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    .line 315
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    goto/16 :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private dumpSurfaceTextureStates(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " currentstate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    const-string/jumbo v1, " mScaleX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 475
    const-string/jumbo v1, " mScaleY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 476
    const-string/jumbo v1, " mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    const-string/jumbo v1, " mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 478
    const-string/jumbo v1, " mCameraWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 479
    const-string/jumbo v1, " mCameraHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 480
    const-string/jumbo v1, " mRenderWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    const-string/jumbo v1, " mRenderHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 482
    const-string/jumbo v1, " mRenderLayoutRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderLayoutRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 483
    const-string/jumbo v1, " mSurfaceWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 484
    const-string/jumbo v1, " mSurfaceHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 485
    const-string/jumbo v1, " mTx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mTy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mTwidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTwidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mTheight"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTheight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 486
    const-string/jumbo v1, "Camera/SurfaceTextureScreenNail"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void
.end method

.method private initializeTexture()V
    .locals 9

    .prologue
    const/16 v7, 0x15

    .line 98
    invoke-static {}, Lcom/android/camera/Device;->isSubthreadFrameListerner()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    sget-object v4, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 100
    sget-object v4, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 103
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v7, :cond_1

    .line 105
    :try_start_0
    const-class v4, Landroid/graphics/SurfaceTexture;

    .line 106
    const-string/jumbo v5, "(ILandroid/os/Looper;)V"

    .line 105
    invoke-static {v4, v5}, Lmiui/reflect/Constructor;->of(Ljava/lang/Class;Ljava/lang/String;)Lmiui/reflect/Constructor;

    move-result-object v0

    .line 107
    .local v0, "con":Lmiui/reflect/Constructor;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/ExtTexture;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Lmiui/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/SurfaceTexture;

    iput-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 110
    const-string/jumbo v4, "Camera/SurfaceTextureScreenNail"

    const-string/jumbo v5, "fullHandlerCapacity:set urgent display"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v4, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    const/4 v5, -0x8

    invoke-static {v4, v5}, Landroid/os/Process;->setThreadPriority(II)V

    .line 112
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v0    # "con":Lmiui/reflect/Constructor;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v4, :cond_2

    .line 121
    new-instance v4, Landroid/graphics/SurfaceTexture;

    iget-object v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/ExtTexture;->getId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 125
    :cond_2
    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 128
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isSubthreadFrameListerner()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 132
    :try_start_1
    const-class v4, Landroid/graphics/SurfaceTexture;

    const-string/jumbo v5, "setOnFrameAvailableListener"

    .line 133
    const-string/jumbo v6, "(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V"

    .line 132
    invoke-static {v4, v5, v6}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    .line 134
    .local v3, "m":Lmiui/reflect/Method;
    const-class v4, Landroid/graphics/SurfaceTexture;

    iget-object v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    new-instance v7, Landroid/os/Handler;

    sget-object v8, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 96
    .end local v3    # "m":Lmiui/reflect/Method;
    :goto_1
    return-void

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "Camera/SurfaceTextureScreenNail"

    const-string/jumbo v5, "SurfaceTexture Constructor IllegalArgumentException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 114
    .local v2, "e":Lmiui/reflect/NoSuchMethodException;
    const-string/jumbo v4, "Camera/SurfaceTextureScreenNail"

    const-string/jumbo v5, "SurfaceTexture Constructor NoSuchMethodException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    .end local v2    # "e":Lmiui/reflect/NoSuchMethodException;
    :cond_3
    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    goto :goto_1

    .line 137
    :catch_2
    move-exception v1

    .line 138
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "Camera/SurfaceTextureScreenNail"

    const-string/jumbo v5, "SurfaceTexture setOnFrameAvailableListener IllegalArgumentException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 135
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 136
    .restart local v2    # "e":Lmiui/reflect/NoSuchMethodException;
    const-string/jumbo v4, "Camera/SurfaceTextureScreenNail"

    const-string/jumbo v5, "SurfaceTexture setOnFrameAvailableListener NoSuchMethodException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateRenderSize()V
    .locals 2

    .prologue
    .line 337
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    const/4 v1, 0x2

    if-eq v1, v0, :cond_0

    .line 338
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    .line 339
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    .line 336
    :goto_0
    return-void

    .line 342
    :cond_0
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    .line 343
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    goto :goto_0
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 5

    .prologue
    const/16 v4, 0x2d0

    const/4 v3, 0x1

    .line 84
    new-instance v0, Lcom/android/gallery3d/ui/ExtTexture;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/ExtTexture;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 85
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/ExtTexture;->setSize(II)V

    .line 86
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->initializeTexture()V

    .line 87
    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    mul-int/lit16 v1, v1, 0x2d0

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    div-int/2addr v1, v2

    invoke-direct {v0, v4, v1, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 89
    monitor-enter p0

    .line 90
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mModuleSwitching:Z

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 83
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;

    .prologue
    const/4 v2, 0x0

    .line 374
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    if-eqz v0, :cond_0

    .line 375
    iput-boolean v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    .line 376
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 377
    return-void

    .line 380
    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    .line 381
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->isSkipDraw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    const-string/jumbo v0, "Camera/SurfaceTextureScreenNail"

    const-string/jumbo v1, "skipDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-void

    .line 385
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    if-eqz v0, :cond_2

    .line 386
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 373
    :goto_0
    return-void

    .line 389
    :cond_2
    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTx:I

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTy:I

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTwidth:I

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTheight:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 7
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 395
    monitor-enter p0

    .line 396
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 397
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/camera/Device;->isSubthreadFrameListerner()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->checkThreadPriority()V

    .line 398
    :cond_1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->setPreviewSize(II)V

    .line 399
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 400
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 401
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 402
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {p0, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 404
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {p0, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateExtraTransformMatrix([F)V

    .line 405
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 406
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 394
    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    return v0
.end method

.method public getPreviewHeight()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    return v0
.end method

.method public getRenderHeight()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    return v0
.end method

.method public getRenderTargeRatio()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    return v0
.end method

.method public getRenderWidth()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    return v0
.end method

.method public abstract isSkipDraw()Z
.end method

.method public abstract onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract releaseBitmapIfNeeded()V
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    monitor-enter p0

    .line 153
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 155
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ExtTexture;->recycle()V

    .line 157
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 161
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 162
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->recycle()V

    .line 166
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 168
    :cond_2
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 169
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mGLSurfaceStatusBar:Lcom/android/camera/GLSurfaceStatusBar;

    invoke-virtual {v0}, Lcom/android/camera/GLSurfaceStatusBar;->release()V

    .line 170
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->releaseBitmapIfNeeded()V

    .line 151
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mGLSurfaceStatusBar:Lcom/android/camera/GLSurfaceStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/GLSurfaceStatusBar;->setOrientation(I)V

    .line 416
    return-void
.end method

.method public setRenderSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRenderSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->dumpSurfaceTextureStates(Ljava/lang/String;)V

    .line 330
    iput p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    .line 331
    iput p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    .line 333
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->computeRatio()V

    .line 326
    return-void
.end method

.method public setSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->dumpSurfaceTextureStates(Ljava/lang/String;)V

    .line 195
    if-le p1, p2, :cond_0

    .line 196
    iput p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    .line 197
    iput p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    .line 202
    :goto_0
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->getRenderAspectRatio(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    .line 203
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->computeRatio()V

    .line 191
    return-void

    .line 199
    :cond_0
    iput p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    .line 200
    iput p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    goto :goto_0
.end method

.method public setVideoStabilizationCropped(Z)V
    .locals 1
    .param p1, "cropped"    # Z

    .prologue
    .line 421
    invoke-static {}, Lcom/android/camera/Device;->isNeedCropInMovieSolid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iput-boolean p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoStabilizationCropped:Z

    .line 420
    :goto_0
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoStabilizationCropped:Z

    goto :goto_0
.end method

.method protected updateExtraTransformMatrix([F)V
    .locals 0
    .param p1, "matrix"    # [F

    .prologue
    .line 449
    return-void
.end method

.method protected updateRenderRect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 453
    const-string/jumbo v0, "updateRenderRect "

    invoke-direct {p0, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->dumpSurfaceTextureStates(Ljava/lang/String;)V

    .line 455
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 456
    iput v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTx:I

    .line 457
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTy:I

    .line 458
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTwidth:I

    .line 459
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTheight:I

    .line 460
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderLayoutRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 461
    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    add-int/2addr v3, v4

    .line 460
    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 451
    :goto_0
    return-void

    .line 463
    :cond_0
    iput v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTx:I

    .line 464
    iput v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTy:I

    .line 465
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTwidth:I

    .line 466
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTheight:I

    .line 467
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderLayoutRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method protected updateTransformMatrix([F)V
    .locals 9
    .param p1, "matrix"    # [F

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/high16 v6, -0x41000000    # -0.5f

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 429
    const/high16 v1, 0x3f800000    # 1.0f

    .line 430
    .local v1, "scaleX":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 431
    .local v2, "scaleY":F
    const/4 v0, 0x0

    .line 432
    .local v0, "change":Z
    iget-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoStabilizationCropped:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 433
    sget v3, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_X:F

    mul-float v1, v4, v3

    .line 434
    sget v3, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_Y:F

    mul-float v2, v4, v3

    .line 435
    const/4 v0, 0x1

    .line 437
    :cond_0
    iget-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    if-eqz v3, :cond_1

    .line 438
    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    mul-float/2addr v1, v3

    .line 439
    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    mul-float/2addr v2, v3

    .line 440
    const/4 v0, 0x1

    .line 442
    :cond_1
    if-eqz v0, :cond_2

    .line 443
    invoke-static {p1, v5, v8, v8, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 444
    invoke-static {p1, v5, v1, v2, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 445
    invoke-static {p1, v5, v6, v6, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 428
    :cond_2
    return-void
.end method
