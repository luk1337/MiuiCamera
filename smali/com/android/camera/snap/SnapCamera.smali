.class public Lcom/android/camera/snap/SnapCamera;
.super Ljava/lang/Object;
.source "SnapCamera.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/snap/SnapCamera$1;,
        Lcom/android/camera/snap/SnapCamera$SnapStatusListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private contentValues:Landroid/content/ContentValues;

.field private mCamera:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraId:I

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mIsCamcorder:Z

.field private mLastAngle:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPicture:Landroid/hardware/Camera$PictureCallback;

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRecording:Z

.field private mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mWidth:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/snap/SnapCamera;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/snap/SnapCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/snap/SnapCamera;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/snap/SnapCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/snap/SnapCamera;->mHeight:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/snap/SnapCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/snap/SnapCamera;->mLastAngle:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/camera/snap/SnapCamera;)Lcom/android/camera/snap/SnapCamera$SnapStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/camera/snap/SnapCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/snap/SnapCamera;->mWidth:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/snap/SnapCamera;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/snap/SnapCamera;->mLastAngle:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/snap/SnapCamera;)Lcom/android/camera/PictureInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->getPictureInfo()Lcom/android/camera/PictureInfo;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/camera/snap/SnapCamera;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/snap/SnapCamera$SnapStatusListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v1, p0, Lcom/android/camera/snap/SnapCamera;->mIsCamcorder:Z

    .line 72
    iput v1, p0, Lcom/android/camera/snap/SnapCamera;->mLastAngle:I

    .line 78
    iput-boolean v1, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z

    .line 313
    new-instance v1, Lcom/android/camera/snap/SnapCamera$1;

    invoke-direct {v1, p0}, Lcom/android/camera/snap/SnapCamera$1;-><init>(Lcom/android/camera/snap/SnapCamera;)V

    iput-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mPicture:Landroid/hardware/Camera$PictureCallback;

    .line 361
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    .line 86
    :try_start_0
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    .line 87
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v2

    .line 86
    invoke-virtual {v1, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 88
    iput-object p2, p0, Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    .line 89
    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->initSnapType()V

    .line 92
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->initOrientationListener()V

    .line 93
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->initCamera()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPictureInfo()Lcom/android/camera/PictureInfo;
    .locals 2

    .prologue
    .line 352
    invoke-static {}, Lcom/android/camera/Util;->isSaveDebugInfo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    const/4 v1, 0x0

    return-object v1

    .line 355
    :cond_0
    new-instance v0, Lcom/android/camera/PictureInfo;

    invoke-direct {v0}, Lcom/android/camera/PictureInfo;-><init>()V

    .line 356
    .local v0, "info":Lcom/android/camera/PictureInfo;
    iget v1, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PictureInfo;->setSensorType(I)V

    .line 357
    return-object v0
.end method

.method private initCamera()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 133
    :try_start_0
    const-string/jumbo v10, "android.graphics.SurfaceTexture"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 134
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 133
    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 135
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 136
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/SurfaceTexture;

    iput-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 138
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    .line 139
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 140
    const-string/jumbo v11, "persist.camera.snap.auto_switch"

    const/4 v12, 0x0

    .line 139
    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v14, :cond_0

    .line 143
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v10

    invoke-static {v10}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v10

    iput v10, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    .line 146
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v10

    iget v11, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraHolder;->open(I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    .line 147
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v11, p0, Lcom/android/camera/snap/SnapCamera;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 149
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 150
    .local v7, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {p0}, Lcom/android/camera/snap/SnapCamera;->isCamcorder()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 151
    iget v10, p0, Lcom/android/camera/snap/SnapCamera;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraSettings;->getPreferVideoQuality()I

    move-result v11

    invoke-static {v10, v11}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    .line 153
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 155
    .local v9, "recordSize":Ljava/lang/String;
    const-string/jumbo v10, "video-size"

    invoke-virtual {v7, v10, v9}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string/jumbo v10, "camera-service-mute"

    const-string/jumbo v11, "true"

    invoke-virtual {v7, v10, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string/jumbo v10, "continuous-video"

    invoke-virtual {v7, v10}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 158
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 175
    .end local v9    # "recordSize":Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10, v7}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/camera/snap/SnapCamera;->isCamcorder()Z

    move-result v10

    if-nez v10, :cond_1

    .line 178
    iget-object v10, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 130
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v7    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    :goto_1
    return-void

    .line 161
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v7    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_2
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v10

    .line 160
    const/4 v11, 0x0

    .line 162
    const/4 v12, 0x0

    .line 160
    invoke-static {v11, v10, v12}, Lcom/android/camera/PictureSizeManager;->initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V

    .line 163
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v8

    .line 164
    .local v8, "pictureSize":Lcom/android/camera/PictureSize;
    iget v10, v8, Lcom/android/camera/PictureSize;->width:I

    iput v10, p0, Lcom/android/camera/snap/SnapCamera;->mWidth:I

    .line 165
    iget v10, v8, Lcom/android/camera/PictureSize;->height:I

    iput v10, p0, Lcom/android/camera/snap/SnapCamera;->mHeight:I

    .line 167
    iget v10, p0, Lcom/android/camera/snap/SnapCamera;->mWidth:I

    iget v11, p0, Lcom/android/camera/snap/SnapCamera;->mHeight:I

    invoke-virtual {v7, v10, v11}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 168
    iget v10, p0, Lcom/android/camera/snap/SnapCamera;->mLastAngle:I

    invoke-virtual {v7, v10}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 169
    const-string/jumbo v10, "zsl"

    const-string/jumbo v11, "on"

    invoke-virtual {v7, v10, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v10, "continuous-picture"

    invoke-virtual {v7, v10}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 171
    const-string/jumbo v10, "street-snap-mode"

    const-string/jumbo v11, "on"

    invoke-virtual {v7, v10, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v10, "no-display-mode"

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 180
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v7    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v8    # "pictureSize":Lcom/android/camera/PictureSize;
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Lcom/android/camera/CameraHardwareException;
    sget-object v10, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "camera init failed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/android/camera/CameraHardwareException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 190
    .end local v1    # "e":Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v3

    .line 191
    .local v3, "e":Ljava/lang/IllegalAccessException;
    sget-object v10, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "reflecting constructor of SurfaceTexture failed. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 188
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v4

    .line 189
    .local v4, "e":Ljava/lang/InstantiationException;
    sget-object v10, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "reflecting constructor of SurfaceTexture failed. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 186
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v5

    .line 187
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    sget-object v10, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "reflecting constructor of SurfaceTexture failed. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 184
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v6

    .line 185
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v10, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "reflecting constructor of SurfaceTexture failed. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 182
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v10, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "reflecting constructor of SurfaceTexture failed. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private initOrientationListener()V
    .locals 3

    .prologue
    .line 196
    new-instance v0, Lcom/android/camera/snap/SnapCamera$2;

    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    .line 197
    const/4 v2, 0x3

    .line 196
    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/snap/SnapCamera$2;-><init>(Lcom/android/camera/snap/SnapCamera;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 236
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Can detect orientation"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 195
    :goto_0
    return-void

    .line 240
    :cond_0
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Cannot detect orientation"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

.method private initSnapType()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 120
    const-string/jumbo v2, "key_long_press_volume_down"

    .line 119
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "snapType":Ljava/lang/String;
    const-string/jumbo v1, "Street-snap-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iput-boolean v3, p0, Lcom/android/camera/snap/SnapCamera;->mIsCamcorder:Z

    .line 118
    :goto_0
    return-void

    .line 123
    :cond_0
    const-string/jumbo v1, "Street-snap-movie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/snap/SnapCamera;->mIsCamcorder:Z

    goto :goto_0

    .line 126
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/snap/SnapCamera;->mIsCamcorder:Z

    goto :goto_0
.end method

.method public static isSnapEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    const-string/jumbo v3, "pref_camera_snap_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "snapValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 104
    const-string/jumbo v3, "key_long_press_volume_down"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getMiuiSettingsKeyForStreetSnap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 105
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "pref_camera_snap_key"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 108
    const-string/jumbo v3, "key_long_press_volume_down"

    .line 107
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "snapType":Ljava/lang/String;
    const-string/jumbo v2, "public_transportation_shortcuts"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    const-string/jumbo v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 109
    if-eqz v2, :cond_2

    .line 112
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 114
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private stopCamcorder()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 447
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_1

    .line 448
    iget-boolean v3, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z

    if-eqz v3, :cond_0

    .line 451
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 458
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 459
    iput-object v4, p0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 463
    :cond_1
    iget-boolean v3, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z

    if-eqz v3, :cond_2

    .line 464
    const/4 v2, 0x0

    .line 466
    .local v2, "uri":Landroid/net/Uri;
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 477
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_1
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    if-eqz v3, :cond_2

    .line 478
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera;->mStatusListener:Lcom/android/camera/snap/SnapCamera$SnapStatusListener;

    invoke-interface {v3, v2}, Lcom/android/camera/snap/SnapCamera$SnapStatusListener;->onDone(Landroid/net/Uri;)V

    .line 482
    :cond_2
    iput-boolean v6, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z

    .line 446
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/IllegalStateException;
    iput-boolean v6, p0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z

    .line 454
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 467
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v2    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 473
    .local v1, "th":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 474
    sget-object v3, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to write MediaStore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public isCamcorder()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/android/camera/snap/SnapCamera;->mIsCamcorder:Z

    return v0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 0
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->stopCamcorder()V

    .line 44
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 50
    const/16 v0, 0x320

    if-eq p2, v0, :cond_0

    .line 51
    const/16 v0, 0x321

    if-ne p2, v0, :cond_1

    .line 52
    :cond_0
    sget-object v0, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "duration or file size reach MAX"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->stopCamcorder()V

    .line 49
    :cond_1
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 268
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/android/camera/snap/SnapCamera;->mLastAngle:I

    .line 270
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 272
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 274
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mOrientationListener:Landroid/view/OrientationEventListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 281
    :cond_0
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/camera/snap/SnapCamera;->stopCamcorder()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 289
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mSurface:Landroid/graphics/SurfaceTexture;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 296
    :cond_1
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 298
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 299
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 300
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 301
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 302
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->addRawImageCallbackBuffer([B)V

    .line 303
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 304
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->release()V

    .line 305
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 266
    :cond_2
    :goto_3
    return-void

    .line 282
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 276
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public startCamcorder()V
    .locals 18

    .prologue
    .line 366
    :try_start_0
    new-instance v13, Landroid/media/MediaRecorder;

    invoke-direct {v13}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 368
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v13}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 369
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v14}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 372
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    const v14, 0x493e0

    iput v14, v13, Landroid/media/CamcorderProfile;->duration:I

    .line 377
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v14, v14, Landroid/media/CamcorderProfile;->duration:I

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 380
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v7

    .line 381
    .local v7, "loc":Landroid/location/Location;
    if-eqz v7, :cond_0

    .line 382
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    double-to-float v14, v14

    .line 383
    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v15, v0

    .line 382
    invoke-virtual {v13, v14, v15}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 386
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 387
    .local v2, "dateTaken":J
    new-instance v13, Ljava/text/SimpleDateFormat;

    .line 388
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/snap/SnapCamera;->mContext:Landroid/content/Context;

    const v15, 0x7f0e00dd

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 387
    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 388
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 387
    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 390
    .local v12, "title":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "_SNAP"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v14, v14, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v14}, Lcom/android/camera/module/VideoModule;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 391
    .local v6, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v13, v13, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v13}, Lcom/android/camera/module/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v10

    .line 392
    .local v10, "mime":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2f

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 393
    .local v11, "path":Ljava/lang/String;
    new-instance v13, Landroid/content/ContentValues;

    const/4 v14, 0x7

    invoke-direct {v13, v14}, Landroid/content/ContentValues;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    .line 394
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string/jumbo v14, "title"

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string/jumbo v14, "_display_name"

    invoke-virtual {v13, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string/jumbo v14, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string/jumbo v14, "mime_type"

    invoke-virtual {v13, v14, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string/jumbo v14, "_data"

    invoke-virtual {v13, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string/jumbo v14, "resolution"

    .line 400
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/snap/SnapCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 400
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 399
    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    if-eqz v7, :cond_1

    .line 403
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string/jumbo v14, "latitude"

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->contentValues:Landroid/content/ContentValues;

    const-string/jumbo v14, "longitude"

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 407
    :cond_1
    sget-object v13, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "save to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v13, v11}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    move-result-wide v14

    const-wide/32 v16, 0x3200000

    sub-long v8, v14, v16

    .line 412
    .local v8, "maxFileSize":J
    const-wide v14, 0xdac00000L

    cmp-long v13, v14, v8

    if-gez v13, :cond_2

    .line 413
    sget-object v13, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "need reduce , now maxFileSize = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-wide v8, 0xdac00000L

    .line 416
    :cond_2
    sget-wide v14, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    cmp-long v13, v8, v14

    if-gez v13, :cond_3

    .line 417
    sget-wide v8, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v13, v8, v9}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 429
    :goto_0
    :try_start_2
    sget-object v13, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "set orientation to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/snap/SnapCamera;->mLastAngle:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/snap/SnapCamera;->mLastAngle:I

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 432
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v13}, Landroid/media/MediaRecorder;->prepare()V

    .line 434
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v13}, Landroid/media/MediaRecorder;->start()V

    .line 438
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/camera/snap/SnapCamera;->mRecording:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 364
    .end local v2    # "dateTaken":J
    .end local v6    # "filename":Ljava/lang/String;
    .end local v7    # "loc":Landroid/location/Location;
    .end local v8    # "maxFileSize":J
    .end local v10    # "mime":Ljava/lang/String;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "title":Ljava/lang/String;
    :goto_1
    return-void

    .line 439
    :catch_0
    move-exception v4

    .line 440
    .local v4, "e":Ljava/lang/Exception;
    sget-object v13, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "prepare or start failed "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/snap/SnapCamera;->stopCamcorder()V

    .line 442
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v13}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    goto :goto_1

    .line 422
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "dateTaken":J
    .restart local v6    # "filename":Ljava/lang/String;
    .restart local v7    # "loc":Landroid/location/Location;
    .restart local v8    # "maxFileSize":J
    .restart local v10    # "mime":Ljava/lang/String;
    .restart local v11    # "path":Ljava/lang/String;
    .restart local v12    # "title":Ljava/lang/String;
    :catch_1
    move-exception v5

    .local v5, "exception":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method public takeSnap()V
    .locals 6

    .prologue
    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/snap/SnapCamera;->mPicture:Landroid/hardware/Camera$PictureCallback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/camera/snap/SnapCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "take picture failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateCameraOrientation(I)V
    .locals 2
    .param p1, "angle"    # I

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/camera/snap/SnapCamera;->isCamcorder()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 253
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 254
    iget-object v1, p0, Lcom/android/camera/snap/SnapCamera;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 249
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    return-void
.end method
