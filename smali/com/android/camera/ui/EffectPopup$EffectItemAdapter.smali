.class public Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "EffectPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectItemAdapter"
.end annotation


# instance fields
.field protected mEffectItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/camera/ui/EffectPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/EffectPopup;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/ui/EffectPopup;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p3, "effectItem":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 559
    iput-object p3, p0, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;->mEffectItem:Ljava/util/List;

    .line 560
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 558
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;->mEffectItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    move-object v0, p1

    .line 583
    check-cast v0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;

    .line 584
    .local v0, "effectHolder":Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
    iget-object v1, v0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 585
    invoke-virtual {v0, p2}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->bindEffectIndex(I)V

    .line 582
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x0

    .line 568
    invoke-static {}, Lcom/android/camera/Device;->isSupportedDynamicEffectPopup()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    iget-object v2, p0, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040005

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 570
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;

    iget-object v2, p0, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-direct {v0, v2, v1}, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;-><init>(Lcom/android/camera/ui/EffectPopup;Landroid/view/View;)V

    .line 576
    .local v0, "holder":Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    iget-object v2, p0, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v2}, Lcom/android/camera/ui/EffectPopup;->-get1(Lcom/android/camera/ui/EffectPopup;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    return-object v0

    .line 572
    .end local v0    # "holder":Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040007

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 573
    .restart local v1    # "view":Landroid/view/View;
    new-instance v0, Lcom/android/camera/ui/EffectPopup$EffectStillItemHolder;

    iget-object v2, p0, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-direct {v0, v2, v1}, Lcom/android/camera/ui/EffectPopup$EffectStillItemHolder;-><init>(Lcom/android/camera/ui/EffectPopup;Landroid/view/View;)V

    .restart local v0    # "holder":Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    move-object v0, p1

    .line 590
    check-cast v0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;

    .line 591
    .local v0, "effectHolder":Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->resume()V

    .line 592
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 589
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    move-object v0, p1

    .line 597
    check-cast v0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;

    .line 598
    .local v0, "effectHolder":Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->pause()V

    .line 599
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 596
    return-void
.end method
