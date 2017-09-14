.class public Lcom/android/camera/module/MorphoPanoramaModule;
.super Lcom/android/camera/module/BaseModule;
.source "MorphoPanoramaModule.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;,
        Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;,
        Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;,
        Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;,
        Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;,
        Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;,
        Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final USE_PREVIEW_IMAGE:Z

.field private static sSaveOutputType:I


# instance fields
.field private MAX_DST_IMG_WIDTH:I

.field private final USE_MULTI_THREAD:Z

.field private mAeLockSupported:Z

.field private mAppDeviceRotation:I

.field private mAppPanoramaDirection:I

.field private mAppPanoramaDirectionSettings:I

.field private mAttachPosOffsetX:I

.field private mAttachPosOffsetY:I

.field protected mAwbLockSupported:Z

.field private mCameraPreviewBuff:[B

.field private mCameraState:I

.field private mCaptureInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCntProcessd:I

.field private mCntReqShoot:I

.field private mDeviceOrientationAtCapture:I

.field private mDirection:[I

.field private mDispPreviewImage:Landroid/graphics/Bitmap;

.field private mFrameRatio:F

.field private mImageID:[I

.field private mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

.field private mIsShooting:Z

.field private mLeftIndicator:Landroid/view/View;

.field private mLocation:Landroid/location/Location;

.field protected final mMainHandler:Landroid/os/Handler;

.field private mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

.field private mMotionData:[B

.field private mMotionlessThres:I

.field private mMoveReferenceLine:Landroid/view/View;

.field private mMoveSpeed:[I

.field private mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

.field private mPanoramaPreview:Landroid/widget/ImageView;

.field private mPanoramaViewRoot:Landroid/view/ViewGroup;

.field private mPictureHeight:I

.field private mPictureWidth:I

.field private mPrevDirection:I

.field private mPreviewCount:I

.field private mPreviewCroppingAdjustByAuto:I

.field private final mPreviewCroppingRatio:I

.field private mPreviewDisplayRatio:F

.field private mPreviewHeight:I

.field private mPreviewImage:Landroid/graphics/Bitmap;

.field private mPreviewRefY:I

.field private mPreviewSkipCount:I

.field private mPreviewWidth:I

.field private mRequestTakePicture:Z

.field private mRightIndicator:Landroid/view/View;

.field private mSaveOutputImageTask:Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

.field private mSensorSyncObj:Ljava/lang/Object;

.field private mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

.field private mSnapshotFocusMode:Ljava/lang/String;

.field private mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field private mStatus:[I

.field private mStillPreview:Lcom/android/camera/ui/GLTextureView;

.field private mStillPreviewHintArea:Landroid/view/View;

.field private mStillPreviewRender:Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;

.field private mStillPreviewTextureHeight:I

.field private mStillPreviewTextureOffsetX:I

.field private mStillPreviewTextureOffsetY:I

.field private mStillPreviewTextureWidth:I

.field private mStillProcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;",
            ">;"
        }
    .end annotation
.end field

.field private mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

.field private mSwitchingCamera:Z

.field private mSyncObj:Ljava/lang/Object;

.field private mTargetFocusMode:Ljava/lang/String;

.field private mTimeTaken:J

.field private mUseHint:Landroid/widget/TextView;

.field private mUseHintArea:Landroid/view/View;

.field private mUseImage:I

.field private mUseSensorAWF:Z

.field private mUseSensorThres:I

.field private mUseThres:I

.field private mWaitProcessorTask:Landroid/os/AsyncTask;
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

.field private mWaitingFirstFrame:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/camera/module/MorphoPanoramaModule;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaPreview:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/camera/module/MorphoPanoramaModule;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/ui/GLTextureView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureHeight:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureOffsetX:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureOffsetY:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureWidth:I

    return v0
.end method

.method static synthetic -get19(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/module/MorphoPanoramaModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAeLockSupported:Z

    return v0
.end method

.method static synthetic -get20(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/camera/module/MorphoPanoramaModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTimeTaken:J

    return-wide v0
.end method

.method static synthetic -get22()I
    .locals 1

    sget v0, Lcom/android/camera/module/MorphoPanoramaModule;->sSaveOutputType:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/module/MorphoPanoramaModule;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessd:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/camera/module/MorphoPanoramaModule;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/camera/module/MorphoPanoramaModule;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/module/MorphoPanoramaModule;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/module/MorphoPanoramaModule;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessd:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/module/MorphoPanoramaModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/panorama/MorphoPanoramaGP;)Lcom/android/camera/panorama/MorphoPanoramaGP;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/camera/module/MorphoPanoramaModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRequestTakePicture:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;)Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/camera/module/MorphoPanoramaModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSwitchingCamera:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/module/MorphoPanoramaModule;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isZslMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/module/MorphoPanoramaModule;JI)Ljava/lang/String;
    .locals 1
    .param p1, "dateTaken"    # J
    .param p3, "type"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/module/MorphoPanoramaModule;->createNameString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->setupCaptureParams()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->showSmallPreview()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->startCameraPreview()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/camera/module/MorphoPanoramaModule;Z)V
    .locals 0
    .param p1, "save_image"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/camera/module/MorphoPanoramaModule;I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule;->switchToOtherMode(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/module/MorphoPanoramaModule;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->finishAttachStillImageTask()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->initCommenConfig()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->initPreviewLayout()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->initializeCapabilities()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->resetToPreview()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/camera/module/MorphoPanoramaModule;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/MorphoPanoramaModule;->saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/camera/module/MorphoPanoramaModule;Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule;->setProgressUI(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/android/camera/Device;->isPanoUsePreviewFrame()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z

    .line 129
    const/4 v0, 0x1

    sput v0, Lcom/android/camera/module/MorphoPanoramaModule;->sSaveOutputType:I

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    .line 144
    iput-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    .line 146
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    .line 148
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 154
    const-string/jumbo v0, "continuous-picture"

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    .line 155
    const-string/jumbo v0, "auto"

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSnapshotFocusMode:Ljava/lang/String;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    .line 173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSensorSyncObj:Ljava/lang/Object;

    .line 179
    iput-boolean v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->USE_MULTI_THREAD:Z

    .line 191
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mImageID:[I

    .line 192
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionData:[B

    .line 193
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    .line 194
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveSpeed:[I

    .line 195
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureInfoList:Ljava/util/ArrayList;

    .line 197
    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    .line 198
    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessd:I

    .line 199
    iput-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    .line 202
    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseImage:I

    .line 203
    iput v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseThres:I

    .line 204
    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    .line 205
    const v0, 0x8000

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionlessThres:I

    .line 206
    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseSensorThres:I

    .line 207
    iput-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseSensorAWF:Z

    .line 208
    iput v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingRatio:I

    .line 209
    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    .line 210
    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppDeviceRotation:I

    .line 211
    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppPanoramaDirection:I

    .line 212
    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppPanoramaDirectionSettings:I

    .line 216
    iput-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRequestTakePicture:Z

    .line 217
    iput-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSwitchingCamera:Z

    .line 218
    iput-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitingFirstFrame:Z

    .line 100
    return-void
.end method

.method private addImageAsApplication(Ljava/lang/String;Landroid/graphics/Rect;I)V
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "orientation"    # I

    .prologue
    const/4 v10, 0x0

    .line 1617
    sget-boolean v1, Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z

    if-nez v1, :cond_1

    .line 1621
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    iget-wide v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTimeTaken:J

    .line 1622
    iget-object v6, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLocation:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object v2, p1

    move v3, p3

    .line 1621
    invoke-static/range {v1 .. v8}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;IJLandroid/location/Location;II)Landroid/net/Uri;

    move-result-object v9

    .line 1623
    .local v9, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "capture_nums_panorama"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1624
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "camera_picture_taken_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1625
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1627
    if-eqz v9, :cond_0

    .line 1628
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v9}, Lcom/android/camera/Camera;->addSecureUri(Landroid/net/Uri;)V

    .line 1629
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v9, v10}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v0

    .line 1631
    .local v0, "t":Lcom/android/camera/Thumbnail;
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1, v9}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1632
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1, v0, v10}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 1616
    .end local v0    # "t":Lcom/android/camera/Thumbnail;
    :cond_0
    return-void

    .line 1619
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTimeTaken:J

    .line 1618
    invoke-static {p1, p3, v1, v2, v3}, Lcom/android/camera/ExifHelper;->writeExif(Ljava/lang/String;ILandroid/location/Location;J)V

    goto :goto_0
.end method

.method private addStillImage(Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;)V
    .locals 1
    .param p1, "dat"    # Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1478
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    if-nez v0, :cond_0

    .line 1479
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    invoke-direct {v0, p0}, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    .line 1480
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    invoke-virtual {v0}, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->start()V

    .line 1476
    :cond_0
    return-void
.end method

.method private allocateDisplayBuffers(I)V
    .locals 4
    .param p1, "direction"    # I

    .prologue
    const/4 v3, 0x0

    .line 1637
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1638
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    if-ne v1, v2, :cond_0

    .line 1639
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    if-eq v1, v2, :cond_1

    .line 1640
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1641
    iput-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 1642
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1643
    iput-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    .line 1646
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 1648
    packed-switch p1, :pswitch_data_0

    .line 1669
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 1670
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 1671
    .local v0, "aspect":F
    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x64

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    .line 1672
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    div-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetY:I

    .line 1636
    .end local v0    # "aspect":F
    :cond_2
    :goto_0
    return-void

    .line 1650
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 1651
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 1652
    .restart local v0    # "aspect":F
    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x64

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    .line 1653
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    div-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetY:I

    goto :goto_0

    .line 1656
    .end local v0    # "aspect":F
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 1657
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 1658
    .restart local v0    # "aspect":F
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x50

    div-int/lit8 v2, v2, 0x64

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    .line 1659
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    div-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetX:I

    goto/16 :goto_0

    .line 1662
    .end local v0    # "aspect":F
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 1663
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 1664
    .restart local v0    # "aspect":F
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x50

    div-int/lit8 v2, v2, 0x64

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    .line 1665
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    div-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetX:I

    goto/16 :goto_0

    .line 1648
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private calibrateRotation(I)I
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 1608
    if-eqz p1, :cond_0

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    .line 1609
    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    .line 1611
    const/4 p1, 0x0

    .line 1613
    :cond_0
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDeviceOrientationAtCapture:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private configureCamera(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 605
    return-void
.end method

.method private createContentView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 623
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->inflatePanoramaView()V

    .line 624
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPanoramaViewRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    .line 626
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0c0048

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHintArea:Landroid/view/View;

    .line 627
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0c0045

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLeftIndicator:Landroid/view/View;

    .line 628
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0c0047

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRightIndicator:Landroid/view/View;

    .line 629
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0c0049

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHint:Landroid/widget/TextView;

    .line 631
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0c0043

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaPreview:Landroid/widget/ImageView;

    .line 632
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0c0046

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GLTextureView;

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    .line 633
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0c004a

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PanoMovingIndicatorView;

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    .line 635
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0c0042

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveReferenceLine:Landroid/view/View;

    .line 636
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0c0044

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewHintArea:Landroid/view/View;

    .line 638
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 639
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewRender:Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;

    .line 640
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/GLTextureView;->setEGLContextClientVersion(I)V

    .line 641
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    new-instance v2, Lcom/android/camera/module/MorphoPanoramaModule$2;

    invoke-direct {v2, p0}, Lcom/android/camera/module/MorphoPanoramaModule$2;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/GLTextureView;->setEGLShareContextGetter(Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;)V

    .line 646
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewRender:Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/GLTextureView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 647
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLTextureView;->setRenderMode(I)V

    .line 648
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    .line 653
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v2

    .line 654
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 655
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerGroup()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-nez v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 654
    :goto_1
    sub-int v0, v3, v0

    .line 653
    invoke-virtual {v2, v1, v0}, Lcom/android/camera/ui/V6ModeExitView;->setLayoutParameters(II)V

    .line 659
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 622
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewRender:Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;

    goto :goto_0

    :cond_1
    move v0, v1

    .line 657
    goto :goto_1
.end method

.method private createNameString(JI)Ljava/lang/String;
    .locals 3
    .param p1, "dateTaken"    # J
    .param p3, "type"    # I

    .prologue
    .line 1679
    const v1, 0x7f0e00dd

    invoke-virtual {p0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1681
    .local v0, "name":Ljava/lang/String;
    sget v1, Lcom/android/camera/module/MorphoPanoramaModule;->sSaveOutputType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1682
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 1683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_bounding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1685
    :cond_0
    return-object v0
.end method

.method private finishAttachStillImageTask()V
    .locals 4

    .prologue
    .line 1489
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessd:I

    if-le v1, v2, :cond_0

    .line 1491
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1492
    :catch_0
    move-exception v0

    .line 1493
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1496
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    .line 1484
    return-void
.end method

.method private initCommenConfig()V
    .locals 2

    .prologue
    .line 1117
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    .line 1116
    return-void
.end method

.method private initPreviewLayout()V
    .locals 8

    .prologue
    .line 663
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 665
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v5}, Lcom/android/camera/ui/GLTextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 666
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    .line 667
    .local v2, "screen":Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v4

    .line 668
    .local v4, "screenWidth":I
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v3

    .line 669
    .local v3, "screenHeight":I
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v3, v5

    mul-int/lit8 v5, v5, 0x50

    div-int/lit8 v0, v5, 0x64

    .line 672
    .local v0, "croppedScreenHeight":I
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 673
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int/2addr v5, v4

    div-int/2addr v5, v0

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 675
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureWidth:I

    .line 676
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    div-int/2addr v5, v6

    iput v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureHeight:I

    .line 677
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureOffsetX:I

    .line 678
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureHeight:I

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureOffsetY:I

    .line 679
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v5}, Lcom/android/camera/ui/GLTextureView;->requestLayout()V

    .line 662
    return-void
.end method

.method private initializeCapabilities()V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAeLockSupported:Z

    .line 602
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAwbLockSupported:Z

    .line 600
    return-void
.end method

.method private initializeMiscControls()V
    .locals 1

    .prologue
    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcList:Ljava/util/ArrayList;

    .line 308
    return-void
.end method

.method private isProcessingFinishTask()Z
    .locals 2

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSaveOutputImageTask:Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSaveOutputImageTask:Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

    invoke-virtual {v0}, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 1501
    const/4 v0, 0x1

    return v0

    .line 1503
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isZslMode()Z
    .locals 2

    .prologue
    .line 1768
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->isZSLMode(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    return v0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1023
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1021
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1016
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1017
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1018
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getScreenDelay()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1015
    return-void
.end method

.method private onCaptureOrientationDecided()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1690
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveReferenceLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1691
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1692
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    .line 1693
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1694
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1695
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHint:Landroid/widget/TextView;

    const v1, 0x7f0e00f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1696
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setVisibility(I)V

    .line 1698
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    aget v1, v1, v2

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetX:I

    iget v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetY:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setMovingAttibute(III)V

    .line 1699
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->trackPictureTaken()V

    .line 1689
    return-void
.end method

.method private onFrameLayoutChange(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->onLayoutChange(II)V

    .line 493
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/CameraScreenNail;->setRenderArea(Landroid/graphics/Rect;)V

    .line 491
    :cond_0
    return-void
.end method

.method private onPreviewMoving()V
    .locals 2

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoMovingIndicatorView;->isTooFast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1705
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHint:Landroid/widget/TextView;

    const v1, 0x7f0e01e1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1702
    :cond_0
    :goto_0
    return-void

    .line 1706
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoMovingIndicatorView;->isFar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1707
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHint:Landroid/widget/TextView;

    const v1, 0x7f0e01e0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1709
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHint:Landroid/widget/TextView;

    const v1, 0x7f0e00f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private releaseCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 513
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 515
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 516
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 517
    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 518
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    .line 512
    :cond_0
    return-void
.end method

.method private releaseResources()V
    .locals 1

    .prologue
    .line 1028
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->releaseCamera()V

    .line 1029
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataAnalytics;->uploadToServer()V

    .line 1030
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitForRelease:Z

    .line 1027
    return-void
.end method

.method private requestStillPreviewRender()V
    .locals 2

    .prologue
    .line 1280
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    .line 1281
    .local v0, "screen":Lcom/android/camera/CameraScreenNail;
    if-eqz v0, :cond_1

    .line 1282
    iget-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitingFirstFrame:Z

    if-eqz v1, :cond_0

    .line 1283
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView;->onResume()V

    .line 1284
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitingFirstFrame:Z

    .line 1286
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    .line 1279
    :cond_1
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1012
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1010
    return-void
.end method

.method private resetToPreview()V
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 848
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->resetUI()V

    .line 850
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isZslMode()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z

    if-eqz v0, :cond_2

    .line 846
    :cond_1
    :goto_0
    return-void

    .line 851
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->startCameraPreview()V

    goto :goto_0
.end method

.method private resetUI()V
    .locals 6

    .prologue
    const v5, 0x7f020036

    const/16 v3, 0x64

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x8

    .line 808
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->show()V

    .line 809
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getZoomButton()Lcom/android/camera/ui/ZoomButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ZoomButton;->show()V

    .line 810
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 811
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/ui/V6ThumbnailButton;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 812
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/ui/V6ModulePicker;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 813
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v5, v2, v3}, Lcom/android/camera/ui/V6ShutterButton;->changeImageWithAnimation(IJ)V

    .line 819
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveReferenceLine:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 820
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 821
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    .line 822
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setVisibility(I)V

    .line 823
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHintArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 824
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->showSmallPreview()V

    .line 807
    return-void

    .line 815
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    .line 816
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    .line 817
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/V6ShutterButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1596
    const/4 v0, 0x1

    .line 1597
    .local v0, "orientation":I
    new-array v2, v9, [I

    .line 1598
    .local v2, "progress":[I
    invoke-static {p1}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1599
    .local v1, "path":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    invoke-virtual {v4, v1, p2, v0, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP;->saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;I[I)I

    move-result v3

    .line 1600
    .local v3, "ret":I
    if-eqz v3, :cond_0

    .line 1601
    sget-object v4, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "%s:saveOutputJpeg() -> 0x%x"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->calibrateRotation(I)I

    move-result v0

    .line 1604
    invoke-direct {p0, v1, p2, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->addImageAsApplication(Ljava/lang/String;Landroid/graphics/Rect;I)V

    .line 1595
    return-void
.end method

.method private setProgressUI(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1592
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getCaptureProgressBar()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1591
    return-void

    .line 1592
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setShootUI()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x64

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 1154
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHintArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1155
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setVisibility(I)V

    .line 1156
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHint:Landroid/widget/TextView;

    const v1, 0x7f0e00ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1157
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveReferenceLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1158
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setVisibility(I)V

    .line 1166
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1167
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v3}, Lcom/android/camera/ui/V6ThumbnailButton;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 1168
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v3}, Lcom/android/camera/ui/V6ModulePicker;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 1169
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->hide()V

    .line 1170
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getZoomButton()Lcom/android/camera/ui/ZoomButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ZoomButton;->hide()V

    .line 1171
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->keepScreenOn()V

    .line 1172
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const-wide/16 v2, 0xc8

    const v1, 0x7f02010b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/V6ShutterButton;->changeImageWithAnimation(IJ)V

    .line 1173
    invoke-virtual {p0, v4}, Lcom/android/camera/module/MorphoPanoramaModule;->enableCameraControls(Z)V

    .line 1153
    return-void
.end method

.method private setZsl()V
    .locals 3

    .prologue
    .line 589
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "on"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 592
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Y:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Z:Z

    if-eqz v0, :cond_0

    .line 593
    :cond_2
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "on"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupCaptureParams()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 523
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v10

    .line 524
    iget-object v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v11

    .line 523
    invoke-static {v10, v11, v14}, Lcom/android/camera/PictureSizeManager;->initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V

    .line 525
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getBestPanoPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v6

    .line 526
    .local v6, "pictureSize":Lcom/android/camera/PictureSize;
    iget v10, v6, Lcom/android/camera/PictureSize;->width:I

    iput v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureWidth:I

    .line 527
    iget v10, v6, Lcom/android/camera/PictureSize;->height:I

    iput v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureHeight:I

    .line 529
    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "picture h = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , w = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureWidth:I

    iget v12, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureHeight:I

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 532
    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v8

    .line 533
    .local v8, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    .line 534
    sget v11, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float v11, v11

    sget v12, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    float-to-double v12, v11

    .line 533
    invoke-static {v10, v8, v12, v13}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 535
    .local v7, "size":Landroid/hardware/Camera$Size;
    if-nez v7, :cond_0

    .line 536
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "Can not find suitable preview size for panorama"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 538
    :cond_0
    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    iput v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    .line 539
    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    iput v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    .line 540
    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "preview h = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , w = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 542
    .local v5, "original":Landroid/hardware/Camera$Size;
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    iget v12, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 543
    invoke-virtual {v5, v7}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 544
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 545
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 548
    :cond_1
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v1

    .line 549
    .local v1, "frameRates":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    .line 550
    .local v2, "last":I
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    aget v4, v10, v14

    .line 551
    .local v4, "minFps":I
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    const/4 v11, 0x1

    aget v3, v10, v11

    .line 552
    .local v3, "maxFps":I
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v4, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 553
    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "preview fps: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v9

    .line 556
    .local v9, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_4

    .line 557
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 563
    :goto_0
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v14}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 564
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v14}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 565
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v14}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 567
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 568
    const-string/jumbo v11, "pref_camera_antibanding_key"

    .line 569
    const v12, 0x7f0e00d2

    invoke-static {v12}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/android/camera/module/MorphoPanoramaModule;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 567
    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "antiBanding":Ljava/lang/String;
    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "antiBanding value ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/module/MorphoPanoramaModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 572
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 576
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->setZsl()V

    .line 577
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v10}, Lcom/android/camera/module/MorphoPanoramaModule;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    .line 578
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 579
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v11, "t2t"

    const-string/jumbo v12, "off"

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_3
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v10, v14}, Lcom/android/camera/module/MorphoPanoramaModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    .line 582
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v10}, Lcom/android/camera/module/MorphoPanoramaModule;->resetFaceBeautyParams(Landroid/hardware/Camera$Parameters;)V

    .line 583
    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v12, "off"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 584
    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11, v14}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFaceWatermark(Landroid/hardware/Camera$Parameters;Z)V

    .line 585
    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/hardware/CameraHardwareProxy;->clearExposureTime(Landroid/hardware/Camera$Parameters;)V

    .line 522
    return-void

    .line 560
    .end local v0    # "antiBanding":Ljava/lang/String;
    :cond_4
    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Cannot set the focus mode to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 561
    const-string/jumbo v12, " because the mode is not supported."

    .line 560
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private showSmallPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 828
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    if-eqz v0, :cond_0

    return-void

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 830
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setVisibility(I)V

    .line 831
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 832
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 835
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSwitchingCamera:Z

    if-nez v0, :cond_1

    .line 838
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onResume()V

    .line 839
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->requestStillPreviewRender()V

    .line 843
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 827
    return-void

    .line 841
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitingFirstFrame:Z

    goto :goto_0
