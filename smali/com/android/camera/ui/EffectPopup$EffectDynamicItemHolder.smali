.class public Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;
.super Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
.source "EffectPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectDynamicItemHolder"
.end annotation


# instance fields
.field protected mEffectRender:Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;

.field protected mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

.field protected mTextureView:Landroid/view/TextureView;

.field final synthetic this$0:Lcom/android/camera/ui/EffectPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/EffectPopup;Landroid/view/View;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/camera/ui/EffectPopup;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->this$0:Lcom/android/camera/ui/EffectPopup;

    .line 527
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;-><init>(Lcom/android/camera/ui/EffectPopup;Landroid/view/View;)V

    .line 529
    const v0, 0x7f090026

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mTextureView:Landroid/view/TextureView;

    .line 531
    new-instance v0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;-><init>(Lcom/android/camera/ui/EffectPopup;)V

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectRender:Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;

    .line 532
    new-instance v0, Lcom/android/camera/ui/GLSurfaceTexture;

    invoke-direct {v0}, Lcom/android/camera/ui/GLSurfaceTexture;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    .line 533
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLSurfaceTexture;->setEGLContextClientVersion(I)V

    .line 534
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectRender:Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLSurfaceTexture;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 535
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLSurfaceTexture;->setPreserveEGLContextOnPause(Z)V

    .line 536
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLSurfaceTexture;->setRenderMode(I)V

    .line 537
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    invoke-static {p1}, Lcom/android/camera/ui/EffectPopup;->-get3(Lcom/android/camera/ui/EffectPopup;)I

    move-result v1

    invoke-static {p1}, Lcom/android/camera/ui/EffectPopup;->-get2(Lcom/android/camera/ui/EffectPopup;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/GLSurfaceTexture;->setSize(II)V

    .line 538
    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    .line 539
    invoke-static {p1}, Lcom/android/camera/ui/EffectPopup;->-get0(Lcom/android/camera/ui/EffectPopup;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 538
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/GLSurfaceTexture;->startWithShareContext(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 526
    return-void
.end method


# virtual methods
.method public bindEffectIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 544
    invoke-super {p0, p1}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->bindEffectIndex(I)V

    .line 545
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectRender:Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->bindEffectIndex(I)V

    .line 543
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture;->pause()V

    .line 563
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture;->requestRender()V

    .line 578
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture;->resume()V

    .line 572
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    if-eq v0, v1, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 568
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    if-eq v0, v1, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 558
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    .line 559
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v0}, Lcom/android/camera/ui/EffectPopup;->-get0(Lcom/android/camera/ui/EffectPopup;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 558
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/GLSurfaceTexture;->startWithShareContext(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 554
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;->mEffectSurface:Lcom/android/camera/ui/GLSurfaceTexture;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture;->stop()V

    .line 549
    return-void
.end method
