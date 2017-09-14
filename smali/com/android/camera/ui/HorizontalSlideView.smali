.class public Lcom/android/camera/ui/HorizontalSlideView;
.super Landroid/view/View;
.source "HorizontalSlideView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/HorizontalSlideView$1;,
        Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;,
        Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;
    }
.end annotation


# instance fields
.field private mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaxX:I

.field private mMinX:I

.field private mNeedJustify:Z

.field private mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

.field private mOriginX:F

.field private mPositionX:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectedItemIndex:I


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/HorizontalSlideView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/HorizontalSlideView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/HorizontalSlideView;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/HorizontalSlideView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/HorizontalSlideView;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/HorizontalSlideView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .locals 0
    .param p1, "velocityX"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->flingX(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->scroll(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .locals 0
    .param p1, "positionX"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->setPositionX(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 13
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 21
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    .line 22
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    .line 26
    new-instance v0, Lcom/android/camera/ui/HorizontalSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView$1;-><init>(Lcom/android/camera/ui/HorizontalSlideView;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->init(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 21
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    .line 22
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    .line 26
    new-instance v0, Lcom/android/camera/ui/HorizontalSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView$1;-><init>(Lcom/android/camera/ui/HorizontalSlideView;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->init(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 21
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    .line 22
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    .line 26
    new-instance v0, Lcom/android/camera/ui/HorizontalSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView$1;-><init>(Lcom/android/camera/ui/HorizontalSlideView;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->init(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method private flingX(I)V
    .locals 9
    .param p1, "velocityX"    # I

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iget v5, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iget v6, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 170
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    .line 168
    return-void
.end method

.method private getItemGap(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->measureGap(I)F

    move-result v0

    return v0
.end method

.method private getItemWidth(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->measureWidth(I)F

    move-result v0

    return v0
.end method

.method private scroll(I)V
    .locals 3
    .param p1, "distance"    # I

    .prologue
    const/4 v2, 0x0

    .line 174
    if-eqz p1, :cond_1

    .line 175
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    if-ge v0, v1, :cond_2

    .line 176
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    sub-int p1, v0, v1

    .line 180
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    invoke-virtual {v0, v1, v2, p1, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 181
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    .line 173
    :cond_1
    return-void

    .line 177
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    if-le v0, v1, :cond_0

    .line 178
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    sub-int p1, v0, v1

    goto :goto_0
.end method

.method private select(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 130
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    if-eq v0, p1, :cond_0

    .line 131
    iput p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    invoke-interface {v0, p0, v1}, Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;->onItemSelect(Lcom/android/camera/ui/HorizontalSlideView;I)V

    .line 129
    :cond_0
    return-void
.end method

.method private setPositionX(I)V
    .locals 2
    .param p1, "positionX"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 160
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    if-ge v0, v1, :cond_1

    .line 161
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 165
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    .line 158
    return-void

    .line 162
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    if-le v0, v1, :cond_0

    .line 163
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    goto :goto_0
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 61
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    .line 59
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->getCurrX()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    .line 200
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v15, v17, v18

    .line 201
    .local v15, "startX":F
    const/4 v6, 0x0

    .line 202
    .local v6, "drawLeftX":F
    move v4, v15

    .line 203
    .local v4, "drawCenterX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/HorizontalSlideView;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v5, v17, v18

    .line 204
    .local v5, "drawCenterY":F
    const/4 v13, 0x1

    .line 205
    .local v13, "nearestUnFound":Z
    const/4 v12, 0x0

    .line 207
    .local v12, "nearestDistance":F
    const/4 v11, 0x0

    .local v11, "leftHalfMargin":F
    const/4 v14, 0x0

    .line 208
    .local v14, "rightHalfMargin":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    .line 209
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_a

    .line 210
    if-nez v8, :cond_3

    const/4 v9, 0x1

    .line 211
    .local v9, "isFirst":Z
    :goto_1
    add-int/lit8 v17, v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/4 v10, 0x1

    .line 212
    .local v10, "isLast":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->getItemWidth(I)F

    move-result v16

    .line 213
    .local v16, "width":F
    const/high16 v17, 0x40000000    # 2.0f

    div-float v7, v16, v17

    .line 214
    .local v7, "halfWidth":F
    if-eqz v9, :cond_5

    const/4 v11, 0x0

    .line 215
    :goto_3
    if-eqz v10, :cond_6

    const/4 v14, 0x0

    .line 217
    :goto_4
    if-eqz v9, :cond_1

    sub-float v6, v15, v7

    .line 218
    :cond_1
    if-eqz v9, :cond_7

    move v4, v15

    .line 220
    :goto_5
    if-eqz v13, :cond_2

    .line 221
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    move/from16 v17, v0

    sub-float v3, v4, v17

    .line 222
    .local v3, "distance":F
    const/16 v17, 0x0

    cmpg-float v17, v3, v17

    if-gtz v17, :cond_8

    neg-float v0, v3

    move/from16 v17, v0

    add-float v18, v7, v14

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_8

    .line 224
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->select(I)V

    .line 225
    const/4 v13, 0x0

    .line 226
    move v12, v3

    .line 230
    .end local v3    # "distance":F
    :cond_2
    if-eqz v10, :cond_9

    const/16 v17, 0x0

    :goto_7
    add-float v6, v6, v17

    .line 209
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 210
    .end local v7    # "halfWidth":F
    .end local v9    # "isFirst":Z
    .end local v10    # "isLast":Z
    .end local v16    # "width":F
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "isFirst":Z
    goto :goto_1

    .line 211
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "isLast":Z
    goto :goto_2

    .line 214
    .restart local v7    # "halfWidth":F
    .restart local v16    # "width":F
    :cond_5
    move v11, v14

    goto :goto_3

    .line 215
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v14, v17, v18

    goto :goto_4

    .line 218
    :cond_7
    add-float v4, v6, v7

    goto :goto_5

    .line 223
    .restart local v3    # "distance":F
    :cond_8
    const/16 v17, 0x0

    cmpl-float v17, v3, v17

    if-lez v17, :cond_2

    add-float v17, v7, v11

    cmpg-float v17, v3, v17

    if-gtz v17, :cond_2

    goto :goto_6

    .line 230
    .end local v3    # "distance":F
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v17

    add-float v17, v17, v16

    goto :goto_7

    .line 233
    .end local v7    # "halfWidth":F
    .end local v9    # "isFirst":Z
    .end local v10    # "isLast":Z
    .end local v16    # "width":F
    :cond_a
    sub-float v17, v4, v15

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    .line 235
    const/4 v8, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_14

    .line 236
    if-nez v8, :cond_d

    const/4 v9, 0x1

    .line 237
    .restart local v9    # "isFirst":Z
    :goto_9
    add-int/lit8 v17, v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    const/4 v10, 0x1

    .line 238
    .restart local v10    # "isLast":Z
    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->getItemWidth(I)F

    move-result v16

    .line 239
    .restart local v16    # "width":F
    const/high16 v17, 0x40000000    # 2.0f

    div-float v7, v16, v17

    .line 241
    .restart local v7    # "halfWidth":F
    if-eqz v9, :cond_b

    sub-float v6, v15, v7

    .line 242
    :cond_b
    if-eqz v9, :cond_f

    move v4, v15

    .line 244
    :goto_b
    add-float v17, v6, v16

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-ltz v17, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/HorizontalSlideView;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v6, v17

    if-gtz v17, :cond_c

    .line 245
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v17

    sget-object v18, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 247
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 253
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v8, :cond_12

    const/16 v17, 0x1

    :goto_d
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->draw(ILandroid/graphics/Canvas;Z)V

    .line 254
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 257
    :cond_c
    if-eqz v10, :cond_13

    const/16 v17, 0x0

    :goto_e
    add-float v6, v6, v17

    .line 235
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_8

    .line 236
    .end local v7    # "halfWidth":F
    .end local v9    # "isFirst":Z
    .end local v10    # "isLast":Z
    .end local v16    # "width":F
    :cond_d
    const/4 v9, 0x0

    .restart local v9    # "isFirst":Z
    goto :goto_9

    .line 237
    :cond_e
    const/4 v10, 0x0

    .restart local v10    # "isLast":Z
    goto :goto_a

    .line 242
    .restart local v7    # "halfWidth":F
    .restart local v16    # "width":F
    :cond_f
    add-float v4, v6, v7

    goto :goto_b

    .line 248
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v17

    sget-object v18, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 249
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_c

    .line 251
    :cond_11
    add-float v17, v6, v16

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_c

    .line 253
    :cond_12
    const/16 v17, 0x0

    goto :goto_d

    .line 257
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v17

    add-float v17, v17, v16

    goto :goto_e

    .line 261
    .end local v7    # "halfWidth":F
    .end local v8    # "i":I
    .end local v9    # "isFirst":Z
    .end local v10    # "isLast":Z
    .end local v16    # "width":F
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-eqz v17, :cond_15

    .line 262
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    .line 263
    float-to-int v0, v12

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/camera/ui/HorizontalSlideView;->scroll(I)V

    .line 194
    :cond_15
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 141
    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    .line 139
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 151
    .end local v0    # "result":Z
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 152
    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    .line 153
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    .line 155
    :cond_1
    return v0
.end method

.method public setDrawAdapter(Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    .prologue
    const/4 v0, 0x0

    .line 84
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    .line 85
    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    .line 86
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 87
    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    .line 83
    return-void
.end method

.method public setOnItemSelectListener(Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

    .line 79
    return-void
.end method

.method public setSelection(I)V
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/4 v9, 0x0

    .line 94
    iget v8, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    if-ne v8, p1, :cond_0

    return-void

    .line 96
    :cond_0
    iput-boolean v9, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    .line 97
    iget-object v8, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 98
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->select(I)V

    .line 100
    iget v6, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    .line 101
    .local v6, "startX":F
    const/4 v1, 0x0

    .line 102
    .local v1, "drawLeftX":F
    move v0, v6

    .line 104
    .local v0, "drawCenterX":F
    iget-object v8, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    if-eqz v8, :cond_7

    .line 105
    iget-object v8, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v8}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v8

    if-lt p1, v8, :cond_1

    .line 106
    iget-object v8, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v8}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v8

    add-int/lit8 p1, v8, -0x1

    .line 108
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-gt v3, p1, :cond_7

    .line 109
    if-nez v3, :cond_3

    const/4 v4, 0x1

    .line 110
    .local v4, "isFirst":Z
    :goto_1
    add-int/lit8 v8, v3, 0x1

    iget-object v9, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v9}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v9

    if-ne v8, v9, :cond_4

    const/4 v5, 0x1

    .line 111
    .local v5, "isLast":Z
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/camera/ui/HorizontalSlideView;->getItemWidth(I)F

    move-result v7

    .line 112
    .local v7, "width":F
    const/high16 v8, 0x40000000    # 2.0f

    div-float v2, v7, v8

    .line 114
    .local v2, "halfWidth":F
    if-eqz v4, :cond_2

    sub-float v1, v6, v2

    .line 115
    :cond_2
    if-eqz v4, :cond_5

    move v0, v6

    .line 117
    :goto_3
    if-eqz v5, :cond_6

    const/4 v8, 0x0

    :goto_4
    add-float/2addr v1, v8

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    .end local v2    # "halfWidth":F
    .end local v4    # "isFirst":Z
    .end local v5    # "isLast":Z
    .end local v7    # "width":F
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "isFirst":Z
    goto :goto_1

    .line 110
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "isLast":Z
    goto :goto_2

    .line 115
    .restart local v2    # "halfWidth":F
    .restart local v7    # "width":F
    :cond_5
    add-float v0, v1, v2

    goto :goto_3

    .line 117
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v8

    add-float/2addr v8, v7

    goto :goto_4

    .line 121
    .end local v2    # "halfWidth":F
    .end local v3    # "i":I
    .end local v4    # "isFirst":Z
    .end local v5    # "isLast":Z
    .end local v7    # "width":F
    :cond_7
    sub-float v8, v0, v6

    float-to-int v8, v8

    iput v8, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    .line 122
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    .line 93
    return-void
.end method
