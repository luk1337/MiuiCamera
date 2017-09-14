.class public Lcom/android/camera/effect/EffectController;
.super Ljava/lang/Object;
.source "EffectController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/EffectController$EffectRectAttribute;,
        Lcom/android/camera/effect/EffectController$SurfacePosition;
    }
.end annotation


# static fields
.field public static final COLUMN_COUNT:I

.field public static final SHOW_COUNT:I

.field public static sBackgroundBlurIndex:I

.field public static sDividerIndex:I

.field public static sFishEyeIndex:I

.field public static sGaussianIndex:I

.field public static sGradienterIndex:I

.field private static sInstance:Lcom/android/camera/effect/EffectController;

.field public static sPeakingMFIndex:I

.field public static sTiltShiftIndex:I


# instance fields
.field private mBlur:Z

.field private mBlurStep:I

.field private mDeviceRotation:F

.field public volatile mDisplayEndIndex:I

.field public volatile mDisplayShow:Z

.field public volatile mDisplayStartIndex:I

.field private mDrawPeaking:Z

.field private mEffectCount:I

.field private mEffectEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectEntryValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectGroupSize:I

.field private mEffectImageIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectIndex:I

.field private mEffectKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

.field public volatile mFillAnimationCache:Z

.field private mIsDrawMainFrame:Z

.field private mNeedRectSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedScaleDownSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mOverrideEffectIndex:I

.field public mSurfacePosition:Lcom/android/camera/effect/EffectController$SurfacePosition;

