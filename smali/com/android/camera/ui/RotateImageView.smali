.class public Lcom/android/camera/ui/RotateImageView;
.super Lcom/android/camera/ui/TwoStateImageView;
.source "RotateImageView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/RotateImageView$1;,
        Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;
    }
.end annotation


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mAxisCurrentDegree:I

.field private mClockwise:Z

.field private mEnableAnimation:Z

.field private mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

.field private mOverturn:Z

.field private mPointCurrentDegree:I

.field private mPointStartDegree:I

.field private mPointTargetDegree:I

.field private mSwitchEnd:Ljava/lang/Runnable;

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/RotateImageView;)[Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;)V

    .line 46
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    .line 47
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointStartDegree:I

    .line 48
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    .line 50
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mOverturn:Z

    .line 54
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    .line 56
    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 57
    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/RotateImageView;->mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

    .line 238
    new-instance v0, Lcom/android/camera/ui/RotateImageView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/RotateImageView$1;-><init>(Lcom/android/camera/ui/RotateImageView;)V

    iput-object v0, p0, Lcom/android/camera/ui/RotateImageView;->mSwitchEnd:Ljava/lang/Runnable;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    .line 47
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointStartDegree:I

    .line 48
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    .line 50
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mOverturn:Z

    .line 54
    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    .line 56
    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 57
    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/RotateImageView;->mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

    .line 238
    new-instance v0, Lcom/android/camera/ui/RotateImageView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/RotateImageView$1;-><init>(Lcom/android/camera/ui/RotateImageView;)V

    iput-object v0, p0, Lcom/android/camera/ui/RotateImageView;->mSwitchEnd:Ljava/lang/Runnable;

    .line 70
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 129
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 130
    .local v13, "matrix":Landroid/graphics/Matrix;
    new-instance v6, Landroid/graphics/Camera;

    invoke-direct {v6}, Landroid/graphics/Camera;-><init>()V

    .line 131
    .local v6, "camera":Landroid/graphics/Camera;
    if-nez v9, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 133
    .local v5, "bounds":Landroid/graphics/Rect;
    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v20, v22, v23

    .line 134
    .local v20, "w":I
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v10, v22, v23

    .line 136
    .local v10, "h":I
    if-eqz v20, :cond_1

    if-nez v10, :cond_2

    :cond_1
    return-void

    .line 138
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/RotateImageView;->mOverturn:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 139
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    move/from16 v22, v0

    const/16 v23, 0xb4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 140
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/RotateImageView;->mOverturn:Z

    .line 141
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/RotateImageView;->mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/RotateImageView;->mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;->OnRotateAxisFinished()V

    .line 168
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingLeft()I

    move-result v12

    .line 169
    .local v12, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingTop()I

    move-result v17

    .line 170
    .local v17, "top":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingRight()I

    move-result v15

    .line 171
    .local v15, "right":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingBottom()I

    move-result v4

    .line 172
    .local v4, "bottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getWidth()I

    move-result v22

    sub-int v22, v22, v12

    sub-int v21, v22, v15

    .line 173
    .local v21, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getHeight()I

    move-result v22

    sub-int v22, v22, v17

    sub-int v11, v22, v4

    .line 175
    .local v11, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v16

    .line 176
    .local v16, "saveCount":I
    invoke-virtual {v6}, Landroid/graphics/Camera;->save()V

    .line 177
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    move/from16 v22, v0

    const/16 v23, 0xb4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 178
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 182
    :goto_1
    invoke-virtual {v6, v13}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 183
    invoke-virtual {v6}, Landroid/graphics/Camera;->restore()V

    .line 184
    shr-int/lit8 v22, v20, 0x1

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    shr-int/lit8 v23, v10, 0x1

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 185
    shr-int/lit8 v22, v20, 0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    shr-int/lit8 v23, v10, 0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 186
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v22

    sget-object v23, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 189
    move/from16 v0, v21

    move/from16 v1, v20

    if-lt v0, v1, :cond_5

    if-ge v11, v10, :cond_6

    .line 190
    :cond_5
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    int-to-float v0, v11

    move/from16 v23, v0

    int-to-float v0, v10

    move/from16 v24, v0

    div-float v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 191
    .local v14, "ratio":F
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    int-to-float v0, v11

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v14, v14, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 193
    .end local v14    # "ratio":F
    :cond_6
    div-int/lit8 v22, v21, 0x2

    add-int v22, v22, v12

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-int/lit8 v23, v11, 0x2

    add-int v23, v23, v17

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 194
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 195
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    neg-int v0, v10

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 196
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 197
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 127
    return-void

    .line 146
    .end local v4    # "bottom":I
    .end local v11    # "height":I
    .end local v12    # "left":I
    .end local v15    # "right":I
    .end local v16    # "saveCount":I
    .end local v17    # "top":I
    .end local v21    # "width":I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0xa

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->invalidate()V

    goto/16 :goto_0

    .line 150
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 151
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v18

    .line 152
    .local v18, "time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    move-wide/from16 v22, v0

    cmp-long v22, v18, v22

    if-gez v22, :cond_b

    .line 153
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    move-wide/from16 v22, v0

    sub-long v22, v18, v22

    move-wide/from16 v0, v22

    long-to-int v8, v0

    .line 154
    .local v8, "deltaTime":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mPointStartDegree:I

    move/from16 v22, v0

    .line 155
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    move/from16 v23, v0

    if-eqz v23, :cond_9

    .line 154
    .end local v8    # "deltaTime":I
    :goto_2
    mul-int/lit16 v0, v8, 0x10e

    move/from16 v23, v0

    move/from16 v0, v23

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v23, v0

    add-int v7, v22, v23

    .line 156
    .local v7, "degree":I
    if-ltz v7, :cond_a

    rem-int/lit16 v7, v7, 0x168

    .line 157
    :goto_3
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->invalidate()V

    goto/16 :goto_0

    .line 155
    .end local v7    # "degree":I
    .restart local v8    # "deltaTime":I
    :cond_9
    neg-int v8, v8

    goto :goto_2

    .line 156
    .end local v8    # "deltaTime":I
    .restart local v7    # "degree":I
    :cond_a
    rem-int/lit16 v0, v7, 0x168

    move/from16 v22, v0

    move/from16 v0, v22

    add-int/lit16 v7, v0, 0x168

    goto :goto_3

    .line 160
    .end local v7    # "degree":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/RotateImageView;->mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/RotateImageView;->mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;->OnRotatePointFinished()V

    goto/16 :goto_0

    .line 180
    .end local v18    # "time":J
    .restart local v4    # "bottom":I
    .restart local v11    # "height":I
    .restart local v12    # "left":I
    .restart local v15    # "right":I
    .restart local v16    # "saveCount":I
    .restart local v17    # "top":I
    .restart local v21    # "width":I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/graphics/Camera;->rotateX(F)V

    goto/16 :goto_1
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 207
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mSwitchEnd:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/RotateImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 208
    if-nez p1, :cond_0

    .line 209
    iput-object v4, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 210
    iput-object v4, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 211
    const v3, 0x7f0200f3

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 212
    return-void

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 216
    .local v2, "param":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 217
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingLeft()I

    move-result v4

    .line 216
    sub-int/2addr v3, v4

    .line 217
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingRight()I

    move-result v4

    .line 216
    sub-int v1, v3, v4

    .line 218
    .local v1, "miniThumbWidth":I
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 219
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingTop()I

    move-result v4

    .line 218
    sub-int/2addr v3, v4

    .line 219
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingBottom()I

    move-result v4

    .line 218
    sub-int v0, v3, v4

    .line 220
    .local v0, "miniThumbHeight":I
    invoke-static {p1, v1, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 223
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    aput-object v4, v3, v8

    .line 229
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v7

    .line 230
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v4, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 231
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 233
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mSwitchEnd:Ljava/lang/Runnable;

    const-wide/16 v4, 0x208

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/camera/ui/RotateImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    :goto_0
    invoke-virtual {p0, v8}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 204
    return-void

    .line 224
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 225
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v7

    .line 226
    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 6
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    const/4 v1, 0x0

    .line 99
    iput-boolean p2, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    .line 101
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 102
    :goto_0
    iget v2, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    if-ne p1, v2, :cond_1

    return-void

    .line 101
    :cond_0
    rem-int/lit16 v2, p1, 0x168

    add-int/lit16 p1, v2, 0x168

    goto :goto_0

    .line 104
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    .line 105
    iget-boolean v2, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    if-eqz v2, :cond_5

    .line 106
    iget v2, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    iput v2, p0, Lcom/android/camera/ui/RotateImageView;->mPointStartDegree:I

    .line 107
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 109
    iget v2, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    iget v3, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    sub-int v0, v2, v3

    .line 110
    .local v0, "diff":I
    if-ltz v0, :cond_4

    .line 114
    :goto_1
    const/16 v2, 0xb4

    if-le v0, v2, :cond_2

    add-int/lit16 v0, v0, -0x168

    .line 116
    :cond_2
    if-ltz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    .line 117
    iget-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 118
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    div-int/lit16 v1, v1, 0x10e

    int-to-long v4, v1

    .line 117
    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 123
    .end local v0    # "diff":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->invalidate()V

    .line 98
    return-void

    .line 110
    .restart local v0    # "diff":I
    :cond_4
    add-int/lit16 v0, v0, 0x168

    goto :goto_1

    .line 120
    .end local v0    # "diff":I
    :cond_5
    iget v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    goto :goto_2
.end method
