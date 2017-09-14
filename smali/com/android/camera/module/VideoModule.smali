.class public Lcom/android/camera/module/VideoModule;
.super Lcom/android/camera/module/BaseModule;
.source "VideoModule.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;
.implements Lcom/android/camera/ui/ObjectView$ObjectViewListener;
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/VideoModule$1;,
        Lcom/android/camera/module/VideoModule$2;,
        Lcom/android/camera/module/VideoModule$3;,
        Lcom/android/camera/module/VideoModule$JpegPictureCallback;,
        Lcom/android/camera/module/VideoModule$LoadThumbnailTask;,
        Lcom/android/camera/module/VideoModule$MainHandler;,
        Lcom/android/camera/module/VideoModule$MyBroadcastReceiver;,
        Lcom/android/camera/module/VideoModule$SavingTask;,
        Lcom/android/camera/module/VideoModule$StereoSwitchThread;
    }
.end annotation


# static fields
.field private static HOLD_WHEN_SAVING_VIDEO:Z

.field public static final VIDEO_MIN_SINGLE_FILE_SIZE:J

.field protected static final VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBaseFileName:Ljava/lang/String;

.field private mCaptureTimeLapse:Z

.field private mContinuousFocusSupported:Z

.field private volatile mCurrentFileNumber:I

.field private mCurrentShowIndicator:I

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/android/camera/FocusManagerSimple;

.field private mFocusStartTime:J

.field protected final mHandler:Landroid/os/Handler;

.field protected mHfr:Ljava/lang/String;

.field private mInStartingFocusRecording:Z

.field private mIsFromStop:Z

.field private mIsTouchFocused:Z

.field protected mIsVideoCaptureIntent:Z

.field private mLastBackPressedTime:J

.field private mLoadThumbnailTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected mMaxVideoDurationInMs:I

.field protected mMediaRecorder:Landroid/media/MediaRecorder;

.field private volatile mMediaRecorderRecording:Z

.field private mMediaRecorderRecordingPaused:Z

.field private mMeteringAreaSupported:Z

.field private mOnResumeTime:J

.field private mOrientationCompensationAtRecordStart:I

.field private mOriginalMusicVolume:I

.field private mPauseClickTime:J

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreviewing:Z

.field protected mProfile:Landroid/media/CamcorderProfile;

.field protected mQuality:I

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field public volatile mRecorderBusy:Z

.field private mRecordingStartTime:J

.field private mRecordingTime:Ljava/lang/String;

.field private mRecordingTimeCountsDown:Z

.field private mRecordingUIShown:Z

.field protected mRestartPreview:Z

.field private mRestoreRunnable:Ljava/lang/Runnable;

.field private mSavingResult:Z

.field private mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field private mSnapshotInProgress:Z

.field private mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;

.field private mSwitchingCamera:Z

.field private final mTaskLock:Ljava/lang/Object;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mTouchFocusStartingTime:J

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoFocusMode:Ljava/lang/String;

.field protected mVideoHeight:I

.field private mVideoRecordedDuration:J

.field private mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

.field protected mVideoWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/camera/module/VideoModule;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/module/VideoModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/camera/module/VideoModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/camera/module/VideoModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/VideoModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic -get12(Lcom/android/camera/module/VideoModule;)Landroid/telephony/PhoneStateListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/camera/module/VideoModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/camera/module/VideoModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mQuickCapture:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/camera/module/VideoModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecordingUIShown:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/camera/module/VideoModule;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/camera/module/VideoModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSavingResult:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/camera/module/VideoModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/camera/module/VideoModule;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTaskLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/module/VideoModule;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/camera/module/VideoModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/VideoModule;->mTouchFocusStartingTime:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/camera/module/VideoModule;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/module/VideoModule;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/camera/module/VideoModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/camera/module/VideoModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/FocusManagerSimple;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/camera/module/VideoModule;)Landroid/os/AsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/camera/module/VideoModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/module/VideoModule;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/module/VideoModule;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$SavingTask;)Lcom/android/camera/module/VideoModule$SavingTask;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mIsTouchFocused:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/camera/module/VideoModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mSavingResult:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$StereoSwitchThread;)Lcom/android/camera/module/VideoModule$StereoSwitchThread;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->addVideoToMediaStore(Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/module/VideoModule;I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->switchToOtherMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showAlert()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/camera/module/VideoModule;Z)V
    .locals 0
    .param p1, "recording"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->showRecordingUI(Z)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showStoppingUI()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/camera/module/VideoModule;[BLandroid/location/Location;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->switchCamera()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->animateSlide()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/camera/module/VideoModule;Z)V
    .locals 0
    .param p1, "valid"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->doReturnToCaller(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->keepScreenOnAwhile()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onPreviewStart()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/camera/module/VideoModule;Z)V
    .locals 0
    .param p1, "sync"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resizeForPreviewAspectRatio()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->restoreMusicSound()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 149
    const-wide/32 v0, 0x800000

    const-wide/32 v2, 0x3200000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/module/VideoModule;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    .line 184
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/module/VideoModule;->HOLD_WHEN_SAVING_VIDEO:Z

    .line 116
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    .line 168
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    .line 181
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mTaskLock:Ljava/lang/Object;

    .line 182
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mSavingResult:Z

    .line 190
    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mLastBackPressedTime:J

    .line 193
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    .line 195
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mRecordingTimeCountsDown:Z

    .line 197
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 225
    iput v1, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 232
    new-instance v0, Lcom/android/camera/module/VideoModule$MainHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/camera/module/VideoModule$MainHandler;-><init>(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$MainHandler;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    .line 237
    const-string/jumbo v0, "normal"

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    .line 239
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    .line 250
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    .line 252
    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mTouchFocusStartingTime:J

    .line 254
    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    .line 255
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    .line 256
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    .line 436
    new-instance v0, Lcom/android/camera/module/VideoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$1;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 454
    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 738
    new-instance v0, Lcom/android/camera/module/VideoModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$2;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    .line 2268
    new-instance v0, Lcom/android/camera/module/VideoModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$3;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    .line 116
    return-void
.end method

.method private addVideoToMediaStore(Landroid/content/ContentValues;)Z
    .locals 9
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1730
    const/4 v1, 0x0

    .line 1731
    .local v1, "fail":Z
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v4, :cond_2

    .line 1732
    const-string/jumbo v4, "_size"

    .line 1733
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1732
    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1735
    const-string/jumbo v4, "duration"

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/camera/module/VideoModule;->getDuration(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1737
    :try_start_0
    const-string/jumbo v4, "_data"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1738
    .local v2, "finalName":Ljava/lang/String;
    iget v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    if-lez v4, :cond_0

    .line 1739
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v5, "_%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1740
    .local v3, "postfix":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/VideoModule;->insertPostfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1741
    const-string/jumbo v4, "_data"

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    const-string/jumbo v4, "title"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    const-string/jumbo v4, "_display_name"

    .line 1744
    const-string/jumbo v5, "_display_name"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/camera/module/VideoModule;->insertPostfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1743
    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    .end local v3    # "postfix":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1748
    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1752
    :goto_0
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1753
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/camera/Camera;->addSecureUri(Landroid/net/Uri;)V

    .line 1754
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-ge v4, v5, :cond_1

    .line 1755
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.hardware.action.NEW_VIDEO"

    .line 1756
    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1755
    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1758
    :cond_1
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1767
    const-string/jumbo v4, "videocamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Current video URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    .end local v2    # "finalName":Ljava/lang/String;
    :cond_2
    :goto_1
    return v1

    .line 1750
    .restart local v2    # "finalName":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v4, "_data"

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1759
    .end local v2    # "finalName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1762
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "videocamera"

    const-string/jumbo v5, "failed to add video to media store"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1763
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1764
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1765
    const/4 v1, 0x1

    .line 1767
    const-string/jumbo v4, "videocamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Current video URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1766
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 1767
    const-string/jumbo v5, "videocamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Current video URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    throw v4
.end method

.method private animateHold()V
    .locals 2

    .prologue
    .line 2298
    sget-boolean v0, Lcom/android/camera/module/VideoModule;->HOLD_WHEN_SAVING_VIDEO:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 2297
    :cond_0
    :goto_0
    return-void

    .line 2298
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 2299
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateHold(I)V

    goto :goto_0
.end method

.method private animateSlide()V
    .locals 1

    .prologue
    .line 2304
    sget-boolean v0, Lcom/android/camera/module/VideoModule;->HOLD_WHEN_SAVING_VIDEO:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 2303
    :cond_0
    :goto_0
    return-void

    .line 2304
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 2305
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->clearAnimation()V

    goto :goto_0
.end method

.method private autoFocus(IIIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "focusWidth"    # I
    .param p4, "focusHeight"    # I
    .param p5, "focusType"    # I

    .prologue
    .line 3025
    const-string/jumbo v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "autoFocus mVideoFocusMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    const-string/jumbo v0, "auto"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-eqz v0, :cond_7

    .line 3027
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    .line 3026
    if-eqz v0, :cond_7

    .line 3028
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->cancelAutoFocus()V

    .line 3029
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3030
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->focusPoint()V

    .line 3032
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_3

    .line 3033
    sget-object v0, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/camera/FocusManagerSimple;->getFocusArea(IIII)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 3036
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    if-eq p5, v0, :cond_4

    .line 3037
    sget-object v0, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/camera/FocusManagerSimple;->getMeteringsArea(IIII)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 3039
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3040
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/VideoModule;->mFocusStartTime:J

    .line 3041
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_5

    .line 3042
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/FocusView;->setPosition(II)V

    .line 3044
    :cond_5
    const/4 v0, 0x3

    if-ne p5, v0, :cond_6

    .line 3045
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showStart()V

    .line 3046
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 3024
    :cond_7
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3001
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 3002
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2}, Lcom/android/camera/FocusManagerSimple;->cancelAutoFocus()V

    .line 3003
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3006
    sget-object v2, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    new-instance v3, Lcom/android/camera/portability/Camera1Parameters;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {v3, v4}, Lcom/android/camera/portability/Camera1Parameters;-><init>(Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Lcom/android/camera/portability/ICameraParameters;)Ljava/util/List;

    move-result-object v1

    .line 3007
    .local v1, "supportedFocusMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v0, "auto"

    .line 3009
    .local v0, "focusMode":Ljava/lang/String;
    :goto_0
    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3010
    sget-object v2, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 3011
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateAutoFocusMoveCallback()V

    .line 3014
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    if-eqz v2, :cond_1

    .line 3015
    sget-object v2, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 3017
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    if-eqz v2, :cond_2

    .line 3018
    sget-object v2, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 3020
    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3000
    return-void

    .line 3008
    .end local v0    # "focusMode":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "macro"

    goto :goto_0
.end method

.method private capture()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2737
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_0

    .line 2741
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2742
    invoke-direct {p0, v4}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    .line 2743
    return v4

    .line 2738
    :cond_0
    return v4

    .line 2746
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/storage/ImageSaver;->shouldStopShot()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2747
    const-string/jumbo v1, "videocamera"

    const-string/jumbo v2, "ImageSaver is full, wait for a moment!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v1

    .line 2749
    const v2, 0x7f0e0224

    .line 2748
    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    .line 2750
    return v4

    .line 2753
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->setRotationParameter(Landroid/hardware/Camera$Parameters;II)V

    .line 2754
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2755
    .local v0, "loc":Landroid/location/Location;
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 2756
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2757
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2758
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6PreviewPage;->onCapture()V

    .line 2762
    :goto_0
    const-string/jumbo v1, "videocamera"

    const-string/jumbo v2, "Video snapshot start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v2, Lcom/android/camera/module/VideoModule$JpegPictureCallback;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/module/VideoModule$JpegPictureCallback;-><init>(Lcom/android/camera/module/VideoModule;Landroid/location/Location;)V

    invoke-virtual {v1, v5, v5, v5, v2}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 2764
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/V6ShutterButton;->enableControls(Z)V

    .line 2765
    iput-boolean v6, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    .line 2766
    return v6

    .line 2760
    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getCameraRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    goto :goto_0
.end method

.method private checkCallingState()Z
    .locals 3

    .prologue
    .line 3375
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 3376
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    const v1, 0x7f0e01ca

    .line 3377
    const v2, 0x7f0e01cb

    .line 3376
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ScreenHint;->showConfirmMessage(II)V

    .line 3378
    const/4 v0, 0x0

    return v0

    .line 3380
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private cleanupEmptyFile()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1512
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1513
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1514
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1515
    const-string/jumbo v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    iput-object v6, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1511
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private closeVideoFileDescriptor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3145
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 3147
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3151
    :goto_0
    iput-object v3, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 3144
    :cond_0
    return-void

    .line 3148
    :catch_0
    move-exception v0

    .line 3149
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "videocamera"

    const-string/jumbo v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private computePopupTransY()I
    .locals 4

    .prologue
    .line 1984
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v1

    .line 1985
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1986
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1987
    const v3, 0x7f080036

    .line 1986
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1988
    .local v0, "bottomMargin":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    return v2

    .line 1990
    .end local v0    # "bottomMargin":I
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .param p0, "outputFileFormat"    # I

    .prologue
    .line 3123
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 3124
    const-string/jumbo v0, ".mp4"

    return-object v0

    .line 3126
    :cond_0
    const-string/jumbo v0, ".3gp"

    return-object v0
.end method

.method public static convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .param p0, "outputFileFormat"    # I

    .prologue
    .line 3116
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 3117
    const-string/jumbo v0, "video/mp4"

    return-object v0

    .line 3119
    :cond_0
    const-string/jumbo v0, "video/3gpp"

    return-object v0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3
    .param p1, "dateTaken"    # J

    .prologue
    .line 481
    iget v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    if-gtz v2, :cond_0

    .line 482
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 483
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 484
    const v2, 0x7f0e00dd

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 483
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 486
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    .line 487
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    return-object v2

    .line 489
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    return-object v2
.end method

.method private deleteCurrentVideo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1775
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1776
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 1777
    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1778
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1779
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-static {v0, v1, v1}, Lcom/android/camera/Util;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1780
    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1783
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1773
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1787
    const-string/jumbo v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deleting video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1789
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1790
    const-string/jumbo v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .param p1, "valid"    # Z

    .prologue
    .line 1498
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1500
    .local v1, "resultIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1501
    const/4 v0, -0x1

    .line 1502
    .local v0, "resultCode":I
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1503
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1507
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 1508
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->finish()V

    .line 1497
    return-void

    .line 1505
    .end local v0    # "resultCode":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "resultCode":I
    goto :goto_0
.end method

.method private generateVideoFilename(I)V
    .locals 14
    .param p1, "outputFileFormat"    # I

    .prologue
    const-wide/16 v12, 0x0

    .line 1682
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1683
    .local v0, "dateTaken":J
    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/VideoModule;->createName(J)Ljava/lang/String;

    move-result-object v6

    .line 1685
    .local v6, "title":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/camera/module/VideoModule;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1686
    .local v2, "filename":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/camera/module/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 1687
    .local v4, "mime":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1688
    .local v5, "path":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1689
    .local v7, "tmpPath":Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x7

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1690
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "title"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "_display_name"

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1693
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "mime_type"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "_data"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "resolution"

    .line 1696
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1697
    iget-object v11, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 1696
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1695
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    .line 1699
    .local v3, "loc":Landroid/location/Location;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    cmpl-double v8, v8, v12

    if-nez v8, :cond_0

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    cmpl-double v8, v8, v12

    if-eqz v8, :cond_1

    .line 1700
    :cond_0
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "latitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1701
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "longitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1703
    :cond_1
    iput-object v7, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1704
    const-string/jumbo v8, "videocamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "New video filename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    return-void
.end method

.method private getDesiredPreviewSize()V
    .locals 12

    .prologue
    .line 881
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v6}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 882
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "slow"

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 883
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    .line 884
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    .line 917
    :goto_0
    const-string/jumbo v6, "videocamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mDesiredPreviewWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 918
    const-string/jumbo v8, ". mDesiredPreviewHeight="

    .line 917
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 918
    iget v8, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    .line 917
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    return-void

    .line 885
    :cond_0
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_1

    .line 886
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    .line 887
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    goto :goto_0

    .line 888
    :cond_1
    sget-boolean v6, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/android/camera/Device;->IS_MI5:Z

    if-eqz v6, :cond_3

    .line 889
    :cond_2
    iget v6, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v6

    .line 888
    if-eqz v6, :cond_3

    .line 891
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    .line 892
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    goto :goto_0

    .line 895
    :cond_3
    sget-object v6, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v7}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v5

    .line 896
    .local v5, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 897
    .local v2, "preferred":Landroid/hardware/Camera$Size;
    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int v3, v6, v7

    .line 898
    .local v3, "product":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 900
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 901
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 902
    .local v4, "size":Landroid/hardware/Camera$Size;
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v6, v7

    if-le v6, v3, :cond_4

    .line 903
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 910
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    :cond_5
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    .line 911
    sget-boolean v6, Lcom/android/camera/Device;->IS_MI3TD:Z

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    if-nez v6, :cond_6

    .line 912
    const-wide v6, 0x3ff5555555555555L    # 1.3333333333333333

    .line 910
    :goto_2
    invoke-static {v8, v5, v6, v7}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 914
    .local v1, "optimalSize":Landroid/hardware/Camera$Size;
    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    .line 915
    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    goto/16 :goto_0

    .line 913
    .end local v1    # "optimalSize":Landroid/hardware/Camera$Size;
    :cond_6
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v6, v6

    iget-object v9, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v10, v9

    div-double/2addr v6, v10

    goto :goto_2
