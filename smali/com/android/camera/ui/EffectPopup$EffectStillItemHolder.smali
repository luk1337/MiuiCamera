.class public Lcom/android/camera/ui/EffectPopup$EffectStillItemHolder;
.super Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
.source "EffectPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectStillItemHolder"
.end annotation


# instance fields
.field protected mImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/camera/ui/EffectPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/EffectPopup;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/ui/EffectPopup;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectStillItemHolder;->this$0:Lcom/android/camera/ui/EffectPopup;

    .line 509
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;-><init>(Lcom/android/camera/ui/EffectPopup;Landroid/view/View;)V

    .line 510
    const v0, 0x7f09002b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectStillItemHolder;->mImageView:Landroid/widget/ImageView;

    .line 508
    return-void
.end method


# virtual methods
.method public bindEffectIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 515
    invoke-super {p0, p1}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->bindEffectIndex(I)V

    .line 516
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectStillItemHolder;->this$0:Lcom/android/camera/ui/EffectPopup;

    iget-object v0, v0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectStillItemHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectStillItemHolder;->this$0:Lcom/android/camera/ui/EffectPopup;

    iget-object v1, v1, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 514
    :cond_0
    return-void
.end method
