.class final Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;
.super Ljava/lang/Object;
.source "EdgeGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EdgeGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FasterStringBuilder"
.end annotation


# instance fields
.field private mChars:[C

.field private mLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mChars:[C

    .line 292
    return-void
.end method

.method private reserve(I)I
    .locals 8
    .param p1, "length"    # I

    .prologue
    const/4 v7, 0x0

    .line 382
    iget v5, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mLength:I

    .line 383
    .local v5, "oldLength":I
    iget v6, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mLength:I

    add-int v2, v6, p1

    .line 384
    .local v2, "newLength":I
    iget-object v4, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mChars:[C

    .line 385
    .local v4, "oldChars":[C
    array-length v3, v4

    .line 386
    .local v3, "oldCapacity":I
    if-le v2, v3, :cond_0

    .line 387
    mul-int/lit8 v0, v3, 0x2

    .line 388
    .local v0, "newCapacity":I
    new-array v1, v0, [C

    .line 389
    .local v1, "newChars":[C
    invoke-static {v4, v7, v1, v7, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 390
    iput-object v1, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mChars:[C

    .line 392
    .end local v0    # "newCapacity":I
    .end local v1    # "newChars":[C
    :cond_0
    return v5
.end method


# virtual methods
.method public append(FI)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;
    .locals 6
    .param p1, "value"    # F
    .param p2, "precision"    # I

    .prologue
    .line 358
    const/4 v1, 0x1

    .line 359
    .local v1, "scale":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 360
    mul-int/lit8 v1, v1, 0xa

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_0
    int-to-float v2, v1

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    int-to-double v4, v1

    div-double/2addr v2, v4

    double-to-float p1, v2

    .line 364
    float-to-int v2, p1

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(I)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    .line 366
    if-eqz p2, :cond_1

    .line 367
    const-string/jumbo v2, "."

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    .line 368
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 369
    float-to-double v2, p1

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float p1, v2

    .line 370
    int-to-float v2, v1

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {p0, v2, p2}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(II)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    .line 373
    :cond_1
    return-object p0
.end method

.method public append(I)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(II)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(II)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;
    .locals 9
    .param p1, "value"    # I
    .param p2, "zeroPadWidth"    # I

    .prologue
    const/16 v8, 0x30

    const/4 v5, 0x0

    .line 314
    if-gez p1, :cond_0

    const/4 v5, 0x1

    .line 315
    .local v5, "negative":Z
    :cond_0
    if-eqz v5, :cond_1

    .line 316
    neg-int p1, p1

    .line 317
    if-gez p1, :cond_1

    .line 318
    const-string/jumbo v7, "-2147483648"

    invoke-virtual {p0, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    .line 319
    return-object p0

    .line 323
    :cond_1
    const/16 v7, 0xb

    invoke-direct {p0, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->reserve(I)I

    move-result v3

    .line 324
    .local v3, "index":I
    iget-object v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mChars:[C

    .line 326
    .local v0, "chars":[C
    if-nez p1, :cond_2

    .line 327
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    aput-char v8, v0, v3

    .line 328
    iget v7, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mLength:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mLength:I

    .line 329
    return-object p0

    .line 332
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :cond_2
    if-eqz v5, :cond_3

    .line 333
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    const/16 v7, 0x2d

    aput-char v7, v0, v3

    move v3, v4

    .line 336
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :cond_3
    const v2, 0x3b9aca00

    .line 337
    .local v2, "divisor":I
    const/16 v6, 0xa

    .local v6, "numberWidth":I
    move v4, v3

    .line 338
    .end local v3    # "index":I
    .restart local v4    # "index":I
    :goto_0
    if-ge p1, v2, :cond_4

    .line 339
    div-int/lit8 v2, v2, 0xa

    .line 340
    add-int/lit8 v6, v6, -0x1

    .line 341
    if-ge v6, p2, :cond_6

    .line 342
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    aput-char v8, v0, v4

    :goto_1
    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_0

    .line 347
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :goto_2
    div-int v1, p1, v2

    .line 348
    .local v1, "digit":I
    mul-int v7, v1, v2

    sub-int/2addr p1, v7

    .line 349
    div-int/lit8 v2, v2, 0xa

    .line 350
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    add-int/lit8 v7, v1, 0x30

    int-to-char v7, v7

    aput-char v7, v0, v3

    .line 351
    if-eqz v2, :cond_5

    .end local v1    # "digit":I
    :cond_4
    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_2

    .line 353
    .end local v3    # "index":I
    .restart local v1    # "digit":I
    .restart local v4    # "index":I
    :cond_5
    iput v4, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mLength:I

    .line 354
    return-object p0

    .end local v1    # "digit":I
    :cond_6
    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_1
.end method

.method public append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 303
    .local v1, "valueLength":I
    invoke-direct {p0, v1}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->reserve(I)I

    move-result v0

    .line 304
    .local v0, "index":I
    iget-object v2, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mChars:[C

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 305
    iget v2, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mLength:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mLength:I

    .line 306
    return-object p0
.end method

.method public clear()Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mLength:I

    .line 298
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 378
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mChars:[C

    iget v2, p0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->mLength:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