.field private mTiltShiftMaskAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    const/4 v1, 0x7

    .line 50
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput v0, Lcom/android/camera/effect/EffectController;->SHOW_COUNT:I

    .line 51
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput v1, Lcom/android/camera/effect/EffectController;->COLUMN_COUNT:I

    .line 67
    const/16 v0, 0x11

    sput v0, Lcom/android/camera/effect/EffectController;->sGradienterIndex:I

    .line 68
    const/16 v0, 0x12

    sput v0, Lcom/android/camera/effect/EffectController;->sTiltShiftIndex:I

    .line 69
    const/16 v0, 0x13

    sput v0, Lcom/android/camera/effect/EffectController;->sGaussianIndex:I

    .line 70
    const/16 v0, 0x14

    sput v0, Lcom/android/camera/effect/EffectController;->sPeakingMFIndex:I

    .line 71
    sput v2, Lcom/android/camera/effect/EffectController;->sFishEyeIndex:I

    .line 72
    const/16 v0, 0x8

    sput v0, Lcom/android/camera/effect/EffectController;->sDividerIndex:I

    .line 73
    const/16 v0, 0x10

    sput v0, Lcom/android/camera/effect/EffectController;->sBackgroundBlurIndex:I

    .line 48
    return-void

    :cond_0
    move v0, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, 0x3

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    .line 59
    iput v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    .line 60
    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mIsDrawMainFrame:Z

    .line 62
    iput v1, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    .line 63
    new-instance v0, Lcom/android/camera/effect/EffectController$SurfacePosition;

    invoke-direct {v0}, Lcom/android/camera/effect/EffectController$SurfacePosition;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mSurfacePosition:Lcom/android/camera/effect/EffectController$SurfacePosition;

    .line 74
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mEffectGroupSize:I

    .line 75
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mEffectCount:I

    .line 77
    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mDisplayShow:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mFillAnimationCache:Z

    .line 79
    iput v1, p0, Lcom/android/camera/effect/EffectController;->mDisplayStartIndex:I

    .line 80
    sget v0, Lcom/android/camera/effect/EffectController;->SHOW_COUNT:I

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayEndIndex:I

    .line 88
    new-instance v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    invoke-direct {v0, v2, v2}, Lcom/android/camera/effect/EffectController$EffectRectAttribute;-><init>(Lcom/android/camera/effect/EffectController$EffectRectAttribute;Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    .line 92
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->initialize()V

    .line 90
    return-void
.end method

.method private addEntryItem(II)V
    .locals 2
    .param p1, "strId"    # I
    .param p2, "id"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/camera/effect/EffectController;
    .locals 2

    .prologue
    const-class v1, Lcom/android/camera/effect/EffectController;

    monitor-enter v1

    .line 170
    :try_start_0
    sget-object v0, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/android/camera/effect/EffectController;

    invoke-direct {v0}, Lcom/android/camera/effect/EffectController;-><init>()V

    sput-object v0, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    .line 173
    :cond_0
    sget-object v0, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "strId"    # I

    .prologue
    .line 383
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initEffectWeight()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public static declared-synchronized releaseInstance()V
    .locals 2

    .prologue
    const-class v0, Lcom/android/camera/effect/EffectController;

    monitor-enter v0

    .line 177
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 176
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clearEffectAttribute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 324
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 325
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 326
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 327
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput v1, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRangeWidth:F

    .line 323
    return-void
.end method

.method public copyEffectRectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 335
    new-instance v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    invoke-direct {v0, v1, v2, v2}, Lcom/android/camera/effect/EffectController$EffectRectAttribute;-><init>(Lcom/android/camera/effect/EffectController$EffectRectAttribute;Lcom/android/camera/effect/EffectController$EffectRectAttribute;Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    return-object v0
.end method

.method public getAnalyticsKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 267
    return-object v0

    .line 268
    :cond_0
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBlurAnimationValue()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/16 v3, 0x8

    .line 204
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-gt v0, v3, :cond_2

    .line 205
    iget v2, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    .line 206
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-gt v3, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    if-eqz v0, :cond_0

    .line 207
    sget v0, Lcom/android/camera/effect/EffectController;->sBackgroundBlurIndex:I

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    .line 209
    :cond_0
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-gt v0, v3, :cond_2

    .line 210
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    mul-int/lit16 v0, v0, 0xd4

    div-int/lit8 v0, v0, 0x8

    return v0

    :cond_1
    move v0, v1

    .line 205
    goto :goto_0

    .line 213
    :cond_2
    return v1
.end method

.method public getDeviceRotation()F
    .locals 1

    .prologue
    .line 788
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mDeviceRotation:F

    return v0
.end method

.method public getDisplayEndIndex()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayEndIndex:I

    return v0
.end method

.method public getDisplayStartIndex()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayStartIndex:I

    return v0
.end method

.method public getEffect(Z)I
    .locals 2
    .param p1, "includeOverride"    # Z

    .prologue
    .line 217
    monitor-enter p0

    .line 218
    if-eqz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 219
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 221
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEffectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    return-object v0
.end method

.method public getEffectCount()I
    .locals 1

    .prologue
    .line 848
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectCount:I

    return v0
.end method

.method public getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 12
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "renderGroup"    # Lcom/android/camera/effect/renders/RenderGroup;
    .param p3, "wholeRender"    # Z
    .param p4, "isSnapShotRender"    # Z
    .param p5, "index"    # I

    .prologue
    .line 393
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v7

    if-nez v7, :cond_0

    .line 394
    const/4 v7, 0x0

    return-object v7

    .line 397
    :cond_0
    if-nez p1, :cond_1c

    const/4 v1, 0x1

    .line 399
    .local v1, "addEntry":Z
    :goto_0
    const/4 v4, 0x0

    .line 400
    .local v4, "initOne":Z
    if-nez p1, :cond_1d

    .line 401
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    .line 402
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    .line 403
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    .line 404
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    .line 405
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    .line 406
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/camera/effect/EffectController;->mNeedScaleDownSet:Ljava/util/ArrayList;

    .line 407
    const/4 v1, 0x1

    .line 420
    :cond_1
    const/4 v3, 0x0

    .line 421
    .local v3, "id":I
    if-eqz v1, :cond_1f

    .line 422
    const v7, 0x7f0e0099

    :try_start_0
    invoke-direct {p0, v7, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 423
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v8, 0x7f02002f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 432
    if-eqz v1, :cond_22

    .line 433
    const v7, 0x7f0e0093

    invoke-direct {p0, v7, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 434
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v8, 0x7f020029

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v8, "effect_instagram_rise_picture_taken_key"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 444
    if-eqz v1, :cond_26

    .line 445
    const v7, 0x7f0e008e

    invoke-direct {p0, v7, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 446
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v8, 0x7f020026

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v8, "effect_instagram_clarendon_picture_taken_key"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 456
    if-eqz v1, :cond_2a

    .line 457
    const v7, 0x7f0e008f

    invoke-direct {p0, v7, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 458
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v8, 0x7f020027

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v8, "effect_instagram_crema_picture_taken_key"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 468
    if-eqz v1, :cond_2e

    .line 469
    const v7, 0x7f0e0094

    invoke-direct {p0, v7, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 470
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v8, 0x7f020028

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v8, "effect_instagram_hudson_picture_taken_key"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 480
    if-eqz v1, :cond_32

    .line 481
    const v7, 0x7f0e009b

    invoke-direct {p0, v7, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 482
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v8, 0x7f020032

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v8, "effect_vivid_picture_taken_key"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_7
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 492
    if-eqz v1, :cond_36

    .line 493
    const v7, 0x7f0e0091

    invoke-direct {p0, v7, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 494
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v8, 0x7f020033

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v8, "effect_vsco_a4_picture_taken_key"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_8
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 504
    if-eqz v1, :cond_3a

    .line 505
    const v7, 0x7f0e0090

    invoke-direct {p0, v7, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 506
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v8, 0x7f020034

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v8, "effect_vsco_f2_picture_taken_key"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_9
    :goto_8
    add-int/lit8 v3, v3, 0x1

    .line 516
    if-eqz v1, :cond_3e

    .line 517
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mNeedScaleDownSet:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    const v7, 0x7f0e009a

    invoke-direct {p0, v7, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 519
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v8, 0x7f02002d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v8, "effect_gray_picture_taken_key"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_a
    :goto_9
    add-int/lit8 v3, v3, 0x1

    .line 532
    if-eqz v1, :cond_42

    .line 533
    const v7, 0x7f0e0092

    invoke-direct {p0, v7, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 534
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v8, 0x7f020024

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v8, "effect_blackwhite_picture_taken_key"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_b
    :goto_a
    add-int/lit8 v3, v3, 0x1

    .line 544
    if-eqz v1, :cond_46

    .line 545
    const v7, 0x7f0e009c

    invoke-direct {p0, v7, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 546
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v8, 0x7f020030

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v8, "effect_sketch_picture_taken_key"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    :cond_c
    :goto_b
    if-eqz v1, :cond_d

    .line 566
    sput v3, Lcom/android/camera/effect/EffectController;->sDividerIndex:I

    .line 570
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 571
    if-eqz v1, :cond_50

    .line 572
    const v7, 0x7f0e0095

    invoke-direct {p0, v7, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 573
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v8, 0x7f020023

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v8, "effect_big_face_picture_taken_key"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    :cond_e
    :goto_c
    add-int/lit8 v3, v3, 0x1

    .line 583
    if-eqz v1, :cond_54

    .line 584
    const v7, 0x7f0e0096

    invoke-direct {p0, v7, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 585
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v8, 0x7f020031

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v8, "effect_small_face_picture_taken_key"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    :cond_f
    :goto_d
    add-int/lit8 v3, v3, 0x1

    .line 595
    if-eqz v1, :cond_58

    .line 596
    const v7, 0x7f0e0097

    invoke-direct {p0, v7, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 597
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v8, 0x7f02002b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v8, "effect_long_face_picture_taken_key"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_10
    :goto_e
    add-int/lit8 v3, v3, 0x1

    .line 607
    if-eqz v1, :cond_5c

    .line 608
    sput v3, Lcom/android/camera/effect/EffectController;->sFishEyeIndex:I

    .line 609
    const v7, 0x7f0e009d

    invoke-direct {p0, v7, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 610
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v8, 0x7f020025

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v8, "effect_fisheye_picture_taken_key"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    :cond_11
    :goto_f
    add-int/lit8 v3, v3, 0x1

    .line 620
    if-eqz v1, :cond_60

    .line 621
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    const v7, 0x7f0e009e

    invoke-direct {p0, v7, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 623
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v8, 0x7f02002e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v8, "effect_mosaic_picture_taken_key"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    :cond_12
    :goto_10
    add-int/lit8 v3, v3, 0x1

    .line 634
    if-eqz v1, :cond_64

    .line 635
    const v7, 0x7f0e009f

    invoke-direct {p0, v7, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 636
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v8, 0x7f02002c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v8, "effect_mirror_picture_taken_key"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_13
    :goto_11
    add-int/lit8 v3, v3, 0x1

    .line 646
    if-eqz v1, :cond_68

    .line 647
    const v7, 0x7f0e0098

    invoke-direct {p0, v7, v3}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 648
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v8, 0x7f02002a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v8, "effect_light_tunnel_picture_taken_key"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_14
    :goto_12
    if-eqz v1, :cond_15

    .line 658
    const/16 v7, 0x12

    iput v7, p0, Lcom/android/camera/effect/EffectController;->mEffectCount:I

    .line 662
    :cond_15
    add-int/lit8 v3, v3, 0x1

    .line 663
    if-eqz v1, :cond_6c

    .line 664
    sput v3, Lcom/android/camera/effect/EffectController;->sBackgroundBlurIndex:I

    .line 689
    :cond_16
    :goto_13
    add-int/lit8 v3, v3, 0x1

    .line 690
    if-eqz v1, :cond_7a

    .line 691
    sput v3, Lcom/android/camera/effect/EffectController;->sGradienterIndex:I

    .line 701
    :cond_17
    :goto_14
    add-int/lit8 v3, v3, 0x1

    .line 702
    if-eqz v1, :cond_7f

    .line 703
    sput v3, Lcom/android/camera/effect/EffectController;->sTiltShiftIndex:I

    .line 704
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    :cond_18
    :goto_15
    const-string/jumbo v7, "is_camera_replace_higher_cost_effect"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/camera/aosp_porting/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_19

    .line 728
    add-int/lit8 v3, v3, 0x1

    .line 729
    if-eqz v1, :cond_8a

    .line 730
    sput v3, Lcom/android/camera/effect/EffectController;->sGaussianIndex:I

    .line 731
    iget-object v7, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    :cond_19
    :goto_16
    add-int/lit8 v3, v3, 0x1

    .line 754
    if-eqz v1, :cond_96

    .line 755
    sput v3, Lcom/android/camera/effect/EffectController;->sPeakingMFIndex:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :cond_1a
    :goto_17
    if-eqz v1, :cond_1b

    .line 774
    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Lcom/android/camera/effect/EffectController;->mEffectGroupSize:I

    .line 776
    :cond_1b
    return-object p2

    .line 397
    .end local v1    # "addEntry":Z
    .end local v3    # "id":I
    .end local v4    # "initOne":Z
    :cond_1c
    const/4 v1, 0x0

    .restart local v1    # "addEntry":Z
    goto/16 :goto_0

    .line 409
    .restart local v4    # "initOne":Z
    :cond_1d
    if-nez p2, :cond_1e

    .line 410
    new-instance p2, Lcom/android/camera/effect/renders/RenderGroup;

    .end local p2    # "renderGroup":Lcom/android/camera/effect/renders/RenderGroup;
    iget v7, p0, Lcom/android/camera/effect/EffectController;->mEffectGroupSize:I

    invoke-direct {p2, p1, v7}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 411
    .restart local p2    # "renderGroup":Lcom/android/camera/effect/renders/RenderGroup;
    if-nez p3, :cond_1

    if-gez p5, :cond_1

    return-object p2

    .line 412
    :cond_1e
    move/from16 v0, p5

    invoke-virtual {p2, v0}, Lcom/android/camera/effect/renders/RenderGroup;->isNeedInit(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 413
    return-object p2

    .line 425
    .restart local v3    # "id":I
    :cond_1f
    :try_start_1
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_2

    .line 426
    if-nez p3, :cond_20

    if-nez p5, :cond_21

    .line 427
    :cond_20
    const/4 v7, 0x0

    invoke-virtual {p2, v7, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 762
    :catch_0
    move-exception v2

    .line 765
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    if-gez p5, :cond_9a

    .line 766
    const-string/jumbo v7, "EffectController"

    const-string/jumbo v8, "IllegalArgumentException when create render."

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 426
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_21
    if-gez p5, :cond_2

    if-eqz v4, :cond_20

    goto/16 :goto_1

    .line 436
    :cond_22
    :try_start_2
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v7

    if-nez v7, :cond_23

    if-eqz p4, :cond_3

    .line 437
    :cond_23
    if-nez p3, :cond_24

    move/from16 v0, p5

    if-ne v0, v3, :cond_25

    .line 438
    :cond_24
    invoke-static {p1, v3}, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->create(Lcom/android/gallery3d/ui/GLCanvas;I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    invoke-virtual {p2, v7, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 439
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 437
    :cond_25
    if-gez p5, :cond_3

    if-eqz v4, :cond_24

    goto/16 :goto_2

    .line 448
    :cond_26
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v7

    if-nez v7, :cond_27

    if-eqz p4, :cond_4

    .line 449
    :cond_27
    if-nez p3, :cond_28

    move/from16 v0, p5

    if-ne v0, v3, :cond_29

    .line 450
    :cond_28
    invoke-static {p1, v3}, Lcom/android/camera/effect/renders/InstagramClarendonEffectRender;->create(Lcom/android/gallery3d/ui/GLCanvas;I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    invoke-virtual {p2, v7, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 451
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 449
    :cond_29
    if-gez p5, :cond_4

    if-eqz v4, :cond_28

    goto/16 :goto_3

    .line 460
    :cond_2a
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v7

    if-nez v7, :cond_2b

    if-eqz p4, :cond_5

    .line 461
    :cond_2b
    if-nez p3, :cond_2c

    move/from16 v0, p5

    if-ne v0, v3, :cond_2d

    .line 462
    :cond_2c
    invoke-static {p1, v3}, Lcom/android/camera/effect/renders/InstagramCremaEffectRender;->create(Lcom/android/gallery3d/ui/GLCanvas;I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    invoke-virtual {p2, v7, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 463
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 461
    :cond_2d
    if-gez p5, :cond_5

    if-eqz v4, :cond_2c

    goto/16 :goto_4

    .line 472
    :cond_2e
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_6

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v7

    if-nez v7, :cond_2f

    if-eqz p4, :cond_6

    .line 473
    :cond_2f
    if-nez p3, :cond_30

    move/from16 v0, p5

    if-ne v0, v3, :cond_31

    .line 474
    :cond_30
    invoke-static {p1, v3}, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->create(Lcom/android/gallery3d/ui/GLCanvas;I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    invoke-virtual {p2, v7, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 475
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 473
    :cond_31
    if-gez p5, :cond_6

    if-eqz v4, :cond_30

    goto/16 :goto_5

    .line 484
    :cond_32
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_7

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v7

    if-nez v7, :cond_33

    if-eqz p4, :cond_7

    .line 485
    :cond_33
    if-nez p3, :cond_34

    move/from16 v0, p5

    if-ne v0, v3, :cond_35

    .line 486
    :cond_34
    new-instance v7, Lcom/android/camera/effect/renders/VividEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/VividEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v7, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 487
    const/4 v4, 0x1

    goto/16 :goto_6

    .line 485
    :cond_35
    if-gez p5, :cond_7

    if-eqz v4, :cond_34

    goto/16 :goto_6

    .line 496
    :cond_36
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_8

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v7

    if-nez v7, :cond_37

    if-eqz p4, :cond_8

    .line 497
    :cond_37
    if-nez p3, :cond_38

    move/from16 v0, p5

    if-ne v0, v3, :cond_39

    .line 498
    :cond_38
    invoke-static {p1, v3}, Lcom/android/camera/effect/renders/VscoA4EffectRender;->create(Lcom/android/gallery3d/ui/GLCanvas;I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    invoke-virtual {p2, v7, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 499
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 497
    :cond_39
    if-gez p5, :cond_8

    if-eqz v4, :cond_38

    goto/16 :goto_7

    .line 508
    :cond_3a
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_9

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v7

    if-nez v7, :cond_3b

    if-eqz p4, :cond_9

    .line 509
    :cond_3b
    if-nez p3, :cond_3c

    move/from16 v0, p5

    if-ne v0, v3, :cond_3d

    .line 510
    :cond_3c
    new-instance v7, Lcom/android/camera/effect/renders/VscoF2EffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/VscoF2EffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v7, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 511
    const/4 v4, 0x1

    goto/16 :goto_8

    .line 509
    :cond_3d
    if-gez p5, :cond_9

    if-eqz v4, :cond_3c

    goto/16 :goto_8

    .line 521
    :cond_3e
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_a

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v7

    if-nez v7, :cond_3f

    if-eqz p4, :cond_a

    .line 522
    :cond_3f
    if-nez p3, :cond_40

    move/from16 v0, p5

    if-ne v0, v3, :cond_41

    .line 526
    :cond_40
    new-instance v7, Lcom/android/camera/effect/renders/GrayEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/GrayEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v7, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 527
    const/4 v4, 0x1

    goto/16 :goto_9

    .line 522
    :cond_41
    if-gez p5, :cond_a

    if-eqz v4, :cond_40

    goto/16 :goto_9

    .line 536
    :cond_42
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_b

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v7

    if-nez v7, :cond_43

    if-eqz p4, :cond_b

    .line 537
    :cond_43
    if-nez p3, :cond_44

    move/from16 v0, p5

    if-ne v0, v3, :cond_45

    .line 538
    :cond_44
    new-instance v7, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v7, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 539
    const/4 v4, 0x1

    goto/16 :goto_a

    .line 537
    :cond_45
    if-gez p5, :cond_b

    if-eqz v4, :cond_44

    goto/16 :goto_a

    .line 548
    :cond_46
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_c

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v7

    if-nez v7, :cond_47

    if-eqz p4, :cond_c

    .line 549
    :cond_47
    if-nez p3, :cond_48

    move/from16 v0, p5

    if-ne v0, v3, :cond_4b

    .line 550
    :cond_48
    if-nez p3, :cond_49

    move/from16 v0, p5

    if-ne v0, v3, :cond_4c

    .line 551
    :cond_49
    new-instance v9, Lcom/android/camera/effect/renders/PipeRenderPair;

    .line 552
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-eqz v7, :cond_4d

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    move-object v8, v7

    .line 553
    :goto_18
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-eqz v7, :cond_4e

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    .line 554
    :goto_19
    const/4 v10, 0x0

    .line 551
    invoke-direct {v9, p1, v8, v7, v10}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v9, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 555
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    .line 561
    :cond_4a
    :goto_1a
    const/4 v4, 0x1

    goto/16 :goto_b

    .line 549
    :cond_4b
    if-gez p5, :cond_c

    if-eqz v4, :cond_48

    goto/16 :goto_b

    .line 550
    :cond_4c
    const/4 v7, 0x2

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v7

    if-nez v7, :cond_49

    .line 556
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_4f

    .line 557
    new-instance v7, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_1a

    .line 552
    :cond_4d
    new-instance v7, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    move-object v8, v7

    goto :goto_18

    .line 553
    :cond_4e
    new-instance v7, Lcom/android/camera/effect/renders/SketchEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/SketchEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_19

    .line 558
    :cond_4f
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_4a

    .line 559
    new-instance v7, Lcom/android/camera/effect/renders/SketchEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/SketchEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_1a

    .line 575
    :cond_50
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_e

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v7

    if-nez v7, :cond_51

    if-eqz p4, :cond_e

    .line 576
    :cond_51
    if-nez p3, :cond_52

    move/from16 v0, p5

    if-ne v0, v3, :cond_53

    .line 577
    :cond_52
    new-instance v7, Lcom/android/camera/effect/renders/BigFaceEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/BigFaceEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v7, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 578
    const/4 v4, 0x1

    goto/16 :goto_c

    .line 576
    :cond_53
    if-gez p5, :cond_e

    if-eqz v4, :cond_52

    goto/16 :goto_c

    .line 587
    :cond_54
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_f

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v7

    if-nez v7, :cond_55

    if-eqz p4, :cond_f

    .line 588
    :cond_55
    if-nez p3, :cond_56

    move/from16 v0, p5

    if-ne v0, v3, :cond_57

    .line 589
    :cond_56
    new-instance v7, Lcom/android/camera/effect/renders/SmallFaceEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/SmallFaceEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v7, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 590
    const/4 v4, 0x1

    goto/16 :goto_d

    .line 588
    :cond_57
    if-gez p5, :cond_f

    if-eqz v4, :cond_56

    goto/16 :goto_d

    .line 599
    :cond_58
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_10

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v7

    if-nez v7, :cond_59

    if-eqz p4, :cond_10

    .line 600
    :cond_59
    if-nez p3, :cond_5a

    move/from16 v0, p5

    if-ne v0, v3, :cond_5b

    .line 601
    :cond_5a
    new-instance v7, Lcom/android/camera/effect/renders/LongFaceEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/LongFaceEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v7, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 602
    const/4 v4, 0x1

    goto/16 :goto_e

    .line 600
    :cond_5b
    if-gez p5, :cond_10

    if-eqz v4, :cond_5a

    goto/16 :goto_e

    .line 612
    :cond_5c
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_11

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v7

    if-nez v7, :cond_5d

    if-eqz p4, :cond_11

    .line 613
    :cond_5d
    if-nez p3, :cond_5e

    move/from16 v0, p5

    if-ne v0, v3, :cond_5f

    .line 614
    :cond_5e
    new-instance v7, Lcom/android/camera/effect/renders/FishEyeEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/FishEyeEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v7, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 615
    const/4 v4, 0x1

    goto/16 :goto_f

    .line 613
    :cond_5f
    if-gez p5, :cond_11

    if-eqz v4, :cond_5e

    goto/16 :goto_f

    .line 625
    :cond_60
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_12

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v7

    if-nez v7, :cond_61

    if-eqz p4, :cond_12

    .line 626
    :cond_61
    if-nez p3, :cond_62

    move/from16 v0, p5

    if-ne v0, v3, :cond_63

    .line 627
    :cond_62
    new-instance v7, Lcom/android/camera/effect/renders/MosaicEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/MosaicEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v7, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 628
    const/4 v4, 0x1

    goto/16 :goto_10

    .line 626
    :cond_63
    if-gez p5, :cond_12

    if-eqz v4, :cond_62

    goto/16 :goto_10

    .line 638
    :cond_64
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_13

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v7

    if-nez v7, :cond_65

    if-eqz p4, :cond_13

    .line 639
    :cond_65
    if-nez p3, :cond_66

    move/from16 v0, p5

    if-ne v0, v3, :cond_67

    .line 640
    :cond_66
    new-instance v7, Lcom/android/camera/effect/renders/MirrorEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/MirrorEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v7, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 641
    const/4 v4, 0x1

    goto/16 :goto_11

    .line 639
    :cond_67
    if-gez p5, :cond_13

    if-eqz v4, :cond_66

    goto/16 :goto_11

    .line 650
    :cond_68
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_14

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v7

    if-nez v7, :cond_69

    if-eqz p4, :cond_14

    .line 651
    :cond_69
    if-nez p3, :cond_6a

    move/from16 v0, p5

    if-ne v0, v3, :cond_6b

    .line 652
    :cond_6a
    new-instance v7, Lcom/android/camera/effect/renders/LightTunnelEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/LightTunnelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v7, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 653
    const/4 v4, 0x1

    goto/16 :goto_12

    .line 651
    :cond_6b
    if-gez p5, :cond_14

    if-eqz v4, :cond_6a

    goto/16 :goto_12

    .line 665
    :cond_6c
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_16

    .line 666
    if-nez p3, :cond_6d

    move/from16 v0, p5

    if-ne v0, v3, :cond_71

    .line 667
    :cond_6d
    if-nez p3, :cond_6e

    move/from16 v0, p5

    if-ne v0, v3, :cond_72

    .line 668
    :cond_6e
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-eqz v7, :cond_74

    .line 669
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/effect/renders/Render;->getId()I

    move-result v7

    if-ne v7, v3, :cond_73

    const/4 v5, 0x1

    .line 670
    .local v5, "matchPartRender0":Z
    :goto_1b
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-eqz v7, :cond_76

    .line 671
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/effect/renders/Render;->getId()I

    move-result v7

    if-ne v7, v3, :cond_75

    const/4 v6, 0x1

    .line 673
    .local v6, "matchPartRender1":Z
    :goto_1c
    new-instance v9, Lcom/android/camera/effect/renders/PipeRenderPair;

    .line 674
    if-eqz v5, :cond_77

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    move-object v8, v7

    .line 675
    :goto_1d
    if-eqz v6, :cond_78

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    .line 676
    :goto_1e
    const/4 v10, 0x0

    .line 673
    invoke-direct {v9, p1, v8, v7, v10}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v9, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 677
    if-nez v5, :cond_6f

    if-eqz v6, :cond_70

    .line 678
    :cond_6f
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    .line 685
    .end local v5    # "matchPartRender0":Z
    .end local v6    # "matchPartRender1":Z
    :cond_70
    :goto_1f
    const/4 v4, 0x1

    goto/16 :goto_13

    .line 666
    :cond_71
    if-gez p5, :cond_16

    if-eqz v4, :cond_6d

    goto/16 :goto_13

    .line 667
    :cond_72
    const/4 v7, 0x2

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v7

    if-nez v7, :cond_6e

    .line 680
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_79

    .line 681
    new-instance v7, Lcom/android/camera/effect/renders/XBlurEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/XBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_1f

    .line 669
    :cond_73
    const/4 v5, 0x0

    .restart local v5    # "matchPartRender0":Z
    goto :goto_1b

    .line 668
    .end local v5    # "matchPartRender0":Z
    :cond_74
    const/4 v5, 0x0

    .restart local v5    # "matchPartRender0":Z
    goto :goto_1b

    .line 671
    :cond_75
    const/4 v6, 0x0

    .restart local v6    # "matchPartRender1":Z
    goto :goto_1c

    .line 670
    .end local v6    # "matchPartRender1":Z
    :cond_76
    const/4 v6, 0x0

    .restart local v6    # "matchPartRender1":Z
    goto :goto_1c

    .line 674
    :cond_77
    new-instance v7, Lcom/android/camera/effect/renders/XBlurEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/XBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    move-object v8, v7

    goto :goto_1d

    .line 675
    :cond_78
    new-instance v7, Lcom/android/camera/effect/renders/YBlurEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/YBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_1e

    .line 682
    .end local v5    # "matchPartRender0":Z
    .end local v6    # "matchPartRender1":Z
    :cond_79
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_70

    .line 683
    new-instance v7, Lcom/android/camera/effect/renders/YBlurEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/YBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_1f

    .line 692
    :cond_7a
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_17

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v7

    if-nez v7, :cond_7b

    if-eqz p4, :cond_17

    .line 693
    :cond_7b
    if-nez p3, :cond_7c

    move/from16 v0, p5

    if-ne v0, v3, :cond_7d

    .line 694
    :cond_7c
    if-eqz p4, :cond_7e

    .line 695
    new-instance v7, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 694
    :goto_20
    invoke-virtual {p2, v7, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 697
    const/4 v4, 0x1

    goto/16 :goto_14

    .line 693
    :cond_7d
    if-gez p5, :cond_17

    if-eqz v4, :cond_7c

    goto/16 :goto_14

    .line 696
    :cond_7e
    new-instance v7, Lcom/android/camera/effect/renders/GradienterEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/GradienterEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_20

    .line 705
    :cond_7f
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_18

    .line 706
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTiltShift()Z

    move-result v7

    .line 705
    if-eqz v7, :cond_18

    .line 707
    if-nez p3, :cond_80

    move/from16 v0, p5

    if-ne v0, v3, :cond_83

    .line 708
    :cond_80
    if-nez p3, :cond_81

    move/from16 v0, p5

    if-ne v0, v3, :cond_84

    .line 709
    :cond_81
    new-instance v9, Lcom/android/camera/effect/renders/PipeRenderPair;

    new-instance v10, Lcom/android/camera/effect/renders/PipeRenderPair;

    .line 710
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-eqz v7, :cond_85

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    move-object v8, v7

    .line 711
    :goto_21
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-eqz v7, :cond_86

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    .line 712
    :goto_22
    const/4 v11, 0x0

    .line 709
    invoke-direct {v10, p1, v8, v7, v11}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    .line 712
    const/4 v7, 0x2

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-eqz v7, :cond_87

    const/4 v7, 0x2

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    .line 713
    :goto_23
    const/4 v8, 0x0

    .line 709
    invoke-direct {v9, p1, v10, v7, v8}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v9, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 714
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    .line 722
    :cond_82
    :goto_24
    const/4 v4, 0x1

    goto/16 :goto_15

    .line 707
    :cond_83
    if-gez p5, :cond_18

    if-eqz v4, :cond_80

    goto/16 :goto_15

    .line 708
    :cond_84
    const/4 v7, 0x3

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v7

    if-nez v7, :cond_81

    .line 715
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_88

    .line 716
    new-instance v7, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_24

    .line 710
    :cond_85
    new-instance v7, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    move-object v8, v7

    goto :goto_21

    .line 711
    :cond_86
    new-instance v7, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_22

    .line 712
    :cond_87
    new-instance v7, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_23

    .line 717
    :cond_88
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_89

    .line 718
    new-instance v7, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_24

    .line 719
    :cond_89
    const/4 v7, 0x2

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_82

    .line 720
    new-instance v7, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_24

    .line 732
    :cond_8a
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_19

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v7

    if-nez v7, :cond_8b

    if-eqz p4, :cond_19

    .line 733
    :cond_8b
    if-nez p3, :cond_8c

    move/from16 v0, p5

    if-ne v0, v3, :cond_8f

    .line 734
    :cond_8c
    if-nez p3, :cond_8d

    move/from16 v0, p5

    if-ne v0, v3, :cond_90

    .line 735
    :cond_8d
    new-instance v9, Lcom/android/camera/effect/renders/PipeRenderPair;

    new-instance v10, Lcom/android/camera/effect/renders/PipeRenderPair;

    .line 736
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-eqz v7, :cond_91

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    move-object v8, v7

    .line 737
    :goto_25
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-eqz v7, :cond_92

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    .line 738
    :goto_26
    const/4 v11, 0x0

    .line 735
    invoke-direct {v10, p1, v8, v7, v11}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    .line 738
    const/4 v7, 0x2

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-eqz v7, :cond_93

    const/4 v7, 0x2

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    .line 739
    :goto_27
    const/4 v8, 0x0

    .line 735
    invoke-direct {v9, p1, v10, v7, v8}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v9, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 740
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    .line 748
    :cond_8e
    :goto_28
    const/4 v4, 0x1

    goto/16 :goto_16

    .line 733
    :cond_8f
    if-gez p5, :cond_19

    if-eqz v4, :cond_8c

    goto/16 :goto_16

    .line 734
    :cond_90
    const/4 v7, 0x3

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v7

    if-nez v7, :cond_8d

    .line 741
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_94

    .line 742
    new-instance v7, Lcom/android/camera/effect/renders/XGaussianEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/XGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_28

    .line 736
    :cond_91
    new-instance v7, Lcom/android/camera/effect/renders/XGaussianEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/XGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    move-object v8, v7

    goto :goto_25

    .line 737
    :cond_92
    new-instance v7, Lcom/android/camera/effect/renders/YGaussianEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/YGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_26

    .line 738
    :cond_93
    new-instance v7, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_27

    .line 743
    :cond_94
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_95

    .line 744
    new-instance v7, Lcom/android/camera/effect/renders/YGaussianEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/YGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_28

    .line 745
    :cond_95
    const/4 v7, 0x2

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_8e

    .line 746
    new-instance v7, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v7}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_28

    .line 756
    :cond_96
    invoke-virtual {p2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_1a

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v7

    if-nez v7, :cond_97

    if-eqz p4, :cond_1a

    .line 757
    :cond_97
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v7

    .line 756
    if-eqz v7, :cond_1a

    .line 757
    if-nez p4, :cond_1a

    .line 758
    if-nez p3, :cond_98

    move/from16 v0, p5

    if-ne v0, v3, :cond_99

    .line 759
    :cond_98
    new-instance v7, Lcom/android/camera/effect/renders/FocusPeakingRender;

    invoke-direct {v7, p1, v3}, Lcom/android/camera/effect/renders/FocusPeakingRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v7, v3}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 760
    const/4 v4, 0x1

    goto/16 :goto_17

    .line 758
    :cond_99
    if-gez p5, :cond_1a

    if-eqz v4, :cond_98

    goto/16 :goto_17

    .line 768
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_9a
    throw v2
.end method

.method public getEffectIndexByEntryName(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 856
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 857
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    return v0

    .line 856
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 861
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getEffectRectF()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 331
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v1, v1, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 247
    .local v0, "result":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 248
    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 253
    .local v0, "result":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 254
    return-object v0
.end method

.method public getImageIds()[I
    .locals 3

    .prologue
    .line 258
    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 259
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_0
    return-object v1
.end method

.method public getInvertFlag()I
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mInvertFlag:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mOrientation:I

    return v0
.end method

.method public getSurfacePosition()Lcom/android/camera/effect/EffectController$SurfacePosition;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mSurfacePosition:Lcom/android/camera/effect/EffectController$SurfacePosition;

    return-object v0
.end method

.method public getTiltShiftMaskAlpha()F
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mTiltShiftMaskAlpha:F

    return v0
.end method

.method public hasEffect()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 240
    monitor-enter p0

    .line 241
    :try_start_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initialize()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 98
    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initEffectWeight()V

    .line 100
    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, v1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/effect/EffectController;->getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    .line 95
    return-void
.end method

.method public isBackGroundBlur()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 780
    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v1

    sget v2, Lcom/android/camera/effect/EffectController;->sBackgroundBlurIndex:I

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisplayShow()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayShow:Z

    return v0
.end method

.method public isEffectPageSelected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 234
    monitor-enter p0

    .line 235
    :try_start_0
    iget v1, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    iget v2, p0, Lcom/android/camera/effect/EffectController;->mEffectCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFishEye()Z
    .locals 2

    .prologue
    .line 814
    monitor-enter p0

    .line 815
    :try_start_0
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    sget v1, Lcom/android/camera/effect/EffectController;->sFishEyeIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 814
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isMainFrameDisplay()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mIsDrawMainFrame:Z

    return v0
.end method

.method public isNeedDrawPeaking()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDrawPeaking:Z

    return v0
.end method

.method public isNeedRect(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 355
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 356
    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 357
    .local v0, "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 358
    const/4 v2, 0x1

    return v2

    .line 362
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v1    # "i$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public needDownScale(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 372
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mNeedScaleDownSet:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 374
    .local v0, "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 375
    const/4 v2, 0x1

    return v2

    .line 379
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v1    # "i$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public setBlurEffect(Z)V
    .locals 3
    .param p1, "blured"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 189
    iget-boolean v2, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    if-eq p1, v2, :cond_3

    .line 190
    if-nez p1, :cond_0

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    .line 191
    :cond_0
    iget v2, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-ge v1, v2, :cond_2

    .line 192
    :cond_1
    if-eqz p1, :cond_4

    :goto_0
    iput v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    .line 194
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mIsDrawMainFrame:Z

    .line 196
    :cond_3
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    .line 188
    return-void

    :cond_4
    move v0, v1

    .line 192
    goto :goto_0
.end method

.method public setDeviceRotation(ZF)V
    .locals 0
    .param p1, "isLying"    # Z
    .param p2, "rotation"    # F

    .prologue
    .line 784
    if-eqz p1, :cond_0

    const/high16 p2, -0x40800000    # -1.0f

    .end local p2    # "rotation":F
    :cond_0
    iput p2, p0, Lcom/android/camera/effect/EffectController;->mDeviceRotation:F

    .line 783
    return-void
.end method

.method public setDrawPeaking(Z)V
    .locals 0
    .param p1, "drawPeaking"    # Z

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mDrawPeaking:Z

    .line 225
    return-void
.end method

.method public setEffect(I)V
    .locals 1
    .param p1, "effect"    # I

    .prologue
    .line 183
    monitor-enter p0

    .line 184
    :try_start_0
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 182
    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEffectAttribute(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V
    .locals 1
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "point1"    # Landroid/graphics/PointF;
    .param p3, "point2"    # Landroid/graphics/PointF;
    .param p4, "range"    # F

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 314
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    invoke-virtual {v0, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 315
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    invoke-virtual {v0, p3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 316
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput p4, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRangeWidth:F

    .line 312
    return-void
.end method

.method public setInvertFlag(I)V
    .locals 1
    .param p1, "invert"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput p1, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mInvertFlag:I

    .line 338
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 347
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mOrientation:I

    .line 346
    return-void
.end method

.method public setTiltShiftMaskAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 305
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mTiltShiftMaskAlpha:F

    .line 304
    return-void
.end method
