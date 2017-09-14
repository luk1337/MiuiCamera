.class public Lcom/android/camera/ui/V6GestureRecognizer;
.super Ljava/lang/Object;
.source "V6GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;,
        Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;,
        Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;,
        Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;
    }
.end annotation


# static fields
.field public static final GESTURE_DETECT_DISTANCE:I

.field public static final SWITCH_CAMERA_IGNORE_DISTANCE:I

.field private static sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;


# instance fields
.field private final mActivity:Lcom/android/camera/Camera;

.field private final mCameraGestureDetector:Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

.field private mEdgeGesture:I

.field private final mEdgeGestureDetector:Lcom/android/camera/ui/EdgeGestureDetector;

.field private mGesture:I

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mTouchDown:Z


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/V6GestureRecognizer;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/V6GestureRecognizer;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/V6GestureRecognizer;IIII)Landroid/graphics/Point;
    .locals 1
    .param p1, "e1x"    # I
    .param p2, "e1y"    # I
    .param p3, "e2x"    # I
    .param p4, "e2y"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/V6GestureRecognizer;->getMoveVector(IIII)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z
    .locals 1
    .param p1, "isEdge"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->couldNotifyGesture(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/ui/UIController;
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6GestureRecognizer;->GESTURE_DETECT_DISTANCE:I

    .line 31
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6GestureRecognizer;->SWITCH_CAMERA_IGNORE_DISTANCE:I

    .line 18
    return-void
.end method

.method private constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/camera/ActivityBase;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    .line 35
    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mEdgeGesture:I

    move-object v0, p1

    .line 45
    check-cast v0, Lcom/android/camera/Camera;

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    .line 46
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v3, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 47
    new-instance v0, Lcom/android/camera/ui/EdgeGestureDetector;

    new-instance v1, Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;)V

    invoke-direct {v0, v1}, Lcom/android/camera/ui/EdgeGestureDetector;-><init>(Lcom/android/camera/ui/EdgeGestureDetector$EdgeGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mEdgeGestureDetector:Lcom/android/camera/ui/EdgeGestureDetector;

    .line 48
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 49
    new-instance v0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCameraGestureDetector:Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

    .line 44
    return-void
.end method

.method private checkControlView(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-direct {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v1

    .line 117
    .local v1, "cropVew":Lcom/android/camera/ui/V6EffectCropView;
    invoke-virtual {v1}, Lcom/android/camera/ui/V6EffectCropView;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 118
    invoke-virtual {v1, p1}, Lcom/android/camera/ui/V6EffectCropView;->onViewTouchEvent(Landroid/view/MotionEvent;)Z

    .line 119
    invoke-virtual {v1}, Lcom/android/camera/ui/V6EffectCropView;->isMoved()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    add-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    .line 143
    .end local v1    # "cropVew":Lcom/android/camera/ui/V6EffectCropView;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    return v3

    .line 122
    .restart local v1    # "cropVew":Lcom/android/camera/ui/V6EffectCropView;
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/ui/V6EffectCropView;->isMoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 125
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/V6GestureRecognizer;->setGesture(I)V

    .line 128
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v2

    .line 129
    .local v2, "focusView":Lcom/android/camera/ui/FocusView;
    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->isEvAdjusted()Z

    move-result v0

    .line 130
    .local v0, "adjustEv":Z
    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    invoke-virtual {v2, p1}, Lcom/android/camera/ui/FocusView;->onViewTouchEvent(Landroid/view/MotionEvent;)Z

    .line 132
    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->isEvAdjusted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 133
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    add-int/lit8 v4, v4, 0x7

    iput v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    goto :goto_0

    .line 134
    :cond_3
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 137
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/V6GestureRecognizer;->setGesture(I)V

    goto :goto_0

    .line 143
    .end local v0    # "adjustEv":Z
    .end local v1    # "cropVew":Lcom/android/camera/ui/V6EffectCropView;
    .end local v2    # "focusView":Lcom/android/camera/ui/FocusView;
    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private couldNotifyGesture(Z)Z
    .locals 2
    .param p1, "isEdge"    # Z

    .prologue
    const/4 v0, 0x0

    .line 213
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/Module;->IsIgnoreTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;
    .locals 2
    .param p0, "activity"    # Lcom/android/camera/ActivityBase;

    .prologue
    const-class v1, Lcom/android/camera/ui/V6GestureRecognizer;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    iget-object v0, v0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    if-eq p0, v0, :cond_1

    .line 54
    :cond_0
    new-instance v0, Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6GestureRecognizer;-><init>(Lcom/android/camera/ActivityBase;)V

    sput-object v0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    .line 56
    :cond_1
    sget-object v0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMoveVector(IIII)Landroid/graphics/Point;
    .locals 2
    .param p1, "e1x"    # I
    .param p2, "e1y"    # I
    .param p3, "e2x"    # I
    .param p4, "e2y"    # I

    .prologue
    .line 206
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 207
    .local v0, "vector":Landroid/graphics/Point;
    sub-int v1, p1, p3

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 208
    sub-int v1, p2, p4

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 209
    return-object v0
.end method

.method private getUIController()Lcom/android/camera/ui/UIController;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    return-object v0
.end method

.method private isGestureDetecting(Z)Z
    .locals 2
    .param p1, "isEdge"    # Z

    .prologue
    const/4 v1, 0x0

    .line 271
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mEdgeGesture:I

    :goto_0
    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static onDestroy(Lcom/android/camera/ActivityBase;)V
    .locals 2
    .param p0, "activity"    # Lcom/android/camera/ActivityBase;

    .prologue
    const/4 v1, 0x0

    .line 340
    sget-object v0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    if-eqz v0, :cond_0

    .line 341
    sget-object v0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    iget-object v0, v0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    if-ne v0, p0, :cond_0

    .line 342
    sput-object v1, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    .line 339
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentGesture()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    rem-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public getGestureOrientation()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public isGestureDetecting()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 275
    iget v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    rem-int/lit8 v1, v1, 0x64

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onEdgeTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 68
    const-string/jumbo v0, "CameraGestureRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEdgeTouchEvent mGesture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " maskaction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mEdgeGestureDetector:Lcom/android/camera/ui/EdgeGestureDetector;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/EdgeGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    const-string/jumbo v1, "CameraGestureRecognizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTouchEvent mGesture="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 79
    iput v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/Module;->IsIgnoreTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v6, :cond_1

    .line 88
    return v4

    .line 90
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_5

    .line 91
    iput-boolean v5, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mTouchDown:Z

    .line 99
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->checkControlView(Landroid/view/MotionEvent;)Z

    .line 101
    const-string/jumbo v1, "CameraGestureRecognizer"

    const-string/jumbo v2, "set to detector"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCameraGestureDetector:Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 103
    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 104
    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 106
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    .line 107
    .local v0, "result":Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v5, :cond_3

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 109
    :cond_3
    iput v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    .line 111
    :cond_4
    return v0

    .line 92
    .end local v0    # "result":Z
    :cond_5
    iget-boolean v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mTouchDown:Z

    if-nez v1, :cond_6

    .line 93
    return v4

    .line 94
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v6, :cond_7

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 96
    :cond_7
    iput-boolean v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mTouchDown:Z

    goto :goto_0

    .line 106
    :cond_8
    const/4 v0, 0x1

    .restart local v0    # "result":Z
    goto :goto_1
.end method

.method public setGesture(I)V
    .locals 1
    .param p1, "gesture"    # I

    .prologue
    .line 147
    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    .line 146
    return-void
.end method
