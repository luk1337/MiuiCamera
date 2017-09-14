.class public Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "EffectPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectSelectedOverlay"
.end annotation


# instance fields
.field protected mAnimator:Landroid/animation/ObjectAnimator;

.field protected mOffsetX:I

.field protected mOverlay:Landroid/graphics/drawable/Drawable;

.field protected mPosition:I

.field final synthetic this$0:Lcom/android/camera/ui/EffectPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/EffectPopup;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/camera/ui/EffectPopup;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 361
    invoke-static {p1}, Lcom/android/camera/ui/EffectPopup;->-get0(Lcom/android/camera/ui/EffectPopup;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050003

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 362
    invoke-static {p1}, Lcom/android/camera/ui/EffectPopup;->-get0(Lcom/android/camera/ui/EffectPopup;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 364
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 360
    return-void
.end method

.method private calcOffsetX(II)I
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->getLeft(I)I

    move-result v0

    .line 381
    .local v0, "leftFrom":I
    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v1}, Lcom/android/camera/ui/EffectPopup;->-get4(Lcom/android/camera/ui/EffectPopup;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 382
    if-ge p1, p2, :cond_1

    .line 383
    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v1}, Lcom/android/camera/ui/EffectPopup;->-get4(Lcom/android/camera/ui/EffectPopup;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLeft()I

    move-result v0

    .line 388
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->getLeft(I)I

    move-result v1

    sub-int v1, v0, v1

    return v1

    .line 384
    :cond_1
    if-le p1, p2, :cond_0

    .line 385
    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v1}, Lcom/android/camera/ui/EffectPopup;->-get4(Lcom/android/camera/ui/EffectPopup;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v0

    goto :goto_0
.end method

.method private getLeft(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 392
    const/4 v1, 0x0

    .line 393
    .local v1, "left":I
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v3}, Lcom/android/camera/ui/EffectPopup;->-get4(Lcom/android/camera/ui/EffectPopup;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 394
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 395
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 396
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int v1, v3, v4

    .line 398
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return v1
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 403
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 405
    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v6}, Lcom/android/camera/ui/EffectPopup;->-get4(Lcom/android/camera/ui/EffectPopup;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mPosition:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 406
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    .line 407
    iget-object v5, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 409
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 410
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 411
    .local v0, "bottom":I
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int v2, v6, v7

    .line 412
    .local v2, "left":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int v3, v6, v7

    .line 414
    .local v3, "right":I
    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mOffsetX:I

    add-int/2addr v7, v2

    iget v8, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mOffsetX:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v4, v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 415
    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 402
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public select(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 373
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 374
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mPosition:I

    invoke-direct {p0, v2, p1}, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->calcOffsetX(II)I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 375
    iput p1, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mPosition:I

    .line 376
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 372
    return-void
.end method

.method public setOffsetX(I)V
    .locals 1
    .param p1, "offsetX"    # I

    .prologue
    .line 368
    iput p1, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mOffsetX:I

    .line 369
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v0}, Lcom/android/camera/ui/EffectPopup;->-get4(Lcom/android/camera/ui/EffectPopup;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->postInvalidateOnAnimation()V

    .line 367
    return-void
.end method
