.class Lcom/android/camera/ui/ScreenHint$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScreenHint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ScreenHint;
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
    .line 39
    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint$1;->this$0:Lcom/android/camera/ui/ScreenHint;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint$1;->this$0:Lcom/android/camera/ui/ScreenHint;

    invoke-static {v0}, Lcom/android/camera/ui/ScreenHint;->-get3(Lcom/android/camera/ui/ScreenHint;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint$1;->this$0:Lcom/android/camera/ui/ScreenHint;

    invoke-static {v0}, Lcom/android/camera/ui/ScreenHint;->-get0(Lcom/android/camera/ui/ScreenHint;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPortraitUseHintView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ui/ScreenHint$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ScreenHint$1$1;-><init>(Lcom/android/camera/ui/ScreenHint$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint$1;->this$0:Lcom/android/camera/ui/ScreenHint;

    invoke-static {v0}, Lcom/android/camera/ui/ScreenHint;->-get2(Lcom/android/camera/ui/ScreenHint;)Landroid/animation/Animator;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint$1;->this$0:Lcom/android/camera/ui/ScreenHint;

    invoke-static {v0}, Lcom/android/camera/ui/ScreenHint;->-get0(Lcom/android/camera/ui/ScreenHint;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPortraitUseHintView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint$1;->this$0:Lcom/android/camera/ui/ScreenHint;

    invoke-static {v0}, Lcom/android/camera/ui/ScreenHint;->-get0(Lcom/android/camera/ui/ScreenHint;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPortraitUseHintView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
