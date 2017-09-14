.class public Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;
.super Ljava/lang/Object;
.source "RefCountedAutoCloseable.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/AutoCloseable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# instance fields
.field private mObject:Ljava/lang/AutoCloseable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRefCount:J


# direct methods
.method public constructor <init>(Ljava/lang/AutoCloseable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;, "Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable<TT;>;"
    .local p1, "object":Ljava/lang/AutoCloseable;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mRefCount:J

    .line 17
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;

    .line 16
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;, "Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable<TT;>;"
    const-wide/16 v6, 0x0

    monitor-enter p0

    .line 49
    :try_start_0
    iget-wide v2, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mRefCount:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    .line 50
    iget-wide v2, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mRefCount:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mRefCount:J

    .line 51
    iget-wide v2, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mRefCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    .line 53
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit p0

    .line 48
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 57
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;

    .line 56
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get()Ljava/lang/AutoCloseable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;, "Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable<TT;>;"
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAndRetain()Ljava/lang/AutoCloseable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;, "Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable<TT;>;"
    monitor-enter p0

    .line 27
    :try_start_0
    iget-wide v0, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mRefCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 28
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 30
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mRefCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mRefCount:J

    .line 31
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
