.class Lcom/android/camera/ui/UIController$3;
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
    .line 729
    iput-object p1, p0, Lcom/android/camera/ui/UIController$3;->this$0:Lcom/android/camera/ui/UIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 734
    const-string/jumbo v0, "UIController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceChanged: width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 739
    const-string/jumbo v0, "UIController"

    const-string/jumbo v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v0, p0, Lcom/android/camera/ui/UIController$3;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v0, p1}, Lcom/android/camera/ui/UIController;->-set2(Lcom/android/camera/ui/UIController;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 741
    iget-object v0, p0, Lcom/android/camera/ui/UIController$3;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v0}, Lcom/android/camera/ui/UIController;->-wrap1(Lcom/android/camera/ui/UIController;)V

    .line 738
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 746
    const-string/jumbo v0, "UIController"

    const-string/jumbo v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v0, p0, Lcom/android/camera/ui/UIController$3;->this$0:Lcom/android/camera/ui/UIController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/UIController;->-set2(Lcom/android/camera/ui/UIController;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 748
    iget-object v0, p0, Lcom/android/camera/ui/UIController$3;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v0}, Lcom/android/camera/ui/UIController;->-wrap0(Lcom/android/camera/ui/UIController;)V

    .line 745
    return-void
.end method
