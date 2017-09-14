.class public Lcom/android/camera/ui/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/HorizontalListView$1;,
        Lcom/android/camera/ui/HorizontalListView$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mBlockNotification:Z

.field protected mCurrentX:I

.field private mDataChanged:Z

.field private mDataObserver:Landroid/database/DataSetObserver;

.field private mDisplayOffset:I

.field private mGesture:Landroid/view/GestureDetector;

.field private mIsScrollingPerformed:Z

.field private mItemWidth:I

.field private mLastSelectImageListItem:Landroid/view/View;

.field private mLeftViewIndex:I

.field private mMaxX:I

.field protected mNextX:I

.field private mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

.field private mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPaddingWidth:I

.field private mPresetWidth:I

.field private mPreviousSelectViewIndex:I

.field private mRemovedViewQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRightViewIndex:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mSelectCenter:Z

.field private mSelectViewIndex:I

.field private mTouchDown:Z


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/HorizontalListView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/HorizontalListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mBlockNotification:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/ui/HorizontalListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mDataChanged:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/ui/HorizontalListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/HorizontalListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->justify()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/HorizontalListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->reset()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/HorizontalListView;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    .line 29
    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    .line 32
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    .line 33
    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    .line 41
    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mDataChanged:Z

    .line 42
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    .line 43
    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    .line 44
    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mPreviousSelectViewIndex:I

    .line 46
    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    .line 114
    new-instance v0, Lcom/android/camera/ui/HorizontalListView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalListView$1;-><init>(Lcom/android/camera/ui/HorizontalListView;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    .line 489
    new-instance v0, Lcom/android/camera/ui/HorizontalListView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalListView$2;-><init>(Lcom/android/camera/ui/HorizontalListView;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    .line 58
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->initView()V

    .line 56
    return-void
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "viewPos"    # I

    .prologue
    const/4 v1, -0x1

    const/high16 v3, -0x80000000

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 207
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 208
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 211
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/camera/ui/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 212
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getWidth()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 213
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 212
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 205
    return-void
.end method

.method private cacheChildItem(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 369
    :cond_0
    return-void
.end method

.method private fillList(I)V
    .locals 3
    .param p1, "dx"    # I

    .prologue
    .line 285
    const/4 v1, 0x0

    .line 286
    .local v1, "edge":I
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 290
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/android/camera/ui/HorizontalListView;->fillListRight(II)V

    .line 292
    const/4 v1, 0x0

    .line 293
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 297
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/android/camera/ui/HorizontalListView;->fillListLeft(II)V

    .line 284
    return-void
.end method

.method private fillListLeft(II)V
    .locals 5
    .param p1, "leftEdge"    # I
    .param p2, "dx"    # I

    .prologue
    const/4 v4, 0x0

    .line 326
    :goto_0
    add-int v1, p1, p2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    if-ltz v1, :cond_1

    .line 327
    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 328
    .local v0, "child":Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    if-ne v1, v2, :cond_0

    .line 329
    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    .line 330
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 334
    :goto_1
    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 335
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 336
    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    .line 337
    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    .line 325
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private fillListRight(II)V
    .locals 5
    .param p1, "rightEdge"    # I
    .param p2, "dx"    # I

    .prologue
    const/4 v4, 0x0

    .line 302
    :goto_0
    add-int v1, p1, p2

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 303
    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 304
    .local v0, "child":Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    if-ne v1, v2, :cond_2

    .line 305
    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    .line 306
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 310
    :goto_1
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 311
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v1

    add-int/2addr p1, v1

    .line 313
    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 314
    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    .line 317
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    if-gez v1, :cond_1

    .line 318
    iput v4, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    .line 320
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    goto :goto_0

    .line 308
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    .line 301
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private getChildWidth()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    return v0
.end method

.method private declared-synchronized initView()V
    .locals 5

    .prologue
    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 75
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 76
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 77
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    .line 79
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    .line 80
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    .line 81
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    .line 82
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    .line 83
    const v2, 0x7fffffff

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    .line 84
    iget-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-eqz v2, :cond_1

    .line 85
    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    .line 86
    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    .line 90
    :goto_0
    new-instance v2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    .line 91
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mGesture:Landroid/view/GestureDetector;

    .line 92
    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setActivated(Z)V

    .line 94
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/camera/ActivityBase;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 73
    return-void

    .line 88
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private justify()V
    .locals 6

    .prologue
    .line 182
    const/4 v2, 0x1

    .line 183
    .local v2, "scroll":Z
    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    if-le v3, v4, :cond_0

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    if-ge v3, v4, :cond_0

    .line 184
    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 185
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_1

    const/4 v2, 0x1

    .line 188
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    return-void

    .line 185
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 190
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .line 191
    .local v1, "distance":I
    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    iget-object v5, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    .line 192
    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    if-le v1, v3, :cond_3

    .line 193
    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    .line 195
    :cond_3
    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    if-eq v1, v3, :cond_4

    .line 196
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 197
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HorizontalListView;->scrollTo(I)V

    .line 180
    :cond_4
    :goto_1
    return-void

    .line 199
    :cond_5
    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    .line 200
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->requestLayout()V

    goto :goto_1
.end method

.method private loadItems()V
    .locals 2

    .prologue
    .line 400
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 401
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_0
    return-void
.end method

.method private notifyItemSelect(Landroid/view/View;IJ)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "id"    # J

    .prologue
    .line 466
    if-nez p1, :cond_0

    .line 467
    return-void

    .line 469
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mBlockNotification:Z

    if-nez v0, :cond_2

    .line 470
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 478
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 479
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 481
    :cond_3
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    .line 482
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 465
    return-void
.end method

.method private positionItems(I)V
    .locals 11
    .param p1, "dx"    # I

    .prologue
    const/4 v10, 0x0

    .line 376
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_3

    .line 377
    iget v8, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    add-int/2addr v8, p1

    iput v8, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    .line 378
    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    .line 379
    .local v6, "left":I
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v3

    .line 380
    .local v3, "childWidth":I
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getHeight()I

    move-result v2

    .line 381
    .local v2, "childHeight":I
    iget v8, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    div-int/lit8 v0, v8, 0x2

    .line 382
    .local v0, "center":I
    iget v8, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v5, v8, 0x1

    .line 383
    .local v5, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_3

    .line 384
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 385
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    if-ge v8, v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v8

    if-le v8, v0, :cond_1

    const/4 v7, 0x1

    .line 386
    .local v7, "oldCenter":Z
    :goto_1
    add-int v8, v6, v3

    invoke-virtual {v1, v6, v10, v8, v2}, Landroid/view/View;->layout(IIII)V

    .line 388
    iget-boolean v8, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-eqz v8, :cond_0

    .line 389
    if-ge v6, v0, :cond_0

    add-int v8, v6, v3

    if-le v8, v0, :cond_0

    if-eqz v7, :cond_2

    .line 393
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 394
    add-int/2addr v6, v3

    .line 383
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 385
    .end local v7    # "oldCenter":Z
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "oldCenter":Z
    goto :goto_1

    .line 390
    :cond_2
    iget-object v8, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-direct {p0, v1, v5, v8, v9}, Lcom/android/camera/ui/HorizontalListView;->notifyItemSelect(Landroid/view/View;IJ)V

    goto :goto_2

    .line 375
    .end local v0    # "center":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childHeight":I
    .end local v3    # "childWidth":I
    .end local v4    # "i":I
    .end local v5    # "index":I
    .end local v6    # "left":I
    .end local v7    # "oldCenter":Z
    :cond_3
    return-void
.end method

.method private removeNonVisibleItems(I)V
    .locals 5
    .param p1, "dx"    # I

    .prologue
    const/4 v3, 0x0

    .line 342
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 343
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "start":I
    const/4 v1, 0x0

    .line 344
    .local v1, "end":I
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, p1

    if-gtz v3, :cond_0

    .line 345
    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    .line 346
    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalListView;->cacheChildItem(Landroid/view/View;)V

    .line 347
    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    .line 348
    add-int/lit8 v1, v1, 0x1

    .line 349
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_0
    if-lez v1, :cond_1

    .line 352
    add-int/lit8 v3, v1, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/ui/HorizontalListView;->removeViewsInLayout(II)V

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 356
    move v2, v1

    .line 357
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 358
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getWidth()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 359
    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalListView;->cacheChildItem(Landroid/view/View;)V

    .line 360
    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    .line 361
    add-int/lit8 v2, v2, -0x1

    .line 362
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 364
    :cond_2
    if-le v1, v2, :cond_3

    .line 365
    add-int/lit8 v3, v2, 0x1

    sub-int v4, v1, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/ui/HorizontalListView;->removeViewsInLayout(II)V

    .line 341
    :cond_3
    return-void
.end method

.method private declared-synchronized reset()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 156
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->initView()V

    .line 157
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->removeAllViewsInLayout()V

    .line 158
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 155
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 415
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 416
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 443
    .end local v0    # "handled":Z
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 419
    .restart local v0    # "handled":Z
    :pswitch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchDown:Z

    .line 420
    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mBlockNotification:Z

    goto :goto_0

    .line 424
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    .line 426
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->justify()V

    .line 428
    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchDown:Z

    goto :goto_0

    .line 431
    .local v0, "handled":Z
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    if-eqz v1, :cond_0

    .line 432
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 435
    :pswitch_4
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 436
    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    .line 437
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->justify()V

    .line 439
    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchDown:Z

    goto :goto_0

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 432
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    return v0
.end method

.method protected onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 457
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 458
    return v1
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 448
    monitor-enter p0

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    neg-float v2, p3

    float-to-int v3, v2

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 451
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->requestLayout()V

    .line 453
    const/4 v0, 0x1

    return v0

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    monitor-enter p0

    .line 218
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 220
    iget-object v5, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    monitor-exit p0

    .line 221
    return-void

    .line 224
    :cond_0
    const/4 v1, 0x0

    .line 225
    .local v1, "dataChanged":Z
    :try_start_1
    iget-boolean v5, p0, Lcom/android/camera/ui/HorizontalListView;->mDataChanged:Z

    if-eqz v5, :cond_1

    .line 226
    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    .line 227
    .local v3, "oldCurrentX":I
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->initView()V

    .line 228
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->removeAllViewsInLayout()V

    .line 229
    iput v3, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    .line 230
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/camera/ui/HorizontalListView;->mDataChanged:Z

    .line 231
    const/4 v1, 0x1

    .line 234
    .end local v3    # "oldCurrentX":I
    :cond_1
    iget-object v5, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 235
    iget-object v5, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 236
    .local v4, "scrollx":I
    iput v4, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    .line 239
    .end local v4    # "scrollx":I
    :cond_2
    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    if-gtz v5, :cond_3

    .line 240
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    .line 241
    iget-object v5, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 243
    :cond_3
    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    if-lt v5, v6, :cond_4

    .line 244
    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    iput v5, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    .line 245
    iget-object v5, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 248
    :cond_4
    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    sub-int v2, v5, v6

    .line 249
    .local v2, "dx":I
    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    iput v5, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    .line 250
    invoke-direct {p0, v2}, Lcom/android/camera/ui/HorizontalListView;->removeNonVisibleItems(I)V

    .line 251
    invoke-direct {p0, v2}, Lcom/android/camera/ui/HorizontalListView;->fillList(I)V

    .line 252
    invoke-direct {p0, v2}, Lcom/android/camera/ui/HorizontalListView;->positionItems(I)V

    .line 254
    iget-object v5, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v1, :cond_7

    .line 255
    :cond_5
    new-instance v5, Lcom/android/camera/ui/HorizontalListView$3;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/HorizontalListView$3;-><init>(Lcom/android/camera/ui/HorizontalListView;)V

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/HorizontalListView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_0
    monitor-exit p0

    .line 217
    return-void

    .line 262
    :cond_7
    :try_start_2
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->loadItems()V

    .line 263
    iget-object v5, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchDown:Z

    if-nez v5, :cond_6

    .line 264
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    .line 265
    iget-boolean v5, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-eqz v5, :cond_8

    .line 266
    new-instance v5, Lcom/android/camera/ui/HorizontalListView$4;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/HorizontalListView$4;-><init>(Lcom/android/camera/ui/HorizontalListView;)V

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/HorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 273
    :cond_8
    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mPreviousSelectViewIndex:I

    if-eq v5, v6, :cond_6

    .line 274
    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    if-le v5, v6, :cond_9

    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    if-gt v5, v6, :cond_9

    .line 275
    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 276
    .local v0, "child":Landroid/view/View;
    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget-object v6, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v7, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-direct {p0, v0, v5, v6, v7}, Lcom/android/camera/ui/HorizontalListView;->notifyItemSelect(Landroid/view/View;IJ)V

    .line 278
    .end local v0    # "child":Landroid/view/View;
    :cond_9
    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iput v5, p0, Lcom/android/camera/ui/HorizontalListView;->mPreviousSelectViewIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v1    # "dataChanged":Z
    .end local v2    # "dx":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized scrollTo(I)V
    .locals 5
    .param p1, "x"    # I

    .prologue
    monitor-enter p0

    .line 406
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    .line 407
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    sub-int v2, p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 408
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 405
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 146
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 152
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->reset()V

    .line 146
    return-void
.end method

.method public setItemWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    .line 63
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-eqz v0, :cond_0

    .line 64
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    .line 65
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    .line 61
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    .line 105
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 110
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 100
    return-void
.end method

.method public setSelection(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 163
    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    if-ne v1, p1, :cond_0

    return-void

    .line 164
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mPreviousSelectViewIndex:I

    .line 165
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    .line 166
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    .line 170
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    if-le p1, v1, :cond_2

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    if-ge p1, v1, :cond_2

    .line 171
    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, "child":Landroid/view/View;
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/android/camera/ui/HorizontalListView;->notifyItemSelect(Landroid/view/View;IJ)V

    .line 175
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    if-nez v1, :cond_3

    .line 176
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->justify()V

    .line 162
    :cond_3
    return-void
.end method
