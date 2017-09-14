.class Lcom/android/camera/ui/V6ModeExitView$1;
.super Ljava/lang/Object;
.source "V6ModeExitView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/V6ModeExitView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6ModeExitView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6ModeExitView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/V6ModeExitView;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/camera/ui/V6ModeExitView$1;->this$0:Lcom/android/camera/ui/V6ModeExitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView$1;->this$0:Lcom/android/camera/ui/V6ModeExitView;

    invoke-static {v0}, Lcom/android/camera/ui/V6ModeExitView;->-get0(Lcom/android/camera/ui/V6ModeExitView;)Lcom/android/camera/ui/ExitButton;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->expandViewTouchDelegate(Landroid/view/View;)V

    .line 36
    return-void
.end method
