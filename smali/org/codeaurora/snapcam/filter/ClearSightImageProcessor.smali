.class public Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.super Ljava/lang/Object;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;
    }
.end annotation


# static fields
.field private static final MONO_SIZES:[Landroid/util/Size;

.field private static OTP_CALIB_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<[B>;"
        }
    .end annotation
.end field

.field private static mInstance:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;


# instance fields
.field private mBayerCaptureStarted:Z

.field private mCallback:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

.field private mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

.field private mCaptureStartTime:J

.field private mClearsightProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;

.field private mClearsightProcessThread:Landroid/os/HandlerThread;

.field private mClearsightRegisterHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

.field private mClearsightRegisterThread:Landroid/os/HandlerThread;

.field private mCsFinishTime:J

.field private mCsTimeout:I

.field private mDumpImages:Z

.field private mDumpYUV:Z

.field private mEncodeImageReader:[Landroid/media/ImageReader;

.field private mFinalMonoSize:Landroid/util/Size;

.field private mFinalPictureRatio:F

.field private mFinalPictureSize:Landroid/util/Size;

.field private mImageEncodeHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

.field private mImageEncodeThread:Landroid/os/HandlerThread;

.field private mImageProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

.field private mImageProcessThread:Landroid/os/HandlerThread;

.field private mImageReader:[Landroid/media/ImageReader;

.field private mImageWriter:[Landroid/media/ImageWriter;

.field private mIsClosing:Z

.field private mJpegFinishTime:J

.field private mJpegRotation:I

.field private mMediaSaver:Lcom/android/camera/storage/ImageSaver;

.field private mNamedImages:Lcom/android/camera/camera_adapter/camera2/NamedImages;

.field private mNumBurstCount:I

.field private mNumFrameCount:I

.field private mSemiFinishedImage:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;

.field private mTimestampThresholdNs:J


# direct methods
.method static synthetic -get0(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mBayerCaptureStarted:Z

    return v0
.end method

.method static synthetic -get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCallback:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    return-object v0
.end method

.method static synthetic -get10(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageReader;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    return-object v0
.end method

.method static synthetic -get11(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalMonoSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic -get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic -get13(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    return-object v0
.end method

.method static synthetic -get14(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

    return-object v0
.end method

.method static synthetic -get15(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageReader;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    return-object v0
.end method

.method static synthetic -get16(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageWriter;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    return-object v0
.end method

.method static synthetic -get17(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J
    .locals 2

    iget-wide v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mJpegFinishTime:J

    return-wide v0
.end method

.method static synthetic -get18(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I
    .locals 1

    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mJpegRotation:I

    return v0
.end method

.method static synthetic -get19(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/storage/ImageSaver;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mMediaSaver:Lcom/android/camera/storage/ImageSaver;

    return-object v0
.end method

.method static synthetic -get2(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic -get20(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/camera_adapter/camera2/NamedImages;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNamedImages:Lcom/android/camera/camera_adapter/camera2/NamedImages;

    return-object v0
.end method

.method static synthetic -get21(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I
    .locals 1

    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    return v0
.end method

.method static synthetic -get22(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I
    .locals 1

    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    return v0
.end method

.method static synthetic -get23(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mSemiFinishedImage:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;

    return-object v0
.end method

.method static synthetic -get24(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J
    .locals 2

    iget-wide v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mTimestampThresholdNs:J

    return-wide v0
.end method

.method static synthetic -get3(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J
    .locals 2

    iget-wide v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic -get4(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;

    return-object v0
.end method

.method static synthetic -get5(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    return-object v0
.end method

.method static synthetic -get6(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J
    .locals 2

    iget-wide v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCsFinishTime:J

    return-wide v0
.end method

.method static synthetic -get7(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I
    .locals 1

    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCsTimeout:I

    return v0
.end method

.method static synthetic -get8(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpImages:Z

    return v0
.end method

.method static synthetic -get9(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpYUV:Z

    return v0
.end method

.method static synthetic -set0(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mBayerCaptureStarted:Z

    return p1
.end method

.method static synthetic -set1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;J)J
    .locals 1

    iput-wide p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCsFinishTime:J

    return-wide p1
.end method

.method static synthetic -set2(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;J)J
    .locals 1

    iput-wide p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mJpegFinishTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getFinalCropRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z
    .locals 1

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->isClosing()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->resetSemiFinishedImage()V

    return-void
.end method

.method static synthetic -wrap3(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveAndResetSemiFinishedImage()V

    return-void
.end method

.method static synthetic -wrap4(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/media/Image;Landroid/media/Image;)V
    .locals 0
    .param p1, "bayerImage"    # Landroid/media/Image;
    .param p2, "monoImage"    # Landroid/media/Image;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->updateSemiFinishedJpeg(Landroid/media/Image;Landroid/media/Image;)V

    return-void
.end method

.method static synthetic -wrap5(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/media/Image;Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;)V
    .locals 0
    .param p1, "image"    # Landroid/media/Image;
    .param p2, "state"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->updateSemiFinishedYuv(Landroid/media/Image;Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x578

    .line 98
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/util/Size;

    .line 99
    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x640

    const/16 v3, 0x4b0

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 100
    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x780

    const/16 v3, 0x438

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 101
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v4, v4}, Landroid/util/Size;-><init>(II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 98
    sput-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->MONO_SIZES:[Landroid/util/Size;

    .line 117
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 118
    const-string/jumbo v1, "org.codeaurora.qcamera3.dualcam_calib_meta_data.dualcam_calib_meta_data_blob"

    .line 119
    const-class v2, [B

    .line 117
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 116
    sput-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->OTP_CALIB_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 85
    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x2

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-array v2, v3, [Landroid/media/ImageReader;

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    .line 123
    new-array v2, v3, [Landroid/media/ImageReader;

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    .line 124
    new-array v2, v3, [Landroid/media/ImageWriter;

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    .line 142
    new-array v2, v3, [Landroid/hardware/camera2/CameraCaptureSession;

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

    .line 160
    new-instance v2, Lcom/android/camera/camera_adapter/camera2/NamedImages;

    invoke-direct {v2}, Lcom/android/camera/camera_adapter/camera2/NamedImages;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNamedImages:Lcom/android/camera/camera_adapter/camera2/NamedImages;

    .line 161
    const-string/jumbo v2, "persist.camera.cs.threshold"

    const-wide/16 v4, 0xa

    invoke-static {v2, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 162
    .local v0, "threshMs":J
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mTimestampThresholdNs:J

    .line 163
    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mTimestampThresholdNs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mTimestampThresholdNs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string/jumbo v2, "persist.camera.cs.burstcount"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    .line 166
    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mNumBurstCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    .line 169
    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mNumFrameCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string/jumbo v2, "persist.camera.cs.dumpframes"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpImages:Z

    .line 172
    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDumpImages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpImages:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string/jumbo v2, "persist.camera.cs.dumpyuv"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpYUV:Z

    .line 175
    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDumpYUV: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpYUV:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string/jumbo v2, "persist.camera.cs.timeout"

    const/16 v3, 0x7d0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCsTimeout:I

    .line 178
    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCsTimeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCsTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method private createEncodeImageReader(III)Landroid/media/ImageReader;
    .locals 3
    .param p1, "cam"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 453
    iget v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    const/16 v2, 0x100

    .line 452
    invoke-static {p2, p3, v2, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    .line 454
    .local v0, "reader":Landroid/media/ImageReader;
    new-instance v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$3;

    invoke-direct {v1, p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$3;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;I)V

    .line 461
    const/4 v2, 0x0

    .line 454
    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 463
    return-object v0
.end method

.method private createImageReader(III)Landroid/media/ImageReader;
    .locals 3
    .param p1, "cam"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 438
    iget v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    add-int/2addr v1, v2

    const/16 v2, 0x23

    .line 437
    invoke-static {p2, p3, v2, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    .line 439
    .local v0, "reader":Landroid/media/ImageReader;
    new-instance v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$2;

    invoke-direct {v1, p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$2;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;I)V

    .line 446
    const/4 v2, 0x0

    .line 439
    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 448
    return-object v0
.end method

.method public static createInstance()V
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mInstance:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-direct {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;-><init>()V

    sput-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mInstance:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 184
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->createInstance()V

    .line 181
    :cond_0
    return-void
.end method

.method private findMaxOutputSize(Landroid/hardware/camera2/params/StreamConfigurationMap;)Landroid/util/Size;
    .locals 2
    .param p1, "map"    # Landroid/hardware/camera2/params/StreamConfigurationMap;

    .prologue
    .line 1413
    const/16 v1, 0x23

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    .line 1414
    .local v0, "sizes":[Landroid/util/Size;
    new-instance v1, Lcom/android/camera/camera_adapter/camera2/SettingsManager$CompareSizesByArea;

    invoke-direct {v1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager$CompareSizesByArea;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1415
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private getFinalCropRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    .line 1457
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1458
    .local v0, "finalRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 1462
    .local v5, "rectRatio":F
    const-string/jumbo v6, "CSImageProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getFinalCropRect - rect: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    const-string/jumbo v6, "CSImageProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getFinalCropRect - ratios: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    iget v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    .line 1467
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v9

    float-to-int v2, v6

    .line 1468
    .local v2, "newWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    iget v7, p1, Landroid/graphics/Rect;->left:I

    add-int v3, v6, v7

    .line 1469
    .local v3, "newXOffset":I
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 1470
    add-int v6, v3, v2

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 1480
    .end local v2    # "newWidth":I
    .end local v3    # "newXOffset":I
    :cond_0
    :goto_0
    const-string/jumbo v6, "CSImageProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getFinalCropRect - final rect: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    return-object v0

    .line 1471
    :cond_1
    iget v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_0

    .line 1474
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    div-float/2addr v6, v7

    add-float/2addr v6, v9

    float-to-int v1, v6

    .line 1475
    .local v1, "newHeight":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x2

    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int v4, v6, v7

    .line 1476
    .local v4, "newYOffset":I
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 1477
    add-int v6, v4, v1

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private getFinalMonoSize()Landroid/util/Size;
    .locals 13

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    .line 1419
    const/4 v2, 0x0

    .line 1420
    .local v2, "finalSize":Landroid/util/Size;
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-long v0, v7

    .line 1423
    .local v0, "finalPicArea":J
    const-wide/32 v8, 0x1cfde0

    cmp-long v7, v0, v8

    if-lez v7, :cond_0

    .line 1424
    sget-object v8, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->MONO_SIZES:[Landroid/util/Size;

    const/4 v7, 0x0

    array-length v9, v8

    .end local v2    # "finalSize":Landroid/util/Size;
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v6, v8, v7

    .line 1425
    .local v6, "size":Landroid/util/Size;
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v4, v10, v11

    .line 1426
    .local v4, "monoRatio":F
    iget v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    cmpl-float v10, v4, v10

    if-nez v10, :cond_2

    .line 1427
    move-object v2, v6

    .line 1447
    .end local v4    # "monoRatio":F
    .end local v6    # "size":Landroid/util/Size;
    :cond_0
    if-nez v2, :cond_1

    .line 1450
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureSize:Landroid/util/Size;

    .line 1453
    :cond_1
    return-object v2

    .line 1429
    .restart local v4    # "monoRatio":F
    .restart local v6    # "size":Landroid/util/Size;
    :cond_2
    iget v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    sub-float v10, v4, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x3dcccccd    # 0.1f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_4

    .line 1431
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 1432
    .local v5, "monoWidth":I
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 1433
    .local v3, "monoHeight":I
    iget v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    cmpl-float v10, v4, v10

    if-lez v10, :cond_5

    .line 1436
    int-to-float v10, v5

    iget v11, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    div-float/2addr v10, v11

    add-float/2addr v10, v12

    float-to-int v3, v10

    .line 1442
    :cond_3
    :goto_1
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v5, v3}, Landroid/util/Size;-><init>(II)V

    .line 1424
    .end local v3    # "monoHeight":I
    .end local v5    # "monoWidth":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1437
    .restart local v3    # "monoHeight":I
    .restart local v5    # "monoWidth":I
    :cond_5
    iget v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    cmpg-float v10, v4, v10

    if-gez v10, :cond_3

    .line 1440
    int-to-float v10, v3

    iget v11, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v12

    float-to-int v5, v10

    goto :goto_1
.end method

.method public static getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mInstance:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    if-nez v0, :cond_0

    .line 190
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createInstance()V

    .line 192
    :cond_0
    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mInstance:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    return-object v0
.end method

.method private declared-synchronized isClosing()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 433
    :try_start_0
    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mIsClosing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetSemiFinishedImage()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 1498
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mSemiFinishedImage:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;

    invoke-virtual {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1497
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized saveAndResetSemiFinishedImage()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 1493
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mSemiFinishedImage:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;

    invoke-virtual {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->save()V

    .line 1494
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mSemiFinishedImage:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;

    invoke-virtual {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1492
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setClosing(Z)V
    .locals 1
    .param p1, "closing"    # Z

    .prologue
    monitor-enter p0

    .line 429
    :try_start_0
    iput-boolean p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mIsClosing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 428
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateSemiFinishedJpeg(Landroid/media/Image;Landroid/media/Image;)V
    .locals 1
    .param p1, "bayerImage"    # Landroid/media/Image;
    .param p2, "monoImage"    # Landroid/media/Image;

    .prologue
    monitor-enter p0

    .line 1485
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mSemiFinishedImage:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->updateEncodedImage(Landroid/media/Image;Landroid/media/Image;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1484
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateSemiFinishedYuv(Landroid/media/Image;Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;)V
    .locals 1
    .param p1, "image"    # Landroid/media/Image;
    .param p2, "state"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    .prologue
    monitor-enter p0

    .line 1489
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mSemiFinishedImage:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->updateBayerImage(Landroid/media/Image;Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1488
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public capture(ZLandroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/os/Handler;)V
    .locals 9
    .param p1, "bayer"    # Z
    .param p2, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p3, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p4, "captureCallbackHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 359
    const-string/jumbo v5, "CSImageProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "capture: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    if-eqz p1, :cond_0

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureStartTime:J

    .line 364
    :cond_0
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 365
    .local v1, "cam":I
    :goto_0
    if-eqz p1, :cond_1

    .line 366
    iput-boolean v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mBayerCaptureStarted:Z

    .line 369
    :cond_1
    new-instance v2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;

    invoke-direct {v2, p0, v1, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;IZ)V

    .line 416
    .local v2, "captureCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v0, "burstList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 418
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    if-ge v3, v5, :cond_3

    .line 419
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 420
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    .line 421
    .local v4, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 364
    .end local v0    # "burstList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .end local v1    # "cam":I
    .end local v2    # "captureCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .end local v3    # "i":I
    .end local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "cam":I
    goto :goto_0

    .line 424
    .restart local v0    # "burstList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .restart local v2    # "captureCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .restart local v3    # "i":I
    :cond_3
    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v8, v1, v6, v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 425
    invoke-virtual {p2, v0, v2, p4}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 358
    return-void
.end method

.method public close()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 237
    const-string/jumbo v2, "CSImageProcessor"

    const-string/jumbo v3, "close>>>"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0, v5}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->setClosing(Z)V

    .line 242
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 246
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V

    .line 247
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    .line 248
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_1

    .line 255
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 258
    :try_start_1
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V

    .line 259
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    .line 260
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 266
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_2

    .line 267
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 270
    :try_start_2
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V

    .line 271
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    .line 272
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 278
    :cond_2
    :goto_2
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_3

    .line 279
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 282
    :try_start_3
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V

    .line 283
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    .line 284
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 290
    :cond_3
    :goto_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 291
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4

    .line 292
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    .line 293
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aput-object v4, v2, v1

    .line 295
    :cond_4
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    .line 296
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    .line 297
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    aput-object v4, v2, v1

    .line 299
    :cond_5
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    .line 300
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/ImageWriter;->close()V

    .line 301
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    aput-object v4, v2, v1

    .line 290
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 249
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "CSImageProcessor"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 261
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 262
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "CSImageProcessor"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 273
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 274
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "CSImageProcessor"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 285
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v0

    .line 286
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "CSImageProcessor"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 305
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "i":I
    :cond_7
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveAndResetSemiFinishedImage()V

    .line 307
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

    aput-object v4, v2, v5

    .line 308
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    .line 309
    iput-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mMediaSaver:Lcom/android/camera/storage/ImageSaver;

    .line 310
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->close()V

    .line 311
    const-string/jumbo v2, "CSImageProcessor"

    const-string/jumbo v3, "close<<<"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method public createCaptureRequest(Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3
    .param p1, "device"    # Landroid/hardware/camera2/CameraDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 351
    const-string/jumbo v1, "CSImageProcessor"

    const-string/jumbo v2, "createCaptureRequest"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 353
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    return-object v0
.end method

.method public createCaptureSession(ZLandroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 5
    .param p1, "bayer"    # Z
    .param p2, "device"    # Landroid/hardware/camera2/CameraDevice;
    .param p4, "captureSessionCallback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/hardware/camera2/CameraDevice;",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 329
    .local p3, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    const-string/jumbo v1, "CSImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createCaptureSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 332
    .local v0, "cam":I
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    new-instance v1, Landroid/hardware/camera2/params/InputConfiguration;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/media/ImageReader;->getWidth()I

    move-result v2

    .line 337
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/media/ImageReader;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v4

    .line 336
    invoke-direct {v1, v2, v3, v4}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 338
    const/4 v2, 0x0

    .line 335
    invoke-virtual {p2, v1, p3, p4, v2}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 327
    return-void

    .line 331
    .end local v0    # "cam":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "cam":I
    goto :goto_0
.end method

.method public createYuvImage(Landroid/media/Image;)Landroid/graphics/YuvImage;
    .locals 11
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 1376
    if-nez p1, :cond_0

    .line 1377
    const-string/jumbo v0, "CSImageProcessor"

    const-string/jumbo v2, "createYuvImage - invalid param"

    invoke-static {v0, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    return-object v4

    .line 1380
    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    .line 1381
    .local v6, "planes":[Landroid/media/Image$Plane;
    aget-object v0, v6, v2

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 1382
    .local v10, "yBuffer":Ljava/nio/ByteBuffer;
    aget-object v0, v6, v3

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 1383
    .local v9, "vuBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    .line 1384
    .local v8, "sizeY":I
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    .line 1385
    .local v7, "sizeVU":I
    add-int v0, v8, v7

    new-array v1, v0, [B

    .line 1386
    .local v1, "data":[B
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1387
    invoke-virtual {v10, v1, v2, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1388
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1389
    invoke-virtual {v9, v1, v8, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1390
    new-array v5, v3, [I

    aget-object v0, v6, v2

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    aput v0, v5, v2

    .line 1391
    aget-object v0, v6, v3

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    const/4 v2, 0x1

    aput v0, v5, v2

    .line 1393
    .local v5, "strides":[I
    new-instance v0, Landroid/graphics/YuvImage;

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v3

    .line 1394
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v4

    .line 1393
    const/16 v2, 0x11

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    return-object v0
.end method

.method public getJpegData(Landroid/media/Image;)[B
    .locals 7
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1398
    if-nez p1, :cond_0

    .line 1399
    const-string/jumbo v4, "CSImageProcessor"

    const-string/jumbo v5, "getJpegData - invalid param"

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    return-object v6

    .line 1402
    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    .line 1403
    .local v2, "planes":[Landroid/media/Image$Plane;
    aget-object v4, v2, v5

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1404
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    .line 1405
    .local v3, "size":I
    new-array v1, v3, [B

    .line 1406
    .local v1, "data":[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1407
    invoke-virtual {v0, v1, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1409
    return-object v1
.end method

.method public init(Landroid/hardware/camera2/params/StreamConfigurationMap;IILandroid/content/Context;)V
    .locals 10
    .param p1, "map"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    const-string/jumbo v7, "CSImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "init>>>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mIsClosing:Z

    .line 198
    new-instance v7, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;)V

    iput-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mSemiFinishedImage:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;

    .line 199
    new-instance v7, Landroid/os/HandlerThread;

    const-string/jumbo v8, "CameraImageProcess"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    .line 200
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 201
    new-instance v7, Landroid/os/HandlerThread;

    const-string/jumbo v8, "ClearsightRegister"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    .line 202
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 203
    new-instance v7, Landroid/os/HandlerThread;

    const-string/jumbo v8, "ClearsightProcess"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    .line 204
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 205
    new-instance v7, Landroid/os/HandlerThread;

    const-string/jumbo v8, "CameraImageEncode"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    .line 206
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 208
    new-instance v7, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V

    iput-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

    .line 209
    new-instance v7, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V

    iput-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    .line 210
    new-instance v7, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;

    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V

    iput-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;

    .line 211
    new-instance v7, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V

    iput-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    .line 213
    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, p2, p3}, Landroid/util/Size;-><init>(II)V

    iput-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureSize:Landroid/util/Size;

    .line 214
    int-to-float v7, p2

    int-to-float v8, p3

    div-float/2addr v7, v8

    iput v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    .line 215
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getFinalMonoSize()Landroid/util/Size;

    move-result-object v7

    iput-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalMonoSize:Landroid/util/Size;

    .line 216
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->findMaxOutputSize(Landroid/hardware/camera2/params/StreamConfigurationMap;)Landroid/util/Size;

    move-result-object v5

    .line 217
    .local v5, "maxSize":Landroid/util/Size;
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    .line 218
    .local v6, "maxWidth":I
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 219
    .local v4, "maxHeight":I
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    const/4 v8, 0x0

    invoke-direct {p0, v8, v6, v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createImageReader(III)Landroid/media/ImageReader;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 220
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    const/4 v8, 0x1

    invoke-direct {p0, v8, v6, v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createImageReader(III)Landroid/media/ImageReader;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 221
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    const/4 v8, 0x0

    invoke-direct {p0, v8, v6, v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createEncodeImageReader(III)Landroid/media/ImageReader;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 222
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    const/4 v8, 0x1

    invoke-direct {p0, v8, v6, v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createEncodeImageReader(III)Landroid/media/ImageReader;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 224
    const-string/jumbo v7, "camera"

    invoke-virtual {p4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    .line 226
    .local v2, "cm":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    const-string/jumbo v7, "0"

    invoke-virtual {v2, v7}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 227
    .local v1, "cc":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v7, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->OTP_CALIB_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 228
    .local v0, "blob":[B
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v7

    iget v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    mul-int/lit8 v8, v8, 0x2

    .line 229
    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->createFromBytes([B)Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    move-result-object v9

    .line 228
    invoke-virtual {v7, v8, v6, v4, v9}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->init(IIILorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v0    # "blob":[B
    .end local v1    # "cc":Landroid/hardware/camera2/CameraCharacteristics;
    :goto_0
    const-string/jumbo v7, "CSImageProcessor"

    const-string/jumbo v8, "init<<<"

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void

    .line 230
    :catch_0
    move-exception v3

    .line 231
    .local v3, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string/jumbo v7, "CSImageProcessor"

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCaptureSessionConfigured(ZLandroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5
    .param p1, "bayer"    # Z
    .param p2, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 342
    const-string/jumbo v0, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCaptureSessionConfigured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    aput-object p2, v3, v0

    .line 345
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    if-eqz p1, :cond_1

    .line 346
    :goto_1
    invoke-virtual {p2}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object v2

    iget v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    invoke-static {v2, v3}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v2

    .line 345
    aput-object v2, v0, v1

    .line 341
    return-void

    :cond_0
    move v0, v2

    .line 344
    goto :goto_0

    :cond_1
    move v1, v2

    .line 345
    goto :goto_1
.end method

.method public saveDebugImageAsJpeg(Lcom/android/camera/storage/ImageSaver;Landroid/graphics/YuvImage;ZLcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;IJ)V
    .locals 12
    .param p1, "saver"    # Lcom/android/camera/storage/ImageSaver;
    .param p2, "image"    # Landroid/graphics/YuvImage;
    .param p3, "isBayer"    # Z
    .param p4, "namedEntity"    # Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;
    .param p5, "count"    # I
    .param p6, "ts"    # J

    .prologue
    .line 1343
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1345
    .local v10, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v1, 0x64

    .line 1344
    invoke-virtual {p2, v0, v1, v10}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1347
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveDebugImageAsJpeg(Lcom/android/camera/storage/ImageSaver;[BIIZLcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;IJ)V

    .line 1342
    return-void
.end method

.method public saveDebugImageAsJpeg(Lcom/android/camera/storage/ImageSaver;Landroid/media/Image;ZLcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;IJ)V
    .locals 10
    .param p1, "saver"    # Lcom/android/camera/storage/ImageSaver;
    .param p2, "image"    # Landroid/media/Image;
    .param p3, "isBayer"    # Z
    .param p4, "namedEntity"    # Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;
    .param p5, "count"    # I
    .param p6, "ts"    # J

    .prologue
    .line 1353
    invoke-virtual {p2}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    .line 1354
    invoke-virtual {p0, p2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createYuvImage(Landroid/media/Image;)Landroid/graphics/YuvImage;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveDebugImageAsJpeg(Lcom/android/camera/storage/ImageSaver;Landroid/graphics/YuvImage;ZLcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;IJ)V

    .line 1352
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    invoke-virtual {p2}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 1356
    invoke-virtual {p0, p2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/media/Image;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/media/Image;->getHeight()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveDebugImageAsJpeg(Lcom/android/camera/storage/ImageSaver;[BIIZLcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;IJ)V

    goto :goto_0
.end method

.method public saveDebugImageAsJpeg(Lcom/android/camera/storage/ImageSaver;[BIIZLcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;IJ)V
    .locals 20
    .param p1, "saver"    # Lcom/android/camera/storage/ImageSaver;
    .param p2, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "isBayer"    # Z
    .param p6, "namedEntity"    # Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;
    .param p7, "count"    # I
    .param p8, "ts"    # J

    .prologue
    .line 1332
    if-eqz p5, :cond_0

    const-string/jumbo v18, "b"

    .line 1333
    .local v18, "type":Ljava/lang/String;
    :goto_0
    if-nez p6, :cond_1

    const-wide/16 v6, -0x1

    .line 1334
    .local v6, "date":J
    :goto_1
    if-nez p6, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1335
    .local v2, "entityTitle":Ljava/lang/String;
    :goto_2
    const-string/jumbo v3, "%s_%s%02d_%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v4, v8

    const/4 v8, 0x1

    aput-object v18, v4, v8

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v4, v9

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1337
    .local v5, "title":Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1338
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v10, p3

    move/from16 v11, p4

    .line 1337
    invoke-virtual/range {v3 .. v17}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    .line 1331
    return-void

    .line 1332
    .end local v2    # "entityTitle":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "date":J
    .end local v18    # "type":Ljava/lang/String;
    :cond_0
    const-string/jumbo v18, "m"

    .restart local v18    # "type":Ljava/lang/String;
    goto :goto_0

    .line 1333
    :cond_1
    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->date:J

    .restart local v6    # "date":J
    goto :goto_1

    .line 1334
    :cond_2
    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->title:Ljava/lang/String;

    .restart local v2    # "entityTitle":Ljava/lang/String;
    goto :goto_2
.end method

.method public saveDebugImageAsNV21(Landroid/media/Image;ZLcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;IJ)V
    .locals 9
    .param p1, "image"    # Landroid/media/Image;
    .param p2, "isBayer"    # Z
    .param p3, "namedEntity"    # Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;
    .param p4, "count"    # I
    .param p5, "ts"    # J

    .prologue
    .line 1362
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_0

    .line 1363
    const-string/jumbo v4, "CSImageProcessor"

    const-string/jumbo v5, "saveDebugImageAsNV21 - invalid param"

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v2, "b"

    .line 1367
    .local v2, "type":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "%s_%dx%d_NV21_%s%02d_%d"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p3, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->title:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1368
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const/4 v6, 0x3

    aput-object v2, v5, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v5, v7

    .line 1367
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1370
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createYuvImage(Landroid/media/Image;)Landroid/graphics/YuvImage;

    move-result-object v3

    .line 1371
    .local v3, "yuv":Landroid/graphics/YuvImage;
    const-string/jumbo v4, ".yuv"

    invoke-static {v1, v4}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1372
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/storage/Storage;->writeFile(Ljava/lang/String;[B)J

    .line 1361
    return-void

    .line 1366
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "yuv":Landroid/graphics/YuvImage;
    :cond_1
    const-string/jumbo v2, "m"

    .restart local v2    # "type":Ljava/lang/String;
    goto :goto_0
.end method

.method public setCallback(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;)V
    .locals 0
    .param p1, "callback"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    .prologue
    .line 315
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCallback:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    .line 314
    return-void
.end method

.method public setJpegRotation(I)V
    .locals 0
    .param p1, "jpegRotation"    # I

    .prologue
    .line 323
    iput p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mJpegRotation:I

    .line 322
    return-void
.end method

.method public setMediaSaver(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0
    .param p1, "saver"    # Lcom/android/camera/storage/ImageSaver;

    .prologue
    .line 319
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mMediaSaver:Lcom/android/camera/storage/ImageSaver;

    .line 318
    return-void
.end method
