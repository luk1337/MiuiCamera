.class Lcom/android/camera/ui/ModeGridView;
.super Landroid/view/ViewGroup;
.source "ModeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ModeGridView$1;,
        Lcom/android/camera/ui/ModeGridView$2;,
        Lcom/android/camera/ui/ModeGridView$OnChangeListener;
    }
.end annotation


# static fields
.field private static INVALID_POSITION:I


# instance fields
.field private dragResponseMS:J

.field private isDrag:Z

.field private mChildHeight:I

.field private mChildWidth:I

.field private mColumnCount:I

.field private mDownScrollBorder:I

.field private mDownX:I

.field private mDownY:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragImageView:Landroid/widget/ImageView;

.field private mDragPosition:I

.field private mEnableDrag:Z

.field private mGridViewHonSpacing:I

.field private mGridViewMarginTop:I

.field private mGridViewMarginWidth:I

.field private mGridViewVerSpacing:I

.field private mHandler:Landroid/os/Handler;

.field private mLongClickRunnable:Ljava/lang/Runnable;

.field private mOffset2Left:I

.field private mOffset2Top:I

.field mParent:Lcom/android/camera/ui/ScreenView;

.field private mPoint2ItemLeft:I

.field private mPoint2ItemTop:I

.field private mRowCount:I

.field private mScreenIndex:I

.field private mScrollRunnable:Ljava/lang/Runnable;

.field private mStartDragItemView:Landroid/view/View;

.field private mStatusHeight:I

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mUpScrollBorder:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private moveX:I

.field private moveY:I

.field private onChangeListener:Lcom/android/camera/ui/ModeGridView$OnChangeListener;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/ModeGridView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mDownScrollBorder:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/ModeGridView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mDownX:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/camera/ui/ModeGridView;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/camera/ui/ModeGridView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->moveX:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/camera/ui/ModeGridView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->moveY:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/ModeGridView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mDownY:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/ModeGridView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/ModeGridView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/ui/ModeGridView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/ui/ModeGridView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mScreenIndex:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/camera/ui/ModeGridView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/camera/ui/ModeGridView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/camera/ui/ModeGridView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mUpScrollBorder:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/ModeGridView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/ModeGridView;->isDrag:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/ModeGridView;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->getFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/ModeGridView;Landroid/graphics/Bitmap;II)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "downX"    # I
    .param p3, "downY"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/ModeGridView;->createDragImage(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/ui/ModeGridView;II)V
    .locals 0
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ModeGridView;->onSwapItem(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 526
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/ui/ModeGridView;->INVALID_POSITION:I

    .line 429
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/ui/ScreenView;IIIII)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/camera/ui/ScreenView;
    .param p3, "rowCount"    # I
    .param p4, "columnCount"    # I
    .param p5, "childWidth"    # I
    .param p6, "childHeight"    # I
    .param p7, "screenIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 545
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 432
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/camera/ui/ModeGridView;->dragResponseMS:J

    .line 442
    iput-boolean v2, p0, Lcom/android/camera/ui/ModeGridView;->isDrag:Z

    .line 443
    iput-boolean v2, p0, Lcom/android/camera/ui/ModeGridView;->mEnableDrag:Z

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    .line 564
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;

    .line 567
    new-instance v0, Lcom/android/camera/ui/ModeGridView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ModeGridView$1;-><init>(Lcom/android/camera/ui/ModeGridView;)V

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    .line 790
    new-instance v0, Lcom/android/camera/ui/ModeGridView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ModeGridView$2;-><init>(Lcom/android/camera/ui/ModeGridView;)V

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mScrollRunnable:Ljava/lang/Runnable;

    .line 546
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/camera/ui/ModeGridView;->set(IIII)V

    .line 547
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeGridView;->setDrawingCacheEnabled(Z)V

    .line 548
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ModeGridView;->setWillNotDraw(Z)V

    .line 549
    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->initGridViewLayout()V

    .line 550
    invoke-direct {p0, p2, p7}, Lcom/android/camera/ui/ModeGridView;->initDrag(Lcom/android/camera/ui/ScreenView;I)V

    .line 544
    return-void
.end method

.method private createDragImage(Landroid/graphics/Bitmap;II)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "downX"    # I
    .param p3, "downY"    # I

    .prologue
    const/4 v3, -0x2

    .line 740
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 741
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 742
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 743
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mPoint2ItemLeft:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mOffset2Left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 744
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mPoint2ItemTop:I

    sub-int v1, p3, v1

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mOffset2Top:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mStatusHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 745
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f0ccccd    # 0.55f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 746
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 747
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 748
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 751
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    .line 752
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 753
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 739
    return-void
.end method

.method private getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 684
    const/4 v0, 0x0

    return v0
