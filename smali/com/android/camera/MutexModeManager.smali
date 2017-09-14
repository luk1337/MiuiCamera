.class public Lcom/android/camera/MutexModeManager;
.super Ljava/lang/Object;
.source "MutexModeManager.java"


# instance fields
.field private mCurrentMutexMode:I

.field private mLastMutexMode:I

.field private mRunnableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;>;"
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    .line 26
    iput v0, p0, Lcom/android/camera/MutexModeManager;->mLastMutexMode:I

    .line 30
    iput-object p1, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    .line 29
    return-void
.end method

.method private enter(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    .line 154
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 156
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    if-eqz v1, :cond_0

    .line 157
    const-string/jumbo v2, "enter"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 158
    .local v0, "enter":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 152
    .end local v0    # "enter":Ljava/lang/Runnable;
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    :cond_0
    return-void
.end method

.method private exit(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x0

    .line 141
    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    iput v2, p0, Lcom/android/camera/MutexModeManager;->mLastMutexMode:I

    .line 142
    iput v3, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    .line 143
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 145
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    if-eqz v1, :cond_0

    .line 146
    const-string/jumbo v2, "exit"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 147
    .local v0, "exit":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 140
    .end local v0    # "exit":Ljava/lang/Runnable;
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    :cond_0
    return-void
.end method

.method public static getMutexModeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 124
    packed-switch p0, :pswitch_data_0

    .line 136
    :pswitch_0
    const-string/jumbo v0, "none"

    return-object v0

    .line 126
    :pswitch_1
    const-string/jumbo v0, "hdr"

    return-object v0

    .line 128
    :pswitch_2
    const-string/jumbo v0, "aohdr"

    return-object v0

    .line 130
    :pswitch_3
    const-string/jumbo v0, "hand-night"

    return-object v0

    .line 132
    :pswitch_4
    const-string/jumbo v0, "raw"

    return-object v0

    .line 134
    :pswitch_5
    const-string/jumbo v0, "burst-shoot"

    return-object v0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private switchMutexMode(II)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 164
    if-eq p1, p2, :cond_0

    .line 165
    invoke-direct {p0, p1}, Lcom/android/camera/MutexModeManager;->exit(I)V

    .line 166
    invoke-direct {p0, p2}, Lcom/android/camera/MutexModeManager;->enter(I)V

    .line 163
    :cond_0
    return-void
.end method


# virtual methods
.method public getLastMutexMode()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mLastMutexMode:I

    return v0
.end method

.method public getMutexMode()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    packed-switch v0, :pswitch_data_0

    .line 119
    const-string/jumbo v0, ""

    return-object v0

    .line 110
    :pswitch_0
    const-string/jumbo v0, "_AO_HDR"

    return-object v0

    .line 113
    :pswitch_1
    const-string/jumbo v0, "_HDR"

    return-object v0

    .line 115
    :pswitch_2
    const-string/jumbo v0, "_HHT"

    return-object v0

    .line 117
    :pswitch_3
    const-string/jumbo v0, "_RAW"

    return-object v0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public isAoHdr()Z
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBurstShoot()Z
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandNight()Z
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHdr()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 83
    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMorphoHdr()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 75
    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedComposed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 100
    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isNormal()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 67
    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isRAW()Z
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSceneHdr()Z
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportedFlashOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isSupportedTorch()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTorchCapture()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 62
    goto :goto_0
.end method

.method public isUbiFocus()Z
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetMutexMode()V
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/MutexModeManager;->switchMutexMode(II)V

    .line 39
    return-void
.end method

.method public resetMutexModeDummy()V
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    iput v0, p0, Lcom/android/camera/MutexModeManager;->mLastMutexMode:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    .line 43
    return-void
.end method

.method public setMutexMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 35
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/MutexModeManager;->switchMutexMode(II)V

    .line 34
    return-void
.end method
