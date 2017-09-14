.class Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;
.super Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;
.source "ZoomPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ZoomPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalSlideViewAdapter"
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryLayouts:[Landroid/text/StaticLayout;

.field mPaint:Landroid/graphics/Paint;

.field mTextPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lcom/android/camera/ui/ZoomPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ZoomPopup;[Ljava/lang/CharSequence;)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/camera/ui/ZoomPopup;
    .param p2, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ZoomPopup;

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;-><init>()V

    .line 228
    iput-object p2, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mEntries:[Ljava/lang/CharSequence;

    .line 230
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    .line 231
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 232
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/camera/ui/ZoomPopup;->-get4(Lcom/android/camera/ui/ZoomPopup;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 233
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/camera/ui/ZoomPopup;->-get6(Lcom/android/camera/ui/ZoomPopup;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 236
    new-instance v0, Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mTextPaint:Landroid/text/TextPaint;

    .line 237
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mEntries:[Ljava/lang/CharSequence;

    array-length v0, v0

    new-array v0, v0, [Landroid/text/StaticLayout;

    iput-object v0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    .line 238
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mEntries:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-ge v8, v0, :cond_0

    .line 239
    iget-object v9, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v8

    iget-object v2, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mTextPaint:Landroid/text/TextPaint;

    sget v3, Lcom/android/camera/Util;->sWindowWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    aput-object v0, v9, v8

    .line 238
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 227
    :cond_0
    return-void
.end method

.method private drawText(ILandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "sectionIndex"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 255
    iget-object v1, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Landroid/text/StaticLayout;->getLineAscent(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    aget-object v2, v2, p1

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v0, v1

    .line 257
    .local v0, "height":F
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 258
    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 259
    iget-object v1, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 260
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 254
    return-void
.end method

.method private indexToSection(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 244
    if-nez p1, :cond_0

    .line 245
    return v0

    .line 246
    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 247
    const/4 v0, 0x1

    return v0

    .line 248
    :cond_1
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_2

    .line 249
    const/4 v0, 0x2

    return v0

    .line 251
    :cond_2
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public draw(ILandroid/graphics/Canvas;Z)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "selected"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 265
    if-eqz p1, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mTextPaint:Landroid/text/TextPaint;

    if-eqz p3, :cond_2

    .line 267
    invoke-static {}, Lcom/android/camera/ui/ZoomPopup;->-get7()[I

    move-result-object v0

    .line 266
    :goto_0
    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 269
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->indexToSection(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->drawText(ILandroid/graphics/Canvas;)V

    .line 264
    :goto_1
    return-void

    .line 265
    :cond_1
    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    .line 271
    iget-object v2, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    if-eqz p3, :cond_3

    .line 272
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ZoomPopup;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomPopup;->-get5(Lcom/android/camera/ui/ZoomPopup;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/ui/ZoomPopup;->-get7()[I

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 271
    :goto_2
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ZoomPopup;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomPopup;->-get1(Lcom/android/camera/ui/ZoomPopup;)F

    move-result v0

    neg-float v2, v0

    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ZoomPopup;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomPopup;->-get1(Lcom/android/camera/ui/ZoomPopup;)F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mPaint:Landroid/graphics/Paint;

    move-object v0, p2

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 268
    :cond_2
    invoke-static {}, Lcom/android/camera/ui/ZoomPopup;->-get8()[I

    move-result-object v0

    goto :goto_0

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ZoomPopup;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomPopup;->-get0(Lcom/android/camera/ui/ZoomPopup;)I

    move-result v0

    goto :goto_2
.end method

.method public getAlign(I)Landroid/graphics/Paint$Align;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 298
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 303
    const/16 v0, 0x30

    return v0
.end method

.method public measureGap(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 289
    if-eqz p1, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ZoomPopup;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomPopup;->-get3(Lcom/android/camera/ui/ZoomPopup;)I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 289
    :cond_1
    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ZoomPopup;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomPopup;->-get2(Lcom/android/camera/ui/ZoomPopup;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public measureWidth(I)F
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 280
    if-eqz p1, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->indexToSection(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    return v0

    .line 280
    :cond_1
    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;->this$0:Lcom/android/camera/ui/ZoomPopup;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomPopup;->-get4(Lcom/android/camera/ui/ZoomPopup;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method
