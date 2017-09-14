.class public Lcom/android/camera/module/CameraModule;
.super Lcom/android/camera/module/BaseModule;
.source "CameraModule.java"

# interfaces
.implements Lcom/android/camera/FocusManager$Listener;
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;
.implements Lcom/android/camera/ui/ObjectView$ObjectViewListener;
.implements Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/CameraModule$1;,
        Lcom/android/camera/module/CameraModule$2;,
        Lcom/android/camera/module/CameraModule$3;,
        Lcom/android/camera/module/CameraModule$AutoFocusCallback;,
        Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;,
        Lcom/android/camera/module/CameraModule$BurstSpeedController;,
        Lcom/android/camera/module/CameraModule$CameraCategory;,
        Lcom/android/camera/module/CameraModule$CameraStartUpThread;,
        Lcom/android/camera/module/CameraModule$JpegPictureCallback;,
        Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;,
        Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;,
        Lcom/android/camera/module/CameraModule$MainHandler;,
        Lcom/android/camera/module/CameraModule$MetaDataManager;,
        Lcom/android/camera/module/CameraModule$PostViewPictureCallback;,
        Lcom/android/camera/module/CameraModule$RawPictureCallback;,
        Lcom/android/camera/module/CameraModule$SaveOutputImageTask;,
        Lcom/android/camera/module/CameraModule$ShutterCallback;
    }
.end annotation


# static fields
.field protected static final BURST_SHOOTING_COUNT:I


# instance fields
.field protected m3ALocked:Z

.field private mAFEndLogTimes:I

.field private mAeLockSupported:Z

.field protected mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

.field private final mAutoFocusCallback:Lcom/android/camera/module/CameraModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

.field public mAutoFocusTime:J

.field protected mAwbLockSupported:Z

.field private mBurstShotTitle:Ljava/lang/String;

.field private mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

.field protected mCameraCategory:Lcom/android/camera/module/CameraModule$CameraCategory;

.field private mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

.field protected volatile mCameraState:I

.field public mCaptureStartTime:J

.field private mContinuousFocusSupported:Z

.field private mCropValue:Ljava/lang/String;

.field private mDidRegister:Z

.field private mDoCaptureRetry:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

.field protected mFaceDetectionEnabled:Z

.field private mFaceDetectionStarted:Z

.field private mFirstTimeInitialized:Z

.field private mFocusAreaSupported:Z

.field protected mFocusManager:Lcom/android/camera/FocusManager;

.field private mFocusStartTime:J

.field protected mFoundFace:Z

.field private mGroupFaceNum:I

.field private mGroupShot:Lcom/android/camera/groupshot/GroupShot;

.field private mGroupShotTimes:I

.field protected final mHandler:Landroid/os/Handler;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsCaptureAfterLaunch:Z

.field private mIsCountDown:Z

.field protected mIsImageCaptureIntent:Z

.field mIsRecreateCameraScreenNail:Z

.field private mIsSaveCaptureImage:Z

.field protected mIsZSLMode:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field protected mJpegRotation:I

.field private mKeepBitmapTexture:Z

.field private mLastFreezeHDRTime:J

.field private mLastIsEffect:Z

.field private mLastShutterButtonClickTime:J

.field private mLongPressedAutoFocus:Z

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field protected mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

.field private mMeteringAreaSupported:Z

.field protected mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

.field protected mMultiSnapStatus:Z

.field protected mMultiSnapStopRequest:Z

.field protected mNeedAutoFocus:Z

.field private mOnResumeTime:J

.field private mPendingCapture:Z

.field private mPendingMultiCapture:Z

.field public mPictureDisplayedToJpegCallbackTime:J

.field protected final mPostViewPictureCallback:Lcom/android/camera/module/CameraModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field protected mQuickCapture:Z

.field protected final mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field protected mReceivedJpegCallbackNum:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mRestartPreview:Z

.field private mSaveUri:Landroid/net/Uri;

.field protected mSceneMode:Ljava/lang/String;

.field private mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field private mSetCameraParameter:I

.field private mSetMetaCallback:Z

.field private mShootOrientation:I

.field private mShootRotation:F

.field protected final mShutterCallback:Lcom/android/camera/module/CameraModule$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field private mSnapshotOnIdle:Z

.field private mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field protected mTotalJpegCallbackNum:I

.field private mUpdateImageTitle:Z

.field private mUpdateSet:I

.field protected mVolumeLongPress:Z


