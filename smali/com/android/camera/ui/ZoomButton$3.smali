.class Lcom/android/camera/ui/ZoomButton$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZoomButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ZoomButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mButtonOriginalTranslationY:F

.field private mButtonSlideDownAnimatorRunning:Z

.field private mPopupOriginalTranslationY:F

.field private mPopupSlideDownAnimatorRunning:Z

.field final synthetic this$0:Lcom/android/camera/ui/ZoomButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ZoomButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/ZoomButton;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/camera/ui/ZoomButton$3;->this$0:Lcom/android/camera/ui/ZoomButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton$3;->this$0:Lcom/android/camera/ui/ZoomButton;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomButton;->-get2(Lcom/android/camera/ui/ZoomButton;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 141
    iput-boolean v1, p0, Lcom/android/camera/ui/ZoomButton$3;->mPopupSlideDownAnimatorRunning:Z

    .line 145
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomButton$3;->mPopupSlideDownAnimatorRunning:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/ZoomButton$3;->mButtonSlideDownAnimatorRunning:Z

    if-eqz v0, :cond_3

    .line 139
    :cond_1
    :goto_1
    return-void

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton$3;->this$0:Lcom/android/camera/ui/ZoomButton;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomButton;->-get0(Lcom/android/camera/ui/ZoomButton;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 143
    iput-boolean v1, p0, Lcom/android/camera/ui/ZoomButton$3;->mButtonSlideDownAnimatorRunning:Z

    goto :goto_0

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton$3;->this$0:Lcom/android/camera/ui/ZoomButton;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomButton;->-get1(Lcom/android/camera/ui/ZoomButton;)Lcom/android/camera/ui/ZoomPopup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomPopup;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton$3;->this$0:Lcom/android/camera/ui/ZoomButton;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomButton;->-get1(Lcom/android/camera/ui/ZoomButton;)Lcom/android/camera/ui/ZoomPopup;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/ZoomButton$3;->mPopupOriginalTranslationY:F

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomPopup;->setTranslationY(F)V

    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton$3;->this$0:Lcom/android/camera/ui/ZoomButton;

    iget v1, p0, Lcom/android/camera/ui/ZoomButton$3;->mButtonOriginalTranslationY:F

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomButton;->setTranslationY(F)V

    goto :goto_1
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton$3;->this$0:Lcom/android/camera/ui/ZoomButton;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomButton;->-get2(Lcom/android/camera/ui/ZoomButton;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 130
    iput-boolean v1, p0, Lcom/android/camera/ui/ZoomButton$3;->mPopupSlideDownAnimatorRunning:Z

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton$3;->this$0:Lcom/android/camera/ui/ZoomButton;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomButton;->-get1(Lcom/android/camera/ui/ZoomButton;)Lcom/android/camera/ui/ZoomPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ZoomPopup;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ZoomButton$3;->mPopupOriginalTranslationY:F

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton$3;->this$0:Lcom/android/camera/ui/ZoomButton;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomButton;->-get0(Lcom/android/camera/ui/ZoomButton;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 133
    iput-boolean v1, p0, Lcom/android/camera/ui/ZoomButton$3;->mButtonSlideDownAnimatorRunning:Z

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton$3;->this$0:Lcom/android/camera/ui/ZoomButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/ZoomButton;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ZoomButton$3;->mButtonOriginalTranslationY:F

    goto :goto_0
.end method
