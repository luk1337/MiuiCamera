.class public Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;
.super Ljava/lang/Object;
.source "EffectPopup.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectDynamicItemRender"
.end annotation


# instance fields
.field mEffectIndex:I

.field private mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field mTransform:[F

.field final synthetic this$0:Lcom/android/camera/ui/EffectPopup;


# direct methods
.method protected constructor <init>(Lcom/android/camera/ui/EffectPopup;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/camera/ui/EffectPopup;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 393
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->mTransform:[F

    .line 391
    return-void
.end method


# virtual methods
.method public bindEffectIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 397
    iput p1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->mEffectIndex:I

    .line 396
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .param p1, "gl10"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v0}, Lcom/android/camera/ui/EffectPopup;->-get0(Lcom/android/camera/ui/EffectPopup;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v12

    .line 411
    .local v12, "screen":Lcom/android/camera/CameraScreenNail;
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v0}, Lcom/android/camera/ui/EffectPopup;->-get0(Lcom/android/camera/ui/EffectPopup;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvas;

    move-result-object v7

    .line 412
    .local v7, "canvas":Lcom/android/gallery3d/ui/GLCanvas;
    if-eqz v12, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v12}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    monitor-enter v7

    .line 414
    :try_start_0
    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    .line 416
    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->getWidth()I

    move-result v11

    .line 417
    .local v11, "oldWidth":I
    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->getHeight()I

    move-result v10

    .line 418
    .local v10, "oldHeight":I
    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 419
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v0}, Lcom/android/camera/ui/EffectPopup;->-get3(Lcom/android/camera/ui/EffectPopup;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v1}, Lcom/android/camera/ui/EffectPopup;->-get2(Lcom/android/camera/ui/EffectPopup;)I

    move-result v1

    invoke-interface {v7, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    .line 420
    invoke-virtual {v12}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->mTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 422
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v8

    .line 425
    .local v8, "controller":Lcom/android/camera/effect/EffectController;
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 426
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v8, v0}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v9

    .line 427
    .local v9, "oldEffect":I
    iget v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->mEffectIndex:I

    invoke-virtual {v8, v0}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 428
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {v12}, Lcom/android/camera/CameraScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->mTransform:[F

    .line 429
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v3}, Lcom/android/camera/ui/EffectPopup;->-get6(Lcom/android/camera/ui/EffectPopup;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v4}, Lcom/android/camera/ui/EffectPopup;->-get7(Lcom/android/camera/ui/EffectPopup;)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v5}, Lcom/android/camera/ui/EffectPopup;->-get8(Lcom/android/camera/ui/EffectPopup;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v6}, Lcom/android/camera/ui/EffectPopup;->-get5(Lcom/android/camera/ui/EffectPopup;)I

    move-result v6

    .line 428
    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 430
    invoke-virtual {v8, v9}, Lcom/android/camera/effect/EffectController;->setEffect(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v8

    .line 432
    invoke-interface {v7, v11, v10}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    .line 433
    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 434
    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->recycledResources()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v7

    .line 409
    .end local v8    # "controller":Lcom/android/camera/effect/EffectController;
    .end local v9    # "oldEffect":I
    .end local v10    # "oldHeight":I
    .end local v11    # "oldWidth":I
    :cond_0
    return-void

    .line 425
    .restart local v8    # "controller":Lcom/android/camera/effect/EffectController;
    .restart local v10    # "oldHeight":I
    .restart local v11    # "oldWidth":I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v8

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 413
    .end local v8    # "controller":Lcom/android/camera/effect/EffectController;
    .end local v10    # "oldHeight":I
    .end local v11    # "oldWidth":I
    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .param p1, "gl10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 405
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .param p1, "gl10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 401
    return-void
.end method
