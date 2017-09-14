.class public Lcom/android/camera/ui/V6SmartShutterButton;
.super Lcom/android/camera/ui/RotateImageView;
.source "V6SmartShutterButton.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6SmartShutterButton$1;
    }
.end annotation


# static fields
.field private static final DISMISS_DISTANCE_THRESHOLD:I

.field private static final FADEOUT_BOUNT_THRESHOLD:I

.field private static final MOVE_THRESHOLD:I

.field private static UNUSED_TRIGGER_TIME:I

.field private static sDeviceScreenInches:D


# instance fields
.field private mFadeout:Landroid/view/animation/Animation;

.field private mFixedShutterCenterX:I

.field private mFixedShutterCenterY:I

.field private mHandler:Landroid/os/Handler;

.field private mInShutterButton:Z

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mMoveBount:Landroid/graphics/Rect;

.field private mOriginX:I

.field private mOriginY:I

.field private mState:I

.field private mVisableBount:Landroid/graphics/Rect;

.field private mVisibleState:I


# direct methods
.method static synthetic -set0(Lcom/android/camera/ui/V6SmartShutterButton;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mVisibleState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/V6SmartShutterButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/V6SmartShutterButton;->updateVisibleState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6SmartShutterButton;->FADEOUT_BOUNT_THRESHOLD:I

    .line 40
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6SmartShutterButton;->MOVE_THRESHOLD:I

    .line 41
    const/16 v0, 0x3a98

    sput v0, Lcom/android/camera/ui/V6SmartShutterButton;->UNUSED_TRIGGER_TIME:I

    .line 42
    const/high16 v0, 0x428c0000    # 70.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6SmartShutterButton;->DISMISS_DISTANCE_THRESHOLD:I

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v7, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mState:I

    .line 46
    new-instance v1, Lcom/android/camera/ui/V6SmartShutterButton$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/V6SmartShutterButton$1;-><init>(Lcom/android/camera/ui/V6SmartShutterButton;)V

    iput-object v1, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mHandler:Landroid/os/Handler;

    .line 60
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SmartShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 61
    .local v0, "dm":Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SmartShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 62
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SmartShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 61
    invoke-direct {v1, v7, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mVisableBount:Landroid/graphics/Rect;

    .line 63
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mVisableBount:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sget v3, Lcom/android/camera/ui/V6SmartShutterButton;->FADEOUT_BOUNT_THRESHOLD:I

    sub-int/2addr v2, v3

    .line 64
    iget-object v3, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mVisableBount:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/android/camera/ui/V6SmartShutterButton;->FADEOUT_BOUNT_THRESHOLD:I

    sub-int/2addr v3, v4

    .line 65
    iget-object v4, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mVisableBount:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sget v5, Lcom/android/camera/ui/V6SmartShutterButton;->FADEOUT_BOUNT_THRESHOLD:I

    add-int/2addr v4, v5

    .line 66
    iget-object v5, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mVisableBount:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sget v6, Lcom/android/camera/ui/V6SmartShutterButton;->FADEOUT_BOUNT_THRESHOLD:I

    add-int/2addr v5, v6

    .line 63
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mMoveBount:Landroid/graphics/Rect;

    .line 58
    return-void
.end method

.method private getDistanceFromPoint(IIII)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "originX"    # I
    .param p4, "originY"    # I

    .prologue
    .line 195
    sub-int v2, p3, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 196
    .local v0, "tmpx":I
    sub-int v2, p4, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 197
    .local v1, "tmpy":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method

.method private nearCenterOfShutter(II)Z
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 201
    iget v3, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mFixedShutterCenterX:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 202
    .local v0, "tmpx":I
    iget v3, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mFixedShutterCenterY:I

    sub-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 203
    .local v1, "tmpy":I
    sget v3, Lcom/android/camera/ui/V6SmartShutterButton;->DISMISS_DISTANCE_THRESHOLD:I

    if-gt v0, v3, :cond_0

    sget v3, Lcom/android/camera/ui/V6SmartShutterButton;->DISMISS_DISTANCE_THRESHOLD:I

    if-gt v1, v3, :cond_0

    .line 204
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    sget v3, Lcom/android/camera/ui/V6SmartShutterButton;->DISMISS_DISTANCE_THRESHOLD:I

    int-to-double v6, v3

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    const/4 v2, 0x1

    .line 203
    :cond_0
    return v2
.end method

.method private needMovableShutter()Z
    .locals 4

    .prologue
    .line 304
    sget-wide v0, Lcom/android/camera/ui/V6SmartShutterButton;->sDeviceScreenInches:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SmartShutterButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getScreenInches(Landroid/content/Context;)D

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/ui/V6SmartShutterButton;->sDeviceScreenInches:D

    .line 308
    :cond_0
    sget-wide v0, Lcom/android/camera/ui/V6SmartShutterButton;->sDeviceScreenInches:D

    const-wide v2, 0x401399999999999aL    # 4.9

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onClick()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 72
    const/4 v1, 0x0

    .line 73
    const v2, 0x7f090012

    .line 74
    const/4 v3, 0x2

    move-object v5, v4

    .line 71
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    :cond_0
    return-void
.end method

.method private onFocused(Z)V
    .locals 6
    .param p1, "focus"    # Z

    .prologue
    const/4 v5, 0x0

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 86
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 83
    const/4 v1, 0x3

    .line 84
    const v2, 0x7f090012

    .line 85
    const/4 v3, 0x2

    .line 82
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    :cond_0
    return-void
.end method

.method private reviseLocation(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 283
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SmartShutterButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SmartShutterButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    .line 284
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SmartShutterButton;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SmartShutterButton;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    .line 283
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 285
    .local v0, "rec":Landroid/graphics/Rect;
    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 286
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_3

    .line 287
    iget v1, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 288
    iget v1, p3, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 293
    :cond_1
    :goto_0
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_4

    .line 294
    iget v1, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 295
    iget v1, p3, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 300
    :cond_2
    :goto_1
    return-object v0

    .line 289
    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_1

    .line 290
    iget v1, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 291
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 296
    :cond_4
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_2

    .line 297
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 298
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private setDisplayPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 278
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SmartShutterButton;->setX(F)V

    .line 279
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SmartShutterButton;->setY(F)V

    .line 277
    return-void
.end method

.method private setRelateVisible(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    const/16 v1, 0x8

    .line 270
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SmartShutterButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 271
    .local v0, "viewGroup":Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_1

    .line 272
    if-eq v1, p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 274
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6SmartShutterButton;->setVisibility(I)V

    .line 269
    return-void
.end method

.method private updateVisibleState()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 208
    iget-object v0, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3c23d70a    # 0.01f

    invoke-direct {v0, v4, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    .line 210
    iget-object v0, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 211
    iget-object v0, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 214
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mVisibleState:I

    packed-switch v0, :pswitch_data_0

    .line 207
    :goto_0
    return-void

    .line 216
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6SmartShutterButton;->setRelateVisible(I)V

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SmartShutterButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 221
    iget-object v0, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 223
    invoke-direct {p0, v5}, Lcom/android/camera/ui/V6SmartShutterButton;->setRelateVisible(I)V

    goto :goto_0

    .line 226
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SmartShutterButton;->clearAnimation()V

    .line 227
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6SmartShutterButton;->setAlpha(F)V

    .line 229
    invoke-direct {p0, v5}, Lcom/android/camera/ui/V6SmartShutterButton;->setRelateVisible(I)V

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 128
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v2, v4

    .line 129
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v3, v4

    .line 131
    .local v3, "y":I
    packed-switch v0, :pswitch_data_0

    .line 190
    :cond_0
    :goto_0
    return v9

    .line 134
    :pswitch_0
    invoke-virtual {p0, v8}, Lcom/android/camera/ui/V6SmartShutterButton;->setPressed(Z)V

    .line 135
    iget-object v4, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mHandler:Landroid/os/Handler;

    sget v5, Lcom/android/camera/ui/V6SmartShutterButton;->UNUSED_TRIGGER_TIME:I

    int-to-long v6, v5

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 136
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-static {v4, v5, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mInShutterButton:Z

    .line 137
    iget-boolean v4, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mInShutterButton:Z

    if-eqz v4, :cond_1

    .line 138
    iget v4, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mState:I

    if-eq v4, v9, :cond_1

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->setSmartShutterPosition(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/android/camera/ui/V6SmartShutterButton;->onClick()V

    .line 144
    :cond_1
    invoke-direct {p0, v8}, Lcom/android/camera/ui/V6SmartShutterButton;->onFocused(Z)V

    .line 145
    invoke-direct {p0}, Lcom/android/camera/ui/V6SmartShutterButton;->updateVisibleState()V

    goto :goto_0

    .line 150
    :pswitch_1
    iget v4, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mState:I

    if-eq v4, v9, :cond_2

    .line 151
    sget v4, Lcom/android/camera/ui/V6SmartShutterButton;->MOVE_THRESHOLD:I

    iget v5, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mOriginX:I

    iget v6, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mOriginY:I

    invoke-direct {p0, v2, v3, v5, v6}, Lcom/android/camera/ui/V6SmartShutterButton;->getDistanceFromPoint(IIII)I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 152
    iput v9, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mState:I

    .line 160
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/V6SmartShutterButton;->nearCenterOfShutter(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 161
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mVisibleState:I

    .line 162
    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6SmartShutterButton;->setAlpha(F)V

    .line 163
    new-instance v1, Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mFixedShutterCenterX:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SmartShutterButton;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mFixedShutterCenterY:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SmartShutterButton;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    .line 164
    iget v6, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mFixedShutterCenterX:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SmartShutterButton;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mFixedShutterCenterY:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SmartShutterButton;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    .line 163
    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 178
    .local v1, "rect":Landroid/graphics/Rect;
    :cond_3
    :goto_1
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v4, v5}, Lcom/android/camera/ui/V6SmartShutterButton;->setDisplayPosition(II)V

    goto/16 :goto_0

    .line 166
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_4
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6SmartShutterButton;->setAlpha(F)V

    .line 167
    iget-object v4, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mMoveBount:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/ui/V6SmartShutterButton;->reviseLocation(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 168
    .restart local v1    # "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mVisableBount:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 172
    iget v4, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mVisibleState:I

    if-ne v4, v9, :cond_5

    .line 173
    iget-object v4, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    .line 175
    :cond_5
    iput v8, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mVisibleState:I

    goto :goto_1

    .line 182
    .end local v1    # "rect":Landroid/graphics/Rect;
    :pswitch_2
    iput v2, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mOriginX:I

    .line 183
    iput v3, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mOriginY:I

    .line 184
    iput v8, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mState:I

    .line 185
    invoke-virtual {p0, v9}, Lcom/android/camera/ui/V6SmartShutterButton;->setPressed(Z)V

    .line 186
    invoke-direct {p0, v9}, Lcom/android/camera/ui/V6SmartShutterButton;->onFocused(Z)V

    .line 187
    iget-object v4, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6SmartShutterButton;->setEnabled(Z)V

    .line 104
    return-void
.end method

.method public flyin(IIII)V
    .locals 9
    .param p1, "endx"    # I
    .param p2, "endy"    # I
    .param p3, "centerX"    # I
    .param p4, "centerY"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 236
    iput p3, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mFixedShutterCenterX:I

    .line 237
    iput p4, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mFixedShutterCenterY:I

    .line 238
    invoke-direct {p0}, Lcom/android/camera/ui/V6SmartShutterButton;->needMovableShutter()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SmartShutterButton;->isShown()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v5, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->cancel()V

    .line 240
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/camera/ui/V6SmartShutterButton;->setRelateVisible(I)V

    .line 241
    const v5, 0x3c23d70a    # 0.01f

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/V6SmartShutterButton;->setAlpha(F)V

    .line 242
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SmartShutterButton;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, p3, v5

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SmartShutterButton;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, p4, v6

    invoke-direct {p0, v5, v6}, Lcom/android/camera/ui/V6SmartShutterButton;->setDisplayPosition(II)V

    .line 244
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSmartShutterPosition()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "position":Ljava/lang/String;
    const/4 v3, -0x1

    .line 246
    .local v3, "x":I
    const/4 v4, -0x1

    .line 247
    .local v4, "y":I
    if-eqz v1, :cond_3

    .line 248
    const/16 v5, 0x78

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 249
    .local v0, "index":I
    if-eq v0, v7, :cond_3

    .line 250
    invoke-virtual {v1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 251
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 254
    .end local v0    # "index":I
    :cond_3
    if-ne v3, v7, :cond_4

    if-ne v4, v7, :cond_4

    .line 255
    move v3, p1

    .line 256
    move v4, p2

    .line 259
    :cond_4
    iget-object v5, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mVisableBount:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/ui/V6SmartShutterButton;->reviseLocation(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 260
    .local v2, "rec":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SmartShutterButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, v2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 263
    iput v8, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mVisibleState:I

    .line 264
    iget-object v5, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 265
    iget-object v5, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mHandler:Landroid/os/Handler;

    sget v6, Lcom/android/camera/ui/V6SmartShutterButton;->UNUSED_TRIGGER_TIME:I

    int-to-long v6, v6

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6SmartShutterButton;->setRelateVisible(I)V

    .line 116
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mVisibleState:I

    .line 113
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/ui/V6SmartShutterButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 91
    return-void
.end method