.end method

.method private startCameraPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 972
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 974
    return-void

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 980
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->stopCameraPreview()V

    .line 982
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->setDisplayOrientation()V

    .line 983
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 985
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 986
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAeLockSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 987
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 988
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 989
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 991
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 992
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 993
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    .line 971
    return-void
.end method

.method private startPanoramaGP()Z
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1178
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    if-nez v5, :cond_2

    .line 1179
    new-array v0, v6, [I

    .line 1180
    .local v0, "buff_size":[I
    new-instance v5, Lcom/android/camera/panorama/MorphoPanoramaGP;

    invoke-direct {v5}, Lcom/android/camera/panorama/MorphoPanoramaGP;-><init>()V

    iput-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    .line 1181
    new-instance v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    invoke-direct {v5}, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;-><init>()V

    iput-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    .line 1182
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    const-string/jumbo v8, "YVU420_SEMIPLANAR"

    iput-object v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->format:Ljava/lang/String;

    .line 1183
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseThres:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->use_threshold:I

    .line 1185
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_width:I

    .line 1186
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_height:I

    .line 1188
    sget-boolean v5, Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z

    if-nez v5, :cond_4

    .line 1189
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureWidth:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_width:I

    .line 1190
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureHeight:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_height:I

    .line 1195
    :goto_0
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v8

    float-to-double v8, v8

    iput-wide v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->angle_of_view_degree:D

    .line 1196
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iput v7, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->draw_cur_image:I

    .line 1197
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    .line 1198
    .local v1, "degrees":I
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraId:I

    invoke-static {v1, v5}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v4

    .line 1199
    .local v4, "tmpDegrees":I
    iput v7, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    .line 1200
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppPanoramaDirectionSettings:I

    iput v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppPanoramaDirection:I

    .line 1202
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iput v6, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->direction:I

    .line 1204
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_height:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mFrameRatio:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_width:I

    .line 1205
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_width:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_height:I

    .line 1206
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_height:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mFrameRatio:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 1207
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_width:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 1208
    packed-switch v4, :pswitch_data_0

    .line 1210
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    const/16 v8, 0x5a

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->output_rotation:I

    .line 1212
    :goto_1
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    sget v9, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_shrink_ratio:I

    .line 1213
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    const-wide v8, 0x4076800000000000L    # 360.0

    invoke-static {v5, v8, v9}, Lcom/android/camera/panorama/MorphoPanoramaGP;->calcImageSize(Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;D)I

    .line 1214
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_width:I

    if-ge v5, v8, :cond_0

    .line 1215
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    int-to-float v5, v5

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_width:I

    int-to-float v8, v8

    div-float v3, v5, v8

    .line 1216
    .local v3, "scale":F
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_width:I

    .line 1217
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 1219
    .end local v3    # "scale":F
    :cond_0
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_height:I

    if-ge v5, v8, :cond_1

    .line 1220
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    int-to-float v5, v5

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_height:I

    int-to-float v8, v8

    div-float v3, v5, v8

    .line 1221
    .restart local v3    # "scale":F
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_height:I

    .line 1222
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 1224
    .end local v3    # "scale":F
    :cond_1
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 1225
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 1227
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    invoke-virtual {v5, v8, v0}, Lcom/android/camera/panorama/MorphoPanoramaGP;->initialize(Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;[I)I

    move-result v2

    .line 1228
    .local v2, "ret":I
    if-eqz v2, :cond_2

    .line 1229
    sget-object v5, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "%s:initialize() -> 0x%x"

    new-array v9, v11, [Ljava/lang/Object;

    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    .end local v0    # "buff_size":[I
    .end local v1    # "degrees":I
    .end local v2    # "ret":I
    .end local v4    # "tmpDegrees":I
    :cond_2
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionlessThres:I

    invoke-virtual {v5, v8}, Lcom/android/camera/panorama/MorphoPanoramaGP;->setMotionlessThreshold(I)I

    .line 1233
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseSensorThres:I

    invoke-virtual {v5, v8}, Lcom/android/camera/panorama/MorphoPanoramaGP;->setUseSensorThreshold(I)I

    .line 1234
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppDeviceRotation:I

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppPanoramaDirection:I

    add-int/2addr v5, v8

    invoke-direct {p0, v5}, Lcom/android/camera/module/MorphoPanoramaModule;->allocateDisplayBuffers(I)V

    .line 1235
    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    iget-boolean v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseSensorAWF:Z

    if-eqz v5, :cond_5

    move v5, v6

    :goto_2
    invoke-virtual {v8, v7, v5}, Lcom/android/camera/panorama/MorphoPanoramaGP;->setUseSensorAssist(II)I

    move-result v2

    .line 1236
    .restart local v2    # "ret":I
    if-eqz v2, :cond_3

    .line 1237
    sget-object v5, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "%s:setUseSensorAssist() -> 0x%x"

    new-array v9, v11, [Ljava/lang/Object;

    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_3
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    invoke-virtual {v5}, Lcom/android/camera/panorama/MorphoPanoramaGP;->start()I

    move-result v2

    .line 1241
    if-eqz v2, :cond_6

    .line 1242
    sget-object v5, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "%s:start() -> 0x%x"

    new-array v9, v11, [Ljava/lang/Object;

    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return v7

    .line 1192
    .end local v2    # "ret":I
    .restart local v0    # "buff_size":[I
    :cond_4
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_width:I

    .line 1193
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_height:I

    goto/16 :goto_0

    .line 1209
    .restart local v1    # "degrees":I
    .restart local v4    # "tmpDegrees":I
    :pswitch_0
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    const/16 v8, 0x10e

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->output_rotation:I

    goto/16 :goto_1

    .end local v0    # "buff_size":[I
    .end local v1    # "degrees":I
    .end local v4    # "tmpDegrees":I
    :cond_5
    move v5, v7

    .line 1235
    goto :goto_2

    .line 1245
    .restart local v2    # "ret":I
    :cond_6
    return v6

    .line 1208
    :pswitch_data_0
    .packed-switch 0x10e
        :pswitch_0
    .end packed-switch
.end method

.method private stopCameraPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 997
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 998
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1001
    :cond_0
    iput v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    .line 996
    return-void
.end method

.method private stopPanoramaShooting(Z)V
    .locals 4
    .param p1, "save_image"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1249
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPanoramaShooting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->keepScreenOnAwhile()V

    .line 1251
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    if-nez v0, :cond_1

    .line 1252
    :cond_0
    return-void

    .line 1251
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaPreview:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1254
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isProcessingFinishTask()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1255
    return-void

    .line 1257
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1258
    if-nez p1, :cond_3

    .line 1259
    iput-boolean v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    .line 1261
    :cond_3
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    if-eqz v0, :cond_4

    .line 1262
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 1263
    :cond_4
    const/4 p1, 0x0

    .line 1266
    .end local p1    # "save_image":Z
    :cond_5
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSaveOutputImageTask:Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

    .line 1267
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSaveOutputImageTask:Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1269
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->resetUI()V

    .line 1248
    return-void
.end method

.method private switchToCameraMode()V
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->switchModule()V

    .line 778
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->switchToOtherMode(I)V

    .line 779
    const-string/jumbo v0, "pref_camera_panoramamode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetPreference(Ljava/lang/String;)V

    .line 776
    return-void
.end method

.method private switchToOtherMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->switchToOtherModule(I)V

    .line 612
    const-string/jumbo v0, "pref_camera_panoramamode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetPreference(Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method private trackPictureTaken()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1773
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 1784
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v2, "panorama_last_start_direction_key"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1785
    .local v0, "lastPos":I
    if-lez v0, :cond_1

    .line 1786
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    aget v1, v1, v4

    if-ne v0, v1, :cond_0

    .line 1787
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_1

    .line 1800
    :goto_1
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "panorama_last_start_direction_key"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1771
    :goto_2
    return-void

    .line 1776
    .end local v0    # "lastPos":I
    :pswitch_0
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "panorama_capture_left_start"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 1780
    :pswitch_1
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "panorama_capture_right_start"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 1790
    .restart local v0    # "lastPos":I
    :pswitch_2
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "panorama_capture_2_times_left_start"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 1794
    :pswitch_3
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "panorama_capture_2_times_right_start"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 1798
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "panorama_capture_2_times_random_start"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 1802
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "panorama_last_start_direction_key"

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    aget v3, v3, v4

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 1773
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1787
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private waitCameraStartUpThread()V
    .locals 2

    .prologue
    .line 1035
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    if-eqz v1, :cond_0

    .line 1036
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    invoke-virtual {v1}, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->cancel()V

    .line 1037
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    invoke-virtual {v1}, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->join()V

    .line 1038
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    .line 1039
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    :cond_0
    :goto_0
    return-void

    .line 1041
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method


# virtual methods
.method public computeFrameRatio()V
    .locals 3

    .prologue
    .line 313
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v0, v0

    .line 314
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    .line 315
    const/high16 v2, 0x42a00000    # 80.0f

    .line 314
    div-float/2addr v1, v2

    .line 313
    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mFrameRatio:F

    .line 316
    sget-boolean v0, Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z

    if-eqz v0, :cond_0

    .line 317
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mFrameRatio:F

    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mFrameRatio:F

    .line 312
    :goto_0
    return-void

    .line 319
    :cond_0
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mFrameRatio:F

    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mFrameRatio:F

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
    const/4 v2, 0x0

    .line 416
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isBackCamera()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraQcom;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 418
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isBackCamera()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraNv;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 420
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isBackCamera()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraLC;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 422
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 423
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isBackCamera()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraMTK;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 424
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 425
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isBackCamera()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraPadOne;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 428
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 433
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/module/BaseModule;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    return v8

    .line 436
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 488
    return v4

    .line 438
    :sswitch_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/module/MorphoPanoramaModule;->onThumbnailClicked(Landroid/view/View;)V

    .line 439
    return v8

    .line 442
    :sswitch_1
    if-nez p1, :cond_2

    .line 443
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onShutterButtonClick()V

    .line 444
    iget-boolean v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-nez v3, :cond_1

    .line 445
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string/jumbo v4, "capture_times_shutter"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 456
    .end local p3    # "extra1":Ljava/lang/Object;
    :cond_1
    :goto_0
    return v8

    .line 447
    .restart local p3    # "extra1":Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 448
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, p3

    .line 449
    check-cast v2, Landroid/graphics/Point;

    .local v2, "start":Landroid/graphics/Point;
    move-object v0, p4

    .line 450
    check-cast v0, Landroid/graphics/Point;

    .line 451
    .local v0, "center":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getSmartShutterButton()Lcom/android/camera/ui/V6SmartShutterButton;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/camera/ui/V6SmartShutterButton;->flyin(IIII)V

    goto :goto_0

    .line 453
    .end local v0    # "center":Landroid/graphics/Point;
    .end local v2    # "start":Landroid/graphics/Point;
    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 454
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/camera/module/MorphoPanoramaModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 459
    .restart local p3    # "extra1":Ljava/lang/Object;
    :sswitch_2
    new-instance v1, Lcom/android/camera/module/MorphoPanoramaModule$1;

    invoke-direct {v1, p0, p3}, Lcom/android/camera/module/MorphoPanoramaModule$1;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;Ljava/lang/Object;)V

    .line 465
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 466
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6ShutterButton;->onPause()V

    .line 467
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/BottomControlLowerPanel;->animationSwitchToVideo(Ljava/lang/Runnable;)V

    .line 468
    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->switchModule()V

    .line 469
    return v8

    .line 474
    .end local v1    # "r":Ljava/lang/Runnable;
    :sswitch_3
    iput-boolean v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    .line 475
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->switchToCameraMode()V

    .line 476
    return v8

    .line 479
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->openSettingActivity()V

    .line 480
    return v8

    .line 483
    :sswitch_5
    if-ne p1, v8, :cond_4

    .line 484
    check-cast p3, Landroid/view/View;

    .end local p3    # "extra1":Ljava/lang/Object;
    check-cast p4, Landroid/graphics/Rect;

    .end local p4    # "extra2":Ljava/lang/Object;
    invoke-direct {p0, p3, p4}, Lcom/android/camera/module/MorphoPanoramaModule;->onFrameLayoutChange(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 486
    :cond_4
    return v8

    .line 436
    :sswitch_data_0
    .sparse-switch
        0x7f0c000d -> :sswitch_0
        0x7f0c0011 -> :sswitch_1
        0x7f0c0014 -> :sswitch_2
        0x7f0c0081 -> :sswitch_5
        0x7f0c008b -> :sswitch_3
        0x7f0c0090 -> :sswitch_4
    .end sparse-switch
.end method

.method public isCameraEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 694
    iget-boolean v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 785
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 786
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-eqz v0, :cond_0

    .line 787
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isProcessingFinishTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 788
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->playCameraSound(I)V

    .line 789
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 790
    return v3

    :cond_0
    monitor-exit v1

    .line 795
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 796
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->switchToCameraMode()V

    .line 797
    return v3

    .line 785
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onCameraPickerClicked(I)Z
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    const/4 v2, 0x1

    .line 299
    iput-boolean v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSwitchingCamera:Z

    .line 300
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->enableCameraControls(Z)V

    .line 302
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->releaseCamera()V

    .line 303
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    .line 304
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    invoke-virtual {v0}, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->start()V

    .line 305
    return v2
.end method

.method public onCreate(Lcom/android/camera/Camera;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/Camera;

    .prologue
    const/4 v2, 0x0

    .line 274
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onCreate(Lcom/android/camera/Camera;)V

    .line 275
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->createContentView()V

    .line 276
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 277
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 278
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraId:I

    .line 282
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    .line 283
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    invoke-virtual {v0}, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->start()V

    .line 284
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onCreate()V

    .line 285
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->useProperView()V

    .line 286
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 287
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->createCameraScreenNail(ZZ)V

    .line 291
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 293
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->createContentView()V

    .line 294
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->initializeMiscControls()V

    .line 273
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 619
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    const v1, 0x7f0c0065

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->setLayoutParameters(II)V

    .line 616
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 700
    iget-boolean v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 701
    return v1

    .line 703
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 734
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 706
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 707
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    .line 706
    if-eqz v0, :cond_1

    .line 708
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onShutterButtonClick()V

    .line 710
    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 711
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v2, "capture_times_finger"

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 713
    :cond_2
    return v1

    .line 717
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 718
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    .line 717
    if-eqz v0, :cond_1

    .line 719
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onShutterButtonClick()V

    .line 720
    return v1

    .line 725
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 728
    const/16 v2, 0x18

    if-ne p1, v2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    return v1

    .line 703
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 739
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 740
    return v2

    .line 742
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 748
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 745
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setPressed(Z)V

    .line 746
    return v2

    .line 742
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPauseAfterSuper()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 913
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseAfterSuper()V

    .line 916
    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    monitor-enter v2

    .line 917
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-eqz v0, :cond_0

    .line 918
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->playCameraSound(I)V

    .line 919
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V

    .line 921
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRequestTakePicture:Z

    if-eqz v0, :cond_1

    .line 923
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 926
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 927
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 929
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaPreview:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 930
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaPreview:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 932
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 933
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 934
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    .line 936
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 938
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->waitCameraStartUpThread()V

    .line 940
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_7

    .line 941
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->releaseResources()V

    .line 946
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_5

    .line 947
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 948
    iput-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 950
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->resetScreenOn()V

    .line 951
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onPause()V

    .line 952
    invoke-direct {p0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->setProgressUI(Z)V

    .line 954
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 955
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 956
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 957
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 958
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 959
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 912
    return-void

    .line 916
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_6
    move v0, v1

    .line 940
    goto :goto_0

    .line 943
    :cond_7
    iput-boolean v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitForRelease:Z

    goto :goto_1
.end method

.method public onPauseBeforeSuper()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 905
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseBeforeSuper()V

    .line 906
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    .line 907
    iput-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSwitchingCamera:Z

    .line 908
    iput-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitingFirstFrame:Z

    .line 904
    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v1, 0x0

    .line 1716
    iput-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRequestTakePicture:Z

    .line 1717
    sget-object v1, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPictureTaken"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    monitor-enter v8

    .line 1719
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    monitor-exit v8

    .line 1721
    return-void

    .line 1720
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1723
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureInfoList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;

    .line 1725
    .local v6, "capInfo":Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;

    iget v2, v6, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;->mId:I

    iget v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCount:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionData:[B

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;II[B[B)V

    .line 1726
    .local v0, "still_image_data":Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;
    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->addStillImage(Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;)V

    .line 1735
    iget v1, v6, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;->mStatus:I

    sparse-switch v1, :sswitch_data_0

    .line 1742
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isZslMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1744
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v8

    .line 1764
    sget-object v1, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPictureTaken done"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    return-void

    .line 1739
    :sswitch_0
    const/4 v1, 0x1

    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1718
    .end local v0    # "still_image_data":Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;
    .end local v6    # "capInfo":Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;
    :catchall_0
    move-exception v1

    monitor-exit v8

    throw v1

    .line 1748
    .restart local v0    # "still_image_data":Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;
    .restart local v6    # "capInfo":Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;
    :cond_3
    const-wide/16 v2, 0x32

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1752
    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 1753
    iget-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-eqz v1, :cond_2

    .line 1756
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 1757
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    .line 1758
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 1749
    :catch_0
    move-exception v7

    .line 1750
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1735
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public onPictureTakenPreview([B)V
    .locals 8
    .param p1, "data"    # [B

    .prologue
    .line 1440
    iget-object v7, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    monitor-enter v7

    .line 1441
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v7

    .line 1442
    return-void

    .line 1445
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureInfoList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;

    .line 1447
    .local v6, "capInfo":Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;

    iget v2, v6, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;->mId:I

    iget v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCount:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionData:[B

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;II[B[B)V

    .line 1448
    .local v0, "still_image_data":Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;
    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->addStillImage(Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;)V

    .line 1456
    iget v1, v6, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;->mStatus:I

    sparse-switch v1, :sswitch_data_0

    .line 1463
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 1464
    iget-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-eqz v1, :cond_1

    .line 1467
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 1468
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    .line 1469
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v7

    .line 1439
    return-void

    .line 1460
    :sswitch_0
    const/4 v1, 0x1

    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1440
    .end local v0    # "still_image_data":Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;
    .end local v6    # "capInfo":Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;
    :catchall_0
    move-exception v1

    monitor-exit v7

    throw v1

    .line 1456
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 22
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1292
    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPreviewFrame"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 1294
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    monitor-exit v21

    .line 1295
    return-void

    .line 1294
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isProcessingFinishTask()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1298
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    if-lez v2, :cond_2

    .line 1299
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    .line 1300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v21

    .line 1301
    return-void

    .line 1304
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCount:I

    .line 1305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveSpeed:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 1306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseImage:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mImageID:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionData:[B

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/panorama/MorphoPanoramaGP;->attachPreview([BI[I[B[ILandroid/graphics/Bitmap;)I

    move-result v17

    .line 1307
    .local v17, "ret":I
    if-eqz v17, :cond_3

    .line 1308
    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "%s:attachPreview() -> 0x%x"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :cond_3
    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreviewFrame attachPreview status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-eqz v2, :cond_4

    .line 1312
    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":attachPreview Status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1329
    :cond_4
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    invoke-virtual {v2, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getCurrentDirection([I)I

    move-result v17

    .line 1330
    if-eqz v17, :cond_5

    .line 1331
    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "%s:getCurrentDirection() -> 0x%x"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    if-eqz v2, :cond_e

    .line 1335
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e

    .line 1336
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_e

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 1339
    .local v20, "sw":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 1340
    .local v18, "sh":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 1341
    .local v14, "dw":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 1342
    .local v12, "dh":I
    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-direct {v10, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1343
    .local v10, "canvas":Landroid/graphics/Canvas;
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v10, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1344
    new-instance v13, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v13, v2, v3, v14, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1346
    .local v13, "dst":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v18, v18, v2

    .line 1347
    new-instance v19, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v3, v18, 0xa

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v4, v18, 0x5a

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v4, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1348
    .local v19, "src":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v10, v2, v0, v13, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1351
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 1352
    .local v9, "attachedPos":Landroid/graphics/Point;
    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    .line 1353
    .local v15, "guidePos":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    invoke-virtual {v2, v9, v15}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getGuidancePos(Landroid/graphics/Point;Landroid/graphics/Point;)I

    .line 1354
    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreviewFrame getGuidancePos attachedPos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  guidePos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 1369
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_6

    .line 1370
    if-ge v14, v12, :cond_c

    int-to-float v2, v12

    move/from16 v0, v18

    int-to-float v3, v0

    div-float/2addr v2, v3

    :goto_2
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    .line 1372
    :cond_6
    move/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewRefY:I

    .line 1373
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewRefY:I

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_7

    .line 1374
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewRefY:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewRefY:I

    .line 1376
    :cond_7
    iget v2, v9, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v9, Landroid/graphics/Point;->x:I

    .line 1377
    iget v2, v9, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v9, Landroid/graphics/Point;->y:I

    .line 1378
    iget v2, v15, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v15, Landroid/graphics/Point;->x:I

    .line 1379
    iget v2, v15, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v15, Landroid/graphics/Point;->y:I

    .line 1380
    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreviewFrame change position with ratio Point="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1381
    const-string/jumbo v4, " "

    .line 1380
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1381
    const-string/jumbo v4, " output_rotation="

    .line 1380
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->output_rotation:I

    .line 1380
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1382
    const-string/jumbo v4, " mDirection[0]="

    .line 1380
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    .line 1380
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveSpeed:[I

    invoke-virtual {v2, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getMoveSpeed([I)I

    .line 1385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    const/4 v4, 0x5

    if-ne v2, v4, :cond_d

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveSpeed:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v2, v4}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setToofast(ZI)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewRefY:I

    invoke-virtual {v2, v9, v3}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setPosition(Landroid/graphics/Point;I)V

    .line 1388
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onPreviewMoving()V

    .line 1398
    .end local v9    # "attachedPos":Landroid/graphics/Point;
    .end local v10    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "dh":I
    .end local v13    # "dst":Landroid/graphics/Rect;
    .end local v14    # "dw":I
    .end local v15    # "guidePos":Landroid/graphics/Point;
    .end local v18    # "sh":I
    .end local v19    # "src":Landroid/graphics/Rect;
    .end local v20    # "sw":I
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaPreview:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mImageID:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_f

    .line 1400
    move-object/from16 v11, p1

    .line 1403
    .local v11, "data2":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureInfoList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mImageID:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1404
    new-instance v16, Landroid/os/Handler;

    invoke-direct/range {v16 .. v16}, Landroid/os/Handler;-><init>()V

    .line 1405
    .local v16, "mHandler":Landroid/os/Handler;
    new-instance v2, Lcom/android/camera/module/MorphoPanoramaModule$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/android/camera/module/MorphoPanoramaModule$3;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;[B)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1426
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    .line 1431
    .end local v11    # "data2":[B
    .end local v16    # "mHandler":Landroid/os/Handler;
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6ShutterButton;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1432
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6ShutterButton;->setEnabled(Z)V

    .line 1434
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    .line 1435
    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreviewFrame mPrevDirection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v21

    .line 1291
    return-void

    .line 1316
    :pswitch_1
    const/4 v2, 0x1

    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v21

    .line 1317
    return-void

    .line 1321
    :pswitch_2
    const/4 v2, 0x1

    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v21

    .line 1322
    return-void

    .line 1324
    :pswitch_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveSpeed:[I

    invoke-virtual {v2, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getMoveSpeed([I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1293
    .end local v17    # "ret":I
    :catchall_0
    move-exception v2

    monitor-exit v21

    throw v2

    .line 1358
    .restart local v9    # "attachedPos":Landroid/graphics/Point;
    .restart local v10    # "canvas":Landroid/graphics/Canvas;
    .restart local v12    # "dh":I
    .restart local v13    # "dst":Landroid/graphics/Rect;
    .restart local v14    # "dw":I
    .restart local v15    # "guidePos":Landroid/graphics/Point;
    .restart local v17    # "ret":I
    .restart local v18    # "sh":I
    .restart local v19    # "src":Landroid/graphics/Rect;
    .restart local v20    # "sw":I
    :pswitch_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->output_rotation:I

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->output_rotation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_b

    .line 1359
    :cond_a
    iget v2, v9, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    sub-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Point;->y:I

    .line 1360
    iget v2, v15, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    sub-int/2addr v2, v3

    iput v2, v15, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    .line 1363
    :cond_b
    iget v2, v9, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    sub-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Point;->x:I

    .line 1364
    iget v2, v15, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    sub-int/2addr v2, v3

    iput v2, v15, Landroid/graphics/Point;->x:I

    goto/16 :goto_1

    .line 1370
    :cond_c
    int-to-float v2, v14

    move/from16 v0, v20

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto/16 :goto_2

    .line 1385
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1391
    .end local v9    # "attachedPos":Landroid/graphics/Point;
    .end local v10    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "dh":I
    .end local v13    # "dst":Landroid/graphics/Rect;
    .end local v14    # "dw":I
    .end local v15    # "guidePos":Landroid/graphics/Point;
    .end local v18    # "sh":I
    .end local v19    # "src":Landroid/graphics/Rect;
    .end local v20    # "sw":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-eqz v2, :cond_8

    .line 1392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    .line 1393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, 0x8

    if-eq v2, v3, :cond_8

    .line 1394
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onCaptureOrientationDecided()V

    goto/16 :goto_4

    .line 1428
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5

    .line 1313
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1355
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onResumeAfterSuper()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 868
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeAfterSuper()V

    .line 871
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSetupCameraThread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 872
    const-string/jumbo v2, " mCameraState="

    .line 871
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 872
    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    .line 871
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 873
    const-string/jumbo v2, " mCameraDevice="

    .line 871
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 873
    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 871
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 874
    const-string/jumbo v2, " mWaitForRelease="

    .line 871
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 874
    iget-boolean v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitForRelease:Z

    .line 871
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    if-nez v0, :cond_2

    .line 876
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_2

    .line 877
    :cond_0
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    .line 878
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    invoke-virtual {v0}, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->start()V

    .line 892
    :cond_1
    :goto_0
    iput-boolean v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitForRelease:Z

    .line 893
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onResume()V

    .line 896
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 897
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 899
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    .line 900
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->keepScreenOnAwhile()V

    .line 867
    return-void

    .line 888
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitForRelease:Z

    if-eqz v0, :cond_1

    .line 889
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->startCameraPreview()V

    .line 890
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onResumeBeforeSuper()V
    .locals 2

    .prologue
    .line 857
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeBeforeSuper()V

    .line 859
    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    .line 860
    .local v0, "cm":Lcom/android/camera/ChangeManager;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    .line 862
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->switchToCameraMode()V

    .line 856
    :cond_0
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 2

    .prologue
    .line 754
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 756
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 759
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 760
    return-void

    .line 763
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 764
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-nez v0, :cond_3

    .line 765
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->playCameraSound(I)V

    .line 766
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->startPanoramaShooting()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 751
    return-void

    .line 768
    :cond_3
    const/4 v0, 0x3

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->playCameraSound(I)V

    .line 769
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 763
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 774
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 964
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    .line 966
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNeedResetGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->releaseResources()V

    .line 963
    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    .line 802
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isProcessingFinishTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->gotoGallery()V

    .line 801
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1006
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onUserInteraction()V

    .line 1007
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->keepScreenOnAwhile()V

    .line 1005
    :cond_0
    return-void
.end method

.method protected openSettingActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 499
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 500
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    const-class v2, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 501
    const-string/jumbo v1, "from_where"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    const-string/jumbo v1, ":miui:starting_window_label"

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    const-string/jumbo v1, "StartActivityWhenLocked"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 507
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setJumpFlag(I)V

    .line 509
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "pref_settings"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method protected performVolumeKeyClicked(IZ)V
    .locals 2
    .param p1, "repeatCount"    # I
    .param p2, "pressed"    # Z

    .prologue
    .line 684
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onShutterButtonClick()V

    .line 686
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 687
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "capture_times_volume"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 683
    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1275
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->requestStillPreviewRender()V

    .line 1273
    :cond_0
    return-void
.end method

.method public startPanoramaShooting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1121
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPanoramaShooting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isProcessingFinishTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    return-void

    .line 1125
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->startPanoramaGP()Z

    .line 1128
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v0, v0, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->direction:I

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    .line 1129
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCount:I

    .line 1130
    iput v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    .line 1131
    iput v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessd:I

    .line 1132
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTimeTaken:J

    .line 1134
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    .line 1135
    iput v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    .line 1136
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDeviceOrientationAtCapture:I

    .line 1137
    iput-boolean v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    .line 1140
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAeLockSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1141
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 1142
    :cond_2
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLocation:Landroid/location/Location;

    .line 1143
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLocation:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1144
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSnapshotFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1145
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1146
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 1147
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1150
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->setShootUI()V

    .line 1120
    return-void
.end method
