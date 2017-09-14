.class Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;
.super Landroid/os/Handler;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageProcessHandler"
.end annotation


# instance fields
.field private mBayerCaptureResults:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private mBayerFrames:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;",
            ">;"
        }
    .end annotation
.end field

.field private mBayerImages:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureDone:Z

.field private mDroppedBayerCount:I

.field private mDroppedMonoCount:I

.field private mFastClearSight:Z

.field private mMonoCaptureResults:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private mMonoFrames:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;",
            ">;"
        }
    .end annotation
.end field

.field private mMonoImages:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

.field private mNumImagesToProcess:[I

.field private mReprocessedBayerCount:I

.field private mReprocessedMonoCount:I

.field private mReprocessingFrames:Landroid/util/SparseLongArray;

.field private mReprocessingPairCount:I

.field private mReprocessingRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mReprocessingSingleBayer:Z

.field private mTimeout:Z

.field final synthetic this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;


# direct methods
.method constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 511
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 512
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 484
    new-instance v0, Ljava/util/ArrayDeque;

    .line 485
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get21(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v1

    .line 484
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    .line 486
    new-instance v0, Ljava/util/ArrayDeque;

    .line 487
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get21(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v1

    .line 486
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    .line 488
    new-instance v0, Ljava/util/ArrayDeque;

    .line 489
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get21(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v1

    .line 488
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerCaptureResults:Ljava/util/ArrayDeque;

    .line 490
    new-instance v0, Ljava/util/ArrayDeque;

    .line 491
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get21(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v1

    .line 490
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoCaptureResults:Ljava/util/ArrayDeque;

    .line 492
    new-instance v0, Ljava/util/ArrayDeque;

    .line 493
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get21(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v1

    .line 492
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerImages:Ljava/util/ArrayDeque;

    .line 494
    new-instance v0, Ljava/util/ArrayDeque;

    .line 495
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get21(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v1

    .line 494
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoImages:Ljava/util/ArrayDeque;

    .line 497
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:Landroid/util/SparseLongArray;

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    .line 505
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    .line 511
    return-void
.end method

.method private checkFastClearSight(Landroid/hardware/camera2/CaptureResult;)V
    .locals 4
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 677
    if-eqz p1, :cond_0

    .line 678
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 679
    .local v0, "iso":Ljava/lang/Integer;
    const-string/jumbo v1, "CSImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fastCS: iso="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x190

    if-ge v1, v2, :cond_0

    .line 681
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mFastClearSight:Z

    .line 676
    .end local v0    # "iso":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private checkForValidFramePairAndReprocess()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 690
    const-string/jumbo v2, "CSImageProcessor"

    .line 691
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkForValidFramePair - num bayer frames: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 692
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    .line 691
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 692
    const-string/jumbo v4, " num mono frames: "

    .line 691
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 693
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    .line 691
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 690
    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    .line 698
    .local v0, "bayer":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    .line 700
    .local v1, "mono":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    const-string/jumbo v2, "CSImageProcessor"

    .line 701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkForValidFramePair - bayer ts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 702
    iget-object v4, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    .line 701
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 702
    const-string/jumbo v4, " mono ts: "

    .line 701
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 703
    iget-object v4, v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    .line 701
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 700
    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-string/jumbo v2, "CSImageProcessor"

    .line 705
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkForValidFramePair - difference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 706
    iget-object v4, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    .line 707
    iget-object v6, v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v6}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    .line 706
    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 705
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 704
    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    .line 710
    iget-object v4, v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    .line 709
    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 710
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get24(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J

    move-result-wide v4

    .line 709
    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 711
    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mDroppedBayerCount:I

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get22(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mDroppedMonoCount:I

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get22(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 712
    :cond_2
    const-string/jumbo v2, "CSImageProcessor"

    const-string/jumbo v3, "checkForValidFramePair - single bayer"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iput-boolean v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingSingleBayer:Z

    .line 714
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    invoke-direct {p0, v9, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->sendReprocessRequest(ILorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;)V

    goto/16 :goto_0

    .line 715
    :cond_3
    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    iget-object v4, v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 716
    const-string/jumbo v2, "CSImageProcessor"

    const-string/jumbo v3, "checkForValidFramePair - toss mono"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mono":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    check-cast v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    .line 719
    .restart local v1    # "mono":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    iget-object v2, v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 720
    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mDroppedMonoCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mDroppedMonoCount:I

    goto/16 :goto_0

    .line 722
    :cond_4
    const-string/jumbo v2, "CSImageProcessor"

    const-string/jumbo v3, "checkForValidFramePair - toss bayer"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bayer":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    check-cast v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    .line 725
    .restart local v0    # "bayer":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 726
    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mDroppedBayerCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mDroppedBayerCount:I

    goto/16 :goto_0

    .line 730
    :cond_5
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    invoke-direct {p0, v9, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->sendReprocessRequest(ILorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;)V

    .line 731
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    invoke-direct {p0, v8, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->sendReprocessRequest(ILorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;)V

    .line 732
    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    .line 733
    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    if-ne v8, v2, :cond_0

    .line 734
    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-direct {p0, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->checkFastClearSight(Landroid/hardware/camera2/CaptureResult;)V

    goto/16 :goto_0
.end method

.method private checkReprocessDone()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v1, 0x0

    .line 922
    const-string/jumbo v0, "CSImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkReprocessDone capture done: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 923
    const-string/jumbo v3, ", reproc frames: "

    .line 922
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 923
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    .line 922
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 926
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get5(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    move-result-object v2

    .line 927
    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingSingleBayer:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 926
    :goto_0
    invoke-virtual {v2, v4, v0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 928
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 929
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 930
    iput-boolean v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    .line 931
    iput-boolean v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingSingleBayer:Z

    .line 935
    invoke-virtual {p0, v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 921
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 927
    goto :goto_0

    .line 937
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->kickTimeout()V

    goto :goto_1
.end method

.method private handleTimeout()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 565
    const-string/jumbo v0, "CSImageProcessor"

    const-string/jumbo v1, "handleTimeout"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->releaseFrames()V

    .line 568
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 569
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 570
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 571
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 572
    invoke-virtual {p0, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 575
    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    .line 576
    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mTimeout:Z

    .line 577
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get5(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 564
    return-void
.end method

.method private kickTimeout()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 581
    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mTimeout:Z

    if-nez v0, :cond_0

    .line 582
    invoke-virtual {p0, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 583
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get7(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 580
    :cond_0
    return-void
.end method

.method private processFinalPair()V
    .locals 2

    .prologue
    .line 838
    const-string/jumbo v0, "CSImageProcessor"

    const-string/jumbo v1, "processFinalPair"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->releaseBayerFrames()V

    .line 840
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->releaseMonoFrames()V

    .line 842
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 843
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 845
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    .line 847
    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    if-nez v0, :cond_0

    .line 849
    const-string/jumbo v0, "CSImageProcessor"

    const-string/jumbo v1, "processFinalPair - no matching pairs found"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 852
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingSingleBayer:Z

    if-eqz v0, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v0

    invoke-interface {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;->onClearSightFailure()V

    goto :goto_0
.end method

.method private processImg(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 588
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Image;

    .line 589
    .local v0, "image":Landroid/media/Image;
    iget-boolean v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mTimeout:Z

    if-eqz v1, :cond_1

    .line 590
    const-string/jumbo v1, "CSImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processImg: timeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 594
    :cond_0
    return-void

    .line 597
    :cond_1
    const-string/jumbo v1, "CSImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processImg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 599
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseLongArray;->indexOfValue(J)I

    move-result v1

    if-ltz v1, :cond_3

    .line 601
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_2

    .line 602
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    sget-object v2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->PROCESSED:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    invoke-static {v1, v0, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-wrap5(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/media/Image;Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;)V

    .line 604
    :cond_2
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewReprocessImage(Landroid/os/Message;)V

    .line 587
    :goto_0
    return-void

    .line 607
    :cond_3
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewCaptureEvent(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private processNewCaptureEvent(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 612
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->kickTimeout()V

    .line 615
    iget-boolean v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    if-eqz v7, :cond_1

    .line 616
    const-string/jumbo v7, "CSImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processNewCaptureEvent - captureDone - we already have required frame pairs "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v7, v11, :cond_0

    .line 618
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/media/Image;

    .line 619
    .local v3, "image":Landroid/media/Image;
    const-string/jumbo v7, "CSImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processNewCaptureEvent - captureDone - tossed frame ts: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 622
    .end local v3    # "image":Landroid/media/Image;
    :cond_0
    return-void

    .line 629
    :cond_1
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_6

    .line 630
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerImages:Ljava/util/ArrayDeque;

    .line 631
    .local v4, "imageQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/Image;>;"
    iget-object v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerCaptureResults:Ljava/util/ArrayDeque;

    .line 632
    .local v6, "resultQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/hardware/camera2/TotalCaptureResult;>;"
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    .line 639
    .local v0, "frameQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;>;"
    :goto_0
    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v7, v11, :cond_7

    .line 640
    const-string/jumbo v7, "CSImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processNewCaptureEvent - newImg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/media/Image;

    .line 642
    .restart local v3    # "image":Landroid/media/Image;
    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 655
    .end local v3    # "image":Landroid/media/Image;
    :cond_2
    :goto_1
    const-string/jumbo v7, "CSImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processNewCaptureEvent - cam: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " num imgs: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 656
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v9

    .line 655
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 656
    const-string/jumbo v9, " num results: "

    .line 655
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 656
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->size()I

    move-result v9

    .line 655
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 666
    :cond_3
    :goto_2
    const-string/jumbo v7, "CSImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processNewCaptureEvent - imagestoprocess[bayer] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 667
    const-string/jumbo v9, " imagestoprocess[mono]: "

    .line 666
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 667
    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    aget v9, v9, v11

    .line 666
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-boolean v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mFastClearSight:Z

    if-nez v7, :cond_4

    iget v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get22(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v8

    if-ne v7, v8, :cond_a

    .line 672
    :cond_4
    :goto_3
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processFinalPair()V

    .line 611
    :cond_5
    return-void

    .line 634
    .end local v0    # "frameQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;>;"
    .end local v4    # "imageQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/Image;>;"
    .end local v6    # "resultQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/hardware/camera2/TotalCaptureResult;>;"
    :cond_6
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoImages:Ljava/util/ArrayDeque;

    .line 635
    .restart local v4    # "imageQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/Image;>;"
    iget-object v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoCaptureResults:Ljava/util/ArrayDeque;

    .line 636
    .restart local v6    # "resultQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/hardware/camera2/TotalCaptureResult;>;"
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    .restart local v0    # "frameQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;>;"
    goto/16 :goto_0

    .line 643
    :cond_7
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_8

    .line 644
    const-string/jumbo v7, "CSImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processNewCaptureEvent - new failed result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    iget v8, p1, Landroid/os/Message;->arg1:I

    aget v9, v7, v8

    add-int/lit8 v9, v9, -0x1

    aput v9, v7, v8

    goto/16 :goto_1

    .line 647
    :cond_8
    const-string/jumbo v7, "CSImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processNewCaptureEvent - newResult: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/TotalCaptureResult;

    .line 649
    .local v5, "result":Landroid/hardware/camera2/TotalCaptureResult;
    invoke-virtual {v6, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 650
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_2

    .line 651
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get23(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;

    move-result-object v7

    sget-object v8, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->CAPTURED:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    invoke-virtual {v7, v5, v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->updateResult(Landroid/hardware/camera2/TotalCaptureResult;Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;)V

    goto/16 :goto_1

    .line 659
    .end local v5    # "result":Landroid/hardware/camera2/TotalCaptureResult;
    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Image;

    .line 660
    .local v1, "headImage":Landroid/media/Image;
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/TotalCaptureResult;

    .line 661
    .local v2, "headResult":Landroid/hardware/camera2/TotalCaptureResult;
    new-instance v7, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    invoke-direct {v7, v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;-><init>(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 662
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    iget v8, p1, Landroid/os/Message;->arg1:I

    aget v9, v7, v8

    add-int/lit8 v9, v9, -0x1

    aput v9, v7, v8

    .line 663
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->checkForValidFramePairAndReprocess()V

    goto/16 :goto_2

    .line 670
    .end local v1    # "headImage":Landroid/media/Image;
    .end local v2    # "headResult":Landroid/hardware/camera2/TotalCaptureResult;
    :cond_a
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    aget v7, v7, v10

    if-nez v7, :cond_5

    .line 671
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    aget v7, v7, v11

    if-nez v7, :cond_5

    goto/16 :goto_3
.end method

.method private processNewReprocessFailure(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 905
    iget-boolean v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mTimeout:Z

    if-eqz v1, :cond_0

    .line 906
    const-string/jumbo v1, "CSImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processNewReprocessFailure: timeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return-void

    .line 910
    :cond_0
    const-string/jumbo v1, "CSImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processNewReprocessFailure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureFailure;

    .line 912
    .local v0, "failure":Landroid/hardware/camera2/CaptureFailure;
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureFailure;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 913
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:Landroid/util/SparseLongArray;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Landroid/util/SparseLongArray;->delete(I)V

    .line 915
    iget-boolean v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mFastClearSight:Z

    if-eqz v1, :cond_1

    .line 916
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingSingleBayer:Z

    .line 918
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->checkReprocessDone()V

    .line 904
    return-void
.end method

.method private processNewReprocessImage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/32 v12, 0xf4240

    const/4 v10, 0x0

    .line 859
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_2

    const/4 v3, 0x1

    .line 861
    .local v3, "isBayer":Z
    :goto_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/media/Image;

    .line 862
    .local v2, "image":Landroid/media/Image;
    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v8

    .line 863
    .local v8, "ts":J
    const-string/jumbo v0, "CSImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processNewReprocessImage - cam: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", ts: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    if-eqz v3, :cond_3

    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedBayerCount:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedBayerCount:I

    .line 866
    .local v5, "frameCount":I
    :goto_1
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get8(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get19(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    .line 868
    div-long v6, v8, v12

    .line 867
    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveDebugImageAsJpeg(Lcom/android/camera/storage/ImageSaver;Landroid/media/Image;ZLcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;IJ)V

    .line 870
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get9(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 871
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    div-long v6, v8, v12

    invoke-virtual/range {v1 .. v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveDebugImageAsNV21(Landroid/media/Image;ZLcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;IJ)V

    .line 874
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get5(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    move-result-object v0

    .line 875
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 874
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v1, v10, v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 877
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:Landroid/util/SparseLongArray;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v8, v9}, Landroid/util/SparseLongArray;->indexOfValue(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 878
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->checkReprocessDone()V

    .line 858
    return-void

    .line 859
    .end local v2    # "image":Landroid/media/Image;
    .end local v3    # "isBayer":Z
    .end local v5    # "frameCount":I
    .end local v8    # "ts":J
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "isBayer":Z
    goto/16 :goto_0

    .line 864
    .restart local v2    # "image":Landroid/media/Image;
    .restart local v8    # "ts":J
    :cond_3
    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedMonoCount:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedMonoCount:I

    goto :goto_1
.end method

.method private processNewReprocessResult(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 882
    iget-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mTimeout:Z

    if-eqz v2, :cond_0

    .line 883
    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processNewReprocessResult: timeout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    return-void

    .line 887
    :cond_0
    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processNewReprocessResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_3

    const/4 v0, 0x1

    .line 889
    .local v0, "isBayer":Z
    :goto_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/TotalCaptureResult;

    .line 890
    .local v1, "result":Landroid/hardware/camera2/TotalCaptureResult;
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 892
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceResult(Z)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v2

    if-nez v2, :cond_1

    .line 894
    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reprocess - setReferenceResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->setReferenceResult(ZLandroid/hardware/camera2/TotalCaptureResult;)V

    .line 897
    :cond_1
    if-eqz v0, :cond_2

    .line 898
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get23(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;

    move-result-object v2

    sget-object v3, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->PROCESSED:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    invoke-virtual {v2, v1, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->updateResult(Landroid/hardware/camera2/TotalCaptureResult;Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;)V

    .line 901
    :cond_2
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->checkReprocessDone()V

    .line 881
    return-void

    .line 888
    .end local v0    # "isBayer":Z
    .end local v1    # "result":Landroid/hardware/camera2/TotalCaptureResult;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isBayer":Z
    goto :goto_0
.end method

.method private releaseBayerFrames()V
    .locals 5

    .prologue
    .line 808
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "reprocImg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    .line 809
    .local v2, "reprocImg":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    iget-object v4, v2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 812
    .end local v2    # "reprocImg":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    :cond_0
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    .line 814
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerImages:Ljava/util/ArrayDeque;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "img$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    .line 815
    .local v0, "img":Landroid/media/Image;
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    goto :goto_1

    .line 818
    .end local v0    # "img":Landroid/media/Image;
    :cond_1
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerImages:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    .line 819
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerCaptureResults:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    .line 807
    return-void
.end method

.method private releaseFrames()V
    .locals 1

    .prologue
    .line 801
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->releaseBayerFrames()V

    .line 802
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->releaseMonoFrames()V

    .line 803
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    .line 804
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 800
    return-void
.end method

.method private releaseMonoFrames()V
    .locals 5

    .prologue
    .line 823
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "reprocImg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    .line 824
    .local v2, "reprocImg":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    iget-object v4, v2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 827
    .end local v2    # "reprocImg":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    :cond_0
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    .line 829
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoImages:Ljava/util/ArrayDeque;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "img$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    .line 830
    .local v0, "img":Landroid/media/Image;
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    goto :goto_1

    .line 833
    .end local v0    # "img":Landroid/media/Image;
    :cond_1
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoImages:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    .line 834
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoCaptureResults:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    .line 822
    return-void
.end method

.method private sendReprocessRequest(ILorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;)V
    .locals 12
    .param p1, "camId"    # I
    .param p2, "reprocImg"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    .prologue
    .line 741
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get2(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v7

    aget-object v5, v7, p1

    .line 742
    .local v5, "session":Landroid/hardware/camera2/CameraCaptureSession;
    invoke-virtual {v5}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    .line 745
    .local v0, "device":Landroid/hardware/camera2/CameraDevice;
    :try_start_0
    const-string/jumbo v7, "CSImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendReprocessRequest - cam: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v7, p2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    .line 748
    .local v3, "reprocRequest":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get15(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageReader;

    move-result-object v7

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 749
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 750
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 749
    invoke-virtual {v3, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 751
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 752
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 751
    invoke-virtual {v3, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 753
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 754
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 753
    invoke-virtual {v3, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 756
    iget-object v7, p2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v7}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 757
    .local v6, "ts":Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 758
    .local v2, "hash":Ljava/lang/Integer;
    invoke-virtual {v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 759
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v7, v8, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 760
    const-string/jumbo v7, "CSImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendReprocessRequest - adding reproc frame - hash: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", ts: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get16(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageWriter;

    move-result-object v7

    aget-object v7, v7, p1

    iget-object v8, p2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v7, v8}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    .line 764
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    .line 766
    .local v4, "request":Landroid/hardware/camera2/CaptureRequest;
    new-instance v7, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler$1;

    invoke-direct {v7, p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler$1;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;I)V

    .line 792
    const/4 v8, 0x0

    .line 765
    invoke-virtual {v5, v4, v7, v8}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 794
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    .end local v2    # "hash":Ljava/lang/Integer;
    .end local v3    # "reprocRequest":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v6    # "ts":Ljava/lang/Long;
    :goto_0
    return-void

    .line 795
    :catch_0
    move-exception v1

    .line 796
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string/jumbo v7, "CSImageProcessor"

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 517
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-wrap1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    const-string/jumbo v0, "CSImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "capture - drop msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->releaseFrames()V

    .line 520
    return-void

    .line 523
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 516
    :goto_0
    return-void

    .line 525
    :pswitch_0
    iput-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    .line 526
    iput-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mTimeout:Z

    .line 527
    iput-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingSingleBayer:Z

    .line 528
    iput-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mFastClearSight:Z

    .line 529
    iput v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    .line 530
    iput v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedBayerCount:I

    .line 531
    iput v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedMonoCount:I

    .line 532
    iput v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mDroppedBayerCount:I

    .line 533
    iput v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mDroppedMonoCount:I

    .line 534
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    aput v2, v0, v1

    .line 535
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 536
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get20(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/camera_adapter/camera2/NamedImages;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/camera_adapter/camera2/NamedImages;->nameNewImage(J)V

    .line 537
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get20(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/camera_adapter/camera2/NamedImages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/NamedImages;->getNextNameEntity()Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    .line 539
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get5(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    move-result-object v0

    .line 540
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    .line 539
    invoke-virtual {v0, v4, v4, v4, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 544
    :pswitch_1
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->handleTimeout()V

    goto :goto_0

    .line 547
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processImg(Landroid/os/Message;)V

    goto :goto_0

    .line 550
    :pswitch_3
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewCaptureEvent(Landroid/os/Message;)V

    goto :goto_0

    .line 553
    :pswitch_4
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewReprocessResult(Landroid/os/Message;)V

    goto :goto_0

    .line 556
    :pswitch_5
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewCaptureEvent(Landroid/os/Message;)V

    goto :goto_0

    .line 559
    :pswitch_6
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewReprocessFailure(Landroid/os/Message;)V

    goto :goto_0

    .line 523
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method
