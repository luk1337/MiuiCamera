.class Lcom/android/camera/ui/UIController$MonoDummyListener;
.super Ljava/lang/Object;
.source "UIController.java"

# interfaces
.implements Landroid/renderscript/Allocation$OnBufferAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/UIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonoDummyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/UIController;

.field yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/UIController;Landroid/renderscript/ScriptIntrinsicYuvToRGB;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/UIController;
    .param p2, "yuvToRgbIntrinsic"    # Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    .prologue
    .line 755
    iput-object p1, p0, Lcom/android/camera/ui/UIController$MonoDummyListener;->this$0:Lcom/android/camera/ui/UIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    iput-object p2, p0, Lcom/android/camera/ui/UIController$MonoDummyListener;->yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    .line 755
    return-void
.end method


# virtual methods
.method public onBufferAvailable(Landroid/renderscript/Allocation;)V
    .locals 3
    .param p1, "a"    # Landroid/renderscript/Allocation;

    .prologue
    .line 761
    const-string/jumbo v1, "UIController"

    const-string/jumbo v2, "onBufferAvailable>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v1, p0, Lcom/android/camera/ui/UIController$MonoDummyListener;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v1}, Lcom/android/camera/ui/UIController;->-get1(Lcom/android/camera/ui/UIController;)Landroid/renderscript/Allocation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/android/camera/ui/UIController$MonoDummyListener;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v1}, Lcom/android/camera/ui/UIController;->-get1(Lcom/android/camera/ui/UIController;)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->ioReceive()V

    .line 764
    iget-object v1, p0, Lcom/android/camera/ui/UIController$MonoDummyListener;->this$0:Lcom/android/camera/ui/UIController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/ui/UIController;->-set0(Lcom/android/camera/ui/UIController;Z)Z

    .line 765
    iget-object v1, p0, Lcom/android/camera/ui/UIController$MonoDummyListener;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v1}, Lcom/android/camera/ui/UIController;->-get6(Lcom/android/camera/ui/UIController;)Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 767
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ui/UIController$MonoDummyListener;->yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    iget-object v2, p0, Lcom/android/camera/ui/UIController$MonoDummyListener;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v2}, Lcom/android/camera/ui/UIController;->-get2(Lcom/android/camera/ui/UIController;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 768
    iget-object v1, p0, Lcom/android/camera/ui/UIController$MonoDummyListener;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v1}, Lcom/android/camera/ui/UIController;->-get2(Lcom/android/camera/ui/UIController;)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->ioSend()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :cond_0
    :goto_0
    const-string/jumbo v1, "UIController"

    const-string/jumbo v2, "onBufferAvailable<<<"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    return-void

    .line 769
    :catch_0
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "UIController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
