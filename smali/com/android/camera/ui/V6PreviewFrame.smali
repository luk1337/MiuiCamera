.class public Lcom/android/camera/ui/V6PreviewFrame;
.super Landroid/widget/RelativeLayout;
.source "V6PreviewFrame.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mAspectRatio:F

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field public mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const v0, 0x3fe38e39

    iput v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    .line 24
    return-void
.end method

.method private isReferenceLineEnabled()Z
    .locals 3

    .prologue
    .line 114
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    .line 115
    const-string/jumbo v1, "pref_camera_referenceline_key"

    const/4 v2, 0x0

    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 55
    return-void
.end method

.method public isFullScreen()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 99
    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    sget v3, Lcom/android/camera/Util;->sWindowWidth:I

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v0

    .line 100
    .local v0, "screenRatio":F
    iget v2, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->updateRefenceLineAccordSquare()V

    .line 36
    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->updatePreviewGrid()V

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
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 67
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 68
    const v0, 0x7f090085

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SplitLineDrawer;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/ui/SplitLineDrawer;->initialize(II)V

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setBorderVisible(ZZ)V

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setLineColor(I)V

    .line 72
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6PreviewFrame;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 66
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
    const v2, 0x7f090084

    const/4 v1, 0x1

    .line 132
    sub-int v0, p4, p2

    sub-int v3, p5, p3

    if-le v0, v3, :cond_0

    return-void

    .line 134
    :cond_0
    sub-int v0, p5, p3

    sub-int v3, p4, p2

    invoke-static {v0, v3}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    .line 135
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 141
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 139
    const/4 v3, 0x2

    move-object v4, p1

    .line 136
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 147
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 145
    const/4 v3, 0x3

    move-object v4, p1

    .line 142
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    .line 44
    :cond_0
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setVisibility(I)V

    .line 40
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 158
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 159
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    .line 155
    const/4 v1, 0x0

    .line 156
    const v2, 0x7f090084

    .line 157
    const/4 v3, 0x2

    .line 154
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    :cond_0
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 4
    .param p1, "ratio"    # F

    .prologue
    .line 76
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 77
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 78
    iput p1, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    .line 75
    :cond_1
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 118
    return-void
.end method

.method public updatePreviewGrid()V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewFrame;->isReferenceLineEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isScanQRCodeIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setVisibility(I)V

    .line 103
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isDualModule()Z

    move-result v0

    .line 104
    if-eqz v0, :cond_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateRefenceLineAccordSquare()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v2}, Lcom/android/camera/ui/SplitLineDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 85
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const-string/jumbo v2, "pref_camera_square_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v1, v2, 0x6

    .line 87
    .local v1, "margin":I
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 88
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 93
    .end local v1    # "margin":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v2}, Lcom/android/camera/ui/SplitLineDrawer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v2}, Lcom/android/camera/ui/SplitLineDrawer;->requestLayout()V

    .line 83
    :cond_0
    return-void

    .line 90
    :cond_1
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 91
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method
