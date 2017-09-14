.class public Lcom/android/camera/ui/V6SeekBar;
.super Landroid/widget/RelativeLayout;
.source "V6SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;
    }
.end annotation


# static fields
.field private static final PADDING:I


# instance fields
.field private mBar:Lcom/android/camera/ui/TwoStateBar;

.field private mBarHeight:I

.field private mCursor:Landroid/widget/ImageView;

.field private mCursorHeight:I

.field private mCursorPosition:I

.field private mCursorWidth:I

.field private mEndPosition:I

.field private mGap:F

.field private mHeight:I

.field private mListener:Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;

.field private mMaxValue:I

.field private mReLoad:Z

.field private mSmoothChange:Z

.field private mStartPosition:I

.field private mValue:I

.field private mValueChanged:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6SeekBar;->PADDING:I

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    .line 35
    iput v3, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    .line 36
    iput-boolean v3, p0, Lcom/android/camera/ui/V6SeekBar;->mReLoad:Z

    .line 37
    iput-boolean v3, p0, Lcom/android/camera/ui/V6SeekBar;->mValueChanged:Z

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6SeekBar;->mSmoothChange:Z

    .line 46
    new-instance v0, Lcom/android/camera/ui/TwoStateBar;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/TwoStateBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mBar:Lcom/android/camera/ui/TwoStateBar;

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mBar:Lcom/android/camera/ui/TwoStateBar;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0188

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TwoStateBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mBar:Lcom/android/camera/ui/TwoStateBar;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/V6SeekBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mCursor:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mCursor:Landroid/widget/ImageView;

    const v1, 0x7f02011f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SeekBar;->addView(Landroid/view/View;)V

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SeekBar;->mBarHeight:I

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorHeight:I

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorWidth:I

    .line 57
    iput v3, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    .line 44
    return-void
.end method

.method private clip(III)I
    .locals 0
    .param p1, "value"    # I
    .param p2, "max"    # I
    .param p3, "min"    # I

    .prologue
    .line 199
    if-le p1, p2, :cond_0

    .line 200
    return p2

    .line 201
    :cond_0
    if-ge p1, p3, :cond_1

    .line 202
    return p3

    .line 204
    :cond_1
    return p1
.end method

