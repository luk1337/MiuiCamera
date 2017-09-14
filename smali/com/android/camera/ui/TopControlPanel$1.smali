.class Lcom/android/camera/ui/TopControlPanel$1;
.super Ljava/lang/Object;
.source "TopControlPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/TopControlPanel;->animateOut(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/TopControlPanel;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/TopControlPanel;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/TopControlPanel;
    .param p2, "val$callback"    # Ljava/lang/Runnable;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/camera/ui/TopControlPanel$1;->this$0:Lcom/android/camera/ui/TopControlPanel;

    iput-object p2, p0, Lcom/android/camera/ui/TopControlPanel$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel$1;->this$0:Lcom/android/camera/ui/TopControlPanel;

    invoke-static {v0}, Lcom/android/camera/ui/TopControlPanel;->-get0(Lcom/android/camera/ui/TopControlPanel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel$1;->this$0:Lcom/android/camera/ui/TopControlPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TopControlPanel;->setVisibility(I)V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel$1;->this$0:Lcom/android/camera/ui/TopControlPanel;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TopControlPanel;->setAlpha(F)V

    .line 116
    return-void
.end method