# direct methods
.method static synthetic -get0(Lcom/android/camera/module/CameraModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mAFEndLogTimes:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/camera/module/CameraModule;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/camera/module/CameraModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic -get12(Lcom/android/camera/module/CameraModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mLastFreezeHDRTime:J

    return-wide v0
.end method

.method static synthetic -get13(Lcom/android/camera/module/CameraModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mLastIsEffect:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/camera/module/CameraModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic -get15(Lcom/android/camera/module/CameraModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/camera/module/CameraModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic -get17(Lcom/android/camera/module/CameraModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/camera/module/CameraModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    return v0
.end method

.method static synthetic -get19(Lcom/android/camera/module/CameraModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/module/CameraModule$BurstSpeedController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/camera/module/CameraModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mShootOrientation:I

    return v0
.end method

.method static synthetic -get21(Lcom/android/camera/module/CameraModule;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mShootRotation:F

    return v0
.end method

.method static synthetic -get22(Lcom/android/camera/module/CameraModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic -get23(Lcom/android/camera/module/CameraModule;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/camera/module/CameraModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/module/CameraModule$CameraStartUpThread;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/module/CameraModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/module/CameraModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic -get7(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/groupshot/GroupShot;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/camera/module/CameraModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShotTimes:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/camera/module/CameraModule;)Landroid/hardware/Camera$Parameters;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/module/CameraModule;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/CameraModule;->mAFEndLogTimes:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/camera/module/CameraModule;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mOnResumeTime:J

    return-wide p1
.end method

.method static synthetic -set11(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/camera/module/CameraModule;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic -set13(Lcom/android/camera/module/CameraModule;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic -set14(Lcom/android/camera/module/CameraModule;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic -set15(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$CameraStartUpThread;)Lcom/android/camera/module/CameraModule$CameraStartUpThread;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/camera/module/CameraModule;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/camera/module/CameraModule;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/CameraModule;->mGroupShotTimes:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/camera/module/CameraModule;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/camera/module/CameraModule;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic -set7(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mKeepBitmapTexture:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/camera/module/CameraModule;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mLastFreezeHDRTime:J

    return-wide p1
.end method

.method static synthetic -set9(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mLastIsEffect:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/module/CameraModule;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isGroupShotCapture()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/module/CameraModule;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isShutterButtonClickable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeCapabilities()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeFocusManager()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->onSettingsBack()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->sendBurstCommand()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/camera/module/CameraModule;J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->sendDoCaptureMessage(J)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setOrientationParameter()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/camera/module/CameraModule;I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->setOrientation(I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopMultiSnap()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->getSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap20(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->switchCamera()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->takeAPhotoIfNeeded()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->traceDelayCaptureEvents()V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->updateModePreference()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/camera/module/CameraModule;Z)V
    .locals 0
    .param p1, "done"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->updateMutexModeUI(Z)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/camera/module/CameraModule;[BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->writeImage([BI)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateCapture()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateHold()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateSlide()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->applyPreferenceChange()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->doAttach()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->handleSelectedMode()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/camera/module/CameraModule;ZZ)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "clearFaces"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->handleUpdateFaceView(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 296
    invoke-static {}, Lcom/android/camera/Device;->getBurstShootCount()I

    move-result v0

    sput v0, Lcom/android/camera/module/CameraModule;->BURST_SHOOTING_COUNT:I

    .line 120
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 393
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    .line 128
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    .line 129
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 130
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    .line 190
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    .line 208
    new-instance v0, Lcom/android/camera/module/CameraModule$BurstSpeedController;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$BurstSpeedController;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$BurstSpeedController;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

    .line 218
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    .line 226
    new-instance v0, Lcom/android/camera/module/CameraModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$1;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 255
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    .line 256
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mRestartPreview:Z

    .line 257
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    .line 259
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    .line 261
    new-instance v0, Lcom/android/camera/module/CameraModule$ShutterCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$ShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$ShutterCallback;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mShutterCallback:Lcom/android/camera/module/CameraModule$ShutterCallback;

    .line 263
    new-instance v0, Lcom/android/camera/module/CameraModule$PostViewPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$PostViewPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$PostViewPictureCallback;)V

    .line 262
    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallback:Lcom/android/camera/module/CameraModule$PostViewPictureCallback;

    .line 265
    new-instance v0, Lcom/android/camera/module/CameraModule$RawPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$RawPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$RawPictureCallback;)V

    .line 264
    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

    .line 267
    new-instance v0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$AutoFocusCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$AutoFocusCallback;)V

    .line 266
    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mAutoFocusCallback:Lcom/android/camera/module/CameraModule$AutoFocusCallback;

    .line 269
    new-instance v0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;)V

    .line 268
    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mAutoFocusMoveCallback:Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

    .line 292
    new-instance v0, Lcom/android/camera/module/CameraModule$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$MainHandler;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$MainHandler;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    .line 301
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 302
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mVolumeLongPress:Z

    .line 303
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopRequest:Z

    .line 305
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    .line 308
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 323
    new-instance v0, Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    .line 327
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mGroupFaceNum:I

    .line 878
    new-instance v0, Lcom/android/camera/module/CameraModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$2;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 4475
    new-instance v0, Lcom/android/camera/module/CameraModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$3;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    .line 394
    new-instance v0, Lcom/android/camera/module/CameraModule$CameraCategory;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$CameraCategory;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraCategory:Lcom/android/camera/module/CameraModule$CameraCategory;

    .line 393
    return-void
.end method

.method private animateCapture()V
    .locals 2

    .prologue
    .line 4326
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 4325
    :cond_0
    :goto_0
    return-void

    .line 4327
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4328
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->onCapture()V

    goto :goto_0

    .line 4330
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    goto :goto_0
.end method

.method private animateHold()V
    .locals 2

    .prologue
    .line 4314
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 4313
    :cond_0
    :goto_0
    return-void

    .line 4315
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateHold(I)V

    goto :goto_0
.end method

.method private animateSlide()V
    .locals 1

    .prologue
    .line 4320
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 4319
    :cond_0
    :goto_0
    return-void

    .line 4321
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSlide()V

    goto :goto_0
.end method

.method private applyPreferenceChange()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4889
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4890
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 4892
    :cond_0
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4893
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 4894
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 4896
    :cond_1
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    .line 4888
    return-void
.end method

.method private applyPreferenceSettingsLater()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 2426
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    .line 2427
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2428
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2429
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2425
    :cond_0
    return-void
.end method

.method private canTakePicture()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3276
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCameraIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkRestartPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4809
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mRestartPreview:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 4810
    const-string/jumbo v0, "Camera"

    const-string/jumbo v1, "Restarting Preview... Camera Mode Changed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4811
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopPreview()V

    .line 4812
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 4813
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 4814
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 4815
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mRestartPreview:Z

    .line 4808
    :cond_0
    return-void
.end method

.method private couldEnableObjectTrack()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4628
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4629
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4628
    :cond_0
    :goto_0
    return v0

    .line 4630
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v1, :cond_0

    .line 4631
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doAttach()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    .line 2582
    iget-boolean v11, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v11, :cond_0

    .line 2583
    return-void

    .line 2585
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    .line 2586
    .local v2, "data":[B
    iget-boolean v11, p0, Lcom/android/camera/module/CameraModule;->mIsSaveCaptureImage:Z

    if-eqz v11, :cond_1

    .line 2587
    invoke-direct {p0, v2}, Lcom/android/camera/module/CameraModule;->saveJpegData([B)V

    .line 2589
    :cond_1
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mCropValue:Ljava/lang/String;

    if-nez v11, :cond_3

    .line 2594
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v11, :cond_2

    .line 2595
    const/4 v7, 0x0

    .line 2597
    .local v7, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v12, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v7

    .line 2598
    .local v7, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v7, v2}, Ljava/io/OutputStream;->write([B)V

    .line 2599
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 2601
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Lcom/android/camera/Camera;->setResult(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2607
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v11}, Lcom/android/camera/Camera;->finish()V

    .line 2608
    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2581
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 2602
    :catch_0
    move-exception v4

    .line 2604
    .local v4, "ex":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v11, "Camera"

    const-string/jumbo v12, "IOException when doAttach"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2607
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v11}, Lcom/android/camera/Camera;->finish()V

    .line 2608
    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 2606
    .end local v4    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 2607
    iget-object v12, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v12}, Lcom/android/camera/Camera;->finish()V

    .line 2608
    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2606
    throw v11

    .line 2611
    :cond_2
    const v11, 0xc800

    invoke-static {v2, v11}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2612
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    invoke-static {v11}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v6

    .line 2613
    .local v6, "orientation":I
    invoke-static {v0, v6}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2614
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    .line 2615
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v13, "inline-data"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, "data"

    invoke-virtual {v12, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v12

    .line 2614
    invoke-virtual {v11, v14, v12}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 2616
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v11}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0

    .line 2620
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "orientation":I
    :cond_3
    const/4 v10, 0x0

    .line 2621
    .local v10, "tempUri":Landroid/net/Uri;
    const/4 v9, 0x0

    .line 2623
    .local v9, "tempStream":Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const-string/jumbo v12, "crop-temp"

    invoke-virtual {v11, v12}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 2624
    .local v8, "path":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 2625
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const-string/jumbo v12, "crop-temp"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    .line 2626
    .local v9, "tempStream":Ljava/io/FileOutputStream;
    invoke-virtual {v9, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 2627
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 2628
    const/4 v9, 0x0

    .line 2629
    .local v9, "tempStream":Ljava/io/FileOutputStream;
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v10

    .line 2639
    .local v10, "tempUri":Landroid/net/Uri;
    invoke-static {v9}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2641
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2642
    .local v5, "newExtras":Landroid/os/Bundle;
    const-string/jumbo v11, "circle"

    iget-object v12, p0, Lcom/android/camera/module/CameraModule;->mCropValue:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2643
    const-string/jumbo v11, "circleCrop"

    const-string/jumbo v12, "true"

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2645
    :cond_4
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v11, :cond_5

    .line 2646
    const-string/jumbo v11, "output"

    iget-object v12, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2651
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v11, "com.android.camera.action.CROP"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2653
    .local v1, "cropIntent":Landroid/content/Intent;
    invoke-virtual {v1, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2654
    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2656
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/16 v12, 0x3e8

    invoke-virtual {v11, v1, v12}, Lcom/android/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2634
    .end local v1    # "cropIntent":Landroid/content/Intent;
    .end local v5    # "newExtras":Landroid/os/Bundle;
    .end local v8    # "path":Ljava/io/File;
    .end local v9    # "tempStream":Ljava/io/FileOutputStream;
    .local v10, "tempUri":Landroid/net/Uri;
    :catch_1
    move-exception v4

    .line 2635
    .restart local v4    # "ex":Ljava/io/IOException;
    :try_start_3
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/camera/Camera;->setResult(I)V

    .line 2636
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v11}, Lcom/android/camera/Camera;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2639
    invoke-static {v9}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2637
    return-void

    .line 2630
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 2631
    .local v3, "ex":Ljava/io/FileNotFoundException;
    :try_start_4
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/camera/Camera;->setResult(I)V

    .line 2632
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v11}, Lcom/android/camera/Camera;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2639
    invoke-static {v9}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2633
    return-void

    .line 2638
    .end local v3    # "ex":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v11

    .line 2639
    invoke-static {v9}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2638
    throw v11

    .line 2648
    .restart local v5    # "newExtras":Landroid/os/Bundle;
    .restart local v8    # "path":Ljava/io/File;
    .restart local v9    # "tempStream":Ljava/io/FileOutputStream;
    .local v10, "tempUri":Landroid/net/Uri;
    :cond_5
    const-string/jumbo v11, "return-data"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private getGroupshotNum()I
    .locals 5

    .prologue
    .line 5282
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->getFaces()[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object v1

    .line 5283
    .local v1, "faces":[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    if-eqz v1, :cond_0

    array-length v0, v1

    .line 5284
    .local v0, "faceNum":I
    :goto_0
    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    return v2

    .line 5283
    .end local v0    # "faceNum":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;
    .locals 2
    .param p0, "activity"    # Lcom/android/camera/Camera;
    .param p1, "isBackCamera"    # Z
    .param p2, "isImageCaptureIntent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/Camera;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1929
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1930
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_d

    .line 1931
    if-nez p2, :cond_0

    .line 1932
    const-string/jumbo v1, "pref_camera_panoramamode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1934
    :cond_0
    const-string/jumbo v1, "pref_delay_capture_mode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1935
    const-string/jumbo v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1936
    if-nez p2, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1937
    const-string/jumbo v1, "pref_camera_ubifocus_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1939
    :cond_1
    const-string/jumbo v1, "pref_camera_manual_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1940
    invoke-static {}, Lcom/android/camera/Device;->isSupportGradienter()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1941
    const-string/jumbo v1, "pref_camera_gradienter_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1944
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/camera/Device;->IS_H2X_LC:Z

    if-eqz v1, :cond_b

    .line 1947
    :cond_3
    :goto_0
    if-nez p2, :cond_c

    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1948
    const-string/jumbo v1, "pref_camera_groupshot_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1952
    :cond_4
    :goto_1
    sget-boolean v1, Lcom/android/camera/Device;->IS_HONGMI:Z

    if-eqz v1, :cond_5

    .line 1953
    const-string/jumbo v1, "pref_camera_scenemode_setting_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1955
    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isMonoSupported()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1956
    const-string/jumbo v1, "pref_camera_mono_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1958
    :cond_6
    invoke-static {}, Lcom/android/camera/Device;->isSupportSquare()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1959
    const-string/jumbo v1, "pref_camera_square_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1961
    :cond_7
    if-nez p2, :cond_8

    invoke-static {}, Lcom/android/camera/Device;->isRAWSupported()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1962
    const-string/jumbo v1, "pref_camera_raw_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1964
    :cond_8
    if-nez p2, :cond_9

    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/camera/Device;->isUsedMorphoLib()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1965
    const-string/jumbo v1, "pref_camera_hand_night_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1967
    :cond_9
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTiltShift()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1968
    const-string/jumbo v1, "pref_camera_tilt_shift_mode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1980
    :cond_a
    :goto_2
    return-object v0

    .line 1945
    :cond_b
    const-string/jumbo v1, "pref_camera_face_beauty_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1949
    :cond_c
    invoke-static {}, Lcom/android/camera/Device;->isUsedMorphoLib()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1950
    const-string/jumbo v1, "pref_camera_hand_night_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1971
    :cond_d
    const-string/jumbo v1, "pref_delay_capture_mode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1972
    const-string/jumbo v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1973
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMagicMirror()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1974
    const-string/jumbo v1, "pref_camera_magic_mirror_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1976
    :cond_e
    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1977
    const-string/jumbo v1, "pref_camera_groupshot_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1614
    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private handleDelayShutter()V
    .locals 4

    .prologue
    const/16 v1, 0x1d

    .line 2434
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 2435
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2436
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAudioCaptureOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2437
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2438
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2433
    :cond_0
    :goto_0
    return-void

    .line 2441
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2442
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->close()V

    goto :goto_0
.end method

.method private handleSelectedMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4445
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSelectedMode()Ljava/lang/String;

    move-result-object v0

    .line 4446
    .local v0, "selectedMode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 4447
    const-string/jumbo v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectedMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4448
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->setSelectedMode(Ljava/lang/String;)V

    .line 4449
    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule;->onModeSelected(Ljava/lang/Object;)V

    .line 4444
    :cond_0
    return-void
.end method

.method private handleUpdateFaceView(ZZ)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "clearFaces"    # Z

    .prologue
    const/4 v1, 0x0

    .line 780
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v0

    .line 781
    .local v0, "view":Lcom/android/camera/ui/FaceView;
    if-eqz p1, :cond_4

    .line 783
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFaceBeautyMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 784
    :cond_0
    const-string/jumbo v2, "auto"

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 786
    invoke-static {}, Lcom/android/camera/CameraSettings;->needStopFaceinFocusing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 779
    :cond_1
    :goto_0
    return-void

    .line 787
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 788
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 789
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 790
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 791
    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 792
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/FocusManager;->setFrameView(Lcom/android/camera/ui/FrameView;)V

    goto :goto_0

    .line 795
    :cond_4
    if-eqz p2, :cond_5

    .line 796
    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 798
    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideLoadUI(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .prologue
    .line 1852
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getCaptureProgressBar()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1851
    return-void

    .line 1852
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hidePostCaptureAlert()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4101
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 4102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->ignoreTouchEvent(Z)V

    .line 4103
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->show()V

    .line 4104
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->show()V

    .line 4105
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6PreviewPage;->setPopupVisible(Z)V

    .line 4106
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/ui/V6ShutterButton;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 4107
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 4108
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopControlPanel()Lcom/android/camera/ui/TopControlPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TopControlPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 4109
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 4100
    :cond_0
    return-void
.end method

.method private initGroupShot(I)V
    .locals 7
    .param p1, "maxImage"    # I

    .prologue
    .line 5290
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    return-void

    .line 5291
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v0}, Lcom/android/camera/groupshot/GroupShot;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5292
    :cond_1
    new-instance v0, Lcom/android/camera/groupshot/GroupShot;

    invoke-direct {v0}, Lcom/android/camera/groupshot/GroupShot;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    .line 5295
    :cond_2
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 5296
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_4

    .line 5297
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mGroupFaceNum:I

    .line 5298
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    .line 5299
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    .line 5300
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    .line 5301
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    move v1, p1

    .line 5297
    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/groupshot/GroupShot;->initialize(IIIIII)I

    .line 5287
    :goto_0
    return-void

    .line 5303
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mGroupFaceNum:I

    .line 5304
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    .line 5305
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    .line 5306
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    .line 5307
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    move v1, p1

    .line 5303
    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/groupshot/GroupShot;->initialize(IIIIII)I

    goto :goto_0
.end method

.method private initializeCapabilities()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 4371
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 4372
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_0

    .line 4373
    return-void

    .line 4375
    :cond_0
    new-instance v0, Lcom/android/camera/portability/Camera1Parameters;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-direct {v0, v1}, Lcom/android/camera/portability/Camera1Parameters;-><init>(Landroid/hardware/Camera$Parameters;)V

    .line 4376
    .local v0, "paramProxy":Lcom/android/camera/portability/Camera1Parameters;
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-lez v1, :cond_2

    .line 4377
    const-string/jumbo v1, "auto"

    .line 4378
    sget-object v3, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v3, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Lcom/android/camera/portability/ICameraParameters;)Ljava/util/List;

    move-result-object v3

    .line 4377
    invoke-static {v1, v3}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    .line 4376
    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    .line 4379
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    .line 4380
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mAeLockSupported:Z

    .line 4381
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mAwbLockSupported:Z

    .line 4382
    const-string/jumbo v1, "continuous-picture"

    .line 4383
    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v2, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Lcom/android/camera/portability/ICameraParameters;)Ljava/util/List;

    move-result-object v2

    .line 4382
    invoke-static {v1, v2}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mContinuousFocusSupported:Z

    .line 4370
    return-void

    :cond_2
    move v1, v2

    .line 4376
    goto :goto_0
.end method

.method private initializeFirstTime()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 744
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 748
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->keepMediaProviderInstance()V

    .line 749
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->installIntentFilter()V

    .line 750
    invoke-direct {p0, v1}, Lcom/android/camera/module/CameraModule;->updateLyingSensorState(Z)V

    .line 752
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    .line 743
    return-void
.end method

.method private initializeFocusManager()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 3227
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3228
    const v1, 0x7f0a0013

    .line 3227
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 3229
    .local v3, "defaultFocusModes":[Ljava/lang/String;
    new-instance v0, Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 3230
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 3231
    iget v6, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v8

    if-ne v6, v8, :cond_0

    const/4 v7, 0x1

    .line 3232
    :cond_0
    iget-object v6, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    move-object v6, p0

    .line 3229
    invoke-direct/range {v0 .. v8}, Lcom/android/camera/FocusManager;-><init>(Landroid/content/Context;Lcom/android/camera/preferences/CameraSettingPreferences;[Ljava/lang/String;Lcom/android/camera/ui/FocusView;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    .line 3234
    const/4 v9, 0x0

    .line 3235
    .local v9, "rect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3236
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getRenderRect()Landroid/graphics/Rect;

    move-result-object v9

    .line 3238
    .end local v9    # "rect":Landroid/graphics/Rect;
    :cond_1
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_2

    .line 3239
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v1

    .line 3240
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v2

    .line 3239
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setRenderSize(II)V

    .line 3241
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 3225
    :goto_0
    return-void

    .line 3246
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setRenderSize(II)V

    .line 3247
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    goto :goto_0
.end method

.method private initializeObjectTrack(Landroid/graphics/RectF;Z)Z
    .locals 2
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "up"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4647
    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 4648
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 4649
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 4650
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 4651
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    .line 4652
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ObjectView;->initializeTrackView(Landroid/graphics/RectF;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4653
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setFrameView(Lcom/android/camera/ui/FrameView;)V

    .line 4654
    const/4 v0, 0x1

    return v0

    .line 4656
    :cond_0
    return v1
.end method

.method private initializeSecondTime()V
    .locals 1

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->installIntentFilter()V

    .line 771
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->keepMediaProviderInstance()V

    .line 772
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule;->updateLyingSensorState(Z)V

    .line 774
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->hidePostCaptureAlert()V

    .line 766
    :cond_0
    return-void
.end method

.method private installIntentFilter()V
    .locals 3

    .prologue
    .line 2940
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2941
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2942
    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2943
    const-string/jumbo v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2944
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2945
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2946
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    .line 2937
    return-void
.end method

.method private isCameraIdle()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 4064
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v2, v0, :cond_0

    .line 4065
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->isFocusCompleted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4066
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 4064
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 4066
    goto :goto_0

    :cond_2
    move v0, v1

    .line 4065
    goto :goto_0
.end method

.method private isCaptureAfterLaunch()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4462
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4463
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4464
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 4465
    .local v1, "myExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string/jumbo v3, "captureAfterLaunch"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4466
    const-string/jumbo v3, "captureAfterLaunch"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 4467
    .local v2, "result":Z
    const-string/jumbo v3, "captureAfterLaunch"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4468
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4469
    return v2

    .line 4472
    .end local v1    # "myExtras":Landroid/os/Bundle;
    .end local v2    # "result":Z
    :cond_0
    return v4
.end method

.method private isCountDownMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2721
    const-string/jumbo v1, "pref_delay_capture_mode"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2722
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCountDownTimes()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 2721
    :cond_0
    return v0
.end method

.method private isGroupShotCapture()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5324
    const-string/jumbo v2, "pref_camera_groupshot_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5325
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-le v2, v0, :cond_0

    .line 5324
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 5325
    goto :goto_0

    :cond_1
    move v0, v1

    .line 5324
    goto :goto_0
.end method

.method private isPreviewVisible()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3422
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 3423
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3424
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3425
    :cond_0
    return v1

    .line 3427
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isSelectingCapturedImage()Z
    .locals 1

    .prologue
    .line 3417
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 3418
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->isVisibleWithAnimationDone()Z

    move-result v0

    .line 3417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShutterButtonClickable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2786
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 736
    const-string/jumbo v1, "media"

    .line 735
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 730
    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    .line 4358
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4357
    return-void
.end method

.method private onFrameLayoutChange(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 3969
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->onLayoutChange(II)V

    .line 3970
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3971
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setRenderSize(II)V

    .line 3973
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3974
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v1

    .line 3975
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v2

    .line 3974
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setRenderSize(II)V

    .line 3976
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 3978
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3979
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ObjectView;->setDisplaySize(II)V

    .line 3981
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/zxing/QRCodeManager;->setPreviewLayoutSize(II)V

    .line 3968
    return-void
.end method

.method private onModeSelected(Ljava/lang/Object;)V
    .locals 6
    .param p1, "extra1"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2306
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->handleDelayShutter()V

    .line 2307
    const-string/jumbo v1, "pref_camera_panoramamode_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2308
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->switchToOtherMode(I)V

    .line 2309
    return-void

    .line 2311
    :cond_0
    const-string/jumbo v1, "pref_camera_mono_mode_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2312
    const-string/jumbo v1, "pref_camera_raw_mode_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2311
    if-eqz v1, :cond_2

    :cond_1
    move-object v1, p1

    .line 2313
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    .line 2311
    if-eqz v1, :cond_2

    .line 2314
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->switchToOtherMode(I)V

    .line 2315
    return-void

    .line 2317
    :cond_2
    const-string/jumbo v1, "pref_camera_ubifocus_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2318
    const-string/jumbo v1, "pref_camera_ubifocus_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2319
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    .line 2386
    :cond_3
    :goto_0
    const-string/jumbo v1, "pref_camera_groupshot_mode_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2387
    const-string/jumbo v1, "pref_camera_groupshot_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2388
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->getGroupshotNum()I

    move-result v0

    .line 2389
    .local v0, "maxImage":I
    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule;->initGroupShot(I)V

    .line 2390
    const-string/jumbo v1, "torch"

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2391
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FlashButton;->keepSetValue(Ljava/lang/String;)V

    .line 2393
    :cond_4
    const v1, 0x7f0e021b

    invoke-virtual {p0, v1, v4}, Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V

    .line 2399
    .end local v0    # "maxImage":I
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v1

    .line 2400
    const-string/jumbo v2, "pref_camera_gradienter_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    .line 2399
    invoke-virtual {v1, v2}, Lcom/android/camera/SensorStateManager;->setGradienterEnabled(Z)V

    .line 2401
    const-string/jumbo v1, "pref_camera_gradienter_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2402
    const-string/jumbo v1, "pref_camera_tilt_shift_mode"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    .line 2401
    if-nez v1, :cond_6

    .line 2403
    const-string/jumbo v1, "pref_camera_groupshot_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    .line 2401
    if-eqz v1, :cond_14

    .line 2404
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getEffectButton()Lcom/android/camera/ui/EffectButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/EffectButton;->resetSettings()V

    .line 2408
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    .line 2409
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 2410
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 2304
    return-void

    .line 2320
    :cond_7
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2321
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto/16 :goto_0

    .line 2323
    :cond_8
    const-string/jumbo v1, "pref_camera_hand_night_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2324
    const-string/jumbo v1, "pref_camera_hand_night_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2325
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto/16 :goto_0

    .line 2326
    :cond_9
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2327
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto/16 :goto_0

    .line 2329
    :cond_a
    const-string/jumbo v1, "pref_camera_square_mode_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2330
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6PreviewFrame;->updateRefenceLineAccordSquare()V

    .line 2332
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "auto"

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2333
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 2334
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->cancelAutoFocus()V

    goto/16 :goto_0

    .line 2336
    :cond_b
    const-string/jumbo v1, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2337
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2338
    :cond_c
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const-string/jumbo v2, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/SettingsOverrider;->removeSavedSetting(Ljava/lang/String;)V

    .line 2339
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/V6ModeExitView;->clearExitButtonClickListener(Z)V

    goto/16 :goto_0

    .line 2340
    :cond_d
    const-string/jumbo v1, "pref_camera_gradienter_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2341
    const-string/jumbo v1, "pref_camera_tilt_shift_mode"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    .line 2340
    if-nez v1, :cond_e

    .line 2342
    const-string/jumbo v1, "pref_camera_magic_mirror_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    .line 2340
    if-nez v1, :cond_e

    .line 2343
    const-string/jumbo v1, "pref_camera_groupshot_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    .line 2340
    if-eqz v1, :cond_3

    .line 2344
    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/V6ModeExitView;->clearExitButtonClickListener(Z)V

    goto/16 :goto_0

    .line 2364
    :cond_f
    const-string/jumbo v1, "pref_camera_manual_mode_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2365
    const-string/jumbo v1, "pref_camera_manual_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2366
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FlashButton;->keepSetValue(Ljava/lang/String;)V

    .line 2369
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateFocusMode()V

    goto/16 :goto_0

    .line 2371
    :cond_10
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FlashButton;->restoreKeptValue()V

    .line 2372
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/ui/HdrButton;->overrideSettings(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2374
    :cond_11
    const-string/jumbo v1, "pref_camera_magic_mirror_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2375
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2376
    invoke-static {}, Lcom/android/camera/CameraSettings;->needStopFaceinFocusing()Z

    move-result v1

    if-nez v1, :cond_12

    .line 2377
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 2378
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->resume()V

    goto/16 :goto_0

    .line 2379
    :cond_12
    const-string/jumbo v1, "auto"

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2380
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    .line 2381
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->pause()V

    goto/16 :goto_0

    .line 2395
    :cond_13
    invoke-virtual {p0, v4, v3}, Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V

    goto/16 :goto_1

    .line 2406
    :cond_14
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getEffectButton()Lcom/android/camera/ui/EffectButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/EffectButton;->restoreSettings()V

    goto/16 :goto_2
.end method

.method private onSettingsBack()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 4139
    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    .line 4140
    .local v0, "cm":Lcom/android/camera/ChangeManager;
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4141
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 4142
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->restorePreferences()V

    .line 4138
    :cond_0
    :goto_0
    return-void

    .line 4143
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4144
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 4145
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method private overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "flashMode"    # Ljava/lang/String;
    .param p2, "whiteBalance"    # Ljava/lang/String;
    .param p3, "exposureMode"    # Ljava/lang/String;
    .param p4, "focusMode"    # Ljava/lang/String;
    .param p5, "isoValue"    # Ljava/lang/String;
    .param p6, "effectValue"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1883
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1884
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    .line 1885
    const-string/jumbo v2, "pref_camera_whitebalance_key"

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    .line 1886
    const-string/jumbo v2, "pref_camera_exposure_key"

    aput-object v2, v1, v5

    aput-object p3, v1, v6

    .line 1887
    const-string/jumbo v2, "pref_camera_focus_mode_key"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    aput-object p4, v1, v2

    .line 1888
    const-string/jumbo v2, "pref_qc_camera_iso_key"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x7

    aput-object p5, v1, v2

    .line 1889
    const-string/jumbo v2, "pref_camera_coloreffect_key"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const/16 v2, 0x9

    aput-object p6, v1, v2

    .line 1884
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SettingPage;->overrideSettings([Ljava/lang/String;)V

    .line 1881
    :goto_0
    return-void

    .line 1891
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    .line 1892
    const-string/jumbo v2, "pref_camera_whitebalance_key"

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    .line 1893
    const-string/jumbo v2, "pref_camera_exposure_key"

    aput-object v2, v1, v5

    aput-object p3, v1, v6

    .line 1894
    const-string/jumbo v2, "pref_camera_focus_mode_key"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    aput-object p4, v1, v2

    .line 1895
    const-string/jumbo v2, "pref_qc_camera_iso_key"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x7

    aput-object p5, v1, v2

    .line 1891
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SettingPage;->overrideSettings([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareGroupShot()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5312
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isGroupShotCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5313
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule;->initGroupShot(I)V

    .line 5314
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    if-eqz v0, :cond_1

    .line 5315
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v0, v1}, Lcom/android/camera/groupshot/GroupShot;->attach_start(I)I

    .line 5319
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 5311
    :cond_0
    return-void

    .line 5317
    :cond_1
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    goto :goto_0
.end method

.method private prepareUIByPreviewSize()V
    .locals 5

    .prologue
    .line 1857
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1858
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    .line 1859
    return-void

    .line 1861
    :cond_0
    sget-boolean v2, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v2, :cond_1

    .line 1862
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    .line 1863
    return-void

    .line 1865
    :cond_1
    new-instance v0, Lcom/android/camera/PictureSize;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 1866
    const-string/jumbo v3, "pref_camera_picturesize_key"

    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    .line 1865
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/PictureSize;-><init>(Ljava/lang/String;)V

    .line 1868
    .local v0, "pictureSize":Lcom/android/camera/PictureSize;
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1869
    iget v2, v0, Lcom/android/camera/PictureSize;->width:I

    iget v3, v0, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v1

    .line 1870
    .local v1, "style":I
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    if-eq v1, v2, :cond_2

    .line 1871
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    .line 1872
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;I)V

    .line 1873
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->changePreviewSurfaceSize()V

    .line 1875
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    .line 1876
    iget v3, v0, Lcom/android/camera/PictureSize;->width:I

    iget v4, v0, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v3

    .line 1875
    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6PreviewFrame;->setAspectRatio(F)V

    .line 1856
    .end local v1    # "style":I
    :cond_3
    return-void
.end method

.method private previewBecomeInvisible()V
    .locals 1

    .prologue
    .line 4114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    .line 4115
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopPreview()V

    .line 4113
    return-void
.end method

.method private previewBecomeVisible()V
    .locals 1

    .prologue
    .line 4119
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseBitmapIfNeeded()V

    .line 4120
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 4121
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 4118
    return-void
.end method

.method private releaseResources()V
    .locals 1

    .prologue
    .line 4963
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopPreview()V

    .line 4965
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->closeCamera()V

    .line 4966
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataAnalytics;->uploadToServer()V

    .line 4967
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mWaitForRelease:Z

    .line 4962
    return-void
.end method

.method private resetGradienter()V
    .locals 2

    .prologue
    .line 4820
    const-string/jumbo v0, "pref_camera_gradienter_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4821
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setGradienterEnabled(Z)V

    .line 4822
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    .line 4819
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 4352
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4353
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4354
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 4351
    return-void
.end method

.method private restorePreferences()V
    .locals 1

    .prologue
    .line 4362
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4363
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setZoomValue(I)V

    .line 4365
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FlashButton;->reloadPreference()V

    .line 4366
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->reloadPreferences()V

    .line 4367
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    .line 4361
    return-void
.end method

.method private restoreStatusAfterBurst()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2880
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 2881
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    .line 2882
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setupPreview()V

    .line 2885
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2886
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 2887
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 2888
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 2889
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 2876
    :cond_0
    return-void
.end method

.method private resumePreview()V
    .locals 2

    .prologue
    .line 3010
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 3011
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3009
    return-void
.end method

.method private saveJpegData([B)V
    .locals 18
    .param p1, "data"    # [B

    .prologue
    .line 2564
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 2565
    .local v2, "s":Landroid/hardware/Camera$Size;
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v9

    .line 2566
    .local v9, "loc":Landroid/location/Location;
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v13

    .line 2568
    .local v13, "orientation":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    add-int/2addr v3, v13

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_0

    .line 2569
    iget v10, v2, Landroid/hardware/Camera$Size;->width:I

    .line 2570
    .local v10, "width":I
    iget v11, v2, Landroid/hardware/Camera$Size;->height:I

    .line 2575
    .local v11, "height":I
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v5

    .line 2577
    .local v5, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2578
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getPictureInfo()Lcom/android/camera/PictureInfo;

    move-result-object v17

    .line 2577
    const/4 v8, 0x0

    .line 2578
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v4, p1

    .line 2577
    invoke-virtual/range {v3 .. v17}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    .line 2563
    return-void

    .line 2572
    .end local v5    # "title":Ljava/lang/String;
    .end local v10    # "width":I
    .end local v11    # "height":I
    :cond_0
    iget v10, v2, Landroid/hardware/Camera$Size;->height:I

    .line 2573
    .restart local v10    # "width":I
    iget v11, v2, Landroid/hardware/Camera$Size;->width:I

    .restart local v11    # "height":I
    goto :goto_0
.end method

.method private saveStatusBeforeBurst()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2850
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 2851
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2852
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2853
    .local v1, "override":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    .line 2854
    const-string/jumbo v3, "pref_qc_camera_iso_key"

    aput-object v3, v2, v6

    aput-object v5, v2, v4

    .line 2855
    const-string/jumbo v3, "pref_qc_camera_exposuretime_key"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    aput-object v5, v2, v7

    .line 2856
    const-string/jumbo v3, "pref_camera_face_beauty_key"

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const/4 v3, 0x5

    aput-object v5, v2, v3

    .line 2857
    const-string/jumbo v3, "pref_camera_shader_coloreffect_key"

    const/4 v4, 0x6

    aput-object v3, v2, v4

    const/4 v3, 0x7

    aput-object v5, v2, v3

    .line 2853
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2859
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2860
    .local v0, "flash":Ljava/lang/String;
    const-string/jumbo v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2861
    const-string/jumbo v2, "torch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2865
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    .line 2868
    .end local v0    # "flash":Ljava/lang/String;
    .end local v1    # "override":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 2869
    invoke-virtual {p0, v7}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 2870
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 2871
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 2872
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 2873
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 2849
    return-void

    .line 2862
    .restart local v0    # "flash":Ljava/lang/String;
    .restart local v1    # "override":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v2, "pref_camera_flashmode_key"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2863
    const-string/jumbo v2, "off"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private sendBurstCommand()V
    .locals 6

    .prologue
    .line 1467
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isLongShotMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1468
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v1

    .line 1469
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v2, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;)V

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

    .line 1470
    new-instance v4, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    const/4 v5, 0x0

    .line 1469
    invoke-virtual {v0, v2, v3, v5, v4}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1466
    :cond_0
    return-void

    .line 1468
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendDoCaptureMessage(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/16 v1, 0xf

    .line 4454
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    .line 4455
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4456
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4453
    :cond_0
    return-void
.end method

.method private setOrientation(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 2471
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-void

    .line 2472
    :cond_0
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    .line 2474
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {v2, v3}, Lcom/android/camera/Util;->getShootOrientation(Landroid/app/Activity;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->setOrientation(I)V

    .line 2475
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->checkActivityOrientation()V

    .line 2479
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mDisplayRotation:I

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 2480
    .local v0, "orientationCompensation":I
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    if-eq v1, v0, :cond_1

    .line 2481
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    .line 2482
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/module/CameraModule;->setOrientationIndicator(IZ)V

    .line 2483
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setOrientationParameter()V

    .line 2467
    :cond_1
    return-void
.end method

.method private setOrientationParameter()V
    .locals 5

    .prologue
    .line 2492
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 2493
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    if-nez v2, :cond_4

    .line 2494
    const/4 v0, 0x0

    .line 2496
    .local v0, "changeFlag":Z
    invoke-static {}, Lcom/android/camera/Device;->isFaceDetectNeedRotation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2497
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {v2, v3}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v1

    .line 2498
    .local v1, "newRotation":I
    sget-object v2, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->getRotation(Landroid/hardware/Camera$Parameters;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 2499
    const/4 v0, 0x1

    .line 2500
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2506
    .end local v1    # "newRotation":I
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2507
    :cond_1
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 2508
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2509
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "xiaomi-preview-rotation"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2508
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2514
    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 2515
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v2

    .line 2514
    if-eqz v2, :cond_4

    .line 2516
    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 2487
    .end local v0    # "changeFlag":Z
    :cond_4
    return-void

    .line 2510
    .restart local v0    # "changeFlag":Z
    :cond_5
    const/4 v0, 0x1

    .line 2511
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "xiaomi-preview-rotation"

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setPictureOrientation()V
    .locals 2

    .prologue
    .line 4941
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->isDeviceLying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mShootRotation:F

    .line 4942
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mShootOrientation:I

    .line 4939
    return-void

    .line 4941
    :cond_0
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mDeviceRotation:F

    goto :goto_0

    .line 4942
    :cond_1
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    goto :goto_1
.end method

.method private setPreviewFrameLayoutAspectRatio()V
    .locals 4

    .prologue
    .line 4388
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 4389
    .local v0, "size":Landroid/hardware/Camera$Size;
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v1

    .line 4390
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v2

    .line 4389
    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PreviewFrame;->setAspectRatio(F)V

    .line 4386
    return-void
.end method

.method private setupCaptureParams()V
    .locals 3

    .prologue
    .line 4070
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4071
    .local v0, "myExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 4072
    const-string/jumbo v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    .line 4073
    const-string/jumbo v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/CameraModule;->mCropValue:Ljava/lang/String;

    .line 4074
    const-string/jumbo v1, "save-image"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsSaveCaptureImage:Z

    .line 4069
    :cond_0
    return-void
.end method

.method private showObjectTrackToastIfNeeded()V
    .locals 4

    .prologue
    .line 4724
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v1, "pref_camera_first_tap_screen_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4725
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->couldEnableObjectTrack()Z

    move-result v0

    .line 4724
    if-eqz v0, :cond_0

    .line 4727
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/16 v1, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4722
    :cond_0
    return-void
.end method

.method private showPostCaptureAlert()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4081
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 4082
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->ignoreTouchEvent(Z)V

    .line 4083
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 4084
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->previewBecomeInvisible()V

    .line 4085
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->hide()V

    .line 4086
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->hide()V

    .line 4087
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->setPopupVisible(Z)V

    .line 4088
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/camera/ui/V6ShutterButton;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 4089
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 4090
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopControlPanel()Lcom/android/camera/ui/TopControlPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TopControlPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 4091
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 4092
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getOrientationIndicator()Lcom/android/camera/ui/OrientationIndicator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/OrientationIndicator;->updateVisible(Z)V

    .line 4096
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    .line 4080
    :cond_0
    return-void
.end method

.method private showTapToFocusToastIfNeeded()V
    .locals 4

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 755
    :cond_0
    return-void
.end method

.method private stopMultiSnap()V
    .locals 4

    .prologue
    .line 2894
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateCapture()V

    .line 2895
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->cancelContinuousShot()V

    .line 2896
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2897
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopRequest:Z

    .line 2899
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2900
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    const/16 v1, 0x25

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2893
    :goto_0
    return-void

    .line 2902
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->handleMultiSnapDone()V

    goto :goto_0
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3603
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3604
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 3606
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_1

    .line 3607
    const-string/jumbo v0, "Camera"

    const-string/jumbo v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3608
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 3609
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 3613
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3614
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 3619
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_2

    .line 3620
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 3602
    :cond_2
    return-void

    .line 3616
    :cond_3
    iput v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4185
    iget-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v4, :cond_0

    return-void

    .line 4186
    :cond_0
    invoke-virtual {p0, v3, v2}, Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V

    .line 4187
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->updateStereoSettings(Z)V

    .line 4188
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    .line 4189
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4190
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 4192
    :cond_1
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v4}, Lcom/android/camera/AudioCaptureManager;->onPause()V

    .line 4193
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 4195
    const-string/jumbo v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Start to switch camera. id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4196
    iget v4, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    iput v4, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    .line 4197
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    .line 4198
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v5, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 4199
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->changeRequestOrientation()V

    .line 4200
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->resetZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 4201
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 4202
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->resetGradienter()V

    .line 4203
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetFaceBeautyMode()V

    .line 4204
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getPreferencesLocalId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 4205
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->updateExitButton(Z)V

    .line 4206
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v4

    invoke-virtual {v4, v7, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 4207
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 4209
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->closeCamera()V

    .line 4210
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 4211
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getEdgeShutterView()Lcom/android/camera/ui/V6EdgeShutterView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6EdgeShutterView;->cancelAnimation()V

    .line 4212
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 4213
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->updatePreferenceGroup()V

    .line 4214
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->openCamera()V

    .line 4215
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->hasCameraException()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4216
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onCameraException()V

    .line 4217
    return-void

    .line 4219
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeCapabilities()V

    .line 4220
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->updateStereoSettings(Z)V

    .line 4221
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v5, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v6

    if-ne v5, v6, :cond_4

    :goto_0
    invoke-virtual {v4, v2}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    .line 4222
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4223
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/module/CameraModule;->setOrientationIndicator(IZ)V

    .line 4224
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/FlashButton;->avoidTorchOpen()Z

    .line 4225
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 4226
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 4229
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeAfterCameraOpen()V

    .line 4230
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    .line 4231
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->onCameraOpen()V

    .line 4232
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v1

    .line 4233
    .local v1, "minAe":I
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    .line 4234
    .local v0, "maxAe":I
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v2

    invoke-virtual {v2, p0, v1, v0}, Lcom/android/camera/ui/FocusView;->initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;II)V

    .line 4235
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/ObjectView;->setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V

    .line 4236
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onCameraStartPreview()V

    .line 4237
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->updateModePreference()V

    .line 4238
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v2}, Lcom/android/camera/AudioCaptureManager;->onResume()V

    .line 4241
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4184
    return-void

    .end local v0    # "maxAe":I
    .end local v1    # "minAe":I
    :cond_4
    move v2, v3

    .line 4221
    goto :goto_0
.end method

.method private takeAPhotoIfNeeded()V
    .locals 4

    .prologue
    .line 4419
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsCaptureAfterLaunch:Z

    if-eqz v1, :cond_0

    .line 4420
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    .line 4422
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCaptureAfterLaunch()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsCaptureAfterLaunch:Z

    .line 4424
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsCaptureAfterLaunch:Z

    if-eqz v1, :cond_2

    .line 4426
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4427
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    .line 4428
    .local v0, "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "off"

    invoke-static {v1, v0}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4429
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 4430
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FlashButton;->setValue(Ljava/lang/String;)V

    .line 4431
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4434
    .end local v0    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/CameraModule;->sendDoCaptureMessage(J)V

    .line 4435
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->lockScreenDelayed()V

    .line 4418
    :cond_2
    return-void
.end method

.method private traceDelayCaptureEvents()V
    .locals 3

    .prologue
    .line 4946
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v1}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4947
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "capture_times_audio"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 4945
    :cond_0
    :goto_0
    return-void

    .line 4949
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "capture_times_count_down"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 4950
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCountDownTimes()I

    move-result v0

    .line 4951
    .local v0, "countTimes":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 4952
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "capture_times_count_down_3s"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 4953
    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 4954
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "capture_times_count_down_5s"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 4955
    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 4956
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "capture_times_count_down_10s"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateHDRPreference()V
    .locals 3

    .prologue
    .line 4763
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 4764
    .local v0, "hdrMode":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getMutexHdrMode(Ljava/lang/String;)I

    move-result v1

    .line 4765
    .local v1, "mutexhdr":I
    const-string/jumbo v2, "pref_camera_hdr_key"

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->updateASD(Ljava/lang/String;)V

    .line 4767
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 4768
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2, v1}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    .line 4762
    :goto_0
    return-void

    .line 4769
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4770
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_0

    .line 4772
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method private updateLyingSensorState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 5229
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5230
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/SensorStateManager;->setRotationIndicatorEnabled(Z)V

    .line 5228
    :cond_0
    return-void
.end method

.method private updateModePreference()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 4257
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 4258
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->getMutexHdrMode(Ljava/lang/String;)I

    move-result v1

    .line 4259
    .local v1, "hdr":I
    if-eqz v1, :cond_4

    .line 4261
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v3

    .line 4262
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 4261
    invoke-virtual {v3, v4}, Lcom/android/camera/ui/FlashButton;->updateFlashModeAccordingHdr(Ljava/lang/String;)V

    .line 4263
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3, v1}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    .line 4272
    :goto_0
    const-string/jumbo v3, "pref_camera_groupshot_mode_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4273
    const-string/jumbo v3, "torch"

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4274
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v3

    const-string/jumbo v4, "off"

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/FlashButton;->keepSetValue(Ljava/lang/String;)V

    .line 4276
    :cond_1
    const v3, 0x7f0e021b

    invoke-virtual {p0, v3, v5}, Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V

    .line 4280
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    .line 4281
    .local v0, "effect":I
    sget v3, Lcom/android/camera/effect/EffectController;->sGradienterIndex:I

    if-ne v3, v0, :cond_7

    .line 4282
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/SensorStateManager;->setGradienterEnabled(Z)V

    .line 4256
    :cond_3
    :goto_1
    return-void

    .line 4264
    .end local v0    # "effect":I
    :cond_4
    const-string/jumbo v3, "pref_camera_hand_night_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4265
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_0

    .line 4266
    :cond_5
    const-string/jumbo v3, "pref_camera_ubifocus_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4267
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_0

    .line 4269
    :cond_6
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_0

    .line 4284
    .restart local v0    # "effect":I
    :cond_7
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v2

    .line 4285
    .local v2, "index":I
    if-eq v0, v2, :cond_3

    .line 4288
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->applyPreferenceSettingsLater()V

    goto :goto_1
.end method

.method private updateMutexModeUI(Z)V
    .locals 2
    .param p1, "done"    # Z

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1823
    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->updateExitButton(Z)V

    .line 1824
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1825
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->hideLoadUI(Z)V

    .line 1828
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    .line 1829
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getWarningMessageView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1830
    const v1, 0x7f0e018e

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1829
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1836
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    const-string/jumbo v0, "pref_qc_camera_exposuretime_key"

    .line 1837
    const v1, 0x7f0e013a

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1836
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1837
    const v1, 0x3d090

    .line 1836
    if-le v0, v1, :cond_4

    .line 1840
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->hideLoadUI(Z)V

    .line 1821
    :goto_1
    return-void

    .line 1831
    :cond_3
    const v0, 0x7f0e018c

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V

    goto :goto_0

    .line 1838
    :cond_4
    const v0, 0x7f0e016e

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1839
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue()Ljava/lang/String;

    move-result-object v1

    .line 1838
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1
.end method

.method private updateSceneModeUI()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1903
    const-string/jumbo v0, "auto"

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1904
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 1905
    const v0, 0x7f0e0078

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1906
    const v0, 0x7f0e00c1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1907
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1908
    const v0, 0x7f0e00c2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1909
    const v0, 0x7f0e0088

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    .line 1904
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/CameraModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFlashModeByScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1915
    .local v7, "flashMode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/FlashButton;->overrideSettings(Ljava/lang/String;)V

    .line 1900
    return-void

    .end local v7    # "flashMode":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    .line 1911
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/CameraModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private waitCameraStartUpThread()V
    .locals 4

    .prologue
    .line 3211
    const-string/jumbo v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "waitCameraStartUpThread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    if-eqz v1, :cond_0

    .line 3214
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->cancel()V

    .line 3215
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->join()V

    .line 3216
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    .line 3217
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 3218
    const-string/jumbo v1, "Camera"

    const-string/jumbo v2, "waitCameraStartUpThread done"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3210
    :cond_0
    :goto_0
    return-void

    .line 3220
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private writeImage([BI)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 959
    const/4 v1, 0x0

    .line 961
    .local v1, "outstream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v4

    .line 962
    .local v4, "title":Ljava/lang/String;
    const-string/jumbo v5, ".dng"

    invoke-static {v4, v5}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 963
    .local v3, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 964
    .end local v1    # "outstream":Ljava/io/FileOutputStream;
    .local v2, "outstream":Ljava/io/FileOutputStream;
    :try_start_1
    const-string/jumbo v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "write image to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " with length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    const/4 v5, 0x0

    invoke-virtual {v2, p1, v5, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 966
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 967
    const/4 v1, 0x0

    .line 968
    .restart local v1    # "outstream":Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    .end local v2    # "outstream":Ljava/io/FileOutputStream;
    invoke-static {v5, v4, v3}, Lcom/android/camera/storage/Storage;->addDNGToDataBase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 972
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 958
    .end local v1    # "outstream":Ljava/io/FileOutputStream;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    :goto_0
    return-void

    .line 969
    .restart local v1    # "outstream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 970
    .end local v1    # "outstream":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string/jumbo v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 972
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 971
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 972
    :goto_2
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 971
    throw v5

    .restart local v2    # "outstream":Ljava/io/FileOutputStream;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "title":Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "outstream":Ljava/io/FileOutputStream;
    .local v1, "outstream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 969
    .end local v1    # "outstream":Ljava/io/FileOutputStream;
    .restart local v2    # "outstream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "outstream":Ljava/io/FileOutputStream;
    .restart local v1    # "outstream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method protected animateSwitchCamera()V
    .locals 4

    .prologue
    .line 4303
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4304
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4302
    :goto_0
    return-void

    .line 4307
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4308
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    .line 4309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    goto :goto_0
.end method

.method protected applyMultiShutParameters(Z)V
    .locals 0
    .param p1, "startshut"    # Z

    .prologue
    .line 1718
    return-void
.end method

.method public autoFocus()V
    .locals 2

    .prologue
    .line 3285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/CameraModule;->mFocusStartTime:J

    .line 3286
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_1

    .line 3284
    :cond_0
    :goto_0
    return-void

    .line 3287
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mAutoFocusCallback:Lcom/android/camera/module/CameraModule$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 3288
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 3294
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 3295
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3296
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 3297
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 3293
    :cond_0
    return-void
.end method

.method protected cancelContinuousShot()V
    .locals 1

    .prologue
    .line 2934
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelPicture()V

    .line 2933
    return-void
.end method

.method public capture()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1555
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v2, v6, :cond_1

    .line 1557
    :cond_0
    return v4

    .line 1556
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    .line 1555
    if-nez v2, :cond_0

    .line 1559
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 1561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    .line 1562
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->capture()V

    .line 1563
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J

    .line 1564
    iput-object v5, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    .line 1565
    const/4 v0, 0x0

    .line 1566
    .local v0, "loc":Landroid/location/Location;
    sget-boolean v2, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1568
    :cond_2
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {v2, v3}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    .line 1569
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setPictureOrientation()V

    .line 1570
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1571
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v1

    .line 1572
    .local v1, "pictureFormat":I
    const/16 v2, 0x100

    if-ne v2, v1, :cond_3

    .line 1573
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1575
    .end local v0    # "loc":Landroid/location/Location;
    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1578
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->prepareCapture()V

    .line 1580
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1581
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBurstCount()I

    move-result v2

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    .line 1583
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    if-nez v2, :cond_4

    .line 1584
    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 1587
    :cond_4
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mLastIsEffect:Z

    .line 1589
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraCategory:Lcom/android/camera/module/CameraModule$CameraCategory;

    invoke-virtual {v2, v0}, Lcom/android/camera/module/CameraModule$CameraCategory;->takePicture(Landroid/location/Location;)V

    .line 1590
    invoke-static {}, Lcom/android/camera/Device;->isCaptureStopFaceDetection()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1591
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 1594
    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 1595
    iput-object v5, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    .line 1596
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    .line 1597
    iput v4, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 1598
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->prepareGroupShot()V

    .line 1601
    const-string/jumbo v2, "pref_qc_camera_exposuretime_key"

    .line 1602
    const v3, 0x7f0e013a

    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1601
    invoke-virtual {p0, v2, v3}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1602
    const v3, 0x3d090

    .line 1601
    if-gt v2, v3, :cond_6

    .line 1603
    const v2, 0x7f0e016e

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1604
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue()Ljava/lang/String;

    move-result-object v3

    .line 1603
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1607
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 1605
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/camera/module/CameraModule;->hideLoadUI(Z)V

    goto :goto_0
.end method

.method protected closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3512
    const-string/jumbo v0, "Camera"

    const-string/jumbo v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 3514
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    if-eqz v0, :cond_0

    .line 3515
    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    .line 3516
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setMetaDataCallback(Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V

    .line 3518
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 3519
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 3520
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 3521
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 3522
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->addRawImageCallbackBuffer([B)V

    .line 3523
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 3524
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isGoingToCamera2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3525
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->immediateRelease()V

    .line 3529
    :goto_0
    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 3530
    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    .line 3531
    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 3532
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 3533
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3534
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onCameraReleased()V

    .line 3511
    :cond_1
    return-void

    .line 3527
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    goto :goto_0
.end method

.method protected enterMutexMode()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3162
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHHT()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3165
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    invoke-virtual {p0, v1, v5}, Lcom/android/camera/module/CameraModule;->setOrientationIndicator(IZ)V

    .line 3168
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->setZoomValue(I)V

    .line 3171
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3172
    invoke-static {}, Lcom/android/camera/Util;->clearMemoryLimit()V

    .line 3176
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e0070

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3177
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 3180
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3181
    .local v0, "override":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    .line 3182
    const-string/jumbo v2, "pref_qc_camera_iso_key"

    aput-object v2, v1, v5

    aput-object v4, v1, v3

    .line 3183
    const-string/jumbo v2, "pref_qc_camera_exposuretime_key"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    aput-object v4, v1, v2

    .line 3184
    const-string/jumbo v2, "pref_camera_face_beauty_key"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    aput-object v4, v1, v2

    .line 3185
    const-string/jumbo v2, "pref_camera_focus_mode_key"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x7

    aput-object v4, v1, v2

    .line 3186
    const-string/jumbo v2, "pref_camera_whitebalance_key"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const/16 v2, 0x9

    aput-object v4, v1, v2

    .line 3187
    const-string/jumbo v2, "pref_camera_coloreffect_key"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const/16 v2, 0xb

    aput-object v4, v1, v2

    .line 3181
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3189
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3191
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 3192
    const v1, 0x7f0e018d

    invoke-virtual {p0, v1, v5}, Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V

    .line 3194
    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3195
    :cond_5
    const-string/jumbo v1, "pref_camera_shader_coloreffect_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3196
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3198
    :cond_6
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3202
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    .line 3204
    invoke-virtual {p0, v6}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 3205
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->checkRestartPreview()V

    .line 3206
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 3207
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 3161
    return-void

    .line 3162
    .end local v0    # "override":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3163
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FlashButton;->keepSetValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3199
    .restart local v0    # "override":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    const-string/jumbo v1, "pref_camera_exposure_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3200
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected exitMutexMode()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3134
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3135
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    :cond_0
    move v0, v2

    .line 3134
    :goto_0
    if-nez v0, :cond_1

    .line 3140
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FlashButton;->restoreKeptValue()V

    .line 3142
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    .line 3143
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V

    .line 3146
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e0070

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3150
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v0, v5, :cond_6

    .line 3151
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 3155
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->checkRestartPreview()V

    .line 3156
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 3157
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 3133
    return-void

    .line 3136
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 3137
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    .line 3138
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 3139
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    if-ne v0, v5, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHHT()Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 3147
    :cond_5
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    goto :goto_1

    .line 3153
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    goto :goto_2
.end method

.method protected exitWhiteBalanceLockMode()Z
    .locals 1

    .prologue
    .line 1919
    const/4 v0, 0x0

    return v0
.end method

.method public findQRCode()V
    .locals 0

    .prologue
    .line 4406
    return-void
.end method

.method protected getBestPictureSize()Lcom/android/camera/PictureSize;
    .locals 3

    .prologue
    .line 5235
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    .line 5236
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 5237
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getMaxPictureSize()I

    move-result v2

    .line 5235
    invoke-static {v0, v1, v2}, Lcom/android/camera/PictureSizeManager;->initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V

    .line 5239
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v0

    return-object v0
.end method

.method protected getBurstCount()I
    .locals 2

    .prologue
    .line 1721
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_0

    .line 1722
    sget v0, Lcom/android/camera/module/CameraModule;->BURST_SHOOTING_COUNT:I

    return v0

    .line 1723
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1724
    const/4 v0, 0x7

    return v0

    .line 1725
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSceneHdr()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM2A:Z

    if-eqz v0, :cond_2

    .line 1726
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "num-snaps-per-shutter"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1727
    :cond_2
    const-string/jumbo v0, "pref_camera_groupshot_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1728
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShotTimes:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_4

    .line 1729
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->isMemoryRich(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShotTimes:I

    if-nez v0, :cond_4

    .line 1730
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->getGroupshotNum()I

    move-result v0

    return v0

    .line 1732
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method protected getBurstDelayTime()I
    .locals 1

    .prologue
    .line 4971
    const/4 v0, 0x0

    return v0
.end method

.method protected getCameraRotation()I
    .locals 2

    .prologue
    .line 1739
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method protected getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 4618
    const-string/jumbo v0, "pref_camera_manual_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4619
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4618
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method protected getMaxPictureSize()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1015
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    .line 1016
    .local v0, "colorEffect":I
    if-eqz v0, :cond_2

    .line 1017
    invoke-static {}, Lcom/android/camera/Device;->isSupportFullSizeEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1018
    return v2

    .line 1020
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isLowerEffectSize()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x300000

    :goto_0
    return v1

    :cond_1
    const v1, 0x895440

    goto :goto_0

    .line 1022
    :cond_2
    const-string/jumbo v1, "pref_camera_groupshot_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1023
    const v1, 0x753000

    return v1

    .line 1025
    :cond_3
    return v2
.end method

.method protected getMutexHdrMode(Ljava/lang/String;)I
    .locals 1
    .param p1, "hdr"    # Ljava/lang/String;

    .prologue
    .line 4051
    const v0, 0x7f0e01b1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4052
    invoke-static {}, Lcom/android/camera/Device;->isUsedMorphoLib()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdHdr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4053
    :cond_0
    const/4 v0, 0x1

    .line 4052
    :goto_0
    return v0

    .line 4054
    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    .line 4055
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4056
    const v0, 0x7f0e01b2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4055
    if-eqz v0, :cond_3

    .line 4057
    const/4 v0, 0x2

    return v0

    .line 4059
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method protected getRequestFlashMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isSupportSceneMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1620
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getFlashModeByScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FlashButton;->overrideValue(Ljava/lang/String;)V

    .line 1623
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isSupportedTorch()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1625
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1626
    .local v0, "flashMode":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1624
    .end local v0    # "flashMode":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "off"

    goto :goto_0
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 3
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
    .line 1924
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    invoke-static {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x7

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 1989
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/module/BaseModule;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1990
    return v9

    .line 1992
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 2294
    return v6

    .line 1994
    :sswitch_0
    const-string/jumbo v4, "pref_camera_stereo_mode_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1995
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const-string/jumbo v5, "pref_camera_flashmode_key"

    invoke-virtual {v4, v5}, Lcom/android/camera/preferences/SettingsOverrider;->removeSavedSetting(Ljava/lang/String;)V

    .line 1996
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/camera/ui/StereoButton;->switchOffStereo(Z)V

    .line 1997
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    .line 1998
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 1997
    invoke-virtual {v4, v5}, Lcom/android/camera/ui/HdrButton;->updateHdrAccordingFlash(Ljava/lang/String;)V

    .line 1999
    return v9

    .line 2001
    :cond_1
    const-string/jumbo v4, "pref_camera_groupshot_mode_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2002
    const-string/jumbo v4, "off"

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2006
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2015
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 2016
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    .line 2017
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 2016
    invoke-virtual {v4, v5}, Lcom/android/camera/ui/HdrButton;->updateHdrAccordingFlash(Ljava/lang/String;)V

    .line 2019
    invoke-virtual {p0, v9}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 2020
    const-string/jumbo v4, "pref_camera_flashmode_key"

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->updateASD(Ljava/lang/String;)V

    .line 2021
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    .line 2022
    return v9

    .line 2003
    :cond_4
    const-string/jumbo v4, "torch"

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2004
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/camera/ui/V6ModeExitView;->clearExitButtonClickListener(Z)V

    goto :goto_0

    .line 2007
    :cond_5
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2008
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isSupportedTorch()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2009
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ModeExitView;->isExitButtonShown()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2010
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/camera/ui/V6ModeExitView;->clearExitButtonClickListener(Z)V

    goto :goto_1

    .line 2011
    :cond_6
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHHT()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2012
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto/16 :goto_1

    .line 2026
    :sswitch_1
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->onCameraPickerClicked(I)Z

    move-result v4

    return v4

    .line 2029
    .restart local p3    # "extra1":Ljava/lang/Object;
    :sswitch_2
    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->onThumbnailClicked(Landroid/view/View;)V

    .line 2030
    return v9

    .line 2033
    :sswitch_3
    if-nez p1, :cond_8

    .line 2034
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    .line 2035
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCountDownMode()Z

    move-result v4

    if-nez v4, :cond_7

    .line 2036
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v4

    const-string/jumbo v5, "capture_times_shutter"

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 2052
    .end local p3    # "extra1":Ljava/lang/Object;
    :cond_7
    :goto_2
    return v9

    .line 2038
    .restart local p3    # "extra1":Ljava/lang/Object;
    :cond_8
    if-ne p1, v9, :cond_9

    .line 2039
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonLongClick()Z

    goto :goto_2

    .line 2040
    :cond_9
    if-ne p1, v7, :cond_a

    .line 2041
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v3, p3

    .line 2042
    check-cast v3, Landroid/graphics/Point;

    .local v3, "start":Landroid/graphics/Point;
    move-object v0, p4

    .line 2043
    check-cast v0, Landroid/graphics/Point;

    .line 2044
    .local v0, "center":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getSmartShutterButton()Lcom/android/camera/ui/V6SmartShutterButton;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    iget v7, v0, Landroid/graphics/Point;->x:I

    iget v8, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/camera/ui/V6SmartShutterButton;->flyin(IIII)V

    goto :goto_2

    .line 2046
    .end local v0    # "center":Landroid/graphics/Point;
    .end local v3    # "start":Landroid/graphics/Point;
    :cond_a
    const/4 v4, 0x3

    if-ne p1, v4, :cond_7

    move-object v4, p3

    .line 2047
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4, v7}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    .line 2048
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v4

    if-eqz v4, :cond_7

    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2049
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v4

    const-string/jumbo v5, "capture_times_shutter"

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_2

    .line 2055
    .restart local p3    # "extra1":Ljava/lang/Object;
    :sswitch_4
    new-instance v2, Lcom/android/camera/module/CameraModule$4;

    invoke-direct {v2, p0, p3}, Lcom/android/camera/module/CameraModule$4;-><init>(Lcom/android/camera/module/CameraModule;Ljava/lang/Object;)V

    .line 2062
    .local v2, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v6}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    .line 2063
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ShutterButton;->onPause()V

    .line 2064
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 2065
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/ui/BottomControlLowerPanel;->animationSwitchToVideo(Ljava/lang/Runnable;)V

    .line 2066
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->switchModule()V

    .line 2067
    return v9

    .line 2071
    .end local v2    # "r":Ljava/lang/Runnable;
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    .line 2072
    return v9

    .line 2076
    :sswitch_6
    if-nez p1, :cond_b

    .line 2077
    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->onReviewDoneClicked(Landroid/view/View;)V

    .line 2081
    :goto_3
    return v9

    .line 2079
    :cond_b
    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->onReviewCancelClicked(Landroid/view/View;)V

    goto :goto_3

    .line 2084
    :sswitch_7
    if-nez p1, :cond_d

    .line 2085
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v4, :cond_c

    move-object v1, p3

    .line 2086
    check-cast v1, Landroid/graphics/Point;

    .line 2087
    .local v1, "p":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 2092
    .end local v1    # "p":Landroid/graphics/Point;
    .end local p3    # "extra1":Ljava/lang/Object;
    .end local p4    # "extra2":Ljava/lang/Object;
    :cond_c
    :goto_4
    return v9

    .line 2089
    .restart local p3    # "extra1":Ljava/lang/Object;
    .restart local p4    # "extra2":Ljava/lang/Object;
    :cond_d
    if-ne p1, v9, :cond_c

    .line 2090
    check-cast p3, Landroid/view/View;

    .end local p3    # "extra1":Ljava/lang/Object;
    check-cast p4, Landroid/graphics/Rect;

    .end local p4    # "extra2":Ljava/lang/Object;
    invoke-direct {p0, p3, p4}, Lcom/android/camera/module/CameraModule;->onFrameLayoutChange(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_4

    .line 2095
    .restart local p3    # "extra1":Ljava/lang/Object;
    .restart local p4    # "extra2":Ljava/lang/Object;
    :sswitch_8
    const-string/jumbo v4, "pref_camera_stereo_mode_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2096
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const-string/jumbo v5, "pref_camera_hdr_key"

    invoke-virtual {v4, v5}, Lcom/android/camera/preferences/SettingsOverrider;->removeSavedSetting(Ljava/lang/String;)V

    .line 2097
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/camera/ui/StereoButton;->switchOffStereo(Z)V

    .line 2098
    return v9

    .line 2101
    :cond_e
    invoke-virtual {p0, v9}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 2102
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v4

    .line 2103
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 2102
    invoke-virtual {v4, v5}, Lcom/android/camera/ui/FlashButton;->updateFlashModeAccordingHdr(Ljava/lang/String;)V

    .line 2104
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->updateHDRPreference()V

    .line 2105
    return v9

    .line 2109
    :sswitch_9
    const-string/jumbo v4, "pref_camera_stereo_mode_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2110
    const-string/jumbo v4, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2111
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const-string/jumbo v5, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v4, v5}, Lcom/android/camera/preferences/SettingsOverrider;->removeSavedSetting(Ljava/lang/String;)V

    .line 2114
    :cond_f
    const-string/jumbo v4, "pref_camera_panoramamode_key"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2115
    const-string/jumbo v4, "pref_camera_panoramamode_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    .line 2114
    if-eqz v4, :cond_10

    .line 2116
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/StereoButton;->switchOffStereo(Z)V

    .line 2117
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->closeCamera()V

    .line 2118
    invoke-virtual {p0, v7}, Lcom/android/camera/module/CameraModule;->switchToOtherMode(I)V

    .line 2122
    :goto_5
    return v9

    .line 2120
    :cond_10
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/camera/ui/StereoButton;->switchOffStereo(Z)V

    goto :goto_5

    .line 2126
    :cond_11
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/HdrButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_12

    .line 2128
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getPeakButton()Lcom/android/camera/ui/PeakButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/PeakButton;->updateVisible()V

    .line 2129
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/HdrButton;->updateVisible()V

    .line 2131
    :cond_12
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2132
    invoke-virtual {p0, v9}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 2135
    :cond_13
    if-ne p1, v8, :cond_16

    .line 2136
    check-cast p3, Ljava/lang/String;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    .line 2150
    :cond_14
    :goto_6
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/HdrButton;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_15

    .line 2152
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/HdrButton;->updateVisible()V

    .line 2153
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getPeakButton()Lcom/android/camera/ui/PeakButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/PeakButton;->updateVisible()V

    .line 2156
    :cond_15
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/StereoButton;->updateVisible()V

    .line 2157
    return v9

    .line 2146
    .restart local p3    # "extra1":Ljava/lang/Object;
    :cond_16
    const/4 v4, 0x6

    if-ne p1, v4, :cond_14

    .line 2147
    invoke-direct {p0, p3}, Lcom/android/camera/module/CameraModule;->onModeSelected(Ljava/lang/Object;)V

    goto :goto_6

    .line 2259
    :sswitch_a
    if-ne p1, v8, :cond_17

    .line 2260
    check-cast p3, Ljava/lang/String;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    .line 2264
    :goto_7
    return v9

    .line 2262
    .restart local p3    # "extra1":Ljava/lang/Object;
    :cond_17
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onStereoModeChanged()V

    goto :goto_7

    .line 2267
    :sswitch_b
    iget v4, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    if-eqz v4, :cond_18

    .line 2268
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2269
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xc8

    const/16 v5, 0x20

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2271
    :cond_18
    return v9

    .line 2274
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->openSettingActivity()V

    .line 2275
    return v9

    .line 2278
    :sswitch_d
    if-ne p1, v7, :cond_19

    .line 2279
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    .line 2281
    :cond_19
    return v9

    .line 2284
    :sswitch_e
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    .line 2285
    return v9

    .line 2288
    :sswitch_f
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 2289
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    .line 2290
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 2291
    return v9

    .line 1992
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09000c -> :sswitch_b
        0x7f09000e -> :sswitch_2
        0x7f090012 -> :sswitch_3
        0x7f090015 -> :sswitch_4
        0x7f09001d -> :sswitch_f
        0x7f09001e -> :sswitch_1
        0x7f090023 -> :sswitch_6
        0x7f090066 -> :sswitch_0
        0x7f090067 -> :sswitch_8
        0x7f090068 -> :sswitch_5
        0x7f09007c -> :sswitch_a
        0x7f090084 -> :sswitch_7
        0x7f090088 -> :sswitch_d
        0x7f09008e -> :sswitch_9
        0x7f090090 -> :sswitch_c
        0x7f09009b -> :sswitch_e
    .end sparse-switch
.end method

.method protected handleMultiSnapDone()V
    .locals 3

    .prologue
    .line 2907
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 2908
    return-void

    .line 2910
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->restoreStatusAfterBurst()V

    .line 2911
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 2912
    .local v0, "burstNum":I
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/module/CameraModule$5;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/module/CameraModule$5;-><init>(Lcom/android/camera/module/CameraModule;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2930
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->updateHDRPreference()V

    .line 2906
    return-void
.end method

.method protected initializeAfterCameraOpen()V
    .locals 2

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setPreviewFrameLayoutAspectRatio()V

    .line 724
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeZoom()V

    .line 725
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeExposureCompensation()V

    .line 726
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->showTapToFocusToastIfNeeded()V

    .line 727
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/zxing/QRCodeManager;->setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V

    .line 718
    return-void
.end method

.method public isCameraEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4936
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCaptureIntent()Z
    .locals 1

    .prologue
    .line 5253
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    return v0
.end method

.method protected isDefaultManualExposure()Z
    .locals 2

    .prologue
    .line 4611
    const-string/jumbo v0, "pref_qc_camera_iso_key"

    .line 4612
    const v1, 0x7f0e00c2

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4611
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/CameraModule;->isDefaultPreference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4613
    const-string/jumbo v0, "pref_qc_camera_exposuretime_key"

    .line 4614
    const v1, 0x7f0e013a

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4613
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/CameraModule;->isDefaultPreference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 4611
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isDefaultPreference(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 4624
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isDetectedHHT()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4782
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdNight()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdMotion()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4783
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule$MetaDataManager;->-get0(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v2

    if-eq v3, v2, :cond_1

    .line 4784
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule$MetaDataManager;->-get1(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v2

    if-ne v3, v2, :cond_2

    .line 4783
    :cond_1
    :goto_0
    return v0

    .line 4785
    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule$MetaDataManager;->-get0(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v2

    if-eq v4, v2, :cond_1

    .line 4786
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule$MetaDataManager;->-get1(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v2

    if-eq v4, v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 4788
    :cond_3
    return v1
.end method

.method protected isFaceBeautyMode()Z
    .locals 1

    .prologue
    .line 1644
    const/4 v0, 0x0

    return v0
.end method

.method protected isFrontMirror()Z
    .locals 2

    .prologue
    .line 4748
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 4750
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getFrontMirror(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 4751
    .local v0, "frontMirror":Ljava/lang/String;
    const v1, 0x7f0e0196

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4752
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->faceDetected()Z

    move-result v1

    return v1

    .line 4754
    :cond_1
    const v1, 0x7f0e0197

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isKeptBitmapTexture()Z
    .locals 1

    .prologue
    .line 4759
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mKeepBitmapTexture:Z

    return v0
.end method

.method protected isLongShotMode()Z
    .locals 1

    .prologue
    .line 1640
    const/4 v0, 0x0

    return v0
.end method

.method public isMeteringAreaOnly()Z
    .locals 2

    .prologue
    .line 4587
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 4588
    .local v0, "focusMode":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    if-nez v1, :cond_1

    .line 4589
    :cond_0
    const-string/jumbo v1, "edof"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4588
    if-nez v1, :cond_1

    .line 4590
    const-string/jumbo v1, "fixed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4588
    if-nez v1, :cond_1

    .line 4591
    const-string/jumbo v1, "infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4588
    if-nez v1, :cond_1

    .line 4592
    const-string/jumbo v1, "manual"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4588
    if-nez v1, :cond_1

    .line 4593
    const-string/jumbo v1, "lock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4588
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isNeedMute()Z
    .locals 1

    .prologue
    .line 4778
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->isNeedMute()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAudioCaptureOpen()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isSceneMotion()Z
    .locals 2

    .prologue
    .line 5001
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->-get0(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowCaptureButton()Z
    .locals 1

    .prologue
    .line 4598
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isSupportSceneMode()Z
    .locals 1

    .prologue
    .line 4552
    const/4 v0, 0x0

    return v0
.end method

.method protected isZeroShotMode()Z
    .locals 1

    .prologue
    .line 1636
    const/4 v0, 0x0

    return v0
.end method

.method protected isZoomEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4794
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4795
    const-string/jumbo v1, "pref_camera_stereo_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4794
    :cond_0
    :goto_0
    return v0

    .line 4795
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public multiCapture()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1651
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1653
    :cond_0
    return v7

    .line 1652
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    .line 1651
    if-nez v2, :cond_0

    .line 1652
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v2

    .line 1651
    if-nez v2, :cond_0

    .line 1656
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v2}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1657
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const v3, 0x7f0e0124

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1659
    return v7

    .line 1662
    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1663
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1664
    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not enough space or storage not ready. remaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1665
    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v4

    .line 1664
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    return v7

    .line 1668
    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/storage/ImageSaver;->shouldStopShot()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1669
    const-string/jumbo v2, "Camera"

    const-string/jumbo v3, "ImageSaver is full, wait for a moment!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v2

    .line 1671
    const v3, 0x7f0e0224

    .line 1670
    invoke-virtual {v2, v3, v7}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    .line 1672
    return v7

    .line 1675
    :cond_4
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v1

    .line 1676
    .local v1, "pictureFormat":I
    const/4 v0, 0x0

    .line 1677
    .local v0, "loc":Landroid/location/Location;
    const/16 v2, 0x100

    if-ne v2, v1, :cond_5

    .line 1678
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1680
    .end local v0    # "loc":Landroid/location/Location;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    .line 1681
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->capture()V

    .line 1682
    sget-boolean v2, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1683
    :cond_6
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1685
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {v2, v3}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    .line 1686
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1689
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->prepareMultiCapture()V

    .line 1691
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1692
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->saveStatusBeforeBurst()V

    .line 1694
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBurstCount()I

    move-result v2

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    .line 1696
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 1697
    iput v9, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 1702
    :goto_0
    iput-boolean v7, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopRequest:Z

    .line 1703
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    .line 1705
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v3, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;

    invoke-direct {v3, p0, v8}, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;)V

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

    .line 1706
    new-instance v5, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    .line 1705
    invoke-virtual {v2, v3, v4, v8, v5}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1707
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string/jumbo v3, "burst_times"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1709
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1710
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    .line 1711
    return v9

    .line 1699
    :cond_7
    iput v7, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 1700
    iput-object v8, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 1

    .prologue
    .line 2794
    const/4 v0, 0x0

    return v0
.end method

.method protected needSetupPreview()Z
    .locals 1

    .prologue
    .line 1011
    const/4 v0, 0x1

    return v0
.end method

.method protected needSwitchZeroShotMode()Z
    .locals 1

    .prologue
    .line 2790
    const/4 v0, 0x0

    return v0
.end method

.method public notifyError()V
    .locals 1

    .prologue
    .line 5277
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->notifyError()V

    .line 5278
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 5276
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 3255
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/BaseModule;->onActivityResult(IILandroid/content/Intent;)V

    .line 3256
    packed-switch p1, :pswitch_data_0

    .line 3254
    :goto_0
    return-void

    .line 3258
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3259
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 3260
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3261
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 3262
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3265
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3, p2, v1}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 3266
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->finish()V

    .line 3267
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const-string/jumbo v4, "crop-temp"

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 3268
    .local v2, "path":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 3256
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3351
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 3352
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    if-eqz v1, :cond_0

    .line 3353
    return v3

    .line 3356
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isSelectingCapturedImage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3358
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->onReviewCancelClicked(Landroid/view/View;)V

    .line 3359
    return v2

    .line 3366
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v1, v4, :cond_2

    .line 3367
    return v2

    .line 3370
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/zxing/QRCodeManager;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3371
    return v2

    .line 3374
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3375
    return v2

    .line 3378
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 3380
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->onBack()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3381
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v1, v4, :cond_6

    .line 3382
    :cond_5
    return v2

    .line 3385
    :cond_6
    const-string/jumbo v1, "pref_camera_stereo_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3386
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v1

    invoke-virtual {v1, v3, v2, v2}, Lcom/android/camera/ui/StereoButton;->setStereoValue(ZZZ)V

    .line 3387
    return v2

    .line 3391
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3392
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPage;->resetSettings()Z

    move-result v0

    .line 3393
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v1}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3394
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v1}, Lcom/android/camera/AudioCaptureManager;->close()V

    .line 3396
    :cond_8
    if-eqz v0, :cond_9

    return v2

    .line 3400
    .end local v0    # "result":Z
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6PreviewPage;->isPopupShown()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3401
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1, v5, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 3402
    return v2

    .line 3405
    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->isShowingFrontCameraFirstUseHint()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3406
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->dismissFrontCameraFirstUseHint()V

    .line 3407
    return v2

    .line 3410
    :cond_b
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v1}, Lcom/android/camera/AudioCaptureManager;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3411
    return v2

    .line 3413
    :cond_c
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result v1

    return v1
.end method

.method public onCameraMetaData([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 4977
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4978
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4975
    :cond_0
    :goto_0
    return-void

    .line 4979
    :cond_1
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_0

    .line 4980
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4981
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setData([B)V

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)Z
    .locals 5
    .param p1, "cameraId"    # I

    .prologue
    const/4 v4, 0x1

    .line 4151
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 4152
    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    .line 4151
    if-nez v1, :cond_0

    .line 4154
    invoke-static {}, Lcom/android/camera/Device;->isMonoSupported()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isRAWSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4155
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    .line 4154
    if-eqz v1, :cond_4

    .line 4156
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    .line 4157
    .local v0, "preferences":Lcom/android/camera/preferences/CameraSettingPreferences;
    const-string/jumbo v1, "pref_camera_mono_mode_key"

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Lcom/android/camera/preferences/CameraSettingPreferences;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4158
    const-string/jumbo v1, "pref_camera_raw_mode_key"

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Lcom/android/camera/preferences/CameraSettingPreferences;Ljava/lang/String;)Z

    move-result v1

    .line 4157
    if-eqz v1, :cond_4

    .line 4159
    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1, p1}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 4160
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->switchToOtherMode(I)V

    .line 4161
    return v4

    .line 4165
    .end local v0    # "preferences":Lcom/android/camera/preferences/CameraSettingPreferences;
    :cond_4
    const-string/jumbo v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Start to copy texture. cameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4166
    const-string/jumbo v3, " "

    .line 4165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4166
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    .line 4165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4167
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v1

    if-nez v1, :cond_5

    .line 4170
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->animateSwitchCopyTexture()V

    .line 4175
    :goto_0
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    .line 4177
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 4178
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    .line 4179
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    .line 4180
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 4181
    return v4

    .line 4172
    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 4173
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onCameraStartPreview()V
    .locals 0

    .prologue
    .line 5274
    return-void
.end method

.method public onCreate(Lcom/android/camera/Camera;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/camera/Camera;

    .prologue
    const/4 v1, 0x0

    .line 1759
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onCreate(Lcom/android/camera/Camera;)V

    .line 1760
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 1761
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 1762
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isRestoring()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1763
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraAppImpl;->resetRestoreFlag()V

    .line 1767
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getPreferredCameraId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    .line 1768
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->changeConflictPreference()V

    .line 1769
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->changeRequestOrientation()V

    .line 1772
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1773
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1776
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    .line 1777
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getPreferencesLocalId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 1779
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->createContentView()V

    .line 1780
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v2, v0, v1}, Lcom/android/camera/Camera;->createCameraScreenNail(ZZ)V

    .line 1783
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1784
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->resetFirstFrameArrived()V

    .line 1786
    :cond_1
    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    .line 1787
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onCreate()V

    .line 1788
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->useProperView()V

    .line 1789
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->prepareUIByPreviewSize()V

    .line 1790
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {v0, v2}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 1794
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p0}, Lcom/android/zxing/QRCodeManager;->onCreate(Landroid/app/Activity;Landroid/os/Looper;Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;)V

    .line 1799
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1801
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_2

    .line 1802
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setupCaptureParams()V

    .line 1804
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mQuickCapture:Z

    .line 1806
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeMutexMode()V

    .line 1808
    new-instance v0, Lcom/android/camera/AudioCaptureManager;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/AudioCaptureManager;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    .line 1810
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    .line 1758
    return-void

    .line 1765
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetCameraSettingsIfNeed()V

    goto/16 :goto_0

    .line 1774
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startCameraThread()V

    goto/16 :goto_1

    .line 1780
    :cond_5
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 3961
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    .line 3962
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->hideToast()V

    .line 3965
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    .line 3960
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 4
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x0

    .line 845
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 846
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 847
    return-void

    .line 849
    :cond_1
    invoke-static {p1}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->convertCameraHardwareFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object v0

    .line 852
    .local v0, "cameraFaces":[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v1

    if-eqz v1, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    .line 853
    aget-object v1, v0, v3

    iget v1, v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->faceType:I

    const v2, 0xface

    if-ne v1, v2, :cond_3

    .line 854
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    if-eqz v1, :cond_2

    .line 855
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ObjectView;->setObject(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    .line 844
    :cond_2
    :goto_0
    return-void

    .line 858
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/FaceView;->setDetectedFaces([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    .line 859
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->needStopFaceinFocusing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 861
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 862
    return-void

    .line 865
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 869
    const-string/jumbo v1, "continuous-picture"

    .line 870
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    .line 869
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 871
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->resetFocusIndicator()V

    goto :goto_0
.end method

.method public onGestureTrack(Landroid/graphics/RectF;Z)Z
    .locals 1
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "up"    # Z

    .prologue
    .line 4604
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->couldEnableObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4605
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->initializeObjectTrack(Landroid/graphics/RectF;Z)Z

    move-result v0

    return v0

    .line 4607
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3432
    sparse-switch p1, :sswitch_data_0

    .line 3463
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 3434
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3435
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    .line 3437
    :cond_1
    return v1

    .line 3440
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3441
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    .line 3442
    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3443
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v2, "capture_times_finger"

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 3446
    :cond_2
    return v1

    .line 3451
    :sswitch_2
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3455
    const/16 v2, 0x18

    if-eq p1, v2, :cond_3

    const/16 v2, 0x58

    if-ne p1, v2, :cond_4

    :cond_3
    move v0, v1

    .line 3456
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 3455
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/CameraModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3457
    return v1

    .line 3432
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x50 -> :sswitch_0
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3468
    sparse-switch p1, :sswitch_data_0

    .line 3485
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 3473
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3477
    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x58

    if-ne p1, v0, :cond_2

    :cond_1
    move v0, v1

    .line 3478
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 3477
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/camera/module/CameraModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3479
    return v1

    :cond_2
    move v0, v2

    .line 3477
    goto :goto_0

    .line 3468
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongPress(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2662
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->isInTapableRect(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2663
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->onSingleTapUp(II)V

    .line 2664
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2665
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "capture_times_long_press"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 2666
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewFrame;->performHapticFeedback(I)Z

    .line 2661
    return-void
.end method

.method public onNewIntent()V
    .locals 2

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getPreferredCameraId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    .line 1816
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->changeConflictPreference()V

    .line 1817
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    .line 1818
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getPreferencesLocalId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 1814
    return-void
.end method

.method public onObjectStable()V
    .locals 3

    .prologue
    .line 4635
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4634
    :cond_0
    :goto_0
    return-void

    .line 4636
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    .line 4635
    if-eqz v0, :cond_0

    .line 4637
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->requestAutoFocus()V

    .line 4638
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v1, "pref_capture_when_stable_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4639
    const-string/jumbo v0, "Camera"

    const-string/jumbo v1, "Object is Stable, call onShutterButtonClick to capture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4640
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    .line 4641
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "capture_times_t2t"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 2460
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mDeviceRotation:F

    .line 2461
    const-string/jumbo v0, "pref_camera_gradienter_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2462
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->setOrientation(I)V

    .line 2463
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->hideFrontCameraFirstUseHint()V

    .line 2459
    :cond_0
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 3016
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    .line 3017
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseBeforeSuper()V

    .line 3019
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3020
    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->updateExitButton(Z)V

    .line 3023
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/camera/module/CameraModule;->hideLoadUI(Z)V

    .line 3026
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v2, :cond_3

    .line 3027
    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 3028
    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 3030
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3031
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->cancelContinuousShot()V

    .line 3033
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    .line 3036
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    .line 3037
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v2}, Lcom/android/camera/AudioCaptureManager;->onPause()V

    .line 3038
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->resetGradienter()V

    .line 3039
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetFaceBeautyMode()V

    .line 3040
    invoke-direct {p0, v3}, Lcom/android/camera/module/CameraModule;->updateLyingSensorState(Z)V

    .line 3041
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->updateStereoSettings(Z)V

    .line 3044
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->waitCameraStartUpThread()V

    .line 3048
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v2, :cond_4

    .line 3049
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 3052
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    .line 3054
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isGotoGallery()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v2

    :goto_0
    if-nez v2, :cond_d

    .line 3055
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->releaseResources()V

    .line 3060
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->onPause()V

    .line 3061
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isActivityPaused()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3062
    const-string/jumbo v2, "pref_camera_stereo_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3067
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    if-eqz v2, :cond_6

    .line 3068
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-virtual {v2, v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->setImageSaver(Lcom/android/camera/storage/ImageSaver;)V

    .line 3069
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-virtual {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->release()V

    .line 3070
    iput-object v4, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 3073
    :cond_6
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    if-eqz v2, :cond_7

    .line 3074
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3075
    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    .line 3078
    :cond_7
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v2, :cond_8

    .line 3079
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 3083
    :cond_8
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3084
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3085
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3086
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3087
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 3088
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3089
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x16

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3090
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3091
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3092
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3093
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x18

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3094
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x19

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3095
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1d

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3096
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1e

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3097
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1f

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3098
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3099
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x22

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3100
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x25

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3101
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x24

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3102
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x28

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3103
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3104
    iput v3, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    .line 3105
    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mIsRecreateCameraScreenNail:Z

    .line 3106
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 3107
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 3108
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->resetScreenOn()V

    .line 3109
    invoke-virtual {p0, v3, v5}, Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V

    .line 3112
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/zxing/QRCodeManager;->onPause()V

    .line 3113
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    .line 3114
    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    .line 3115
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mHasPendingSwitching:Z

    if-eqz v2, :cond_a

    .line 3117
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewFrame;->getHeight()I

    move-result v1

    .line 3118
    .local v1, "w":I
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v0

    .line 3119
    .local v0, "h":I
    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 3120
    invoke-static {v1, v0}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    .line 3122
    :cond_9
    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mHasPendingSwitching:Z

    .line 3126
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_a
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_b

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ne v2, v6, :cond_b

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    if-lez v2, :cond_b

    .line 3127
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ge v2, v3, :cond_b

    .line 3128
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/storage/Storage;->deleteImage(Ljava/lang/String;)V

    .line 3015
    :cond_b
    return-void

    :cond_c
    move v2, v3

    .line 3054
    goto/16 :goto_0

    .line 3057
    :cond_d
    iput-boolean v5, p0, Lcom/android/camera/module/CameraModule;->mWaitForRelease:Z

    .line 3058
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    goto/16 :goto_1

    .line 3064
    :cond_e
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    goto/16 :goto_2
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 4297
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->animateSwitchCamera()V

    .line 4298
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4296
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2956
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeAfterSuper()V

    .line 2957
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mOpenCameraFail:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDisabled:Z

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2958
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2959
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mKeepBitmapTexture:Z

    .line 2960
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseBitmapIfNeeded()V

    .line 2961
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onResume()V

    .line 2963
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    .line 2964
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->updateStereoSettings(Z)V

    .line 2966
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    if-nez v0, :cond_9

    .line 2967
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_9

    .line 2969
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isKeyguardResumeDone()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2970
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startCameraThread()V

    .line 2972
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    if-eq v0, v3, :cond_4

    .line 2973
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 2974
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2984
    :cond_4
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mWaitForRelease:Z

    .line 2986
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_5

    .line 2987
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    .line 2992
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_a

    .line 2993
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2997
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->keepScreenOnAwhile()V

    .line 2999
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 3000
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 3001
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 3002
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 3003
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 3004
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->onResume()V

    .line 2955
    return-void

    .line 2957
    :cond_6
    return-void

    .line 2975
    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;I)V

    goto :goto_0

    .line 2979
    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2981
    :cond_9
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mWaitForRelease:Z

    if-eqz v0, :cond_4

    .line 2982
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->resumePreview()V

    goto :goto_0

    .line 2995
    :cond_a
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeSecondTime()V

    goto :goto_1
.end method

.method public onResumeBeforeSuper()V
    .locals 0

    .prologue
    .line 2951
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeBeforeSuper()V

    .line 2950
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2544
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mKeepBitmapTexture:Z

    .line 2545
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isSelectingCapturedImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2546
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->previewBecomeVisible()V

    .line 2547
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 2549
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->hidePostCaptureAlert()V

    .line 2543
    :goto_0
    return-void

    .line 2552
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 2553
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    .line 2560
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->doAttach()V

    .line 2559
    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2449
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onSettingValueChanged(Ljava/lang/String;)V

    .line 2450
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    .line 2451
    :cond_0
    const-string/jumbo v0, "pref_delay_capture_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2452
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->handleDelayShutter()V

    .line 2448
    :goto_0
    return-void

    .line 2454
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged()V
    .locals 2

    .prologue
    .line 4132
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v1, :cond_0

    return-void

    .line 4133
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 4134
    .local v0, "recordLocation":Z
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 4135
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->setCameraParametersWhenIdle(I)V

    .line 4131
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2727
    const-string/jumbo v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onShutterButtonClick "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    .line 2729
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isShutterButtonClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2730
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v1, :cond_1

    .line 2725
    :cond_0
    :goto_0
    return-void

    .line 2731
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2732
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 2733
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 2734
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsCountDown:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCountDownMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2735
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCountDownTimes()I

    move-result v0

    .line 2736
    .local v0, "countDownTime":I
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/CameraModule;->sendDelayedCaptureMessage(II)V

    .line 2737
    if-le v0, v5, :cond_2

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    .line 2738
    :cond_2
    iput-boolean v6, p0, Lcom/android/camera/module/CameraModule;->mIsCountDown:Z

    .line 2739
    return-void

    .line 2741
    .end local v0    # "countDownTime":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 2743
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    .line 2744
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 2746
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2747
    const-string/jumbo v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not enough space or storage not ready. remaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2748
    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v4

    .line 2747
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    return-void

    .line 2752
    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/storage/ImageSaver;->shouldStopShot()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2753
    const-string/jumbo v1, "Camera"

    const-string/jumbo v2, "ImageSaver is full, wait for a moment!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v1

    .line 2755
    const v2, 0x7f0e0224

    .line 2754
    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    .line 2756
    return-void

    .line 2758
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ObjectView;->isTrackFailed()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2759
    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 2761
    :cond_6
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v1, v5, :cond_7

    .line 2762
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->needAutoFocusBeforeCapture()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    .line 2766
    :cond_7
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v1, v5, :cond_a

    .line 2767
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    if-eqz v1, :cond_9

    .line 2772
    :cond_8
    :goto_1
    return-void

    .line 2768
    :cond_9
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    .line 2767
    if-eqz v1, :cond_8

    .line 2769
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2770
    iput-boolean v6, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    goto :goto_1

    .line 2774
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/CameraModule;->mLastShutterButtonClickTime:J

    .line 2775
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    .line 2776
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    .line 2777
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/FocusManager;->prepareCapture(ZI)V

    .line 2778
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->doSnap()V

    .line 2779
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2780
    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 3
    .param p1, "pressed"    # Z
    .param p2, "fromWhat"    # I

    .prologue
    const/16 v2, 0xc

    const/4 v1, 0x0

    .line 2670
    if-nez p1, :cond_6

    .line 2671
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    if-eqz v0, :cond_0

    .line 2672
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    .line 2673
    return-void

    .line 2675
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2676
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2677
    return-void

    .line 2679
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->cancelMultiSnapPending()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2680
    return-void

    .line 2682
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_3

    .line 2683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopRequest:Z

    .line 2684
    return-void

    .line 2686
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPendingCapture:Z

    if-eqz v0, :cond_7

    .line 2687
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPendingCapture:Z

    .line 2688
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButton;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPressDownCapture()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2691
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetFocusStateIfNeeded()V

    .line 2692
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->cancelAutoFocus()V

    .line 2694
    :goto_0
    return-void

    .line 2689
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    goto :goto_0

    .line 2697
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2698
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->doMultiSnap(Z)V

    .line 2702
    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 2705
    :cond_8
    return-void

    .line 2703
    :cond_9
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_8

    .line 2704
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    .line 2702
    if-nez v0, :cond_8

    .line 2705
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v0

    .line 2702
    if-nez v0, :cond_8

    .line 2708
    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2710
    :cond_a
    if-eqz p1, :cond_d

    .line 2711
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->needSwitchZeroShotMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2712
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 2714
    :cond_b
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterDown()V

    .line 2669
    :goto_1
    return-void

    .line 2708
    :cond_c
    return-void

    .line 2716
    :cond_d
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterUp()V

    goto :goto_1
.end method

.method public onShutterButtonLongClick()Z
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 2798
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_1

    :cond_0
    return v4

    .line 2799
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isBurstShootingEnable(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2800
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2811
    :cond_2
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 2816
    return v2

    .line 2801
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_2

    .line 2802
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2803
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v0

    .line 2799
    if-eqz v0, :cond_2

    .line 2803
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_2

    .line 2804
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2805
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2806
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    if-nez v0, :cond_2

    .line 2807
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2808
    invoke-static {}, Lcom/android/camera/Device;->isSupportedFastCapture()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2809
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    .line 2838
    :cond_4
    :goto_0
    return v4

    .line 2818
    :cond_5
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mPendingCapture:Z

    .line 2819
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mLongPressedAutoFocus:Z

    .line 2820
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 2821
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->requestAutoFocus()V

    .line 2822
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 2823
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 2824
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 2825
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    goto :goto_0
.end method

.method public onSingleTapUp(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3304
    const-string/jumbo v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSingleTapUp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3305
    const-string/jumbo v2, " "

    .line 3304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3305
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 3304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3305
    const-string/jumbo v2, " "

    .line 3304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3305
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    .line 3304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3306
    const-string/jumbo v2, " "

    .line 3304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3306
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    .line 3304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3306
    const-string/jumbo v2, " "

    .line 3304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3306
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 3304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3307
    const-string/jumbo v2, " "

    .line 3304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectButton()Lcom/android/camera/ui/EffectButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    .line 3309
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    .line 3310
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    .line 3311
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    .line 3312
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 3319
    :cond_0
    return-void

    .line 3312
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 3313
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    .line 3312
    if-nez v0, :cond_0

    .line 3314
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->isInTapableRect(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3315
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3316
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 3317
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 3318
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 3312
    if-nez v0, :cond_0

    .line 3321
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 3324
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_3

    .line 3327
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isSelectingCapturedImage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3328
    return-void

    .line 3324
    :cond_3
    return-void

    .line 3330
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 3333
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3334
    return-void

    .line 3336
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    if-eqz v0, :cond_6

    .line 3337
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 3339
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 3340
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->showObjectTrackToastIfNeeded()V

    .line 3341
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManager;->onSingleTapUp(II)V

    .line 3344
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_7

    .line 3345
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 3303
    :cond_7
    return-void
.end method

.method protected onStereoModeChanged()V
    .locals 0

    .prologue
    .line 2297
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2523
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    .line 2524
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNeedResetGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2525
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->releaseResources()V

    .line 2527
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_1

    .line 2528
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 2529
    iput-object v1, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 2522
    :cond_1
    return-void
.end method

.method public onSwitchAnimationDone()V
    .locals 2

    .prologue
    .line 4342
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4341
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    .line 2535
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 2536
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2537
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->gotoGallery()V

    .line 2534
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 4347
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onUserInteraction()V

    .line 4348
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->keepScreenOnAwhile()V

    .line 4346
    return-void
.end method

.method protected openSettingActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4035
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4036
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const-class v2, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4037
    const-string/jumbo v1, "from_where"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4038
    const-string/jumbo v1, "IsCaptureIntent"

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4039
    const-string/jumbo v1, ":miui:starting_window_label"

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4041
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4042
    const-string/jumbo v1, "StartActivityWhenLocked"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4044
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 4045
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setJumpFlag(I)V

    .line 4047
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "pref_settings"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 4034
    return-void
.end method

.method protected performVolumeKeyClicked(IZ)V
    .locals 3
    .param p1, "repeatCount"    # I
    .param p2, "pressed"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3490
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isShutterButtonClickable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3491
    :cond_0
    if-nez p1, :cond_3

    .line 3492
    if-eqz p2, :cond_2

    .line 3493
    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    .line 3494
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    .line 3495
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCountDownMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3496
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "capture_times_volume"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 3489
    :cond_1
    :goto_0
    return-void

    .line 3499
    :cond_2
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    .line 3500
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mVolumeLongPress:Z

    goto :goto_0

    .line 3503
    :cond_3
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mVolumeLongPress:Z

    if-nez v0, :cond_1

    .line 3504
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonLongClick()Z

    .line 3505
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mVolumeLongPress:Z

    .line 3506
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    goto :goto_0
.end method

.method protected playAnimationBeforeCapture()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1548
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isZeroShotMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNeedComposed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isHDRFreeze()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    .line 1549
    :cond_2
    sget-object v1, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public playSound(I)V
    .locals 1
    .param p1, "soundId"    # I

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1752
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 1753
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->playCameraSound(I)V

    .line 1750
    :cond_1
    return-void
.end method

.method protected prepareCapture()V
    .locals 0

    .prologue
    .line 1736
    return-void
.end method

.method protected prepareMultiCapture()V
    .locals 1

    .prologue
    .line 1715
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->applyMultiShutParameters(Z)V

    .line 1714
    return-void
.end method

.method public readyToAudioCapture()Z
    .locals 13

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v4, 0x1f4

    const/4 v12, 0x0

    .line 4564
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4565
    return v12

    .line 4567
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4568
    .local v0, "now":J
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 4569
    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/AutoLockManager;->getLastActionTime()J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    .line 4568
    if-eqz v2, :cond_3

    .line 4570
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSoundPlayTime()J

    move-result-wide v8

    move-wide v6, v0

    invoke-static/range {v6 .. v11}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    .line 4568
    if-eqz v2, :cond_3

    .line 4571
    iget-wide v8, p0, Lcom/android/camera/module/CameraModule;->mLastShutterButtonClickTime:J

    move-wide v6, v0

    invoke-static/range {v6 .. v11}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    .line 4568
    if-eqz v2, :cond_3

    .line 4572
    iget-wide v2, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v12

    .line 4574
    .local v12, "ready":Z
    :cond_3
    return v12
.end method

.method public requestRender()V
    .locals 0

    .prologue
    .line 1984
    return-void
.end method

.method protected resetFaceBeautyMode()V
    .locals 0

    .prologue
    .line 1647
    return-void
.end method

.method protected resetMetaDataManager()V
    .locals 1

    .prologue
    .line 2414
    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2415
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->reset()V

    .line 2413
    :cond_0
    return-void
.end method

.method public scanQRCodeEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4395
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 4396
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v2, :cond_2

    .line 4395
    :cond_1
    :goto_0
    return v0

    .line 4397
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v2

    .line 4395
    if-eqz v2, :cond_1

    .line 4398
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v2, :cond_1

    .line 4399
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4400
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v2

    .line 4395
    if-eqz v2, :cond_1

    .line 4401
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6ModeExitView;->isExitButtonShown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4402
    const-string/jumbo v2, "pref_camera_stereo_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public sendDelayedCaptureMessage(II)V
    .locals 3
    .param p1, "period"    # I
    .param p2, "times"    # I

    .prologue
    const/16 v2, 0x14

    .line 4557
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4558
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4559
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4556
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected sendOpenFailMessage()V
    .locals 2

    .prologue
    .line 4799
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4798
    return-void
.end method

.method protected setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1631
    sget-object v0, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1, p2}, Lcom/android/camera/CameraSettings;->setAutoExposure(Lcom/android/camera/hardware/CameraHardwareProxy;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1629
    :cond_0
    return-void
.end method

.method protected setBeautyParams()V
    .locals 5

    .prologue
    .line 5257
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5258
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue()Ljava/lang/String;

    move-result-object v0

    .line 5259
    .local v0, "beauty":Ljava/lang/String;
    sget-object v1, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5260
    const-string/jumbo v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SetStillBeautify ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5261
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5262
    sget-object v1, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5263
    const-string/jumbo v3, "pref_skin_beautify_skin_color_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5262
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySkinColor(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5264
    sget-object v1, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5265
    const-string/jumbo v3, "pref_skin_beautify_slim_face_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5264
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySlimFace(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5266
    sget-object v1, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5267
    const-string/jumbo v3, "pref_skin_beautify_skin_smooth_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5266
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifySkinSmooth(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5268
    sget-object v1, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5269
    const-string/jumbo v3, "pref_skin_beautify_enlarge_eye_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5268
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyEnlargeEye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5256
    .end local v0    # "beauty":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected setCameraParameters(I)V
    .locals 2
    .param p1, "updateSet"    # I

    .prologue
    .line 3988
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 3989
    return-void

    .line 3994
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3996
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 3997
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersInitialize()V

    .line 4000
    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    .line 4001
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 4002
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    .line 4005
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3987
    return-void
.end method

.method protected setCameraParametersWhenIdle(I)V
    .locals 5
    .param p1, "additionalUpdateSet"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 4011
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    .line 4012
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 4015
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    .line 4016
    return-void

    .line 4017
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4018
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 4019
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->checkRestartPreview()V

    .line 4020
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mRestartPreview:Z

    .line 4021
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setPreviewFrameLayoutAspectRatio()V

    .line 4022
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->updateSceneModeUI()V

    .line 4023
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    .line 4024
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 4025
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    .line 4010
    :cond_1
    :goto_0
    return-void

    .line 4027
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4028
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    .line 4029
    const-wide/16 v2, 0x3e8

    .line 4028
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected setCameraState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1531
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    .line 1532
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1533
    return-void

    .line 1535
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1530
    :goto_0
    :pswitch_0
    return-void

    .line 1539
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    goto :goto_0

    .line 1542
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    goto :goto_0

    .line 1535
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected setDisplayOrientation()V
    .locals 2

    .prologue
    .line 3540
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->setDisplayOrientation()V

    .line 3541
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 3542
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    .line 3543
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setDisplayOrientation(I)V

    .line 3539
    :cond_0
    return-void
.end method

.method public setFocusParameters()V
    .locals 2

    .prologue
    .line 1744
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1745
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 1743
    :cond_0
    return-void
.end method

.method protected setMetaCallback(Z)V
    .locals 2
    .param p1, "asdEnable"    # Z

    .prologue
    .line 4985
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    if-eq v0, p1, :cond_0

    .line 4986
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    .line 4987
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    if-eqz v0, :cond_4

    move-object v0, p0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setMetaDataCallback(Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V

    .line 4990
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    if-eqz v0, :cond_1

    .line 4991
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetFilter()V

    .line 4994
    :cond_1
    if-nez p1, :cond_2

    .line 4995
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->-get0(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_2

    .line 4996
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->-wrap0(Lcom/android/camera/module/CameraModule$MetaDataManager;)V

    .line 4984
    :cond_2
    return-void

    .line 4986
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 4987
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected setTimeWatermarkIfNeed()V
    .locals 3

    .prologue
    .line 4803
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isWaterMarkOpen(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4804
    sget-object v0, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/Util;->getTimeWatermark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermarkValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4802
    :cond_0
    return-void
.end method

.method protected setupPreview()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 977
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isLongShotMode()Z

    move-result v0

    .line 978
    .local v0, "burstEnd":Z
    invoke-static {}, Lcom/android/camera/Device;->isResetToCCAFAfterCapture()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 979
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 981
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->needSetupPreview()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 982
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 993
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    if-eqz v1, :cond_1

    .line 994
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x258

    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 995
    iput-boolean v6, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    .line 997
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isHDRFreeze()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 998
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x18

    invoke-virtual {v3, v4, v2, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 976
    :goto_1
    return-void

    .line 984
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    if-eqz v1, :cond_3

    .line 985
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 987
    :cond_3
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mLongPressedAutoFocus:Z

    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/camera/FocusManager;->resetAfterCapture(Z)V

    .line 988
    iput-boolean v6, p0, Lcom/android/camera/module/CameraModule;->mLongPressedAutoFocus:Z

    .line 989
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1, v6}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    .line 990
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 987
    goto :goto_2

    .line 1000
    :cond_5
    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBurstDelayTime()I

    move-result v1

    if-lez v1, :cond_6

    .line 1001
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBurstDelayTime()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x24

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1004
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 1005
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    goto :goto_1
.end method

.method protected startCameraThread()V
    .locals 2

    .prologue
    .line 2300
    new-instance v0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$CameraStartUpThread;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    .line 2301
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->start()V

    .line 2299
    return-void
.end method

.method public startFaceDetection()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 811
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_0

    .line 812
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v0, v1, :cond_1

    .line 815
    :cond_0
    return-void

    .line 812
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    .line 811
    if-nez v0, :cond_0

    .line 812
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFaceBeautyMode()Z

    move-result v0

    .line 811
    if-nez v0, :cond_0

    .line 813
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 814
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->isAdjusting()Z

    move-result v0

    .line 811
    if-nez v0, :cond_0

    .line 817
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_3

    .line 818
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 819
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 820
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    .line 821
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/CameraModule;->updateFaceView(ZZ)V

    .line 810
    :cond_3
    return-void
.end method

.method public startObjectTracking()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4660
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 4661
    :cond_0
    const-string/jumbo v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startObjectTracking mObjectTrackingStarted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4662
    const-string/jumbo v3, " mCameraState="

    .line 4661
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4662
    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    .line 4661
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4663
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 4664
    :cond_1
    return-void

    .line 4663
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v1, :cond_1

    .line 4666
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4667
    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    .line 4668
    iput-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    .line 4669
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusManager;->setFrameView(Lcom/android/camera/ui/FrameView;)V

    .line 4670
    sget-object v1, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "auto"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4673
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 4674
    .local v0, "flashMode":Ljava/lang/String;
    const-string/jumbo v1, "torch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4675
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4680
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4682
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 4683
    const-string/jumbo v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startObjectTracking rect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/ObjectView;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4684
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ObjectView;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->startObjectTrack(Landroid/graphics/RectF;)V

    .line 4659
    .end local v0    # "flashMode":Ljava/lang/String;
    :cond_4
    return-void

    .line 4676
    .restart local v0    # "flashMode":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FlashButton;->keepSetValue(Ljava/lang/String;)V

    .line 4677
    const-string/jumbo v1, "pref_camera_flashmode_key"

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->updateASD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected startPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3548
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-nez v0, :cond_1

    .line 3549
    :cond_0
    return-void

    .line 3552
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3553
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 3556
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 3560
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_3

    .line 3562
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isZeroShotMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3567
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setDisplayOrientation()V

    .line 3568
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 3570
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    if-nez v0, :cond_5

    .line 3573
    const-string/jumbo v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3574
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 3576
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    .line 3579
    :cond_5
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFoundFace:Z

    .line 3581
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3582
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 3585
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 3586
    const-string/jumbo v0, "Camera"

    const-string/jumbo v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 3588
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStarted()V

    .line 3589
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3590
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 3597
    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    if-eqz v0, :cond_8

    .line 3598
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3547
    :cond_8
    return-void

    .line 3563
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopPreview()V

    goto :goto_0
.end method

.method public stopFaceDetection(Z)V
    .locals 4
    .param p1, "clearFaces"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 827
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_3

    .line 830
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_2

    .line 832
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_1

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 836
    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 837
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 838
    invoke-virtual {p0, v2, p1}, Lcom/android/camera/module/CameraModule;->updateFaceView(ZZ)V

    .line 839
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/FaceView;->setDetectedFaces([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    .line 826
    :cond_2
    return-void

    .line 828
    :cond_3
    return-void
.end method

.method public stopObjectTracking(Z)V
    .locals 5
    .param p1, "restartFD"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 4689
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4690
    :cond_0
    const-string/jumbo v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopObjectTracking mObjectTrackingStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " restartFD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4691
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_2

    .line 4692
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 4693
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 4694
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    .line 4696
    :cond_1
    return-void

    .line 4698
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_4

    .line 4699
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    .line 4700
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 4701
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopObjectTrack()V

    .line 4702
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->isAdjusting()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4703
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v0

    .line 4704
    const/16 v1, 0xa

    .line 4703
    if-eq v0, v1, :cond_3

    .line 4705
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    .line 4706
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 4705
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FlashButton;->updateFlashModeAccordingHdr(Ljava/lang/String;)V

    .line 4707
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_6

    .line 4714
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 4715
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    .line 4717
    :cond_4
    if-eqz p1, :cond_5

    .line 4718
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 4688
    :cond_5
    return-void

    .line 4707
    :cond_6
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 4708
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4710
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 4711
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    goto :goto_0
.end method

.method protected switchToOtherMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 4125
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4126
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4127
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->switchToOtherModule(I)V

    .line 4124
    return-void
.end method

.method protected trackPictureTaken(IZIIZ)V
    .locals 5
    .param p1, "takenNum"    # I
    .param p2, "burst"    # Z
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "location"    # Z

    .prologue
    .line 4901
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isSceneHdr()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4902
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string/jumbo v4, "capture_nums_normal_hdr"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 4929
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPressDownCapture()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    if-le p1, v3, :cond_2

    .line 4930
    add-int/lit8 p1, p1, -0x1

    .line 4932
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/android/camera/module/BaseModule;->trackPictureTaken(IZIIZ)V

    .line 4899
    return-void

    .line 4903
    :cond_3
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4904
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string/jumbo v4, "capture_nums_live_hdr"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 4905
    :cond_4
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4906
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string/jumbo v4, "capture_nums_hht"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 4907
    :cond_5
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4908
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string/jumbo v4, "capture_nums_ubfocus"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 4910
    :cond_6
    sget-object v3, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    .line 4911
    .local v2, "fb":Ljava/lang/String;
    const v3, 0x7f0e016e

    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4912
    .local v0, "closeFB":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4914
    :cond_7
    const-string/jumbo v3, "pref_camera_manual_mode_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4915
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string/jumbo v4, "capture_nums_manual"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 4913
    :cond_8
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string/jumbo v4, "capture_nums_beauty"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4916
    :cond_9
    const-string/jumbo v3, "pref_camera_gradienter_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4917
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string/jumbo v4, "capture_nums_gradienter"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4918
    :cond_a
    const-string/jumbo v3, "pref_camera_tilt_shift_mode"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4919
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v1

    .line 4920
    .local v1, "effect":I
    sget v3, Lcom/android/camera/effect/EffectController;->sGaussianIndex:I

    if-ne v1, v3, :cond_b

    .line 4921
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string/jumbo v4, "capture_nums_tilt_shift_circle"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4922
    :cond_b
    sget v3, Lcom/android/camera/effect/EffectController;->sTiltShiftIndex:I

    if-ne v1, v3, :cond_1

    .line 4923
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string/jumbo v4, "capture_nums_tilt_shift_parallel"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4925
    .end local v1    # "effect":I
    :cond_c
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectController;->isEffectPageSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4926
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectController;->getAnalyticsKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public tryRemoveCountDownMessage()V
    .locals 2

    .prologue
    .line 4578
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4579
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->hideDelayNumber()V

    .line 4580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsCountDown:Z

    .line 4577
    return-void
.end method

.method protected updateASD(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2420
    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2421
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    .line 2419
    :cond_0
    return-void
.end method

.method protected updateCameraParametersInitialize()V
    .locals 6

    .prologue
    .line 3627
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 3628
    .local v0, "frameRates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 3629
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3630
    .local v1, "max":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 3633
    .end local v1    # "max":Ljava/lang/Integer;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 3637
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "video-stabilization-supported"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3638
    .local v2, "vstabSupported":Ljava/lang/String;
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3639
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "video-stabilization"

    const-string/jumbo v5, "false"

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3624
    :cond_1
    return-void
.end method

.method protected updateCameraParametersPreference()V
    .locals 30

    .prologue
    .line 3644
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mAeLockSupported:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 3645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 3648
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mAwbLockSupported:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    .line 3649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 3652
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getBestPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v18

    .line 3654
    .local v18, "pictureSize":Lcom/android/camera/PictureSize;
    if-eqz v18, :cond_21

    .line 3655
    const-string/jumbo v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "pictureSize = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v15

    .line 3657
    .local v15, "oldPictureSize":Landroid/hardware/Camera$Size;
    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->width:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->height:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_3

    .line 3658
    :cond_2
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 3660
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->width:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->height:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 3670
    .end local v15    # "oldPictureSize":Landroid/hardware/Camera$Size;
    :goto_0
    sget-object v25, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v19

    .line 3671
    .local v19, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v25, v0

    .line 3672
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->width:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->height:I

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    .line 3671
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v16

    .line 3673
    .local v16, "optimalSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v17

    .line 3674
    .local v17, "original":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v20

    .line 3675
    .local v20, "style":I
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 3676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 3679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3682
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 3683
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    .line 3684
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5

    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v25

    if-eqz v25, :cond_22

    .line 3687
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x12

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3691
    :cond_6
    :goto_1
    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    .line 3692
    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    .line 3694
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v26

    move/from16 v1, v25

    if-gt v0, v1, :cond_8

    .line 3698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v21

    .line 3700
    .local v21, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->width:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/PictureSize;->height:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    .line 3699
    move-object/from16 v0, v21

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->getOptimalJpegThumbnailSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v16

    .line 3701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v17

    .line 3702
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_7

    .line 3703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 3706
    :cond_7
    const-string/jumbo v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Thumbnail size is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "x"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3711
    .end local v21    # "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/MutexModeManager;->isSceneHdr()Z

    move-result v25

    if-eqz v25, :cond_24

    .line 3712
    const-string/jumbo v25, "hdr"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    .line 3713
    const-string/jumbo v25, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 3714
    const-string/jumbo v25, "hdr"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_23

    .line 3725
    :cond_9
    :goto_2
    const-string/jumbo v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "mSceneMode "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " getMutexMode="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/MutexModeManager;->getMutexMode()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v25

    if-eqz v25, :cond_26

    .line 3727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_a

    .line 3728
    const-string/jumbo v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "mSceneMode "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " pas="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 3734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3745
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/camera/CameraSettings;->getJpegQuality(Lcom/android/camera/preferences/CameraSettingPreferences;Z)Ljava/lang/String;

    move-result-object v12

    .line 3746
    .local v12, "jpegQuality":Ljava/lang/String;
    const-string/jumbo v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "jpegQuality : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-static {v12}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 3754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v23

    .line 3755
    .local v23, "value":I
    const-string/jumbo v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "EV : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v13

    .line 3757
    .local v13, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v14

    .line 3758
    .local v14, "min":I
    move/from16 v0, v23

    if-lt v0, v14, :cond_27

    move/from16 v0, v23

    if-gt v0, v13, :cond_27

    .line 3759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 3765
    :goto_4
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v25

    if-eqz v25, :cond_28

    .line 3766
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v7

    .line 3767
    .local v7, "effect":I
    const-string/jumbo v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Shader color effect value ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3768
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 3770
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v25

    if-eqz v25, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v25, v0

    if-nez v25, :cond_b

    .line 3771
    new-instance v25, Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    move/from16 v27, v0

    invoke-direct/range {v25 .. v27}, Lcom/android/camera/effect/renders/SnapshotEffectRender;-><init>(Lcom/android/camera/ActivityBase;Z)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 3772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->setImageSaver(Lcom/android/camera/storage/ImageSaver;)V

    .line 3775
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c

    .line 3776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->prepareEffectRender(I)V

    .line 3777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->setQuality(I)V

    .line 3790
    .end local v7    # "effect":I
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v25, v0

    .line 3791
    const-string/jumbo v26, "pref_camera_autoexposure_key"

    .line 3792
    const v27, 0x7f0e0102

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 3790
    invoke-virtual/range {v25 .. v27}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3793
    .local v5, "autoExposure":Ljava/lang/String;
    const-string/jumbo v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "autoExposure value ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Lcom/android/camera/module/CameraModule;->setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 3798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v25, v0

    .line 3799
    const-string/jumbo v26, "pref_camera_antibanding_key"

    .line 3800
    const v27, 0x7f0e00d3

    invoke-static/range {v27 .. v27}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 3798
    invoke-virtual/range {v25 .. v27}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3801
    .local v4, "antiBanding":Ljava/lang/String;
    const-string/jumbo v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "antiBanding value ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 3803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 3806
    :cond_d
    const-string/jumbo v25, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_e

    .line 3807
    const-string/jumbo v25, "hdr"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    .line 3806
    if-eqz v25, :cond_2c

    .line 3809
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    move/from16 v25, v0

    if-nez v25, :cond_f

    .line 3810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 3812
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v25

    if-eqz v25, :cond_11

    .line 3814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v10

    .line 3815
    .local v10, "flashModeOld":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v9

    .line 3816
    .local v9, "flashMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v22

    .line 3817
    .local v22, "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 3818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3821
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v25

    if-eqz v25, :cond_11

    const-string/jumbo v25, "off"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_29

    .line 3833
    .end local v9    # "flashMode":Ljava/lang/String;
    .end local v10    # "flashModeOld":Ljava/lang/String;
    .end local v22    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    :goto_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFocusModeSwitching()Z

    move-result v25

    if-eqz v25, :cond_12

    .line 3834
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 3835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    move-object/from16 v25, v0

    if-nez v25, :cond_12

    .line 3839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/FocusManager;->resetFocusStateIfNeeded()V

    .line 3842
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    move/from16 v25, v0

    if-nez v25, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mObjectTrackingStarted:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2a

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2a

    .line 3843
    const-string/jumbo v11, "auto"

    .line 3845
    .local v11, "focusMode":Ljava/lang/String;
    :goto_7
    if-eqz v11, :cond_15

    .line 3846
    sget-object v25, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v11}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 3847
    const-string/jumbo v25, "macro"

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_14

    .line 3848
    const-string/jumbo v25, "manual"

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    .line 3847
    if-eqz v25, :cond_15

    .line 3849
    :cond_14
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 3852
    :cond_15
    const-string/jumbo v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Focus mode value = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3856
    const-string/jumbo v25, "pref_camera_whitebalance_key"

    .line 3857
    const v26, 0x7f0e0078

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 3855
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3859
    .local v24, "whiteBalance":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v25

    .line 3858
    invoke-static/range {v24 .. v25}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v25

    if-eqz v25, :cond_2b

    .line 3860
    sget-object v25, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setWhiteBalance(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 3890
    .end local v11    # "focusMode":Ljava/lang/String;
    .end local v24    # "whiteBalance":Ljava/lang/String;
    :cond_16
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    move/from16 v25, v0

    if-eqz v25, :cond_17

    .line 3891
    sget-object v25, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 3894
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    move/from16 v25, v0

    if-eqz v25, :cond_18

    .line 3896
    sget-object v25, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 3899
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mContinuousFocusSupported:Z

    move/from16 v25, v0

    if-eqz v25, :cond_19

    .line 3900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "continuous-picture"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2f

    .line 3901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mAutoFocusMoveCallback:Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 3908
    :cond_19
    :goto_9
    const/4 v8, 0x1

    .line 3909
    .local v8, "faceDetection":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    move/from16 v25, v0

    if-nez v25, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v25

    if-nez v25, :cond_1a

    .line 3910
    const-string/jumbo v25, "pref_camera_gradienter_key"

    invoke-static/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v25

    .line 3909
    if-nez v25, :cond_1a

    .line 3911
    const-string/jumbo v25, "pref_camera_tilt_shift_mode"

    invoke-static/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v25

    .line 3909
    if-eqz v25, :cond_30

    .line 3912
    :cond_1a
    const/4 v8, 0x0

    .line 3921
    .end local v8    # "faceDetection":Z
    :cond_1b
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v26

    if-eqz v8, :cond_31

    const/16 v25, 0x0

    :goto_b
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setSkipDraw(Z)V

    .line 3922
    if-eqz v8, :cond_32

    .line 3923
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    move/from16 v25, v0

    if-nez v25, :cond_1c

    .line 3924
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    .line 3925
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 3934
    :cond_1c
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 3935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getZoomValue()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 3938
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v26

    .line 3939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v25

    if-eqz v25, :cond_33

    const/16 v25, 0x1

    .line 3938
    :goto_d
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    .line 3942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/camera/CameraSettings;->isScanQRCode(Landroid/content/SharedPreferences;)Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/zxing/QRCodeManager;->needScanQRCode(Z)V

    .line 3943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lcom/android/zxing/QRCodeManager;->setTransposePreviewSize(II)V

    .line 3944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/zxing/QRCodeManager;->setPreviewFormat(I)V

    .line 3945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    .line 3947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->addT2TParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3949
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1e

    sget-boolean v25, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v25, :cond_1f

    .line 3950
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/module/CameraModule;->updateCameraScreenNailSize(IILcom/android/camera/FocusManagerAbstract;)V

    .line 3954
    :cond_1f
    invoke-static {}, Lcom/android/camera/Device;->isFaceDetectNeedRotation()Z

    move-result v25

    if-eqz v25, :cond_20

    .line 3955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 3643
    :cond_20
    return-void

    .line 3667
    .end local v4    # "antiBanding":Ljava/lang/String;
    .end local v5    # "autoExposure":Ljava/lang/String;
    .end local v12    # "jpegQuality":Ljava/lang/String;
    .end local v13    # "max":I
    .end local v14    # "min":I
    .end local v16    # "optimalSize":Landroid/hardware/Camera$Size;
    .end local v17    # "original":Landroid/hardware/Camera$Size;
    .end local v19    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v20    # "style":I
    .end local v23    # "value":I
    :cond_21
    const-string/jumbo v25, "Camera"

    const-string/jumbo v26, "get null pictureSize"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3668
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/camera/PictureSizeManager;->getPictureSize(Z)Lcom/android/camera/PictureSize;

    move-result-object v18

    goto/16 :goto_0

    .line 3685
    .restart local v16    # "optimalSize":Landroid/hardware/Camera$Size;
    .restart local v17    # "original":Landroid/hardware/Camera$Size;
    .restart local v19    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v20    # "style":I
    :cond_22
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/module/CameraModule;->mHasPendingSwitching:Z

    goto/16 :goto_1

    .line 3715
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    const-string/jumbo v26, "auto"

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 3716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    goto/16 :goto_2

    .line 3719
    :cond_24
    const-string/jumbo v25, "pref_camera_scenemode_setting_key"

    invoke-static/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_25

    .line 3720
    const-string/jumbo v25, "auto"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_2

    .line 3722
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v25, v0

    const-string/jumbo v26, "pref_camera_scenemode_key"

    .line 3723
    const v27, 0x7f0e00b2

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 3722
    invoke-virtual/range {v25 .. v27}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_2

    .line 3738
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    .line 3739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v25, :cond_a

    .line 3740
    const-string/jumbo v25, "auto"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_3

    .line 3761
    .restart local v12    # "jpegQuality":Ljava/lang/String;
    .restart local v13    # "max":I
    .restart local v14    # "min":I
    .restart local v23    # "value":I
    :cond_27
    const-string/jumbo v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "invalid exposure range: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3780
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v25, v0

    .line 3781
    const-string/jumbo v26, "pref_camera_coloreffect_key"

    .line 3782
    const v27, 0x7f0e0088

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 3780
    invoke-virtual/range {v25 .. v27}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3783
    .local v6, "colorEffect":Ljava/lang/String;
    const-string/jumbo v25, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Color effect value ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 3785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3822
    .end local v6    # "colorEffect":Ljava/lang/String;
    .restart local v4    # "antiBanding":Ljava/lang/String;
    .restart local v5    # "autoExposure":Ljava/lang/String;
    .restart local v9    # "flashMode":Ljava/lang/String;
    .restart local v10    # "flashModeOld":Ljava/lang/String;
    .restart local v22    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_29
    const-string/jumbo v25, "torch"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_11

    .line 3823
    const-string/jumbo v25, "off"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 3824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    const-string/jumbo v26, "off"

    invoke-virtual/range {v25 .. v26}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v25

    if-eqz v25, :cond_11

    .line 3826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    goto/16 :goto_6

    .line 3844
    .end local v9    # "flashMode":Ljava/lang/String;
    .end local v10    # "flashModeOld":Ljava/lang/String;
    .end local v22    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_7

    .line 3862
    .restart local v11    # "focusMode":Ljava/lang/String;
    .restart local v24    # "whiteBalance":Ljava/lang/String;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v24

    .line 3863
    if-nez v24, :cond_16

    .line 3864
    const-string/jumbo v24, "auto"

    goto/16 :goto_8

    .line 3868
    .end local v11    # "focusMode":Ljava/lang/String;
    .end local v24    # "whiteBalance":Ljava/lang/String;
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v9

    .line 3869
    .restart local v9    # "flashMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v22

    .line 3870
    .restart local v22    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v25

    if-eqz v25, :cond_2d

    .line 3871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3874
    :cond_2d
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFocusModeSwitching()Z

    move-result v25

    if-eqz v25, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v25

    if-eqz v25, :cond_2e

    .line 3875
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 3876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    move-object/from16 v25, v0

    if-nez v25, :cond_2e

    .line 3880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/camera/FocusManager;->resetFocusStateIfNeeded()V

    .line 3883
    :cond_2e
    sget-object v25, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    const-string/jumbo v27, "continuous-picture"

    invoke-virtual/range {v25 .. v27}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 3884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v25, v0

    const-string/jumbo v26, "continuous-picture"

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 3903
    .end local v9    # "flashMode":Ljava/lang/String;
    .end local v22    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_9

    .line 3913
    .restart local v8    # "faceDetection":Z
    :cond_30
    const-string/jumbo v25, "pref_camera_magic_mirror_key"

    invoke-static/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_1b

    .line 3914
    const-string/jumbo v25, "pref_camera_groupshot_mode_key"

    invoke-static/range {v25 .. v25}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_1b

    .line 3915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v25, v0

    .line 3916
    const-string/jumbo v26, "pref_camera_facedetection_key"

    .line 3917
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 3918
    const v28, 0x7f0b0007

    .line 3917
    invoke-static/range {v28 .. v28}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v27

    .line 3915
    invoke-virtual/range {v25 .. v27}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .local v8, "faceDetection":Z
    goto/16 :goto_a

    .line 3921
    .end local v8    # "faceDetection":Z
    :cond_31
    const/16 v25, 0x1

    goto/16 :goto_b

    .line 3928
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1c

    .line 3929
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    .line 3930
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    goto/16 :goto_c

    .line 3939
    :cond_33
    const/16 v25, 0x0

    goto/16 :goto_d
.end method

.method protected updateExitButton(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1846
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHHT()Z

    move-result v0

    .line 1845
    :goto_0
    if-nez v0, :cond_0

    .line 1847
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 1844
    :cond_0
    return-void

    .line 1845
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1846
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateFaceView(ZZ)V
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "clearFaces"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x23

    .line 803
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 804
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 806
    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    move v2, v0

    :goto_0
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v3, v4, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 802
    return-void

    :cond_1
    move v2, v1

    .line 806
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected updateStereoSettings(Z)V
    .locals 4
    .param p1, "open"    # Z

    .prologue
    .line 4245
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4246
    if-eqz p1, :cond_1

    .line 4247
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "pref_camera_shader_coloreffect_key"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 4248
    const-string/jumbo v2, "pref_camera_flashmode_key"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "off"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 4249
    const-string/jumbo v2, "pref_camera_hdr_key"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "off"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 4247
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    .line 4244
    :cond_0
    :goto_0
    return-void

    .line 4251
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    goto :goto_0
.end method

.method protected updateWarningMessage(IZ)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "hide"    # Z

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0x15

    .line 4733
    if-eqz p1, :cond_0

    .line 4734
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getWarningMessageView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 4736
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 4737
    if-nez p2, :cond_1

    .line 4738
    const v1, 0x7f0e018d

    if-ne v1, p1, :cond_2

    .line 4739
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4744
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getWarningMessageParent()Landroid/widget/LinearLayout;

    move-result-object v1

    if-nez p2, :cond_3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4732
    return-void

    .line 4741
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 4744
    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method