.method private mapPositionToValue(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 208
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekBar;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 209
    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    sub-int/2addr v0, p1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    invoke-direct {p0, v0, v1, v3}, Lcom/android/camera/ui/V6SeekBar;->clip(III)I

    move-result v0

    return v0

    .line 211
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    invoke-direct {p0, v0, v1, v3}, Lcom/android/camera/ui/V6SeekBar;->clip(III)I

    move-result v0

    return v0
.end method

.method private mapValueToPosition(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 216
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekBar;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 217
    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    int-to-float v1, p1

    iget v2, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    iget v2, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/V6SeekBar;->clip(III)I

    move-result v0

    return v0

    .line 219
    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    iget v2, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/V6SeekBar;->clip(III)I

    move-result v0

    return v0
.end method

.method private notifyChange(Z)V
    .locals 2
    .param p1, "touchUp"    # Z

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mListener:Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekBar;->mListener:Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    invoke-interface {v0, v1, p1}, Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;->onValueChanged(IZ)V

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x3

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 120
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekBar;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    .line 121
    if-eq v0, v10, :cond_0

    .line 122
    if-eq v0, v8, :cond_0

    return v7

    .line 124
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 158
    :cond_1
    :goto_0
    return v8

    .line 128
    :pswitch_0
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/V6SeekBar;->setActivated(Z)V

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v9

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    div-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 130
    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    .line 131
    iget v6, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    .line 129
    invoke-direct {p0, v4, v5, v6}, Lcom/android/camera/ui/V6SeekBar;->clip(III)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    .line 132
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekBar;->requestLayout()V

    .line 133
    iget v4, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    invoke-direct {p0, v4}, Lcom/android/camera/ui/V6SeekBar;->mapPositionToValue(I)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    .line 134
    invoke-direct {p0, v8}, Lcom/android/camera/ui/V6SeekBar;->notifyChange(Z)V

    goto :goto_0

    .line 137
    :pswitch_1
    invoke-virtual {p0, v8}, Lcom/android/camera/ui/V6SeekBar;->setActivated(Z)V

    .line 138
    invoke-direct {p0, v7}, Lcom/android/camera/ui/V6SeekBar;->notifyChange(Z)V

    .line 140
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v9

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    div-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 141
    .local v1, "adsorbPos":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v9

    sub-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v2, v4

    .line 142
    .local v2, "noAdsorbPos":I
    move v3, v2

    .line 143
    .local v3, "pos":I
    iget v4, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    if-gt v4, v10, :cond_3

    sub-int v4, v1, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 145
    :cond_2
    move v3, v1

    .line 150
    :goto_1
    iget v4, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    .line 151
    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    .line 149
    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/ui/V6SeekBar;->clip(III)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    .line 152
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekBar;->requestLayout()V

    .line 153
    iget-boolean v4, p0, Lcom/android/camera/ui/V6SeekBar;->mSmoothChange:Z

    if-eqz v4, :cond_1

    .line 154
    iget v4, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    invoke-direct {p0, v4}, Lcom/android/camera/ui/V6SeekBar;->mapPositionToValue(I)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    .line 155
    invoke-direct {p0, v7}, Lcom/android/camera/ui/V6SeekBar;->notifyChange(Z)V

    goto/16 :goto_0

    .line 144
    :cond_3
    iget v4, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    if-ge v10, v4, :cond_4

    iget v4, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    const/16 v5, 0x1e

    if-le v4, v5, :cond_2

    .line 147
    :cond_4
    move v3, v2

    goto :goto_1

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;)V
    .locals 1
    .param p1, "preference"    # Lcom/android/camera/preferences/IconListPreference;

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SeekBar;->setMaxValue(I)V

    .line 63
    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SeekBar;->setValue(I)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekBar;->requestLayout()V

    .line 60
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 90
    iget-boolean v2, p0, Lcom/android/camera/ui/V6SeekBar;->mReLoad:Z

    if-eqz v2, :cond_0

    .line 91
    iget v2, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    iget v3, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    .line 92
    iget v2, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    invoke-direct {p0, v2}, Lcom/android/camera/ui/V6SeekBar;->mapValueToPosition(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    .line 95
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/ui/V6SeekBar;->mValueChanged:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/ui/V6SeekBar;->mReLoad:Z

    if-eqz v2, :cond_2

    .line 96
    :cond_1
    iget v2, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    invoke-direct {p0, v2}, Lcom/android/camera/ui/V6SeekBar;->mapValueToPosition(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    .line 99
    :cond_2
    iput-boolean v4, p0, Lcom/android/camera/ui/V6SeekBar;->mReLoad:Z

    .line 100
    iput-boolean v4, p0, Lcom/android/camera/ui/V6SeekBar;->mValueChanged:Z

    .line 101
    iget v2, p0, Lcom/android/camera/ui/V6SeekBar;->mHeight:I

    iget v3, p0, Lcom/android/camera/ui/V6SeekBar;->mBarHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 102
    .local v0, "barOffsetY":I
    iget-object v2, p0, Lcom/android/camera/ui/V6SeekBar;->mBar:Lcom/android/camera/ui/TwoStateBar;

    .line 104
    iget v3, p0, Lcom/android/camera/ui/V6SeekBar;->mWidth:I

    add-int/lit8 v3, v3, -0x1

    .line 105
    iget v4, p0, Lcom/android/camera/ui/V6SeekBar;->mBarHeight:I

    add-int/2addr v4, v0

    .line 102
    invoke-virtual {v2, v6, v0, v3, v4}, Lcom/android/camera/ui/TwoStateBar;->layout(IIII)V

    .line 107
    iget v2, p0, Lcom/android/camera/ui/V6SeekBar;->mHeight:I

    iget v3, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 108
    .local v1, "cursorOffsetY":I
    iget-object v2, p0, Lcom/android/camera/ui/V6SeekBar;->mCursor:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    .line 110
    iget v4, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorWidth:I

    add-int/2addr v4, v5

    .line 111
    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorHeight:I

    add-int/2addr v5, v1

    .line 108
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 112
    iget-object v2, p0, Lcom/android/camera/ui/V6SeekBar;->mBar:Lcom/android/camera/ui/TwoStateBar;

    iget v3, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    iget v4, p0, Lcom/android/camera/ui/V6SeekBar;->mBarHeight:I

    sub-int/2addr v3, v4

    .line 113
    iget v4, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mBarHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V6SeekBar;->mWidth:I

    add-int/lit8 v5, v5, -0x1

    .line 112
    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/android/camera/ui/TwoStateBar;->setStatePosition(IIII)V

    .line 89
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/android/camera/ui/V6SeekBar;->mWidth:I

    .line 79
    iput p2, p0, Lcom/android/camera/ui/V6SeekBar;->mHeight:I

    .line 80
    sget v0, Lcom/android/camera/ui/V6SeekBar;->PADDING:I

    iput v0, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    .line 81
    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mWidth:I

    sget v1, Lcom/android/camera/ui/V6SeekBar;->PADDING:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    .line 82
    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mEndPosition:I

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mStartPosition:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6SeekBar;->mGap:F

    .line 83
    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6SeekBar;->mapValueToPosition(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SeekBar;->mCursorPosition:I

    .line 84
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekBar;->requestLayout()V

    .line 77
    return-void
.end method

.method public setMaxValue(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 168
    if-gtz p1, :cond_0

    return-void

    .line 169
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6SeekBar;->mReLoad:Z

    .line 171
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekBar;->requestLayout()V

    .line 167
    return-void
.end method

.method public setOnValueChangedListener(Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/camera/ui/V6SeekBar;->mListener:Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;

    .line 72
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 179
    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    if-eq v0, p1, :cond_0

    .line 180
    iget v0, p0, Lcom/android/camera/ui/V6SeekBar;->mMaxValue:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/V6SeekBar;->clip(III)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SeekBar;->mValue:I

    .line 181
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekBar;->requestLayout()V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6SeekBar;->mValueChanged:Z

    .line 178
    :cond_0
    return-void
.end method
