.class Lcom/android/camera/ui/GLTextureView$SimpleEGLConfigChooser;
.super Lcom/android/camera/ui/GLTextureView$ComponentSizeChooser;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/GLTextureView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/GLTextureView;Z)V
    .locals 8
    .param p1, "this$0"    # Lcom/android/camera/ui/GLTextureView;
    .param p2, "withDepthBuffer"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 748
    iput-object p1, p0, Lcom/android/camera/ui/GLTextureView$SimpleEGLConfigChooser;->this$0:Lcom/android/camera/ui/GLTextureView;

    .line 749
    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/GLTextureView$ComponentSizeChooser;-><init>(Lcom/android/camera/ui/GLTextureView;IIIIII)V

    .line 748
    return-void

    :cond_0
    move v6, v5

    .line 749
    goto :goto_0
.end method
