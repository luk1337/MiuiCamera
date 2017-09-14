.class Lcom/android/camera/ui/EffectPopup$1;
.super Ljava/lang/Object;
.source "EffectPopup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/EffectPopup;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/EffectPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/EffectPopup;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$1;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$1;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v0}, Lcom/android/camera/ui/EffectPopup;->-get5(Lcom/android/camera/ui/EffectPopup;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 76
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$1;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v0}, Lcom/android/camera/ui/EffectPopup;->-get5(Lcom/android/camera/ui/EffectPopup;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    return-void
.end method