.end method

.method private getDuration(Ljava/lang/String;)J
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1708
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1710
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1712
    const/16 v3, 0x9

    .line 1711
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 1718
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1711
    return-wide v4

    .line 1715
    :catch_0
    move-exception v1

    .line 1716
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v3, "videocamera"

    const-string/jumbo v4, "RuntimeException when getDuration()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1718
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1720
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    const-wide/16 v4, 0x0

    return-wide v4

    .line 1713
    :catch_1
    move-exception v0

    .line 1714
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string/jumbo v3, "videocamera"

    const-string/jumbo v4, "IllegalArgumentException when getDuration()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1718
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .line 1717
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v3

    .line 1718
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1717
    throw v3
.end method

.method private getHFRQuality(II)I
    .locals 4
    .param p1, "cameraId"    # I
    .param p2, "quality"    # I

    .prologue
    .line 858
    sget-object v1, Lcom/android/camera/module/VideoModule;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 859
    .local v0, "hfrQuality":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/VideoModule;->isProfileExist(ILjava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 862
    :cond_0
    const-string/jumbo v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot find hfrquality in VIDEO_QUALITY_TO_HIGHSPEED, quality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 863
    const-string/jumbo v3, " hfrQuality="

    .line 862
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    return p2
.end method

.method private getSpeedRecordVideoLength(JD)J
    .locals 7
    .param p1, "deltaMs"    # J
    .param p3, "timeBetweenFrameMs"    # D

    .prologue
    .line 2408
    const-wide/16 v2, 0x0

    cmpl-double v2, p3, v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    return-wide v2

    .line 2411
    :cond_0
    long-to-double v2, p1

    div-double v0, v2, p3

    .line 2413
    .local v0, "numberOfFrames":D
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getNormalVideoFrameRate()I

    move-result v2

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 2412
    return-wide v2
.end method

.method private hideAlert()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2199
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2200
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewPlayView()Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2202
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->show()V

    .line 2203
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->setPopupVisible(Z)V

    .line 2204
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 2205
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/camera/ui/V6ShutterButton;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 2206
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 2207
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopControlPanel()Lcom/android/camera/ui/TopControlPanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TopControlPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 2208
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomControlUpperPanel;->setEnabled(Z)V

    .line 2209
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 2198
    return-void
.end method

.method private initializeCapabilities()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2708
    new-instance v0, Lcom/android/camera/portability/Camera1Parameters;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {v0, v1}, Lcom/android/camera/portability/Camera1Parameters;-><init>(Landroid/hardware/Camera$Parameters;)V

    .line 2709
    .local v0, "paramProxy":Lcom/android/camera/portability/Camera1Parameters;
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-lez v1, :cond_1

    .line 2710
    const-string/jumbo v1, "auto"

    .line 2711
    sget-object v3, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v3, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Lcom/android/camera/portability/ICameraParameters;)Ljava/util/List;

    move-result-object v3

    .line 2710
    invoke-static {v1, v3}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    .line 2709
    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    .line 2712
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    .line 2713
    const-string/jumbo v1, "continuous-video"

    .line 2714
    sget-object v2, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v2, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Lcom/android/camera/portability/ICameraParameters;)Ljava/util/List;

    move-result-object v2

    .line 2713
    invoke-static {v1, v2}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mContinuousFocusSupported:Z

    .line 2707
    return-void

    :cond_1
    move v1, v2

    .line 2709
    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 8

    .prologue
    .line 2694
    iget v3, p0, Lcom/android/camera/module/VideoModule;->mCameraDisplayOrientation:I

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-static {v3, v4}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v1

    .line 2695
    .local v1, "orientation":I
    new-instance v4, Lcom/android/camera/FocusManagerSimple;

    .line 2696
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v5

    .line 2697
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6PreviewFrame;->getHeight()I

    move-result v6

    .line 2698
    iget v3, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v7

    if-ne v3, v7, :cond_0

    const/4 v3, 0x1

    .line 2695
    :goto_0
    invoke-direct {v4, v5, v6, v3, v1}, Lcom/android/camera/FocusManagerSimple;-><init>(IIZI)V

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    .line 2700
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2701
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 2702
    .local v2, "point":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2703
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    .line 2704
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/FocusManagerSimple;->setRenderSize(II)V

    .line 2693
    return-void

    .line 2698
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "point":Landroid/graphics/Point;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initializeMiscControls()V
    .locals 0

    .prologue
    .line 2723
    return-void
.end method

.method private initializeObjectTrack(Landroid/graphics/RectF;Z)Z
    .locals 2
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "up"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3254
    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 3255
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    .line 3256
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 3257
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 3258
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    .line 3259
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ObjectView;->initializeTrackView(Landroid/graphics/RectF;Z)Z

    move-result v0

    return v0
.end method

.method private initializeRecorder()V
    .locals 24

    .prologue
    .line 1523
    const-string/jumbo v19, "videocamera"

    const-string/jumbo v20, "initializeRecorder"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    return-void

    .line 1527
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 1528
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 1530
    .local v11, "myExtras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mVideoWidth:I

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mVideoHeight:I

    .line 1532
    const-wide/16 v16, 0x0

    .line 1533
    .local v16, "requestedSizeLimit":J
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->closeVideoFileDescriptor()V

    .line 1534
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    if-eqz v11, :cond_2

    .line 1535
    const-string/jumbo v19, "output"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    .line 1536
    .local v18, "saveUri":Landroid/net/Uri;
    if-eqz v18, :cond_1

    .line 1539
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string/jumbo v20, "rw"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v19

    .line 1538
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1540
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1546
    :cond_1
    :goto_0
    const-string/jumbo v19, "android.intent.extra.sizeLimit"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 1548
    .end local v18    # "saveUri":Landroid/net/Uri;
    :cond_2
    new-instance v19, Landroid/media/MediaRecorder;

    invoke-direct/range {v19 .. v19}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1554
    const-string/jumbo v19, "normal"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1560
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/media/CamcorderProfile;->duration:I

    .line 1563
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->setProfileToRecorder()V

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1567
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAudioFocus()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1569
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v19, v0

    const-string/jumbo v20, "pref_audio_focus_key"

    .line 1571
    const v21, 0x7f0e01a2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1570
    invoke-virtual/range {v19 .. v21}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1576
    .local v4, "audioFocus":Ljava/lang/String;
    :goto_2
    const-string/jumbo v19, "videocamera"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "set AudioParam camcorder_mode="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "camcorder_mode="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1580
    .end local v4    # "audioFocus":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoQuality()I

    move-result v14

    .line 1581
    .local v14, "quality":I
    sget-boolean v19, Lcom/android/camera/Device;->IS_MI2:Z

    if-eqz v19, :cond_4

    const-string/jumbo v19, "fast"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    const/16 v19, 0x5

    move/from16 v0, v19

    if-ne v14, v0, :cond_4

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    const v20, 0x3d0900

    invoke-virtual/range {v19 .. v20}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1585
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x408f400000000000L    # 1000.0

    div-double v20, v22, v20

    invoke-virtual/range {v19 .. v21}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1589
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->configMediaRecorder(Landroid/media/MediaRecorder;)V

    .line 1591
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v10

    .line 1592
    .local v10, "loc":Landroid/location/Location;
    if-eqz v10, :cond_6

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    .line 1594
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v21, v0

    .line 1593
    invoke-virtual/range {v19 .. v21}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 1600
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1608
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v20

    const-wide/32 v22, 0x3200000

    sub-long v12, v20, v22

    .line 1609
    .local v12, "maxFileSize":J
    const-wide v20, 0xdac00000L

    cmp-long v19, v20, v12

    if-gez v19, :cond_7

    .line 1610
    const-string/jumbo v19, "videocamera"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "need reduce , now maxFileSize = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    const-wide v12, 0xdac00000L

    .line 1613
    :cond_7
    sget-wide v20, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    cmp-long v19, v12, v20

    if-gez v19, :cond_8

    .line 1614
    sget-wide v12, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    .line 1616
    :cond_8
    const-wide/16 v20, 0x0

    cmp-long v19, v16, v20

    if-lez v19, :cond_9

    cmp-long v19, v16, v12

    if-gez v19, :cond_9

    .line 1617
    move-wide/from16 v12, v16

    .line 1620
    :cond_9
    :try_start_1
    const-string/jumbo v19, "videocamera"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "maxFileSize = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1629
    :goto_4
    const-string/jumbo v19, "slow"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/VideoModule;->setHFRSpeed(Landroid/media/MediaRecorder;I)V

    .line 1640
    :goto_5
    const/4 v15, 0x0

    .line 1641
    .local v15, "rotation":I
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    move/from16 v20, v0

    aget-object v8, v19, v20

    .line 1642
    .local v8, "info":Landroid/hardware/Camera$CameraInfo;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    .line 1643
    iget v0, v8, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 1644
    iget v0, v8, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x168

    move/from16 v19, v0

    move/from16 v0, v19

    rem-int/lit16 v15, v0, 0x168

    .line 1651
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1652
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mOrientationCompensation:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mOrientationCompensationAtRecordStart:I

    .line 1655
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1522
    return-void

    .line 1541
    .end local v8    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v10    # "loc":Landroid/location/Location;
    .end local v12    # "maxFileSize":J
    .end local v14    # "quality":I
    .end local v15    # "rotation":I
    .restart local v18    # "saveUri":Landroid/net/Uri;
    :catch_0
    move-exception v6

    .line 1543
    .local v6, "ex":Ljava/io/FileNotFoundException;
    const-string/jumbo v19, "videocamera"

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1557
    .end local v6    # "ex":Ljava/io/FileNotFoundException;
    .end local v18    # "saveUri":Landroid/net/Uri;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/media/CamcorderProfile;->audioCodec:I

    goto/16 :goto_1

    .line 1574
    :cond_b
    const v19, 0x7f0e01a8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "audioFocus":Ljava/lang/String;
    goto/16 :goto_2

    .line 1603
    .end local v4    # "audioFocus":Ljava/lang/String;
    .restart local v10    # "loc":Landroid/location/Location;
    .restart local v14    # "quality":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/camera/module/VideoModule;->generateVideoFilename(I)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1632
    .restart local v12    # "maxFileSize":J
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/VideoModule;->setHFRSpeed(Landroid/media/MediaRecorder;I)V

    goto/16 :goto_5

    .line 1646
    .restart local v8    # "info":Landroid/hardware/Camera$CameraInfo;
    .restart local v15    # "rotation":I
    :cond_e
    iget v0, v8, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    rem-int/lit16 v15, v0, 0x168

    goto/16 :goto_6

    .line 1649
    :cond_f
    iget v15, v8, Landroid/hardware/Camera$CameraInfo;->orientation:I

    goto/16 :goto_6

    .line 1656
    :catch_1
    move-exception v5

    .line 1657
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v19, "videocamera"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "prepare failed for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1658
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    .line 1659
    new-instance v19, Ljava/lang/RuntimeException;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 1622
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v15    # "rotation":I
    :catch_2
    move-exception v7

    .local v7, "exception":Ljava/lang/RuntimeException;
    goto/16 :goto_4
.end method

