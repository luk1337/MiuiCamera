.class Lcom/android/camera/ui/GLSurfaceTexture$SimpleEGLConfigChooser;
.super Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;
.source "GLSurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLSurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/GLSurfaceTexture;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/GLSurfaceTexture;Z)V
    .locals 8
    .param p1, "this$0"    # Lcom/android/camera/ui/GLSurfaceTexture;
    .param p2, "withDepthBuffer"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 696
    iput-object p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$SimpleEGLConfigChooser;->this$0:Lcom/android/camera/ui/GLSurfaceTexture;

    .line 697
    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;-><init>(Lcom/android/camera/ui/GLSurfaceTexture;IIIIII)V

    .line 696
    return-void

    :cond_0
    move v6, v5

    .line 697
    goto :goto_0
.end method
