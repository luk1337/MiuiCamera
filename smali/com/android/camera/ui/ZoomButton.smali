.class public Lcom/android/camera/ui/ZoomButton;
.super Landroid/widget/TextView;
.source "ZoomButton.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/camera/ui/MutexView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ZoomButton$1;,
        Lcom/android/camera/ui/ZoomButton$2;,
        Lcom/android/camera/ui/ZoomButton$3;
    }
.end annotation


# instance fields
.field private mBackEaseOutInterpolator:Landroid/view/animation/Interpolator;

.field private mBottomMargin:I

.field private mButtonSlideDownAnimator:Landroid/animation/AnimatorSet;

.field private mButtonSlideUpAnimator:Landroid/animation/ObjectAnimator;

.field private mCubicEaseInOutInterpolator:Landroid/view/animation/Interpolator;

.field private mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

.field private mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutLocationStatus:I

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mPopup:Lcom/android/camera/ui/ZoomPopup;

.field private mPopupHeight:I

.field private mPopupSlideDownAnimator:Landroid/animation/ObjectAnimator;

.field private mPopupSlideUpAnimator:Landroid/animation/ObjectAnimator;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mQuadraticEaseInOutInterpolator:Landroid/view/animation/Interpolator;

.field private mQuadraticEaseOutInterpolator:Landroid/view/animation/Interpolator;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mSineEaseOutInterpolator:Landroid/view/animation/Interpolator;

.field private mSlideDownAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mTouchDownEventOriginX:F

.field private mTouchDownEventPassed:Z

.field private mXTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mZoomInAnimator:Landroid/animation/AnimatorSet;

.field private mZoomInOutAnimator:Landroid/animation/AnimatorSet;

.field private mZoomOutAnimator:Landroid/animation/AnimatorSet;

.field private mZoomPopupAdjusting:Z

.field private mZoomPopupTouchListener:Landroid/view/View$OnTouchListener;

.field private mZoomRatio:I

.field private mZoomRatioTele:I

.field private mZoomRatioWide:I

