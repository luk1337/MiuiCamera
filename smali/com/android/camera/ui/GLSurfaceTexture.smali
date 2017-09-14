.class public Lcom/android/camera/ui/GLSurfaceTexture;
.super Landroid/graphics/SurfaceTexture;
.source "GLSurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GLSurfaceTexture$BaseConfigChooser;,
        Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;,
        Lcom/android/camera/ui/GLSurfaceTexture$DefaultContextFactory;,
        Lcom/android/camera/ui/GLSurfaceTexture$DefaultWindowSurfaceFactory;,
        Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;,
        Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;,
        Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;,
        Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;,
        Lcom/android/camera/ui/GLSurfaceTexture$GLThread;,
        Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;,
        Lcom/android/camera/ui/GLSurfaceTexture$GLWrapper;,
        Lcom/android/camera/ui/GLSurfaceTexture$LogWriter;,
        Lcom/android/camera/ui/GLSurfaceTexture$SimpleEGLConfigChooser;
    }
.end annotation


# static fields
.field private static final sGLThreadManager:Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mEGLConfigChooser:Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

.field private mGLWrapper:Lcom/android/camera/ui/GLSurfaceTexture$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mPreservedHeight:I

.field private mPreservedWidth:I

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mShareContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mStopped:Z

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/ui/GLSurfaceTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/GLSurfaceTexture;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mDebugFlags:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLConfigChooser:Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/GLSurfaceTexture;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLContextFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLWindowSurfaceFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$GLWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLWrapper:Lcom/android/camera/ui/GLSurfaceTexture$GLWrapper;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/ui/GLSurfaceTexture;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/camera/ui/GLSurfaceTexture;)Landroid/opengl/GLSurfaceView$Renderer;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/camera/ui/GLSurfaceTexture;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mShareContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method static synthetic -get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;
    .locals 1

    sget-object v0, Lcom/android/camera/ui/GLSurfaceTexture;->sGLThreadManager:Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1652
    new-instance v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;-><init>(Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;)V

    sput-object v0, Lcom/android/camera/ui/GLSurfaceTexture;->sGLThreadManager:Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0, v0}, Landroid/graphics/SurfaceTexture;-><init>(IZ)V

    .line 1655
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1654
    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 69
    invoke-virtual {p0}, Lcom/android/camera/ui/GLSurfaceTexture;->detachFromGLContext()V

    .line 67
    return-void
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    if-eqz v0, :cond_0

    .line 1532
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1533
    const-string/jumbo v1, "setRenderer has already been called for this instance."

    .line 1532
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1530
    :cond_0
    return-void
.end method

.method private internalStart()V
    .locals 3

    .prologue
    .line 369
    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v1, :cond_2

    .line 370
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mStopped:Z

    if-eqz v1, :cond_1

    .line 371
    const/4 v0, 0x1

    .line 372
    .local v0, "renderMode":I
    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->getRenderMode()I

    move-result v0

    .line 375
    :cond_0
    new-instance v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    .line 376
    iget v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mPreservedWidth:I

    iget v2, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mPreservedHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/ui/GLSurfaceTexture;->setSize(II)V

    .line 377
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->setRenderMode(I)V

    .line 381
    .end local v0    # "renderMode":I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 382
    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->start()V

    .line 383
    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->surfaceCreated()V

    .line 386
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mStopped:Z

    .line 365
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->finalize()V

    .line 73
    return-void

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->finalize()V

    .line 80
    throw v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->onPause()V

    .line 415
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->requestRender()V

    .line 345
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->onResume()V

    .line 426
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture;->checkRenderThreadState()V

    .line 304
    iput p1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLContextClientVersion:I

    .line 302
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0
    .param p1, "preserveOnPause"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mPreserveEGLContextOnPause:Z

    .line 141
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .param p1, "renderMode"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->setRenderMode(I)V

    .line 323
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 3
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture;->checkRenderThreadState()V

    .line 180
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLConfigChooser:Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/android/camera/ui/GLSurfaceTexture$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/GLSurfaceTexture$SimpleEGLConfigChooser;-><init>(Lcom/android/camera/ui/GLSurfaceTexture;Z)V

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLConfigChooser:Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLContextFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;

    if-nez v0, :cond_1

    .line 184
    new-instance v0, Lcom/android/camera/ui/GLSurfaceTexture$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/ui/GLSurfaceTexture$DefaultContextFactory;-><init>(Lcom/android/camera/ui/GLSurfaceTexture;Lcom/android/camera/ui/GLSurfaceTexture$DefaultContextFactory;)V

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLContextFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLWindowSurfaceFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 187
    new-instance v0, Lcom/android/camera/ui/GLSurfaceTexture$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/android/camera/ui/GLSurfaceTexture$DefaultWindowSurfaceFactory;-><init>(Lcom/android/camera/ui/GLSurfaceTexture$DefaultWindowSurfaceFactory;)V

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLWindowSurfaceFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;

    .line 189
    :cond_2
    iput-object p1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 190
    new-instance v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    .line 178
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 350
    iput p1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mPreservedWidth:I

    .line 351
    iput p2, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mPreservedHeight:I

    .line 352
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->onWindowResize(II)V

    .line 349
    return-void
.end method

.method public startWithShareContext(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0
    .param p1, "context"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mShareContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 396
    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture;->internalStart()V

    .line 394
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->requestExitAndWait()V

    .line 406
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mStopped:Z

    .line 399
    return-void
.end method
