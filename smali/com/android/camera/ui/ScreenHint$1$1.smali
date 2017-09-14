.class Lcom/android/camera/ui/ScreenHint$1$1;
.super Ljava/lang/Object;
.source "ScreenHint.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ScreenHint$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/ScreenHint$1;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ScreenHint$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/ScreenHint$1;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint$1$1;->this$1:Lcom/android/camera/ui/ScreenHint$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint$1$1;->this$1:Lcom/android/camera/ui/ScreenHint$1;

    iget-object v0, v0, Lcom/android/camera/ui/ScreenHint$1;->this$0:Lcom/android/camera/ui/ScreenHint;

    invoke-static {v0}, Lcom/android/camera/ui/ScreenHint;->-get0(Lcom/android/camera/ui/ScreenHint;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPortraitUseHintView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint$1$1;->this$1:Lcom/android/camera/ui/ScreenHint$1;

    iget-object v0, v0, Lcom/android/camera/ui/ScreenHint$1;->this$0:Lcom/android/camera/ui/ScreenHint;

    invoke-static {v0}, Lcom/android/camera/ui/ScreenHint;->-get2(Lcom/android/camera/ui/ScreenHint;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 45
    return-void
.end method
