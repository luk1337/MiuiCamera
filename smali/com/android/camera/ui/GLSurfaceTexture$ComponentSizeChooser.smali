.class Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;
.super Lcom/android/camera/ui/GLSurfaceTexture$BaseConfigChooser;
.source "GLSurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLSurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentSizeChooser"
.end annotation


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I

.field final synthetic this$0:Lcom/android/camera/ui/GLSurfaceTexture;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/GLSurfaceTexture;IIIIII)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/camera/ui/GLSurfaceTexture;
    .param p2, "redSize"    # I
    .param p3, "greenSize"    # I
    .param p4, "blueSize"    # I
    .param p5, "alphaSize"    # I
    .param p6, "depthSize"    # I
    .param p7, "stencilSize"    # I

    .prologue
    const/4 v3, 0x1

    .line 626
    iput-object p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->this$0:Lcom/android/camera/ui/GLSurfaceTexture;

    .line 628
    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 629
    const/16 v1, 0x3024

    const/4 v2, 0x0

    aput v1, v0, v2

    aput p2, v0, v3

    .line 630
    const/16 v1, 0x3023

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x3

    aput p3, v0, v1

    .line 631
    const/16 v1, 0x3022

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v1, 0x5

    aput p4, v0, v1

    .line 632
    const/16 v1, 0x3021

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v1, 0x7

    aput p5, v0, v1

    .line 633
    const/16 v1, 0x3025

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v1, 0x9

    aput p6, v0, v1

    .line 634
    const/16 v1, 0x3026

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0xb

    aput p7, v0, v1

    .line 635
    const/16 v1, 0x3038

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 628
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/GLSurfaceTexture$BaseConfigChooser;-><init>(Lcom/android/camera/ui/GLSurfaceTexture;[I)V

    .line 636
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mValue:[I

    .line 637
    iput p2, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mRedSize:I

    .line 638
    iput p3, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mGreenSize:I

    .line 639
    iput p4, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mBlueSize:I

    .line 640
    iput p5, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mAlphaSize:I

    .line 641
    iput p6, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mDepthSize:I

    .line 642
    iput p7, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mStencilSize:I

    .line 627
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribute"    # I
    .param p5, "defaultValue"    # I

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mValue:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 677
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 15
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 648
    const/4 v1, 0x0

    move-object/from16 v0, p3

    array-length v14, v0

    move v13, v1

    :goto_0
    if-ge v13, v14, :cond_1

    aget-object v4, p3, v13

    .line 650
    .local v4, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v5, 0x3025

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 649
    invoke-direct/range {v1 .. v6}, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 652
    .local v9, "d":I
    const/16 v5, 0x3026

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 651
    invoke-direct/range {v1 .. v6}, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 653
    .local v12, "s":I
    iget v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mDepthSize:I

    if-lt v9, v1, :cond_0

    iget v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mStencilSize:I

    if-lt v12, v1, :cond_0

    .line 655
    const/16 v5, 0x3024

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 654
    invoke-direct/range {v1 .. v6}, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    .line 657
    .local v11, "r":I
    const/16 v5, 0x3023

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 656
    invoke-direct/range {v1 .. v6}, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 659
    .local v10, "g":I
    const/16 v5, 0x3022

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 658
    invoke-direct/range {v1 .. v6}, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 661
    .local v8, "b":I
    const/16 v5, 0x3021

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 660
    invoke-direct/range {v1 .. v6}, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v7

    .line 662
    .local v7, "a":I
    iget v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mRedSize:I

    if-ne v11, v1, :cond_0

    iget v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mGreenSize:I

    if-ne v10, v1, :cond_0

    .line 663
    iget v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mBlueSize:I

    if-ne v8, v1, :cond_0

    iget v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mAlphaSize:I

    if-ne v7, v1, :cond_0

    .line 664
    return-object v4

    .line 648
    .end local v7    # "a":I
    .end local v8    # "b":I
    .end local v10    # "g":I
    .end local v11    # "r":I
    :cond_0
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_0

    .line 668
    .end local v4    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v9    # "d":I
    .end local v12    # "s":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
