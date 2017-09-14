.class public abstract Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EffectPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "EffectItemHolder"
.end annotation


# instance fields
.field protected mEffectIndex:I

.field protected mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/camera/ui/EffectPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/EffectPopup;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/ui/EffectPopup;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->this$0:Lcom/android/camera/ui/EffectPopup;

    .line 474
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 475
    const v0, 0x7f090027

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->mTextView:Landroid/widget/TextView;

    .line 476
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->updateBackground()V

    .line 473
    return-void
.end method


# virtual methods
.method public bindEffectIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 488
    iput p1, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->mEffectIndex:I

    .line 490
    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->this$0:Lcom/android/camera/ui/EffectPopup;

    iget-object v1, v1, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->mEffectIndex:I

    aget-object v0, v1, v2

    .line 491
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 498
    return-void
.end method

.method public requestRender()V
    .locals 0

    .prologue
    .line 502
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 496
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 494
    return-void
.end method

.method public updateBackground()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v0}, Lcom/android/camera/ui/EffectPopup;->-get0(Lcom/android/camera/ui/EffectPopup;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0c0009

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 479
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method