.method private insertPostfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "postfix"    # Ljava/lang/String;

    .prologue
    .line 1724
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1725
    .local v0, "sBuffer":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1726
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isAudioFocusPopupVisible(Landroid/view/View;)Z
    .locals 2
    .param p1, "popup"    # Landroid/view/View;

    .prologue
    .line 1976
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    .line 1977
    check-cast p1, Lcom/android/camera/ui/V6AbstractSettingPopup;

    .end local p1    # "popup":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1978
    .local v0, "popupKey":Ljava/lang/String;
    const-string/jumbo v1, "pref_audio_focus_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1980
    .end local v0    # "popupKey":Ljava/lang/String;
    .restart local p1    # "popup":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isSelectingCapturedVideo()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 615
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isVideoProcessing()Z
    .locals 1

    .prologue
    .line 2323
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule$SavingTask;->isAlive()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 2357
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2358
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2359
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2356
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    .line 2353
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2352
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 18
    .param p0, "milliSeconds"    # J
    .param p2, "displayCentiSeconds"    # Z

    .prologue
    .line 2363
    const-wide/16 v14, 0x3e8

    div-long v10, p0, v14

    .line 2364
    .local v10, "seconds":J
    const-wide/16 v14, 0x3c

    div-long v2, v10, v14

    .line 2365
    .local v2, "minutes":J
    const-wide/16 v14, 0x3c

    div-long v0, v2, v14

    .line 2366
    .local v0, "hours":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v0

    sub-long v6, v2, v14

    .line 2367
    .local v6, "remainderMinutes":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v2

    sub-long v8, v10, v14

    .line 2369
    .local v8, "remainderSeconds":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2372
    .local v12, "timeStringBuilder":Ljava/lang/StringBuilder;
    const-wide/16 v14, 0x0

    cmp-long v13, v0, v14

    if-lez v13, :cond_1

    .line 2373
    const-wide/16 v14, 0xa

    cmp-long v13, v0, v14

    if-gez v13, :cond_0

    .line 2374
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2376
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2378
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2382
    :cond_1
    const-wide/16 v14, 0xa

    cmp-long v13, v6, v14

    if-gez v13, :cond_2

    .line 2383
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2385
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2386
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2389
    const-wide/16 v14, 0xa

    cmp-long v13, v8, v14

    if-gez v13, :cond_3

    .line 2390
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2392
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2395
    if-eqz p2, :cond_5

    .line 2396
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2397
    const-wide/16 v14, 0x3e8

    mul-long/2addr v14, v10

    sub-long v14, p0, v14

    const-wide/16 v16, 0xa

    div-long v4, v14, v16

    .line 2398
    .local v4, "remainderCentiSeconds":J
    const-wide/16 v14, 0xa

    cmp-long v13, v4, v14

    if-gez v13, :cond_4

    .line 2399
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2401
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2404
    .end local v4    # "remainderCentiSeconds":J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onFrameLayoutChange(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 3130
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->onLayoutChange(II)V

    .line 3131
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3132
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setRenderSize(II)V

    .line 3133
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    .line 3134
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v1

    .line 3135
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v2

    .line 3133
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManagerSimple;->setRenderSize(II)V

    .line 3136
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    .line 3139
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3140
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

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

    .line 3129
    :cond_1
    return-void
.end method

.method private onPreviewStart()V
    .locals 6

    .prologue
    const/16 v3, 0xe

    .line 1418
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-eqz v2, :cond_0

    .line 1419
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->animateModuleChangeAfter()V

    .line 1421
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->onCameraOpen()V

    .line 1422
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v1

    .line 1423
    .local v1, "minAe":I
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    .line 1424
    .local v0, "maxAe":I
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v2

    invoke-virtual {v2, p0, v1, v0}, Lcom/android/camera/ui/FocusView;->initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;II)V

    .line 1425
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateMutexModePreference()V

    .line 1426
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1427
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1429
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 1417
    .end local v0    # "maxAe":I
    .end local v1    # "minAe":I
    :cond_0
    return-void
.end method

.method private onRestartVideoRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1895
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    if-nez v0, :cond_0

    .line 1896
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 1897
    new-instance v0, Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/module/VideoModule$SavingTask;-><init>(Lcom/android/camera/module/VideoModule;ZLcom/android/camera/module/VideoModule$SavingTask;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    .line 1898
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule$SavingTask;->start()V

    .line 1894
    :cond_0
    return-void
.end method

.method private onSettingsBack()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 1261
    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    .line 1262
    .local v0, "cm":Lcom/android/camera/ChangeManager;
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1263
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 1264
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->restorePreferences()V

    .line 1260
    :cond_0
    :goto_0
    return-void

    .line 1265
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1266
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 1267
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method private onStereoModeChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3449
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 3450
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    .line 3451
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3452
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->cancelAutoFocus()V

    .line 3454
    :cond_0
    new-instance v0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$StereoSwitchThread;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    .line 3455
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->start()V

    .line 3448
    return-void
.end method

.method private onStopVideoRecording(Z)V
    .locals 0
    .param p1, "sync"    # Z

    .prologue
    .line 640
    if-eqz p1, :cond_0

    .line 641
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoOnPause()V

    .line 639
    :goto_0
    return-void

    .line 643
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    goto :goto_0
.end method

.method private pauseVideoRecording()V
    .locals 6

    .prologue
    .line 3325
    const-string/jumbo v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pauseVideoRecording() mRecorderBusy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPauseRecordingButton()Lcom/android/camera/ui/V6PauseRecordingButton;

    move-result-object v1

    const v2, 0x7f0200d4

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PauseRecordingButton;->setImageResource(I)V

    .line 3327
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    if-eqz v1, :cond_1

    .line 3324
    :cond_0
    :goto_0
    return-void

    .line 3329
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->pauseMediaRecorder(Landroid/media/MediaRecorder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3333
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/VideoModule;->mRecordingStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    .line 3334
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    .line 3335
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3336
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    .line 3337
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    goto :goto_0

    .line 3330
    :catch_0
    move-exception v0

    .line 3331
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "videocamera"

    const-string/jumbo v2, "Could not pause media recorder. "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private prepareUIByPreviewSize()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 922
    sget-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 927
    :cond_0
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    if-eq v1, v0, :cond_1

    .line 928
    iput v1, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    .line 929
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;III)V

    .line 930
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->changePreviewSurfaceSize()V

    .line 933
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    .line 934
    const/16 v1, 0x10

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v1

    .line 933
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewFrame;->setAspectRatio(F)V

    .line 921
    return-void

    .line 923
    :cond_2
    iput v1, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    .line 924
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 5

    .prologue
    const v4, 0x7f0e01a2

    const/4 v3, 0x0

    .line 1667
    const-string/jumbo v0, "videocamera"

    const-string/jumbo v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1669
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->cleanupEmptyFile()V

    .line 1670
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1671
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1672
    iput-object v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1674
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1675
    const-string/jumbo v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restore AudioParam camcorder_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "camcorder_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1678
    :cond_1
    iput-object v3, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1666
    return-void
.end method

.method private releaseResources()V
    .locals 1

    .prologue
    .line 3385
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 3386
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    .line 3387
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataAnalytics;->uploadToServer()V

    .line 3388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mWaitForRelease:Z

    .line 3384
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2347
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2348
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2349
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2346
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 5

    .prologue
    .line 938
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    aget-object v1, v2, v3

    .line 939
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 942
    .local v0, "degrees":I
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, v0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    .line 943
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    .line 944
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 943
    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6PreviewFrame;->setAspectRatio(F)V

    .line 937
    :goto_0
    return-void

    .line 947
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    .line 948
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 947
    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6PreviewFrame;->setAspectRatio(F)V

    goto :goto_0
.end method

.method private restoreMusicSound()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 3564
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mOriginalMusicVolume:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 3565
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 3567
    :cond_0
    iput v1, p0, Lcom/android/camera/module/VideoModule;->mOriginalMusicVolume:I

    .line 3568
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3563
    return-void
.end method

.method private restorePreferences()V
    .locals 1

    .prologue
    .line 2771
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2772
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->setZoomValue(I)V

    .line 2774
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FlashButton;->reloadPreference()V

    .line 2775
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->reloadPreferences()V

    .line 2776
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    .line 2769
    return-void
.end method

.method private setProfileToRecorder()V
    .locals 3

    .prologue
    .line 3465
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 3466
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 3467
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 3468
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 3469
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 3473
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    if-ltz v0, :cond_0

    .line 3474
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 3475
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 3476
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 3477
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 3464
    :cond_0
    return-void
.end method

.method private showAlert()V
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 2171
    const/4 v0, 0x0

    .line 2172
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_2

    .line 2173
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 2174
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v4

    .line 2173
    invoke-static {v1, v4}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2179
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2182
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensationAtRecordStart:I

    neg-int v4, v1

    .line 2183
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v5

    if-ne v1, v5, :cond_3

    move v1, v2

    .line 2182
    :goto_1
    invoke-static {v0, v4, v1}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2184
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2185
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2187
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewPlayView()Lcom/android/camera/ui/RotateImageView;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2189
    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->ignoreTouchEvent(Z)V

    .line 2190
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->hide()V

    .line 2191
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/V6PreviewPage;->setPopupVisible(Z)V

    .line 2192
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    invoke-virtual {v1, v6, v7, v2}, Lcom/android/camera/ui/V6ShutterButton;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 2193
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v1

    invoke-virtual {v1, v6, v7, v2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 2194
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 2195
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopControlPanel()Lcom/android/camera/ui/TopControlPanel;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/ui/TopControlPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 2170
    return-void

    .line 2175
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2176
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2177
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v4

    .line 2176
    invoke-static {v1, v4}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    move v1, v3

    .line 2183
    goto/16 :goto_1
.end method

.method private showFirstUseHintIfNeeded()V
    .locals 4

    .prologue
    .line 2898
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2900
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/16 v1, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2896
    :cond_0
    return-void
.end method

.method private showRecordingUI(Z)V
    .locals 14
    .param p1, "recording"    # Z

    .prologue
    const/16 v13, 0x8

    const/16 v12, 0x64

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x1

    .line 1994
    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mRecordingUIShown:Z

    .line 1995
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/V6SettingPage;->getCurrentPopup()Landroid/view/View;

    move-result-object v2

    .line 1996
    .local v2, "popup":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/android/camera/module/VideoModule;->isAudioFocusPopupVisible(Landroid/view/View;)Z

    move-result v0

    .line 1997
    .local v0, "isAudioFocusPopupShown":Z
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v1

    .line 1998
    .local v1, "isFullScreen":Z
    if-eqz p1, :cond_7

    .line 1999
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v7

    const-wide/16 v8, 0xc8

    const v10, 0x7f02013e

    invoke-virtual {v7, v10, v8, v9}, Lcom/android/camera/ui/V6ShutterButton;->changeImageWithAnimation(IJ)V

    .line 2000
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Lcom/android/camera/ui/V6RecordingTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 2001
    if-eqz v0, :cond_4

    .line 2002
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/V6PreviewPage;->showPopupWithoutExitView()V

    .line 2003
    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 2004
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getPopupParentLayout()Landroid/view/ViewGroup;

    move-result-object v3

    .line 2005
    .local v3, "popupParentLayout":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 2006
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->computePopupTransY()I

    move-result v5

    .line 2007
    .local v5, "transY":I
    int-to-float v7, v5

    invoke-virtual {v3, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 2009
    .end local v5    # "transY":I
    :cond_0
    if-eqz v1, :cond_1

    .line 2010
    check-cast v2, Lcom/android/camera/ui/GridSettingTextPopup;

    .line 2011
    .end local v2    # "popup":Landroid/view/View;
    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v7}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080028

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 2010
    invoke-virtual {v2, v7}, Lcom/android/camera/ui/GridSettingTextPopup;->shrink(I)V

    .line 2020
    .end local v3    # "popupParentLayout":Landroid/view/View;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    .line 2021
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getBottomControlPanel()Lcom/android/camera/ui/BottomControlPanel;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/camera/ui/BottomControlPanel;->setBackgroundVisible(Z)V

    .line 2022
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 2023
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getTopControlPanel()Lcom/android/camera/ui/TopControlPanel;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/camera/ui/TopControlPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 2026
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    move v4, v6

    .line 2027
    .local v4, "statusBarVisible":Z
    :cond_2
    if-eqz v4, :cond_3

    .line 2028
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v7

    new-instance v8, Lcom/android/camera/module/VideoModule$6;

    invoke-direct {v8, p0}, Lcom/android/camera/module/VideoModule$6;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v7, v8}, Lcom/android/camera/ui/V6SettingsStatusBar;->animateOut(Ljava/lang/Runnable;)V

    .line 2035
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v7

    new-instance v8, Lcom/android/camera/module/VideoModule$7;

    invoke-direct {v8, p0, v4}, Lcom/android/camera/module/VideoModule$7;-><init>(Lcom/android/camera/module/VideoModule;Z)V

    invoke-virtual {v7, v8, v12, v6}, Lcom/android/camera/ui/V6ThumbnailButton;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 2050
    iget-boolean v7, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v7, :cond_6

    .line 2051
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v7

    invoke-virtual {v7, v11, v12, v6}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 1993
    .end local v4    # "statusBarVisible":Z
    :goto_1
    return-void

    .line 2013
    .restart local v2    # "popup":Landroid/view/View;
    :cond_4
    const-string/jumbo v7, "pref_camera_stereo_mode_key"

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2014
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/camera/ui/StereoButton;->showPopup(Z)V

    .line 2015
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/V6PreviewPage;->showPopupWithoutExitView()V

    .line 2016
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/StereoButton;->getPopup()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2018
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/camera/ui/V6PreviewPage;->setPopupVisible(Z)V

    goto/16 :goto_0

    .line 2053
    .end local v2    # "popup":Landroid/view/View;
    .restart local v4    # "statusBarVisible":Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v7

    invoke-virtual {v7, v11, v12, v6}, Lcom/android/camera/ui/V6ModulePicker;->animateOut(Ljava/lang/Runnable;IZ)V

    goto :goto_1

    .line 2056
    .end local v4    # "statusBarVisible":Z
    .restart local v2    # "popup":Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v7

    const-wide/16 v8, 0xc8

    const v10, 0x7f02013d

    invoke-virtual {v7, v10, v8, v9}, Lcom/android/camera/ui/V6ShutterButton;->changeImageWithAnimation(IJ)V

    .line 2057
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/android/camera/ui/V6VideoCaptureButton;->setVisibility(I)V

    .line 2058
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getBottomControlPanel()Lcom/android/camera/ui/BottomControlPanel;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/camera/ui/BottomControlPanel;->setBackgroundVisible(Z)V

    .line 2060
    if-eqz v0, :cond_9

    .line 2061
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getPopupParentLayout()Landroid/view/ViewGroup;

    move-result-object v3

    .line 2062
    .restart local v3    # "popupParentLayout":Landroid/view/View;
    if-eqz v3, :cond_8

    .line 2063
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 2065
    :cond_8
    if-eqz v1, :cond_9

    .line 2066
    check-cast v2, Lcom/android/camera/ui/GridSettingTextPopup;

    .end local v2    # "popup":Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/camera/ui/GridSettingTextPopup;->restoreFromShrink()V

    .line 2069
    .end local v3    # "popupParentLayout":Landroid/view/View;
    :cond_9
    if-nez v0, :cond_a

    .line 2070
    const-string/jumbo v7, "pref_camera_stereo_mode_key"

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v7

    .line 2069
    if-eqz v7, :cond_b

    .line 2071
    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/V6ModeExitView;->show()V

    .line 2074
    :cond_b
    iget-boolean v7, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v7, :cond_c

    .line 2075
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/camera/ui/V6PreviewPage;->setPopupVisible(Z)V

    .line 2076
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 2077
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getTopControlPanel()Lcom/android/camera/ui/TopControlPanel;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/camera/ui/TopControlPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 2079
    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v7

    new-instance v8, Lcom/android/camera/module/VideoModule$8;

    invoke-direct {v8, p0}, Lcom/android/camera/module/VideoModule$8;-><init>(Lcom/android/camera/module/VideoModule;)V

    .line 2089
    const/16 v9, 0x96

    .line 2079
    invoke-virtual {v7, v8, v9, v6}, Lcom/android/camera/ui/V6RecordingTimeView;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 2091
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getPauseRecordingButton()Lcom/android/camera/ui/V6PauseRecordingButton;

    move-result-object v7

    new-instance v8, Lcom/android/camera/module/VideoModule$9;

    invoke-direct {v8, p0}, Lcom/android/camera/module/VideoModule$9;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v7, v8, v12, v6}, Lcom/android/camera/ui/V6PauseRecordingButton;->animateOut(Ljava/lang/Runnable;IZ)V

    goto/16 :goto_1
