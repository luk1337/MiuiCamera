.class Lcom/android/camera/ui/UIController$2;
.super Ljava/lang/Object;
.source "UIController.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/UIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/UIController;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/UIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/UIController;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/android/camera/ui/UIController$2;->this$0:Lcom/android/camera/ui/UIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 712
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/camera/ui/UIController$2;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v0, p1}, Lcom/android/camera/ui/UIController;->-set3(Lcom/android/camera/ui/UIController;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 718
    iget-object v0, p0, Lcom/android/camera/ui/UIController$2;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v0}, Lcom/android/camera/ui/UIController;->-get2(Lcom/android/camera/ui/UIController;)Landroid/renderscript/Allocation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/camera/ui/UIController$2;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v0}, Lcom/android/camera/ui/UIController;->-get2(Lcom/android/camera/ui/UIController;)Landroid/renderscript/Allocation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/UIController$2;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v1}, Lcom/android/camera/ui/UIController;->-get5(Lcom/android/camera/ui/UIController;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController$2;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v0}, Lcom/android/camera/ui/UIController;->-wrap1(Lcom/android/camera/ui/UIController;)V

    .line 716
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 725
    return-void
.end method
