.class Lcom/android/camera/ui/PortraitButton$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PortraitButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PortraitButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PortraitButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PortraitButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PortraitButton;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/camera/ui/PortraitButton$1;->this$0:Lcom/android/camera/ui/PortraitButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton$1;->this$0:Lcom/android/camera/ui/PortraitButton;

    invoke-static {v0}, Lcom/android/camera/ui/PortraitButton;->-get0(Lcom/android/camera/ui/PortraitButton;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    return-void
.end method
