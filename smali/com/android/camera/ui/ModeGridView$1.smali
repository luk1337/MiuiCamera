.class Lcom/android/camera/ui/ModeGridView$1;
.super Ljava/lang/Object;
.source "ModeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ModeGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ModeGridView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModeGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/ModeGridView;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/camera/ui/ModeGridView$1;->this$0:Lcom/android/camera/ui/ModeGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView$1;->this$0:Lcom/android/camera/ui/ModeGridView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ModeGridView;->-set0(Lcom/android/camera/ui/ModeGridView;Z)Z

    .line 563
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView$1;->this$0:Lcom/android/camera/ui/ModeGridView;

    invoke-static {v0}, Lcom/android/camera/ui/ModeGridView;->-get10(Lcom/android/camera/ui/ModeGridView;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 565
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView$1;->this$0:Lcom/android/camera/ui/ModeGridView;

    invoke-static {v0}, Lcom/android/camera/ui/ModeGridView;->-get8(Lcom/android/camera/ui/ModeGridView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView$1;->this$0:Lcom/android/camera/ui/ModeGridView;

    iget-object v1, p0, Lcom/android/camera/ui/ModeGridView$1;->this$0:Lcom/android/camera/ui/ModeGridView;

    invoke-static {v1}, Lcom/android/camera/ui/ModeGridView;->-get3(Lcom/android/camera/ui/ModeGridView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView$1;->this$0:Lcom/android/camera/ui/ModeGridView;

    invoke-static {v2}, Lcom/android/camera/ui/ModeGridView;->-get1(Lcom/android/camera/ui/ModeGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView$1;->this$0:Lcom/android/camera/ui/ModeGridView;

    invoke-static {v3}, Lcom/android/camera/ui/ModeGridView;->-get2(Lcom/android/camera/ui/ModeGridView;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/ui/ModeGridView;->-wrap1(Lcom/android/camera/ui/ModeGridView;Landroid/graphics/Bitmap;II)V

    .line 561
    return-void
.end method
