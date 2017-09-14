.class public Lcom/android/camera/camera_adapter/CameraMTK;
.super Lcom/android/camera/module/CameraModule;
.source "CameraMTK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/camera_adapter/CameraMTK$1;,
        Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;,
        Lcom/android/camera/camera_adapter/CameraMTK$FBParams;,
        Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;,
        Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;,
        Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;,
        Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;,
        Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;
    }
.end annotation


# static fields
.field private static sProxy:Lcom/android/camera/hardware/MTKCameraProxy;


# instance fields
.field private mClearImage:[B

.field private mContinuousShotCallback:Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

.field private mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

.field private mCurrentNum:I

.field private mDepthMap:[B

.field private mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

.field private mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

.field private mIsLongShotMode:Z

.field private mIsMTKFaceBeautyMode:Z

.field private mIsStereoCapture:Z

.field private mJpegPictureCB:Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

.field private mJpsData:[B

.field private mLdcData:[B

.field private mMaskAndConfigData:[B

.field private final mOperator:Ljava/lang/Object;

.field private mOriginalJpegData:[B

.field private mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

.field private final mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

.field private final mStereoPhotoDataCallback:Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;


# direct methods
.method static synthetic -get0(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mActivity:Lcom/android/camera/Camera;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/module/CameraModule$ShutterCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mShutterCallback:Lcom/android/camera/module/CameraModule$ShutterCallback;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/stereo/WarningCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoPhotoDataCallback:Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/FocusManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFocusManager:Lcom/android/camera/FocusManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/camera_adapter/CameraMTK;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/camera_adapter/CameraMTK;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsStereoCapture:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mJpegPictureCB:Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/camera_adapter/CameraMTK;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mJpegRotation:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/camera/camera_adapter/CameraMTK;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMaskAndConfigData:[B

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/camera/camera_adapter/CameraMTK;)Landroid/hardware/Camera$Parameters;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/camera/camera_adapter/CameraMTK;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPaused:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mClearImage:[B

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mDepthMap:[B

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/camera/camera_adapter/CameraMTK;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsStereoCapture:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mJpsData:[B

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mLdcData:[B

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMaskAndConfigData:[B

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mOriginalJpegData:[B

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/camera_adapter/CameraMTK;Ljava/lang/String;[B[B[B[B[B[B)[B
    .locals 1
    .param p1, "pictureName"    # Ljava/lang/String;
    .param p2, "originalJpegData"    # [B
    .param p3, "jpsData"    # [B
    .param p4, "maskAndConfigDat"    # [B
    .param p5, "clearImage"    # [B
    .param p6, "depthMap"    # [B
    .param p7, "ldcData"    # [B

    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/android/camera/camera_adapter/CameraMTK;->writeStereoCaptureInfoToJpg(Ljava/lang/String;[B[B[B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/PictureInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getPictureInfo()Lcom/android/camera/PictureInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/camera/camera_adapter/CameraMTK;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->notifyMergeData()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/camera_adapter/CameraMTK;[B)V
    .locals 0
    .param p1, "maskAndConfigData"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->setJsonBuffer([B)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/MTKCameraProxy;

    sput-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    .line 44
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsMTKFaceBeautyMode:Z

    .line 46
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    .line 47
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    .line 48
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->NONE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    .line 56
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$1;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/CameraMTK$1;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mContinuousShotCallback:Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    .line 606
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoPhotoDataCallback:Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;

    .line 607
    new-instance v0, Lcom/android/camera/stereo/WarningCallback;

    invoke-direct {v0}, Lcom/android/camera/stereo/WarningCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    .line 610
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mJpegPictureCB:Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

    .line 611
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsStereoCapture:Z

    .line 612
    iput v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    .line 52
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraCategory:Lcom/android/camera/module/CameraModule$CameraCategory;

    .line 53
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->constructObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mOperator:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method private applyFBParams(Landroid/hardware/Camera$Parameters;Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "fbParams"    # Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    .prologue
    .line 376
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 377
    :cond_0
    const-string/jumbo v1, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "applyFBParams: unexpected null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string/jumbo v0, "cameraParam"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void

    .line 377
    :cond_1
    const-string/jumbo v0, "fbParam"

    goto :goto_0

    .line 380
    :cond_2
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setSmoothLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 381
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setEnlargeEye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 382
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setSlimFace(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 383
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setSkinColor(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method private constructObject()Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 828
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v4

    if-nez v4, :cond_0

    return-object v6

    .line 830
    :cond_0
    :try_start_0
    const-string/jumbo v4, "com.mediatek.xmp.XmpOperator"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "()V"

    invoke-static {v4, v5}, Lmiui/reflect/Constructor;->of(Ljava/lang/Class;Ljava/lang/String;)Lmiui/reflect/Constructor;

    move-result-object v0

    .line 831
    .local v0, "constructor":Lmiui/reflect/Constructor;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lmiui/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 832
    .local v3, "o":Ljava/lang/Object;
    return-object v3

    .line 835
    .end local v0    # "constructor":Lmiui/reflect/Constructor;
    .end local v3    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 836
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "Camera"

    const-string/jumbo v5, "no class com.mediatek.xmp.XmpOperator"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 838
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-object v6

    .line 833
    :catch_1
    move-exception v2

    .line 834
    .local v2, "e":Lmiui/reflect/NoSuchMethodException;
    const-string/jumbo v4, "Camera"

    const-string/jumbo v5, "NoSuchMethod"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private enableZSL()Z
    .locals 1

    .prologue
    .line 387
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Y:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Z:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_H3C:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_B6:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private flattenFaces([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Ljava/lang/String;
    .locals 8
    .param p1, "faces"    # [Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 479
    if-nez p1, :cond_0

    .line 480
    .local v1, "length":I
    :goto_0
    if-nez v1, :cond_1

    .line 481
    return-object v5

    .line 479
    .end local v1    # "length":I
    :cond_0
    array-length v1, p1

    goto :goto_0

    .line 483
    .restart local v1    # "length":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 484
    .local v2, "value":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 486
    aget-object v5, p1, v0

    iget-object v5, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    aget-object v6, p1, v0

    iget-object v6, v6, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    aget-object v7, p1, v0

    iget-object v7, v7, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int v3, v5, v6

    .line 487
    .local v3, "x":I
    aget-object v5, p1, v0

    iget-object v5, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    aget-object v6, p1, v0

    iget-object v6, v6, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    aget-object v7, p1, v0

    iget-object v7, v7, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int v4, v5, v6

    .line 488
    .local v4, "y":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    add-int/lit8 v5, v1, -0x1

    if-eq v0, v5, :cond_2

    .line 490
    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 493
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getFaceNo([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;
    .locals 2
    .param p1, "faces"    # [Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    .prologue
    .line 340
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 341
    .local v0, "faceNum":I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 347
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->MULTIPLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    return-object v1

    .line 340
    .end local v0    # "faceNum":I
    :cond_0
    array-length v0, p1

    goto :goto_0

    .line 343
    .restart local v0    # "faceNum":I
    :pswitch_0
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->NONE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    return-object v1

    .line 345
    :pswitch_1
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    return-object v1

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isFlashWillOn(Ljava/lang/String;)Z
    .locals 2
    .param p1, "paramsFlashOn"    # Ljava/lang/String;

    .prologue
    .line 472
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "flashMode":Ljava/lang/String;
    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    const-string/jumbo v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 473
    if-nez v1, :cond_1

    .line 475
    :cond_0
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 473
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isSupportContinuousShut(Landroid/hardware/Camera$Parameters;)Z
    .locals 3
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v1, 0x0

    .line 462
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v2, p0}, Lcom/android/camera/hardware/MTKCameraProxy;->getSupportedCaptureMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 463
    .local v0, "supportedCaptureMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    .line 464
    :cond_1
    const-string/jumbo v2, "continuousshot"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isUseMediaTekFaceBeautify()Z
    .locals 1

    .prologue
    .line 881
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Y:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Z:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private mtkUpdateCameraParametersPreference()V
    .locals 15

    .prologue
    .line 67
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setCameraMode(Landroid/hardware/Camera$Parameters;I)V

    .line 71
    const v11, 0x7f0e0056

    invoke-virtual {p0, v11}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 72
    .local v9, "thumbnailQuality":Ljava/lang/String;
    const-string/jumbo v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "thumbnailQuality = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {v9}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v5

    .line 74
    .local v5, "quality":I
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v5}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailQuality(I)V

    .line 77
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v11

    :goto_0
    if-nez v11, :cond_0

    .line 78
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v11}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 82
    :cond_0
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "off"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 86
    :goto_1
    const-string/jumbo v11, "pref_qc_camera_iso_key"

    .line 87
    const v12, 0x7f0e00c2

    invoke-virtual {p0, v12}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 86
    invoke-virtual {p0, v11, v12}, Lcom/android/camera/camera_adapter/CameraMTK;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "iso":Ljava/lang/String;
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12}, Lcom/android/camera/hardware/MTKCameraProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/android/camera/camera_adapter/CameraMTK;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 89
    const-string/jumbo v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ISO value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 94
    :cond_1
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 95
    const-string/jumbo v12, "pref_qc_camera_saturation_key"

    .line 96
    const v13, 0x7f0e00ae

    invoke-virtual {p0, v13}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 94
    invoke-virtual {v11, v12, v13}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "saturationStr":Ljava/lang/String;
    const-string/jumbo v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Saturation value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v6}, Lcom/android/camera/hardware/MTKCameraProxy;->setSaturation(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 101
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 102
    const-string/jumbo v12, "pref_qc_camera_contrast_key"

    .line 103
    const v13, 0x7f0e00ac

    invoke-virtual {p0, v13}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 101
    invoke-virtual {v11, v12, v13}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "contrastStr":Ljava/lang/String;
    const-string/jumbo v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Contrast value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setContrast(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 108
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 109
    const-string/jumbo v12, "pref_qc_camera_sharpness_key"

    .line 110
    const v13, 0x7f0e00b0

    invoke-virtual {p0, v13}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 108
    invoke-virtual {v11, v12, v13}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "sharpnessStr":Ljava/lang/String;
    const-string/jumbo v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Sharpness value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v7}, Lcom/android/camera/hardware/MTKCameraProxy;->setSharpness(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 114
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v11}, Lcom/android/camera/camera_adapter/CameraMTK;->setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V

    .line 116
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->enableZSL()Z

    move-result v2

    .line 117
    .local v2, "enableZsl":Z
    const-string/jumbo v12, "Camera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ZSL value = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v2, :cond_c

    const-string/jumbo v11, "on"

    :goto_2
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-eqz v2, :cond_d

    .line 119
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsZSLMode:Z

    .line 120
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "on"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 127
    :goto_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 128
    const-string/jumbo v11, "pref_camera_stereo_mode_key"

    invoke-static {v11}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 129
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofMode(Landroid/hardware/Camera$Parameters;Z)V

    .line 130
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v12, 0x1388

    const/16 v13, 0x5dc0

    invoke-virtual {v11, v12, v13}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 131
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 132
    const-string/jumbo v12, "pref_camera_stereo_key"

    .line 133
    const v13, 0x7f0e01e1

    invoke-virtual {p0, v13}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 131
    invoke-virtual {v11, v12, v13}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 134
    .local v10, "vfLevel":Ljava/lang/String;
    const-string/jumbo v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "vfLevel value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v10}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 142
    .end local v10    # "vfLevel":Ljava/lang/String;
    :cond_2
    :goto_4
    iget-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMultiSnapStatus:Z

    if-eqz v11, :cond_3

    iget-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    if-eqz v11, :cond_f

    .line 146
    :cond_3
    iget-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    if-eqz v11, :cond_4

    .line 147
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    .line 148
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/camera/camera_adapter/CameraMTK;->applyMultiShutParameters(Z)V

    .line 150
    :cond_4
    :goto_5
    const-string/jumbo v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Long Shot mode value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isLongShotMode()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 153
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue()Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "fbValue":Ljava/lang/String;
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11, v12, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 155
    const-string/jumbo v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "FB value ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v14, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v13, v14}, Lcom/android/camera/hardware/MTKCameraProxy;->getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isUseMediaTekFaceBeautify()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 157
    invoke-direct {p0, v3}, Lcom/android/camera/camera_adapter/CameraMTK;->setMediatekBeautify(Ljava/lang/String;)V

    .line 161
    :goto_6
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "false"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setFaceBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 162
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "on"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->set3dnrMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 165
    .end local v3    # "fbValue":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 166
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v12, "pref_camera_show_gender_age_key"

    .line 167
    const v13, 0x7f0e0154

    invoke-virtual {p0, v13}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 166
    invoke-virtual {v11, v12, v13}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 168
    .local v8, "showGenderAndAge":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/android/camera/ui/FaceView;->setShowGenderAndAge(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "SetShowGenderAndAge ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .end local v8    # "showGenderAndAge":Ljava/lang/String;
    :cond_6
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "false"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 175
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "false"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setNightShot(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 176
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "false"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setNightAntiMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 179
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v11}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v11

    if-nez v11, :cond_7

    .line 180
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v11}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 181
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isSceneMotion()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 182
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "true"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setNightAntiMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 183
    const-string/jumbo v11, "Camera"

    const-string/jumbo v12, "AntiMotion = true"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_7
    :goto_7
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isBackCamera()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 195
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v11

    if-nez v11, :cond_8

    iget-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    if-eqz v11, :cond_13

    :cond_8
    const/4 v0, 0x0

    .line 197
    .local v0, "asdEnable":Z
    :goto_8
    const-string/jumbo v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ASD Enable = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->setMetaCallback(Z)V

    .line 65
    .end local v0    # "asdEnable":Z
    :cond_9
    return-void

    .line 77
    .end local v1    # "contrastStr":Ljava/lang/String;
    .end local v2    # "enableZsl":Z
    .end local v4    # "iso":Ljava/lang/String;
    .end local v6    # "saturationStr":Ljava/lang/String;
    .end local v7    # "sharpnessStr":Ljava/lang/String;
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 78
    :cond_b
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v11}, Lcom/android/camera/CameraSettings;->isWaterMarkOpen(Landroid/content/SharedPreferences;)Z

    move-result v11

    .line 77
    if-eqz v11, :cond_0

    .line 79
    const-string/jumbo v11, "pref_camera_stereo_mode_key"

    invoke-static {v11}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 80
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "on"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 117
    .restart local v1    # "contrastStr":Ljava/lang/String;
    .restart local v2    # "enableZsl":Z
    .restart local v4    # "iso":Ljava/lang/String;
    .restart local v6    # "saturationStr":Ljava/lang/String;
    .restart local v7    # "sharpnessStr":Ljava/lang/String;
    :cond_c
    const-string/jumbo v11, "off"

    goto/16 :goto_2

    .line 122
    :cond_d
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsZSLMode:Z

    .line 123
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "off"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 137
    :cond_e
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v12, 0x1388

    const/16 v13, 0x7530

    invoke-virtual {v11, v12, v13}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 138
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofMode(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_4

    .line 142
    :cond_f
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v11}, Lcom/android/camera/camera_adapter/CameraMTK;->isSupportContinuousShut(Landroid/hardware/Camera$Parameters;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 143
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    .line 145
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->setTimeWatermarkIfNeed()V

    goto/16 :goto_5

    .line 159
    .restart local v3    # "fbValue":Ljava/lang/String;
    :cond_10
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->setBeautyParams()V

    goto/16 :goto_6

    .line 185
    .end local v3    # "fbValue":Ljava/lang/String;
    :cond_11
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "true"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setNightShot(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 186
    const-string/jumbo v11, "Camera"

    const-string/jumbo v12, "Hand Nigh = true"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 188
    :cond_12
    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v11}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 189
    sget-object v11, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v12, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v13, "true"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 190
    const-string/jumbo v11, "Camera"

    const-string/jumbo v12, "Morpho HDR = true"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 196
    :cond_13
    const-string/jumbo v11, "pref_camera_stereo_mode_key"

    invoke-static {v11}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    const/4 v0, 0x0

    .restart local v0    # "asdEnable":Z
    goto/16 :goto_8

    .end local v0    # "asdEnable":Z
    :cond_14
    const/4 v0, 0x1

    .restart local v0    # "asdEnable":Z
    goto/16 :goto_8
.end method

.method private notifyMergeData()V
    .locals 8

    .prologue
    .line 811
    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyMergeData mCurrentNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    .line 813
    iget v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 814
    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyMergeData Vs Dof "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsStereoCapture:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->setupPreview()V

    .line 816
    iget-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsStereoCapture:Z

    if-eqz v2, :cond_0

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_STEREO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 818
    .local v1, "fileName":Ljava/lang/String;
    new-instance v0, Lcom/android/camera/stereo/StereoDataGroup;

    .line 819
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mOriginalJpegData:[B

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mJpsData:[B

    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMaskAndConfigData:[B

    .line 820
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mDepthMap:[B

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mClearImage:[B

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mLdcData:[B

    .line 818
    invoke-direct/range {v0 .. v7}, Lcom/android/camera/stereo/StereoDataGroup;-><init>(Ljava/lang/String;[B[B[B[B[B[B)V

    .line 821
    .local v0, "dataGroup":Lcom/android/camera/stereo/StereoDataGroup;
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    const/16 v3, 0x2714

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 823
    .end local v0    # "dataGroup":Lcom/android/camera/stereo/StereoDataGroup;
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    .line 810
    :cond_1
    return-void
.end method

.method private setFacePoints(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->getFaces()[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object v0

    .line 498
    .local v0, "faces":[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->flattenFaces([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 500
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v2, p1, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setFacePosition(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 496
    :cond_0
    return-void
.end method

.method private setJsonBuffer([B)V
    .locals 7
    .param p1, "maskAndConfigData"    # [B

    .prologue
    .line 859
    :try_start_0
    const-string/jumbo v4, "com.mediatek.xmp.XmpOperator"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 860
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "setJsonBuffer"

    const-string/jumbo v5, "([B)V"

    invoke-static {v0, v4, v5}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    .line 861
    .local v3, "method":Lmiui/reflect/Method;
    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mOperator:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v0, v4, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Lmiui/reflect/Method;
    :goto_0
    return-void

    .line 864
    :catch_0
    move-exception v2

    .line 865
    .local v2, "e":Lmiui/reflect/NoSuchMethodException;
    const-string/jumbo v4, "Camera"

    const-string/jumbo v5, "no method setJsonBuffer"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 862
    .end local v2    # "e":Lmiui/reflect/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 863
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "Camera"

    const-string/jumbo v5, "no class com.mediatek.xmp.XmpOperator"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setMediatekBeautify(Ljava/lang/String;)V
    .locals 8
    .param p1, "fbValue"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f0e016e

    const/16 v7, 0x22

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 204
    iget-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsMTKFaceBeautyMode:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    iput-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsMTKFaceBeautyMode:Z

    .line 206
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "normal"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->setCaptureMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 207
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "false"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->setFaceBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 208
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "on"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->set3dnrMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 210
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7, v5, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsMTKFaceBeautyMode:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    iput-boolean v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsMTKFaceBeautyMode:Z

    .line 214
    invoke-virtual {p0, v6}, Lcom/android/camera/camera_adapter/CameraMTK;->stopFaceDetection(Z)V

    .line 216
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "face_beauty"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->setCaptureMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 217
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->setFaceBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 218
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "off"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->set3dnrMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "face":Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne v2, v3, :cond_3

    .line 222
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->setExtremeBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->getFaces()[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object v1

    .line 224
    .local v1, "faces":[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lt v2, v6, :cond_2

    .line 225
    aget-object v0, v1, v5

    .line 230
    .end local v0    # "face":Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    .end local v1    # "faces":[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {p0, v2, p1, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->updateFBParams(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Ljava/lang/String;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    .line 231
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {p0, v2, v3}, Lcom/android/camera/camera_adapter/CameraMTK;->applyFBParams(Landroid/hardware/Camera$Parameters;Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V

    .line 233
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7, v6, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 228
    .restart local v0    # "face":Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    :cond_3
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "false"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->setExtremeBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 458
    :goto_0
    const-string/jumbo v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Picture flip value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v2, p1}, Lcom/android/camera/hardware/MTKCameraProxy;->getPictureFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void

    .line 456
    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateFBParams(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Ljava/lang/String;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V
    .locals 4
    .param p1, "fbParams"    # Lcom/android/camera/camera_adapter/CameraMTK$FBParams;
    .param p2, "fbValue"    # Ljava/lang/String;
    .param p3, "face"    # Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    .prologue
    .line 361
    const v1, 0x7f0e016f

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->LOW:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    .line 371
    .local v0, "fbLevel":Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    :goto_0
    invoke-static {p1, v0, p3}, Lcom/android/camera/MtkFBParamsUtil;->getIntelligentValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    .line 359
    return-void

    .line 363
    .end local v0    # "fbLevel":Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    :cond_0
    const v1, 0x7f0e0170

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->MEDIUM:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    .restart local v0    # "fbLevel":Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    goto :goto_0

    .line 365
    .end local v0    # "fbLevel":Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    :cond_1
    const v1, 0x7f0e0171

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 366
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->HIGH:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    .restart local v0    # "fbLevel":Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    goto :goto_0

    .line 368
    .end local v0    # "fbLevel":Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    :cond_2
    const-string/jumbo v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFBParams: unexpected fbMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void
.end method

.method private writeStereoCaptureInfoToJpg(Ljava/lang/String;[B[B[B[B[B[B)[B
    .locals 7
    .param p1, "pictureName"    # Ljava/lang/String;
    .param p2, "originalJpegData"    # [B
    .param p3, "jpsData"    # [B
    .param p4, "maskAndConfigDat"    # [B
    .param p5, "clearImage"    # [B
    .param p6, "depthMap"    # [B
    .param p7, "ldcData"    # [B

    .prologue
    .line 844
    :try_start_0
    const-string/jumbo v4, "com.mediatek.xmp.XmpOperator"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 845
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "writeStereoCaptureInfoToJpg"

    .line 846
    const-string/jumbo v5, "(Ljava/lang/String;[B[B[B[B[B[B)[B"

    .line 845
    invoke-static {v0, v4, v5}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    .line 847
    .local v3, "method":Lmiui/reflect/Method;
    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mOperator:Ljava/lang/Object;

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    .line 848
    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    aput-object p4, v5, v6

    const/4 v6, 0x4

    aput-object p5, v5, v6

    const/4 v6, 0x5

    aput-object p6, v5, v6

    const/4 v6, 0x6

    aput-object p7, v5, v6

    .line 847
    invoke-virtual {v3, v0, v4, v5}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 851
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Lmiui/reflect/Method;
    :catch_0
    move-exception v2

    .line 852
    .local v2, "e":Lmiui/reflect/NoSuchMethodException;
    const-string/jumbo v4, "Camera"

    const-string/jumbo v5, "no method writeStereoCaptureInfoToJpg"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 854
    .end local v2    # "e":Lmiui/reflect/NoSuchMethodException;
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 849
    :catch_1
    move-exception v1

    .line 850
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "Camera"

    const-string/jumbo v5, "no class com.mediatek.xmp.XmpOperator"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected applyMultiShutParameters(Z)V
    .locals 3
    .param p1, "startshut"    # Z

    .prologue
    .line 247
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz p1, :cond_0

    sget v0, Lcom/android/camera/camera_adapter/CameraMTK;->BURST_SHOOTING_COUNT:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V

    .line 248
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz p1, :cond_1

    .line 249
    const-string/jumbo v0, "continuousshot"

    .line 248
    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setCaptureMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 246
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 250
    :cond_1
    const-string/jumbo v0, "normal"

    goto :goto_1
.end method

.method protected cancelContinuousShot()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelPicture()V

    .line 467
    return-void
.end method

.method protected closeCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 266
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setContinuousShotCallback(Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V

    .line 268
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setStereoWarningCallback(Ljava/lang/Object;)V

    .line 270
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->closeCamera()V

    .line 265
    return-void
.end method

.method protected getBestPictureSize()Lcom/android/camera/PictureSize;
    .locals 4

    .prologue
    .line 554
    const/4 v0, 0x0

    .line 555
    .local v0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    const-string/jumbo v1, "pref_camera_stereo_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->getSupportedStereoPictureSizes(Lcom/android/camera/CameraManager$CameraProxy;Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 562
    .local v0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    .line 564
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getMaxPictureSize()I

    move-result v2

    .line 562
    invoke-static {v1, v0, v2}, Lcom/android/camera/PictureSizeManager;->initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V

    .line 566
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v1

    return-object v1

    .line 557
    .local v0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .local v0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    goto :goto_0
.end method

.method protected handleMultiSnapDone()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPaused:Z

    if-eqz v0, :cond_0

    .line 256
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setContinuousShotCallback(Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V

    .line 261
    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->handleMultiSnapDone()V

    .line 254
    return-void
.end method

.method protected initializeAfterCameraOpen()V
    .locals 3

    .prologue
    .line 578
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->initializeAfterCameraOpen()V

    .line 580
    const-string/jumbo v1, "pref_camera_stereo_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 581
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    if-nez v1, :cond_0

    .line 582
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Stereo Save Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 583
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 584
    new-instance v1, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    .line 586
    .end local v0    # "ht":Landroid/os/HandlerThread;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsStereoCapture:Z

    .line 577
    :goto_0
    return-void

    .line 588
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsStereoCapture:Z

    goto :goto_0
.end method

.method protected isFaceBeautyMode()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsMTKFaceBeautyMode:Z

    return v0
.end method

.method protected isLongShotMode()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    return v0
.end method

.method protected isSupportSceneMode()Z
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x1

    return v0
.end method

.method protected isZeroShotMode()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsZSLMode:Z

    return v0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 3

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string/jumbo v2, "flash-on"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "paramsFlashOn":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->isFlashWillOn(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected needSetupPreview()Z
    .locals 3

    .prologue
    .line 448
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string/jumbo v2, "preview-stopped"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "previewStopped":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onCameraStartPreview()V
    .locals 2

    .prologue
    .line 870
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/stereo/WarningCallback;->setActivity(Landroid/app/Activity;)V

    .line 872
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setStereoWarningCallback(Ljava/lang/Object;)V

    .line 874
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isDualCameraHintShown(Lcom/android/camera/preferences/CameraSettingPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 869
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 594
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->onDestroy()V

    .line 595
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 597
    iput-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    .line 593
    :cond_0
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 10
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v1, 0x0

    .line 301
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    .line 302
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isUseMediaTekFaceBeautify()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 303
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v4

    .line 304
    .local v4, "view":Lcom/android/camera/ui/FaceView;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/android/camera/ui/FaceView;->isFaceStable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 305
    invoke-static {p1}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->convertCameraHardwareFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object v0

    .line 306
    .local v0, "cameraFaces":[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->getFaceNo([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    move-result-object v2

    .line 309
    .local v2, "faceNo":Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;
    sget-object v5, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-eq v2, v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne v2, v5, :cond_0

    .line 310
    return-void

    .line 314
    :cond_0
    sget-object v5, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne v2, v5, :cond_1

    const/4 v5, 0x0

    aget-object v1, v0, v5

    .line 315
    .local v1, "face":Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    :cond_1
    if-eqz v1, :cond_3

    iget v5, v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    float-to-double v6, v5

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v5, v6, v8

    if-ltz v5, :cond_2

    .line 316
    iget v5, v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    const v6, 0x3ecccccd    # 0.4f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    iget v5, v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    const v6, 0x3f19999a    # 0.6f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 317
    :cond_2
    return-void

    .line 319
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue()Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "fbValue":Ljava/lang/String;
    const v5, 0x7f0e016e

    invoke-virtual {p0, v5}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 321
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {p0, v5, v3, v1}, Lcom/android/camera/camera_adapter/CameraMTK;->updateFBParams(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Ljava/lang/String;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    .line 323
    :cond_4
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne v2, v5, :cond_6

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-virtual {v5, v6}, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 300
    .end local v0    # "cameraFaces":[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    .end local v1    # "face":Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    .end local v2    # "faceNo":Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;
    .end local v3    # "fbValue":Ljava/lang/String;
    .end local v4    # "view":Lcom/android/camera/ui/FaceView;
    :cond_5
    :goto_0
    return-void

    .line 324
    .restart local v0    # "cameraFaces":[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    .restart local v1    # "face":Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    .restart local v2    # "faceNo":Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;
    .restart local v3    # "fbValue":Ljava/lang/String;
    .restart local v4    # "view":Lcom/android/camera/ui/FaceView;
    :cond_6
    sget-object v5, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne v2, v5, :cond_7

    .line 325
    sget-object v5, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v7, "true"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/hardware/MTKCameraProxy;->setExtremeBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 329
    :goto_1
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {p0, v5, v6}, Lcom/android/camera/camera_adapter/CameraMTK;->applyFBParams(Landroid/hardware/Camera$Parameters;Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V

    .line 330
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 331
    iput-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    .line 332
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-virtual {v5, v6}, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->copy(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V

    goto :goto_0

    .line 327
    :cond_7
    sget-object v5, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v7, "false"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/hardware/MTKCameraProxy;->setExtremeBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_0

    return-void

    .line 276
    :cond_0
    const-string/jumbo v2, "pref_qc_camera_iso_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 278
    const-string/jumbo v3, "pref_qc_camera_iso_key"

    .line 279
    const v4, 0x7f0e00c2

    invoke-virtual {p0, v4}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "iso":Ljava/lang/String;
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/camera_adapter/CameraMTK;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ISO value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 284
    :cond_1
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 274
    .end local v0    # "iso":Ljava/lang/String;
    :goto_0
    return-void

    .line 285
    :cond_2
    const-string/jumbo v2, "pref_camera_stereo_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 286
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 287
    const-string/jumbo v3, "pref_camera_stereo_key"

    .line 288
    const v4, 0x7f0e01e1

    invoke-virtual {p0, v4}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 286
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "vfLevel":Ljava/lang/String;
    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting changed, vfLevel value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 291
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 292
    const-string/jumbo v2, "pref_camera_stereo_key"

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/CameraMTK;->updateStatusBar(Ljava/lang/String;)V

    goto :goto_0

    .line 294
    .end local v1    # "vfLevel":Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStereoModeChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 679
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onPause()V

    .line 680
    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/CameraMTK;->setCameraState(I)V

    .line 681
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->resetMetaDataManager()V

    .line 682
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    .line 683
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 685
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 687
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->startCameraThread()V

    .line 689
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 690
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 691
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 692
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexModeDummy()V

    .line 693
    invoke-virtual {p0, v3}, Lcom/android/camera/camera_adapter/CameraMTK;->updateStereoSettings(Z)V

    .line 678
    :cond_1
    :goto_0
    return-void

    .line 695
    :cond_2
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    .line 696
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getWarningMessageView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 697
    const v1, 0x7f0e01e6

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 696
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    invoke-virtual {p0, v2, v3}, Lcom/android/camera/camera_adapter/CameraMTK;->updateWarningMessage(IZ)V

    goto :goto_0
.end method

.method protected prepareCapture()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V

    .line 426
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->setTimeWatermarkIfNeed()V

    .line 427
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isFaceBeautyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->setFacePoints(Landroid/hardware/Camera$Parameters;)V

    .line 424
    :cond_0
    return-void
.end method

.method protected prepareMultiCapture()V
    .locals 2

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->applyMultiShutParameters(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mContinuousShotCallback:Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setContinuousShotCallback(Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V

    .line 238
    :cond_0
    return-void
.end method

.method protected prepareOpenCamera()V
    .locals 1

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->closeCamera()V

    .line 571
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/hardware/MTKCameraProxy;->enableStereoMode()V

    goto :goto_0
.end method

.method protected resetFaceBeautyMode()V
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsMTKFaceBeautyMode:Z

    .line 419
    return-void
.end method

.method protected setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 402
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v1, p1}, Lcom/android/camera/hardware/MTKCameraProxy;->getSupportedAutoexposure(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 403
    .local v0, "aeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/hardware/MTKCameraProxy;->setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 401
    :cond_0
    return-void
.end method

.method protected updateCameraParametersPreference()V
    .locals 0

    .prologue
    .line 440
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 441
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->mtkUpdateCameraParametersPreference()V

    .line 439
    return-void
.end method