.end method

.method private showStoppingUI()V
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecordingUIShown:Z

    if-eqz v0, :cond_0

    .line 449
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->showRecordingUI(Z)V

    .line 451
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->updateLoadUI(Z)V

    .line 447
    return-void
.end method

.method private silenceSounds()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 3544
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 3545
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    .line 3548
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    .line 3549
    const/4 v1, 0x2

    .line 3548
    invoke-virtual {v0, v3, v2, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 3554
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mOriginalMusicVolume:I

    .line 3555
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mOriginalMusicVolume:I

    if-eqz v0, :cond_1

    .line 3556
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 3558
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    const/16 v1, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3543
    :cond_1
    return-void
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 596
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 600
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v1}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_0
    return-void

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startVideoRecording()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1937
    const-string/jumbo v0, "videocamera"

    const-string/jumbo v3, "startVideoRecording"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1939
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    .line 1941
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->silenceSounds()V

    .line 1942
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->prepareRecording()V

    .line 1943
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startRecordVideo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1944
    invoke-virtual {p0, v5}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 1945
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1946
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->restoreMusicSound()V

    .line 1947
    return-void

    :cond_0
    move v0, v2

    .line 1939
    goto :goto_0

    .line 1949
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->ignoreTouchEvent(Z)V

    .line 1952
    const-string/jumbo v0, "videocamera"

    const-string/jumbo v3, "startVideoRecording process done"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1958
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.camera.action.start_video_recording"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1959
    iput-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    .line 1960
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mSavingResult:Z

    .line 1961
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    .line 1962
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mRecordingStartTime:J

    .line 1963
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    .line 1964
    iput v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    .line 1965
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecordingTime:Ljava/lang/String;

    .line 1966
    invoke-direct {p0, v5}, Lcom/android/camera/module/VideoModule;->showRecordingUI(Z)V

    .line 1967
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1968
    const-string/jumbo v0, "videocamera"

    const-string/jumbo v1, "listen call state"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    .line 1971
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->keepScreenOn()V

    .line 1972
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->trackRecordingInfo()V

    .line 1936
    return-void
.end method

.method private stopVideoOnPause()V
    .locals 4

    .prologue
    .line 2327
    const-string/jumbo v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopVideoOnPause() mMediaRecorderRecording =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mRecorderBusy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    const/4 v0, 0x0

    .line 2329
    .local v0, "videoSaving":Z
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_0

    .line 2330
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    .line 2331
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v0

    .line 2336
    .end local v0    # "videoSaving":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 2337
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->waitForRecorder()V

    .line 2342
    :goto_1
    const-string/jumbo v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopVideoOnPause()  videoSaving="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2343
    const-string/jumbo v3, ", mVideoSavingTask="

    .line 2342
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2343
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    .line 2342
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2343
    const-string/jumbo v3, ", mMediaRecorderRecording="

    .line 2342
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2343
    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    .line 2342
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    return-void

    .line 2334
    .restart local v0    # "videoSaving":Z
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    goto :goto_0

    .line 2340
    .end local v0    # "videoSaving":Z
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->closeVideoFileDescriptor()V

    goto :goto_1
.end method

.method private stopVideoRecordingAsync()V
    .locals 3

    .prologue
    .line 2310
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 2311
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->animateHold()V

    .line 2312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 2315
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2316
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2318
    new-instance v0, Lcom/android/camera/module/VideoModule$SavingTask;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/module/VideoModule$SavingTask;-><init>(Lcom/android/camera/module/VideoModule;ZLcom/android/camera/module/VideoModule$SavingTask;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    .line 2319
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule$SavingTask;->start()V

    .line 2309
    return-void

    .line 2310
    :cond_0
    return-void
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 21
    .param p1, "data"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 3095
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 3096
    .local v18, "dateTaken":J
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v13

    .line 3097
    .local v13, "orientation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v20

    .line 3099
    .local v20, "s":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    .line 3100
    invoke-static/range {v18 .. v19}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v5

    .line 3101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3104
    move-object/from16 v0, v20

    iget v10, v0, Landroid/hardware/Camera$Size;->width:I

    .line 3105
    move-object/from16 v0, v20

    iget v11, v0, Landroid/hardware/Camera$Size;->height:I

    .line 3111
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getPictureInfo()Lcom/android/camera/PictureInfo;

    move-result-object v17

    .line 3102
    const/4 v8, 0x0

    .line 3106
    const/4 v12, 0x0

    .line 3108
    const/4 v14, 0x0

    .line 3109
    const/4 v15, 0x0

    .line 3110
    const/16 v16, 0x1

    move-object/from16 v4, p1

    move-object/from16 v9, p2

    .line 3099
    invoke-virtual/range {v3 .. v17}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    .line 3112
    move-object/from16 v0, v20

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, v20

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    if-eqz p2, :cond_0

    const/4 v7, 0x1

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/module/VideoModule;->trackPictureTaken(IZIIZ)V

    .line 3094
    return-void

    .line 3112
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2838
    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v4, :cond_0

    return-void

    .line 2839
    :cond_0
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2840
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 2842
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/camera/module/VideoModule;->updateStereoSettings(Z)V

    .line 2843
    const-string/jumbo v4, "videocamera"

    const-string/jumbo v7, "Start to switch camera."

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    iget v4, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    iput v4, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    .line 2845
    iput v8, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    .line 2846
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v7, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-static {v4, v7}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 2847
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->changeRequestOrientation()V

    .line 2848
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->resetZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 2849
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 2850
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getPreferencesLocalId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 2851
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v5}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 2852
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v4

    invoke-virtual {v4, v8, v6}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 2853
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 2854
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->updatePreferenceGroup()V

    .line 2855
    new-instance v0, Lcom/android/camera/module/BaseModule$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 2856
    .local v0, "cameraOpenThread":Lcom/android/camera/module/BaseModule$CameraOpenThread;
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;->start()V

    .line 2858
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2862
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->hasCameraException()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2863
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onCameraException()V

    .line 2864
    return-void

    .line 2859
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 2867
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onCameraOpen()V

    .line 2868
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeCapabilities()V

    .line 2869
    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v8

    if-ne v4, v8, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Lcom/android/camera/FocusManagerSimple;->setMirror(Z)V

    .line 2870
    invoke-direct {p0, v5}, Lcom/android/camera/module/VideoModule;->updateStereoSettings(Z)V

    .line 2871
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 2872
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    .line 2873
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->onCameraOpen()V

    .line 2874
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v3

    .line 2875
    .local v3, "minAe":I
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v2

    .line 2876
    .local v2, "maxAe":I
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v4

    invoke-virtual {v4, p0, v3, v2}, Lcom/android/camera/ui/FocusView;->initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;II)V

    .line 2879
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->initializeZoom()V

    .line 2880
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->initializeExposureCompensation()V

    .line 2881
    iget v4, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensation:I

    invoke-virtual {p0, v4, v6}, Lcom/android/camera/module/VideoModule;->setOrientationIndicator(IZ)V

    .line 2882
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateMutexModePreference()V

    .line 2883
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showFirstUseHintIfNeeded()V

    .line 2886
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2837
    return-void

    .end local v2    # "maxAe":I
    .end local v3    # "minAe":I
    :cond_3
    move v4, v6

    .line 2869
    goto :goto_1
.end method

.method private switchToOtherMode(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 2718
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2719
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->switchToOtherModule(I)V

    .line 2720
    const/4 v0, 0x1

    return v0
.end method

.method private trackRecordingInfo()V
    .locals 2

    .prologue
    .line 3398
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "video_recorded_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 3399
    const-string/jumbo v0, "fast"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3400
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "video_fast_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 3406
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 3407
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "video_quality_720_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 3415
    :goto_1
    const-string/jumbo v0, "torch"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3416
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "video_torch_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 3418
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3419
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "video_front_camera_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 3422
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_4

    .line 3423
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->isRecordLocation()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3424
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3425
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "longitude"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 3426
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "video_with_location_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 3430
    :goto_2
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "video_with_location_on_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 3397
    :cond_4
    :goto_3
    return-void

    .line 3401
    :cond_5
    const-string/jumbo v0, "slow"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3402
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "video_slow_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3403
    :cond_6
    const-string/jumbo v0, "pref_video_hdr_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3404
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "video_hdr_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3408
    :cond_7
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 3409
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "video_quality_480_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3410
    :cond_8
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    .line 3411
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "video_quality_1080_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3413
    :cond_9
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "video_quality_4k_recording_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3428
    :cond_a
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "video_without_location_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_2

    .line 3432
    :cond_b
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "video_with_location_off_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 2

    .prologue
    .line 3156
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mContinuousFocusSupported:Z

    if-eqz v0, :cond_0

    .line 3157
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "continuous-video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3158
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 3155
    :cond_0
    :goto_0
    return-void

    .line 3160
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0
.end method

.method private updateMotionFocusManager()V
    .locals 3

    .prologue
    .line 2679
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    .line 2680
    const-string/jumbo v1, "auto"

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2679
    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    .line 2678
    return-void
.end method

.method private updateMutexModePreference()V
    .locals 3

    .prologue
    .line 2890
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2891
    .local v0, "hdr":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2892
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    .line 2889
    :cond_0
    return-void
.end method

.method private updateParametersAfterRecording()V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 721
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 722
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 723
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMovieSolidOn(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 722
    if-eqz v0, :cond_2

    .line 724
    const-string/jumbo v0, "videocamera"

    const-string/jumbo v1, "set video stabilization to false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 726
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 727
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->setVideoStabilizationCropped(Z)V

    .line 719
    :cond_2
    return-void
.end method

.method private updateRecordingTime()V
    .locals 24

    .prologue
    .line 2417
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 2418
    return-void

    .line 2420
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 2421
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/module/VideoModule;->mRecordingStartTime:J

    move-wide/from16 v20, v0

    sub-long v8, v12, v20

    .line 2422
    .local v8, "delta":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 2423
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    .line 2428
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 2429
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v17, v0

    const v20, 0xea60

    sub-int v17, v17, v20

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v17, v8, v20

    if-ltz v17, :cond_7

    const/4 v6, 0x1

    .line 2431
    .local v6, "countdownRemainingTime":Z
    :goto_0
    move-wide v10, v8

    .line 2432
    .local v10, "deltaAdjusted":J
    if-eqz v6, :cond_2

    .line 2433
    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v22, v22, v10

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    const-wide/16 v22, 0x3e7

    add-long v10, v20, v22

    .line 2437
    :cond_2
    const-wide/16 v14, 0x3e8

    .line 2438
    .local v14, "targetNextUpdateDelay":J
    const-string/jumbo v17, "normal"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 2439
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v10, v11, v0}, Lcom/android/camera/module/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v16

    .line 2468
    .local v16, "text":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6RecordingTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 2469
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/VideoModule;->mRecordingTime:Ljava/lang/String;

    .line 2471
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mRecordingTimeCountsDown:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v6, :cond_4

    .line 2474
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/camera/module/VideoModule;->mRecordingTimeCountsDown:Z

    .line 2477
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    move/from16 v17, v0

    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 2478
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    move/from16 v17, v0

    rsub-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    .line 2479
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    move/from16 v17, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 2480
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v17

    const/16 v20, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6RecordingTimeView;->setVisibility(I)V

    .line 2491
    :cond_5
    :goto_2
    const-wide/16 v4, 0x1f4

    .line 2492
    .local v4, "actualNextUpdateDelay":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 2493
    rem-long v20, v8, v14

    sub-long v4, v14, v20

    .line 2495
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    .line 2496
    const/16 v20, 0x3

    .line 2495
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2416
    return-void

    .line 2429
    .end local v4    # "actualNextUpdateDelay":J
    .end local v6    # "countdownRemainingTime":Z
    .end local v10    # "deltaAdjusted":J
    .end local v14    # "targetNextUpdateDelay":J
    .end local v16    # "text":Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2428
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2441
    .restart local v6    # "countdownRemainingTime":Z
    .restart local v10    # "deltaAdjusted":J
    .restart local v14    # "targetNextUpdateDelay":J
    :cond_9
    const-wide/16 v18, 0x0

    .line 2442
    .local v18, "timeBetweenFrameMs":D
    const-string/jumbo v17, "fast"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 2443
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    .line 2444
    move-wide/from16 v0, v18

    double-to-long v14, v0

    .line 2456
    :cond_a
    :goto_3
    const-wide/16 v20, 0x0

    cmpl-double v17, v18, v20

    if-eqz v17, :cond_c

    .line 2457
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v8, v9, v1, v2}, Lcom/android/camera/module/VideoModule;->getSpeedRecordVideoLength(JD)J

    move-result-wide v20

    .line 2458
    const-string/jumbo v17, "fast"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 2457
    move-wide/from16 v0, v20

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/camera/module/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v16

    .line 2460
    .restart local v16    # "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mRecordingTime:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 2461
    move-wide/from16 v0, v18

    double-to-long v14, v0

    goto/16 :goto_1

    .line 2445
    .end local v16    # "text":Ljava/lang/String;
    :cond_b
    const-string/jumbo v17, "slow"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isShowHFRDuration()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 2447
    sget-object v17, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v7

    .line 2448
    .local v7, "hfr":Ljava/lang/String;
    if-eqz v7, :cond_a

    const-string/jumbo v17, "off"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 2449
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    const-wide v22, 0x408f400000000000L    # 1000.0

    div-double v18, v22, v20

    .line 2450
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getNormalVideoFrameRate()I

    move-result v17

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    div-int v17, v17, v20

    move/from16 v0, v17

    int-to-long v14, v0

    goto/16 :goto_3

    .line 2464
    .end local v7    # "hfr":Ljava/lang/String;
    :cond_c
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v10, v11, v0}, Lcom/android/camera/module/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "text":Ljava/lang/String;
    goto/16 :goto_1

    .line 2482
    .end local v18    # "timeBetweenFrameMs":D
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v17

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6RecordingTimeView;->setVisibility(I)V

    .line 2485
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 2486
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    goto/16 :goto_2
.end method

