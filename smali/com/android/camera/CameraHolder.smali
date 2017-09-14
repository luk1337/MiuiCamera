.class public Lcom/android/camera/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraHolder$MyHandler;
    }
.end annotation


# static fields
.field private static mMockCamera:[Lcom/android/camera/CameraManager$CameraProxy;

.field private static mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

.field private static sHolder:Lcom/android/camera/CameraHolder;


# instance fields
.field private mBackCameraId:I

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraId:I

.field private mCameraOpened:Z

.field private mFrontCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mKeepBeforeTime:J

.field private final mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method static synthetic -get0(Lcom/android/camera/CameraHolder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    return v0
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v4, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    .line 55
    iput v4, p0, Lcom/android/camera/CameraHolder;->mBackCameraId:I

    .line 56
    iput v4, p0, Lcom/android/camera/CameraHolder;->mFrontCameraId:I

    .line 106
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "CameraHolder"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 108
    new-instance v2, Lcom/android/camera/CameraHolder$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/camera/CameraHolder$MyHandler;-><init>(Lcom/android/camera/CameraHolder;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    .line 109
    sget-object v2, Lcom/android/camera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    if-eqz v2, :cond_2

    .line 110
    sget-object v2, Lcom/android/camera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    array-length v2, v2

    iput v2, p0, Lcom/android/camera/CameraHolder;->mNumberOfCameras:I

    .line 111
    sget-object v2, Lcom/android/camera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    iput-object v2, p0, Lcom/android/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 122
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/camera/CameraHolder;->mNumberOfCameras:I

    if-ge v1, v2, :cond_4

    .line 123
    iget v2, p0, Lcom/android/camera/CameraHolder;->mBackCameraId:I

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v2, :cond_3

    .line 124
    iput v1, p0, Lcom/android/camera/CameraHolder;->mBackCameraId:I

    .line 122
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_2
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    iput v2, p0, Lcom/android/camera/CameraHolder;->mNumberOfCameras:I

    .line 114
    iget v2, p0, Lcom/android/camera/CameraHolder;->mNumberOfCameras:I

    new-array v2, v2, [Landroid/hardware/Camera$CameraInfo;

    iput-object v2, p0, Lcom/android/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 115
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget v2, p0, Lcom/android/camera/CameraHolder;->mNumberOfCameras:I

    if-ge v1, v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v3, v2, v1

    .line 117
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 125
    :cond_3
    iget v2, p0, Lcom/android/camera/CameraHolder;->mFrontCameraId:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 126
    iput v1, p0, Lcom/android/camera/CameraHolder;->mFrontCameraId:I

    goto :goto_1

    .line 105
    :cond_4
    return-void
.end method

.method public static injectMockCamera([Landroid/hardware/Camera$CameraInfo;[Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 1
    .param p0, "info"    # [Landroid/hardware/Camera$CameraInfo;
    .param p1, "camera"    # [Lcom/android/camera/CameraManager$CameraProxy;

    .prologue
    .line 100
    sput-object p0, Lcom/android/camera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 101
    sput-object p1, Lcom/android/camera/CameraHolder;->mMockCamera:[Lcom/android/camera/CameraManager$CameraProxy;

    .line 102
    new-instance v0, Lcom/android/camera/CameraHolder;

    invoke-direct {v0}, Lcom/android/camera/CameraHolder;-><init>()V

    sput-object v0, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;

    .line 99
    return-void
.end method

.method public static declared-synchronized instance()Lcom/android/camera/CameraHolder;
    .locals 2

    .prologue
    const-class v1, Lcom/android/camera/CameraHolder;

    monitor-enter v1

    .line 70
    :try_start_0
    sget-object v0, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/android/camera/CameraHolder;

    invoke-direct {v0}, Lcom/android/camera/CameraHolder;-><init>()V

    sput-object v0, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;

    .line 73
    :cond_0
    sget-object v0, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBackCameraId()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/android/camera/CameraHolder;->mBackCameraId:I

    return v0
.end method

.method public getCameraInfo()[Landroid/hardware/Camera$CameraInfo;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public getFrontCameraId()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/android/camera/CameraHolder;->mFrontCameraId:I

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/camera/CameraHolder;->mNumberOfCameras:I

    return v0
.end method

.method public declared-synchronized immediateRelease()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 214
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    .line 218
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->release()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 223
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 212
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keep()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 232
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 226
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(I)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 5
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    monitor-enter p0

    .line 141
    :try_start_0
    iget-boolean v3, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-static {v2}, Lcom/android/camera/Util;->Assert(Z)V

    .line 142
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    if-eq v2, p1, :cond_1

    .line 143
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->release()V

    .line 144
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 145
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_4

    .line 149
    :try_start_1
    const-string/jumbo v2, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "open camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object v2, Lcom/android/camera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    if-nez v2, :cond_2

    .line 151
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/CameraManager;->cameraOpen(I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 157
    :goto_0
    iput p1, p0, Lcom/android/camera/CameraHolder;->mCameraId:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 172
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    .line 173
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetOpenCameraFailTimes()V

    .line 174
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 175
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J

    .line 176
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 153
    :cond_2
    :try_start_3
    sget-object v2, Lcom/android/camera/CameraHolder;->mMockCamera:[Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_3

    .line 154
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_4
    const-string/jumbo v2, "CameraHolder"

    const-string/jumbo v3, "fail to connect Camera"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    new-instance v2, Lcom/android/camera/CameraHardwareException;

    invoke-direct {v2, v1}, Lcom/android/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 155
    :cond_3
    :try_start_5
    sget-object v2, Lcom/android/camera/CameraHolder;->mMockCamera:[Lcom/android/camera/CameraManager$CameraProxy;

    aget-object v2, v2, p1

    iput-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 165
    :cond_4
    :try_start_6
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->reconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 170
    :try_start_7
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_1

    .line 166
    :catch_1
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "CameraHolder"

    const-string/jumbo v3, "reconnect failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v2, Lcom/android/camera/CameraHardwareException;

    invoke-direct {v2, v0}, Lcom/android/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized release()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v2}, Lcom/android/camera/Util;->Assert(Z)V

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 200
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 201
    iget-boolean v2, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    if-eqz v2, :cond_0

    .line 202
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    .line 203
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    .line 206
    iget-wide v4, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v4, v0

    .line 205
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 207
    return-void

    .end local v0    # "now":J
    :cond_1
    move v2, v3

    .line 197
    goto :goto_0

    .line 209
    .restart local v0    # "now":J
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/CameraHolder;->immediateRelease()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 196
    return-void

    .end local v0    # "now":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized tryOpen(I)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 185
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraHolder;->open(I)Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_0
    monitor-exit p0

    return-object v1

    .line 186
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Lcom/android/camera/CameraHardwareException;
    :try_start_1
    const-string/jumbo v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Lcom/android/camera/CameraHardwareException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v0    # "e":Lcom/android/camera/CameraHardwareException;
    :cond_1
    monitor-exit p0

    .line 192
    return-object v1
.end method
