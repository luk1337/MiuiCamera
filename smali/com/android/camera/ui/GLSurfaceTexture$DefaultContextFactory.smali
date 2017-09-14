.class Lcom/android/camera/ui/GLSurfaceTexture$DefaultContextFactory;
.super Ljava/lang/Object;
.source "GLSurfaceTexture.java"

# interfaces
.implements Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLSurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultContextFactory"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field final synthetic this$0:Lcom/android/camera/ui/GLSurfaceTexture;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/GLSurfaceTexture;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/ui/GLSurfaceTexture;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$DefaultContextFactory;->this$0:Lcom/android/camera/ui/GLSurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    const/16 v0, 0x3098

    iput v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    .line 483
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/GLSurfaceTexture;Lcom/android/camera/ui/GLSurfaceTexture$DefaultContextFactory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/GLSurfaceTexture;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ui/GLSurfaceTexture$DefaultContextFactory;-><init>(Lcom/android/camera/ui/GLSurfaceTexture;)V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 4
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "shareContext"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 487
    const/4 v2, 0x3

    new-array v0, v2, [I

    iget v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v2, v0, v3

    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$DefaultContextFactory;->this$0:Lcom/android/camera/ui/GLSurfaceTexture;

    invoke-static {v2}, Lcom/android/camera/ui/GLSurfaceTexture;->-get2(Lcom/android/camera/ui/GLSurfaceTexture;)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 488
    const/16 v2, 0x3038

    const/4 v3, 0x2

    aput v2, v0, v3

    .line 491
    .local v0, "attrib_list":[I
    if-nez p4, :cond_0

    sget-object p4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 492
    .end local p4    # "shareContext":Ljavax/microedition/khronos/egl/EGLContext;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$DefaultContextFactory;->this$0:Lcom/android/camera/ui/GLSurfaceTexture;

    invoke-static {v2}, Lcom/android/camera/ui/GLSurfaceTexture;->-get2(Lcom/android/camera/ui/GLSurfaceTexture;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 490
    .end local v0    # "attrib_list":[I
    :goto_0
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1

    .restart local v0    # "attrib_list":[I
    :cond_1
    move-object v0, v1

    .line 492
    goto :goto_0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 3
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "context"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    .line 497
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    const-string/jumbo v0, "DefaultContextFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "display:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const-string/jumbo v0, "eglDestroyContex"

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 496
    :cond_0
    return-void
.end method