.method private updateSettingPage()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 2808
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoQuality()I

    move-result v0

    .line 2809
    .local v0, "quality":I
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    if-eq v0, v1, :cond_1

    .line 2810
    if-ge v0, v2, :cond_0

    .line 2811
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    if-lt v1, v2, :cond_1

    .line 2812
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPage;->updatePreference()V

    .line 2807
    :cond_1
    return-void
.end method

.method private updateStereoSettings(Z)V
    .locals 4
    .param p1, "open"    # Z

    .prologue
    .line 3529
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3530
    if-eqz p1, :cond_1

    .line 3531
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 3532
    const-string/jumbo v2, "pref_camera_video_flashmode_key"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "off"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 3531
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    .line 3528
    :cond_0
    :goto_0
    return-void

    .line 3534
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    goto :goto_0
.end method

.method private waitStereoSwitchThread()V
    .locals 2

    .prologue
    .line 3518
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    if-eqz v1, :cond_0

    .line 3519
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->cancel()V

    .line 3520
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->join()V

    .line 3521
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3516
    :cond_0
    :goto_0
    return-void

    .line 3523
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method


# virtual methods
.method protected animateSwitchCamera()V
    .locals 4

    .prologue
    .line 2914
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2915
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2913
    :goto_0
    return-void

    .line 2918
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2919
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 2920
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;III)V

    .line 2921
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    goto :goto_0
.end method

.method protected closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1190
    const-string/jumbo v0, "videocamera"

    const-string/jumbo v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1193
    const-string/jumbo v0, "videocamera"

    const-string/jumbo v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    return-void

    .line 1197
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->stopPreview()V

    .line 1198
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1199
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 1200
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isGoingToCamera2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1201
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->immediateRelease()V

    .line 1205
    :goto_0
    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 1206
    iput-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    .line 1207
    iput-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    .line 1189
    return-void

    .line 1203
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    goto :goto_0
.end method

.method protected configMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 0
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;

    .prologue
    .line 3395
    return-void
.end method

.method protected enterMutexMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2958
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensation:I

    invoke-virtual {p0, v0, v3}, Lcom/android/camera/module/VideoModule;->setOrientationIndicator(IZ)V

    .line 2959
    invoke-virtual {p0, v3}, Lcom/android/camera/module/VideoModule;->setZoomValue(I)V

    .line 2961
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 2962
    const-string/jumbo v2, "pref_camera_whitebalance_key"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v4, v1, v2

    .line 2963
    const-string/jumbo v2, "pref_camera_coloreffect_key"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v4, v1, v2

    .line 2961
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    .line 2965
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    .line 2966
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 2957
    return-void
.end method

.method protected exitMutexMode()V
    .locals 1

    .prologue
    .line 2970
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    .line 2971
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    .line 2972
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 2969
    return-void
.end method

.method protected fetchProfile(II)Landroid/media/CamcorderProfile;
    .locals 1
    .param p1, "cameraId"    # I
    .param p2, "quality"    # I

    .prologue
    .line 854
    invoke-static {p1, p2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0
.end method

.method protected getCameraRotation()I
    .locals 2

    .prologue
    .line 648
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method protected getNormalVideoFrameRate()I
    .locals 2

    .prologue
    .line 869
    const-string/jumbo v0, "slow"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    return v0

    .line 873
    :cond_0
    const/16 v0, 0x1e

    return v0
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
    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 583
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    const-string/jumbo v1, "pref_video_speed_fast_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    const-string/jumbo v1, "pref_video_speed_slow_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 589
    const-string/jumbo v1, "pref_audio_focus_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    :cond_1
    return-object v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 1273
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/module/BaseModule;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1274
    return v9

    .line 1276
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 1414
    return v5

    .line 1278
    :sswitch_0
    const-string/jumbo v4, "pref_camera_stereo_mode_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1279
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const-string/jumbo v5, "pref_camera_flashmode_key"

    invoke-virtual {v4, v5}, Lcom/android/camera/preferences/SettingsOverrider;->removeSavedSetting(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/camera/ui/StereoButton;->switchOffStereo(Z)V

    .line 1281
    return v9

    .line 1283
    :cond_1
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1292
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    .line 1293
    return v9

    .line 1284
    :cond_3
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isSupportedTorch()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1285
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ModeExitView;->isExitButtonShown()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1286
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/camera/ui/V6ModeExitView;->clearExitButtonClickListener(Z)V

    .line 1290
    :goto_0
    return v9

    .line 1288
    :cond_4
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_0

    .line 1296
    :sswitch_1
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/camera/module/VideoModule;->onCameraPickerClicked(I)Z

    move-result v4

    return v4

    .line 1299
    .restart local p3    # "extra1":Ljava/lang/Object;
    :sswitch_2
    invoke-virtual {p0, v6}, Lcom/android/camera/module/VideoModule;->onThumbnailClicked(Landroid/view/View;)V

    .line 1300
    return v9

    .line 1303
    :sswitch_3
    if-nez p1, :cond_6

    .line 1304
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onShutterButtonClick()V

    .line 1316
    .end local p3    # "extra1":Ljava/lang/Object;
    :cond_5
    :goto_1
    return v9

    .line 1305
    .restart local p3    # "extra1":Ljava/lang/Object;
    :cond_6
    if-ne p1, v9, :cond_7

    .line 1306
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onShutterButtonLongClick()Z

    goto :goto_1

    .line 1307
    :cond_7
    const/4 v4, 0x2

    if-ne p1, v4, :cond_8

    .line 1308
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v3, p3

    .line 1309
    check-cast v3, Landroid/graphics/Point;

    .local v3, "start":Landroid/graphics/Point;
    move-object v0, p4

    .line 1310
    check-cast v0, Landroid/graphics/Point;

    .line 1311
    .local v0, "center":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getSmartShutterButton()Lcom/android/camera/ui/V6SmartShutterButton;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    iget v7, v0, Landroid/graphics/Point;->x:I

    iget v8, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/camera/ui/V6SmartShutterButton;->flyin(IIII)V

    goto :goto_1

    .line 1313
    .end local v0    # "center":Landroid/graphics/Point;
    .end local v3    # "start":Landroid/graphics/Point;
    :cond_8
    const/4 v4, 0x3

    if-ne p1, v4, :cond_5

    .line 1314
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/camera/module/VideoModule;->onShutterButtonFocus(Z)V

    goto :goto_1

    .line 1319
    .restart local p3    # "extra1":Ljava/lang/Object;
    :sswitch_4
    new-instance v2, Lcom/android/camera/module/VideoModule$5;

    invoke-direct {v2, p0, p3}, Lcom/android/camera/module/VideoModule$5;-><init>(Lcom/android/camera/module/VideoModule;Ljava/lang/Object;)V

    .line 1326
    .local v2, "r":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 1327
    invoke-virtual {p0, v9}, Lcom/android/camera/module/VideoModule;->ignoreTouchEvent(Z)V

    .line 1328
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 1329
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/ui/BottomControlLowerPanel;->animationSwitchToCamera(Ljava/lang/Runnable;)V

    .line 1330
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->switchModule()V

    .line 1331
    return v9

    .line 1334
    .end local v2    # "r":Ljava/lang/Runnable;
    :sswitch_5
    if-nez p1, :cond_9

    .line 1335
    invoke-virtual {p0, v6}, Lcom/android/camera/module/VideoModule;->onReviewDoneClicked(Landroid/view/View;)V

    .line 1339
    :goto_2
    return v9

    .line 1337
    :cond_9
    invoke-virtual {p0, v6}, Lcom/android/camera/module/VideoModule;->onReviewCancelClicked(Landroid/view/View;)V

    goto :goto_2

    .line 1342
    :sswitch_6
    if-nez p1, :cond_b

    .line 1343
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v4, :cond_a

    move-object v1, p3

    .line 1344
    check-cast v1, Landroid/graphics/Point;

    .line 1345
    .local v1, "p":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    .line 1350
    .end local v1    # "p":Landroid/graphics/Point;
    .end local p3    # "extra1":Ljava/lang/Object;
    .end local p4    # "extra2":Ljava/lang/Object;
    :cond_a
    :goto_3
    return v9

    .line 1347
    .restart local p3    # "extra1":Ljava/lang/Object;
    .restart local p4    # "extra2":Ljava/lang/Object;
    :cond_b
    if-ne p1, v9, :cond_a

    .line 1348
    check-cast p3, Landroid/view/View;

    .end local p3    # "extra1":Ljava/lang/Object;
    check-cast p4, Landroid/graphics/Rect;

    .end local p4    # "extra2":Ljava/lang/Object;
    invoke-direct {p0, p3, p4}, Lcom/android/camera/module/VideoModule;->onFrameLayoutChange(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_3

    .line 1353
    .restart local p3    # "extra1":Ljava/lang/Object;
    .restart local p4    # "extra2":Ljava/lang/Object;
    :sswitch_7
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startPlayVideoActivity()V

    .line 1354
    return v9

    .line 1357
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->switchMutexHDR()V

    .line 1358
    return v9

    .line 1361
    :sswitch_9
    const-string/jumbo v4, "pref_camera_stereo_mode_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1362
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/camera/ui/StereoButton;->switchOffStereo(Z)V

    .line 1363
    return v9

    .line 1366
    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/HdrButton;->updateVisible()V

    .line 1368
    if-ne p1, v7, :cond_e

    .line 1369
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    .line 1379
    :cond_d
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/StereoButton;->updateVisible()V

    .line 1380
    return v9

    .line 1370
    :cond_e
    const/4 v4, 0x6

    if-ne p1, v4, :cond_d

    .line 1371
    const-string/jumbo v4, "pref_video_speed_fast_key"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1372
    const-string/jumbo v4, "pref_video_speed_slow_key"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1371
    if-eqz v4, :cond_10

    .line 1373
    :cond_f
    iput-boolean v9, p0, Lcom/android/camera/module/VideoModule;->mRestartPreview:Z

    .line 1374
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    goto :goto_4

    .line 1375
    :cond_10
    const-string/jumbo v4, "pref_video_hdr_key"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1376
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->switchMutexHDR()V

    goto :goto_4

    .line 1382
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->openSettingActivity()V

    .line 1383
    return v9

    .line 1385
    :sswitch_b
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->capture()Z

    .line 1386
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v4

    const-string/jumbo v5, "capture_nums_video_capture"

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1387
    return v9

    .line 1389
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onPauseButtonClick()V

    .line 1390
    return v9

    .line 1392
    :sswitch_d
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-eqz v4, :cond_12

    .line 1396
    :cond_11
    :goto_5
    return v9

    .line 1393
    :cond_12
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    .line 1394
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onPreviewStart()V

    goto :goto_5

    .line 1399
    :sswitch_e
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->useProperView()V

    .line 1400
    return v9

    .line 1402
    :sswitch_f
    if-ne p1, v7, :cond_13

    .line 1403
    check-cast p3, Ljava/lang/String;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Lcom/android/camera/module/VideoModule;->onSettingValueChanged(Ljava/lang/String;)V

    .line 1412
    :goto_6
    return v9

    .line 1405
    .restart local p3    # "extra1":Ljava/lang/Object;
    :cond_13
    const-string/jumbo v4, "pref_camera_stereo_mode_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1406
    invoke-direct {p0, v9}, Lcom/android/camera/module/VideoModule;->updateStereoSettings(Z)V

    .line 1410
    :goto_7
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onStereoModeChanged()V

    goto :goto_6

    .line 1408
    :cond_14
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v4}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    goto :goto_7

    .line 1276
    :sswitch_data_0
    .sparse-switch
        0x7f09000c -> :sswitch_e
        0x7f09000e -> :sswitch_2
        0x7f090011 -> :sswitch_c
        0x7f090012 -> :sswitch_3
        0x7f090015 -> :sswitch_4
        0x7f090016 -> :sswitch_b
        0x7f09001e -> :sswitch_1
        0x7f090023 -> :sswitch_5
        0x7f090066 -> :sswitch_0
        0x7f090067 -> :sswitch_8
        0x7f09007c -> :sswitch_f
        0x7f090084 -> :sswitch_6
        0x7f09008a -> :sswitch_7
        0x7f09008e -> :sswitch_9
        0x7f090090 -> :sswitch_a
        0x7f09009c -> :sswitch_d
    .end sparse-switch
.end method

.method public isCameraEnabled()Z
    .locals 1

    .prologue
    .line 3371
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    return v0
.end method

.method public isCaptureIntent()Z
    .locals 1

    .prologue
    .line 3482
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method public isMeteringAreaOnly()Z
    .locals 1

    .prologue
    .line 3178
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedMute()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3172
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->isNeedMute()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-nez v2, :cond_1

    .line 3173
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    if-eqz v2, :cond_2

    .line 3172
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3173
    goto :goto_0
.end method

.method protected isProfileExist(ILjava/lang/Integer;)Z
    .locals 1
    .param p1, "cameraId"    # I
    .param p2, "quality"    # Ljava/lang/Integer;

    .prologue
    .line 3392
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    return v0
.end method

.method protected isShowHFRDuration()Z
    .locals 1

    .prologue
    .line 2500
    const/4 v0, 0x1

    return v0
.end method

.method public isVideoRecording()Z
    .locals 1

    .prologue
    .line 1928
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsFromStop:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isZoomEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1932
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    if-nez v1, :cond_0

    .line 1933
    const-string/jumbo v1, "pref_camera_stereo_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1932
    :cond_0
    :goto_0
    return v0

    .line 1933
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyError()V
    .locals 1

    .prologue
    .line 3438
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->notifyError()V

    .line 3440
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3441
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    .line 3442
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3443
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 3437
    :cond_0
    return-void
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 6
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 3052
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 3054
    :cond_1
    const-string/jumbo v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAutoFocusTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/VideoModule;->mFocusStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms focused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3055
    const-string/jumbo v2, " waitforrecording="

    .line 3054
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3055
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2}, Lcom/android/camera/FocusManagerSimple;->isFocusingSnapOnFinish()Z

    move-result v2

    .line 3054
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isFocusingSnapOnFinish()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3057
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    .line 3058
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->record()V

    .line 3060
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_3

    .line 3061
    if-eqz p1, :cond_4

    .line 3062
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    .line 3063
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isNeedMute()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsTouchFocused:Z

    if-eqz v0, :cond_3

    .line 3064
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->playCameraSound(I)V

    .line 3070
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0, p1}, Lcom/android/camera/FocusManagerSimple;->onAutoFocus(Z)V

    .line 3071
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 3051
    return-void

    .line 3067
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showFail()V

    goto :goto_0