.end method

.method private initDrag(Lcom/android/camera/ui/ScreenView;I)V
    .locals 2
    .param p1, "parent"    # Lcom/android/camera/ui/ScreenView;
    .param p2, "screenIndex"    # I

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/camera/ui/ModeGridView;->mParent:Lcom/android/camera/ui/ScreenView;

    .line 555
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mVibrator:Landroid/os/Vibrator;

    .line 556
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowManager:Landroid/view/WindowManager;

    .line 557
    iput p2, p0, Lcom/android/camera/ui/ModeGridView;->mScreenIndex:I

    .line 553
    return-void
.end method

.method private initGridViewLayout()V
    .locals 3

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewHonSpacing:I

    .line 874
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewVerSpacing:I

    .line 875
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mChildWidth:I

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mColumnCount:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 876
    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewHonSpacing:I

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mColumnCount:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    .line 875
    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginWidth:I

    .line 877
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginTop:I

    .line 878
    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mRowCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 879
    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginTop:I

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mChildHeight:I

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewVerSpacing:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mRowCount:I

    rsub-int/lit8 v2, v2, 0x3

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginTop:I

    .line 872
    :cond_0
    return-void
.end method

.method private isTouchInItem(Landroid/view/View;II)Z
    .locals 4
    .param p1, "dragView"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 695
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 696
    .local v0, "leftOffset":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 697
    .local v1, "topOffset":I
    if-lt p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    if-le p2, v2, :cond_1

    .line 698
    :cond_0
    return v3

    .line 701
    :cond_1
    if-lt p3, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    if-le p3, v2, :cond_3

    .line 702
    :cond_2
    return v3

    .line 705
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method private onDragItem(II)V
    .locals 3
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mPoint2ItemLeft:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mOffset2Left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 776
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mPoint2ItemTop:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mOffset2Top:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mStatusHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 777
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ModeGridView;->onSwapItem(II)V

    .line 781
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ui/ModeGridView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 774
    return-void
.end method

.method private onStopDrag()V
    .locals 2

    .prologue
    .line 844
    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 845
    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->removeDragImage()V

    .line 843
    return-void
.end method

.method private onSwapItem(II)V
    .locals 3
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I

    .prologue
    .line 824
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/ModeGridView;->pointToPosition(II)I

    move-result v0

    .line 827
    .local v0, "tempPosition":I
    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    if-eq v0, v1, :cond_1

    sget v1, Lcom/android/camera/ui/ModeGridView;->INVALID_POSITION:I

    if-eq v0, v1, :cond_1

    .line 828
    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ModeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 829
    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ModeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 831
    iget-object v1, p0, Lcom/android/camera/ui/ModeGridView;->onChangeListener:Lcom/android/camera/ui/ModeGridView$OnChangeListener;

    if-eqz v1, :cond_0

    .line 832
    iget-object v1, p0, Lcom/android/camera/ui/ModeGridView;->onChangeListener:Lcom/android/camera/ui/ModeGridView$OnChangeListener;

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    invoke-interface {v1, v2, v0}, Lcom/android/camera/ui/ModeGridView$OnChangeListener;->onChange(II)V

    .line 835
    :cond_0
    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    .line 822
    :cond_1
    return-void
.end method

