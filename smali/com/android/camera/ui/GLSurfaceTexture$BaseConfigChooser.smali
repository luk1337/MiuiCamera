.class abstract Lcom/android/camera/ui/GLSurfaceTexture$BaseConfigChooser;
.super Ljava/lang/Object;
.source "GLSurfaceTexture.java"

# interfaces
.implements Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLSurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseConfigChooser"
.end annotation


# instance fields
.field protected mConfigSpec:[I

.field final synthetic this$0:Lcom/android/camera/ui/GLSurfaceTexture;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/GLSurfaceTexture;[I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/ui/GLSurfaceTexture;
    .param p2, "configSpec"    # [I

    .prologue
    .line 569
    iput-object p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$BaseConfigChooser;->this$0:Lcom/android/camera/ui/GLSurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    invoke-direct {p0, p2}, Lcom/android/camera/ui/GLSurfaceTexture$BaseConfigChooser;->filterConfigSpec([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$BaseConfigChooser;->mConfigSpec:[I

    .line 569
    return-void
.end method

.method private filterConfigSpec([I)[I
    .locals 5
    .param p1, "configSpec"    # [I

    .prologue
    const/4 v4, 0x0

    .line 605
    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$BaseConfigChooser;->this$0:Lcom/android/camera/ui/GLSurfaceTexture;

    invoke-static {v2}, Lcom/android/camera/ui/GLSurfaceTexture;->-get2(Lcom/android/camera/ui/GLSurfaceTexture;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 606
    return-object p1

    .line 611
    :cond_0
    array-length v0, p1

    .line 612
    .local v0, "len":I
    add-int/lit8 v2, v0, 0x2

    new-array v1, v2, [I

    .line 613
    .local v1, "newConfigSpec":[I
    add-int/lit8 v2, v0, -0x1

    invoke-static {p1, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 614
    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0x3040

    aput v3, v1, v2

    .line 615
    const/4 v2, 0x4

    aput v2, v1, v0

    .line 616
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x3038

    aput v3, v1, v2

    .line 617
    return-object v1
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 574
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 575
    .local v5, "num_config":[I
    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$BaseConfigChooser;->mConfigSpec:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_0
    aget v4, v5, v4

    .line 582
    .local v4, "numConfigs":I
    if-gtz v4, :cond_1

    .line 583
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 584
    const-string/jumbo v1, "No configs match configSpec"

    .line 583
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_1
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 588
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$BaseConfigChooser;->mConfigSpec:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 590
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/camera/ui/GLSurfaceTexture$BaseConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    .line 593
    .local v6, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    if-nez v6, :cond_3

    .line 594
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_3
    return-object v6
.end method

.method abstract chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