.end method

.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "moving"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 3183
    const-string/jumbo v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAutoFocusMoving moving= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3184
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    .line 3182
    :cond_0
    :goto_0
    return-void

    .line 3185
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3186
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 3187
    if-eqz p1, :cond_2

    .line 3188
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showStart()V

    goto :goto_0

    .line 3190
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->isFocusSuccessful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3191
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    goto :goto_0

    .line 3193
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showFail()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1218
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v2, :cond_0

    return v6

    .line 1220
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoModule$StereoSwitchThread;

    if-eqz v2, :cond_1

    .line 1221
    return v7

    .line 1224
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_3

    .line 1225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1226
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/camera/module/VideoModule;->mLastBackPressedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 1227
    iput-wide v0, p0, Lcom/android/camera/module/VideoModule;->mLastBackPressedTime:J

    .line 1228
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const v3, 0x7f0e0121

    invoke-virtual {p0, v3}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1233
    :goto_0
    return v6

    .line 1231
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    goto :goto_0

    .line 1235
    .end local v0    # "now":J
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->onBack()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1236
    return v6

    .line 1240
    :cond_4
    const-string/jumbo v2, "pref_camera_stereo_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1241
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v2

    invoke-virtual {v2, v7, v6, v6}, Lcom/android/camera/ui/StereoButton;->setStereoValue(ZZZ)V

    .line 1242
    return v6

    .line 1246
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1247
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6SettingPage;->resetSettings()Z

    move-result v2

    .line 1246
    if-eqz v2, :cond_6

    .line 1248
    return v6

    .line 1252
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewPage;->isPopupShown()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1253
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v2

    invoke-virtual {v2, v3, v6}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 1254
    return v6

    .line 1257
    :cond_7
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result v2

    return v2
.end method

.method protected onCameraOpen()V
    .locals 0

    .prologue
    .line 3458
    return-void
.end method

.method public onCameraPickerClicked(I)Z
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2818
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2819
    :cond_0
    return v3

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    .line 2818
    if-nez v0, :cond_0

    .line 2821
    const-string/jumbo v0, "videocamera"

    const-string/jumbo v1, "Start to copy texture."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2825
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCopyTexture()V

    .line 2830
    :goto_0
    iput p1, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    .line 2832
    invoke-virtual {p0, v3}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 2833
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    .line 2834
    return v2

    .line 2827
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 2828
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onCreate(Lcom/android/camera/Camera;)V
    .locals 8
    .param p1, "activity"    # Lcom/android/camera/Camera;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 495
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onCreate(Lcom/android/camera/Camera;)V

    .line 496
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->createContentView()V

    .line 497
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 498
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 499
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isRestoring()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 500
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraAppImpl;->resetRestoreFlag()V

    .line 504
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getPreferredCameraId()I

    move-result v4

    iput v4, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    .line 505
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->changeConflictPreference()V

    .line 506
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->changeRequestOrientation()V

    .line 507
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    .line 508
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getPreferencesLocalId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 509
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 510
    invoke-static {v6}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    .line 511
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->onCreate()V

    .line 512
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->useProperView()V

    .line 513
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {v4, v7}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 514
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v4

    const-string/jumbo v7, "open_camera_times_key"

    invoke-virtual {v4, v7}, Lcom/android/camera/CameraDataAnalytics;->trackEventTime(Ljava/lang/String;)V

    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, "cameraOpenThread":Lcom/android/camera/module/BaseModule$CameraOpenThread;
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v2

    .line 517
    .local v2, "launch":Z
    if-eqz v2, :cond_0

    .line 518
    new-instance v0, Lcom/android/camera/module/BaseModule$CameraOpenThread;

    .end local v0    # "cameraOpenThread":Lcom/android/camera/module/BaseModule$CameraOpenThread;
    invoke-direct {v0, p0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 519
    .local v0, "cameraOpenThread":Lcom/android/camera/module/BaseModule$CameraOpenThread;
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;->start()V

    .line 522
    .end local v0    # "cameraOpenThread":Lcom/android/camera/module/BaseModule$CameraOpenThread;
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeMiscControls()V

    .line 525
    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v4, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4, v5}, Lcom/android/camera/Camera;->createCameraScreenNail(ZZ)V

    .line 528
    if-eqz v0, :cond_1

    .line 529
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->hasCameraException()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 535
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onCameraException()V

    .line 536
    return-void

    .line 502
    .end local v2    # "launch":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->resetCameraSettingsIfNeed()V

    goto :goto_0

    .restart local v2    # "launch":Z
    :cond_3
    move v4, v6

    .line 525
    goto :goto_1

    .line 531
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 539
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeFocusManager()V

    .line 540
    if-eqz v2, :cond_7

    .line 541
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onCameraOpen()V

    .line 542
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeCapabilities()V

    .line 543
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 544
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->prepareUIByPreviewSize()V

    .line 545
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 546
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6SurfaceViewFrame;->isSurfaceViewAvailable()Z

    move-result v4

    .line 545
    if-eqz v4, :cond_6

    .line 547
    :cond_5
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/camera/module/VideoModule$4;

    invoke-direct {v4, p0}, Lcom/android/camera/module/VideoModule$4;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 553
    .local v3, "startPreviewThread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 556
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 560
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onPreviewStart()V

    .line 562
    .end local v3    # "startPreviewThread":Ljava/lang/Thread;
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resizeForPreviewAspectRatio()V

    .line 564
    :cond_7
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "android.intent.extra.quickCapture"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mQuickCapture:Z

    .line 565
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/camera/ui/ObjectView;->setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V

    .line 566
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showFirstUseHintIfNeeded()V

    .line 567
    invoke-virtual {p0, v6}, Lcom/android/camera/module/VideoModule;->ignoreTouchEvent(Z)V

    .line 568
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 494
    return-void

    .line 557
    .restart local v3    # "startPreviewThread":Ljava/lang/Thread;
    :catch_1
    move-exception v1

    .restart local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_3
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1797
    const-string/jumbo v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MediaRecorder error. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1800
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    .line 1801
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1796
    :cond_0
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 4
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x0

    .line 3212
    invoke-static {p1}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->convertCameraHardwareFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object v0

    .line 3214
    .local v0, "cameraFaces":[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 3215
    aget-object v1, v0, v3

    iget v1, v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->faceType:I

    const v2, 0xface

    if-ne v1, v2, :cond_0

    .line 3216
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-eqz v1, :cond_0

    .line 3217
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ObjectView;->setObject(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    .line 3211
    :cond_0
    return-void
.end method

.method public onGestureTrack(Landroid/graphics/RectF;Z)Z
    .locals 1
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "up"    # Z

    .prologue
    .line 3202
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3208
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 3202
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    .line 3203
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v0

    .line 3202
    if-eqz v0, :cond_0

    .line 3203
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    .line 3202
    if-eqz v0, :cond_0

    .line 3204
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3205
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 3206
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->initializeObjectTrack(Landroid/graphics/RectF;Z)Z

    move-result v0

    return v0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 4
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x0

    .line 1808
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1809
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    .line 1807
    :cond_0
    :goto_0
    return-void

    .line 1810
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 1811
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 1812
    const-string/jumbo v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reached max size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    const/4 v1, -0x1

    if-ge v1, v0, :cond_2

    .line 1814
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onRestartVideoRecording()V

    goto :goto_0

    .line 1816
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    .line 1817
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->isScreenHintVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1819
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f0e00df

    .line 1820
    const/4 v2, 0x1

    .line 1819
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1436
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 1437
    return v1

    .line 1440
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1468
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1443
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1444
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    .line 1443
    if-eqz v0, :cond_1

    .line 1445
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onShutterButtonClick()V

    .line 1446
    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1447
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v2, "record_times_finger"

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1449
    :cond_2
    return v1

    .line 1456
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1460
    const/16 v2, 0x18

    if-eq p1, v2, :cond_3

    const/16 v2, 0x58

    if-ne p1, v2, :cond_4

    :cond_3
    move v0, v1

    .line 1461
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 1460
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/VideoModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1462
    return v1

    .line 1440
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1480
    sparse-switch p1, :sswitch_data_0

    .line 1486
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1483
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setPressed(Z)V

    .line 1484
    const/4 v0, 0x1

    return v0

    .line 1480
    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onNewIntent()V
    .locals 2

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getPreferredCameraId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    .line 575
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->changeConflictPreference()V

    .line 576
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    .line 577
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getPreferencesLocalId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 573
    return-void
.end method

.method public onObjectStable()V
    .locals 7

    .prologue
    .line 3246
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object v6

    .line 3247
    .local v6, "rect":Landroid/graphics/RectF;
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->canAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3248
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    float-to-int v2, v0

    .line 3249
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v4, v0

    const/4 v5, 0x2

    move-object v0, p0

    .line 3248
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/VideoModule;->autoFocus(IIIII)V

    .line 3245
    :cond_0
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 1

    .prologue
    .line 1104
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseAfterSuper()V

    .line 1103
    return-void

    .line 1105
    :cond_1
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 6

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1037
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseBeforeSuper()V

    .line 1042
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1045
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->waitStereoSwitchThread()V

    .line 1046
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onPause()V

    .line 1047
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_7

    .line 1049
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    .line 1051
    invoke-direct {p0, v3}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    .line 1052
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 1061
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/module/VideoModule;->updateStereoSettings(Z)V

    .line 1069
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->closeVideoFileDescriptor()V

    .line 1071
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1072
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1073
    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1075
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 1076
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resetScreenOn()V

    .line 1077
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1078
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1079
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1080
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1081
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1082
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1083
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1084
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1085
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1086
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1087
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showStoppingUI()V

    .line 1089
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1090
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1091
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1093
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1094
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1098
    :cond_5
    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    .line 1099
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    .line 1036
    return-void

    .line 1043
    :cond_6
    return-void

    .line 1054
    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    :goto_2
    if-nez v0, :cond_9

    .line 1055
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseResources()V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 1054
    goto :goto_2

    .line 1057
    :cond_9
    iput-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mWaitForRelease:Z

    goto/16 :goto_0

    .line 1096
    :cond_a
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public onPauseButtonClick()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3292
    const-string/jumbo v1, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mVideoPauseResumeListener.onClick() mMediaRecorderRecordingPaused="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3293
    const-string/jumbo v5, ",mRecorderBusy = "

    .line 3292
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3293
    iget-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 3292
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3293
    const-string/jumbo v5, ",mMediaRecorderRecording = "

    .line 3292
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3293
    iget-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    .line 3292
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3297
    .local v2, "now":J
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 3298
    :cond_0
    return-void

    .line 3300
    :cond_1
    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    .line 3301
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 3302
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    if-eqz v1, :cond_2

    .line 3303
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPauseRecordingButton()Lcom/android/camera/ui/V6PauseRecordingButton;

    move-result-object v1

    const v4, 0x7f0200d3

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/V6PauseRecordingButton;->setImageResource(I)V

    .line 3305
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->resumeMediaRecorder(Landroid/media/MediaRecorder;)V

    .line 3306
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/camera/module/VideoModule;->mRecordingStartTime:J

    .line 3307
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    .line 3308
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecordingPaused:Z

    .line 3309
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3310
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mRecordingTime:Ljava/lang/String;

    .line 3311
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3320
    :goto_0
    iput-boolean v8, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 3321
    const-string/jumbo v1, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mVideoPauseResumeListener.onClick() end. mRecorderBusy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    return-void

    .line 3312
    :catch_0
    move-exception v0

    .line 3313
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "videocamera"

    const-string/jumbo v4, "Could not start media recorder. "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3314
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    goto :goto_0

    .line 3317
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->pauseVideoRecording()V

    .line 3318
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v4, "video_pause_recording_times_key"

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 2908
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->animateSwitchCamera()V

    .line 2909
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2907
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 960
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isVideoRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 961
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeAfterSuper()V

    .line 962
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mOpenCameraFail:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDisabled:Z

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 963
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 964
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->onResume()V

    .line 969
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mWaitForRelease:Z

    if-eqz v1, :cond_6

    .line 970
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "open_camera_times_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEventTime(Ljava/lang/String;)V

    .line 971
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->openCamera()V

    .line 972
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->hasCameraException()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 973
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onCameraException()V

    .line 974
    return-void

    .line 962
    :cond_4
    return-void

    .line 977
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onCameraOpen()V

    .line 978
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeCapabilities()V

    .line 979
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 980
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resizeForPreviewAspectRatio()V

    .line 981
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showFirstUseHintIfNeeded()V

    .line 984
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    if-eq v1, v4, :cond_6

    .line 985
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 986
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 990
    :cond_6
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/camera/module/VideoModule;->updateStereoSettings(Z)V

    .line 992
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mWaitForRelease:Z

    if-eqz v1, :cond_a

    .line 993
    :cond_7
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 994
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SurfaceViewFrame;->isSurfaceViewAvailable()Z

    move-result v1

    .line 993
    if-eqz v1, :cond_9

    .line 995
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    .line 996
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onPreviewStart()V

    .line 998
    :cond_9
    iput-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mWaitForRelease:Z

    .line 1002
    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->initializeZoom()V

    .line 1003
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->initializeExposureCompensation()V

    .line 1004
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->keepScreenOnAwhile()V

    .line 1008
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1009
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1010
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1011
    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1012
    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1013
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1014
    new-instance v1, Lcom/android/camera/module/VideoModule$MyBroadcastReceiver;

    invoke-direct {v1, p0, v5}, Lcom/android/camera/module/VideoModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$MyBroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1015
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1017
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_b

    .line 1018
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    .line 1021
    :cond_b
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onSettingsBack()V

    .line 1023
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-eqz v1, :cond_c

    .line 1024
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mOnResumeTime:J

    .line 1025
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1028
    :cond_c
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 1029
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 1030
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_d

    .line 1031
    invoke-virtual {p0, v4}, Lcom/android/camera/module/VideoModule;->ignoreTouchEvent(Z)V

    .line 959
    :cond_d
    return-void

    .line 987
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_e
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;I)V

    goto/16 :goto_0
.end method

.method public onResumeBeforeSuper()V
    .locals 0

    .prologue
    .line 955
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeBeforeSuper()V

    .line 954
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isSelectingCapturedVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->deleteCurrentVideo()V

    .line 632
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->hideAlert()V

    .line 629
    :goto_0
    return-void

    .line 634
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    .line 635
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->doReturnToCaller(Z)V

    goto :goto_0
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    .line 625
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->doReturnToCaller(Z)V

    .line 624
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 5

    .prologue
    .line 2782
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v2, :cond_0

    return-void

    .line 2783
    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    monitor-enter v3

    .line 2786
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    monitor-exit v3

    return-void

    .line 2788
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 2789
    .local v0, "recordLocation":Z
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2791
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateSettingPage()V

    .line 2792
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 2794
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2795
    .local v1, "size":Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    if-ne v2, v4, :cond_2

    .line 2796
    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    if-eq v2, v4, :cond_3

    .line 2797
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->stopPreview()V

    .line 2798
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2799
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    .line 2804
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 2780
    return-void

    .line 2796
    :cond_3
    :try_start_2
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mRestartPreview:Z

    .line 2795
    if-nez v2, :cond_2

    .line 2801
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->setCameraParameters()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2783
    .end local v0    # "recordLocation":Z
    .end local v1    # "size":Landroid/hardware/Camera$Size;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onShutterButtonClick()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 674
    const-string/jumbo v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onShutterButtonClick mSwitchingCamera="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 675
    const-string/jumbo v3, " mMediaRecorderRecording="

    .line 674
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 675
    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    .line 674
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 676
    const-string/jumbo v3, " mInStartingFocusRecording="

    .line 674
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 676
    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    .line 674
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iput-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    .line 678
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-nez v1, :cond_0

    .line 679
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ShutterButton;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ShutterButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    .line 685
    .local v0, "stop":Z
    if-eqz v0, :cond_1

    .line 686
    invoke-direct {p0, v4}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    .line 687
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateParametersAfterRecording()V

    .line 704
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/V6ShutterButton;->enableControls(Z)V

    .line 672
    return-void

    .line 681
    .end local v0    # "stop":Z
    :cond_0
    return-void

    .line 689
    .restart local v0    # "stop":Z
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->checkCallingState()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 690
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 691
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 692
    const-string/jumbo v1, "videocamera"

    const-string/jumbo v2, "Storage issue, ignore the start request"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-void

    .line 695
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 697
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v1}, Lcom/android/camera/FocusManagerSimple;->canRecord()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 698
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->record()V

    goto :goto_0

    .line 700
    :cond_4
    const-string/jumbo v1, "videocamera"

    const-string/jumbo v2, "wait for autofocus"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    goto :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 6
    .param p1, "pressed"    # Z

    .prologue
    .line 652
    const-string/jumbo v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShutterButtonFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2}, Lcom/android/camera/FocusManagerSimple;->isInValidFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_2

    .line 664
    :cond_0
    const-string/jumbo v0, "continuous-video"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->isShown()Z

    move-result v0

    .line 664
    if-eqz v0, :cond_1

    .line 668
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 651
    :cond_1
    :goto_0
    return-void

    .line 653
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v0

    .line 653
    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isInValidFocus()Z

    move-result v0

    .line 653
    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 656
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 657
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    .line 658
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->getHeight()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    .line 659
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaWidth()I

    move-result v3

    .line 660
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaHeight()I

    move-result v4

    .line 661
    const/4 v5, 0x4

    move-object v0, p0

    .line 657
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/VideoModule;->autoFocus(IIIII)V

    .line 663
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    goto :goto_0
.end method

