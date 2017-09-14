.class Lcom/android/camera/ui/V6PreviewPanel$1;
.super Ljava/lang/Object;
.source "V6PreviewPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6PreviewPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6PreviewPanel;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6PreviewPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/V6PreviewPanel;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPanel$1;->this$0:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel$1;->this$0:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-static {v0}, Lcom/android/camera/ui/V6PreviewPanel;->-get0(Lcom/android/camera/ui/V6PreviewPanel;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    return-void
.end method
