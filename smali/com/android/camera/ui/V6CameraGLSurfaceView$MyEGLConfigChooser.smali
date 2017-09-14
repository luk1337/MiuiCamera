.class Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;
.super Ljava/lang/Object;
.source "V6CameraGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6CameraGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyEGLConfigChooser"
.end annotation


# instance fields
.field private final ATTR_ID:[I

.field private final ATTR_NAME:[Ljava/lang/String;

.field private final USE_RGB888:Z

.field private final mConfigSpec:[I

.field final synthetic this$0:Lcom/android/camera/ui/V6CameraGLSurfaceView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/V6CameraGLSurfaceView;)V
    .locals 8
    .param p1, "this$0"    # Lcom/android/camera/ui/V6CameraGLSurfaceView;

    .prologue
    const/4 v7, 0x4

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x5

    const/16 v2, 0x8

    .line 168
    iput-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->this$0:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    sget-boolean v0, Lcom/android/camera/Device;->IS_H3C:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_D3:Z

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->USE_RGB888:Z

    .line 170
    const/16 v0, 0xb

    new-array v4, v0, [I

    .line 171
    const/16 v0, 0x3024

    aput v0, v4, v6

    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->USE_RGB888:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    aput v0, v4, v1

    .line 172
    const/16 v0, 0x3023

    const/4 v5, 0x2

    aput v0, v4, v5

    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->USE_RGB888:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    const/4 v5, 0x3

    aput v0, v4, v5

    .line 173
    const/16 v0, 0x3022

    aput v0, v4, v7

    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->USE_RGB888:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    aput v0, v4, v3

    .line 174
    const/16 v0, 0x3021

    const/4 v5, 0x6

    aput v0, v4, v5

    const/4 v0, 0x7

    aput v6, v4, v0

    .line 175
    const/16 v0, 0x3040

    aput v0, v4, v2

    const/16 v0, 0x9

    aput v7, v4, v0

    .line 176
    const/16 v0, 0x3038

    const/16 v5, 0xa

    aput v0, v4, v5

    .line 170
    iput-object v4, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->mConfigSpec:[I

    .line 233
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->ATTR_ID:[I

    .line 244
    new-array v0, v2, [Ljava/lang/String;

    .line 245
    const-string/jumbo v2, "R"

    aput-object v2, v0, v6

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const-string/jumbo v1, "B"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "A"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "D"

    aput-object v1, v0, v7

    const-string/jumbo v1, "S"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ID"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "CAVEAT"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 244
    iput-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->ATTR_NAME:[Ljava/lang/String;

    .line 168
    return-void

    :cond_0
    move v0, v1

    .line 169
    goto :goto_0

    :cond_1
    move v0, v3

    .line 171
    goto :goto_1

    .line 172
    :cond_2
    const/4 v0, 0x6

    goto :goto_2

    :cond_3
    move v0, v3

    .line 173
    goto :goto_3

    .line 233
    :array_0
    .array-data 4
        0x3024
        0x3023
        0x3022
        0x3021
        0x3025
        0x3026
        0x3028
        0x3027
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/V6CameraGLSurfaceView;Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/V6CameraGLSurfaceView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;-><init>(Lcom/android/camera/ui/V6CameraGLSurfaceView;)V

    return-void
.end method

.method private chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/16 v8, 0x3026

    const/4 v7, 0x0

    .line 201
    const/4 v3, 0x0

    .line 202
    .local v3, "result":Ljavax/microedition/khronos/egl/EGLConfig;
    const v1, 0x7fffffff

    .line 203
    .local v1, "minStencil":I
    const/4 v5, 0x1

    new-array v4, v5, [I

    .line 208
    .local v4, "value":[I
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, p3

    .end local v3    # "result":Ljavax/microedition/khronos/egl/EGLConfig;
    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 210
    aget-object v5, p3, v0

    const/16 v6, 0x3024

    .line 209
    invoke-interface {p1, p2, v5, v6, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 212
    aget v5, v4, v7

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 208
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    aget-object v5, p3, v0

    .line 214
    invoke-interface {p1, p2, v5, v8, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 216
    aget v5, v4, v7

    if-eqz v5, :cond_0

    .line 217
    aget v5, v4, v7

    if-ge v5, v1, :cond_0

    .line 218
    aget v1, v4, v7

    .line 219
    aget-object v3, p3, v0

    .local v3, "result":Ljavax/microedition/khronos/egl/EGLConfig;
    goto :goto_1

    .line 222
    .end local v3    # "result":Ljavax/microedition/khronos/egl/EGLConfig;
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    .line 223
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "eglGetConfigAttrib error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 222
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 226
    :cond_3
    if-nez v3, :cond_4

    aget-object v3, p3, v7

    .line 227
    :cond_4
    invoke-interface {p1, p2, v3, v8, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 229
    invoke-direct {p0, p1, p2, v3}, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->logConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 230
    return-object v3
.end method

.method private logConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 249
    const/4 v3, 0x1

    new-array v2, v3, [I

    .line 250
    .local v2, "value":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->ATTR_ID:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 252
    iget-object v3, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->ATTR_ID:[I

    aget v3, v3, v0

    invoke-interface {p1, p2, p3, v3, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 253
    iget-object v3, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->ATTR_NAME:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_0
    const-string/jumbo v3, "GLRootView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Config chosen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    const/4 v4, 0x0

    .line 180
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 181
    .local v5, "numConfig":[I
    iget-object v2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->mConfigSpec:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    aget v0, v5, v4

    if-gtz v0, :cond_1

    .line 186
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_1
    aget v0, v5, v4

    new-array v3, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 191
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->mConfigSpec:[I

    array-length v4, v3

    move-object v0, p1

    move-object v1, p2

    .line 190
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 192
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 195
    :cond_2
    invoke-direct {p0, p1, p2, v3}, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method
