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
    .line 778
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
    .line 838
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectCount:I

    return v0
.end method

.method public getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 10
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "renderGroup"    # Lcom/android/camera/effect/renders/RenderGroup;
    .param p3, "wholeRender"    # Z
    .param p4, "isSnapShotRender"    # Z
    .param p5, "index"    # I

    .prologue
    .line 393
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v5

    if-nez v5, :cond_0

    .line 394
    const/4 v5, 0x0

    return-object v5

    .line 397
    :cond_0
    if-nez p1, :cond_1c

    const/4 v0, 0x1

    .line 399
    .local v0, "addEntry":Z
    :goto_0
    const/4 v2, 0x0

    .line 400
    .local v2, "initOne":Z
    if-nez p1, :cond_1d

    .line 401
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    .line 402
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    .line 403
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    .line 404
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    .line 405
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    .line 406
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/camera/effect/EffectController;->mNeedScaleDownSet:Ljava/util/ArrayList;

    .line 407
    const/4 v0, 0x1

    .line 419
    :cond_1
    const/4 v1, 0x0

    .line 420
    .local v1, "id":I
    if-eqz v0, :cond_1f

    .line 421
    const v5, 0x7f0e009a

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 422
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f02002e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 431
    if-eqz v0, :cond_22

    .line 432
    const v5, 0x7f0e0094

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 433
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020028

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_instagram_rise_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 443
    if-eqz v0, :cond_26

    .line 444
    const v5, 0x7f0e008f

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 445
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020025

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_instagram_clarendon_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 455
    if-eqz v0, :cond_2a

    .line 456
    const v5, 0x7f0e0090

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 457
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020026

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_instagram_crema_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 467
    if-eqz v0, :cond_2e

    .line 468
    const v5, 0x7f0e0095

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 469
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020027

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_instagram_hudson_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_6
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 479
    if-eqz v0, :cond_32

    .line 480
    const v5, 0x7f0e009c

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 481
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020031

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_vivid_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_7
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 491
    if-eqz v0, :cond_36

    .line 492
    const v5, 0x7f0e0092

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 493
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020032

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_vsco_a4_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_8
    :goto_7
    add-int/lit8 v1, v1, 0x1

    .line 503
    if-eqz v0, :cond_3a

    .line 504
    const v5, 0x7f0e0091

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 505
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020033

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_vsco_f2_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_9
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 515
    if-eqz v0, :cond_3e

    .line 516
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mNeedScaleDownSet:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    const v5, 0x7f0e009b

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 518
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f02002c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_gray_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_a
    :goto_9
    add-int/lit8 v1, v1, 0x1

    .line 531
    if-eqz v0, :cond_42

    .line 532
    const v5, 0x7f0e0093

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 533
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020023

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_blackwhite_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_b
    :goto_a
    add-int/lit8 v1, v1, 0x1

    .line 543
    if-eqz v0, :cond_46

    .line 544
    const v5, 0x7f0e009d

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 545
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f02002f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_sketch_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_c
    :goto_b
    if-eqz v0, :cond_d

    .line 565
    sput v1, Lcom/android/camera/effect/EffectController;->sDividerIndex:I

    .line 569
    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 570
    if-eqz v0, :cond_50

    .line 571
    const v5, 0x7f0e0096

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 572
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020022

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_big_face_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_e
    :goto_c
    add-int/lit8 v1, v1, 0x1

    .line 582
    if-eqz v0, :cond_54

    .line 583
    const v5, 0x7f0e0097

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 584
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020030

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_small_face_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    :cond_f
    :goto_d
    add-int/lit8 v1, v1, 0x1

    .line 594
    if-eqz v0, :cond_58

    .line 595
    const v5, 0x7f0e0098

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 596
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f02002a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_long_face_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_10
    :goto_e
    add-int/lit8 v1, v1, 0x1

    .line 606
    if-eqz v0, :cond_5c

    .line 607
    sput v1, Lcom/android/camera/effect/EffectController;->sFishEyeIndex:I

    .line 608
    const v5, 0x7f0e009e

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 609
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020024

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_fisheye_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_11
    :goto_f
    add-int/lit8 v1, v1, 0x1

    .line 619
    if-eqz v0, :cond_60

    .line 620
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    const v5, 0x7f0e009f

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 622
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f02002d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_mosaic_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_12
    :goto_10
    add-int/lit8 v1, v1, 0x1

    .line 633
    if-eqz v0, :cond_64

    .line 634
    const v5, 0x7f0e00a0

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 635
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f02002b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_mirror_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    :cond_13
    :goto_11
    add-int/lit8 v1, v1, 0x1

    .line 645
    if-eqz v0, :cond_68

    .line 646
    const v5, 0x7f0e0099

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 647
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020029

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_light_tunnel_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_14
    :goto_12
    if-eqz v0, :cond_15

    .line 657
    const/16 v5, 0x12

    iput v5, p0, Lcom/android/camera/effect/EffectController;->mEffectCount:I

    .line 661
    :cond_15
    add-int/lit8 v1, v1, 0x1

    .line 662
    if-eqz v0, :cond_6c

    .line 663
    sput v1, Lcom/android/camera/effect/EffectController;->sBackgroundBlurIndex:I

    .line 688
    :cond_16
    :goto_13
    add-int/lit8 v1, v1, 0x1

    .line 689
    if-eqz v0, :cond_7a

    .line 690
    sput v1, Lcom/android/camera/effect/EffectController;->sGradienterIndex:I

    .line 700
    :cond_17
    :goto_14
    add-int/lit8 v1, v1, 0x1

    .line 701
    if-eqz v0, :cond_7f

    .line 702
    sput v1, Lcom/android/camera/effect/EffectController;->sTiltShiftIndex:I

    .line 703
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    :cond_18
    :goto_15
    const-string/jumbo v5, "is_camera_replace_higher_cost_effect"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_19

    .line 727
    add-int/lit8 v1, v1, 0x1

    .line 728
    if-eqz v0, :cond_8a

    .line 729
    sput v1, Lcom/android/camera/effect/EffectController;->sGaussianIndex:I

    .line 730
    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    :cond_19
    :goto_16
    add-int/lit8 v1, v1, 0x1

    .line 753
    if-eqz v0, :cond_96

    .line 754
    sput v1, Lcom/android/camera/effect/EffectController;->sPeakingMFIndex:I

    .line 763
    :cond_1a
    :goto_17
    if-eqz v0, :cond_1b

    .line 764
    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/android/camera/effect/EffectController;->mEffectGroupSize:I

    .line 766
    :cond_1b
    return-object p2

    .line 397
    .end local v0    # "addEntry":Z
    .end local v1    # "id":I
    .end local v2    # "initOne":Z
    :cond_1c
    const/4 v0, 0x0

    .restart local v0    # "addEntry":Z
    goto/16 :goto_0

    .line 409
    .restart local v2    # "initOne":Z
    :cond_1d
    if-nez p2, :cond_1e

    .line 410
    new-instance p2, Lcom/android/camera/effect/renders/RenderGroup;

    .end local p2    # "renderGroup":Lcom/android/camera/effect/renders/RenderGroup;
    iget v5, p0, Lcom/android/camera/effect/EffectController;->mEffectGroupSize:I

    invoke-direct {p2, p1, v5}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 411
    .restart local p2    # "renderGroup":Lcom/android/camera/effect/renders/RenderGroup;
    if-nez p3, :cond_1

    if-gez p5, :cond_1

    return-object p2

    .line 412
    :cond_1e
    invoke-virtual {p2, p5}, Lcom/android/camera/effect/renders/RenderGroup;->isNeedInit(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 413
    return-object p2

    .line 424
    .restart local v1    # "id":I
    :cond_1f
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_2

    .line 425
    if-nez p3, :cond_20

    if-nez p5, :cond_21

    .line 426
    :cond_20
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    goto/16 :goto_1

    .line 425
    :cond_21
    if-gez p5, :cond_2

    if-eqz v2, :cond_20

    goto/16 :goto_1

    .line 435
    :cond_22
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_23

    if-eqz p4, :cond_3

    .line 436
    :cond_23
    if-nez p3, :cond_24

    if-ne p5, v1, :cond_25

    .line 437
    :cond_24
    invoke-static {p1, v1}, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->create(Lcom/android/gallery3d/ui/GLCanvas;I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 438
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 436
    :cond_25
    if-gez p5, :cond_3

    if-eqz v2, :cond_24

    goto/16 :goto_2

    .line 447
    :cond_26
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_27

    if-eqz p4, :cond_4

    .line 448
    :cond_27
    if-nez p3, :cond_28

    if-ne p5, v1, :cond_29

    .line 449
    :cond_28
    invoke-static {p1, v1}, Lcom/android/camera/effect/renders/InstagramClarendonEffectRender;->create(Lcom/android/gallery3d/ui/GLCanvas;I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 450
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 448
    :cond_29
    if-gez p5, :cond_4

    if-eqz v2, :cond_28

    goto/16 :goto_3

    .line 459
    :cond_2a
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_2b

    if-eqz p4, :cond_5

    .line 460
    :cond_2b
    if-nez p3, :cond_2c

    if-ne p5, v1, :cond_2d

    .line 461
    :cond_2c
    invoke-static {p1, v1}, Lcom/android/camera/effect/renders/InstagramCremaEffectRender;->create(Lcom/android/gallery3d/ui/GLCanvas;I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 462
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 460
    :cond_2d
    if-gez p5, :cond_5

    if-eqz v2, :cond_2c

    goto/16 :goto_4

    .line 471
    :cond_2e
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_2f

    if-eqz p4, :cond_6

    .line 472
    :cond_2f
    if-nez p3, :cond_30

    if-ne p5, v1, :cond_31

    .line 473
    :cond_30
    invoke-static {p1, v1}, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->create(Lcom/android/gallery3d/ui/GLCanvas;I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 474
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 472
    :cond_31
    if-gez p5, :cond_6

    if-eqz v2, :cond_30

    goto/16 :goto_5

    .line 483
    :cond_32
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_33

    if-eqz p4, :cond_7

    .line 484
    :cond_33
    if-nez p3, :cond_34

    if-ne p5, v1, :cond_35

    .line 485
    :cond_34
    new-instance v5, Lcom/android/camera/effect/renders/VividEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/VividEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 486
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 484
    :cond_35
    if-gez p5, :cond_7

    if-eqz v2, :cond_34

    goto/16 :goto_6

    .line 495
    :cond_36
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_8

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_37

    if-eqz p4, :cond_8

    .line 496
    :cond_37
    if-nez p3, :cond_38

    if-ne p5, v1, :cond_39

    .line 497
    :cond_38
    invoke-static {p1, v1}, Lcom/android/camera/effect/renders/VscoA4EffectRender;->create(Lcom/android/gallery3d/ui/GLCanvas;I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 498
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 496
    :cond_39
    if-gez p5, :cond_8

    if-eqz v2, :cond_38

    goto/16 :goto_7

    .line 507
    :cond_3a
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_9

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_3b

    if-eqz p4, :cond_9

    .line 508
    :cond_3b
    if-nez p3, :cond_3c

    if-ne p5, v1, :cond_3d

    .line 509
    :cond_3c
    new-instance v5, Lcom/android/camera/effect/renders/VscoF2EffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/VscoF2EffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 510
    const/4 v2, 0x1

    goto/16 :goto_8

    .line 508
    :cond_3d
    if-gez p5, :cond_9

    if-eqz v2, :cond_3c

    goto/16 :goto_8

    .line 520
    :cond_3e
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_a

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_3f

    if-eqz p4, :cond_a

    .line 521
    :cond_3f
    if-nez p3, :cond_40

    if-ne p5, v1, :cond_41

    .line 525
    :cond_40
    new-instance v5, Lcom/android/camera/effect/renders/GrayEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/GrayEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 526
    const/4 v2, 0x1

    goto/16 :goto_9

    .line 521
    :cond_41
    if-gez p5, :cond_a

    if-eqz v2, :cond_40

    goto/16 :goto_9

    .line 535
    :cond_42
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_b

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_43

    if-eqz p4, :cond_b

    .line 536
    :cond_43
    if-nez p3, :cond_44

    if-ne p5, v1, :cond_45

    .line 537
    :cond_44
    new-instance v5, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 538
    const/4 v2, 0x1

    goto/16 :goto_a

    .line 536
    :cond_45
    if-gez p5, :cond_b

    if-eqz v2, :cond_44

    goto/16 :goto_a

    .line 547
    :cond_46
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_c

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_47

    if-eqz p4, :cond_c

    .line 548
    :cond_47
    if-nez p3, :cond_48

    if-ne p5, v1, :cond_4b

    .line 549
    :cond_48
    if-nez p3, :cond_49

    if-ne p5, v1, :cond_4c

    .line 550
    :cond_49
    new-instance v7, Lcom/android/camera/effect/renders/PipeRenderPair;

    .line 551
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-eqz v5, :cond_4d

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    .line 552
    :goto_18
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v6

    if-eqz v6, :cond_4e

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v6

    .line 553
    :goto_19
    const/4 v8, 0x0

    .line 550
    invoke-direct {v7, p1, v5, v6, v8}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v7, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 554
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    .line 560
    :cond_4a
    :goto_1a
    const/4 v2, 0x1

    goto/16 :goto_b

    .line 548
    :cond_4b
    if-gez p5, :cond_c

    if-eqz v2, :cond_48

    goto/16 :goto_b

    .line 549
    :cond_4c
    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v5

    if-nez v5, :cond_49

    .line 555
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_4f

    .line 556
    new-instance v5, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_1a

    .line 551
    :cond_4d
    new-instance v5, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_18

    .line 552
    :cond_4e
    new-instance v6, Lcom/android/camera/effect/renders/SketchEffectRender;

    invoke-direct {v6, p1, v1}, Lcom/android/camera/effect/renders/SketchEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_19

    .line 557
    :cond_4f
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_4a

    .line 558
    new-instance v5, Lcom/android/camera/effect/renders/SketchEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/SketchEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_1a

    .line 574
    :cond_50
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_e

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_51

    if-eqz p4, :cond_e

    .line 575
    :cond_51
    if-nez p3, :cond_52

    if-ne p5, v1, :cond_53

    .line 576
    :cond_52
    new-instance v5, Lcom/android/camera/effect/renders/BigFaceEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/BigFaceEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 577
    const/4 v2, 0x1

    goto/16 :goto_c

    .line 575
    :cond_53
    if-gez p5, :cond_e

    if-eqz v2, :cond_52

    goto/16 :goto_c

    .line 586
    :cond_54
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_f

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_55

    if-eqz p4, :cond_f

    .line 587
    :cond_55
    if-nez p3, :cond_56

    if-ne p5, v1, :cond_57

    .line 588
    :cond_56
    new-instance v5, Lcom/android/camera/effect/renders/SmallFaceEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/SmallFaceEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 589
    const/4 v2, 0x1

    goto/16 :goto_d

    .line 587
    :cond_57
    if-gez p5, :cond_f

    if-eqz v2, :cond_56

    goto/16 :goto_d

    .line 598
    :cond_58
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_10

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_59

    if-eqz p4, :cond_10

    .line 599
    :cond_59
    if-nez p3, :cond_5a

    if-ne p5, v1, :cond_5b

    .line 600
    :cond_5a
    new-instance v5, Lcom/android/camera/effect/renders/LongFaceEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/LongFaceEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 601
    const/4 v2, 0x1

    goto/16 :goto_e

    .line 599
    :cond_5b
    if-gez p5, :cond_10

    if-eqz v2, :cond_5a

    goto/16 :goto_e

    .line 611
    :cond_5c
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_11

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_5d

    if-eqz p4, :cond_11

    .line 612
    :cond_5d
    if-nez p3, :cond_5e

    if-ne p5, v1, :cond_5f

    .line 613
    :cond_5e
    new-instance v5, Lcom/android/camera/effect/renders/FishEyeEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/FishEyeEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 614
    const/4 v2, 0x1

    goto/16 :goto_f

    .line 612
    :cond_5f
    if-gez p5, :cond_11

    if-eqz v2, :cond_5e

    goto/16 :goto_f

    .line 624
    :cond_60
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_12

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_61

    if-eqz p4, :cond_12

    .line 625
    :cond_61
    if-nez p3, :cond_62

    if-ne p5, v1, :cond_63

    .line 626
    :cond_62
    new-instance v5, Lcom/android/camera/effect/renders/MosaicEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/MosaicEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 627
    const/4 v2, 0x1

    goto/16 :goto_10

    .line 625
    :cond_63
    if-gez p5, :cond_12

    if-eqz v2, :cond_62

    goto/16 :goto_10

    .line 637
    :cond_64
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_13

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_65

    if-eqz p4, :cond_13

    .line 638
    :cond_65
    if-nez p3, :cond_66

    if-ne p5, v1, :cond_67

    .line 639
    :cond_66
    new-instance v5, Lcom/android/camera/effect/renders/MirrorEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/MirrorEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 640
    const/4 v2, 0x1

    goto/16 :goto_11

    .line 638
    :cond_67
    if-gez p5, :cond_13

    if-eqz v2, :cond_66

    goto/16 :goto_11

    .line 649
    :cond_68
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_14

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_69

    if-eqz p4, :cond_14

    .line 650
    :cond_69
    if-nez p3, :cond_6a

    if-ne p5, v1, :cond_6b

    .line 651
    :cond_6a
    new-instance v5, Lcom/android/camera/effect/renders/LightTunnelEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/LightTunnelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 652
    const/4 v2, 0x1

    goto/16 :goto_12

    .line 650
    :cond_6b
    if-gez p5, :cond_14

    if-eqz v2, :cond_6a

    goto/16 :goto_12

    .line 664
    :cond_6c
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_16

    .line 665
    if-nez p3, :cond_6d

    if-ne p5, v1, :cond_71

    .line 666
    :cond_6d
    if-nez p3, :cond_6e

    if-ne p5, v1, :cond_72

    .line 667
    :cond_6e
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-eqz v5, :cond_74

    .line 668
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/renders/Render;->getId()I

    move-result v5

    if-ne v5, v1, :cond_73

    const/4 v3, 0x1

    .line 669
    .local v3, "matchPartRender0":Z
    :goto_1b
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-eqz v5, :cond_76

    .line 670
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/renders/Render;->getId()I

    move-result v5

    if-ne v5, v1, :cond_75

    const/4 v4, 0x1

    .line 672
    .local v4, "matchPartRender1":Z
    :goto_1c
    new-instance v7, Lcom/android/camera/effect/renders/PipeRenderPair;

    .line 673
    if-eqz v3, :cond_77

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    move-object v6, v5

    .line 674
    :goto_1d
    if-eqz v4, :cond_78

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    .line 675
    :goto_1e
    const/4 v8, 0x0

    .line 672
    invoke-direct {v7, p1, v6, v5, v8}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v7, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 676
    if-nez v3, :cond_6f

    if-eqz v4, :cond_70

    .line 677
    :cond_6f
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    .line 684
    .end local v3    # "matchPartRender0":Z
    .end local v4    # "matchPartRender1":Z
    :cond_70
    :goto_1f
    const/4 v2, 0x1

    goto/16 :goto_13

    .line 665
    :cond_71
    if-gez p5, :cond_16

    if-eqz v2, :cond_6d

    goto/16 :goto_13

    .line 666
    :cond_72
    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v5

    if-nez v5, :cond_6e

    .line 679
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_79

    .line 680
    new-instance v5, Lcom/android/camera/effect/renders/XBlurEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/XBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_1f

    .line 668
    :cond_73
    const/4 v3, 0x0

    .restart local v3    # "matchPartRender0":Z
    goto :goto_1b

    .line 667
    .end local v3    # "matchPartRender0":Z
    :cond_74
    const/4 v3, 0x0

    .restart local v3    # "matchPartRender0":Z
    goto :goto_1b

    .line 670
    :cond_75
    const/4 v4, 0x0

    .restart local v4    # "matchPartRender1":Z
    goto :goto_1c

    .line 669
    .end local v4    # "matchPartRender1":Z
    :cond_76
    const/4 v4, 0x0

    .restart local v4    # "matchPartRender1":Z
    goto :goto_1c

    .line 673
    :cond_77
    new-instance v5, Lcom/android/camera/effect/renders/XBlurEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/XBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    move-object v6, v5

    goto :goto_1d

    .line 674
    :cond_78
    new-instance v5, Lcom/android/camera/effect/renders/YBlurEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/YBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_1e

    .line 681
    .end local v3    # "matchPartRender0":Z
    .end local v4    # "matchPartRender1":Z
    :cond_79
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_70

    .line 682
    new-instance v5, Lcom/android/camera/effect/renders/YBlurEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/YBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_1f

    .line 691
    :cond_7a
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_17

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_7b

    if-eqz p4, :cond_17

    .line 692
    :cond_7b
    if-nez p3, :cond_7c

    if-ne p5, v1, :cond_7d

    .line 693
    :cond_7c
    if-eqz p4, :cond_7e

    .line 694
    new-instance v5, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 693
    :goto_20
    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 696
    const/4 v2, 0x1

    goto/16 :goto_14

    .line 692
    :cond_7d
    if-gez p5, :cond_17

    if-eqz v2, :cond_7c

    goto/16 :goto_14

    .line 695
    :cond_7e
    new-instance v5, Lcom/android/camera/effect/renders/GradienterEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/GradienterEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_20

    .line 704
    :cond_7f
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_18

    .line 705
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTiltShift()Z

    move-result v5

    .line 704
    if-eqz v5, :cond_18

    .line 706
    if-nez p3, :cond_80

    if-ne p5, v1, :cond_83

    .line 707
    :cond_80
    if-nez p3, :cond_81

    if-ne p5, v1, :cond_84

    .line 708
    :cond_81
    new-instance v7, Lcom/android/camera/effect/renders/PipeRenderPair;

    new-instance v8, Lcom/android/camera/effect/renders/PipeRenderPair;

    .line 709
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-eqz v5, :cond_85

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    .line 710
    :goto_21
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v6

    if-eqz v6, :cond_86

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v6

    .line 711
    :goto_22
    const/4 v9, 0x0

    .line 708
    invoke-direct {v8, p1, v5, v6, v9}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    .line 711
    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-eqz v5, :cond_87

    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    .line 712
    :goto_23
    const/4 v6, 0x0

    .line 708
    invoke-direct {v7, p1, v8, v5, v6}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v7, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 713
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    .line 721
    :cond_82
    :goto_24
    const/4 v2, 0x1

    goto/16 :goto_15

    .line 706
    :cond_83
    if-gez p5, :cond_18

    if-eqz v2, :cond_80

    goto/16 :goto_15

    .line 707
    :cond_84
    const/4 v5, 0x3

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v5

    if-nez v5, :cond_81

    .line 714
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_88

    .line 715
    new-instance v5, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_24

    .line 709
    :cond_85
    new-instance v5, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_21

    .line 710
    :cond_86
    new-instance v6, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;

    invoke-direct {v6, p1, v1}, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_22

    .line 711
    :cond_87
    new-instance v5, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_23

    .line 716
    :cond_88
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_89

    .line 717
    new-instance v5, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_24

    .line 718
    :cond_89
    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_82

    .line 719
    new-instance v5, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_24

    .line 731
    :cond_8a
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_19

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_8b

    if-eqz p4, :cond_19

    .line 732
    :cond_8b
    if-nez p3, :cond_8c

    if-ne p5, v1, :cond_8f

    .line 733
    :cond_8c
    if-nez p3, :cond_8d

    if-ne p5, v1, :cond_90

    .line 734
    :cond_8d
    new-instance v7, Lcom/android/camera/effect/renders/PipeRenderPair;

    new-instance v8, Lcom/android/camera/effect/renders/PipeRenderPair;

    .line 735
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-eqz v5, :cond_91

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    .line 736
    :goto_25
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v6

    if-eqz v6, :cond_92

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v6

    .line 737
    :goto_26
    const/4 v9, 0x0

    .line 734
    invoke-direct {v8, p1, v5, v6, v9}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    .line 737
    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-eqz v5, :cond_93

    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    .line 738
    :goto_27
    const/4 v6, 0x0

    .line 734
    invoke-direct {v7, p1, v8, v5, v6}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v7, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 739
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    .line 747
    :cond_8e
    :goto_28
    const/4 v2, 0x1

    goto/16 :goto_16

    .line 732
    :cond_8f
    if-gez p5, :cond_19

    if-eqz v2, :cond_8c

    goto/16 :goto_16

    .line 733
    :cond_90
    const/4 v5, 0x3

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v5

    if-nez v5, :cond_8d

    .line 740
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_94

    .line 741
    new-instance v5, Lcom/android/camera/effect/renders/XGaussianEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/XGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_28

    .line 735
    :cond_91
    new-instance v5, Lcom/android/camera/effect/renders/XGaussianEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/XGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_25

    .line 736
    :cond_92
    new-instance v6, Lcom/android/camera/effect/renders/YGaussianEffectRender;

    invoke-direct {v6, p1, v1}, Lcom/android/camera/effect/renders/YGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_26

    .line 737
    :cond_93
    new-instance v5, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_27

    .line 742
    :cond_94
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_95

    .line 743
    new-instance v5, Lcom/android/camera/effect/renders/YGaussianEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/YGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_28

    .line 744
    :cond_95
    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_8e

    .line 745
    new-instance v5, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_28

    .line 755
    :cond_96
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_1a

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_97

    if-eqz p4, :cond_1a

    .line 756
    :cond_97
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v5

    .line 755
    if-eqz v5, :cond_1a

    .line 756
    if-nez p4, :cond_1a

    .line 757
    if-nez p3, :cond_98

    if-ne p5, v1, :cond_99

    .line 758
    :cond_98
    new-instance v5, Lcom/android/camera/effect/renders/FocusPeakingRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/FocusPeakingRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    .line 759
    const/4 v2, 0x1

    goto/16 :goto_17

    .line 757
    :cond_99
    if-gez p5, :cond_1a

    if-eqz v2, :cond_98

    goto/16 :goto_17
.end method

.method public getEffectIndexByEntryName(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 846
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 847
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 848
    return v0

    .line 846
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 851
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

    .line 770
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
    .line 804
    monitor-enter p0

    .line 805
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

    .line 804
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
    .line 774
    if-eqz p1, :cond_0

    const/high16 p2, -0x40800000    # -1.0f

    .end local p2    # "rotation":F
    :cond_0
    iput p2, p0, Lcom/android/camera/effect/EffectController;->mDeviceRotation:F

    .line 773
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
