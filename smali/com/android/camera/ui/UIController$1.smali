.class Lcom/android/camera/ui/UIController$1;
.super Ljava/lang/Object;
.source "UIController.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 189
    iput-object p1, p0, Lcom/android/camera/ui/UIController$1;->this$0:Lcom/android/camera/ui/UIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    iget-object v0, p0, Lcom/android/camera/ui/UIController$1;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v0}, Lcom/android/camera/ui/UIController;->-get0(Lcom/android/camera/ui/UIController;)Lcom/android/camera/ui/MutexView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/camera/ui/UIController$1;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v0}, Lcom/android/camera/ui/UIController;->-get0(Lcom/android/camera/ui/UIController;)Lcom/android/camera/ui/MutexView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/MutexView;->show()V

    .line 194
    iget-object v0, p0, Lcom/android/camera/ui/UIController$1;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v0, v1}, Lcom/android/camera/ui/UIController;->-set0(Lcom/android/camera/ui/UIController;Lcom/android/camera/ui/MutexView;)Lcom/android/camera/ui/MutexView;

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController$1;->this$0:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPortraitButton()Lcom/android/camera/ui/PortraitButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PortraitButton;->show()V

    .line 191
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController$1;->this$0:Lcom/android/camera/ui/UIController;

    iget-object v0, v0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->updateOrientationLayout(Z)V

    goto :goto_0
.end method
