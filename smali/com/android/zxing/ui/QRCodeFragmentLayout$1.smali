.class Lcom/android/zxing/ui/QRCodeFragmentLayout$1;
.super Ljava/lang/Object;
.source "QRCodeFragmentLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/zxing/ui/QRCodeFragmentLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/zxing/ui/QRCodeFragmentLayout;


# direct methods
.method constructor <init>(Lcom/android/zxing/ui/QRCodeFragmentLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/zxing/ui/QRCodeFragmentLayout;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;->this$0:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
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
    .line 80
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;->this$0:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->-get0(Lcom/android/zxing/ui/QRCodeFragmentLayout;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;->this$0:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->-get1(Lcom/android/zxing/ui/QRCodeFragmentLayout;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;->this$0:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->-get1(Lcom/android/zxing/ui/QRCodeFragmentLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->expandViewTouchDelegate(Landroid/view/View;)V

    .line 79
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;->this$0:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->-get1(Lcom/android/zxing/ui/QRCodeFragmentLayout;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method
