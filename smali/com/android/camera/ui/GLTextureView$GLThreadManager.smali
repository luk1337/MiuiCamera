.class Lcom/android/camera/ui/GLTextureView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mEglOwner:Lcom/android/camera/ui/GLTextureView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1595
    const-string/jumbo v0, "GLThreadManager"

    sput-object v0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->TAG:Ljava/lang/String;

    .line 1594
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/GLTextureView$GLThreadManager;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1678
    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_0

    .line 1683
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1689
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1677
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    monitor-enter p0

    .line 1659
    :try_start_0
    iget-boolean v3, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v3, :cond_1

    .line 1660
    invoke-direct {p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1661
    const/16 v3, 0x1f01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 1662
    .local v0, "renderer":Ljava/lang/String;
    iget v3, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mGLESVersion:I

    const/high16 v4, 0x20000

    if-ge v3, v4, :cond_0

    .line 1664
    const-string/jumbo v3, "Q3Dimension MSM7500 "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    .line 1663
    :goto_0
    iput-boolean v3, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1665
    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    .line 1667
    :cond_0
    iget-boolean v3, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz v3, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mLimitedGLESContexts:Z

    .line 1673
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "renderer":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    .line 1658
    return-void

    .restart local v0    # "renderer":Ljava/lang/String;
    :cond_2
    move v3, v2

    .line 1664
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1667
    goto :goto_1

    .end local v0    # "renderer":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglContextLocked(Lcom/android/camera/ui/GLTextureView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lcom/android/camera/ui/GLTextureView$GLThread;

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLTextureView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLTextureView$GLThread;

    .line 1643
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    .line 1639
    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 1650
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 1654
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1655
    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/android/camera/ui/GLTextureView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lcom/android/camera/ui/GLTextureView$GLThread;

    .prologue
    monitor-enter p0

    .line 1601
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/android/camera/ui/GLTextureView$GLThread;->-set0(Lcom/android/camera/ui/GLTextureView$GLThread;Z)Z

    .line 1602
    iget-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLTextureView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLTextureView$GLThread;

    .line 1605
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1597
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Lcom/android/camera/ui/GLTextureView$GLThread;)Z
    .locals 2
    .param p1, "thread"    # Lcom/android/camera/ui/GLTextureView$GLThread;

    .prologue
    const/4 v1, 0x1

    .line 1616
    iget-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLTextureView$GLThread;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLTextureView$GLThread;

    if-nez v0, :cond_1

    .line 1617
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLTextureView$GLThread;

    .line 1618
    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    .line 1619
    return v1

    .line 1621
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1622
    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz v0, :cond_2

    .line 1623
    return v1

    .line 1629
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLTextureView$GLThread;

    if-eqz v0, :cond_3

    .line 1630
    iget-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$GLThread;->requestReleaseEglContextLocked()V

    .line 1632
    :cond_3
    const/4 v0, 0x0

    return v0
.end method
