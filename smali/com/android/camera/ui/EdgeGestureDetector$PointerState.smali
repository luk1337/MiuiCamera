.class public Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
.super Ljava/lang/Object;
.source "EdgeGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EdgeGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerState"
.end annotation


# instance fields
.field private mCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mCurDown:Z

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private mDownTime:J

.field private mHandleDown:Z

.field private mMoving:Z


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)Landroid/view/MotionEvent$PointerCoords;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mCurDown:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownFocusX:F

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownFocusY:F

    return v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownTime:J

    return-wide v0
.end method

.method static synthetic -get5(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mHandleDown:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mMoving:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mCurDown:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownFocusX:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownFocusY:F

    return p1
.end method

.method static synthetic -set3(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownTime:J

    return-wide p1
.end method

.method static synthetic -set4(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mHandleDown:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mMoving:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 261
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 276
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 277
    const-string/jumbo v1, "PointerState mDownFocusX=%f mDownFocusY=%f mDownTime=%d mCurDown=%b mHandleDown=%b  mMoving=%b"

    .line 276
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    .line 279
    iget v3, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownFocusX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownFocusY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-wide v4, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mCurDown:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mHandleDown:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mMoving:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 276
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
