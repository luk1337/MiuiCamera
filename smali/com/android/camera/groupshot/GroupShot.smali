.class public Lcom/android/camera/groupshot/GroupShot;
.super Ljava/lang/Object;
.source "GroupShot.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHeight:I

.field private mMaxImageNum:I

.field private mNative:J

.field private mStart:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 6
    const-class v1, Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    .line 9
    :try_start_0
    const-string/jumbo v1, "morpho_groupshot"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 10
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 11
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can\'t loadLibrary, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    .line 5
    return-void
.end method

.method private final native attach(J[B)I
.end method

.method private final native clearImages(J)I
.end method

.method private final native createNativeObject()J
.end method

.method private final native deleteNativeObject(J)V
.end method

.method private final native end(J)I
.end method

.method private final native getImageAndSaveJpeg(JLjava/lang/String;)I
.end method

.method private final native initializeNativeObject(JIIIIIII)I
.end method

.method private final native saveInputImages(JLjava/lang/String;)I
.end method

.method private final native setBaseImage(JI)I
.end method

.method private final native setBestFace(J)I
.end method

.method private final native start(JI)I
.end method


# virtual methods
.method public attach([B)I
    .locals 6
    .param p1, "src"    # [B

    .prologue
    .line 127
    sget-object v0, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "GroupShot attach mNative=%x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 129
    const/4 v0, -0x1

    return v0

    .line 131
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/groupshot/GroupShot;->attach(J[B)I

    move-result v0

    return v0
.end method

.method public attach_end()I
    .locals 6

    .prologue
    .line 136
    sget-object v0, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "GroupShot attach end, mNative=%x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 138
    const/4 v0, -0x1

    return v0

    .line 140
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-direct {p0, v0, v1}, Lcom/android/camera/groupshot/GroupShot;->end(J)I

    move-result v0

    return v0
.end method

.method public attach_start(I)I
    .locals 7
    .param p1, "withDelay"    # I

    .prologue
    const/4 v6, 0x1

    .line 117
    sget-object v0, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "GroupShot attach start mNative=%x"

    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 119
    const/4 v0, -0x1

    return v0

    .line 121
    :cond_0
    iput-boolean v6, p0, Lcom/android/camera/groupshot/GroupShot;->mStart:Z

    .line 122
    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/groupshot/GroupShot;->start(JI)I

    move-result v0

    return v0
.end method

.method public clearImages()I
    .locals 6

    .prologue
    .line 100
    sget-object v0, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "clearImages mNative=%x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 102
    const/4 v0, -0x1

    return v0

    .line 104
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-direct {p0, v0, v1}, Lcom/android/camera/groupshot/GroupShot;->clearImages(J)I

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 86
    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_0

    .line 87
    return-void

    .line 89
    :cond_0
    sget-object v0, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "finish mNative=%x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-direct {p0, v0, v1}, Lcom/android/camera/groupshot/GroupShot;->deleteNativeObject(J)V

    .line 91
    iput v6, p0, Lcom/android/camera/groupshot/GroupShot;->mWidth:I

    .line 92
    iput v6, p0, Lcom/android/camera/groupshot/GroupShot;->mHeight:I

    .line 93
    iput v6, p0, Lcom/android/camera/groupshot/GroupShot;->mMaxImageNum:I

    .line 94
    iput-boolean v6, p0, Lcom/android/camera/groupshot/GroupShot;->mStart:Z

    .line 95
    iput-wide v8, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    .line 84
    return-void
.end method

.method public getImageAndSaveJpeg(Ljava/lang/String;)I
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 254
    const/4 v0, -0x1

    return v0

    .line 256
    :cond_0
    sget-object v0, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "GroupShot getImageAndSaveJpeg, mNative=%x filename=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/groupshot/GroupShot;->getImageAndSaveJpeg(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public initialize(IIIIII)I
    .locals 11
    .param p1, "maxImageNum"    # I
    .param p2, "maxFaceNum"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "max_width"    # I
    .param p6, "max_height"    # I

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/camera/groupshot/GroupShot;->mStart:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/groupshot/GroupShot;->mWidth:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/android/camera/groupshot/GroupShot;->mHeight:I

    if-ne v0, p4, :cond_0

    iget v0, p0, Lcom/android/camera/groupshot/GroupShot;->mMaxImageNum:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 60
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/groupshot/GroupShot;->mStart:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/groupshot/GroupShot;->mWidth:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/groupshot/GroupShot;->mHeight:I

    if-eqz v0, :cond_3

    .line 61
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/groupshot/GroupShot;->clearImages()I

    .line 62
    invoke-virtual {p0}, Lcom/android/camera/groupshot/GroupShot;->finish()V

    .line 64
    :cond_2
    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 65
    invoke-direct {p0}, Lcom/android/camera/groupshot/GroupShot;->createNativeObject()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    .line 66
    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 67
    const/4 v0, -0x1

    return v0

    .line 60
    :cond_3
    iget v0, p0, Lcom/android/camera/groupshot/GroupShot;->mMaxImageNum:I

    if-eqz v0, :cond_2

    goto :goto_0

    .line 70
    :cond_4
    sget-object v0, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initialize imagenum=%d, width=%d, height=%d, mStart=%b, mWidth=%d, mHeight=%d, mMaxImageNum=%d"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/android/camera/groupshot/GroupShot;->mStart:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/camera/groupshot/GroupShot;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/camera/groupshot/GroupShot;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/camera/groupshot/GroupShot;->mMaxImageNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 70
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-wide v2, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const/4 v10, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lcom/android/camera/groupshot/GroupShot;->initializeNativeObject(JIIIIIII)I

    .line 73
    iput p1, p0, Lcom/android/camera/groupshot/GroupShot;->mMaxImageNum:I

    .line 74
    iput p3, p0, Lcom/android/camera/groupshot/GroupShot;->mWidth:I

    .line 75
    iput p4, p0, Lcom/android/camera/groupshot/GroupShot;->mHeight:I

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/groupshot/GroupShot;->mStart:Z

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public isUsed()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/camera/groupshot/GroupShot;->mStart:Z

    return v0
.end method

.method public saveInputImages(Ljava/lang/String;)I
    .locals 4
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 272
    const/4 v0, -0x1

    return v0

    .line 274
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/groupshot/GroupShot;->saveInputImages(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setBaseImage(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 146
    const/4 v0, -0x1

    return v0

    .line 148
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/groupshot/GroupShot;->setBaseImage(JI)I

    move-result v0

    return v0
.end method

.method public setBestFace()I
    .locals 4

    .prologue
    .line 285
    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 286
    const/4 v0, -0x1

    return v0

    .line 288
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-direct {p0, v0, v1}, Lcom/android/camera/groupshot/GroupShot;->setBestFace(J)I

    move-result v0

    return v0
.end method
