.class public Lcom/android/camera/ui/ExitButton;
.super Landroid/view/View;
.source "ExitButton.java"


# instance fields
.field private mExpand:Z

.field private mExpandLeft:I

.field private mExpandRight:I

.field private mText:Ljava/lang/String;

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 29
    const v2, 0x7f0b0004

    .line 28
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 30
    iget-object v0, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 24
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 43
    iget-boolean v5, p0, Lcom/android/camera/ui/ExitButton;->mExpand:Z

    if-eqz v5, :cond_1

    .line 44
    iget v5, p0, Lcom/android/camera/ui/ExitButton;->mExpandLeft:I

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/ExitButton;->setLeft(I)V

    .line 45
    iget v5, p0, Lcom/android/camera/ui/ExitButton;->mExpandRight:I

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/ExitButton;->setRight(I)V

    .line 49
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 50
    iget-object v5, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getPaddingLeft()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    if-gt v5, v6, :cond_2

    :cond_0
    return-void

    .line 47
    :cond_1
    iget-object v5, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_0

    .line 52
    :cond_2
    iget-object v5, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 54
    .local v1, "metrics":Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    iget v6, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v5, v6

    iget v6, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v0, v5

    .line 55
    .local v0, "baseline":F
    iget-object v5, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v5

    float-to-int v4, v5

    .line 56
    .local v4, "textWidth":I
    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getPaddingLeft()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int v2, v5, v6

    .line 57
    .local v2, "textBoundsWidth":I
    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getPaddingLeft()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    div-int/lit8 v3, v5, 0x2

    .line 59
    .local v3, "textTrans":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 60
    if-gez v3, :cond_3

    .line 61
    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {p1, v5, v8, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 62
    iget-boolean v5, p0, Lcom/android/camera/ui/ExitButton;->mExpand:Z

    if-eqz v5, :cond_3

    .line 63
    iget-object v5, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    mul-int/lit16 v6, v2, 0xff

    div-int/2addr v6, v4

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 66
    :cond_3
    iget-object v5, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getPaddingLeft()I

    move-result v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v5, v6, v0, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 42
    return-void
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 84
    const/4 v5, 0x0

    .line 85
    .local v5, "textWidth":I
    const/4 v4, 0x0

    .line 86
    .local v4, "textHeight":I
    const/4 v2, 0x0

    .line 87
    .local v2, "bgWidth":I
    const/4 v1, 0x0

    .line 88
    .local v1, "bgHeight":I
    iget-object v6, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 89
    iget-object v6, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v6

    float-to-int v5, v6

    .line 91
    :cond_0
    iget-object v6, p0, Lcom/android/camera/ui/ExitButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 92
    .local v3, "metrics":Landroid/graphics/Paint$FontMetricsInt;
    iget v6, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v7, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v4, v6, v7

    .line 93
    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 94
    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 96
    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 97
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 99
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 102
    :cond_1
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 103
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 102
    invoke-virtual {p0, v6, v7}, Lcom/android/camera/ui/ExitButton;->setMeasuredDimension(II)V

    .line 83
    return-void
.end method

.method public setExpandedAnimation(Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/camera/ui/ExitButton;->mExpand:Z

    .line 78
    return-void
.end method

.method public setExpandingSize(II)V
    .locals 0
    .param p1, "newLeft"    # I
    .param p2, "newRight"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/android/camera/ui/ExitButton;->mExpandLeft:I

    .line 108
    iput p2, p0, Lcom/android/camera/ui/ExitButton;->mExpandRight:I

    .line 106
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/ExitButton;->mExpand:Z

    .line 36
    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->requestLayout()V

    .line 37
    invoke-virtual {p0}, Lcom/android/camera/ui/ExitButton;->invalidate()V

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/ExitButton;->mText:Ljava/lang/String;

    .line 33
    return-void
.end method