.method private removeDragImage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 760
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 762
    iput-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    .line 759
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 939
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 938
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 621
    iget-boolean v2, p0, Lcom/android/camera/ui/ModeGridView;->mEnableDrag:Z

    if-nez v2, :cond_0

    .line 622
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 624
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 679
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 627
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/android/camera/ui/ModeGridView;->dragResponseMS:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mDownX:I

    .line 630
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mDownY:I

    .line 633
    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mDownX:I

    iget v3, p0, Lcom/android/camera/ui/ModeGridView;->mDownY:I

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/ui/ModeGridView;->pointToPosition(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    .line 635
    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    sget v3, Lcom/android/camera/ui/ModeGridView;->INVALID_POSITION:I

    if-ne v2, v3, :cond_2

    .line 636
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 640
    :cond_2
    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ModeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    .line 643
    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mDownY:I

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mPoint2ItemTop:I

    .line 644
    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mDownX:I

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mPoint2ItemLeft:I

    .line 646
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/ModeGridView;->mDownY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mOffset2Top:I

    .line 647
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/ModeGridView;->mDownX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mOffset2Left:I

    .line 650
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mDownScrollBorder:I

    .line 652
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mUpScrollBorder:I

    .line 657
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 659
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 661
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    goto/16 :goto_0

    .line 666
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 667
    .local v0, "moveX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 670
    .local v1, "moveY":I
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/camera/ui/ModeGridView;->isTouchInItem(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 671
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 675
    .end local v0    # "moveX":I
    .end local v1    # "moveY":I
    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 676
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 624
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected doLayout(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 933
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 934
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeGridView;->layoutChildByIndex(I)V

    .line 933
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 932
    :cond_0
    return-void
.end method

.method protected layoutChildByIndex(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 915
    iget v4, p0, Lcom/android/camera/ui/ModeGridView;->mColumnCount:I

    div-int v2, p1, v4

    .line 916
    .local v2, "rowIndex":I
    iget v4, p0, Lcom/android/camera/ui/ModeGridView;->mColumnCount:I

    rem-int v0, p1, v4

    .line 917
    .local v0, "columnIndex":I
    iget v4, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginWidth:I

    iget v6, p0, Lcom/android/camera/ui/ModeGridView;->mChildWidth:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v4

    .line 918
    if-lez v0, :cond_1

    iget v4, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewHonSpacing:I

    mul-int/2addr v4, v0

    .line 917
    :goto_0
    add-int v1, v6, v4

    .line 919
    .local v1, "left":I
    iget v4, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginTop:I

    iget v6, p0, Lcom/android/camera/ui/ModeGridView;->mChildHeight:I

    mul-int/2addr v6, v2

    add-int/2addr v4, v6

    .line 920
    if-lez v2, :cond_0

    iget v5, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewVerSpacing:I

    mul-int/2addr v5, v2

    .line 919
    :cond_0
    add-int v3, v4, v5

    .line 921
    .local v3, "top":I
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ModeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 923
    iget v5, p0, Lcom/android/camera/ui/ModeGridView;->mChildWidth:I

    add-int/2addr v5, v1

    .line 924
    iget v6, p0, Lcom/android/camera/ui/ModeGridView;->mChildHeight:I

    add-int/2addr v6, v3

    .line 921
    invoke-virtual {v4, v1, v3, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 914
    return-void

    .end local v1    # "left":I
    .end local v3    # "top":I
    :cond_1
    move v4, v5

    .line 918
    goto :goto_0
.end method

.method measureDimension(II)I
    .locals 1
    .param p1, "measureSpec"    # I
    .param p2, "contentDimension"    # I

    .prologue
    .line 903
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 911
    const/4 v0, 0x0

    return v0

    .line 905
    :sswitch_0
    return p2

    .line 907
    :sswitch_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    return v0

    .line 909
    :sswitch_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 903
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 929
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/camera/ui/ModeGridView;->doLayout(IIII)V

    .line 928
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 892
    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginWidth:I

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mChildWidth:I

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mColumnCount:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 893
    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewHonSpacing:I

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mColumnCount:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    .line 892
    add-int/2addr v0, v1

    .line 893
    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginWidth:I

    .line 892
    add-int/2addr v0, v1

    .line 891
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/ModeGridView;->measureDimension(II)I

    move-result v0

    .line 895
    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginTop:I

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mChildHeight:I

    iget v3, p0, Lcom/android/camera/ui/ModeGridView;->mRowCount:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 896
    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewVerSpacing:I

    iget v3, p0, Lcom/android/camera/ui/ModeGridView;->mRowCount:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    .line 895
    add-int/2addr v1, v2

    .line 894
    invoke-virtual {p0, p2, v1}, Lcom/android/camera/ui/ModeGridView;->measureDimension(II)I

    move-result v1

    .line 890
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ModeGridView;->setMeasuredDimension(II)V

    .line 898
    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mChildWidth:I

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 899
    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mChildHeight:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 897
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ModeGridView;->measureChildren(II)V

    .line 889
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 712
    iget-boolean v0, p0, Lcom/android/camera/ui/ModeGridView;->isDrag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 725
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 715
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->moveX:I

    .line 716
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->moveY:I

    .line 718
    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->moveX:I

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->moveY:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ModeGridView;->onDragItem(II)V

    goto :goto_0

    .line 721
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->onStopDrag()V

    .line 722
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/ModeGridView;->isDrag:Z

    goto :goto_0

    .line 727
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 713
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 600
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 601
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 602
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ui/ModeGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 603
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 606
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getChildCount()I

    move-result v1

    .line 607
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 608
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ModeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 609
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 610
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 611
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 612
    return v3

    .line 607
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 616
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    return v4
.end method

.method public set(IIII)V
    .locals 2
    .param p1, "rowCount"    # I
    .param p2, "columnCount"    # I
    .param p3, "childWidth"    # I
    .param p4, "childHeight"    # I

    .prologue
    const/4 v1, 0x1

    .line 866
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mRowCount:I

    .line 867
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mColumnCount:I

    .line 868
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mChildHeight:I

    .line 869
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mChildWidth:I

    .line 865
    return-void
.end method
