.class Lcom/android/camera/ui/ScreenHint$5;
.super Ljava/lang/Object;
.source "ScreenHint.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ScreenHint;->showFrontCameraFirstUseHintPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ScreenHint;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ScreenHint;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/ScreenHint;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint$5;->this$0:Lcom/android/camera/ui/ScreenHint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint$5;->this$0:Lcom/android/camera/ui/ScreenHint;

    invoke-static {v0}, Lcom/android/camera/ui/ScreenHint;->-get1(Lcom/android/camera/ui/ScreenHint;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 229
    return-void
.end method
