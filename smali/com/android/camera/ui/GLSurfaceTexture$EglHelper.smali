.class Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;
.super Ljava/lang/Object;
.source "GLSurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLSurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EglHelper"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/ui/GLSurfaceTexture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 706
    .local p1, "glSurfaceTextureWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/camera/ui/GLSurfaceTexture;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    iput-object p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    .line 706
    return-void
.end method

.method private destroySurfaceImp()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 874
    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_2

    .line 875
    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 876
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 877
    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 875
    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 882
    const-string/jumbo v1, "EGLHelper"

    const-string/jumbo v2, "eglMakeCurrent"

    iget-object v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 884
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GLSurfaceTexture;

    .line 885
    .local v0, "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    if-eqz v0, :cond_1

    .line 886
    invoke-static {v0}, Lcom/android/camera/ui/GLSurfaceTexture;->-get4(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 888
    :cond_1
    iput-object v6, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 873
    .end local v0    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    :cond_2
    return-void
.end method

.method public static formatEglError(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "function"    # Ljava/lang/String;
    .param p1, "error"    # I

    .prologue
    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "error"    # I

    .prologue
    .line 923
    invoke-static {p1, p2}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .locals 1
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 909
    return-void
.end method

.method public static throwEglException(Ljava/lang/String;I)V
    .locals 2
    .param p0, "function"    # Ljava/lang/String;
    .param p1, "error"    # I

    .prologue
    .line 914
    invoke-static {p0, p1}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method createGL()Ljavax/microedition/khronos/opengles/GL;
    .locals 5

    .prologue
    .line 833
    iget-object v4, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v4}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 834
    .local v1, "gl":Ljavax/microedition/khronos/opengles/GL;
    iget-object v4, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/GLSurfaceTexture;

    .line 835
    .local v3, "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    if-eqz v3, :cond_3

    .line 836
    invoke-static {v3}, Lcom/android/camera/ui/GLSurfaceTexture;->-get5(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$GLWrapper;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 837
    invoke-static {v3}, Lcom/android/camera/ui/GLSurfaceTexture;->-get5(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$GLWrapper;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 840
    :cond_0
    invoke-static {v3}, Lcom/android/camera/ui/GLSurfaceTexture;->-get0(Lcom/android/camera/ui/GLSurfaceTexture;)I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_3

    .line 841
    const/4 v0, 0x0

    .line 842
    .local v0, "configFlags":I
    const/4 v2, 0x0

    .line 843
    .local v2, "log":Ljava/io/Writer;
    invoke-static {v3}, Lcom/android/camera/ui/GLSurfaceTexture;->-get0(Lcom/android/camera/ui/GLSurfaceTexture;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 844
    const/4 v0, 0x1

    .line 846
    :cond_1
    invoke-static {v3}, Lcom/android/camera/ui/GLSurfaceTexture;->-get0(Lcom/android/camera/ui/GLSurfaceTexture;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 847
    new-instance v2, Lcom/android/camera/ui/GLSurfaceTexture$LogWriter;

    .end local v2    # "log":Ljava/io/Writer;
    invoke-direct {v2}, Lcom/android/camera/ui/GLSurfaceTexture$LogWriter;-><init>()V

    .line 849
    :cond_2
    invoke-static {v1, v0, v2}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 852
    .end local v0    # "configFlags":I
    :cond_3
    return-object v1
.end method

.method public createSurface()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 776
    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v2, :cond_0

    .line 777
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "egl not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 779
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v2, :cond_1

    .line 780
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "eglDisplay not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 782
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_2

    .line 783
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "mEglConfig not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 790
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->destroySurfaceImp()V

    .line 795
    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/GLSurfaceTexture;

    .line 796
    .local v1, "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    if-eqz v1, :cond_5

    .line 797
    invoke-static {v1}, Lcom/android/camera/ui/GLSurfaceTexture;->-get4(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 798
    iget-object v4, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 797
    invoke-interface {v2, v3, v4, v5, v1}, Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 803
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_6

    .line 804
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 805
    .local v0, "error":I
    const/16 v2, 0x300b

    if-ne v0, v2, :cond_4

    .line 806
    const-string/jumbo v2, "EglHelper"

    const-string/jumbo v3, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_4
    return v7

    .line 800
    .end local v0    # "error":I
    :cond_5
    iput-object v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    .line 815
    :cond_6
    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 820
    const-string/jumbo v2, "EGLHelper"

    const-string/jumbo v3, "eglMakeCurrent"

    iget-object v4, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 821
    return v7

    .line 824
    :cond_7
    const/4 v2, 0x1

    return v2
.end method

.method public destroySurface()V
    .locals 0

    .prologue
    .line 870
    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->destroySurfaceImp()V

    .line 866
    return-void
.end method

.method public finish()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 896
    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_1

    .line 897
    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GLSurfaceTexture;

    .line 898
    .local v0, "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    if-eqz v0, :cond_0

    .line 899
    invoke-static {v0}, Lcom/android/camera/ui/GLSurfaceTexture;->-get3(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 901
    :cond_0
    iput-object v5, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 903
    .end local v0    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v1, :cond_2

    .line 904
    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 905
    iput-object v5, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 892
    :cond_2
    return-void
.end method

.method public start()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 721
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 726
    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 728
    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_0

    .line 729
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "eglGetDisplay failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 735
    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 736
    .local v1, "version":[I
    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 737
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "eglInitialize failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 739
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GLSurfaceTexture;

    .line 740
    .local v0, "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    if-nez v0, :cond_4

    .line 741
    iput-object v7, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 742
    iput-object v7, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 752
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v3, :cond_3

    .line 753
    :cond_2
    iput-object v7, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 754
    const-string/jumbo v2, "createContext"

    invoke-direct {p0, v2}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 760
    :cond_3
    iput-object v7, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 714
    return-void

    .line 744
    :cond_4
    invoke-static {v0}, Lcom/android/camera/ui/GLSurfaceTexture;->-get1(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v4}, Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 750
    invoke-static {v0}, Lcom/android/camera/ui/GLSurfaceTexture;->-get3(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-static {v0}, Lcom/android/camera/ui/GLSurfaceTexture;->-get8(Lcom/android/camera/ui/GLSurfaceTexture;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0
.end method

.method public swap()I
    .locals 3

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    return v0

    .line 863
    :cond_0
    const/16 v0, 0x3000

    return v0
.end method