.method public onShutterButtonLongClick()Z
    .locals 1

    .prologue
    .line 733
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x1

    .line 2978
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2979
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->isInTapableRect(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    .line 2978
    if-eqz v0, :cond_2

    .line 2980
    :cond_1
    return-void

    .line 2983
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2984
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    .line 2987
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-eqz v0, :cond_4

    .line 2988
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    .line 2991
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 2992
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mIsTouchFocused:Z

    .line 2993
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/VideoModule;->mTouchFocusStartingTime:J

    .line 2994
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaWidth()I

    move-result v3

    .line 2995
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaHeight()I

    move-result v4

    .line 2996
    const/4 v5, 0x3

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 2994
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/VideoModule;->autoFocus(IIIII)V

    .line 2997
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1112
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    .line 1114
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 1115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsFromStop:Z

    .line 1116
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onPauseBeforeSuper()V

    .line 1117
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->pause()V

    .line 1118
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onPauseAfterSuper()V

    .line 1119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsFromStop:Z

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNeedResetGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1123
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseResources()V

    .line 1111
    :cond_1
    return-void
.end method

.method public onStopRecording()V
    .locals 0

    .prologue
    .line 3462
    return-void
.end method

.method public onSwitchAnimationDone()V
    .locals 2

    .prologue
    .line 2932
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2931
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 609
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->gotoGallery()V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1212
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onUserInteraction()V

    .line 1213
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->keepScreenOnAwhile()V

    .line 1211
    :cond_0
    return-void
.end method

.method protected openSettingActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 2944
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2945
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const-class v2, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2946
    const-string/jumbo v1, "from_where"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2947
    const-string/jumbo v1, ":miui:starting_window_label"

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2948
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2949
    const-string/jumbo v1, "StartActivityWhenLocked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2951
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 2952
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/android/camera/Camera;->setJumpFlag(I)V

    .line 2954
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "pref_settings"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 2943
    return-void
.end method

.method protected pauseMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 6
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;

    .prologue
    .line 3343
    :try_start_0
    const-class v3, Landroid/media/MediaRecorder;

    const-string/jumbo v4, "pause"

    const-string/jumbo v5, "()V"

    invoke-static {v3, v4, v5}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    .line 3344
    .local v2, "pauseMethod":Lmiui/reflect/Method;
    const-class v3, Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3341
    .end local v2    # "pauseMethod":Lmiui/reflect/Method;
    :goto_0
    return-void

    .line 3346
    :catch_0
    move-exception v0

    .line 3347
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "videocamera"

    const-string/jumbo v4, "pauseMediaRecorder IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3345
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .local v1, "e":Lmiui/reflect/NoSuchMethodException;
    goto :goto_0
.end method

.method protected performVolumeKeyClicked(IZ)V
    .locals 0
    .param p1, "repeatCount"    # I
    .param p2, "pressed"    # Z

    .prologue
    .line 1473
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 1474
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onShutterButtonClick()V

    .line 1472
    :cond_0
    return-void
.end method

.method protected prepareRecording()V
    .locals 0

    .prologue
    .line 3460
    return-void
.end method

.method protected readVideoPreferences()V
    .locals 11

    .prologue
    const/16 v10, 0x3e8

    const/4 v7, 0x0

    .line 777
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoQuality()I

    move-result v4

    .line 780
    .local v4, "quality":I
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 781
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 783
    const-string/jumbo v6, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 784
    .local v1, "extraVideoQuality":I
    if-lez v1, :cond_6

    .line 785
    const/4 v4, 0x1

    .line 791
    .end local v1    # "extraVideoQuality":I
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getVideoSpeed(Lcom/android/camera/preferences/CameraSettingPreferences;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    .line 792
    iput v7, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 793
    iput-boolean v7, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    .line 795
    const-string/jumbo v6, "fast"

    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 797
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 798
    const-string/jumbo v8, "pref_video_time_lapse_frame_interval_key"

    .line 799
    const v9, 0x7f0e002d

    invoke-virtual {p0, v9}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 797
    invoke-virtual {v6, v8, v9}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 800
    .local v2, "frameIntervalStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 801
    iget v6, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    .line 803
    iget-boolean v6, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v6, :cond_2

    .line 804
    add-int/lit16 v4, v4, 0x3e8

    .line 805
    if-lt v4, v10, :cond_1

    .line 806
    const/16 v6, 0x3fa

    if-le v4, v6, :cond_2

    .line 807
    :cond_1
    add-int/lit16 v4, v4, -0x3e8

    .line 808
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 809
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v6, "pref_video_speed_key"

    const-string/jumbo v8, "normal"

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 810
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 811
    iput-boolean v7, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    .line 812
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v6}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v6

    .line 813
    iget v8, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    .line 812
    const v9, 0x7f0e0125

    invoke-virtual {v6, v9, v8}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    .line 814
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/V6SettingPage;->reload()V

    .line 817
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    rem-int/lit16 v6, v4, 0x3e8

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    .line 825
    .end local v2    # "frameIntervalStr":Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->quality:I

    rem-int/lit16 v6, v6, 0x3e8

    iget v8, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    if-eq v6, v8, :cond_4

    .line 826
    invoke-virtual {p0, v7}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    .line 828
    :cond_4
    iget v6, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-virtual {p0, v6, v4}, Lcom/android/camera/module/VideoModule;->fetchProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 829
    const-string/jumbo v6, "videocamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readVideoPreferences: frameRate="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", w="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 830
    iget-object v9, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 829
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 830
    const-string/jumbo v9, ", h="

    .line 829
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 830
    iget-object v9, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 829
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 830
    const-string/jumbo v9, ", codec="

    .line 829
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 830
    iget-object v9, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 829
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getDesiredPreviewSize()V

    .line 835
    const-string/jumbo v6, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 837
    const-string/jumbo v6, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 838
    .local v5, "seconds":I
    mul-int/lit16 v6, v5, 0x3e8

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    .line 847
    .end local v5    # "seconds":I
    :goto_3
    iget v6, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    if-eqz v6, :cond_5

    .line 848
    iget v6, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    if-ge v6, v10, :cond_5

    .line 849
    iput v10, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    .line 774
    :cond_5
    return-void

    .line 787
    .restart local v1    # "extraVideoQuality":I
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    .end local v1    # "extraVideoQuality":I
    .restart local v2    # "frameIntervalStr":Ljava/lang/String;
    :cond_7
    move v6, v7

    .line 801
    goto/16 :goto_1

    .line 819
    .end local v2    # "frameIntervalStr":Ljava/lang/String;
    :cond_8
    iput v4, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    .line 820
    const-string/jumbo v6, "slow"

    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 821
    iget v6, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-direct {p0, v6, v4}, Lcom/android/camera/module/VideoModule;->getHFRQuality(II)I

    move-result v4

    goto/16 :goto_2

    .line 839
    :cond_9
    iget v6, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 840
    iget-boolean v6, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v6, :cond_b

    .line 843
    :cond_a
    iput v7, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    goto :goto_3

    .line 841
    :cond_b
    const v6, 0x75300

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    goto :goto_3
.end method

.method public record()V
    .locals 4

    .prologue
    .line 708
    const-string/jumbo v0, "videocamera"

    const-string/jumbo v1, "record"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->playCameraSound(I)V

    .line 710
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startVideoRecording()V

    .line 715
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    .line 716
    const/4 v1, 0x4

    const-wide/16 v2, 0x1f4

    .line 715
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 707
    return-void
.end method

.method protected resumeMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 6
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;

    .prologue
    .line 3352
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_0

    .line 3353
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V

    .line 3351
    :goto_0
    return-void

    .line 3356
    :cond_0
    :try_start_0
    const-class v3, Landroid/media/MediaRecorder;

    const-string/jumbo v4, "resume"

    const-string/jumbo v5, "()V"

    invoke-static {v3, v4, v5}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    .line 3357
    .local v2, "resumeMethod":Lmiui/reflect/Method;
    const-class v3, Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3358
    .end local v2    # "resumeMethod":Lmiui/reflect/Method;
    :catch_0
    move-exception v1

    .local v1, "e":Lmiui/reflect/NoSuchMethodException;
    goto :goto_0

    .line 3359
    .end local v1    # "e":Lmiui/reflect/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 3360
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "videocamera"

    const-string/jumbo v4, "resumeMediaRecorder IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected sendOpenFailMessage()V
    .locals 2

    .prologue
    .line 3367
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3366
    return-void
.end method

.method protected setCameraParameters()V
    .locals 3

    .prologue
    .line 2684
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateVideoParametersPreference()V

    .line 2685
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2687
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2688
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v0, :cond_1

    .line 2689
    :cond_0
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/VideoModule;->updateCameraScreenNailSize(IILcom/android/camera/FocusManagerAbstract;)V

    .line 2683
    :cond_1
    return-void
.end method

.method protected setDisplayOrientation()V
    .locals 2

    .prologue
    .line 1128
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->setDisplayOrientation()V

    .line 1129
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManagerSimple;->setDisplayOrientation(I)V

    .line 1127
    :cond_0
    return-void
.end method

.method protected setHFRSpeed(Landroid/media/MediaRecorder;I)V
    .locals 0
    .param p1, "recorder"    # Landroid/media/MediaRecorder;
    .param p2, "speed"    # I

    .prologue
    .line 876
    return-void
.end method

.method public startObjectTracking()V
    .locals 4

    .prologue
    .line 3223
    const-string/jumbo v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startObjectTracking mObjectTrackingStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 3225
    :cond_0
    return-void

    .line 3227
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    .line 3230
    const-string/jumbo v0, "continuous-video"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3231
    const-string/jumbo v0, "auto"

    .line 3232
    sget-object v1, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    new-instance v2, Lcom/android/camera/portability/Camera1Parameters;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {v2, v3}, Lcom/android/camera/portability/Camera1Parameters;-><init>(Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Lcom/android/camera/portability/ICameraParameters;)Ljava/util/List;

    move-result-object v1

    .line 3231
    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    .line 3230
    if-eqz v0, :cond_2

    .line 3233
    sget-object v0, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "auto"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 3234
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateMotionFocusManager()V

    .line 3235
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3237
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateAutoFocusMoveCallback()V

    .line 3239
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 3240
    const-string/jumbo v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startObjectTracking rect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ObjectView;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ObjectView;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->startObjectTrack(Landroid/graphics/RectF;)V

    .line 3222
    :cond_3
    return-void
.end method

.method protected startPreview()V
    .locals 5

    .prologue
    .line 1135
    const-string/jumbo v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPreview "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-nez v2, :cond_1

    .line 1137
    :cond_0
    return-void

    .line 1139
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1140
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-eqz v2, :cond_2

    .line 1141
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->stopPreview()V

    .line 1144
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->setDisplayOrientation()V

    .line 1145
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1146
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->setCameraParameters()V

    .line 1148
    :try_start_0
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1149
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6SurfaceViewFrame;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 1150
    .local v1, "sh":Landroid/view/SurfaceHolder;
    if-nez v1, :cond_3

    .line 1151
    const-string/jumbo v2, "videocamera"

    const-string/jumbo v3, "startPreview: holder for preview are not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    return-void

    .line 1154
    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1158
    .end local v1    # "sh":Landroid/view/SurfaceHolder;
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1159
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2}, Lcom/android/camera/FocusManagerSimple;->resetFocused()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    .line 1134
    return-void

    .line 1156
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1160
    :catch_0
    move-exception v0

    .line 1161
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 1162
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "startPreview or setPreviewSurfaceTexture failed"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected startRecordVideo()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1904
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeRecorder()V

    .line 1905
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 1906
    const-string/jumbo v1, "videocamera"

    const-string/jumbo v2, "Fail to initialize media recorder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    return v4

    .line 1911
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1923
    const/4 v1, 0x1

    return v1

    .line 1912
    :catch_0
    move-exception v0

    .line 1913
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "videocamera"

    const-string/jumbo v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1914
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_1

    .line 1915
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    const v2, 0x7f0e01ca

    .line 1916
    const v3, 0x7f0e01cc

    .line 1915
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/ScreenHint;->showConfirmMessage(II)V

    .line 1918
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    .line 1920
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    .line 1921
    return v4
