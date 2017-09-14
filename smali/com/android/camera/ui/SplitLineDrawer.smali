.class public Lcom/android/camera/ui/SplitLineDrawer;
.super Landroid/view/View;
.source "SplitLineDrawer.java"


# instance fields
.field private mBottomVisible:Z

.field private mColumnCount:I

.field private mLineColor:I

.field private mRowCount:I

.field private mTopVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 13
    iput-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    .line 15
    const v0, 0x33ffffff

    iput v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLineColor:I

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    iput-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    .line 15
    const v0, 0x33ffffff

    iput v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLineColor:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    iput-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    .line 15
    const v0, 0x33ffffff

    iput v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLineColor:I

    .line 21
    return-void
.end method


# virtual methods
.method public initialize(II)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 42
    iput p2, p0, Lcom/android/camera/ui/SplitLineDrawer;->mColumnCount:I

    .line 43
    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    .line 41
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 48
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 49
    .local v5, "paint":Landroid/graphics/Paint;
    iget v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLineColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/camera/ui/SplitLineDrawer;->getWidth()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "w":I
    invoke-virtual {p0}, Lcom/android/camera/ui/SplitLineDrawer;->getHeight()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 51
    .local v6, "h":I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mColumnCount:I

    if-ge v7, v0, :cond_0

    .line 52
    mul-int v0, v7, v8

    iget v1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mColumnCount:I

    div-int/2addr v0, v1

    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-int v0, v7, v8

    iget v3, p0, Lcom/android/camera/ui/SplitLineDrawer;->mColumnCount:I

    div-int/2addr v0, v3

    int-to-float v3, v0

    add-int/lit8 v0, v6, -0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 51
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 55
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    if-eqz v0, :cond_3

    const/4 v9, 0x0

    .line 56
    .local v9, "widthBorder":I
    :goto_1
    const/4 v7, 0x0

    :goto_2
    iget v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    if-gt v7, v0, :cond_6

    .line 57
    if-eqz v7, :cond_4

    iget v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    if-eq v7, v0, :cond_4

    .line 58
    :cond_1
    :goto_3
    int-to-float v1, v9

    mul-int v0, v7, v6

    iget v2, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    div-int/2addr v0, v2

    int-to-float v2, v0

    sub-int v0, v8, v9

    int-to-float v3, v0

    mul-int v0, v7, v6

    iget v4, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    div-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 56
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 55
    .end local v9    # "widthBorder":I
    :cond_3
    const/4 v9, 0x1

    .restart local v9    # "widthBorder":I
    goto :goto_1

    .line 57
    :cond_4
    if-nez v7, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    if-nez v0, :cond_1

    :cond_5
    iget v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    if-ne v7, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    if-eqz v0, :cond_2

    goto :goto_3

    .line 61
    :cond_6
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 47
    return-void
.end method

.method public setBorderVisible(ZZ)V
    .locals 1
    .param p1, "top"    # Z
    .param p2, "bottom"    # Z

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    if-eq v0, p2, :cond_1

    .line 31
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    .line 32
    iput-boolean p2, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    .line 33
    invoke-virtual {p0}, Lcom/android/camera/ui/SplitLineDrawer;->invalidate()V

    .line 29
    :cond_1
    return-void
.end method

.method public setLineColor(I)V
    .locals 0
    .param p1, "lineColor"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLineColor:I

    .line 37
    return-void
.end method
