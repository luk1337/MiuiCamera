.class Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "V6PreviewPage.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6PreviewPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAnimatorListener"
.end annotation


# instance fields
.field private mAnimationType:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

.field private mIndicatorAndExitDeltaCenter:I

.field private mIndicatorLayoutMaxY:I

.field private mIndicatorLayoutTransY:I

.field private mLayerType:I

.field private mModeExitButtonHalfWidth:F

.field private mModeExitButtonLeft:I

.field private mModeExitButtonRight:I

.field final synthetic this$0:Lcom/android/camera/ui/V6PreviewPage;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/V6PreviewPage;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/ui/V6PreviewPage;

    .prologue
    .line 431
    sget-object v0, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->COLLAPSE:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/V6PreviewPage;Lcom/android/camera/ui/V6PreviewPage$AnimationType;)V

    .line 430
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/V6PreviewPage;Lcom/android/camera/ui/V6PreviewPage$AnimationType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/V6PreviewPage;
    .param p2, "type"    # Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 435
    iput-object p2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    .line 436
    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->updateParameters()V

    .line 434
    return-void
.end method


# virtual methods
.method public getAnimationType()Lcom/android/camera/ui/V6PreviewPage$AnimationType;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    return-object v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 506
    const-string/jumbo v0, "V6PreviewPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationCancel: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v5, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 484
    const-string/jumbo v0, "V6PreviewPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationEnd: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget v1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mLayerType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6PreviewPage;->setLayerType(ILandroid/graphics/Paint;)V

    .line 487
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6ModeExitView;->setTranslationY(F)V

    .line 488
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mZoomButton:Lcom/android/camera/ui/ZoomButton;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ZoomButton;->setTranslationY(F)V

    .line 489
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 490
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 491
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v0}, Lcom/android/camera/ui/V6PreviewPage;->-get0(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mModeExitButtonLeft:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLeft(I)V

    .line 492
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v0}, Lcom/android/camera/ui/V6PreviewPage;->-get0(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mModeExitButtonRight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setRight(I)V

    .line 493
    sget-object v0, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->EXPAND:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    if-ne v0, v1, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v0}, Lcom/android/camera/ui/V6PreviewPage;->-get1(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 501
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mZoomButton:Lcom/android/camera/ui/ZoomButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/ZoomButton;->updateLayoutLocation()V

    .line 483
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->hide()V

    .line 498
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v0}, Lcom/android/camera/ui/V6PreviewPage;->-get0(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 499
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 467
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->getLayerType()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mLayerType:I

    .line 468
    iget v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mLayerType:I

    if-eq v0, v2, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/V6PreviewPage;->setLayerType(ILandroid/graphics/Paint;)V

    .line 471
    :cond_0
    const-string/jumbo v0, "V6PreviewPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationStart: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",layerType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mLayerType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    sget-object v0, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->EXPAND:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    if-ne v0, v1, :cond_1

    .line 474
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->show()V

    .line 475
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 479
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mZoomButton:Lcom/android/camera/ui/ZoomButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/ZoomButton;->updateLayoutLocation()V

    .line 466
    return-void

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 511
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    .line 512
    .local v2, "fraction":F
    iget v7, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mIndicatorLayoutTransY:I

    int-to-float v7, v7

    mul-float v6, v7, v2

    .line 513
    .local v6, "transY":F
    iget-object v7, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v7, v7, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v7, v6}, Lcom/android/camera/ui/V6ModeExitView;->setTranslationY(F)V

    .line 514
    iget-object v7, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v7, v7, Lcom/android/camera/ui/V6PreviewPage;->mZoomButton:Lcom/android/camera/ui/ZoomButton;

    invoke-virtual {v7, v6}, Lcom/android/camera/ui/ZoomButton;->setTranslationY(F)V

    .line 515
    iget v7, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mModeExitButtonHalfWidth:F

    mul-float/2addr v7, v2

    float-to-double v8, v7

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v0, v8

    .line 516
    .local v0, "deltaX":I
    iget v7, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mModeExitButtonLeft:I

    add-int v4, v7, v0

    .line 517
    .local v4, "newLeft":I
    iget v7, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mModeExitButtonRight:I

    sub-int v5, v7, v0

    .line 518
    .local v5, "newRight":I
    iget-object v7, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v7}, Lcom/android/camera/ui/V6PreviewPage;->-get0(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->setLeft(I)V

    .line 519
    iget-object v7, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v7}, Lcom/android/camera/ui/V6PreviewPage;->-get0(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->setRight(I)V

    .line 520
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v2

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 521
    .local v1, "exitAlpha":F
    iget-object v7, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v7}, Lcom/android/camera/ui/V6PreviewPage;->-get0(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/View;->setAlpha(F)V

    .line 523
    iget-object v7, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v7, v7, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v7}, Lcom/android/camera/ui/V6ModeExitView;->getY()F

    move-result v7

    iget v8, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mIndicatorAndExitDeltaCenter:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mIndicatorLayoutMaxY:I

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 524
    .local v3, "indicatorY":F
    iget-object v7, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v7, v7, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setY(F)V

    .line 525
    iget-object v7, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v7}, Lcom/android/camera/ui/V6PreviewPage;->-get1(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/View;->setAlpha(F)V

    .line 510
    return-void
.end method

.method public setAnimationType(Lcom/android/camera/ui/V6PreviewPage$AnimationType;)V
    .locals 0
    .param p1, "type"    # Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    .line 457
    return-void
.end method

.method public updateParameters()V
    .locals 5

    .prologue
    .line 440
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v2}, Lcom/android/camera/ui/V6PreviewPage;->-get1(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v3}, Lcom/android/camera/ui/V6PreviewPage;->-get0(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 441
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v3}, Lcom/android/camera/ui/V6PreviewPage;->-get1(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v4}, Lcom/android/camera/ui/V6PreviewPage;->-get0(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 440
    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mIndicatorAndExitDeltaCenter:I

    .line 442
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v2, v2, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 443
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v3, v3, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v4}, Lcom/android/camera/ui/V6PreviewPage;->-get1(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v4}, Lcom/android/camera/ui/V6PreviewPage;->-get1(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 442
    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mIndicatorLayoutMaxY:I

    .line 444
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v2}, Lcom/android/camera/ui/V6PreviewPage;->-get0(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mModeExitButtonLeft:I

    .line 445
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v2}, Lcom/android/camera/ui/V6PreviewPage;->-get0(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mModeExitButtonRight:I

    .line 446
    iget v2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mModeExitButtonRight:I

    iget v3, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mModeExitButtonLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mModeExitButtonHalfWidth:F

    .line 448
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v3, v3, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-static {v2, v3}, Lcom/android/camera/ui/V6PreviewPage;->-wrap0(Lcom/android/camera/ui/V6PreviewPage;Landroid/view/View;)I

    move-result v0

    .line 449
    .local v0, "exitViewY":I
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v3, v3, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/android/camera/ui/V6PreviewPage;->-wrap0(Lcom/android/camera/ui/V6PreviewPage;Landroid/view/View;)I

    move-result v1

    .line 450
    .local v1, "indicatorLayoutY":I
    sub-int v2, v1, v0

    iget v3, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mIndicatorAndExitDeltaCenter:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->mIndicatorLayoutTransY:I

    .line 452
    const-string/jumbo v2, "V6PreviewPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateParameters: exitView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v4, v4, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",exitButton="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v4}, Lcom/android/camera/ui/V6PreviewPage;->-get0(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",exitViewY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string/jumbo v2, "V6PreviewPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateParameters: indicatorLayout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v4, v4, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",indicator="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 454
    iget-object v4, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v4}, Lcom/android/camera/ui/V6PreviewPage;->-get1(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v4

    .line 453
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 454
    const-string/jumbo v4, ",indicatorLayoutY="

    .line 453
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void
.end method