.field private mZoomRequestAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/ZoomButton;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mButtonSlideDownAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/ZoomButton;)Lcom/android/camera/ui/ZoomPopup;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/ZoomButton;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPopupSlideDownAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/ZoomButton;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/ZoomButton;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/ZoomButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->sendHideMessage()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v12, 0x3e4ccccd    # 0.2f

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 154
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v4, Lcom/android/camera/aosp_porting/animation/BackEaseOutInterpolator;

    invoke-direct {v4}, Lcom/android/camera/aosp_porting/animation/BackEaseOutInterpolator;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mBackEaseOutInterpolator:Landroid/view/animation/Interpolator;

    .line 73
    new-instance v4, Lcom/android/camera/aosp_porting/animation/CubicEaseInOutInterpolator;

    invoke-direct {v4}, Lcom/android/camera/aosp_porting/animation/CubicEaseInOutInterpolator;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mCubicEaseInOutInterpolator:Landroid/view/animation/Interpolator;

    .line 74
    new-instance v4, Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    .line 75
    new-instance v4, Lcom/android/camera/aosp_porting/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {v4}, Lcom/android/camera/aosp_porting/animation/QuadraticEaseInOutInterpolator;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mQuadraticEaseInOutInterpolator:Landroid/view/animation/Interpolator;

    .line 76
    new-instance v4, Lcom/android/camera/aosp_porting/animation/QuadraticEaseOutInterpolator;

    invoke-direct {v4}, Lcom/android/camera/aosp_porting/animation/QuadraticEaseOutInterpolator;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mQuadraticEaseOutInterpolator:Landroid/view/animation/Interpolator;

    .line 77
    new-instance v4, Lcom/android/camera/aosp_porting/animation/SineEaseOutInterpolator;

    invoke-direct {v4}, Lcom/android/camera/aosp_porting/animation/SineEaseOutInterpolator;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mSineEaseOutInterpolator:Landroid/view/animation/Interpolator;

    .line 90
    new-instance v4, Lcom/android/camera/ui/ZoomButton$1;

    invoke-direct {v4, p0}, Lcom/android/camera/ui/ZoomButton$1;-><init>(Lcom/android/camera/ui/ZoomButton;)V

    iput-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mZoomPopupTouchListener:Landroid/view/View$OnTouchListener;

    .line 111
    new-instance v4, Lcom/android/camera/ui/ZoomButton$2;

    invoke-direct {v4, p0}, Lcom/android/camera/ui/ZoomButton$2;-><init>(Lcom/android/camera/ui/ZoomButton;)V

    iput-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v4, Lcom/android/camera/ui/ZoomButton$3;

    invoke-direct {v4, p0}, Lcom/android/camera/ui/ZoomButton$3;-><init>(Lcom/android/camera/ui/ZoomButton;)V

    iput-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mSlideDownAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 155
    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 156
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/ZoomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/ZoomButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 160
    .local v3, "drawable":Landroid/graphics/drawable/LayerDrawable;
    const v4, 0x7f0c00a1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 162
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/GradientDrawable;
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    const v5, 0x7f10002c

    invoke-direct {v4, p1, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    .line 163
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    const v5, 0x7f10002d

    invoke-direct {v4, p1, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e01e9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioWide:I

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e01ea

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioTele:I

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0070

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/ZoomButton;->mPopupHeight:I

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b006b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/ZoomButton;->mBottomMargin:I

    .line 170
    const v4, 0x7f05000e

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mShowAnimation:Landroid/view/animation/Animation;

    .line 171
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mShowAnimation:Landroid/view/animation/Animation;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 173
    const v4, 0x7f050022

    invoke-static {p1, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    check-cast v4, Landroid/animation/ObjectAnimator;

    iput-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    .line 174
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 176
    const v4, 0x7f05001e

    invoke-static {p1, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet;

    iput-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mZoomInOutAnimator:Landroid/animation/AnimatorSet;

    .line 177
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mZoomInOutAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 178
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mZoomInOutAnimator:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/camera/ui/ZoomButton;->mQuadraticEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 179
    const v4, 0x7f05001d

    invoke-static {p1, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet;

    iput-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    .line 180
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 181
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/camera/ui/ZoomButton;->mQuadraticEaseInOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 182
    const v4, 0x7f05001f

    invoke-static {p1, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet;

    iput-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    .line 183
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 184
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/camera/ui/ZoomButton;->mQuadraticEaseInOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 186
    const v4, 0x7f05001c

    invoke-static {p1, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    check-cast v4, Landroid/animation/ObjectAnimator;

    iput-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mButtonSlideUpAnimator:Landroid/animation/ObjectAnimator;

    .line 187
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mButtonSlideUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 188
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mButtonSlideUpAnimator:Landroid/animation/ObjectAnimator;

    new-array v5, v10, [F

    iget v6, p0, Lcom/android/camera/ui/ZoomButton;->mPopupHeight:I

    int-to-float v6, v6

    aput v6, v5, v8

    aput v11, v5, v9

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 189
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mButtonSlideUpAnimator:Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/camera/ui/ZoomButton;->mBackEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 190
    const v4, 0x7f050021

    invoke-static {p1, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    check-cast v4, Landroid/animation/ObjectAnimator;

    iput-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mPopupSlideUpAnimator:Landroid/animation/ObjectAnimator;

    .line 191
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mPopupSlideUpAnimator:Landroid/animation/ObjectAnimator;

    new-array v5, v10, [F

    iget v6, p0, Lcom/android/camera/ui/ZoomButton;->mPopupHeight:I

    int-to-float v6, v6

    aput v6, v5, v8

    aput v11, v5, v9

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 192
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mPopupSlideUpAnimator:Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/camera/ui/ZoomButton;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 194
    const v4, 0x7f05001b

    invoke-static {p1, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet;

    iput-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mButtonSlideDownAnimator:Landroid/animation/AnimatorSet;

    .line 195
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mButtonSlideDownAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 196
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mButtonSlideDownAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    .line 197
    .local v1, "buttonSlideDownPass1":Landroid/animation/ObjectAnimator;
    new-array v4, v10, [F

    aput v11, v4, v8

    iget v5, p0, Lcom/android/camera/ui/ZoomButton;->mPopupHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/camera/ui/ZoomButton;->mPopupHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v12

    add-float/2addr v5, v6

    aput v5, v4, v9

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 198
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mCubicEaseInOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 199
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mButtonSlideDownAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    .line 200
    .local v2, "buttonSlideDownPass2":Landroid/animation/ObjectAnimator;
    new-array v4, v10, [F

    iget v5, p0, Lcom/android/camera/ui/ZoomButton;->mPopupHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/camera/ui/ZoomButton;->mPopupHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v12

    add-float/2addr v5, v6

    aput v5, v4, v8

    iget v5, p0, Lcom/android/camera/ui/ZoomButton;->mPopupHeight:I

    int-to-float v5, v5

    aput v5, v4, v9

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 201
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mSineEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 202
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mButtonSlideDownAnimator:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/camera/ui/ZoomButton;->mSlideDownAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 203
    const v4, 0x7f050020

    invoke-static {p1, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    check-cast v4, Landroid/animation/ObjectAnimator;

    iput-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mPopupSlideDownAnimator:Landroid/animation/ObjectAnimator;

    .line 204
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mPopupSlideDownAnimator:Landroid/animation/ObjectAnimator;

    new-array v5, v10, [F

    aput v11, v5, v8

    iget v6, p0, Lcom/android/camera/ui/ZoomButton;->mPopupHeight:I

    int-to-float v6, v6

    aput v6, v5, v9

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 205
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mPopupSlideDownAnimator:Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/camera/ui/ZoomButton;->mCubicEaseInOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 206
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mPopupSlideDownAnimator:Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/camera/ui/ZoomButton;->mSlideDownAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 153
    return-void
.end method

.method private getKey()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 368
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 371
    :cond_0
    return-object v1
.end method

.method private getPreferenceSize()I
    .locals 2

    .prologue
    .line 363
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 364
    .local v0, "entries":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initializePopup()V
    .locals 4

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_0

    .line 252
    const-string/jumbo v1, "ZoomButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no need to initialize popup, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 253
    const-string/jumbo v3, " mPreference="

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 253
    iget-object v3, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 253
    const-string/jumbo v3, " mPopup="

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 253
    iget-object v3, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/ZoomPopup;->reloadPreference()V

    .line 257
    return-void

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPopupParent()Landroid/view/ViewGroup;

    move-result-object v0

    .line 261
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ZoomPopup;

    iput-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    .line 262
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopupSlideUpAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 263
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopupSlideDownAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 264
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    iget-object v2, p0, Lcom/android/camera/ui/ZoomButton;->mZoomPopupTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ZoomPopup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 265
    iget-object v2, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/camera/ui/ZoomPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 266
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 250
    return-void
.end method

.method private isPopupShown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 375
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/ZoomPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isVisible()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 525
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->isInVisibleForUser()Z

    move-result v0

    .line 525
    if-eqz v0, :cond_0

    .line 527
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    const-string/jumbo v0, "pref_camera_manual_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    const-string/jumbo v0, "pref_camera_portrait_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private requestZoomRatio(I)V
    .locals 1
    .param p1, "ratio"    # I

    .prologue
    .line 485
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/ZoomButton;->requestZoomRatio(IZ)V

    .line 484
    return-void
.end method

.method private requestZoomRatio(IZ)V
    .locals 6
    .param p1, "ratio"    # I
    .param p2, "sync"    # Z

    .prologue
    .line 489
    iget v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 494
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 495
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 491
    const/4 v1, 0x7

    .line 492
    const v2, 0x7f0c009d

    .line 493
    const/4 v3, 0x2

    .line 490
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 488
    :cond_0
    return-void
.end method

.method private sendHideMessage()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 510
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 511
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 509
    return-void
.end method

.method private toggle()V
    .locals 3

    .prologue
    .line 349
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 351
    .local v0, "index":I
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 352
    const/4 v0, 0x0

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 356
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->reloadPreference()V

    .line 359
    .end local v0    # "index":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->requestSwitchCamera()V

    .line 348
    return-void
.end method

.method private triggerPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ZoomButton;->setPressed(Z)V

    .line 273
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->showPopup()V

    .line 274
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    .line 275
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 276
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->sendHideMessage()V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->dismissPopup()Z

    goto :goto_0
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomButton;->dismissPopup(Z)Z

    move-result v0

    return v0
.end method

.method public dismissPopup(Z)Z
    .locals 3
    .param p1, "animation"    # Z

    .prologue
    const/4 v1, 0x0

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "result":Z
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ZoomButton;->setPressed(Z)V

    .line 397
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/ZoomPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopupSlideDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v0

    .line 398
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mButtonSlideDownAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 399
    if-eqz p1, :cond_2

    iget v1, p0, Lcom/android/camera/ui/ZoomButton;->mLayoutLocationStatus:I

    if-nez v1, :cond_2

    .line 400
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopupSlideDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 401
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mButtonSlideDownAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 406
    :goto_1
    const/4 v0, 0x1

    .line 407
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    goto :goto_0

    .line 403
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ZoomPopup;->setVisibility(I)V

    goto :goto_1
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 503
    check-cast p5, Ljava/lang/Integer;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ZoomButton;->requestZoomRatio(I)V

    .line 504
    const/4 v0, 0x1

    return v0

    .line 506
    .restart local p5    # "extra2":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public enableControls(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 447
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ZoomButton;->setEnabled(Z)V

    .line 446
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 552
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomButton;->setVisibility(I)V

    .line 551
    return-void
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v0

    .line 246
    const-string/jumbo v1, "pref_camera_zoom_mode_key"

    .line 245
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/preferences/IconListPreference;

    iput-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 243
    :cond_0
    return-void
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->initialize()V

    .line 427
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->reloadPreference()V

    .line 428
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->updateVisible()V

    .line 429
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/ZoomPopup;->updateBackground()V

    .line 425
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 297
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->toggle()V

    .line 311
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomInOutAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 312
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->dismissPopup()Z

    .line 296
    return-void

    .line 300
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    iget v1, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioWide:I

    if-ne v0, v1, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v2, [I

    iget v2, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    aput v2, v1, v3

    iget v2, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioTele:I

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 302
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 303
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    iget v1, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioTele:I

    if-gt v0, v1, :cond_2

    .line 304
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v2, [I

    iget v2, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    aput v2, v1, v3

    iget v2, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioWide:I

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 305
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 307
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioTele:I

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/ZoomButton;->requestZoomRatio(IZ)V

    .line 308
    iget v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioWide:I

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/ZoomButton;->requestZoomRatio(IZ)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->initialize()V

    .line 418
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->updateVisible()V

    .line 420
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isNoCameraModeSelected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomButton;->setVisibility(I)V

    .line 416
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 286
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    :cond_0
    return v1

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->triggerPopup()V

    .line 288
    iput-boolean v2, p0, Lcom/android/camera/ui/ZoomButton;->mZoomPopupAdjusting:Z

    .line 289
    iput-boolean v1, p0, Lcom/android/camera/ui/ZoomButton;->mTouchDownEventPassed:Z

    .line 290
    return v2
.end method

.method public onOtherPopupShowed(I)Z
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 516
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ZoomButton;->dismissPopup(Z)Z

    move-result v0

    .line 517
    .local v0, "result":Z
    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->dismissPopup()Z

    .line 442
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 440
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->reloadPreference()V

    .line 435
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 317
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    .line 318
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ZoomButton;->mTouchDownEventOriginX:F

    .line 320
    iput-boolean v3, p0, Lcom/android/camera/ui/ZoomButton;->mZoomPopupAdjusting:Z

    .line 345
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 321
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/ui/ZoomButton;->mZoomPopupAdjusting:Z

    if-eqz v1, :cond_1

    .line 322
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 323
    .local v0, "originX":F
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v0

    iget v2, p0, Lcom/android/camera/ui/ZoomButton;->mTouchDownEventOriginX:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 325
    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/ui/ZoomButton;->mZoomPopupAdjusting:Z

    .line 326
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    if-eqz v1, :cond_4

    .line 327
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ZoomPopup;->passTouchEvent(Landroid/view/MotionEvent;)V

    .line 342
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 329
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 330
    iget-boolean v1, p0, Lcom/android/camera/ui/ZoomButton;->mTouchDownEventPassed:Z

    if-nez v1, :cond_6

    .line 331
    iput v0, p0, Lcom/android/camera/ui/ZoomButton;->mTouchDownEventOriginX:F

    .line 332
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 333
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 334
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ZoomPopup;->passTouchEvent(Landroid/view/MotionEvent;)V

    .line 335
    iput-boolean v5, p0, Lcom/android/camera/ui/ZoomButton;->mTouchDownEventPassed:Z

    .line 336
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 338
    :cond_6
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    if-eqz v1, :cond_4

    .line 339
    iget-object v1, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ZoomPopup;->passTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method public recoverIfNeeded()V
    .locals 0

    .prologue
    .line 521
    return-void
.end method

.method public reloadPreference()V
    .locals 9

    .prologue
    const/16 v8, 0x21

    .line 210
    iget-object v6, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 212
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 213
    const v6, 0x7f0e01ee

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ui/ZoomButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v7}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 214
    iget v6, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioWide:I

    iput v6, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    .line 228
    :goto_0
    iget-object v6, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    iget v7, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioWide:I

    if-ne v6, v7, :cond_6

    .line 229
    :cond_0
    :goto_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 230
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    iget v6, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    div-int/lit8 v2, v6, 0xa

    .line 231
    .local v2, "zoom":I
    div-int/lit8 v5, v2, 0xa

    .line 232
    .local v5, "zoomSig":I
    rem-int/lit8 v3, v2, 0xa

    .line 233
    .local v3, "zoomFraction":I
    if-nez v3, :cond_7

    .line 234
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ui/ZoomButton;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 238
    :goto_2
    const-string/jumbo v6, "X"

    iget-object v7, p0, Lcom/android/camera/ui/ZoomButton;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomButton;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v2    # "zoom":I
    .end local v3    # "zoomFraction":I
    .end local v5    # "zoomSig":I
    :cond_1
    return-void

    .line 210
    :cond_2
    return-void

    .line 216
    :cond_3
    iget v6, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioTele:I

    iput v6, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    goto :goto_0

    .line 219
    :cond_4
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->readZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v4

    .line 220
    .local v4, "zoomIndex":I
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 221
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_5

    .line 222
    iget v6, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioWide:I

    iput v6, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    goto :goto_0

    .line 224
    :cond_5
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    goto :goto_0

    .line 228
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v4    # "zoomIndex":I
    :cond_6
    iget v6, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatio:I

    iget v7, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRatioTele:I

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 236
    .restart local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .restart local v2    # "zoom":I
    .restart local v3    # "zoomFraction":I
    .restart local v5    # "zoomSig":I
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ui/ZoomButton;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    goto :goto_2
.end method

.method public requestSwitchCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 470
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 475
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 472
    const/4 v1, 0x7

    .line 473
    const v2, 0x7f0c0078

    .line 474
    const/4 v3, 0x2

    .line 471
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 469
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 463
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 464
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomPopup;->setEnabled(Z)V

    .line 462
    :cond_0
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/camera/ui/ZoomButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 457
    return-void
.end method

.method public setZoomRatio(I)V
    .locals 1
    .param p1, "ratio"    # I

    .prologue
    .line 481
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/ZoomButton;->requestZoomRatio(IZ)V

    .line 480
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomButton;->setVisibility(I)V

    .line 544
    :cond_0
    return-void
.end method

.method public showPopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 379
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->initializePopup()V

    .line 380
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/ZoomPopup;->setOrientation(IZ)V

    .line 382
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPopup:Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomPopup;->setVisibility(I)V

    .line 383
    iget v0, p0, Lcom/android/camera/ui/ZoomButton;->mLayoutLocationStatus:I

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mPopupSlideUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 385
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mButtonSlideUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 378
    :cond_0
    return-void
.end method

.method public updateLayoutLocation()V
    .locals 9

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xb

    const/16 v6, 0x8

    const/4 v5, 0x2

    .line 557
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/camera/ActivityBase;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ModeExitView;->getExitButton()Lcom/android/camera/ui/ExitButton;

    move-result-object v0

    .line 558
    .local v0, "exitButton":Landroid/view/View;
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/camera/ActivityBase;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getPopupIndicatorLayout()Landroid/view/View;

    move-result-object v1

    .line 559
    .local v1, "indicator":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    .line 560
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/camera/ActivityBase;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getPopupParent()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 561
    const/4 v2, 0x1

    .line 571
    .local v2, "layoutLocationStatus":I
    :goto_0
    iget v4, p0, Lcom/android/camera/ui/ZoomButton;->mLayoutLocationStatus:I

    if-eq v2, v4, :cond_3

    .line 572
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 573
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 574
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 575
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 576
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 578
    if-nez v2, :cond_7

    .line 579
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 580
    const v4, 0x7f0c0020

    invoke-virtual {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 581
    iget v4, p0, Lcom/android/camera/ui/ZoomButton;->mBottomMargin:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 592
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 593
    if-eqz v2, :cond_1

    .line 594
    iget v4, p0, Lcom/android/camera/ui/ZoomButton;->mLayoutLocationStatus:I

    if-nez v4, :cond_2

    .line 595
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/ZoomButton;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/ZoomButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 598
    :cond_2
    iput v2, p0, Lcom/android/camera/ui/ZoomButton;->mLayoutLocationStatus:I

    .line 599
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->requestLayout()V

    .line 555
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    return-void

    .line 562
    .end local v2    # "layoutLocationStatus":I
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    .line 563
    const/4 v2, 0x2

    .restart local v2    # "layoutLocationStatus":I
    goto :goto_0

    .line 565
    .end local v2    # "layoutLocationStatus":I
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "layoutLocationStatus":I
    goto :goto_0

    .line 568
    .end local v2    # "layoutLocationStatus":I
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "layoutLocationStatus":I
    goto :goto_0

    .line 582
    .restart local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    .line 583
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 584
    const v4, 0x7f0c004b

    invoke-virtual {v3, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 585
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 586
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 585
    add-int/2addr v4, v5

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 587
    :cond_8
    if-ne v2, v5, :cond_0

    .line 588
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 589
    const v4, 0x7f0c0067

    invoke-virtual {v3, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 590
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1
.end method

.method public updateVisible()V
    .locals 1

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomButton;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomButton;->setVisibility(I)V

    .line 532
    :goto_0
    return-void

    .line 537
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomButton;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/android/camera/ui/ZoomButton;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 539
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomButton;->dismissPopup()Z

    goto :goto_0
.end method
