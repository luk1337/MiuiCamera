.class Lcom/android/camera/module/VideoModule$SavingTask;
.super Ljava/lang/Thread;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SavingTask"
.end annotation


# instance fields
.field private mRestart:Z

.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/VideoModule;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/module/VideoModule;
    .param p2, "restart"    # Z

    .prologue
    .line 1830
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1828
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    .line 1831
    iput-boolean p2, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    .line 1830
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/VideoModule;ZLcom/android/camera/module/VideoModule$SavingTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/module/VideoModule;
    .param p2, "restart"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule$SavingTask;-><init>(Lcom/android/camera/module/VideoModule;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1836
    const-string/jumbo v1, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SavingTask run mMediaRecorderRecording = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v5}, Lcom/android/camera/module/VideoModule;->-get9(Lcom/android/camera/module/VideoModule;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1, v2}, Lcom/android/camera/module/VideoModule;->-set6(Lcom/android/camera/module/VideoModule;Z)Z

    .line 1838
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get9(Lcom/android/camera/module/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1839
    const/4 v0, 0x0

    .line 1840
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->subStopRecording()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1841
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    if-eqz v1, :cond_0

    .line 1842
    new-instance v0, Landroid/content/ContentValues;

    .end local v0    # "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get4(Lcom/android/camera/module/VideoModule;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1843
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get1(Lcom/android/camera/module/VideoModule;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v4}, Lcom/android/camera/module/VideoModule;->-set0(Lcom/android/camera/module/VideoModule;I)I

    .line 1844
    invoke-static {}, Lcom/android/camera/storage/Storage;->switchStoragePathIfNeeded()V

    .line 1845
    sget-object v1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/storage/Storage;->isLowStorageSpace(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->startRecordVideo()Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    .line 1847
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    if-nez v1, :cond_2

    .line 1848
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v1, v1, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v1, :cond_1

    .line 1849
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/android/camera/module/VideoModule;->playCameraSound(I)V

    .line 1851
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get4(Lcom/android/camera/module/VideoModule;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1853
    .restart local v0    # "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get1(Lcom/android/camera/module/VideoModule;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get1(Lcom/android/camera/module/VideoModule;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v4}, Lcom/android/camera/module/VideoModule;->-set0(Lcom/android/camera/module/VideoModule;I)I

    .line 1855
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1, v0}, Lcom/android/camera/module/VideoModule;->-wrap0(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1, v3}, Lcom/android/camera/module/VideoModule;->-set6(Lcom/android/camera/module/VideoModule;Z)Z

    .line 1857
    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    if-eqz v1, :cond_5

    .line 1858
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iput-boolean v2, v1, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 1859
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get19(Lcom/android/camera/module/VideoModule;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1860
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get19(Lcom/android/camera/module/VideoModule;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1861
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/camera/module/VideoModule;->-set10(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$SavingTask;)Lcom/android/camera/module/VideoModule$SavingTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v2

    .line 1835
    :goto_2
    return-void

    .restart local v0    # "values":Landroid/content/ContentValues;
    :cond_4
    move v1, v2

    .line 1845
    goto :goto_0

    .line 1859
    .end local v0    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1864
    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1, v6}, Lcom/android/camera/module/VideoModule;->-set2(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 1865
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.android.camera.action.stop_video_recording"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1866
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v1, v1, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get17(Lcom/android/camera/module/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1867
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v1, v1, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v1, :cond_8

    .line 1869
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v4

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v1, v1, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {v4, v6, v1}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 1876
    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->-get12(Lcom/android/camera/module/VideoModule;)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1877
    const-string/jumbo v1, "videocamera"

    const-string/jumbo v2, "listen none"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get19(Lcom/android/camera/module/VideoModule;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1880
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get19(Lcom/android/camera/module/VideoModule;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1881
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->-get16(Lcom/android/camera/module/VideoModule;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1882
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->-get16(Lcom/android/camera/module/VideoModule;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1883
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/camera/module/VideoModule;->-set5(Lcom/android/camera/module/VideoModule;Z)Z

    .line 1884
    const-string/jumbo v1, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stop recording at SavingTask, space = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/camera/module/VideoModule;->-set10(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$SavingTask;)Lcom/android/camera/module/VideoModule$SavingTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    .line 1879
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_7
    move v1, v3

    .line 1869
    goto :goto_3

    .line 1871
    :cond_8
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get8(Lcom/android/camera/module/VideoModule;)Landroid/os/AsyncTask;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->-get8(Lcom/android/camera/module/VideoModule;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1872
    :cond_9
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    new-instance v3, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {v3, v4}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;-><init>(Lcom/android/camera/module/VideoModule;)V

    new-array v4, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/module/VideoModule;->-set4(Lcom/android/camera/module/VideoModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto/16 :goto_4

    .line 1889
    :cond_a
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1, v6}, Lcom/android/camera/module/VideoModule;->-set10(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$SavingTask;)Lcom/android/camera/module/VideoModule$SavingTask;

    goto/16 :goto_2
.end method
