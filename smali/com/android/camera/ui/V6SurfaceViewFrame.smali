.class public Lcom/android/camera/ui/V6SurfaceViewFrame;
.super Landroid/widget/FrameLayout;
.source "V6SurfaceViewFrame.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mSurfaceManager:Lcom/android/camera/ui/V6SurfaceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 46
    return-void
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mSurfaceManager:Lcom/android/camera/ui/V6SurfaceManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SurfaceManager;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public initSurfaceView()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mSurfaceManager:Lcom/android/camera/ui/V6SurfaceManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SurfaceManager;->initializeSurfaceView()V

    .line 99
    return-void
.end method

.method public isSurfaceViewAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SurfaceViewFrame;->isSurfaceViewVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SurfaceViewFrame;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSurfaceViewVisible()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mSurfaceManager:Lcom/android/camera/ui/V6SurfaceManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SurfaceManager;->isSurfaceViewVisible()Z

    move-result v0

    return v0
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 59
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6SurfaceViewFrame;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 60
    new-instance v0, Lcom/android/camera/ui/V6SurfaceManager;

    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/camera/ui/V6SurfaceManager;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mSurfaceManager:Lcom/android/camera/ui/V6SurfaceManager;

    .line 57
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    const v2, 0x7f0c0081

    const/4 v1, 0x1

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 77
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 75
    const/4 v3, 0x2

    move-object v4, p1

    .line 72
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 83
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 81
    const/4 v3, 0x3

    move-object v4, p1

    .line 78
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 94
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 95
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    .line 91
    const/4 v1, 0x0

    .line 92
    const v2, 0x7f0c0081

    .line 93
    const/4 v3, 0x2

    .line 90
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    :cond_0
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 1
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mSurfaceManager:Lcom/android/camera/ui/V6SurfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SurfaceManager;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 63
    return-void
.end method

.method public setSurfaceViewVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mSurfaceManager:Lcom/android/camera/ui/V6SurfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SurfaceManager;->setSurfaceViewVisible(Z)V

    .line 123
    return-void
.end method
