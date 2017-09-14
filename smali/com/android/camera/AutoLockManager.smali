.class public Lcom/android/camera/AutoLockManager;
.super Ljava/lang/Object;
.source "AutoLockManager.java"


# static fields
.field private static sMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/android/camera/AutoLockManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private volatile mCount:I

.field private mHandler:Landroid/os/Handler;

.field private mLastActionTime:J

.field private mPaused:Z

.field private mScreenOffTimeOut:J


# direct methods
.method static synthetic -wrap0(Lcom/android/camera/AutoLockManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/AutoLockManager;->lockSreen()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 22
    sput-object v0, Lcom/android/camera/AutoLockManager;->sMap:Ljava/util/WeakHashMap;

    .line 13
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v2, 0x3a98

    iput-wide v2, p0, Lcom/android/camera/AutoLockManager;->mScreenOffTimeOut:J

    .line 20
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/AutoLockManager;->mLastActionTime:J

    .line 26
    iput-object p1, p0, Lcom/android/camera/AutoLockManager;->mContext:Landroid/content/Context;

    .line 27
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/AutoLockManager;->mCount:I

    .line 29
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 30
    const-string/jumbo v2, "screen_off_timeout"

    .line 29
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/android/camera/AutoLockManager;->mScreenOffTimeOut:J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sget-object v1, Lcom/android/camera/AutoLockManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/AutoLockManager;

    .line 38
    .local v0, "instance":Lcom/android/camera/AutoLockManager;
    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/android/camera/AutoLockManager;

    .end local v0    # "instance":Lcom/android/camera/AutoLockManager;
    invoke-direct {v0, p0}, Lcom/android/camera/AutoLockManager;-><init>(Landroid/content/Context;)V

    .line 40
    .restart local v0    # "instance":Lcom/android/camera/AutoLockManager;
    sget-object v1, Lcom/android/camera/AutoLockManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_0
    return-object v0
.end method

.method private initHandler()V
    .locals 3

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "my_handler_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance v1, Lcom/android/camera/AutoLockManager$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/AutoLockManager$1;-><init>(Lcom/android/camera/AutoLockManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    .line 77
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    :cond_0
    return-void
.end method

.method private lockSreen()V
    .locals 2

    .prologue
    .line 93
    iget v1, p0, Lcom/android/camera/AutoLockManager;->mCount:I

    if-gtz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/AutoLockManager;->mPaused:Z

    if-eqz v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_LOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/AutoLockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static removeInstance(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    sget-object v1, Lcom/android/camera/AutoLockManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/AutoLockManager;

    .line 47
    .local v0, "instance":Lcom/android/camera/AutoLockManager;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, v0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public getLastActionTime()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/android/camera/AutoLockManager;->mLastActionTime:J

    return-wide v0
.end method

.method public lockScreenDelayed()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Lcom/android/camera/AutoLockManager;->initHandler()V

    .line 107
    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/camera/AutoLockManager;->mScreenOffTimeOut:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 105
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/AutoLockManager;->mPaused:Z

    .line 52
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/AutoLockManager;->mPaused:Z

    .line 56
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget v0, p0, Lcom/android/camera/AutoLockManager;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/AutoLockManager;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/AutoLockManager;->mLastActionTime:J

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeMessage()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    :cond_0
    return-void
.end method
