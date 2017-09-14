.class public Lcom/android/camera/stereo/StereoDataGroup;
.super Ljava/lang/Object;
.source "StereoDataGroup.java"


# instance fields
.field private mClearImage:[B

.field private mDepthMap:[B

.field private mJpsData:[B

.field private mLdcData:[B

.field private mMaskAndConfigData:[B

.field private mOriginalJpegData:[B

.field private mPictureName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[B[B[B[B[B)V
    .locals 0
    .param p1, "pictureName"    # Ljava/lang/String;
    .param p2, "originalJpegData"    # [B
    .param p3, "jpsData"    # [B
    .param p4, "maskData"    # [B
    .param p5, "depthData"    # [B
    .param p6, "clearImage"    # [B
    .param p7, "ldcData"    # [B

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/camera/stereo/StereoDataGroup;->mPictureName:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/android/camera/stereo/StereoDataGroup;->mOriginalJpegData:[B

    .line 71
    iput-object p3, p0, Lcom/android/camera/stereo/StereoDataGroup;->mJpsData:[B

    .line 72
    iput-object p4, p0, Lcom/android/camera/stereo/StereoDataGroup;->mMaskAndConfigData:[B

    .line 73
    iput-object p5, p0, Lcom/android/camera/stereo/StereoDataGroup;->mDepthMap:[B

    .line 74
    iput-object p6, p0, Lcom/android/camera/stereo/StereoDataGroup;->mClearImage:[B

    .line 75
    iput-object p7, p0, Lcom/android/camera/stereo/StereoDataGroup;->mLdcData:[B

    .line 68
    return-void
.end method


# virtual methods
.method public getClearImage()[B
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/stereo/StereoDataGroup;->mClearImage:[B

    return-object v0
.end method

.method public getDepthMap()[B
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/stereo/StereoDataGroup;->mDepthMap:[B

    return-object v0
.end method

.method public getJpsData()[B
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/stereo/StereoDataGroup;->mJpsData:[B

    return-object v0
.end method

.method public getLdcData()[B
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/stereo/StereoDataGroup;->mLdcData:[B

    return-object v0
.end method

.method public getMaskAndConfigData()[B
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/stereo/StereoDataGroup;->mMaskAndConfigData:[B

    return-object v0
.end method

.method public getOriginalJpegData()[B
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/stereo/StereoDataGroup;->mOriginalJpegData:[B

    return-object v0
.end method

.method public getPictureName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/stereo/StereoDataGroup;->mPictureName:Ljava/lang/String;

    return-object v0
.end method
