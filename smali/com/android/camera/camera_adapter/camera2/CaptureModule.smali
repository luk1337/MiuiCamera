.class public Lcom/android/camera/camera_adapter/camera2/CaptureModule;
.super Lcom/android/camera/module/Base2Module;
.source "CaptureModule.java"

# interfaces
.implements Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;
.implements Lcom/android/camera/camera_adapter/camera2/SettingsManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;,
        Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;,
        Lcom/android/camera/camera_adapter/camera2/CaptureModule$3;,
        Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;,
        Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;,
        Lcom/android/camera/camera_adapter/camera2/CaptureModule$ImageAvailableListener;,
        Lcom/android/camera/camera_adapter/camera2/CaptureModule$MainHandler;,
        Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;,
        Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;
    }
.end annotation


# static fields
.field public static FRONT_ID:I

.field public static JpegCropEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static JpegCropRectKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[I>;"
        }
    .end annotation
.end field

.field public static JpegRoiRectKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[I>;"
        }
    .end annotation
.end field

.field public static MONO_ID:I

.field public static MetaDataMonoOnlyKey:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final ORIENTATIONS:Landroid/util/SparseIntArray;

.field private static final ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;


# instance fields
.field BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field BayerMonoLinkMainKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field BayerMonoLinkSessionIdKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field CdsModeKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hideCaptureProgressBarTask:Ljava/lang/Runnable;

.field mAERegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

