.class Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;
.super Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;
.source "SnapshotEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/renders/SnapshotEffectRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewStyleTextWaterMark"
.end annotation


# instance fields
.field private final TEXT_PIXEL_SIZE:F

.field private mCenterX:I

.field private mCenterY:I

.field private mCharMargin:I

.field private mHorizontalPadding:I

.field private mPadding:I

.field private mVerticalPadding:I

.field private mWaterHeight:I

.field private mWaterText:Ljava/lang/String;

.field private mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

.field private mWaterWidth:I

.field final synthetic this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;


# direct methods
.method private constructor <init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljava/lang/String;III)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I

    .prologue
    const v4, 0x41f0a2f9

    .line 515
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 516
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;-><init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;III)V

    .line 500
    iput v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->TEXT_PIXEL_SIZE:F

    .line 518
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 519
    .local v1, "shotL":I
    int-to-float v2, v1

    const/high16 v3, 0x44870000    # 1080.0f

    div-float v0, v2, v3

    .line 521
    .local v0, "ratio":F
    iput-object p2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterText:Ljava/lang/String;

    .line 522
    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterText:Ljava/lang/String;

    .line 523
    mul-float v3, v4, v0

    const/4 v4, -0x1

    const/4 v5, 0x2

    .line 522
    invoke-static {v2, v3, v4, v5}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FII)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 526
    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterWidth:I

    .line 527
    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterHeight:I

    .line 528
    float-to-double v2, v0

    const-wide v4, 0x4045d7efb3f3733bL    # 43.687002653

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mPadding:I

    .line 529
    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterHeight:I

    int-to-float v2, v2

    const v3, 0x3e051eb8    # 0.13f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCharMargin:I

    .line 531
    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mPadding:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mHorizontalPadding:I

    .line 532
    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mPadding:I

    iget v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCharMargin:I

    sub-int/2addr v2, v3

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mVerticalPadding:I

    .line 534
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->calcCenterAxis()V

    .line 535
    sget-boolean v2, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v2, :cond_0

    .line 536
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->print()V

    .line 515
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljava/lang/String;IIILcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;-><init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljava/lang/String;III)V

    return-void
.end method

.method private calcCenterAxis()V
    .locals 2

    .prologue
    .line 541
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mOrientation:I

    sparse-switch v0, :sswitch_data_0

    .line 540
    :goto_0
    return-void

    .line 543
    :sswitch_0
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mHorizontalPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterX:I

    .line 544
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mVerticalPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterY:I

    goto :goto_0

    .line 547
    :sswitch_1
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mVerticalPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterX:I

    .line 548
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mHorizontalPadding:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterY:I

    goto :goto_0

    .line 551
    :sswitch_2
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mHorizontalPadding:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterX:I

    .line 552
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mVerticalPadding:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterY:I

    goto :goto_0

    .line 555
    :sswitch_3
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mVerticalPadding:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterX:I

    .line 556
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mHorizontalPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterY:I

    goto :goto_0

    .line 541
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private print()V
    .locals 3

    .prologue
    .line 587
    const-string/jumbo v0, "SnapshotEffectProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WaterMark mPictureWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 588
    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mPictureWidth:I

    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 588
    const-string/jumbo v2, " mPictureHeight ="

    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 588
    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mPictureHeight:I

    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 589
    const-string/jumbo v2, " mWaterText="

    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 589
    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterText:Ljava/lang/String;

    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 590
    const-string/jumbo v2, " mCenterX="

    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 590
    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterX:I

    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 590
    const-string/jumbo v2, " mCenterY="

    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 590
    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterY:I

    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 591
    const-string/jumbo v2, " mWaterWidth="

    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 591
    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterWidth:I

    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 591
    const-string/jumbo v2, " mWaterHeight="

    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 591
    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterHeight:I

    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 592
    const-string/jumbo v2, " mPadding="

    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 592
    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mPadding:I

    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-void
.end method


# virtual methods
.method public getCenterX()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterX:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterY:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterHeight:I

    return v0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/BasicTexture;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterWidth:I

    return v0
.end method