.end method

.method public stopObjectTracking(Z)V
    .locals 5
    .param p1, "restartFD"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 3263
    const-string/jumbo v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopObjectTracking mObjectTrackingStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3264
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_1

    .line 3265
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 3266
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 3267
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    .line 3269
    :cond_0
    return-void

    .line 3271
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_4

    .line 3272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mObjectTrackingStarted:Z

    .line 3273
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 3274
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopObjectTrack()V

    .line 3275
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mInStartingFocusRecording:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3276
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 3277
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->cancelAutoFocus()V

    .line 3279
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->isAdjusting()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3283
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 3284
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    .line 3262
    :cond_4
    return-void

    .line 3281
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->setCameraParameters()V

    goto :goto_0
.end method

.method protected stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1169
    const-string/jumbo v0, "videocamera"

    const-string/jumbo v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->stopObjectTracking(Z)V

    .line 1173
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1174
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    .line 1175
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->resetFocused()V

    .line 1168
    return-void
.end method

.method protected subStopRecording()Z
    .locals 5

    .prologue
    .line 2213
    monitor-enter p0

    .line 2214
    const/4 v1, 0x0

    .line 2215
    .local v1, "shouldAddToMediaStoreNow":Z
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 2217
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2218
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2219
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    .line 2220
    const/4 v1, 0x1

    .line 2221
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2222
    const-string/jumbo v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopVideoRecording: Setting current video filename: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2223
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2222
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2244
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v2, :cond_1

    .line 2245
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 2250
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 2251
    return v1

    .line 2224
    :catch_0
    move-exception v0

    .line 2225
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    const-string/jumbo v2, "videocamera"

    const-string/jumbo v3, "stop fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2226
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/camera/module/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 2227
    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mTaskLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2228
    const/4 v3, 0x0

    :try_start_4
    iput-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v2

    .line 2230
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2231
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2213
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2227
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v2

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method protected switchMutexHDR()V
    .locals 2

    .prologue
    .line 2936
    const-string/jumbo v0, "off"

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2937
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 2935
    :goto_0
    return-void

    .line 2939
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_0
.end method

.method protected updateLoadUI(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v1, 0xd

    .line 2727
    if-eqz p1, :cond_0

    .line 2728
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2733
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/V6ShutterButton;->enableControls(Z)V

    .line 2726
    return-void

    .line 2730
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2731
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getCaptureProgressBar()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2733
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected updateStatusBar(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x11

    const/4 v1, -0x1

    .line 2113
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->updateStatusBar(Ljava/lang/String;)V

    .line 2114
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2115
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    if-eqz v0, :cond_1

    .line 2112
    :cond_0
    :goto_0
    return-void

    .line 2116
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6RecordingTimeView;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2117
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    if-eq v0, v1, :cond_3

    .line 2118
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 2119
    iput v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentShowIndicator:I

    .line 2120
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6RecordingTimeView;->clearAnimation()V

    .line 2121
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6RecordingTimeView;->setVisibility(I)V

    .line 2124
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected updateVideoParametersPreference()V
    .locals 26

    .prologue
    .line 2504
    const-string/jumbo v21, "videocamera"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Preview dimension in App->"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "X"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mVideoWidth:I

    .line 2507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mVideoHeight:I

    .line 2508
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mVideoWidth:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mVideoHeight:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2510
    .local v13, "recordSize":Ljava/lang/String;
    const-string/jumbo v21, "videocamera"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Video dimension in App->"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const-string/jumbo v22, "video-size"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2513
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 2515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v21, v0

    .line 2516
    const-string/jumbo v22, "pref_camera_video_flashmode_key"

    .line 2517
    const v23, 0x7f0e0077

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 2515
    invoke-virtual/range {v21 .. v23}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2518
    .local v6, "flashMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v18

    .line 2519
    .local v18, "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 2520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2525
    .end local v6    # "flashMode":Ljava/lang/String;
    .end local v18    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    sget-object v21, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    new-instance v22, Lcom/android/camera/portability/Camera1Parameters;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Lcom/android/camera/portability/Camera1Parameters;-><init>(Landroid/hardware/Camera$Parameters;)V

    invoke-virtual/range {v21 .. v22}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Lcom/android/camera/portability/ICameraParameters;)Ljava/util/List;

    move-result-object v19

    .line 2526
    .local v19, "supportedFocusMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v21, v0

    .line 2527
    const-string/jumbo v22, "pref_video_focusmode_key"

    .line 2528
    const v23, 0x7f0e006f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 2526
    invoke-virtual/range {v21 .. v23}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2530
    .local v7, "focusMode":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-static {v7, v0}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 2531
    const-string/jumbo v21, "continuous-video"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 2532
    const-string/jumbo v21, "continuous-video"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    .line 2533
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 2534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/FocusManagerSimple;->resetFocused()V

    .line 2539
    :goto_0
    sget-object v21, Lcom/android/camera/module/VideoModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2540
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->updateMotionFocusManager()V

    .line 2541
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->updateAutoFocusMoveCallback()V

    .line 2545
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v21, v0

    .line 2546
    const-string/jumbo v22, "pref_camera_coloreffect_key"

    .line 2547
    const v23, 0x7f0e0088

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 2545
    invoke-virtual/range {v21 .. v23}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2548
    .local v5, "colorEffect":Ljava/lang/String;
    const-string/jumbo v21, "videocamera"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Color effect value ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 2550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2553
    :cond_2
    const-string/jumbo v20, "auto"

    .line 2558
    .local v20, "whiteBalance":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v21

    .line 2557
    invoke-static/range {v20 .. v21}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 2559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2568
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 2569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getZoomValue()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2572
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 2576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 2579
    sget-boolean v21, Lcom/android/camera/Device;->IS_MI9:Z

    if-eqz v21, :cond_5

    .line 2580
    const-string/jumbo v21, "normal"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mQuality:I

    move/from16 v21, v0

    const/16 v22, 0x6

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 2581
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mQuality:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 2588
    :cond_6
    const-string/jumbo v21, "videocamera"

    const-string/jumbo v22, "set video stabilization to false"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 2590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/camera/CameraScreenNail;->setVideoStabilizationCropped(Z)V

    .line 2594
    :goto_2
    const v10, 0x7fffffff

    .line 2595
    .local v10, "maxWidth":I
    const v9, 0x7fffffff

    .line 2596
    .local v9, "maxHeight":I
    invoke-static {}, Lcom/android/camera/Device;->isVideoSnapshotSizeLimited()Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    move/from16 v21, v0

    if-eqz v21, :cond_12

    .line 2604
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v17

    .line 2606
    .local v17, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    .line 2605
    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2, v10, v9}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;DII)Landroid/hardware/Camera$Size;

    move-result-object v11

    .line 2608
    .local v11, "optimalSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 2609
    .local v12, "original":Landroid/hardware/Camera$Size;
    if-nez v12, :cond_13

    .line 2610
    const-string/jumbo v21, "videocamera"

    const-string/jumbo v22, "get null pictureSize"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    :cond_8
    :goto_4
    const-string/jumbo v21, "videocamera"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Video snapshot size is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 2615
    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    move/from16 v23, v0

    .line 2614
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 2618
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x15

    move/from16 v0, v22

    move/from16 v1, v21

    if-gt v0, v1, :cond_14

    .line 2622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v14

    .line 2623
    .local v14, "size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v15

    .line 2625
    .local v15, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget v0, v14, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    iget v0, v14, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    .line 2624
    move-wide/from16 v0, v22

    invoke-static {v15, v0, v1}, Lcom/android/camera/Util;->getOptimalJpegThumbnailSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v11

    .line 2626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 2627
    invoke-virtual {v12, v11}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 2628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    move/from16 v22, v0

    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 2630
    :cond_9
    const-string/jumbo v21, "videocamera"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Thumbnail size is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    .end local v14    # "size":Landroid/hardware/Camera$Size;
    .end local v15    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    move/from16 v21, v0

    .line 2640
    const/16 v22, 0x2

    .line 2639
    invoke-static/range {v21 .. v22}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v8

    .line 2641
    .local v8, "jpegQuality":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/VideoModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    .line 2645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->addT2TParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->resetFaceBeautyParams(Landroid/hardware/Camera$Parameters;)V

    .line 2649
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v21

    if-eqz v21, :cond_15

    const-string/jumbo v21, "slow"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 2650
    const-string/jumbo v4, "off"

    .line 2654
    .local v4, "antiBanding":Ljava/lang/String;
    :goto_6
    const-string/jumbo v21, "videocamera"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "antiBanding value ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 2656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 2658
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v21, v0

    .line 2659
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v22, v0

    .line 2658
    invoke-static/range {v21 .. v22}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v16

    .line 2660
    .local v16, "style":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v16

    if-eq v0, v1, :cond_c

    .line 2661
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    .line 2662
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    move/from16 v21, v0

    if-eqz v21, :cond_16

    .line 2663
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/module/VideoModule;->mHasPendingSwitching:Z

    .line 2670
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const-string/jumbo v22, "xiaomi-time-watermark"

    invoke-virtual/range {v21 .. v22}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_d

    .line 2671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const-string/jumbo v22, "xiaomi-time-watermark"

    const-string/jumbo v23, "off"

    invoke-virtual/range {v21 .. v23}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2673
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const-string/jumbo v22, "watermark"

    invoke-virtual/range {v21 .. v22}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_e

    .line 2674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const-string/jumbo v22, "watermark"

    const-string/jumbo v23, "off"

    invoke-virtual/range {v21 .. v23}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2503
    :cond_e
    return-void

    .line 2536
    .end local v4    # "antiBanding":Ljava/lang/String;
    .end local v5    # "colorEffect":Ljava/lang/String;
    .end local v8    # "jpegQuality":I
    .end local v9    # "maxHeight":I
    .end local v10    # "maxWidth":I
    .end local v11    # "optimalSize":Landroid/hardware/Camera$Size;
    .end local v12    # "original":Landroid/hardware/Camera$Size;
    .end local v16    # "style":I
    .end local v17    # "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v20    # "whiteBalance":Ljava/lang/String;
    :cond_f
    const-string/jumbo v21, "auto"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    .line 2537
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    goto/16 :goto_0

    .line 2561
    .restart local v5    # "colorEffect":Ljava/lang/String;
    .restart local v20    # "whiteBalance":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v20

    .line 2562
    if-nez v20, :cond_3

    .line 2563
    const-string/jumbo v20, "auto"

    goto/16 :goto_1

    .line 2582
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v21

    .line 2576
    if-eqz v21, :cond_6

    .line 2583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/camera/CameraSettings;->isMovieSolidOn(Landroid/content/SharedPreferences;)Z

    move-result v21

    .line 2576
    if-eqz v21, :cond_6

    .line 2584
    const-string/jumbo v21, "videocamera"

    const-string/jumbo v22, "set video stabilization to true"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 2586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/camera/CameraScreenNail;->setVideoStabilizationCropped(Z)V

    goto/16 :goto_2

    .line 2597
    .restart local v9    # "maxHeight":I
    .restart local v10    # "maxWidth":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v10, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 2598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v9, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    goto/16 :goto_3

    .line 2611
    .restart local v11    # "optimalSize":Landroid/hardware/Camera$Size;
    .restart local v12    # "original":Landroid/hardware/Camera$Size;
    .restart local v17    # "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_13
    invoke-virtual {v12, v11}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 2612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    move/from16 v22, v0

    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto/16 :goto_4

    .line 2634
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    goto/16 :goto_5

    .line 2651
    .restart local v8    # "jpegQuality":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v21, v0

    .line 2652
    const-string/jumbo v22, "pref_camera_antibanding_key"

    .line 2653
    const v23, 0x7f0e00d3

    invoke-static/range {v23 .. v23}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 2651
    invoke-virtual/range {v21 .. v23}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "antiBanding":Ljava/lang/String;
    goto/16 :goto_6

    .line 2665
    .restart local v16    # "style":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0xb

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7
.end method

.method protected waitForRecorder()V
    .locals 4

    .prologue
    .line 2256
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mTaskLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2257
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2259
    :try_start_1
    const-string/jumbo v1, "videocamera"

    const-string/jumbo v3, "Wait for releasing camera done in MediaRecorder"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mTaskLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 2255
    return-void

    .line 2261
    :catch_0
    move-exception v0

    .line 2262
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v1, "videocamera"

    const-string/jumbo v3, "Got notify from Media recorder()"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2256
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