.field mAFRegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mAeFinishTime:[J

.field private mAfFinishTime:[J

.field private mAutoExposureRegionSupported:Z

.field private mAutoFocusRegionSupported:Z

.field private mAutoFocusRequestHashCode:[I

.field private mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraId:[Ljava/lang/String;

.field private mCameraIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCameraOpened:[Z

.field private mCameraThread:Landroid/os/HandlerThread;

.field private mCamerasOpened:Z

.field private mCancelAutoFocusIfMove:Z

.field private mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureCallbackHandler:Landroid/os/Handler;

.field private mCaptureCallbackThread:Landroid/os/HandlerThread;

.field private mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

.field private mCaptureStartTime:J

.field private mCaptureState:[I

.field private mCaptureStateLock:Ljava/lang/Object;

.field private mControlAFMode:I

.field private mCropRegion:[Landroid/graphics/Rect;

.field private mCurrentMode:I

.field private mDecodeTaskForReview:Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;

.field private mDngCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

.field private mDngImage:Landroid/media/Image;

.field private mFirstTimeInitialized:Z

.field private mFocusStateListener:Lcom/android/camera/camera_adapter/camera2/FocusStateListener;

.field private mImageAvailableHandler:Landroid/os/Handler;

.field private mImageAvailableThread:Landroid/os/HandlerThread;

.field private mImageReader:[Landroid/media/ImageReader;

.field private mIsClearSightOn:Z

.field private mIsLinked:Z

.field private mLastResultAFState:[I

.field private mLatestFocusTime:J

.field private mLockRequestHashCode:[I

.field private mLongshotActive:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mMpoSaveHandler:Landroid/os/Handler;

.field private mMpoSaveThread:Landroid/os/HandlerThread;

.field private mNamedImages:Lcom/android/camera/camera_adapter/camera2/NamedImages;

.field private mPrecaptureRequestHashCode:[I

.field private mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mRawImageReader:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable",
            "<",
            "Landroid/media/ImageReader;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field private mState:[I

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mSurfaceReady:Z

.field private mThumbnailSize:Landroid/util/Size;

.field private mUI:Lcom/android/camera/ui/UIController;

.field private mVolumeLongPress:Z


# direct methods
.method static synthetic -get0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[J
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAeFinishTime:[J

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic -get12(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDecodeTaskForReview:Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/camera_adapter/camera2/FocusStateListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mFocusStateListener:Lcom/android/camera/camera_adapter/camera2/FocusStateListener;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageCaptureShowing:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mJpegImageData:[B

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mJpegRotation:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mLatestFocusTime:J

    return-wide v0
.end method

.method static synthetic -get19(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mLockRequestHashCode:[I

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[J
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAfFinishTime:[J

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMpoSaveHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/camera_adapter/camera2/NamedImages;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mNamedImages:Lcom/android/camera/camera_adapter/camera2/NamedImages;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPrecaptureRequestHashCode:[I

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/camera_adapter/camera2/SettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/ui/UIController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CameraDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraIdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Ljava/util/concurrent/Semaphore;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraOpened:[Z

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCancelAutoFocusIfMove:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCamerasOpened:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCancelAutoFocusIfMove:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;)Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDecodeTaskForReview:Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDngCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/media/Image;)Landroid/media/Image;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDngImage:Landroid/media/Image;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsLinked:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/camera/camera_adapter/camera2/CaptureModule;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mLongshotActive:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->canStartMonoPreview()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/media/Image;)[B
    .locals 1
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getJpegData(Landroid/media/Image;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap11(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getAutoFocusRequestHashCode(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getMainCameraId()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getState(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap15(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->animateCapture()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->cancelTouchFocus(I)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->checkAfAeStatesAndCapture(I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->closeCamera()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->createSessions()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isCaptureSessionReady()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->handleCameraError()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->initializePreviewConfiguration(I)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Ljava/util/List;)V
    .locals 0
    .param p1, "ids"    # Ljava/util/List;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->initializeZoom(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->lockExposure(I)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/camera/camera_adapter/camera2/CaptureModule;ILandroid/hardware/camera2/CameraAccessException;)V
    .locals 0
    .param p1, "cameraId"    # I
    .param p2, "e"    # Landroid/hardware/camera2/CameraAccessException;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraError()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCaptureDone(I)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->openCamera(I)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .locals 0
    .param p1, "soundId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->playCameraSound(I)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->runPrecaptureSequence(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isClearSightOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .locals 0
    .param p1, "camid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->saveRawImage(I)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/camera/camera_adapter/camera2/CaptureModule;II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "hashCode"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setAutoFocusRequestHashCode(II)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/camera/camera_adapter/camera2/CaptureModule;II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "state"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setState(II)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->stopMonoPreview()V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->switchToOtherMode(I)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->unlockFocus(I)V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->updateCaptureProgressBar(Z)V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/hardware/camera2/CaptureResult;I)V
    .locals 0
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;
    .param p2, "id"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->updateFocusStateChange(Landroid/hardware/camera2/CaptureResult;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isDualMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isFlashOff(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isMonoMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isMpoOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isRawOn()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 110
    sput v8, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    .line 111
    sput v7, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    .line 118
    new-array v6, v7, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 119
    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v0, v6, v1

    .line 118
    sput-object v6, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 123
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->ORIENTATIONS:Landroid/util/SparseIntArray;

    .line 158
    sget-object v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->ORIENTATIONS:Landroid/util/SparseIntArray;

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 159
    sget-object v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->ORIENTATIONS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 160
    sget-object v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->ORIENTATIONS:Landroid/util/SparseIntArray;

    const/16 v1, 0x10e

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 161
    sget-object v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->ORIENTATIONS:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 178
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "org.codeaurora.qcamera3.jpeg_encode_crop.enable"

    .line 179
    const-class v2, Ljava/lang/Byte;

    .line 178
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 177
    sput-object v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->JpegCropEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 181
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "org.codeaurora.qcamera3.jpeg_encode_crop.rect"

    .line 182
    const-class v2, [I

    .line 181
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 180
    sput-object v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->JpegCropRectKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 184
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "org.codeaurora.qcamera3.jpeg_encode_crop.roi"

    .line 185
    const-class v2, [I

    .line 184
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 183
    sput-object v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->JpegRoiRectKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 187
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string/jumbo v1, "org.codeaurora.qcamera3.sensor_meta_data.is_mono_only"

    .line 188
    const-class v2, Ljava/lang/Byte;

    .line 187
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 186
    sput-object v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MetaDataMonoOnlyKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 101
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 101
    invoke-direct {p0}, Lcom/android/camera/module/Base2Module;-><init>()V

    .line 164
    new-array v0, v3, [[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAFRegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 165
    new-array v0, v3, [[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAERegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 167
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "org.codeaurora.qcamera3.dualcam_link_meta_data.enable"

    .line 168
    const-class v2, Ljava/lang/Byte;

    .line 167
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 166
    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 170
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "org.codeaurora.qcamera3.dualcam_link_meta_data.is_main"

    .line 171
    const-class v2, Ljava/lang/Byte;

    .line 170
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 169
    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->BayerMonoLinkMainKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 173
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "org.codeaurora.qcamera3.dualcam_link_meta_data.related_camera_id"

    .line 174
    const-class v2, Ljava/lang/Integer;

    .line 173
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 172
    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->BayerMonoLinkSessionIdKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 176
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "org.codeaurora.qcamera3.CDS.cds_mode"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 175
    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->CdsModeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStateLock:Ljava/lang/Object;

    .line 190
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    .line 191
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mControlAFMode:I

    .line 192
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mLastResultAFState:[I

    .line 193
    new-array v0, v3, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    .line 197
    iput-boolean v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCamerasOpened:Z

    .line 198
    iput-boolean v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsClearSightOn:Z

    .line 199
    iput-boolean v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsLinked:Z

    .line 200
    iput-boolean v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSurfaceReady:Z

    .line 201
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraOpened:[Z

    .line 202
    new-array v0, v3, [Landroid/hardware/camera2/CameraDevice;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    .line 203
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraId:[Ljava/lang/String;

    .line 207
    iput-boolean v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mLongshotActive:Z

    .line 212
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAfFinishTime:[J

    .line 213
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAeFinishTime:[J

    .line 218
    new-array v0, v3, [Landroid/hardware/camera2/CameraCaptureSession;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    .line 235
    new-instance v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MainHandler;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Lcom/android/camera/camera_adapter/camera2/CaptureModule$MainHandler;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMainHandler:Landroid/os/Handler;

    .line 241
    new-array v0, v3, [Landroid/media/ImageReader;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    .line 243
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPrecaptureRequestHashCode:[I

    .line 244
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mLockRequestHashCode:[I

    .line 245
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAutoFocusRequestHashCode:[I

    .line 263
    new-array v0, v3, [Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 270
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mState:[I

    .line 276
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 282
    new-instance v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    .line 281
    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 405
    new-instance v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 900
    new-instance v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$3;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->hideCaptureProgressBarTask:Ljava/lang/Runnable;

    .line 1838
    iput-boolean v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mVolumeLongPress:Z

    .line 2857
    new-instance v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    .line 101
    return-void
.end method

.method private afaeRectangle(FFIIFLandroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "multiple"    # F
    .param p6, "cropRegion"    # Landroid/graphics/Rect;

    .prologue
    .line 2518
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-float v2, v2, p5

    float-to-int v12, v2

    .line 2519
    .local v12, "side":I
    new-instance v11, Landroid/graphics/RectF;

    div-int/lit8 v2, v12, 0x2

    int-to-float v2, v2

    sub-float v2, p1, v2

    div-int/lit8 v3, v12, 0x2

    int-to-float v3, v3

    sub-float v3, p2, v3

    div-int/lit8 v4, v12, 0x2

    int-to-float v4, v4

    add-float/2addr v4, p1

    div-int/lit8 v5, v12, 0x2

    int-to-float v5, v5

    add-float/2addr v5, p2

    invoke-direct {v11, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2523
    .local v11, "meteringRegionF":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 2524
    .local v1, "matrix1":Landroid/graphics/Matrix;
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDisplayOrientation:I

    .line 2525
    div-int/lit8 v6, p3, 0x2

    div-int/lit8 v7, p4, 0x2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 2524
    invoke-static/range {v1 .. v7}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V

    .line 2526
    invoke-virtual {v1, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2529
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 2530
    .local v8, "matrix2":Landroid/graphics/Matrix;
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2531
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x44fa0000    # 2000.0f

    div-float v2, v3, v2

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x44fa0000    # 2000.0f

    div-float v3, v4, v3

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2532
    invoke-virtual {v8, v8}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2534
    invoke-virtual {v1, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2535
    invoke-virtual {v8, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2537
    new-instance v10, Landroid/graphics/Rect;

    iget v2, v11, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v11, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    .line 2538
    iget v4, v11, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v11, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    .line 2537
    invoke-direct {v10, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2540
    .local v10, "meteringRegion":Landroid/graphics/Rect;
    iget v2, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 2541
    iget v2, v10, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 2542
    iget v2, v10, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 2543
    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 2545
    const/4 v2, 0x1

    new-array v9, v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 2546
    .local v9, "meteringRectangle":[Landroid/hardware/camera2/params/MeteringRectangle;
    new-instance v2, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v3, 0x1

    invoke-direct {v2, v10, v3}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    const/4 v3, 0x0

    aput-object v2, v9, v3

    .line 2547
    return-object v9

    .line 2524
    .end local v8    # "matrix2":Landroid/graphics/Matrix;
    .end local v9    # "meteringRectangle":[Landroid/hardware/camera2/params/MeteringRectangle;
    .end local v10    # "meteringRegion":Landroid/graphics/Rect;
    :cond_0
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method private animateCapture()V
    .locals 2

    .prologue
    .line 3057
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule$13;

    invoke-direct {v1, p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$13;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3056
    return-void
.end method

.method private applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 2412
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mControlAFMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAERegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    .line 2413
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAERegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    aget-object v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2411
    :goto_0
    return-void

    .line 2415
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 2404
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mControlAFMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAFRegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    .line 2405
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAFRegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    aget-object v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2403
    :goto_0
    return-void

    .line 2407
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private applyAntiBanding(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 2341
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    const-string/jumbo v3, "pref_camera_antibanding_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2342
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "auto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2343
    :cond_0
    return-void

    .line 2345
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2346
    .local v0, "intValue":I
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2340
    return-void
.end method

.method private applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 1506
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1507
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mControlAFMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1508
    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1509
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyWhiteBalance(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1510
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyExposure(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1511
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1512
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1513
    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyZoom(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1514
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyAntiBanding(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1505
    return-void
.end method

.method private applyExposure(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 2432
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    const-string/jumbo v3, "pref_camera_exposure_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2433
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    return-void

    .line 2434
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2435
    .local v0, "intValue":I
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2431
    return-void
.end method

.method private applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 3
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 2473
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-virtual {v1, p2}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isFlashSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2474
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    const-string/jumbo v2, "pref_camera_flashmode_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2475
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    .line 2472
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-void

    .line 2477
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2451
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2452
    .local v0, "mode":I
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    const-string/jumbo v3, "pref_camera2_redeyereduction_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2453
    .local v1, "redeye":Ljava/lang/String;
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2454
    packed-switch v0, :pswitch_data_0

    .line 2450
    :cond_0
    :goto_0
    return-void

    .line 2456
    :pswitch_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 2459
    :pswitch_1
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 2462
    :pswitch_2
    const-string/jumbo v2, "disable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2463
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2464
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2463
    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 2454
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 2439
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    const-string/jumbo v3, "pref_qc_camera_iso_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2440
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    return-void

    .line 2441
    :cond_0
    const-string/jumbo v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 2442
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2443
    .local v0, "intValue":I
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2438
    return-void
.end method

.method private applyJpegQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 2399
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-virtual {v1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getJpegQuality()I

    move-result v0

    .line 2400
    .local v0, "jpegQuality":I
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    int-to-byte v2, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2398
    return-void
.end method

.method private applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cameraId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 2350
    const/4 v0, 0x0

    .line 2351
    .local v0, "updatePreview":Z
    const-string/jumbo v1, "pref_camera_whitebalance_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2353
    const/4 v0, 0x1

    .line 2354
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyWhiteBalance(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2376
    :goto_0
    return v0

    .line 2351
    :cond_0
    const-string/jumbo v1, "pref_camera_scenemode_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2357
    const/4 v0, 0x1

    .line 2358
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 2351
    :cond_1
    const-string/jumbo v1, "pref_camera_exposure_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2361
    const/4 v0, 0x1

    .line 2362
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyExposure(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 2351
    :cond_2
    const-string/jumbo v1, "pref_camera_flashmode_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2365
    const/4 v0, 0x1

    .line 2366
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_0

    .line 2351
    :cond_3
    const-string/jumbo v1, "pref_qc_camera_iso_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2369
    const/4 v0, 0x1

    .line 2370
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 2373
    :cond_4
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private applySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 2420
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    const-string/jumbo v3, "pref_camera_scenemode_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2421
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    return-void

    .line 2422
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2423
    .local v0, "mode":I
    if-eqz v0, :cond_1

    .line 2424
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2425
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2419
    :goto_0
    return-void

    .line 2427
    :cond_1
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private applySettingsForAutoFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 1499
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1500
    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1501
    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1502
    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1498
    return-void
.end method

.method private applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 1474
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1475
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyJpegQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1476
    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1473
    return-void
.end method

.method private applySettingsForLockExposure(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 1486
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1485
    return-void
.end method

.method private applySettingsForLockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 1467
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1468
    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1469
    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1470
    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1466
    return-void
.end method

.method private applySettingsForPrecapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 1480
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1481
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1480
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1482
    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1479
    return-void
.end method

.method private applySettingsForUnlockExposure(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 1490
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1489
    return-void
.end method

.method private applySettingsForUnlockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 1494
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1495
    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1493
    return-void
.end method

.method private applyWhiteBalance(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 2447
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2446
    return-void
.end method

.method private applyZoom(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 2337
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->cropRegionForZoom(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2336
    return-void
.end method

.method private applyZoomAndUpdate(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 2380
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    .line 2381
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "applyZoomAndUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    return-void

    .line 2384
    :cond_0
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyZoom(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2386
    :try_start_0
    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->canStartMonoPreview()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2390
    :cond_1
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    .line 2391
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 2390
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 2379
    :goto_0
    return-void

    .line 2387
    :cond_2
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    .line 2388
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 2387
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2393
    :catch_0
    move-exception v0

    .line 2394
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-direct {p0, p1, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_0
.end method

.method private autoFocusTrigger(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 1016
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v3, v3, p1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    if-nez v3, :cond_1

    .line 1017
    :cond_0
    const-string/jumbo v3, "CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "autoFocusTrigger device["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    return-void

    .line 1021
    :cond_1
    const-string/jumbo v3, "CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "autoFocusTrigger "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const/4 v3, 0x1

    :try_start_0
    iput v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mControlAFMode:I

    .line 1024
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v3, v3, p1

    .line 1025
    const/4 v4, 0x1

    .line 1024
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1026
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1027
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getPreviewSurface(I)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1028
    invoke-direct {p0, v0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applySettingsForAutoFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1029
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 1030
    .local v2, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setAutoFocusRequestHashCode(II)V

    .line 1031
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1033
    const/4 v3, 0x5

    invoke-direct {p0, p1, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setState(II)V

    .line 1034
    iget v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mControlAFMode:I

    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setAFModeToPreview(IIZ)V

    .line 1035
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mLatestFocusTime:J
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    :goto_0
    return-void

    .line 1036
    :catch_0
    move-exception v1

    .line 1037
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-direct {p0, p1, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_0
.end method

.method private canStartMonoPreview()Z
    .locals 1

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isMonoMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isDualMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isMonoPreviewOn()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelTouchFocus(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x1

    .line 2510
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2511
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2512
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2509
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private captureStillPicture(I)V
    .locals 14
    .param p1, "id"    # I

    .prologue
    .line 1069
    :try_start_0
    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v7, v7, p1

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v7, v7, p1

    if-nez v7, :cond_1

    .line 1070
    :cond_0
    const-string/jumbo v7, "CaptureModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "captureStillPicture device["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v11, v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    return-void

    .line 1074
    :cond_1
    const-string/jumbo v7, "CaptureModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "captureStillPicture "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStateLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    :try_start_1
    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    const/4 v11, 0x2

    aput v11, v7, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v10

    .line 1078
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isClearSightOn()Z

    move-result v2

    .line 1080
    .local v2, "csEnabled":Z
    if-eqz v2, :cond_3

    .line 1082
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v7

    iget-object v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v10, v10, p1

    invoke-virtual {v7, v10}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 1090
    .local v1, "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :goto_0
    iget v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mOrientation:I

    iget-object v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-virtual {v10, p1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getCharacteristics(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/camera/Util;->getJpegRotation(ILandroid/hardware/camera2/CameraCharacteristics;)I

    move-result v7

    iput v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mJpegRotation:I

    .line 1091
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mJpegRotation:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1092
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mThumbnailSize:Landroid/util/Size;

    invoke-virtual {v1, v7, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1093
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v10, 0x64

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1094
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    .line 1095
    .local v5, "loc":Landroid/location/Location;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-lez v7, :cond_2

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v7, v10, v12

    if-lez v7, :cond_2

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v7, v10, v12

    if-lez v7, :cond_2

    .line 1097
    new-instance v6, Landroid/location/Location;

    invoke-direct {v6, v5}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 1098
    .local v6, "newLoc":Landroid/location/Location;
    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v6, v10, v11}, Landroid/location/Location;->setTime(J)V

    .line 1099
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v7, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1101
    .end local v6    # "newLoc":Landroid/location/Location;
    :cond_2
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1102
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getPreviewSurface(I)Landroid/view/Surface;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1103
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mControlAFMode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1104
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1105
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1104
    invoke-virtual {v1, v7, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1106
    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->CdsModeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1107
    invoke-direct {p0, v1, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applySettingsForLockExposure(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1108
    invoke-direct {p0, v1, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1110
    if-eqz v2, :cond_5

    .line 1111
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v10

    .line 1112
    if-nez p1, :cond_4

    const/4 v7, 0x1

    :goto_1
    iget-object v11, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v11, v11, p1

    iget-object v12, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    .line 1111
    invoke-virtual {v10, v7, v11, v1, v12}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->capture(ZLandroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/os/Handler;)V

    .line 1113
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v7

    iget v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mJpegRotation:I

    invoke-virtual {v7, v10}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->setJpegRotation(I)V

    .line 1067
    .end local v1    # "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v2    # "csEnabled":Z
    .end local v5    # "loc":Landroid/location/Location;
    :goto_2
    return-void

    .line 1075
    :catchall_0
    move-exception v7

    monitor-exit v10

    throw v7
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1199
    :catch_0
    move-exception v3

    .line 1200
    .local v3, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-direct {p0, p1, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_2

    .line 1086
    .end local v3    # "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v2    # "csEnabled":Z
    :cond_3
    :try_start_3
    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v7, v7, p1

    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .restart local v1    # "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    goto/16 :goto_0

    .line 1112
    .restart local v5    # "loc":Landroid/location/Location;
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 1115
    :cond_5
    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1118
    iget-boolean v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mLongshotActive:Z

    if-eqz v7, :cond_7

    .line 1119
    const-string/jumbo v7, "CaptureModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "longShot "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1121
    .local v0, "burstList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-static {}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getLongshotShotLimit()I

    move-result v7

    if-ge v4, v7, :cond_6

    .line 1122
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1124
    :cond_6
    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v7, v7, p1

    .line 1125
    new-instance v10, Lcom/android/camera/camera_adapter/camera2/CaptureModule$6;

    invoke-direct {v10, p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$6;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    .line 1149
    iget-object v11, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    .line 1124
    invoke-virtual {v7, v0, v10, v11}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_2

    .line 1151
    .end local v0    # "burstList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .end local v4    # "i":I
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isMpoOn()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1153
    .local v8, "now":J
    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMpoSaveHandler:Landroid/os/Handler;

    .line 1154
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1153
    const/4 v11, 0x0

    invoke-virtual {v7, v11, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1158
    .end local v8    # "now":J
    :cond_8
    :goto_4
    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v7, v7, p1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v10

    .line 1159
    new-instance v11, Lcom/android/camera/camera_adapter/camera2/CaptureModule$7;

    invoke-direct {v11, p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$7;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    .line 1196
    iget-object v12, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    .line 1158
    invoke-virtual {v7, v10, v11, v12}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto/16 :goto_2

    .line 1155
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isRawOn()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1156
    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    invoke-virtual {v7}, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->get()Ljava/lang/AutoCloseable;

    move-result-object v7

    check-cast v7, Landroid/media/ImageReader;

    invoke-virtual {v7}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4
.end method

.method private checkAfAeStatesAndCapture(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 518
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    aget v0, v0, p1

    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    .line 520
    const-string/jumbo v0, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAfAeStatesAndCapture: s["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 521
    return-void

    :cond_0
    monitor-exit v1

    .line 525
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isDualMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    invoke-direct {p0, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getState(I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 527
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getState(I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 528
    invoke-direct {p0, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->captureStillPicture(I)V

    .line 529
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->captureStillPicture(I)V

    .line 517
    :cond_1
    :goto_0
    return-void

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 532
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->captureStillPicture(I)V

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1421
    const-string/jumbo v2, "CaptureModule"

    const-string/jumbo v3, "closeCamera>>>"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 1425
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 1426
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1427
    .local v0, "cameraId":Ljava/lang/String;
    const-string/jumbo v2, "CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "closeCamera>>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 1429
    const-string/jumbo v2, "CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "closeCamera<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aput-object v5, v2, v1

    .line 1431
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraOpened:[Z

    aput-boolean v6, v2, v1

    .line 1432
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aput-object v5, v2, v1

    .line 1434
    .end local v0    # "cameraId":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 1435
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    .line 1436
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aput-object v5, v2, v1

    .line 1438
    :cond_1
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1439
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->close()V

    .line 1440
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    invoke-interface {v2, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1424
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 1443
    :cond_3
    iput-boolean v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsLinked:Z

    .line 1444
    const-string/jumbo v2, "CaptureModule"

    const-string/jumbo v3, "closeCamera<<<"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    return-void
.end method

.method private createSession(I)V
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 652
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v6, v6, p1

    if-nez v6, :cond_1

    .line 653
    :cond_0
    return-void

    .line 652
    :cond_1
    iget-boolean v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSurfaceReady:Z

    if-eqz v6, :cond_0

    .line 655
    const-string/jumbo v6, "CaptureModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "createSession "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 658
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getPreviewSurface(I)Landroid/view/Surface;

    move-result-object v3

    .line 659
    .local v3, "surface":Landroid/view/Surface;
    sget v6, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne p1, v6, :cond_2

    .line 660
    const-string/jumbo v6, "CaptureModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "monoSurface="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_2
    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v7, v7, p1

    .line 664
    const/4 v8, 0x1

    .line 663
    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v7

    aput-object v7, v6, p1

    .line 665
    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v6, v6, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 666
    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v6, v6, p1

    invoke-virtual {v6, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 669
    new-instance v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    .line 741
    .local v0, "captureSessionCallback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isClearSightOn()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 744
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v6

    .line 745
    if-nez p1, :cond_3

    :goto_0
    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v5, v5, p1

    .line 744
    invoke-virtual {v6, v4, v5, v2, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createCaptureSession(ZLandroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 651
    .end local v0    # "captureSessionCallback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .end local v3    # "surface":Landroid/view/Surface;
    :goto_1
    return-void

    .restart local v0    # "captureSessionCallback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .restart local v3    # "surface":Landroid/view/Surface;
    :cond_3
    move v4, v5

    .line 745
    goto :goto_0

    .line 747
    :cond_4
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isRawOn()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 749
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    invoke-virtual {v4}, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->get()Ljava/lang/AutoCloseable;

    move-result-object v4

    check-cast v4, Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    :cond_5
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v4, v4, p1

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v0, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 754
    .end local v0    # "captureSessionCallback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .end local v3    # "surface":Landroid/view/Surface;
    :catch_0
    move-exception v1

    .line 755
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-direct {p0, p1, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_1
.end method

.method private createSessions()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 626
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCamerasOpened:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSurfaceReady:Z

    if-eqz v1, :cond_0

    .line 631
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 632
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v0

    .line 633
    .local v0, "cameraMode":I
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createSessions: mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    packed-switch v0, :pswitch_data_0

    .line 625
    .end local v0    # "cameraMode":I
    :goto_0
    return-void

    .line 627
    :cond_0
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createSessions: surfaceReady="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 628
    iget-boolean v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSurfaceReady:Z

    .line 627
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 628
    const-string/jumbo v3, " cameraReady="

    .line 627
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 628
    iget-boolean v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCamerasOpened:Z

    .line 627
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-void

    .line 636
    .restart local v0    # "cameraMode":I
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->createSession(I)V

    .line 637
    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->createSession(I)V

    goto :goto_0

    .line 640
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->createSession(I)V

    goto :goto_0

    .line 643
    :pswitch_2
    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->createSession(I)V

    goto :goto_0

    .line 647
    .end local v0    # "cameraMode":I
    :cond_1
    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->createSession(I)V

    goto :goto_0

    .line 634
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getAutoFocusRequestHashCode(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 859
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    monitor-enter v1

    .line 860
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAutoFocusRequestHashCode:[I

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 859
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getCameraMode()I
    .locals 1

    .prologue
    .line 1612
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCurrentMode:I

    return v0
.end method

.method private getJpegData(Landroid/media/Image;)[B
    .locals 4
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 2844
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2845
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v1, v2, [B

    .line 2846
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2847
    return-object v1
.end method

.method private getLastResultAFState(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 871
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    monitor-enter v1

    .line 872
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mLastResultAFState:[I

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 871
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMainCameraId()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2132
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2133
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2140
    return v1

    .line 2136
    :pswitch_0
    return v1

    .line 2138
    :pswitch_1
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    return v0

    .line 2143
    :cond_0
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    return v0

    .line 2133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getOptimalPreviewSize(Landroid/util/Size;[Landroid/util/Size;II)Landroid/util/Size;
    .locals 10
    .param p1, "pictureSize"    # Landroid/util/Size;
    .param p2, "prevSizes"    # [Landroid/util/Size;
    .param p3, "screenW"    # I
    .param p4, "screenH"    # I

    .prologue
    const/4 v4, 0x0

    .line 2672
    aget-object v0, p2, v4

    .line 2673
    .local v0, "optimal":Landroid/util/Size;
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 2674
    .local v3, "ratio":F
    array-length v5, p2

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, p2, v4

    .line 2675
    .local v2, "prevSize":Landroid/util/Size;
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 2676
    .local v1, "prevRatio":F
    sub-float v6, v1, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 2678
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-gt v6, p4, :cond_0

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-gt v6, p3, :cond_0

    .line 2679
    return-object v2

    .line 2681
    :cond_0
    move-object v0, v2

    .line 2674
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2685
    .end local v1    # "prevRatio":F
    .end local v2    # "prevSize":Landroid/util/Size;
    :cond_2
    return-object v0
.end method

.method private getPreviewSurface(I)Landroid/view/Surface;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 2482
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2483
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isDualMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne p1, v0, :cond_0

    .line 2489
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getMonoDummySurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0

    .line 2491
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0

    .line 2494
    :cond_1
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method private getState(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 847
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    monitor-enter v1

    .line 848
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mState:[I

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 847
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleCameraError()V
    .locals 6

    .prologue
    .line 3080
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3079
    :cond_0
    :goto_0
    return-void

    .line 3081
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "camera2_error_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 3082
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    .line 3083
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 3084
    const v0, 0x7f0e0005

    .line 3082
    :goto_1
    invoke-static {v1, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 3084
    :cond_2
    const v0, 0x7f0e0004

    goto :goto_1
.end method

.method private handleVolumeKeyEvent(ZZI)Z
    .locals 7
    .param p1, "up"    # Z
    .param p2, "pressed"    # Z
    .param p3, "repeatCount"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1817
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v2, "pref_camera_volumekey_function_key"

    .line 1818
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    const v4, 0x7f0e011e

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1817
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1819
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    const v2, 0x7f0e011b

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1820
    invoke-virtual {p0, p3, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->performVolumeKeyClicked(IZ)V

    .line 1821
    return v6

    .line 1822
    :cond_0
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    const v2, 0x7f0e011c

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1823
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isZoomEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 1824
    if-nez p3, :cond_1

    .line 1825
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "zoom_volume_times"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1827
    :cond_1
    if-eqz p1, :cond_2

    .line 1828
    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->scaleZoomValue(F)Z

    .line 1832
    :goto_0
    return v6

    .line 1830
    :cond_2
    const v1, -0x42333333    # -0.1f

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->scaleZoomValue(F)Z

    goto :goto_0

    .line 1835
    :cond_3
    return v5
.end method

.method private hidePostCaptureAlert()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3013
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 3014
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageCaptureShowing:Z

    .line 3015
    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->ignoreTouchEvent(Z)V

    .line 3016
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->show()V

    .line 3017
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->show()V

    .line 3018
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->setPopupVisible(Z)V

    .line 3019
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/camera/ui/V6ShutterButton;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 3020
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 3021
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewImage()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3022
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopControlPanel()Lcom/android/camera/ui/TopControlPanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TopControlPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 3023
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 3012
    :cond_0
    return-void
.end method

.method private initCameraMode()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 541
    const-string/jumbo v1, "camera_rear_sub"

    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isSpecialImageCaptureIntent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    return v3

    .line 543
    :cond_0
    const-string/jumbo v1, "camera_rear_dual"

    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isSpecialImageCaptureIntent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    return v4

    .line 546
    :cond_1
    const-string/jumbo v1, "pref_camera_raw_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 547
    return v2

    .line 548
    :cond_2
    const-string/jumbo v1, "pref_camera_mono_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 549
    return v3

    .line 552
    :cond_3
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getPersistSceneMode(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "bayer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 554
    return v2

    .line 555
    :cond_4
    const-string/jumbo v1, "mono"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 556
    return v3

    .line 558
    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 559
    return v4

    .line 561
    :cond_6
    return v2
.end method

.method private initClearSightOn()V
    .locals 1

    .prologue
    .line 575
    const-string/jumbo v0, "camera_rear_sub"

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isSpecialImageCaptureIntent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    const-string/jumbo v0, "camera_rear_dual"

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isSpecialImageCaptureIntent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsClearSightOn:Z

    .line 574
    return-void

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isClearSightOn(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 575
    if-eqz v0, :cond_0

    .line 578
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isDualMode()Z

    move-result v0

    goto :goto_0
.end method

.method private initRawImageReaderList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 3048
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isRawOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    if-nez v1, :cond_0

    .line 3049
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    .line 3050
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3051
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3050
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3047
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private initializeFirstTime()V
    .locals 2

    .prologue
    .line 599
    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mFirstTimeInitialized:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    :cond_0
    return-void

    .line 603
    :cond_1
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    .line 605
    .local v0, "s":Lcom/android/camera/storage/ImageSaver;
    if-eqz v0, :cond_2

    .line 606
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isClearSightOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 607
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->setMediaSaver(Lcom/android/camera/storage/ImageSaver;)V

    .line 611
    :cond_2
    new-instance v1, Lcom/android/camera/camera_adapter/camera2/NamedImages;

    invoke-direct {v1}, Lcom/android/camera/camera_adapter/camera2/NamedImages;-><init>()V

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mNamedImages:Lcom/android/camera/camera_adapter/camera2/NamedImages;

    .line 612
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mFirstTimeInitialized:Z

    .line 598
    return-void
.end method

.method private initializePreviewConfiguration(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2318
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2317
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2319
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2316
    return-void
.end method

.method private initializeSecondTime()V
    .locals 2

    .prologue
    .line 616
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    .line 617
    .local v0, "s":Lcom/android/camera/storage/ImageSaver;
    if-eqz v0, :cond_0

    .line 618
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isClearSightOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->setMediaSaver(Lcom/android/camera/storage/ImageSaver;)V

    .line 622
    :cond_0
    new-instance v1, Lcom/android/camera/camera_adapter/camera2/NamedImages;

    invoke-direct {v1}, Lcom/android/camera/camera_adapter/camera2/NamedImages;-><init>()V

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mNamedImages:Lcom/android/camera/camera_adapter/camera2/NamedImages;

    .line 615
    return-void
.end method

.method private isBackCamera()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 537
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCaptureSessionReady()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1788
    const/4 v0, 0x0

    .line 1789
    .local v0, "ready":Z
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1790
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1806
    :goto_0
    return v0

    .line 1792
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1795
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1798
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1804
    :cond_3
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1790
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isClearSightOn()Z
    .locals 1

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsClearSightOn:Z

    return v0
.end method

.method private isCountDownMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1863
    const-string/jumbo v1, "pref_delay_capture_mode"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1864
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCountDownTimes()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1863
    :cond_0
    return v0
.end method

.method private isDualMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 567
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isFlashOff(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 2309
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isFlashSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2310
    return v1

    .line 2313
    :cond_0
    return v1
.end method

.method private isInMode(I)Z
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2046
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2047
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2058
    return v1

    .line 2049
    :pswitch_0
    if-eqz p1, :cond_0

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 2051
    :pswitch_1
    if-nez p1, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 2053
    :pswitch_2
    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne p1, v2, :cond_3

    :goto_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 2056
    :cond_4
    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    if-ne p1, v2, :cond_5

    :goto_3
    return v0

    :cond_5
    move v0, v1

    goto :goto_3

    .line 2047
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isMonoMode()Z
    .locals 2

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMpoOn()Z
    .locals 1

    .prologue
    .line 592
    const-string/jumbo v0, "camera_rear_sub"

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isSpecialImageCaptureIntent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 593
    const-string/jumbo v0, "camera_rear_dual"

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isSpecialImageCaptureIntent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isMpoOn(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 592
    if-eqz v0, :cond_1

    .line 595
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isDualMode()Z

    move-result v0

    .line 592
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPreviewVisible()Z
    .locals 1

    .prologue
    .line 1810
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1813
    const/4 v0, 0x1

    return v0

    .line 1811
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isRawOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 586
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isImageCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_1

    .line 587
    const-string/jumbo v2, "pref_camera_raw_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    .line 586
    if-eqz v2, :cond_1

    .line 588
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 586
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 588
    goto :goto_0

    :cond_1
    move v0, v1

    .line 586
    goto :goto_0
.end method

.method private isSceneModeOn()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2166
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    const-string/jumbo v4, "pref_camera_scenemode_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2167
    .local v1, "scene":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2168
    return v2

    .line 2170
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2171
    .local v0, "mode":I
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private isShutterButtonClickable()Z
    .locals 1

    .prologue
    .line 1859
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSpecialImageCaptureIntent(Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 2920
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extras.CAMERA_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isTouchToFocusAllowed()Z
    .locals 1

    .prologue
    .line 2159
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isTakingPicture()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isSceneModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageCaptureShowing:Z

    if-eqz v0, :cond_1

    .line 2160
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2162
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private lockExposure(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 1451
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    if-nez v1, :cond_1

    .line 1452
    :cond_0
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lockExposure session["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    return-void

    .line 1455
    :cond_1
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lockExposure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applySettingsForLockExposure(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1458
    const/4 v1, 0x3

    invoke-direct {p0, p1, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setState(II)V

    .line 1459
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 1460
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 1459
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1450
    :goto_0
    return-void

    .line 1461
    :catch_0
    move-exception v0

    .line 1462
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-direct {p0, p1, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_0
.end method

.method private lockFocus(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    if-nez v3, :cond_1

    .line 987
    :cond_0
    const-string/jumbo v3, "CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lockFocus session["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    return-void

    .line 986
    :cond_1
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v3, v3, p1

    if-eqz v3, :cond_0

    .line 991
    const-string/jumbo v3, "CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lockFocus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 993
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    const/4 v5, 0x1

    aput v5, v3, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 995
    sget v3, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne v3, p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isDualMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 996
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->startMonoPreview()V

    .line 1000
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v3, v3, p1

    .line 1001
    const/4 v4, 0x1

    .line 1000
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1002
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1003
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getPreviewSurface(I)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1005
    invoke-direct {p0, v0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applySettingsForLockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1006
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 1007
    .local v2, "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mLockRequestHashCode:[I

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v4

    aput v4, v3, p1

    .line 1008
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setState(II)V

    .line 1009
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 985
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    :goto_0
    return-void

    .line 992
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1010
    :catch_0
    move-exception v1

    .line 1011
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-direct {p0, p1, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_0
.end method

.method private onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V
    .locals 4
    .param p1, "cameraId"    # I
    .param p2, "e"    # Landroid/hardware/camera2/CameraAccessException;

    .prologue
    .line 3066
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3067
    invoke-virtual {p2}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    .line 3068
    .local v0, "reason":I
    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne v1, p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isMonoMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3069
    :cond_0
    const/4 v1, 0x2

    if-eq v1, v0, :cond_1

    .line 3070
    const/4 v1, 0x3

    if-ne v1, v0, :cond_2

    .line 3071
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraError()V

    .line 3065
    :cond_2
    return-void
.end method

.method private onCameraError()V
    .locals 2

    .prologue
    .line 3076
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3075
    return-void
.end method

.method private onCaptureDone(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1388
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1389
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    const/4 v2, 0x0

    aput v2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1391
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 1392
    :cond_0
    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCaptureDone session["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    return-void

    .line 1388
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1396
    :cond_1
    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCaptureDone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getMainCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 1398
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule$10;

    invoke-direct {v1, p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$10;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1405
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCancelAutoFocusIfMove:Z

    if-nez v0, :cond_3

    .line 1406
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->unlockFocus(I)V

    .line 1387
    :cond_3
    return-void
.end method

.method private onModeSelected(Ljava/lang/Object;)V
    .locals 7
    .param p1, "extra1"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 1950
    const-string/jumbo v3, "CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onModeSelected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    const-string/jumbo v3, "pref_camera_panoramamode_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1952
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->switchToOtherMode(I)V

    .line 1953
    return-void

    .line 1956
    :cond_0
    const-string/jumbo v3, "pref_camera_mono_mode_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1957
    const-string/jumbo v3, "pref_camera_raw_mode_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    move-object v3, p1

    .line 1958
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    .line 1960
    .local v2, "switchOn":Z
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 1961
    const-string/jumbo v3, "pref_camera_stereo_mode_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->resetPreference(Ljava/lang/String;)V

    .line 1962
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->restart()V

    .line 1963
    return-void

    .line 1956
    .end local v2    # "switchOn":Z
    :cond_1
    const/4 v0, 0x1

    .local v0, "dualModule":Z
    goto :goto_0

    .line 1967
    .end local v0    # "dualModule":Z
    .restart local v2    # "switchOn":Z
    :cond_2
    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    .line 1968
    check-cast p1, Ljava/lang/String;

    .end local p1    # "extra1":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setSelectedMode(Ljava/lang/String;)V

    .line 1972
    :goto_1
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6SettingPage;->getSelectedItemKey()Ljava/lang/String;

    move-result-object v1

    .line 1973
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_5

    const-string/jumbo v3, "pref_camera_mono_mode_key"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1974
    const-string/jumbo v3, "pref_camera_raw_mode_key"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1949
    :cond_3
    :goto_2
    return-void

    .line 1970
    .end local v1    # "key":Ljava/lang/String;
    .restart local p1    # "extra1":Ljava/lang/Object;
    :cond_4
    invoke-static {v6}, Lcom/android/camera/CameraSettings;->setSelectedMode(Ljava/lang/String;)V

    goto :goto_1

    .line 1975
    .end local p1    # "extra1":Ljava/lang/Object;
    .restart local v1    # "key":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->switchToOtherMode(I)V

    goto :goto_2
.end method

.method private onStereoModeChanged()V
    .locals 1

    .prologue
    .line 2007
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2008
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->switchToOtherMode(I)V

    .line 2006
    :cond_0
    return-void
.end method

.method private onUIStyleChanged(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 2851
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0, p1}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;I)V

    .line 2852
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->changePreviewSurfaceSize()V

    .line 2850
    return-void
.end method

.method private openCamera(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 1586
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1587
    return-void

    .line 1589
    :cond_0
    const-string/jumbo v3, "CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "openCamera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    const-string/jumbo v4, "camera"

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    .line 1593
    .local v2, "manager":Landroid/hardware/camera2/CameraManager;
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraId:[Ljava/lang/String;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p1

    aput-object v4, v3, p1

    .line 1594
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x1388

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1595
    const-string/jumbo v3, "CaptureModule"

    const-string/jumbo v4, "Time out waiting to lock camera opening."

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Time out waiting to lock camera opening"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1599
    .end local v2    # "manager":Landroid/hardware/camera2/CameraManager;
    :catch_0
    move-exception v0

    .line 1600
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-direct {p0, p1, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    .line 1585
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void

    .line 1598
    .restart local v2    # "manager":Landroid/hardware/camera2/CameraManager;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraId:[Ljava/lang/String;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1601
    .end local v2    # "manager":Landroid/hardware/camera2/CameraManager;
    :catch_1
    move-exception v1

    .line 1602
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "CaptureModule"

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private resetCameraState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 829
    iput-boolean v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSurfaceReady:Z

    .line 830
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 831
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraOpened:[Z

    aput-boolean v2, v1, v0

    .line 832
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    aput v2, v1, v0

    .line 833
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mState:[I

    aput v2, v1, v0

    .line 830
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 828
    :cond_0
    return-void
.end method

.method private restart()V
    .locals 0

    .prologue
    .line 2663
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->reinit()V

    .line 2664
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onPauseBeforeSuper()V

    .line 2665
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onPauseAfterSuper()V

    .line 2666
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onResumeBeforeSuper()V

    .line 2667
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onResumeAfterSuper()V

    .line 2662
    return-void
.end method

.method private runPrecaptureSequence(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 1209
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    if-nez v3, :cond_1

    .line 1210
    :cond_0
    const-string/jumbo v3, "CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runPrecaptureSequence session["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    return-void

    .line 1209
    :cond_1
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v3, v3, p1

    if-eqz v3, :cond_0

    .line 1213
    const-string/jumbo v3, "CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runPrecaptureSequence "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v3, v3, p1

    .line 1216
    const/4 v4, 0x1

    .line 1215
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1217
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1218
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getPreviewSurface(I)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1219
    invoke-direct {p0, v0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applySettingsForPrecapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1220
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 1221
    .local v2, "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPrecaptureRequestHashCode:[I

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v4

    aput v4, v3, p1

    .line 1222
    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setState(II)V

    .line 1223
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    :goto_0
    return-void

    .line 1224
    :catch_0
    move-exception v1

    .line 1225
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-direct {p0, p1, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_0
.end method

.method private saveRawImage(I)V
    .locals 18
    .param p1, "camid"    # I

    .prologue
    .line 3028
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDngCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDngImage:Landroid/media/Image;

    if-eqz v2, :cond_0

    .line 3029
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3030
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->getAndRetain()Ljava/lang/AutoCloseable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3031
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 3032
    .local v16, "now":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mNamedImages:Lcom/android/camera/camera_adapter/camera2/NamedImages;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/camera_adapter/camera2/NamedImages;->nameNewImage(J)V

    .line 3033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mNamedImages:Lcom/android/camera/camera_adapter/camera2/NamedImages;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/NamedImages;->getNextNameEntity()Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    move-result-object v14

    .line 3034
    .local v14, "name":Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;
    if-nez v14, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3035
    .local v5, "title":Ljava/lang/String;
    :goto_0
    if-nez v14, :cond_2

    const-wide/16 v6, -0x1

    .line 3036
    .local v6, "date":J
    :goto_1
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    .line 3038
    .local v8, "loc":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDngImage:Landroid/media/Image;

    .line 3039
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    .line 3040
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDngImage:Landroid/media/Image;

    invoke-virtual {v9}, Landroid/media/Image;->getWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDngImage:Landroid/media/Image;

    invoke-virtual {v10}, Landroid/media/Image;->getHeight()I

    move-result v10

    .line 3041
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getCharacteristics(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDngCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 3040
    const/4 v11, 0x0

    .line 3038
    invoke-virtual/range {v2 .. v13}, Lcom/android/camera/storage/ImageSaver;->addDng(Landroid/media/Image;Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;Ljava/lang/String;JLandroid/location/Location;IIILandroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V

    .line 3042
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDngImage:Landroid/media/Image;

    .line 3043
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDngCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 3027
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "date":J
    .end local v8    # "loc":Landroid/location/Location;
    .end local v14    # "name":Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;
    .end local v16    # "now":J
    :cond_0
    return-void

    .line 3034
    .restart local v14    # "name":Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;
    .restart local v16    # "now":J
    :cond_1
    iget-object v5, v14, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->title:Ljava/lang/String;

    .restart local v5    # "title":Ljava/lang/String;
    goto :goto_0

    .line 3035
    :cond_2
    iget-wide v6, v14, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->date:J

    .restart local v6    # "date":J
    goto :goto_1
.end method

.method private setAFModeToPreview(IIZ)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "afMode"    # I
    .param p3, "forceStartPreview"    # Z

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    if-nez v1, :cond_1

    .line 761
    :cond_0
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAFModeToPreview session["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return-void

    .line 765
    :cond_1
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAFModeToPreview id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 767
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 768
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 770
    :try_start_0
    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->canStartMonoPreview()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 774
    :cond_2
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    .line 775
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 774
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 759
    :goto_0
    return-void

    .line 770
    :cond_3
    if-nez p3, :cond_2

    .line 771
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    .line 772
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 771
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 777
    :catch_0
    move-exception v0

    .line 778
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-direct {p0, p1, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_0
.end method

.method private setAutoFocusRequestHashCode(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "hashCode"    # I

    .prologue
    .line 853
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    monitor-enter v1

    .line 854
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAutoFocusRequestHashCode:[I

    aput p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 852
    return-void

    .line 853
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setCurrentMode()V
    .locals 1

    .prologue
    .line 1608
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->initCameraMode()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCurrentMode:I

    .line 1607
    return-void

    .line 1608
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setLastResultAFState(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "state"    # I

    .prologue
    .line 865
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    monitor-enter v1

    .line 866
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mLastResultAFState:[I

    aput p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 864
    return-void

    .line 865
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setState(II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "state"    # I

    .prologue
    .line 838
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    monitor-enter v1

    .line 839
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mState:[I

    aget v0, v0, p1

    if-eq v0, p2, :cond_0

    .line 840
    const-string/jumbo v0, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "s["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mState:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mState:[I

    aput p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 837
    return-void

    .line 838
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setUpCameraOutputs()V
    .locals 26

    .prologue
    .line 1233
    const-string/jumbo v20, "CaptureModule"

    const-string/jumbo v21, "setUpCameraOutputs"

    invoke-static/range {v20 .. v21}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v20, v0

    const-string/jumbo v21, "camera"

    invoke-virtual/range {v20 .. v21}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/camera2/CameraManager;

    .line 1235
    .local v11, "manager":Landroid/hardware/camera2/CameraManager;
    const/4 v5, -0x1

    .line 1237
    .local v5, "camId":I
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->initRawImageReaderList()V

    .line 1238
    invoke-virtual {v11}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v7

    .line 1239
    .local v7, "cameraIdList":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, v7

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_8

    .line 1240
    aget-object v6, v7, v10

    .line 1241
    .local v6, "cameraId":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1242
    sget v20, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    move/from16 v0, v20

    if-ne v5, v0, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isRawOn()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1239
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1243
    :cond_1
    invoke-virtual {v11, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v8

    .line 1244
    .local v8, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isInMode(I)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraIdList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1248
    :cond_2
    sget-object v20, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1247
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1249
    .local v12, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    if-eqz v12, :cond_0

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraId:[Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v6, v20, v10

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    move-object/from16 v20, v0

    const/16 v21, 0x100

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getMaxPictureSize(II)Landroid/util/Size;

    move-result-object v17

    .line 1255
    .local v17, "size":Landroid/util/Size;
    const-string/jumbo v20, "CaptureModule"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "camId="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " pictureSize="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v20

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v18

    .line 1257
    .local v18, "style":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUIStyle:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 1258
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUIStyle:I

    .line 1259
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onUIStyleChanged(I)V

    .line 1262
    :cond_3
    sget-object v20, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/util/Size;

    .line 1263
    .local v19, "thumbSizes":[Landroid/util/Size;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getOptimalPreviewSize(Landroid/util/Size;[Landroid/util/Size;II)Landroid/util/Size;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mThumbnailSize:Landroid/util/Size;

    .line 1264
    const-string/jumbo v20, "CaptureModule"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "setUpCameraOutputs - thumbnail size: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mThumbnailSize:Landroid/util/Size;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getMainCameraId()I

    move-result v20

    move/from16 v0, v20

    if-ne v10, v0, :cond_4

    .line 1267
    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    .line 1268
    .local v16, "screenSize":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1269
    const-class v20, Landroid/view/SurfaceHolder;

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v14

    .line 1270
    .local v14, "prevSizes":[Landroid/util/Size;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getOptimalPreviewSize(Landroid/util/Size;[Landroid/util/Size;II)Landroid/util/Size;

    move-result-object v13

    .line 1271
    .local v13, "prevSize":Landroid/util/Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    move-object/from16 v20, v0

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v21

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Lcom/android/camera/ui/UIController;->setPreviewSize(II)V

    .line 1273
    .end local v13    # "prevSize":Landroid/util/Size;
    .end local v14    # "prevSizes":[Landroid/util/Size;
    .end local v16    # "screenSize":Landroid/graphics/Point;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isClearSightOn()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1274
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getMainCameraId()I

    move-result v20

    move/from16 v0, v20

    if-ne v10, v0, :cond_0

    .line 1275
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v20

    .line 1276
    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v23, v0

    .line 1275
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v12, v1, v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->init(Landroid/hardware/camera2/params/StreamConfigurationMap;IILandroid/content/Context;)V

    .line 1277
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->setCallback(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1358
    .end local v6    # "cameraId":Ljava/lang/String;
    .end local v7    # "cameraIdList":[Ljava/lang/String;
    .end local v8    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v10    # "i":I
    .end local v12    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v17    # "size":Landroid/util/Size;
    .end local v18    # "style":I
    .end local v19    # "thumbSizes":[Landroid/util/Size;
    :catch_0
    move-exception v9

    .line 1359
    .local v9, "e":Landroid/hardware/camera2/CameraAccessException;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    .line 1232
    .end local v9    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_2
    return-void

    .line 1281
    .restart local v6    # "cameraId":Ljava/lang/String;
    .restart local v7    # "cameraIdList":[Ljava/lang/String;
    .restart local v8    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v10    # "i":I
    .restart local v12    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .restart local v17    # "size":Landroid/util/Size;
    .restart local v18    # "style":I
    .restart local v19    # "thumbSizes":[Landroid/util/Size;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v22

    .line 1282
    const/16 v23, 0x100

    const/16 v24, 0x3

    .line 1281
    invoke-static/range {v21 .. v24}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v21

    aput-object v21, v20, v10

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    move-object/from16 v20, v0

    aget-object v20, v20, v10

    new-instance v21, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageAvailableHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    .line 1283
    invoke-virtual/range {v20 .. v22}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1333
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isRawOn()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    move-object/from16 v20, v0

    const/16 v21, 0x20

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getMaxPictureSize(II)Landroid/util/Size;

    move-result-object v15

    .line 1335
    .local v15, "rawSize":Landroid/util/Size;
    const-string/jumbo v20, "CaptureModule"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "camId= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " rawSize="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->getAndRetain()Ljava/lang/AutoCloseable;

    move-result-object v20

    if-nez v20, :cond_7

    .line 1337
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    .line 1338
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v22

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v23

    .line 1339
    const/16 v24, 0x20

    const/16 v25, 0xa

    .line 1338
    invoke-static/range {v22 .. v25}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v22

    .line 1337
    invoke-direct/range {v21 .. v22}, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;-><init>(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v10, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1341
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->get()Ljava/lang/AutoCloseable;

    move-result-object v20

    check-cast v20, Landroid/media/ImageReader;

    new-instance v21, Lcom/android/camera/camera_adapter/camera2/CaptureModule$9;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$9;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageAvailableHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    .line 1341
    invoke-virtual/range {v20 .. v22}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    goto/16 :goto_1

    .line 1356
    .end local v6    # "cameraId":Ljava/lang/String;
    .end local v8    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v12    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v15    # "rawSize":Landroid/util/Size;
    .end local v17    # "size":Landroid/util/Size;
    .end local v18    # "style":I
    .end local v19    # "thumbSizes":[Landroid/util/Size;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraIdList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isAutoFocusRegionSupported(Ljava/util/List;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAutoFocusRegionSupported:Z

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraIdList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isAutoExposureRegionSupported(Ljava/util/List;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAutoExposureRegionSupported:Z
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 2924
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isImageCaptureIntent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsImageCaptureIntent:Z

    .line 2925
    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_0

    return-void

    .line 2926
    :cond_0
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2927
    .local v0, "myExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 2928
    const-string/jumbo v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSaveUri:Landroid/net/Uri;

    .line 2923
    :cond_1
    return-void
.end method

.method private showPostCaptureAlert()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2999
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 3000
    iput-boolean v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageCaptureShowing:Z

    .line 3001
    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->ignoreTouchEvent(Z)V

    .line 3002
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->hide()V

    .line 3003
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->hide()V

    .line 3004
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/V6PreviewPage;->setPopupVisible(Z)V

    .line 3005
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/camera/ui/V6ShutterButton;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 3006
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 3007
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopControlPanel()Lcom/android/camera/ui/TopControlPanel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/TopControlPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 3008
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getOrientationIndicator()Lcom/android/camera/ui/OrientationIndicator;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/OrientationIndicator;->updateVisible(Z)V

    .line 2998
    :cond_0
    return-void
.end method

.method private startBackgroundThread()V
    .locals 2

    .prologue
    .line 1521
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    .line 1522
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1523
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "CameraImageAvailable"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    .line 1524
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1525
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "CameraCaptureCallback"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    .line 1526
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1527
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MpoSaveHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    .line 1528
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1530
    new-instance v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 1531
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageAvailableHandler:Landroid/os/Handler;

    .line 1532
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    .line 1533
    new-instance v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMpoSaveHandler:Landroid/os/Handler;

    .line 1520
    return-void
.end method

.method private startMonoPreview()V
    .locals 5

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 480
    :cond_0
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startMonoPreview session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v4, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void

    .line 486
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->canStartMonoPreview()Z

    move-result v1

    if-nez v1, :cond_2

    .line 488
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v1, v1, v2

    .line 489
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    sget v3, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 488
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :cond_2
    :goto_0
    return-void

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v1, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_0
.end method

.method private stopBackgroundThread()V
    .locals 3

    .prologue
    .line 1540
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 1541
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 1543
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 1544
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    .line 1545
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1551
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 1552
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 1554
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 1555
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    .line 1556
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageAvailableHandler:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1562
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    .line 1563
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 1565
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 1566
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    .line 1567
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1573
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_3

    .line 1574
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 1576
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 1577
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    .line 1578
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMpoSaveHandler:Landroid/os/Handler;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1539
    :cond_3
    :goto_3
    return-void

    .line 1546
    :catch_0
    move-exception v0

    .line 1547
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "CaptureModule"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1557
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 1558
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "CaptureModule"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1568
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 1569
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "CaptureModule"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1579
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v0

    .line 1580
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "CaptureModule"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private stopMonoPreview()V
    .locals 5

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 501
    :cond_0
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopMonoPreview session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v4, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void

    .line 505
    :cond_1
    const-string/jumbo v1, "CaptureModule"

    const-string/jumbo v2, "stopMonoPreview"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->canStartMonoPreview()Z

    move-result v1

    if-nez v1, :cond_2

    .line 510
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :cond_2
    :goto_0
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v1, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_0
.end method

.method private switchToOtherMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 2013
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2014
    return-void

    .line 2017
    :cond_0
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2018
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/camera/ui/StereoButton;->setStereoValue(ZZZ)V

    .line 2020
    :cond_1
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->switchToOtherModule(I)V

    .line 2012
    return-void
.end method

.method private takePicture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 880
    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "takePicture"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStartTime:J

    .line 882
    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->enableCameraControls(Z)V

    .line 883
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 879
    :goto_0
    return-void

    .line 886
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->takeStereoPicture()V

    goto :goto_0

    .line 889
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->takeSinglePicture(I)V

    goto :goto_0

    .line 892
    :pswitch_2
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->takeSinglePicture(I)V

    goto :goto_0

    .line 896
    :cond_0
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->takeSinglePicture(I)V

    goto :goto_0

    .line 884
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private takeSinglePicture(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 945
    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "takeSinglePicture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 947
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    .line 948
    const-string/jumbo v0, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "takeSinglePicture: previous state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 949
    return-void

    :cond_0
    monitor-exit v1

    .line 953
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->trackTakingPicture()V

    .line 955
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getLastResultAFState(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_1

    .line 956
    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "takeSinglePicture: focusing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 958
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    const/4 v2, 0x1

    aput v2, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 944
    :goto_0
    return-void

    .line 946
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 957
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 961
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->captureStillPicture(I)V

    goto :goto_0
.end method

.method private takeStereoPicture()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 911
    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "takeStereoPicture"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 913
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    if-nez v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget v0, v0, v2

    if-eqz v0, :cond_1

    .line 915
    :cond_0
    const-string/jumbo v0, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "takeStereoPicture: previous state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 916
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    .line 915
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 916
    const-string/jumbo v3, " "

    .line 915
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 916
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    sget v4, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget v3, v3, v4

    .line 915
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 917
    return-void

    :cond_1
    monitor-exit v1

    .line 921
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->trackTakingPicture()V

    .line 923
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isClearSightOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 924
    invoke-direct {p0, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->updateCaptureProgressBar(Z)V

    .line 927
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getLastResultAFState(I)I

    move-result v0

    if-eq v5, v0, :cond_3

    .line 928
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getLastResultAFState(I)I

    move-result v0

    if-ne v5, v0, :cond_4

    .line 929
    :cond_3
    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "takeStereoPicture: focusing"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 931
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 932
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    const/4 v3, 0x1

    aput v3, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 910
    :goto_0
    return-void

    .line 912
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 930
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 934
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getState(I)I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 935
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getState(I)I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 936
    invoke-direct {p0, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->captureStillPicture(I)V

    .line 937
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->captureStillPicture(I)V

    goto :goto_0

    .line 939
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->lockFocus(I)V

    .line 940
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->lockFocus(I)V

    goto :goto_0
.end method

.method private trackTakingPicture()V
    .locals 3

    .prologue
    .line 966
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v0

    .line 967
    .local v0, "cameraMode":I
    packed-switch v0, :pswitch_data_0

    .line 965
    :goto_0
    return-void

    .line 969
    :pswitch_0
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "capture_nums_mono"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 972
    :pswitch_1
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "capture_nums_raw"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 975
    :pswitch_2
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "capture_nums_dual"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 967
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private unlockFocus(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 1364
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v2, p1

    if-nez v2, :cond_1

    .line 1365
    :cond_0
    const-string/jumbo v2, "CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unlockFocus session["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    return-void

    .line 1364
    :cond_1
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    .line 1369
    const-string/jumbo v2, "CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unlockFocus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v2, v2, p1

    .line 1372
    const/4 v3, 0x1

    .line 1371
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1373
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1374
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getPreviewSurface(I)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1375
    invoke-direct {p0, v0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applySettingsForUnlockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1376
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v2, p1

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1378
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setState(II)V

    .line 1379
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mControlAFMode:I

    .line 1380
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    invoke-direct {p0, v2, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applySettingsForUnlockExposure(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1381
    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mControlAFMode:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setAFModeToPreview(IIZ)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1363
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :goto_0
    return-void

    .line 1382
    :catch_0
    move-exception v1

    .line 1383
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-direct {p0, p1, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_0
.end method

.method private updateCaptureProgressBar(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getCaptureProgressBar()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 906
    return-void

    .line 907
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateFocusStateChange(Landroid/hardware/camera2/CaptureResult;I)V
    .locals 3
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;
    .param p2, "id"    # I

    .prologue
    .line 2551
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2552
    return-void

    .line 2554
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2556
    .local v0, "resultAFState":I
    invoke-direct {p0, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getLastResultAFState(I)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 2558
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getMainCameraId()I

    move-result v1

    if-ne p2, v1, :cond_2

    .line 2559
    const/4 v1, 0x4

    if-ne v1, v0, :cond_1

    .line 2560
    invoke-direct {p0, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getState(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 2561
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->playCameraSound(I)V

    .line 2563
    :cond_1
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mFocusStateListener:Lcom/android/camera/camera_adapter/camera2/FocusStateListener;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageCaptureShowing:Z

    if-eqz v1, :cond_4

    .line 2574
    :cond_2
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setLastResultAFState(II)V

    .line 2550
    :cond_3
    return-void

    .line 2564
    :cond_4
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule$12;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$12;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public cropRegionForZoom(I)Landroid/graphics/Rect;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 2323
    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-virtual {v6, p1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getSensorActiveArraySize(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 2324
    .local v0, "activeRegion":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2326
    .local v1, "cropRegion":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v2, v6, 0x2

    .line 2327
    .local v2, "xCenter":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 2328
    .local v4, "yCenter":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getZoomValue()F

    move-result v7

    mul-float/2addr v7, v8

    div-float/2addr v6, v7

    float-to-int v3, v6

    .line 2329
    .local v3, "xDelta":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getZoomValue()F

    move-result v7

    mul-float/2addr v7, v8

    div-float/2addr v6, v7

    float-to-int v5, v6

    .line 2330
    .local v5, "yDelta":I
    sub-int v6, v2, v3

    sub-int v7, v4, v5

    add-int v8, v2, v3

    add-int v9, v4, v5

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 2331
    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    aput-object v1, v6, p1

    .line 2332
    const-string/jumbo v6, "CaptureModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cropRegionForZoom cam["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " zoom="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getZoomValue()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    aget-object v6, v6, p1

    return-object v6
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2228
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2229
    const-string/jumbo v1, "pref_camera_panoramamode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2231
    :cond_0
    const-string/jumbo v1, "pref_delay_capture_mode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2232
    const-string/jumbo v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2233
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2234
    const-string/jumbo v1, "pref_camera_ubifocus_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2236
    :cond_1
    const-string/jumbo v1, "pref_camera_manual_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2237
    invoke-static {}, Lcom/android/camera/Device;->isSupportGradienter()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2238
    const-string/jumbo v1, "pref_camera_gradienter_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2241
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/camera/Device;->IS_H2X_LC:Z

    if-eqz v1, :cond_b

    .line 2244
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2245
    const-string/jumbo v1, "pref_camera_groupshot_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2249
    :cond_4
    :goto_1
    sget-boolean v1, Lcom/android/camera/Device;->IS_HONGMI:Z

    if-eqz v1, :cond_5

    .line 2250
    const-string/jumbo v1, "pref_camera_scenemode_setting_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2252
    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isMonoSupported()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2253
    const-string/jumbo v1, "pref_camera_mono_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2255
    :cond_6
    invoke-static {}, Lcom/android/camera/Device;->isSupportSquare()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2256
    const-string/jumbo v1, "pref_camera_square_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2258
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/android/camera/Device;->isRAWSupported()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2259
    const-string/jumbo v1, "pref_camera_raw_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2261
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/camera/Device;->isUsedMorphoLib()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2262
    const-string/jumbo v1, "pref_camera_hand_night_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2264
    :cond_9
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTiltShift()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2265
    const-string/jumbo v1, "pref_camera_tilt_shift_mode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2267
    :cond_a
    return-object v0

    .line 2242
    :cond_b
    const-string/jumbo v1, "pref_camera_face_beauty_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2246
    :cond_c
    invoke-static {}, Lcom/android/camera/Device;->isUsedMorphoLib()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2247
    const-string/jumbo v1, "pref_camera_hand_night_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 1869
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/module/Base2Module;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1870
    return v8

    .line 1873
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 1946
    return v6

    .line 1876
    :sswitch_0
    const-string/jumbo v4, "CaptureModule"

    const-string/jumbo v5, "msg flash_mode_button"

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    return v8

    .line 1879
    :sswitch_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    .line 1880
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onShutterButtonClick()V

    .line 1892
    .end local p3    # "extra1":Ljava/lang/Object;
    .end local p4    # "extra2":Ljava/lang/Object;
    :cond_1
    :goto_0
    return v8

    .line 1881
    .restart local p3    # "extra1":Ljava/lang/Object;
    .restart local p4    # "extra2":Ljava/lang/Object;
    :cond_2
    if-ne p1, v8, :cond_1

    .line 1882
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1883
    .local v3, "value":I
    check-cast p4, Ljava/lang/Integer;

    .end local p4    # "extra2":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1885
    .local v2, "state":I
    if-ne v2, v8, :cond_1

    .line 1886
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v4, v3}, Lcom/android/camera/CameraSettings;->writeExposure(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    .line 1887
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    const-string/jumbo v5, "pref_camera_exposure_key"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getMainCameraId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getAeCompensationStep(I)F

    move-result v4

    int-to-float v5, v3

    mul-float v0, v4, v5

    .line 1889
    .local v0, "ev":F
    const-string/jumbo v4, "pref_camera_exposure_key"

    invoke-virtual {p0, v4, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->updateStatusBar(Ljava/lang/String;F)V

    goto :goto_0

    .line 1894
    .end local v0    # "ev":F
    .end local v2    # "state":I
    .end local v3    # "value":I
    .restart local p3    # "extra1":Ljava/lang/Object;
    .restart local p4    # "extra2":Ljava/lang/Object;
    :sswitch_2
    invoke-virtual {p0, v5}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onThumbnailClicked(Landroid/view/View;)V

    .line 1895
    return v8

    .line 1897
    :sswitch_3
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    sget v5, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 1898
    invoke-direct {p0, v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->switchToOtherMode(I)V

    .line 1899
    return v8

    .line 1901
    :sswitch_4
    if-nez p1, :cond_4

    .line 1902
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onShutterButtonClick()V

    .line 1906
    :cond_3
    :goto_1
    return v8

    .line 1903
    :cond_4
    if-ne p1, v8, :cond_3

    .line 1904
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onShutterButtonLongClick()V

    goto :goto_1

    .line 1908
    :sswitch_5
    new-instance v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule$11;

    invoke-direct {v1, p0, p3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$11;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Ljava/lang/Object;)V

    .line 1915
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->enableCameraControls(Z)V

    .line 1916
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ShutterButton;->onPause()V

    .line 1917
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 1918
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/ui/BottomControlLowerPanel;->animationSwitchToVideo(Ljava/lang/Runnable;)V

    .line 1919
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->switchModule()V

    .line 1920
    return v8

    .line 1922
    .end local v1    # "r":Ljava/lang/Runnable;
    :sswitch_6
    const/4 v4, 0x6

    if-ne p1, v4, :cond_5

    .line 1923
    invoke-direct {p0, p3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onModeSelected(Ljava/lang/Object;)V

    .line 1925
    :cond_5
    return v8

    .line 1927
    :sswitch_7
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onStereoModeChanged()V

    .line 1928
    return v8

    .line 1930
    :sswitch_8
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    .line 1931
    return v8

    .line 1933
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->openSettingActivity()V

    .line 1934
    return v8

    .line 1936
    :sswitch_a
    if-nez p1, :cond_6

    .line 1937
    invoke-virtual {p0, v5}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onReviewDoneClicked(Landroid/view/View;)V

    .line 1941
    :goto_2
    return v8

    .line 1939
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onReviewCancelClicked(Landroid/view/View;)V

    goto :goto_2

    .line 1873
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09000c -> :sswitch_8
        0x7f09000e -> :sswitch_2
        0x7f090012 -> :sswitch_4
        0x7f090015 -> :sswitch_5
        0x7f09001e -> :sswitch_3
        0x7f090023 -> :sswitch_a
        0x7f090066 -> :sswitch_0
        0x7f09007c -> :sswitch_7
        0x7f090088 -> :sswitch_1
        0x7f09008e -> :sswitch_6
        0x7f090090 -> :sswitch_9
    .end sparse-switch
.end method

.method public isCaptureIntent()Z
    .locals 1

    .prologue
    .line 2066
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsImageCaptureIntent:Z

    return v0
.end method

.method public isImageCaptureIntent()Z
    .locals 1

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    return v0
.end method

.method public isTakingPicture()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2148
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2150
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    aget v1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2151
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 2149
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v2

    .line 2155
    return v3

    .line 2148
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public linkBayerMono(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1042
    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "linkBayerMono "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    if-nez p1, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1045
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->BayerMonoLinkMainKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1046
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->BayerMonoLinkSessionIdKey:Landroid/hardware/camera2/CaptureRequest$Key;

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 1047
    :cond_1
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne p1, v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1049
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->BayerMonoLinkMainKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1050
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->BayerMonoLinkSessionIdKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1702
    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1709
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->onBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1710
    return v3

    .line 1714
    :cond_0
    const-string/jumbo v1, "pref_camera_stereo_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1715
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/camera/ui/StereoButton;->setStereoValue(ZZZ)V

    .line 1716
    return v3

    .line 1720
    :cond_1
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1721
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPage;->resetSettings()Z

    move-result v0

    .line 1722
    .local v0, "result":Z
    if-eqz v0, :cond_2

    .line 1723
    return v3

    .line 1728
    .end local v0    # "result":Z
    :cond_2
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6PreviewPage;->isPopupShown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1729
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 1730
    return v3

    .line 1733
    :cond_3
    invoke-super {p0}, Lcom/android/camera/module/Base2Module;->onBackPressed()Z

    move-result v1

    return v1
.end method

.method public onClearSightFailure()V
    .locals 2

    .prologue
    .line 2829
    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "onClearSightFailure"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2831
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->hideCaptureProgressBarTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2833
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "clear_sight_failure_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 2834
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCaptureDone(I)V

    .line 2835
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCaptureDone(I)V

    .line 2828
    return-void
.end method

.method public onClearSightStarted()V
    .locals 2

    .prologue
    .line 2840
    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "onClearSightStarted"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    return-void
.end method

.method public onClearSightSuccess()V
    .locals 2

    .prologue
    .line 2819
    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "onClearSightSuccess"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2821
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->hideCaptureProgressBarTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2823
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCaptureDone(I)V

    .line 2824
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCaptureDone(I)V

    .line 2818
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1693
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setDisplayOrientation()V

    .line 1692
    return-void
.end method

.method public onCreate(Lcom/android/camera/Camera;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/Camera;

    .prologue
    const/4 v2, 0x0

    .line 789
    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-super {p0, p1}, Lcom/android/camera/module/Base2Module;->onCreate(Lcom/android/camera/Camera;)V

    .line 791
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isRestoring()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraAppImpl;->resetRestoreFlag()V

    .line 796
    :goto_0
    invoke-static {p1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    .line 797
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-virtual {v0, p0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->registerListener(Lcom/android/camera/camera_adapter/camera2/SettingsManager$Listener;)V

    .line 798
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->init(Landroid/app/Activity;)V

    .line 799
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setupCaptureParams()V

    .line 800
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->resetCameraState()V

    .line 802
    invoke-virtual {p1}, Lcom/android/camera/Camera;->createContentView()V

    .line 803
    invoke-virtual {p1, v2, v2}, Lcom/android/camera/Camera;->createCameraScreenNail(ZZ)V

    .line 805
    invoke-virtual {p1}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    .line 806
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onCreate()V

    .line 809
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->skipDraw(Z)V

    .line 811
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    .line 814
    :cond_0
    new-instance v0, Lcom/android/camera/camera_adapter/camera2/FocusStateListener;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/camera_adapter/camera2/FocusStateListener;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mFocusStateListener:Lcom/android/camera/camera_adapter/camera2/FocusStateListener;

    .line 815
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 816
    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->enableCameraControls(Z)V

    .line 788
    return-void

    .line 794
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->resetCameraSettingsIfNeed()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 821
    invoke-super {p0}, Lcom/android/camera/module/Base2Module;->onDestroy()V

    .line 822
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-virtual {v0, p0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->unregisterListener(Lcom/android/camera/camera_adapter/camera2/SettingsManager$Listener;)V

    .line 823
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->skipDraw(Z)V

    .line 820
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1738
    packed-switch p1, :pswitch_data_0

    .line 1754
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/Base2Module;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1741
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isCaptureSessionReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1746
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 1745
    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1747
    return v1

    .line 1746
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1738
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1759
    sparse-switch p1, :sswitch_data_0

    .line 1784
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/Base2Module;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1762
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isCaptureSessionReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1763
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onShutterButtonClick()V

    .line 1764
    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1765
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v2, "capture_times_finger"

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1768
    :cond_1
    return v1

    .line 1771
    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isCaptureSessionReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1776
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 1775
    invoke-direct {p0, v0, v2, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1777
    return v1

    :cond_2
    move v0, v2

    .line 1776
    goto :goto_0

    .line 1759
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPauseAfterSuper()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1617
    invoke-super {p0}, Lcom/android/camera/module/Base2Module;->onPauseAfterSuper()V

    .line 1618
    const-string/jumbo v2, "CaptureModule"

    const-string/jumbo v3, "onPause>>>"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    .line 1620
    const/4 v1, 0x0

    .line 1622
    .local v1, "lockAcquired":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0xbb8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 1623
    .local v1, "lockAcquired":Z
    if-nez v1, :cond_0

    .line 1624
    const-string/jumbo v2, "CaptureModule"

    const-string/jumbo v3, "Time out waiting to pause activity."

    invoke-static {v2, v3}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1629
    .end local v1    # "lockAcquired":Z
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->stopBackgroundThread()V

    .line 1630
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isClearSightOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1634
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->close()V

    .line 1636
    :cond_1
    const-string/jumbo v2, "CaptureModule"

    const-string/jumbo v3, "ClearSightImageProcessor close done"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->closeCamera()V

    .line 1638
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->resetCameraState()V

    .line 1639
    if-eqz v1, :cond_2

    .line 1640
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1642
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->updateCaptureProgressBar(Z)V

    .line 1643
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->hideSurfaceView()V

    .line 1644
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->onPause()V

    .line 1645
    const-string/jumbo v2, "CaptureModule"

    const-string/jumbo v3, "onPause<<<"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    return-void

    .line 1626
    :catch_0
    move-exception v0

    .line 1627
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "CaptureModule"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 2208
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 2

    .prologue
    .line 2204
    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "onPreviewUIDestroyed"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    return-void
.end method

.method public onPreviewUIReady()V
    .locals 2

    .prologue
    .line 2194
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2195
    return-void

    .line 2197
    :cond_0
    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "onPreviewUIReady"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSurfaceReady:Z

    .line 2199
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->createSessions()V

    .line 2193
    return-void
.end method

.method public onReleaseShutterLock()V
    .locals 2

    .prologue
    .line 2812
    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "onReleaseShutterLock"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->playCameraSound(I)V

    .line 2814
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->animateCapture()V

    .line 2811
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1650
    invoke-super {p0}, Lcom/android/camera/module/Base2Module;->onResumeAfterSuper()V

    .line 1651
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setCurrentMode()V

    .line 1653
    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageCaptureShowing:Z

    if-nez v1, :cond_0

    .line 1654
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->onResume()V

    .line 1655
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    .line 1657
    :cond_0
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->showSurfaceView()V

    .line 1658
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    .line 1659
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    .line 1660
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraIdList:Ljava/util/List;

    .line 1661
    iput-boolean v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCancelAutoFocusIfMove:Z

    .line 1662
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->initClearSightOn()V

    .line 1663
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setUpCameraOutputs()V

    .line 1664
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setDisplayOrientation()V

    .line 1665
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->startBackgroundThread()V

    .line 1666
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1667
    .local v0, "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1668
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1669
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1684
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mFirstTimeInitialized:Z

    if-nez v1, :cond_2

    .line 1685
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->initializeFirstTime()V

    .line 1649
    :goto_1
    return-void

    .line 1672
    :pswitch_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1673
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1676
    :pswitch_1
    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1677
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1681
    :cond_1
    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1682
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1687
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->initializeSecondTime()V

    goto :goto_1

    .line 1669
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2969
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageCaptureShowing:Z

    if-eqz v0, :cond_1

    .line 2970
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->hidePostCaptureAlert()V

    .line 2971
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDecodeTaskForReview:Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;

    if-eqz v0, :cond_0

    .line 2972
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDecodeTaskForReview:Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;->cancel(Z)Z

    .line 2968
    :cond_0
    :goto_0
    return-void

    .line 2976
    :cond_1
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 2977
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, -0x1

    .line 2933
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2934
    return-void

    .line 2937
    :cond_0
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mJpegImageData:[B

    .line 2943
    .local v1, "data":[B
    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v6, :cond_1

    .line 2944
    const/4 v5, 0x0

    .line 2946
    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v5

    .line 2947
    .local v5, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2948
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 2950
    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/android/camera/Camera;->setResult(I)V

    .line 2951
    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2955
    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2932
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 2952
    :catch_0
    move-exception v2

    .line 2955
    .local v2, "ex":Ljava/io/IOException;
    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 2954
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 2955
    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2954
    throw v6

    .line 2958
    :cond_1
    invoke-static {v1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v3

    .line 2959
    .local v3, "exif":Lcom/android/gallery3d/exif/ExifInterface;
    invoke-static {v3}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v4

    .line 2960
    .local v4, "orientation":I
    const v6, 0xc800

    invoke-static {v1, v6}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2961
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, v4}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2962
    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    .line 2963
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "inline-data"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "data"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v7

    .line 2962
    invoke-virtual {v6, v9, v7}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 2964
    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0
.end method

.method public onSettingsChanged(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2586
    .local p1, "settings":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;>;"
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v10

    if-eqz v10, :cond_0

    return-void

    .line 2587
    :cond_0
    const/4 v5, 0x0

    .line 2588
    .local v5, "updatePreviewBayer":Z
    const/4 v7, 0x0

    .line 2589
    .local v7, "updatePreviewMono":Z
    const/4 v6, 0x0

    .line 2590
    .local v6, "updatePreviewFront":Z
    const/4 v0, 0x0

    .line 2591
    .local v0, "count":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v5    # "updatePreviewBayer":Z
    .end local v6    # "updatePreviewFront":Z
    .end local v7    # "updatePreviewMono":Z
    .local v4, "settingState$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;

    .line 2592
    .local v3, "settingState":Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;
    iget-object v2, v3, Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;->key:Ljava/lang/String;

    .line 2593
    .local v2, "key":Ljava/lang/String;
    iget-object v9, v3, Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;->values:Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;

    .line 2595
    .local v9, "values":Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;
    iget-object v10, v9, Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 2596
    iget-object v8, v9, Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    .line 2600
    .local v8, "value":Ljava/lang/String;
    :goto_1
    const-string/jumbo v10, "persist.camera.scene_mode"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2604
    :cond_1
    :goto_2
    if-nez v0, :cond_2

    .line 2605
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->restart()V

    .line 2612
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2613
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 2628
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2598
    .end local v8    # "value":Ljava/lang/String;
    :cond_3
    iget-object v8, v9, Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;->value:Ljava/lang/String;

    .restart local v8    # "value":Ljava/lang/String;
    goto :goto_1

    .line 2600
    :cond_4
    const-string/jumbo v10, "persist.camera.clear_sight"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string/jumbo v10, "persist.camera.mono_preview"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_2

    .line 2615
    :pswitch_0
    const/4 v10, 0x0

    invoke-direct {p0, v10, v2, v8}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v5, v10

    .line 2616
    .local v5, "updatePreviewBayer":Z
    goto :goto_3

    .line 2618
    .end local v5    # "updatePreviewBayer":Z
    :pswitch_1
    sget v10, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v10, v2, v8}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v7, v10

    .line 2619
    .local v7, "updatePreviewMono":Z
    goto :goto_3

    .line 2621
    .end local v7    # "updatePreviewMono":Z
    :pswitch_2
    const/4 v10, 0x0

    invoke-direct {p0, v10, v2, v8}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v5, v10

    .line 2622
    .restart local v5    # "updatePreviewBayer":Z
    sget v10, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v10, v2, v8}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v7, v10

    .line 2623
    .restart local v7    # "updatePreviewMono":Z
    goto :goto_3

    .line 2626
    .end local v5    # "updatePreviewBayer":Z
    .end local v7    # "updatePreviewMono":Z
    :cond_5
    sget v10, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    invoke-direct {p0, v10, v2, v8}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v6, v10

    .local v6, "updatePreviewFront":Z
    goto :goto_3

    .line 2631
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "settingState":Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;
    .end local v6    # "updatePreviewFront":Z
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "values":Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;
    :cond_6
    if-eqz v5, :cond_7

    iget-object v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    if-eqz v10, :cond_7

    .line 2633
    :try_start_0
    iget-object v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    .line 2634
    iget-object v11, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v13, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 2633
    invoke-virtual {v10, v11, v12, v13}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2639
    :cond_7
    :goto_4
    if-eqz v7, :cond_8

    iget-object v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v11, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v10, v10, v11

    if-eqz v10, :cond_8

    .line 2641
    :try_start_1
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->canStartMonoPreview()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2642
    iget-object v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v11, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v10, v10, v11

    .line 2643
    iget-object v11, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    sget v12, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v13, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 2642
    invoke-virtual {v10, v11, v12, v13}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2652
    :cond_8
    :goto_5
    if-eqz v6, :cond_9

    iget-object v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v11, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    aget-object v10, v10, v11

    if-eqz v10, :cond_9

    .line 2654
    :try_start_2
    iget-object v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v11, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    aget-object v10, v10, v11

    .line 2655
    iget-object v11, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    sget v12, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v13, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 2654
    invoke-virtual {v10, v11, v12, v13}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2585
    :cond_9
    :goto_6
    return-void

    .line 2635
    :catch_0
    move-exception v1

    .line 2636
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    const/4 v10, 0x0

    invoke-direct {p0, v10, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_4

    .line 2645
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_a
    :try_start_3
    iget-object v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v11, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v10, v10, v11

    .line 2646
    iget-object v11, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    sget v12, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v13, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 2645
    invoke-virtual {v10, v11, v12, v13}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    .line 2648
    :catch_1
    move-exception v1

    .line 2649
    .restart local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    sget v10, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v10, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_5

    .line 2656
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catch_2
    move-exception v1

    .line 2657
    .restart local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    sget v10, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    invoke-direct {p0, v10, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_6

    .line 2613
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShutterButtonClick()V
    .locals 4

    .prologue
    .line 2281
    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "onShutterButtonClick"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 2283
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isTakingPicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2284
    return-void

    .line 2286
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 2288
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2289
    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not enough space or storage not ready. remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2290
    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v2

    .line 2289
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    return-void

    .line 2294
    :cond_1
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->shouldStopShot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2295
    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "ImageSaver is full, wait for a moment!"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 2297
    const v1, 0x7f0e0224

    const/4 v2, 0x0

    .line 2296
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    .line 2298
    return-void

    .line 2300
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->takePicture()V

    .line 2280
    return-void
.end method

.method public onShutterButtonLongClick()V
    .locals 2

    .prologue
    .line 2304
    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "onShutterButtonLongClick"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2099
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCamerasOpened:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAutoFocusRegionSupported:Z

    if-eqz v0, :cond_0

    .line 2100
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAutoExposureRegionSupported:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isTouchToFocusAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2103
    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSingleTapUp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    .line 2109
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 2110
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/FocusView;->setPosition(II)V

    .line 2111
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showStart()V

    .line 2112
    iput-boolean v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCancelAutoFocusIfMove:Z

    .line 2113
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2114
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2098
    :goto_0
    return-void

    .line 2101
    :cond_0
    return-void

    .line 2116
    :pswitch_0
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->triggerFocusAtPoint(FFI)V

    .line 2117
    int-to-float v0, p1

    int-to-float v1, p2

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->triggerFocusAtPoint(FFI)V

    goto :goto_0

    .line 2120
    :pswitch_1
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->triggerFocusAtPoint(FFI)V

    goto :goto_0

    .line 2123
    :pswitch_2
    int-to-float v0, p1

    int-to-float v1, p2

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->triggerFocusAtPoint(FFI)V

    goto :goto_0

    .line 2127
    :cond_1
    int-to-float v0, p1

    int-to-float v1, p2

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->triggerFocusAtPoint(FFI)V

    goto :goto_0

    .line 2114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1697
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1981
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->gotoGallery()V

    .line 1979
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 2217
    return-void
.end method

.method public onZoomChanged(F)V
    .locals 2
    .param p1, "requestedZoom"    # F

    .prologue
    const/4 v1, 0x0

    .line 2025
    invoke-super {p0, p1}, Lcom/android/camera/module/Base2Module;->onZoomChanged(F)V

    .line 2027
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2028
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2024
    :goto_0
    return-void

    .line 2030
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyZoomAndUpdate(I)V

    .line 2031
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyZoomAndUpdate(I)V

    goto :goto_0

    .line 2034
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyZoomAndUpdate(I)V

    goto :goto_0

    .line 2037
    :pswitch_2
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyZoomAndUpdate(I)V

    goto :goto_0

    .line 2041
    :cond_0
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyZoomAndUpdate(I)V

    goto :goto_0

    .line 2028
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected openSettingActivity()V
    .locals 4

    .prologue
    .line 1987
    const-string/jumbo v1, "CaptureModule"

    const-string/jumbo v2, "openSettingActivity"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1989
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    const-class v2, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1990
    const-string/jumbo v1, "from_where"

    .line 1991
    const/4 v2, 0x3

    .line 1990
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1992
    const-string/jumbo v1, "IsCaptureIntent"

    .line 1993
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isImageCaptureIntent()Z

    move-result v2

    .line 1992
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1994
    const-string/jumbo v1, ":miui:starting_window_label"

    .line 1995
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1994
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1997
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1998
    const-string/jumbo v1, "StartActivityWhenLocked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2000
    :cond_0
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 2001
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setJumpFlag(I)V

    .line 2003
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "pref_settings"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1986
    return-void
.end method

.method protected performVolumeKeyClicked(IZ)V
    .locals 2
    .param p1, "repeatCount"    # I
    .param p2, "pressed"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1840
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isShutterButtonClickable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1841
    :cond_0
    if-nez p1, :cond_3

    .line 1842
    if-eqz p2, :cond_2

    .line 1843
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onShutterButtonClick()V

    .line 1844
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isCountDownMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1845
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "capture_times_volume"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1839
    :cond_1
    :goto_0
    return-void

    .line 1848
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mVolumeLongPress:Z

    goto :goto_0

    .line 1851
    :cond_3
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mVolumeLongPress:Z

    if-nez v0, :cond_1

    .line 1852
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onShutterButtonLongClick()V

    .line 1853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mVolumeLongPress:Z

    goto :goto_0
.end method

.method public reinit()V
    .locals 2

    .prologue
    .line 783
    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "reinit"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setCurrentMode()V

    .line 785
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getMainCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->reinit(I)V

    .line 782
    return-void
.end method

.method protected setDisplayOrientation()V
    .locals 2

    .prologue
    .line 2580
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDisplayRotation:I

    .line 2581
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDisplayRotation:I

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getMainCameraId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDisplayOrientation:I

    .line 2579
    return-void
.end method

.method public triggerFocusAtPoint(FFI)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "id"    # I

    .prologue
    .line 2499
    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "triggerFocusAtPoint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSurfaceViewSize()Landroid/graphics/Point;

    move-result-object v7

    .line 2501
    .local v7, "p":Landroid/graphics/Point;
    iget v3, v7, Landroid/graphics/Point;->x:I

    .line 2502
    .local v3, "width":I
    iget v4, v7, Landroid/graphics/Point;->y:I

    .line 2503
    .local v4, "height":I
    iget-object v8, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAFRegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    aget-object v6, v0, p3

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->afaeRectangle(FFIIFLandroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    aput-object v0, v8, p3

    .line 2504
    iget-object v8, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAERegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    aget-object v6, v0, p3

    const/high16 v5, 0x3fc00000    # 1.5f

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->afaeRectangle(FFIIFLandroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    aput-object v0, v8, p3

    .line 2505
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2506
    invoke-direct {p0, p3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->autoFocusTrigger(I)V

    .line 2498
    return-void
.end method
