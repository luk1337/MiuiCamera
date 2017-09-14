.class public Lcom/android/camera/Clapper;
.super Ljava/lang/Object;
.source "Clapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Clapper$ClapperListener;
    }
.end annotation


# static fields
.field public static final AMPLITUDE_ABSOLUTE_THRESHOLD:I

.field public static final AMPLITUDE_INIT:I

.field private static final DEFAULT_AMPLITUDE_DIFF:I

.field public static final SCALE_FACTOR:I


# instance fields
.field private mContinueRecording:Z

.field private mListener:Lcom/android/camera/Clapper$ClapperListener;

.field private mRecorder:Landroid/media/MediaRecorder;


# direct methods
.method static synthetic -wrap0(Lcom/android/camera/Clapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Clapper;->threadRecordClap()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/android/camera/Clapper;->getScaleFactor()I

    move-result v0

    sput v0, Lcom/android/camera/Clapper;->SCALE_FACTOR:I

    .line 15
    sget v0, Lcom/android/camera/Clapper;->SCALE_FACTOR:I

    mul-int/lit16 v0, v0, 0x7d0

    sput v0, Lcom/android/camera/Clapper;->AMPLITUDE_INIT:I

    .line 21
    sget v0, Lcom/android/camera/Clapper;->SCALE_FACTOR:I

    mul-int/lit16 v0, v0, 0x7d0

    sput v0, Lcom/android/camera/Clapper;->DEFAULT_AMPLITUDE_DIFF:I

    .line 22
    sget v0, Lcom/android/camera/Clapper;->SCALE_FACTOR:I

    mul-int/lit16 v0, v0, 0x1388

    sput v0, Lcom/android/camera/Clapper;->AMPLITUDE_ABSOLUTE_THRESHOLD:I

    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Clapper$ClapperListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/Clapper$ClapperListener;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    .line 52
    return-void
.end method

.method public static getScaleFactor()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 39
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2A:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_C3A:Z

    if-eqz v0, :cond_1

    .line 40
    :cond_0
    return v2

    .line 41
    :cond_1
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI5:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/camera/Device;->IS_A9:Z

    if-nez v0, :cond_2

    .line 43
    sget-boolean v0, Lcom/android/camera/Device;->IS_H2XLTE:Z

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-gt v1, v0, :cond_3

    .line 44
    :cond_2
    const/4 v0, 0x6

    return v0

    .line 45
    :cond_3
    sget-boolean v0, Lcom/android/camera/Device;->IS_PAD1:Z

    if-eqz v0, :cond_4

    .line 46
    return v2

    .line 48
    :cond_4
    const/4 v0, 0x3

    return v0
.end method

.method private startRecorder()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 57
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 61
    iget-object v2, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 62
    iget-object v2, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 64
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 64
    const-string/jumbo v3, "camera_claaper_recorder.3gp"

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "outputFilePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 67
    iget-object v2, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return v4

    .line 68
    .end local v1    # "outputFilePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Clapper"

    const-string/jumbo v3, "Failed to start media recorder. Maybe it is used by other app."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    const/4 v2, 0x0

    return v2
.end method

.method private threadRecordClap()V
    .locals 14

    .prologue
    .line 131
    sget v1, Lcom/android/camera/Clapper;->AMPLITUDE_INIT:I

    .line 132
    .local v1, "averageAmplitude":I
    const/4 v5, 0x3

    .line 140
    .local v5, "studyTimes":I
    :cond_0
    const-wide/16 v8, 0xc8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    iget-object v7, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v3

    .line 147
    .local v3, "finishAmplitude":I
    if-le v3, v1, :cond_2

    .line 148
    int-to-double v8, v1

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v8, v10

    int-to-double v10, v3

    .line 149
    const-wide v12, 0x3fb9999999999998L    # 0.09999999999999998

    .line 148
    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-int v1, v8

    .line 154
    :goto_1
    if-lez v5, :cond_3

    .line 155
    add-int/lit8 v5, v5, -0x1

    .line 183
    :cond_1
    :goto_2
    iget-boolean v7, p0, Lcom/android/camera/Clapper;->mContinueRecording:Z

    if-nez v7, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/camera/Clapper;->stopRecorder()V

    .line 126
    return-void

    .line 141
    .end local v3    # "finishAmplitude":I
    :catch_0
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v7, "Clapper"

    const-string/jumbo v8, "Thread.sleep() interrupted"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "finishAmplitude":I
    :cond_2
    int-to-double v8, v1

    const-wide v10, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v8, v10

    int-to-double v10, v3

    .line 152
    const-wide v12, 0x3fc9999999999998L    # 0.19999999999999996

    .line 151
    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-int v1, v8

    goto :goto_1

    .line 159
    :cond_3
    sub-int v0, v3, v1

    .line 160
    .local v0, "ampDifference":I
    sget v7, Lcom/android/camera/Clapper;->AMPLITUDE_INIT:I

    if-le v1, v7, :cond_5

    .line 161
    sget v7, Lcom/android/camera/Clapper;->DEFAULT_AMPLITUDE_DIFF:I

    int-to-double v8, v7

    int-to-double v10, v1

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    sget v7, Lcom/android/camera/Clapper;->AMPLITUDE_INIT:I

    int-to-double v12, v7

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    double-to-int v6, v8

    .line 169
    .local v6, "threshold":I
    :goto_3
    iget-object v7, p0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    if-eqz v7, :cond_1

    .line 171
    sget v7, Lcom/android/camera/Clapper;->AMPLITUDE_ABSOLUTE_THRESHOLD:I

    if-gt v3, v7, :cond_4

    .line 172
    if-lt v0, v6, :cond_6

    .line 174
    :cond_4
    iget-object v7, p0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-interface {v7, v8}, Lcom/android/camera/Clapper$ClapperListener;->heard(F)V

    .line 175
    iget-object v7, p0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    invoke-interface {v7}, Lcom/android/camera/Clapper$ClapperListener;->releaseShutter()V

    goto :goto_2

    .line 162
    .end local v6    # "threshold":I
    :cond_5
    sget v6, Lcom/android/camera/Clapper;->DEFAULT_AMPLITUDE_DIFF:I

    .restart local v6    # "threshold":I
    goto :goto_3

    .line 178
    :cond_6
    int-to-float v7, v3

    sget v8, Lcom/android/camera/Clapper;->AMPLITUDE_ABSOLUTE_THRESHOLD:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 179
    int-to-float v8, v0

    int-to-float v9, v6

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 177
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 180
    .local v4, "progress":F
    iget-object v7, p0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    invoke-interface {v7, v4}, Lcom/android/camera/Clapper$ClapperListener;->heard(F)V

    goto :goto_2
.end method


# virtual methods
.method public start()Z
    .locals 3

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/camera/Clapper;->startRecorder()Z

    move-result v0

    .line 79
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/Clapper;->mContinueRecording:Z

    .line 82
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/Clapper$1;

    invoke-direct {v2, p0}, Lcom/android/camera/Clapper$1;-><init>(Lcom/android/camera/Clapper;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 89
    :cond_0
    return v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Clapper;->mContinueRecording:Z

    .line 92
    return-void
.end method

.method public stopRecorder()V
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 107
    return-void

    .line 112
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/Clapper;->mContinueRecording:Z

    .line 115
    iget-object v1, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 116
    iget-object v1, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Clapper"

    const-string/jumbo v2, "Failed to stop media recorder."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
