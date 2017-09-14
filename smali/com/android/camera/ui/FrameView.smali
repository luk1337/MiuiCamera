.class public abstract Lcom/android/camera/ui/FrameView;
.super Landroid/view/View;
.source "FrameView.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private final LOGV:Z

.field protected mIsBigEnoughRect:Z

.field protected mMatrix:Landroid/graphics/Matrix;

.field protected mOrientation:I

.field protected mPause:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FrameView;->LOGV:Z

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FrameView;->mMatrix:Landroid/graphics/Matrix;

    .line 27
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public faceExists()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getFocusRect()Landroid/graphics/RectF;
.end method

.method public isNeedExposure()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/camera/ui/FrameView;->mIsBigEnoughRect:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FrameView;->mPause:Z

    .line 77
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FrameView;->mPause:Z

    .line 81
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 52
    iput p1, p0, Lcom/android/camera/ui/FrameView;->mOrientation:I

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/ui/FrameView;->invalidate()V

    .line 51
    return-void
.end method

.method public showFail()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public showStart()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public showSuccess()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
