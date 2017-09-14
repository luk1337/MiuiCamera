.class public abstract Lcom/android/camera/FocusManagerAbstract;
.super Ljava/lang/Object;
.source "FocusManagerAbstract.java"


# instance fields
.field protected final FOCUS_AREA_HEIGHT:I

.field protected final FOCUS_AREA_SCALE:F

.field protected final FOCUS_AREA_WIDTH:I

.field protected final METERING_AREA_SCALE:F

.field protected mCancelAutoFocusIfMove:Z

.field protected mDisplayOrientation:I

.field protected mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field protected mInitialized:Z

.field protected mMatrix:Landroid/graphics/Matrix;

.field protected mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field protected mMirror:Z

.field protected mPreviewChangeMatrix:Landroid/graphics/Matrix;

.field protected mPreviewHeight:I

.field protected mPreviewWidth:I

.field protected mRenderHeight:I

.field protected mRenderWidth:I

.field protected mState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mMatrix:Landroid/graphics/Matrix;

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewChangeMatrix:Landroid/graphics/Matrix;

    .line 42
    iput-boolean v1, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    .line 52
    iput v1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    .line 55
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 54
    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    .line 57
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 56
    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_SCALE:F

    .line 59
    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->METERING_AREA_SCALE:F

    .line 25
    return-void
.end method


# virtual methods
.method protected calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10
    .param p1, "focusWidth"    # I
    .param p2, "focusHeight"    # I
    .param p3, "areaMultiple"    # F
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "previewWidth"    # I
    .param p7, "previewHeight"    # I
    .param p8, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 91
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 92
    .local v2, "areaWidth":I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 93
    .local v1, "areaHeight":I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    sub-int v7, p6, v2

    const/4 v8, 0x0

    invoke-static {v6, v8, v7}, Lcom/android/camera/Util;->clamp(III)I

    move-result v3

    .line 94
    .local v3, "left":I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    sub-int v7, p7, v1

    const/4 v8, 0x0

    invoke-static {v6, v8, v7}, Lcom/android/camera/Util;->clamp(III)I

    move-result v5

    .line 95
    .local v5, "top":I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 96
    .local v4, "rectF":Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/camera/FocusManagerAbstract;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 97
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/camera/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 90
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .param p1, "displayOrientation"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/android/camera/FocusManagerAbstract;->mDisplayOrientation:I

    .line 107
    invoke-virtual {p0}, Lcom/android/camera/FocusManagerAbstract;->setMatrix()V

    .line 105
    return-void
.end method

.method protected setMatrix()V
    .locals 8

    .prologue
    const v7, 0x3f19999a    # 0.6f

    .line 62
    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    if-eqz v1, :cond_0

    .line 63
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 64
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-boolean v1, p0, Lcom/android/camera/FocusManagerAbstract;->mMirror:Z

    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->mDisplayOrientation:I

    .line 65
    iget v3, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderWidth:I

    iget v4, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderHeight:I

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    div-int/lit8 v6, v6, 0x2

    .line 64
    invoke-static/range {v0 .. v6}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V

    .line 69
    iget-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 72
    iget-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewChangeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 73
    iget-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewChangeMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 74
    iget-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewChangeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 75
    iget-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewChangeMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    .line 61
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "mirror"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/camera/FocusManagerAbstract;->mMirror:Z

    .line 102
    invoke-virtual {p0}, Lcom/android/camera/FocusManagerAbstract;->setMatrix()V

    .line 100
    return-void
.end method

.method public setRenderSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 82
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderHeight:I

    if-eq p2, v0, :cond_1

    .line 83
    :cond_0
    iput p1, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderWidth:I

    .line 84
    iput p2, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderHeight:I

    .line 85
    invoke-virtual {p0}, Lcom/android/camera/FocusManagerAbstract;->setMatrix()V

    .line 81
    :cond_1
    return-void
.end method
