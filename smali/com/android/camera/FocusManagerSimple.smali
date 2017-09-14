.class public Lcom/android/camera/FocusManagerSimple;
.super Lcom/android/camera/FocusManagerAbstract;
.source "FocusManagerSimple.java"


# direct methods
.method public constructor <init>(IIZI)V
    .locals 1
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I
    .param p3, "mirror"    # Z
    .param p4, "displayOrientation"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/camera/FocusManagerAbstract;-><init>()V

    .line 13
    iput p4, p0, Lcom/android/camera/FocusManagerSimple;->mDisplayOrientation:I

    .line 14
    iput-boolean p3, p0, Lcom/android/camera/FocusManagerSimple;->mMirror:Z

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusManagerSimple;->mInitialized:Z

    .line 12
    return-void
.end method


# virtual methods
.method public canAutoFocus()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 108
    iget-boolean v1, p0, Lcom/android/camera/FocusManagerSimple;->mInitialized:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public canRecord()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 95
    iget v0, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    if-ne v0, v2, :cond_1

    .line 96
    :cond_0
    iput v2, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    .line 97
    const/4 v0, 0x0

    return v0

    .line 99
    :cond_1
    return v1
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    .line 113
    iput-boolean v0, p0, Lcom/android/camera/FocusManagerSimple;->mCancelAutoFocusIfMove:Z

    .line 111
    return-void
.end method

.method public focusPoint()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManagerSimple;->mCancelAutoFocusIfMove:Z

    .line 32
    return-void
.end method

.method public getDefaultFocusAreaHeight()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/android/camera/FocusManagerSimple;->FOCUS_AREA_HEIGHT:I

    return v0
.end method

.method public getDefaultFocusAreaWidth()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/camera/FocusManagerSimple;->FOCUS_AREA_WIDTH:I

    return v0
.end method

.method public getFocusArea(IIII)Ljava/util/List;
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "focusWidth"    # I
    .param p4, "focusHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerSimple;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 47
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v9, "focusArea":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v0, Landroid/hardware/Camera$Area;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget v6, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewHeight:I

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 50
    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManagerSimple;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 53
    return-object v9

    .line 55
    .end local v9    # "focusArea":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMeteringsArea(IIII)Ljava/util/List;
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "focusWidth"    # I
    .param p4, "focusHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerSimple;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 68
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v9, "meteringArea":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v0, Landroid/hardware/Camera$Area;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget v6, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewHeight:I

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 71
    const v3, 0x3fe66666    # 1.8f

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManagerSimple;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 74
    return-object v9

    .line 76
    .end local v9    # "meteringArea":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInValidFocus()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    iget v2, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isNeedCancelAutoFocus()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerSimple;->mCancelAutoFocusIfMove:Z

    return v0
.end method

.method public onAutoFocus(Z)V
    .locals 1
    .param p1, "focused"    # Z

    .prologue
    .line 86
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusManagerSimple;->mCancelAutoFocusIfMove:Z

    .line 85
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public onDeviceKeepMoving()V
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 81
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    .line 79
    :cond_1
    return-void
.end method

.method public resetFocused()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    .line 28
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I

    .prologue
    .line 21
    iget v0, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    .line 22
    :cond_0
    iput p1, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewWidth:I

    .line 23
    iput p2, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewHeight:I

    .line 24
    invoke-virtual {p0}, Lcom/android/camera/FocusManagerSimple;->setMatrix()V

    .line 20
    :cond_1
    return-void
.end method
